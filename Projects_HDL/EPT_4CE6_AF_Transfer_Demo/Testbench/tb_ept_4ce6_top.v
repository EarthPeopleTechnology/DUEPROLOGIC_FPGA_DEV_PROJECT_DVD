//#################################################################
//	Testbench for the FAST LED BLINKY
//
//	File name:	tb_ept_4ce6_top.v
//	Author:		Richard Jolly
//	Date:		08/07/2015
//
//	Copyright 	Earth People Technology Inc. 2015
//
//#************************************************************************
//#
//# Revision History:	
//#			DATE		VERSION		DETAILS		
//#			08/07/2015 	A			Created			
//#                                 --RJJ
//
//
//
//
//
//################################################################

`timescale 1ns/1ps

`include "../Testbench/tb_define.v"

module tb_ept_4ce6_top;

   //----------------------------------------------
   // Parameter Declarations  
   //----------------------------------------------
	parameter	BEGIN_SECTION			 = 8'h00;
	parameter	TRIGGER_IN_SECTION		 = 8'h01;
	parameter	TRANSFER_IN_SECTION      = 8'h02;
	parameter	BLOCK_OUT_SECTION        = 8'h03;
	parameter	WRITE_SECTION			 = 8'h04;
	parameter	BLOCK_IN_SECTION         = 8'h05;
	parameter	ARDUINO_WRITE_TO_FIFO    = 8'h06;
	parameter	ARDUINO_ANALOG_MONITOR   = 8'h07;
	parameter	LED_BLINKY               = 8'h08;

    parameter   BLOCK_COUNT_8          = 8'h8;
    parameter   BLOCK_COUNT_16         = 8'h10;
	parameter   BLOCK_COUNT_32         = 8'h20;
	parameter   BLOCK_COUNT_64         = 8'h40;
	parameter   BLOCK_COUNT_128        = 8'h80;

