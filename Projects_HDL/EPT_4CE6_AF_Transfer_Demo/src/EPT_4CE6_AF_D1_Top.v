//#######################################################################
//#
//#	Copyright 	Earth People Technology Inc. 2015
//#
//#
//# File Name:  EPT_4CE6_AF_D1_Top.v
//# Author:     Earth People Technology
//# Date:       October 6, 2015
//# Revision:   A
//#
//# Development: EPT Data Collection Project 
//# Application: Altera Cyclone IV FPGA
//# Description: This file contains verilog code which will allow access
//#              to Active Transfer Library. 
//#               
//#              
//#
//#************************************************************************
//#
//# Revision History:	
//#			DATE		VERSION		DETAILS		
//#			10/6/15 	1			Created
//#
//#									
//#
//#######################################################################


//************************************************************************
//* Module Declaration
//************************************************************************

module EPT_4CE6_AF_D1_Top (

	
	input  wire [1:0]          aa,
	input  wire [1:0]          bc_in,
	output wire [2:0]          bc_out,
	inout  wire [7:0]		   bd_inout,
	
	output wire   [7:0]        XIO_1,       //XIO -- D2-D9
	output wire   [2:0]        XIO_2,       //XIO -- D10-D12
	input wire    [4:0]        XIO_2_IN,    //XIO -- D14-D18
	output wire   [7:0]        XIO_3,       //XIO -- D22-D29
	output wire   [7:0]        XIO_4,       //XIO -- D30-D37
	output wire   [7:0]        XIO_5,       //XIO -- D38-D45
	output wire   [7:0]        XIO_6,       //XIO -- D46-D53
	input wire    [5:0]        XIO_7,       //XIO -- D69,D70,D71,D74,D75,D76
	
	//Arduino Reset
	output wire               RESET,
	
	//Push BUtton Switches
	input wire                UBA,
	input wire                UBB,
	
	//SD Card Interface
	input wire   [3:0]        SD_DATA,
	output wire               SD_CMD,
	output wire               SD_CLK,
	
	//System LEDs
	output wire               ULG,
	output wire               ULY,
	output wire               ULO,
	output wire               ULR,
	
    //User LEDs
	output reg  [3:0]         LED
	);

   //-----------------------------------------------
   // Parameters
   //-----------------------------------------------
   
   parameter                   GLOBAL_RESET_COUNT = 12'h09c8;
   
   //Transfer to Host State Machine
   parameter                   TRANSFER_HOST_IDLE = 1,
                               TRANSFER_HOST_LOOPBACK_START = 2,
							   TRANSFER_HOST_LOOPBACK_COMPLETE = 3;

    // Block Transfer Options
	parameter                  BLOCK_COUNT_16       = 8'h10;

	//Block Transfer to Host State Machine
   parameter                   BLOCK_LOOPBACK_IDLE = 1,
                               BLOCK_LOOPBACK_INIT = 2,
							   FIFO_EN_HIGH = 3,
							   FIFO_EN_LOW = 4;

	//Block Transfer to Host Counter
   parameter                   BLK_TRANSFER_OUT_IDLE = 1,
			                   BLK_TRANSFER_OUT_COUNT = 2;

   //LED State Machine Parameters
   parameter                   IDLE = 0,
	                           SELECT_MODE = 1,
                               LOAD_REGISTER = 2,
                               LOAD_LEDS = 3,
                               WAIT_FOR_TIMER = 6;

   //Control Register selections for the LED Blinky
   parameter                   RANDOM_NUMBER = 4'h1;
   parameter                   SHIFT_LEFT = 4'h2;
   parameter                   SHIFT_RIGHT = 4'h3;
   parameter                   COUNT_UP = 4'h4;
   parameter                   COUNT_DOWN = 4'h5;
   parameter                   STATIC_VALUE = 6'h6;
   
   //Timer Value Low Limit
   parameter                   TIMER_LOW_LIMIT = 24'h3ff;

`ifdef SIM
   	reg [8*30:1] state_name;
`endif
   
//***************************************************************************
//* Internal Signals and Registers Declarations
//***************************************************************************
    wire                       CLK_66;
	wire                       RST;

