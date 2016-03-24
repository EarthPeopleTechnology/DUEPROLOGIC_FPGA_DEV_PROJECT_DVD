onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate -divider {Host Active Transfer}
add wave -noupdate -divider {Host Active Trigger}
add wave -noupdate -divider {Host Control Register}
add wave -noupdate -divider {Host Check Status}
add wave -noupdate -divider {Host Write Bus}
add wave -noupdate -divider TB_I2C_Set_Address
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/i2c_latch_address_model/address_value
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/temp_1_humidity_1_iic_status_register_model
add wave -noupdate -divider TB_I2C_Read_Message
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/i2c_read_message_model/sensor_return_value
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/i2c_read_message_model/sensor_receive_flag
add wave -noupdate -divider {TB_
I2C_Write_Message}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/i2c_write_message_model/sensor_send_value
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/temp_1_humidity_1_iic_status_register_model
add wave -noupdate -divider DUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/RESET
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/IIC_DATA
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/IIC_CLOCK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_TRANSMIT_DATA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_TRANSMIT_ENA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_TRANSMIT_RDY_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_TRANSMIT_WORD_COUNT_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_RECEIVE_DATA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_RECEIVE_ENA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_RECEIVE_RDY_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_IIC_RECEIVE_WORD_COUNT_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_rden
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_rden_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_rst
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_din
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_wren
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_wren_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_dout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_fifo_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_add_data_word
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_rden
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_rden_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_rst
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_din
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_wren
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_wren_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_dout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/serial_iic_rdy_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/serial_iic_ena_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_valid_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/iic_data_from_transmit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/iic_clock_from_transmit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_holding_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_data_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_done
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_data_valid_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_word_count_reg_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_word_count_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_data_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_ready
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_words_to_be_sent_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/load_transmit_fifo_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_fifo_word_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/wait_for_data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmission_active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_incoming_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/store_outgoing_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/store_outgoing_data_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/add_sync_words_delay_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/write_cycle_complete_delay_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/check_for_last_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_decode_message
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_decode_message_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/i2c_address_detected
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/i2c_address
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/i2c_read_write_bit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/i2c_rw_stop
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/rstop_phase
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/ack_done
add wave -noupdate -radix ascii /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/state_name
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/i2c_start_detect
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/TH_SERIAL_CLOCK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/ack_grant_start
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/ack_request_start
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/ack_data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/iic_data_in_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/iic_data_out_from_ack
add wave -noupdate -divider DUT_Serial_I2C_Transmit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/transmit_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/data_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/holding_reg_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/holding_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/shift_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/phase
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/iic_data_idle
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/iic_data_select
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/last_data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/bit_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/transmit_complete_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_TRANSMIT_INST/iic_data_pre
add wave -noupdate -divider DUT_Serial_I2C_Receive
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/valid_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/last_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/last_clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/lastlast_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/lastlast_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/sample_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/shift_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/bit_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/out_phase
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/z1_iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/z2_iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/z3_iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/z1_iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/z2_iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_RECEIVE_INST/z3_iic_clock
add wave -noupdate -divider DUT_Serial_I2C_Ack
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/GNT_START
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/REQ_START
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/DATA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/SCLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/DOUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/DATA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/DONE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/bit_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/sclk_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/sdata_reg
add wave -noupdate -radix ascii /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/SERIAL_I2C_ACK_INST/state_name
add wave -noupdate -divider {DUT_Serial_Receive_
FIFO}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/DIN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/WR_EN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/WR_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/RD_EN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/RD_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/AINIT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/DOUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/FULL
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/EMPTY
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/WR_ERR
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/storage_fifo_0
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/storage_fifo_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/storage_fifo_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/storage_fifo_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/storage_fifo_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_has_byte_0
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_has_byte_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_has_byte_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_has_byte_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_has_byte_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_is_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_is_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_clear_flag_0
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_clear_flag_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_clear_flag_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_clear_flag_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_clear_flag_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/dout_buffer
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_write_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/fifo_read_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/write_enable
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/write_enable_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/read_enable
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/receive_FIFO/read_enable_reg
add wave -noupdate -divider DUT_Serial_Transmit_FIFO
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/DIN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/WR_EN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/WR_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/RD_EN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/RD_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/AINIT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/DOUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/FULL
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/EMPTY
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/WR_ERR
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/storage_fifo_0
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/storage_fifo_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/storage_fifo_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/storage_fifo_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/storage_fifo_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_has_byte_0
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_has_byte_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_has_byte_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_has_byte_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_has_byte_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_is_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_is_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_clear_flag_0
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_clear_flag_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_clear_flag_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_clear_flag_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_clear_flag_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/dout_buffer
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_write_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/fifo_read_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/write_enable
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/write_enable_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/read_enable
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_SERDES_MODULE_INST/transmit_FIFO/read_enable_reg
add wave -noupdate -divider {Sensor_Feedback
_Model}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/RESET
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/SERIAL_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/DATA
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/CLOCK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/CONTROL_REGISTER
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/STATUS_REGISTER
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/RECEIVE_REGISTER
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/SEND_REGISTER
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/transmit_data_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/RDY_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/receive_data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/ENA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/RDY_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/de_assert_ena_in_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/read_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/control_update_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/status_update_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/ena_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/receive_data_ready
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/receive_data_ready_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/transmit_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/de_assert_rdy_in_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/rdy_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/transmit_data_ready
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/transmit_data_ready_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/ENA_IN
add wave -noupdate -radix ascii /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/state_name
add wave -noupdate -divider Sensor_I2C_Comms_Model
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/RESET
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/IIC_DATA
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_TRANSMIT_DATA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_TRANSMIT_ENA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_TRANSMIT_RDY_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_TRANSMIT_WORD_COUNT_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_TRANSMIT_ADDRESS_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_RECEIVE_DATA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_RECEIVE_ENA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/SERIAL_IIC_RECEIVE_RDY_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_iic_ena_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_iic_rdy_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/iic_data_to_receive
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/IIC_CLOCK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/iic_clock_to_receive
add wave -noupdate /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/iic_clock_from_receive
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/iic_data_from_transmit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/iic_clock_from_transmit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_rden
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_rden_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_rst
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_din
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_wren
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_wren_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_dout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_fifo_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/receive_valid_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/wait_for_data_valid
add wave -noupdate -radix ascii /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/state_name
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/read_word_out_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/load_transmit_fifo_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/shift_bit_out_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/incoming_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/write_to_iic
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/write_to_iic_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmission_active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/write_to_iic_bus_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/store_outgoing_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/store_outgoing_data_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_rden
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_rden_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_din
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_wren
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_wren_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_dout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_data_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_active
add wave -noupdate /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_start
add wave -noupdate /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_done
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_data_valid_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_data_valid_reg_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_data_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_word_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/transmit_fifo_word_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/ack_grant_start
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/ack_req_start
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/i2c_ack_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/i2c_ack_data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/i2c_ack_done
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/i2c_ack_receive
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/i2c_ack_transmit
add wave -noupdate -divider I2C_Transmit_Model
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/transmit_complete
add wave -noupdate -radix hexadecimal -childformat {{{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[7]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[6]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[5]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[4]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[3]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[2]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[1]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[0]} -radix hexadecimal}} -subitemconfig {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[7]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[6]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[5]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[4]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[3]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[2]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[1]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in[0]} {-height 15 -radix hexadecimal}} /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/holding_reg_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/iic_data_pre
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/holding_reg
add wave -noupdate -radix hexadecimal -childformat {{{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[7]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[6]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[5]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[4]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[3]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[2]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[1]} -radix hexadecimal} {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[0]} -radix hexadecimal}} -subitemconfig {{/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[7]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[6]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[5]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[4]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[3]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[2]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[1]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg[0]} {-height 15 -radix hexadecimal}} /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/shift_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/phase
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/iic_data_idle
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/iic_data_select
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/last_data_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/bit_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_transmit_inst/transmit_complete_reg
add wave -noupdate -divider I2C_Receive_Model
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/data_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/valid_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/active
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/last_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/last_clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/lastlast_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/lastlast_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/sample_data
add wave -noupdate /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/receive_start
add wave -noupdate /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/receive_start_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/shift_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/bit_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/out_phase
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/z1_iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/z2_iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/z3_iic_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/z1_iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/z2_iic_clock
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/serial_receive_inst/z3_iic_clock
add wave -noupdate -divider {I2C ACK MODEL}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/SERIAL_CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/GNT_START
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/REQ_START
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/DATA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/DOUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/DATA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/DONE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/SCLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/bit_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/bit_count_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/sclk_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/sdata_reg
add wave -noupdate -radix ascii /tb_ept_4ce6_top/I2C_COMMS_CONTROLLER_MODEL/serial_iic_comms_inst/I2C_ACK_MODEL_INST/state_name
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 19} {7254725913 ps} 0} {{Cursor 3} {1247655982 ps} 0} {{Cursor 4} {6891545513 ps} 0} {{Cursor 5} {205612914 ps} 0}
quietly wave cursor active 4
configure wave -namecolwidth 227
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {173126932 ps} {230477184 ps}