//---------------------------------------------------------------------------------------------------------------
//	wire and register declarations
//---------------------------------------------------------------------------------------------------------------
	reg                                  clk_66;
	reg                                  clk_150;
	reg                                  reset;

	integer                              logfile;
	integer                              num_read_cycles;
	integer                              num_purge_host_fifo_cycles;
	integer                              num_block_cycles;
	integer                              num_write_cycles;
	integer                              num_config_read_cycles;
	integer                              num_config_write_cycles;

	reg                                  register_memory;



	reg	[31:0]                           next_address;
	reg	[31:0]                           write_word;

	//Host bus model start buttons
	reg                                  start_config_read_cycle;
	reg                                  start_config_write_cycle;
	reg                                  start_read_cycle;
	reg                                  start_write_cycle;
	reg                                  write_to_cis_register_block ;

	//cis registers
	reg	[7:0]                            cis_register_index;

	//Host bus model write registers
	reg	[7:0]                            write_value;

	//Compare read register configuration registers
	wire	[7:0]                        configuration_address;
	wire	[7:0]                        config_compare_data;
	wire	[7:0]                        control_compare_data;


	//Read Control Registers
	wire	[7:0]                        read_control_register;
	reg	[7:0]                            read_control_register_index;

	//read and write register bytes
	reg   [7:0]                          host_read_register;
	wire  [7:0]                          write_register_value;

	//reg                                  write_to_read_control_register_block;
	//reg	[7:0]                            write_read_control_word;

	//Write Control Registers
	wire	[7:0]                        write_control_register;
	reg	[7:0]                            write_control_register_index;
	//reg	[7:0]                            write_to_write_control_register_block;
	reg                                  write_control_word;

	wire	[25:0]                       host_bus_model_addr;
	wire	[15:0]                       host_bus_model_data;

	//Test Bench Stimulus Host Registers
	reg	[7:0]                            host_register;
	reg	[7:0]                            host_readback;
	reg	[7:0]                            host_status_byte;
	reg                                  host_read_status;
	reg                                  host_status_we;
	reg  [7:0]                           host_data_in;
	wire [7:0]                           host_data_out;
	reg                                  host_read_byte;
	reg                                  host_write_byte;
	reg  [7:0]                           host_write_value;
	
	// Control Registers
	reg  [7:0]                           ept_control_register_to_device;

	//DUT pass registers
	wire [1:0]                           aa;
	wire [1:0]                           bc_in;
	wire [2:0]                           bc_out;
	wire [7:0]                           bd_inout;
	wire                                 usb_rxf_n;
	wire                                 usb_txe_n;
	wire                                 usb_rd_n;
	wire                                 usb_wr;
	wire                                 usb_reset_n;
	wire                                 usb_pwren_n;
	wire                                 usb_test;
	wire   [7:0]                         usb_data;

    // EPT control signals
	reg    [7:0]                         ept_send_cmd_to_device;
	reg    [7:0]                         ept_send_data_to_device;
	reg    [7:0]                         ept_control_word;
	reg    [7:0]                         ept_send_addr_to_device;

    // Registers to convert incoming bits for USB transfer message
    reg [2:0]                            command_from_device;
    reg [7:0]                            length_from_device;
    reg [2:0]                            address_from_device;
    reg [7:0]                            payload_from_device;
	
	//Trigger Registers
	reg [7:0]                            trigger_to_device;
	wire [7:4]                           trigger_control_signals;
	wire [3:0]                           trigger_leds;
	
	//Transfer Registers
	wire [7:0]                           transfer_from_host;
	reg  [7:0]                           TransferOutReceive_A0;
	reg  [7:0]                           TransferOutReceive_A1;
	reg  [7:0]                           TransferOutReceive_A2;
	reg  [7:0]                           TransferOutReceive_A3;
	reg  [7:0]                           TransferOutReceive_A4;
	reg  [7:0]                           TransferOutReceive_A5;
	reg  [7:0]                           TransferOutReceive_A6;
	reg  [7:0]                           TransferOutReceive_A7;
	
	//Block Transfer Registers
	reg                          [7:0]   block_read_array [7:0] ;
	reg                          [7:0]   block_write_array [7:0] ;
	
	//EPTParseReceive Task registers
	reg                                  parse_status;
	
	//Random Number Generator for Single Transfer
	reg [31:0]                           r_seed;
	reg [31:0]                           random_number;
	
	//LED Blinky Registers
	wire [3:0]                           leds;

	//Test signals
	wire                                 host_bus_model_test_signal_1;
	reg	[7:0]                            temp_hold_reg;

		// Sensor Feedback Registers
	wire  [7:0]                 temp_2_iic_control_register_model;
	wire  [15:0]                temp_2_iic_receive_register_model;
	reg   [7:0]                 temp_2_iic_status_register_model;
	wire                        temp_2_iic_data;
	wire                        temp_2_iic_clock;
	reg	[15:0]                  temp_2_iic_send_register_model;
	reg                         master_read_flag;

	//I2C communication registers
	reg	[7:0]                   host_transmit_word_1;
	reg	[7:0]                   host_transmit_word_2;
	reg	[7:0]                   host_transmit_num_of_words;
	reg	[7:0]                   host_write_word;
	reg	[7:0]                   slave_read_register;

	// Serial IIC test registers
	reg	[15:0]                  sensor_feedback_receive;
	reg	[7:0]                   sensor_feedback_control;
	reg	[7:0]                   sensor_feedback_status;
	
	//Serial I2C Communication registers
	wire                        serial_iic_rdy_out;
	reg                         serial_iic_ena_in;
	wire  [7:0]                 serial_iic_data_out;
	wire                        serial_i2c_ena_out;
	//reg  [7:0]                  serial_iic_data_in;
	reg  [7:0]                  serial_i2c_data_in;
	reg                         serial_i2c_rdy_in;
	
	//Serial I2C Communications Model registers
	reg                         serial_iic_rdy_in_model;
	wire [7:0]                  i2c_master_control_register_model;
	reg  [7:0]                  i2c_master_status_register_model;
	reg  [7:0]                  i2c_master_send_register_model;
	wire [7:0]                  i2c_master_receive_register_model;
    reg  [7:0]                  i2c_master_read_return;
    reg  [7:0]                  compare_result;
	wire                        i2c_model_data_out;
	reg  [7:0]                  slave_register_1;
	
	//SPI Communications TriggerOut registers
	reg                         receive_rdy_in_flag;
	reg                         receive_write_en_flag;
	
	//Active Transfer Test Registers
	wire [7:0]                  received_trigger_byte;
	


//--------------------------------------------------------------------------------------------------------------
//	Generate Internal Clock with 'cycle/2 period
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		clk_66 = 0;
		forever
		//begin
			# `CYCLE_66 clk_66 = !clk_66;
		//end
	end
//--------------------------------------------------------------------------------------------------------------
//	Generate Internal Clock with 150 MHz
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		clk_150 = 0;
		forever
		//begin
			# `CYCLE_150 clk_150 = !clk_150;
		//end
	end

//--------------------------------------------------------------------------------------------------------------
//	Generate a random number using x period
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		r_seed = 2;
		forever
			#10 random_number = $random(r_seed);
	end