`ifdef SIM
	wire [31:0]                UC_IN;
	wire [29:0]                UC_OUT;
`else
	wire [23:0]                UC_IN;
	wire [21:0]                UC_OUT;

`endif	
	//Finite State Machine control registers
	reg 	[6:0]              state, next;

	//Trigger Signals
	reg [7:0]                  trigger_out;
	wire [7:0]                 trigger_in_byte;	
	reg [7:0]                  trigger_from_host_latch;
	
	//LED registers
	wire                        led_reset;
	
	//Switch registers
	wire                        switch_reset;
	
	//Transfer registers
	reg                        transfer_out_reg;
	wire                       transfer_in_received;
	wire [7:0]                 transfer_in_byte;
	reg  [7:0]                 transfer_out_byte;
	reg  [3:0]                 transfer_to_host_counter;
	reg  [3:0]                 transfer_to_host_state;

    //Transfer Control registers
	wire                       transfer_in_loop_back;
	reg                        transfer_in_received_reg;
	reg  [3:0]                 transfer_control_state;
	reg  [7:0]                 transfer_control_byte;
	wire   [7:0]               control_register;
	
	//Block Transfer Out registers
	reg [2:0]                  state_block_loopback;
	reg                        block_out_reg;
	wire                       block_out_received;
	reg [7:0]                  block_out_counter;
	reg                        start_block_transfer;
	reg                        start_block_transfer_reg;
	wire                       block_byte_ready;
	wire [7:0]                 block_out_byte;
	reg [1:0]                  block_transfer_out_state;
	
	//Block Transfer In registers
	wire [7:0]                 block_in_data;
	wire                       block_in_rcv;
	wire                       block_in_loopback;
	wire  [7:0]                ept_length;
	wire  [7:0]                uc_length;
	wire                       block_busy;
	reg   [7:0]                block_in_data_counter;
	reg                        fifo_wren_reg;

	//Reset signals
	wire                       reset;
	reg [11:0]                 reset_counter;
	reg                        reset_signal_reg;
	
	//LED Blinky Transfer registers
	reg                        led_start_transfer;
	reg                        led_start_transfer_reg;
	wire                       led_transfer_in_received;
	reg [7:0]                  led_host_transfer_byte;
	wire [7:0]                 led_device_transfer_byte;

	//LED BLinky Signals
	reg [23:0]                 timer_value;	
	reg [7:0]                  seed_value;
	reg [23:0]                 led_delay_counter;
	reg [3:0]                  random_number;
	reg [3:0]                  random_num_counter;
	reg [3:0]                  led_reg;
	wire                       random_number_generated;
	reg                        start_blinky;
	reg [3:0]                  static_load_value;
	
	reg [3:0]                  shift_count_value;

	//Block Memory Registers
    reg   [7:0]                 mem_array [256:0];
	reg   [2:0]                 mem_array_index;
	
	//Test Signals


//***************************************************************************
//* 	Signal Assignments	
//***************************************************************************
   
   //Clock and Reset
   assign            CLK_66 = aa[1];
   assign            RST = reset;
   assign            reset = reset_signal_reg;
    
    //Control Register Map
   assign            transfer_in_loop_back = control_register[0];
   assign            block_in_loopback     = control_register[1];
   assign            led_reset             = control_register[2];
   assign            switch_reset          = control_register[3];
   
   //Block to host byte
   assign            block_out_byte = mem_array[block_out_counter];
   assign            uc_length = 8'h8;
   
   //Test signals
   assign            XIO_1[7:0] = block_out_byte;  //XIO -- D2-D9
   assign            XIO_2[0] = block_out_reg;     //XIO -- D10    
   assign            XIO_2[1] = block_byte_ready;  //XIO -- D11       
   assign            XIO_2[2] = block_busy;        //XIO -- D12 
   assign            XIO_4[0] = 1'b0;              //XIO -- D14
   assign            XIO_4[1] = block_in_loopback; //XIO -- D15        
   assign            XIO_4[2] = transfer_in_received; //XIO -- D16        
   assign            XIO_4[3] = block_in_rcv;      //XIO -- D17   
   assign            XIO_4[4] = led_reset;         //XIO -- D18
 
   //Static Ouputs
   assign            XIO_3[7:0] = trigger_from_host_latch;            //XIO -- D22-D29
   assign            XIO_4[7:5] = 3'h0;                 //XIO -- D30-D37 
   assign            XIO_5 = 8'hz;                 //XIO -- D38-D45
   assign            XIO_6 = 8'hz;                 //XIO -- D46-D53
 
   assign            RESET = 1'bz;
	
   assign            SD_CMD = 1'bz;
   assign            SD_CLK = 1'bz;
	
   assign            ULG = 1'bz;
   assign            ULY = 1'bz;
   assign            ULO = 1'bz;
   assign            ULR = 1'bz;
   
  
//**************************************************
//* 	Reset Signal	
//**************************************************
	always @(posedge CLK_66 or negedge aa[0])
	begin
	  if(!aa[0])
	  begin
			reset_signal_reg <= 1'b0;
			reset_counter <= 0;
	  end
	  else
	  begin
		if( reset_counter < GLOBAL_RESET_COUNT )
		begin
			reset_signal_reg <= 1'b0;
			reset_counter <= reset_counter + 1'b1;
		end
		else
		begin
			reset_signal_reg <= 1'b1;
		end
	  end
	end

   //-----------------------------------------------
   // Trigger Latch latches the trigger byte coming
   // from the host.
   //-----------------------------------------------

  always @(posedge CLK_66 or negedge RST)
  begin
     if(!RST)
	     trigger_from_host_latch = 0;
	else
	 begin
	     if(trigger_in_byte)
		    trigger_from_host_latch <= trigger_in_byte;
	 end
  
  end

   //-----------------------------------------------
   // User Switch Trigger
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
     if(!RST)
	 begin
	     trigger_out <= 8'h00;
	 end
	else 
	begin
	   if(UBA )
	        trigger_out <= 8'h04;
	   else if(UBB )
	        trigger_out <= 8'h08;
	    else 
	        trigger_out <= 8'h00;
	end
  end

   //-----------------------------------------------
   // Transfer to Host in Loop Back Mode 
   //-----------------------------------------------
    always @(posedge CLK_66 or negedge reset) 
	begin
	     if (!reset)
		 begin
			 transfer_out_reg <= 1'b0;
			 transfer_to_host_counter <= 0;
			 transfer_to_host_state <= TRANSFER_HOST_IDLE;
	     end 
		 else 
		 begin
			     transfer_out_reg <= 1'b0;
			case(transfer_to_host_state)
             TRANSFER_HOST_IDLE:
			     if(transfer_in_received & transfer_in_loop_back)	
                 begin			 
			         transfer_out_byte = transfer_in_byte;
			         transfer_to_host_state <= TRANSFER_HOST_LOOPBACK_START;
			     end
             TRANSFER_HOST_LOOPBACK_START:
		         if(transfer_to_host_counter < 4'hf)
			     begin
		             transfer_to_host_counter <= transfer_to_host_counter + 1'd1;
			         transfer_to_host_state <= TRANSFER_HOST_LOOPBACK_START;
			     end
				 else
				 begin
			         transfer_out_reg <= 1'b1;
			         transfer_to_host_state <= TRANSFER_HOST_LOOPBACK_COMPLETE;				 
				 end
             TRANSFER_HOST_LOOPBACK_COMPLETE:
			     begin
			         transfer_out_reg <= 1'b0;
					 transfer_to_host_counter <= 0;
			         transfer_to_host_state <= TRANSFER_HOST_IDLE;
				 end
			 default:
			      begin
			          transfer_out_reg <= 1'b0;
			          transfer_to_host_counter <= 0;
			          transfer_to_host_state <= TRANSFER_HOST_IDLE;
				  end
			 endcase
	     end
    end

   //-----------------------------------------------
   // Block In write to memory array is driven by block_byte_ready
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	begin
		 fifo_wren_reg <= 1'b0;
		 block_in_data_counter <= 0;
	end
	else 
	begin
	     if(block_in_rcv & block_byte_ready & !fifo_wren_reg)
		 begin
		     fifo_wren_reg <= 1'b1;
		 end
	     else if(block_in_rcv & block_byte_ready & fifo_wren_reg)
		 begin
		     fifo_wren_reg <= 1'b1;
			 mem_array[block_in_data_counter] <= block_in_data;
		 end
	     else if(block_in_rcv & !block_byte_ready & fifo_wren_reg)
		 begin
		     fifo_wren_reg <= 1'b0;
			 block_in_data_counter <= block_in_data_counter + 1'd1;
		 end
	     else if(!block_in_rcv)
		 begin
		     fifo_wren_reg <= 1'b0;
		     block_in_data_counter <= 0;
		 end
	end 
  end
   

   //-----------------------------------------------
   // Detect Block Transfer Out start
   //-----------------------------------------------
  always @(block_out_reg or trigger_in_byte or RST)
  begin
     if(!RST)
	     start_block_transfer = 1'b0;
	 else if(block_out_reg)
	     start_block_transfer = 1'b0;
	 else if((trigger_in_byte[7]))
	     start_block_transfer = 1'b1;
  
  end
  
   //-----------------------------------------------
   // Registers to start Block Transfer Out
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	begin
		 block_out_reg <= 1'b0;
		 start_block_transfer_reg <= 1'b0;
		 block_out_counter <= 0;
		 block_transfer_out_state <= BLK_TRANSFER_OUT_IDLE;
	end
	else
	begin
	     case(block_transfer_out_state)
		     BLK_TRANSFER_OUT_IDLE:
	             if(start_block_transfer )
				 begin
		             start_block_transfer_reg <= 1'b1;
		             block_transfer_out_state <= BLK_TRANSFER_OUT_COUNT;
				 end
			 BLK_TRANSFER_OUT_COUNT:
		         begin
			          block_out_reg <= 1'b1;
	                 if(block_byte_ready)
		             begin
		                 block_out_counter <= block_out_counter + 1'd1;
		             end
		             else if(block_out_counter >= ept_length )
		             begin
		                 block_out_counter <= 0;
			             block_out_reg <= 1'b0;
		                 block_transfer_out_state <= BLK_TRANSFER_OUT_IDLE;
		             end
				 end
			 default:
			      begin
		                 block_out_counter <= 0;
			             block_out_reg <= 1'b0;
		                 block_transfer_out_state <= BLK_TRANSFER_OUT_IDLE;
				  end
			 endcase
	end
  end

   //-----------------------------------------------
   // Block In read fifo enable is driven by block_byte_ready
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	begin
		state_block_loopback <= BLOCK_LOOPBACK_IDLE;
	end
	else 
	begin
	     if(block_in_loopback) 
		 begin
		     case(state_block_loopback)
			 BLOCK_LOOPBACK_IDLE:
			 begin
			     if(block_out_reg)
				    state_block_loopback <= BLOCK_LOOPBACK_INIT;
			 end
			 BLOCK_LOOPBACK_INIT:
			 begin
				 state_block_loopback <= FIFO_EN_HIGH;
		     end
			 FIFO_EN_HIGH:
		     begin
	             if(block_byte_ready )
				 begin
				     state_block_loopback <= FIFO_EN_LOW;
				 end
				 else
				 begin
				     state_block_loopback <= FIFO_EN_HIGH;
				 end
		     end
			 FIFO_EN_LOW:
		     begin
				 if(block_out_counter == 0)
				 begin
					 if(block_out_reg)
				         state_block_loopback <= BLOCK_LOOPBACK_IDLE;
				 end
	             else if(!block_byte_ready )
				 begin
				     state_block_loopback <= FIFO_EN_HIGH;
				 end
			 end
			 endcase
		 end
		 else
		 begin
		     state_block_loopback <= BLOCK_LOOPBACK_IDLE;
		 end
	end 
  end

   //-----------------------------------------------
   // Load Timer Value
   //-----------------------------------------------

  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	     timer_value <= TIMER_LOW_LIMIT;
	else 
	begin
	     if(trigger_in_byte[4])
	         timer_value[15:8] <= led_device_transfer_byte;
	     else if(trigger_in_byte[5])
	         timer_value[23:16] <= led_device_transfer_byte;
	end 
  end

   //-----------------------------------------------
   // Load Static Value
   //-----------------------------------------------

  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	     static_load_value <= 0;
	else 
	begin
	     if(trigger_in_byte[0])
	         static_load_value <= led_device_transfer_byte[3:0];
	end 
  end

   //-----------------------------------------------
   // LED Blinky start 
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
         start_blinky <= 1'b0;
	else 
	begin
	    if(control_register[7:4] > 0)
            start_blinky <= 1'b1;
		else
            start_blinky <= 1'b0;		
 	end 
  end
 
   //-----------------------------------------------
   // LED Delay Timer Counter 
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	     led_delay_counter <= TIMER_LOW_LIMIT;
	else 
	begin
	     if(state[SELECT_MODE])
		 led_delay_counter <= timer_value;
		 else if(state[WAIT_FOR_TIMER])
	         led_delay_counter <= led_delay_counter - 1'd1;
	end 
  end

   //-----------------------------------------------
   // Random Number array
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
     if(!RST)
	 begin
	     random_number <= 4'h0;
		 random_num_counter <= 0;
	 end
	else 
	begin
	    if(random_num_counter < 4'h4 )
	    begin
	        random_num_counter <= random_num_counter + 1'd1;
			random_number[random_num_counter] <= random_number_generated;
		end
	    else 
		begin
	        random_num_counter <= 0;
			random_number[random_num_counter] <= random_number_generated;
		end
	end
  end

   //-----------------------------------------------
   // Send status of LEDs to Host
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	begin
		led_start_transfer <= 1'b0;
        led_host_transfer_byte <= 0;
        led_start_transfer_reg <= 1'b0;
	end
	else 
	begin
        if((state[WAIT_FOR_TIMER] | led_reset) & !led_start_transfer_reg)
		begin
		   led_start_transfer_reg <= 1'b1;
		   if(timer_value > 24'hbb8)
		   begin
		      led_start_transfer <= 1'b1;
		   end
		   if(led_reset)
                led_host_transfer_byte <= {8'h0};
           else
		       led_host_transfer_byte <= {4'h0,LED};
		   end
        else if((state[WAIT_FOR_TIMER] | led_reset) & led_start_transfer_reg)
		begin
		   led_start_transfer_reg <= 1'b1;
		   led_start_transfer <= 1'b0;
		   if(led_reset)
                led_host_transfer_byte <= {8'h0};
           else
		       led_host_transfer_byte <= {4'h0,LED};
		end
        else if((state[SELECT_MODE] | led_reset) & led_start_transfer_reg)
		begin
		   led_start_transfer_reg <= 1'b0;
		   led_start_transfer <= 1'b0;
           led_host_transfer_byte <= 0;
		end
	end
  end
   
   //-----------------------------------------------
   // Select the LED Function from the control
   // register bits 7 to 4   
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	     led_reg <= 0;
	else 
	begin
        if (state[SELECT_MODE])
	    begin
	         case(control_register[7:4])
		       RANDOM_NUMBER:
		          led_reg = random_number;
		       SHIFT_LEFT:
		          led_reg = shift_count_value;
		       SHIFT_RIGHT:
		          led_reg = shift_count_value;
		       COUNT_UP:
		          led_reg = shift_count_value;
		       COUNT_DOWN:
		          led_reg = shift_count_value;
		       STATIC_VALUE:
		          led_reg = static_load_value;
		       default:
		          led_reg = 4'h0;
		      endcase 
        end	
    end
  end
  
   //-----------------------------------------------
   // Increment the Shift/Count value from the control
   // register bits 7 to 4   
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	     shift_count_value <= 0;
	else 
	begin
	    if(trigger_in_byte[1])
		     shift_count_value <= led_device_transfer_byte[3:0];
		else if (state[LOAD_REGISTER])
	    begin
	         case(control_register[7:4])
		     SHIFT_LEFT:
			 begin
		        shift_count_value[0] <= led_reg[3];
		        shift_count_value[3] <= led_reg[2];
		        shift_count_value[2] <= led_reg[1];
		        shift_count_value[1] <= led_reg[0];
		     end
		     SHIFT_RIGHT:
			 begin
		        shift_count_value[0] <= led_reg[1];
		        shift_count_value[3] <= led_reg[0];
		        shift_count_value[2] <= led_reg[3];
		        shift_count_value[1] <= led_reg[2];
		     end
		     COUNT_UP:
		        shift_count_value <= led_reg + 1'd1;
		     COUNT_DOWN:
		        shift_count_value <= led_reg - 1'd1;
		     default:
	            shift_count_value <= 0;
		    endcase   
         end
	end 
  end

   //-----------------------------------------------
   // Set the LED outputs 
   //-----------------------------------------------
  always @(posedge CLK_66 or negedge RST)
  begin
    if(!RST)
	     LED <= 4'h0;
	else 
	begin
	  if(led_reset)
	     LED <= 4'h0;
	  else if(state[LOAD_LEDS])
	  begin
		if ( led_reg[0] )
			LED[0] = 1'b1;
		else 
			LED[0] = 1'b0;
		if ( led_reg[1] )
			LED[1] = 1'b1;
		else 
			LED[1] = 1'b0;
 		if ( led_reg[2] )
			LED[2] = 1'b1;
		else 
			LED[2] = 1'b0;
		if ( led_reg[3] )
			LED[3] = 1'b1;
		else 
			LED[3] = 1'b0;
	  end
	end
  end

     //-----------------------------------------------
   // State Machine: Send Pattern to LEDs 
   //-----------------------------------------------
   // Next State Logic
   always @(posedge CLK_66 or negedge RST)
     begin
	if (!RST)
	  begin
	     state <= 7'h00;
	     state[IDLE] <= 1'b1;
	  end
	else
	  state <= next;
     end

     // State Definitions
   always @ ( state or start_blinky or random_number or
		      led_reg or led_delay_counter or control_register or
			  timer_value or shift_count_value) 
     begin
	     next = 7'h00;

	if (state[IDLE])
	  begin
	     if (start_blinky)
	       next[SELECT_MODE] = 1'b1;
	     else
	       next[IDLE] = 1'b1;
	  end
	
	if (state[SELECT_MODE])
	begin
       if(control_register[7:4] == 4'h0)        
            next[IDLE] = 1'b1;
         else		 
           next[LOAD_REGISTER] = 1'b1;
	end

	if (state[LOAD_REGISTER])
	begin
        next[LOAD_LEDS] = 1'b1;
    end
		
	if (state[LOAD_LEDS])
	begin
        next[WAIT_FOR_TIMER] = 1'b1;
    end
	
	if (state[WAIT_FOR_TIMER])
		if (led_delay_counter <= timer_value)
			next[WAIT_FOR_TIMER] = 1'b1;
		else 
			next[SELECT_MODE] = 1'b1;

			
`ifdef SIM
 	   if ( state == ( 1 << IDLE ))
		   state_name = "IDLE";
	   else if ( state == ( 1 << SELECT_MODE ))
		   state_name = "SELECT_MODE";
	   else if ( state == ( 1 << LOAD_REGISTER ))
		   state_name = "LOAD_REGISTER";
	   else if ( state == ( 1 << LOAD_LEDS ))
		   state_name = "LOAD_LEDS";
	   else if ( state == ( 1 << WAIT_FOR_TIMER ))
		   state_name = "WAIT_FOR_TIMER";