//-------------------------------------------------------------------------------------------------------------
//	Apply Stimulus
//-------------------------------------------------------------------------------------------------------------

	initial
	begin


		call_title(BEGIN_SECTION);
		clk_66                           =	1'b0;
		reset                            =	1'b0;
		read_control_register_index      =	32'h00;
		write_control_word               =	1'b0;
		start_config_read_cycle          =	1'b0;
		start_config_write_cycle         =	1'b0;
		start_read_cycle                 =	1'b0;
		start_write_cycle                =	1'b0;
		num_read_cycles                  = 	`TEST_10_REPS;
		num_purge_host_fifo_cycles       =  `TEST_2_REPS;
		num_write_cycles                 = 	`TEST_10_REPS;
		num_block_cycles                 =  `TEST_2_REPS;
		temp_hold_reg                    =	8'h00;
		ept_control_word                 = `READ_CONTROL_WORD;
		trigger_to_device                = 8'h01;
		ept_control_register_to_device   = 8'h00;

		#(100 * `CYCLE)
		reset	=			1'b1;

		#(50 * `CYCLE)
		reset	=			1'b0;

		#(30000 * `CYCLE )


         //************************************************************
         //** Active Transfer Test
         //************************************************************
		
		//Send Trigger from Host to Device
		call_title(TRIGGER_IN_SECTION);
		repeat(num_write_cycles)
		begin
		    //Write Trigger Command to the DueProLogic
		    #(1000 * `CYCLE )
		    send_trigger(trigger_to_device);

		    //Compare the Trigger written by the Host
			// with the Trigger read by active_trigger
			#( 100 * `CYCLE )
            test_bench_compare(trigger_to_device,received_trigger_byte,`TRIGGER_OUT_CMD_TB);
			
			//Check if Device sent incoming Command
			#( 100 * `CYCLE )
			host_check_status(host_status_byte);
			// If Command received, read and display the IO
			if(host_status_byte & 8'h01) 
			   EPTParseReceive();
			
			#( 30 * `CYCLE )
			read_control_register_index = read_control_register_index + 1;
			num_write_cycles = num_write_cycles - 1;
			trigger_to_device = trigger_to_device + 1;

		

		end // repeat(num_write_cycles)

		read_control_register_index = 0;

		//Send Loop Back Command to Active Transfer
		#(1000 * `CYCLE )
		//Send the transmit data word to the EndTerm
		send_control_register(`TRANSFER_LOOPBACK);
		
		//Perform a read of the Host memory. The Host
		//Fifo gets two bytes written due to the Loop 
		//back command.
		repeat(num_purge_host_fifo_cycles)
		begin
		   #(1000 * `CYCLE )
		   host_check_status(host_status_byte);
		   // If Command received, read and display the IO
		   if(host_status_byte & 8'h01) 
		      EPTParseReceive();

           num_purge_host_fifo_cycles = num_purge_host_fifo_cycles - 1;
		end // repeat(num_purge_host_fifo_cycles)

		//Send Single Byte Transfer from Host to Device
		//The DueProLogic is in Loop Back mode. Each byte
		//written to the DueProLogic will be immediately sent
		//back to the Host
		call_title(TRANSFER_IN_SECTION);
		repeat(num_read_cycles)
		begin
		    //Store an eight bit random word to send to the DueProLogic
			//from the host
			ept_send_data_to_device = random_number[7:0];

		    //Write Single Transfer Command to the DueProLogic
			#(5000 * `CYCLE )
			send_transfer(`TRANSFER_ENDTERM_2,ept_send_data_to_device);

			//Check if Device sent incoming Command
			#( 100 * `CYCLE )
			host_check_status(host_status_byte);
			// If Command received, read and display the IO
			if(host_status_byte & 8'h01) 
			   EPTParseReceive();

		    //Compare the Transfer byte written by the Host
			// with the Transfer byte read by active_transfer
			#( 100 * `CYCLE )
            test_bench_compare(ept_send_data_to_device,payload_from_device,`TRANSFER_OUT_CMD_TB);
			
			   num_read_cycles = num_read_cycles - 1;
		end // repeat(num_read_cycles)
		
		//Perform Block Loop Back
        //Start by sending block of data 
		//from Host to Device. Then send a trigger to 
        //initiate sending the stored block from Device
        //to Host		
		call_title(BLOCK_IN_SECTION);
		repeat(num_block_cycles)
		begin

		    //Send random block data from Host to Device.
			//Store data in CLD FIFO. 
			#(5000 * `CYCLE )
			send_block(`ADDRESS_004_TB, BLOCK_COUNT_8);
		
		    // Set Block In LoopBack Mode with Control
            //Register bit 0x02
			#(5000 * `CYCLE )
		    send_control_register(`BLOCK_LOOPBACK);

		    // Transmit FIFO memory from Device to Host
			#(5000 * `CYCLE);
			ept_send_data_to_device = 8'h80;
            send_trigger(ept_send_data_to_device);

		    // Reset Block In LoopBack Mode with Trigger 0x20
			#(500 * `CYCLE);
			ept_send_data_to_device = 8'h10;
			send_trigger(ept_send_data_to_device);

			   num_block_cycles = num_block_cycles - 1;
		end // repeat(num_block_cycles)

        // End of Simulation
        #(5000 * `CYCLE);
        stopsim;


	end	//stimulus
//--------------------------------------------------
//	Task: call title 
//--------------------------------------------------
   task call_title;
	input [7:0] select_title;
      begin
		case ( select_title ) 
		8'h0:
		$display("\n\n\n\nThis testbench will test the EPT Interface PLD functionality.\n");
		8'h01:
		$display("\n\n\n\nSend Trigger Section of Testbench \n");
		8'h02:
		$display("\n\n\n\nSend Single Byte Section of Testbench  \n");
		8'h03:
		begin
		$display("\n\n\n\nReceive Block from Device Section of Testbench \n");
		end
		8'h04:
		$display("\n\n\n\nSend Block from Host Section of Testbench \n");
		default:
		$display("\n\n\n\nTest bench running....\n");
		8'h05:
		begin
		$display("\n\n\n\nSend Block To Device Section of Testbench \n");
		end
		8'h06:
		begin
		$display("\n\n\n\nSend Bytes from Arduino to the FIFO \n");
		end
		8'h07:
		begin
		$display("\n\n\n\nArduino Analog Monitor Project \n");
		$display("\nDisplays all six of the UNO's Analog inputs \n");
		end
		8'h08:
		begin
		$display("\n\n\n\nLED Blinky Project \n");
		$display("\nBlink the LEDs with Random number, Shift Left, Shift Right, Count \n");
		end
		endcase

      end
   endtask 

  //--------------------------------------------------
  //	Task: Send Block to the Device
  //--------------------------------------------------
   task send_block;
	  input [7:0] block_address;
      input [7:0] block_length;
	  reg [7:0] block_control_word;
	  reg [7:0] block_cmd_to_device;
	  reg [7:0] byte_count;
	  reg [31:0] block_write_word;
   begin

			block_control_word = `READ_CONTROL_WORD;
            //Write Block Transfer Command and Address to EPT 570 AP Model
			#(100 * `CYCLE )
			block_cmd_to_device = {block_control_word[7:6], block_address[2:0] , `BLOCK_IN_CMD_TB};
			host_bus_write( block_cmd_to_device);

	        //Write Block Transfer Command and Address to EPT 240 AP Model
			#(100 * `CYCLE )
			block_cmd_to_device = block_length;
			host_bus_write( block_cmd_to_device);

			byte_count = 0;
		    //Write Data to FIFO to EPT 240 AP Model
			while(byte_count < block_length)
			begin
			     block_write_word = random_number;
			     #( 50 * `CYCLE )
			     host_bus_write( block_write_word[7:0]);
				 
				 block_write_array[byte_count] = block_write_word[7:0];
				 byte_count = byte_count + 1;
			end
   end
   endtask
  //--------------------------------------------------
  //	Task: Read FT2232H FIFO until it is empty
  //--------------------------------------------------
   task ept_read_fifo;
     reg [7:0] fifo_readback;
     reg [7:0] array_index;
   begin
        array_index = 0;
		//Read the length from the Block Transfer
		#( 50 * `CYCLE )
         host_bus_read(host_readback);
		length_from_device = host_readback;
		
		while(array_index < (length_from_device + 1'd1))
		begin
		     host_bus_read(fifo_readback);
			 block_read_array[array_index] = fifo_readback;
			 array_index = array_index + 1'd1;
		end
	end
   endtask // ept_read_fifo

  
//--------------------------------------------------
//	Task: EPTParseReceive
//        Determines what command has been received from the 
//        Active Transfer Library.
//--------------------------------------------------
   task EPTParseReceive;
   //output error_flag;
   begin
         #(50 * `CYCLE )
		 //error_flag = 1'b0;
         //Read the byte received from the Host Model
         host_bus_read(host_readback);
		 command_from_device = host_readback[5:3];
         address_from_device = host_readback[2:0];
		 #( 10 * `CYCLE )
         case(command_from_device)
			3'h1:
			     begin
                     host_bus_read(host_readback);
				     payload_from_device = host_readback;
					 //TriggerOutReceive_I2CSlave(payload_from_device);
					 TriggerOutReceive_SPIMaster(payload_from_device);
					 //error_flag = 1'b1;
                     $display("\n\n\n\nReceived Trigger %h\n",payload_from_device);					 
				 end
			3'h2:
			     begin
                     host_bus_read(host_readback);
				     payload_from_device = host_readback;
					 TransferOutReceive(payload_from_device,address_from_device);
					 //error_flag = 1'b1;
                     $display("\n\n\n\nReceived Single Transfer Byte %h from address: %h\n",payload_from_device,address_from_device);					 
				 end
			3'h4:
			     begin
                     ept_read_fifo();
					 BlockOutReceive();
					 //error_flag = 1'b1;
                     $display("\n\n\n\nReceived Block Transfer %h from address: %h\n",payload_from_device,address_from_device);					 
				 end
         endcase			
	end
   endtask // EPTParseReceive

//--------------------------------------------------
//	Task: TriggerOutReceive
//--------------------------------------------------
   task    TriggerOutReceive_I2CSlave;
    input [7:0] read_register_value;
    begin
	     case (read_register_value)
		 8'h01:
		       WriteI2CSlaveToFIFO();
		 8'h02:
		 begin
		       ReadI2CSlaveWordFromFIFO();
			   $display("\n\n\n\nnTriggerOutReceive matched a case statement, ReadI2CSlaveWordFromFIFO 0x%h\n",read_register_value);
		 end
		 default:
		 begin
	         #(20 * `CYCLE);
			 $display("\n\n\n\nTriggerOutReceive did not match a case statement 0x%h\n",read_register_value);
		 end
		 endcase
	     #(20 * `CYCLE);
    end
   endtask // TriggerOutReceive

//--------------------------------------------------
//	Task: TriggerOutReceive_SPIMaster
//--------------------------------------------------
   task    TriggerOutReceive_SPIMaster;
    input [7:0] read_register_value;
    begin
	     case (read_register_value)
		 8'h01:
		 begin
		       receive_rdy_in_flag = 1'b1;
			   $display("\n\n\n\nnTriggerOutReceive received RDY_IN response from the SPI transmit 0x%h\n",read_register_value);
		 end
		 8'h02:
		 begin
		       receive_write_en_flag = 1'b1;
			   $display("\n\n\n\nnTriggerOutReceive received WE_IN response from the SPI receive 0x%h\n",read_register_value);
		 end
		 default:
		 begin
	         #(20 * `CYCLE);
			 $display("\n\n\n\nTriggerOutReceive did not match a case statement 0x%h\n",read_register_value);
		 end
		 endcase
	     #(20 * `CYCLE);
    end
   endtask // TriggerOutReceive_SPIMaster
//--------------------------------------------------
//	Task: TransferOutReceive
//--------------------------------------------------
   task       TransferOutReceive;
    input [7:0] read_register_value;
    input [7:0] read_register_address;
    begin
       case(read_register_address)
	   8'h0:
	           TransferOutReceive_A0 = read_register_value;
	   8'h1:
	           TransferOutReceive_A1 = read_register_value;
	   8'h2:
	           TransferOutReceive_A2 = read_register_value;
	   8'h3:
	           TransferOutReceive_A3 = read_register_value;
	   8'h4:
	           TransferOutReceive_A4 = read_register_value;
	   8'h5:
	           TransferOutReceive_A5 = read_register_value;
	   8'h6:
	           TransferOutReceive_A6 = read_register_value;
	   8'h7:
	           TransferOutReceive_A7 = read_register_value;
	   default:
	           #(20 * `CYCLE);
	   endcase
    end
   endtask // TransferOutReceive

//--------------------------------------------------
//	Task: BlockOutReceive
//--------------------------------------------------
   task       BlockOutReceive;
    begin
	     #(20 * `CYCLE);
    end
   endtask // BlockOutReceive

//--------------------------------------------------
//	Task: I2CSlaveResponseWord
//--------------------------------------------------
   task I2CSlaveResponseWord; 
       input [7:0] read_register;
	   output [7:0] response_word;  
    begin
       case(slave_read_register)
	   8'h9c:
	           response_word = 8'h31;
	   8'h9d:
	           response_word = 8'h32;
	   8'h9e:
	           response_word = 8'h33;
	   8'h9f:
	           response_word = 8'h34;
	   8'ha0:
	           response_word = 8'h35;
	   8'ha1:
	           response_word = 8'h36;
	   8'ha2:
	           response_word = 8'h37;
	   8'ha3:
	           response_word = 8'h38;
	   default:
	           response_word = 8'h00;
	   endcase
    end
   endtask
//--------------------------------------------------
//	Task: ReadI2CSlaveWordFromFIFO
//--------------------------------------------------
   task ReadI2CSlaveWordFromFIFO; 
    begin
	     //Set the Receive Enable Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device | `SET_RECEIVE_ENA_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);
		 
		 //Clear the Receive Enable Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device & `CLEAR_RECEIVE_ENA_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);
    end
   endtask // ReadI2CSlaveWordFromFIFO

//--------------------------------------------------
//	Task: WriteI2CSlaveToFIFO
//--------------------------------------------------
   task WriteI2CSlaveToFIFO; 
     begin
	     //Set the Transmit Ready Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device | `SET_TRANSMIT_RDY_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);

	     //Clear the Transmit Ready Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device | `CLEAR_TRANSMIT_RDY_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);
		 end
   endtask // WriteI2CSlaveToFIFO
  
//--------------------------------------------------
//	Task: Host read register memory
//--------------------------------------------------
   task host_bus_read;
    output [7:0] read_register_value;
    begin
	     host_read_byte = 1'b1;
	     #(20 * `CYCLE);
	     read_register_value = host_data_out;
	     #(20 * `CYCLE);
	     host_read_byte = 1'b0;
	     #(20 * `CYCLE);
    end
   endtask // host_bus_read

//--------------------------------------------------
//	Task: Host write register memory
//--------------------------------------------------
   task host_bus_write;
   input [7:0] write_register_value;
   begin
	     //#(20 * `CYCLE);
         host_write_byte = 1'b1;
	     host_data_in = write_register_value;
	     #(20 * `CYCLE);
	     host_write_byte = 1'b0;
	     #(20 * `CYCLE);
   end
   endtask // host_bus_write

//--------------------------------------------------
//	Task: Check Host Status
//	For Host Model Only
//	Read the status word from the Host_Bus_Model.
//--------------------------------------------------
   task host_check_status;
    output [7:0] host_status_byte;
    begin
	     host_read_status = 1'b1;
	     #(20 * `CYCLE);
		 host_status_byte = host_data_out;
	     host_read_status = 1'b0;
	     #(20 * `CYCLE);
    end
   endtask // host_bus_write

//--------------------------------------------------
//	Task: test_bench_compare
//	Compare two words from the testbench
//--------------------------------------------------
   task	test_bench_compare;
      input [7:0] write_tb_value1;
      input [7:0] write_tb_value2;
	  input [7:0]  message;
	  
	  reg [16*8:0] string;
      begin
	  case(message)
	  `TRIGGER_OUT_CMD_TB:  string = "Trigger Out";
	  `TRANSFER_OUT_CMD_TB: string = "Transfer Out";
	  `BLOCK_OUT_CMD_TB:    string = "Block Out";
	  endcase
	  if(write_tb_value1 == write_tb_value2)
		$display("\n\n\n\n%s %x correctly detected!.\n",string,write_tb_value2[7:0]);
	  else
 		$display("\n\n\n\n%s %x Failed.\n",string,write_tb_value2[7:0]);
     end
   endtask //  host_bus_read

   //-----------------------------------------------
   // Send Trigger to EPT 570 AP
   //-----------------------------------------------
   task	send_trigger;
      //input [7:0] trigger_control_word;
      input [7:0] trigger_bit;
	  reg [7:0] trigger_cmd_to_device;
	  reg [7:0] trigger_control_word;
	begin
	        trigger_control_word = `READ_CONTROL_WORD;
	 
	        //Write Trigger Command to EPT 570 AP Model
			#(20 * `CYCLE )
			trigger_cmd_to_device = {trigger_control_word[7:6], `TRIGGER_OUT_CMD_TB, `ADDRESS_000_TB };
			host_bus_write( trigger_cmd_to_device);

		    //Write Trigger  Payload to EPT 570 AP Model
			#( 20 * `CYCLE )
			host_bus_write( trigger_bit);
	end
   endtask 

   //-----------------------------------------------
   // Send Control Register to EPT 570 AP
   //-----------------------------------------------
   task	send_control_register;
      input [7:0] control_register_byte;
	  reg [7:0] transfer_cmd_to_device;
	  reg [7:0] read_command;
	begin
	        read_command = `READ_CONTROL_WORD;
		    //Write Control Register Command to EPT 570 AP
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Byte1 to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_BYTE1);

		    //Write Control Register Command to EPT 570 AP
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Byte2 to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_BYTE2);

		    //Write Control Register Command to EPT 570 AP
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Byte3 to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_BYTE3);

		    //Write Control Register Command to EPT 570 AP
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Payload to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write( control_register_byte);
			
		    //Write Control Register Command to EPT 570 AP
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Dummy Byte to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_DUMMY_BYTE);

			transfer_cmd_to_device = 0;
	end
   endtask 

   
//--------------------------------------------------
//	Task: assert_max11618_convst
//	This task initiates the conversion start for the 
//  MAX11618 ADC.
//--------------------------------------------------
   task	assert_max11618_convst;
      begin
	  
			//Write to the control register to set bit 3
			send_control_register(`ADC_CONVERSION_START);
			#(300* `CYCLE);
			
			//Reset the control register
			send_control_register(`RESET_CONTROL_REGISTER);
			#(100* `CYCLE);
	  
      end
   endtask //  

//--------------------------------------------------
//	Task: channel_select_max11618
//	This task initiates the conversion start for the 
//  MAX11618 ADC.
//--------------------------------------------------
   task	channel_select_max11618;
      begin
	  
			//Write to the control register to set bit 3
			send_control_register(`ADC_CONVERSION_START);
			#(300* `CYCLE);
			
			//Reset the control register
			send_control_register(`RESET_CONTROL_REGISTER);
			#(100* `CYCLE);
	  
      end
   endtask //  

//--------------------------------------------------
//	Task: SendMessage
//	This task will send a byte to the master spi unit.
//  Then it initiates a master spi transmit.
//--------------------------------------------------
   task	SendMessage;
      input		[7:0]	message;
      begin
	        //Send the transmit data word to the EndTerm
		    send_transfer(`TRANSFER_ENDTERM_1,message);
 			#(50* `CYCLE);
			
            //Send Trigger with Value = 2
			//This will latch the Register value into Storage Memory
			//in the CPLD
            send_trigger(8'h02);
			#(50* `CYCLE);
			
            //Send Trigger with Value = 1
			//This will initiate an SPI Write cycle to the ADC Control Registers
            send_trigger(8'h01);
			#(50* `CYCLE);

			
      end
   endtask //  
 
//--------------------------------------------------
//	Task: master_spi_transmit_byte
//	This task will send a byte to the master spi unit.
//  Then it initiates a master spi transmit.
//--------------------------------------------------
   task	master_spi_transmit_byte;
      begin

            //Send Control Register with Addres = 2 and Value = 2
			//This will initiate a transmit of the register value to
			//the ADC
            send_control_register(8'h01);
			#(50* `CYCLE);
			
            //Send Control Register with Addres = 2 and Value = 0
			//This will reset the Control Register to 0
            send_control_register(8'h00);
			#(50* `CYCLE);

			
      end
   endtask //  
 
//--------------------------------------------------
//	Task: slave_i2c_read_incoming_message
//	Once the serial_i2c_comms receives a message,
//	The serial_i2c_rdy_out signal is set and the host
//  can initiate a read of the available words.
//--------------------------------------------------
   task	slave_i2c_read_incoming_message;
      output	[7:0]	received_data_in;
      begin
	
	if( serial_iic_rdy_out)
	begin
		serial_iic_ena_in = 1'b1;
		 #(20 * `CYCLE);

		received_data_in = serial_iic_data_out;
		 #(20 * `CYCLE);
	
		wait( !serial_iic_rdy_out );
		serial_iic_ena_in = 1'b0;
		#(20 * `CYCLE);

	end
	else 
		$display("Failed to read Receive FIFO from DUT. \n
		serial_iic_rdy_out not asserted.");

      end
   endtask //  

//--------------------------------------------------
//	Task: slave_i2c_write_outgoing_message
//	Write one word to the serial_i2c_comms,
//	when done, start the transmit process.
//--------------------------------------------------
   task	slave_i2c_write_outgoing_message;
      input		[7:0]	transmit_address_out;
      input		[7:0]	transmit_data_out;
      begin
	        //Send the transmit data word to the EndTerm
		    send_transfer(transmit_address_out,transmit_data_out);
 			#(100* `CYCLE);
			
			//Cycle the Trigger bit to latch the data word into 
			//the transmit FIFO
			WriteI2CSlaveToFIFO();
	  end
   endtask //  

//--------------------------------------------------
//	Task: i2c_read_message_model
//	Read the words received from the Host.
//	These words were sent to the temp/humidity sensor.
//	They form a request from the Sensor.
//--------------------------------------------------
   task	i2c_read_message_model;
	output	[7:0]	master_return_value;
	output			master_receive_flag;

	begin
	
		if ( i2c_master_control_register_model[2] )
		begin
			master_receive_flag <= 1'b1;
 			#(20* `CYCLE);

			master_return_value <= i2c_master_receive_register_model;
 			#(20* `CYCLE);

			i2c_master_status_register_model[0] <= 1'b1;
 			#(2000* `CYCLE);

			i2c_master_status_register_model[0] <= 1'b0;
			#(20* `CYCLE);
		end
		else 
		begin
			master_receive_flag <= 1'b0;
 			#(20* `CYCLE);
		end

	end
   endtask

//--------------------------------------------------
//	Task: i2c_write_message_model
//	Write one word from the temp/humidity sensor.
//	These words constitute the reply message to the 
//	request from the Host FPGA.
//--------------------------------------------------
   task	i2c_write_message_model;
	input		[7:0]	sensor_send_value;

	begin

		i2c_master_send_register_model <= sensor_send_value;
 		#(20* `CYCLE);

		i2c_master_status_register_model[1] <= 1'b1;
		#(20* `CYCLE);


		#(2000* `CYCLE);

		i2c_master_status_register_model[1] <= 1'b0;
		#(20* `CYCLE);
	end
   endtask

//--------------------------------------------------
//	Task: i2c_latch_address_model
//--------------------------------------------------
   task	i2c_latch_address_model;
	input		[7:0]	address_value;

	begin

		i2c_master_send_register_model <= address_value;
 		#(20* `CYCLE);

		i2c_master_status_register_model[2] <= 1'b1;
		#(20* `CYCLE);


		#(2000* `CYCLE);

		i2c_master_status_register_model[2] <= 1'b0;
		#(20* `CYCLE);
	end
   endtask

//--------------------------------------------------
//	Task: i2c_receive_request_model
//--------------------------------------------------
   task	i2c_receive_request_model;
	input		[7:0]	receive_word_count_value;
	input		[7:0]	receive_word_value;

	begin

		i2c_master_send_register_model <= receive_word_count_value;
 		#(20* `CYCLE);

		i2c_master_status_register_model[3] <= 1'b1;
		#(20* `CYCLE);


		#(2000* `CYCLE);

		i2c_master_status_register_model[3] <= 1'b0;
		#(20* `CYCLE);
		
		#(2000* `CYCLE);
		//i2c_write_message_model(receive_word_value);
		#(20* `CYCLE);
	end
   endtask

//--------------------------------------------------
//	Task: read_incoming_message
//	Once the serial_iic_comms has stored a message,
//	read available words.
//--------------------------------------------------
   task	read_incoming_message;
      output	[15:0]	received_data_in;
	input		[7:0]		read_cycles;

	reg				sensor_feedback_ena_in;
	reg	[31:0]		error_count;

      begin
	sensor_feedback_ena_in = 1'b0;
	error_count	= 32'h0;
	
	wait( sensor_feedback_control[2] && 1'b1 )
	begin
		if( error_count <= 32'h01000000 )
			error_count = error_count + 1;
		else 
			$display("Failed to read Receive FIFO from DUT. \n
			serial_iic_rdy_out not asserted. Read cycle %h\n",read_cycles);
	end

		sensor_feedback_ena_in = 1'b1;
		 #(20 * `CYCLE);

		received_data_in = sensor_feedback_receive;
		 #(200 * `CYCLE);
	
		sensor_feedback_status[0] = 1'b1;
		wait( !sensor_feedback_control[2] && 1'b1 );
		sensor_feedback_ena_in  = 1'b0;
		#(200 * `CYCLE);
		sensor_feedback_status[0] = 1'b0;



      end
   endtask //  
   
//--------------------------------------------------
//	Task: compare read register 
//--------------------------------------------------
   task compare_host_read;
	input   [7:0]               write_register;
	input   [7:0]               read_register;
	output  [7:0]               compare_succeed;
	input   [7:0]               read_cycle_number;
	reg                         start_compare_read_cycle;


	begin
		start_compare_read_cycle = 1'b0;
		compare_succeed <= 1'b0;

		//$display("Performing the Compare of read and write words\n");
		start_compare_read_cycle = 1'b1;
	 	#(200* `CYCLE);
		if( write_register != read_register )
		begin
			compare_succeed <= 1'b0;
			$display("Compare failed at read cycle %h\n", read_cycle_number);
			$display("Write Register: %h\n", write_register);
			$display("Read Register: %h\n", read_register);
		end
		else
		begin
			compare_succeed <= 1'b1;
			$display("Compare Succeeded!!! at read cycle %h\n", read_cycle_number);
			$display("Write Register: %h\n", write_register);
			$display("Read Register: %h\n", read_register);
		end
		start_compare_read_cycle = 1'b0;
		 #(200 * `CYCLE);
		
	end
    endtask

   //-----------------------------------------------
   // Send Transfer to EPT 570 AP
   //-----------------------------------------------
   task	send_transfer;
      input [7:0] transfer_address;
      input [7:0] transfer_byte;
	  reg [7:0] transfer_cmd_to_device;
	  reg [7:0] read_command;
	begin
	        read_command = `READ_CONTROL_WORD;
		    //Write Single Transfer Command to EPT 570 AP
			#(20 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB , transfer_address[2:0]};
			host_bus_write( transfer_cmd_to_device);

		    //Write Single Transfer  Payload to EPT 570 AP
			#( 20 * `CYCLE )
			host_bus_write( transfer_byte);
	end
   endtask 

   //-----------------------------------------------
   // Task: stopsim
   //-----------------------------------------------
   task stopsim;
      begin
   	 $fdisplay(logfile,"Simulation Finished at time %0t\n",$time);
	 $stop;
	 $fclose(logfile);
      end
   endtask // stopsim

  
   //-----------------------------------------------
   // Instantiate Memory Test DUT
   //-----------------------------------------------
	assign			aa[1] = clk_66;
	assign			aa[0] = !reset;
	
    EPT_4CE6_AF_D1_Top          DUT
    (
	.aa                        (aa),
	.bc_in                     (bc_in),
	.bc_out                    (bc_out),
	.bd_inout                  (bd_inout),

    .XIO_1                     (),
	.XIO_2                     (),
    .XIO_2_IN                  (),
    .XIO_3                     (received_trigger_byte),
    .XIO_4                     (),
    .XIO_5                     (),
    .XIO_6                     (),
    .XIO_7                     (),
	
	.RESET                     (),

	.UBA                       (),
	.UBB                       (),
	
	.SD_DATA                   (),
	.SD_CMD                    (),
	.SD_CLK                    (),
	
	.ULG                       (),
    .ULY                       (),
	.ULO                       (),
	.ULR                       (),
	
	
	.LED                       (leds)
	);
   //-----------------------------------------------
   // Instantiate Host Bus Model
   //-----------------------------------------------
   host_ft245_model 	HOST_FT_245_MODEL_INST
   (
	.CLK                       (clk_150),
    .RST_N                     (!reset),
      
	.HOST_FT245_RXF_N          (bc_in[1]),
	.HOST_FT245_TXE_N          (bc_in[0]),
	.HOST_FT245_RD_N           (bc_out[2]),
	.HOST_FT245_WR             (bc_out[1]),
	.HOST_FT245_RESET_N        (usb_reset_n),
	.HOST_FT245_PWREN_N        (usb_pwren_n),
	.HOST_FT245_TEST           (bc_out[0]),
	.HOST_FT245_DATA           (bd_inout),

	.DATA_IN                   (host_data_in),
	.DATA_OUT                  (host_data_out),
	.READ_FT_245               (host_write_byte),
	.WRITE_FT_245              (host_read_byte),
	.READ_FT_STATUS            (host_read_status)

    );   


endmodule // tb_ept_ft2232h_top.v