`endif


	end//end of state machine

   
   //-----------------------------------------------
   // Linear Feedback Shift Register
   //-----------------------------------------------
  lfsr                         LFSR_INST
  (
   .Q                          (random_number_generated),
   .CLK                        (CLK_66),
   .RST                        (RST),
   .SEED                       (led_device_transfer_byte[3:0]),
   .LOAD                       (trigger_in_byte[6])
   );	
	

   //-----------------------------------------------
   // State Machine: Control Register from Transfer In 
   //-----------------------------------------------
  /*
     Control Register Register Map
	 
	 control_register[0]  =  transfer_in_loop_back
	 control_register[1]  =  block_in_loopback 
	 control_register[2]  =  led_reset
	 control_register[3]  =  switch_reset
	 control_register[4]  =  LED Select Mode[0]
	 control_register[5]  =  LED Select Mode[1]
	 control_register[6]  =  LED Select Mode[2]
	 control_register[7]  =  LED Select Mode[3]
	 

  */
  active_control_register      ACTIVE_CONTROL_REG_INST
  (
   .CLK                        (CLK_66),
   .RST                        (RST),
   .TRANSFER_IN_RECEIVED       (transfer_in_received),
   .TRANSFER_IN_BYTE           (transfer_in_byte),

   .CONTROL_REGISTER           (control_register)
   );
   
   //-----------------------------------------------
   // Instantiate the EPT Library
   //-----------------------------------------------

	active_transfer_library	   ACTIVE_TRANSFER_LIBRARY_INST
	(	
	.aa                        (aa),
	.bc_in                     (bc_in),
	.bc_out                    (bc_out),
	.bd_inout                  (bd_inout),

	.UC_IN                     (UC_IN),
	.UC_OUT                    (UC_OUT)
	
	);
	
   //-----------------------------------------------
   // Instantiate the EPT Library
   //-----------------------------------------------
`ifdef SIM
wire [30*4-1:0]  uc_out_m;
`else
wire [22*4-1:0]  uc_out_m;
`endif	
eptWireOR # (.N(4)) wireOR (UC_OUT, uc_out_m);

/*
    Active Trigger Register Mapping
	
	trigger_in_byte[0]  =  Load Static Value
	trigger_in_byte[1]  =  Load shift_count_value
	trigger_in_byte[2]  =  
	trigger_in_byte[3]  =  
	trigger_in_byte[4]  =  Load Timer Value, timer_value[15:8]
	trigger_in_byte[5]  =  Load Timer Value, timer_value[23:16]
	trigger_in_byte[6]  =  Load linear_feedback_shift_register
	trigger_in_byte[7]  =  start_block_transfer = 1'b1
	

*/
	active_trigger             ACTIVE_TRIGGER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
`ifdef SIM
	 .uc_out                   (uc_out_m[ 0*30 +: 30 ]),
`else
	 .uc_out                   (uc_out_m[ 0*22 +: 22 ]),
`endif	

	 .trigger_to_host          (trigger_out),
	 .trigger_to_device        (trigger_in_byte)
	
	);

    active_transfer            ACTIVE_TRANSFER_INST_1
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
`ifdef SIM
	 .uc_out                   (uc_out_m[ 1*30 +: 30 ]),
`else
	 .uc_out                   (uc_out_m[ 1*22 +: 22 ]),
`endif	
	
	 .start_transfer           (led_start_transfer),
	 .transfer_received        (led_transfer_in_received),
	 
	 .transfer_busy            (),
	
	 .uc_addr                  (3'h1),

	 .transfer_to_host         (led_host_transfer_byte),
	 .transfer_to_device       (led_device_transfer_byte)	
    );
	
	active_transfer            ACTIVE_TRANSFER_INST_2
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
`ifdef SIM
	 .uc_out                   (uc_out_m[ 2*30 +: 30 ]),
`else
	 .uc_out                   (uc_out_m[ 2*22 +: 22 ]),
`endif	
	
	 .start_transfer           (transfer_out_reg),
	 .transfer_received        (transfer_in_received),
	
	 .transfer_busy            (),
	
	 .uc_addr                  (3'h2),

	 .transfer_to_host         (transfer_out_byte),
	 .transfer_to_device       (transfer_in_byte)	
	);
	
	
	active_block               BLOCK_TRANSFER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
`ifdef SIM
	 .uc_out                   (uc_out_m[ 3*30 +: 30 ]),
`else
	 .uc_out                   (uc_out_m[ 3*22 +: 22 ]),
`endif	
	
	 .start_transfer           (block_out_reg),
	 .transfer_received        (block_in_rcv),
	 
	 .transfer_ready           (block_byte_ready),
	 .transfer_busy            (block_busy),

	 .ept_length               (ept_length),
	
	 .uc_addr                  (3'h4),
	 .uc_length                (ept_length),

	 .transfer_to_host         (block_out_byte),
	 .transfer_to_device       (block_in_data)
	
	);

	
endmodule

