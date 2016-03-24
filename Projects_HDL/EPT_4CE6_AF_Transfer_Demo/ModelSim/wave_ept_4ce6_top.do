onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate -divider {Host Active Trigger}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_trigger/trigger_bit
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_trigger/trigger_cmd_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_trigger/trigger_control_word
add wave -noupdate -divider {Host Active Transfer}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_transfer/transfer_address
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_transfer/transfer_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_transfer/transfer_cmd_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_transfer/read_command
add wave -noupdate -divider {Host Active Block}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_block/block_control_word
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_block/block_address
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_block/block_length
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_block/block_cmd_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_block/byte_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_block/block_write_word
add wave -noupdate -divider {Host Control Register}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_control_register/control_register_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_control_register/transfer_cmd_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/send_control_register/read_command
add wave -noupdate -divider {Host Check Status}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/host_check_status/host_status_byte
add wave -noupdate -divider {Host Write Bus}
add wave -noupdate /tb_ept_4ce6_top/host_write_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/host_bus_write/write_register_value
add wave -noupdate -divider EPTParseReceive
add wave -noupdate -divider {Host Test Bench Compare}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/test_bench_compare/write_tb_value1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/test_bench_compare/write_tb_value2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/ept_send_data_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/payload_from_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/test_bench_compare/message
add wave -noupdate -radix ascii /tb_ept_4ce6_top/test_bench_compare/string
add wave -noupdate -divider EPT_4CE6_AF_D1_Top
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/aa
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/bc_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/bc_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/bd_inout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/XIO_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/XIO_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/XIO_3
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/XIO_4
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/LED
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/CLK_66
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/RST
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/UC_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/UC_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/trigger_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/trigger_in_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/trigger_from_host_latch
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/control_register
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_in_loopback
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_in_loop_back
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/led_reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/switch_reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_in_received
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_in_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_out_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_to_host_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_to_host_state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_in_received_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_control_state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/transfer_control_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/state_block_loopback
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_out_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_out_received
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_out_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/start_block_transfer
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/start_block_transfer_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_byte_ready
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_out_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_transfer_out_state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_in_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_in_rcv
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ept_length
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/block_busy
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/fifo_wren_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/reset_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/reset_signal_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/uc_out_m
add wave -noupdate -divider {Active Trigger}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/uc_clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/uc_reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/uc_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/uc_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/trigger_to_host
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/trigger_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/to_trigupdate
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/trigger_to_host_flag
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/previous_to_trigupdate
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/to_trigupdate_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRIGGER_INST/xint
add wave -noupdate -divider {Active Transfer}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/control_register
add wave -noupdate -divider {Active Block}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/uc_clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/uc_reset
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/uc_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/uc_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/start_transfer
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/transfer_received
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/transfer_ready
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/transfer_busy
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/ept_length
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/uc_addr
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/uc_length
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/transfer_to_host
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/transfer_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/state_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/next_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/transfer_received_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/block_transfer_state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/block_transfer_state_counter
add wave -noupdate -radix ascii /tb_ept_4ce6_top/DUT/BLOCK_TRANSFER_INST/state_name
add wave -noupdate -divider {Block In FIFO}
add wave -noupdate -divider {Active Control Register}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/RST
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/TRANSFER_IN_RECEIVED
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/TRANSFER_IN_BYTE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/CONTROL_REGISTER
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/transfer_in_received_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_CONTROL_REG_INST/transfer_control_state
add wave -noupdate -divider {Active Transfer Library Simulated}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/aa
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/bc_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/bc_out
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_IN
add wave -noupdate -radix hexadecimal -childformat {{{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[29]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[28]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[27]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[26]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[25]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[24]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[23]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[22]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[21]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[20]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[19]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[18]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[17]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[16]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[15]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[14]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[13]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[12]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[11]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[10]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[9]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[8]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[7]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[6]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[5]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[4]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[3]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[2]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[1]} -radix hexadecimal} {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[0]} -radix hexadecimal}} -subitemconfig {{/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[29]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[28]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[27]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[26]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[25]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[24]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[23]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[22]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[21]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[20]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[19]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[18]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[17]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[16]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[15]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[14]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[13]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[12]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[11]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[10]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[9]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[8]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[7]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[6]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[5]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[4]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[3]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[2]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[1]} {-height 15 -radix hexadecimal} {/tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT[0]} {-height 15 -radix hexadecimal}} /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/UC_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/bd_inout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/USB_RXF_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/usb_rxf_n_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/USB_RD_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/USB_TXE_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/USB_WR
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/usb_txe_n_reg
add wave -noupdate -radix ascii /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/state_name
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/read_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/read_complete_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/read_complete_cntr
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_to_host
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_complete_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/usb_txe_n_meta_1
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/usb_txe_n_meta_2
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/bd_inout_latch
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/control_multiplexor
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/command_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_control_mux
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_control_mux_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_en_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/write_data_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/WRITE_BYTE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/command_from_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/length_from_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/address_from_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/payload_from_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/byte_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/uc_in_payload
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/uc_in_command
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/uc_in_address
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/uc_in_length
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/command_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/address_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/length_to_device
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/block_read_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/byte_count_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/transfer_busy
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/data_byte_ready_delay_cnt
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/reset_uc_in
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/reset_uc_in_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/reset_uc_in_counter
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/DUT/ACTIVE_TRANSFER_LIBRARY_INST/uc_out_command
add wave -noupdate -divider {Host FIFO Interface Model}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_RXF_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_TXE_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_RD_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_WR
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_RESET_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_PWREN_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_TEST
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_FT245_DATA
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/DATA_IN
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/DATA_OUT
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/READ_FT_245
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/WRITE_FT_245
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/READ_FT_STATUS
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/start_read_cycle
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/start_read_cycle_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_cycle_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_cycle_meta_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_cycle_rdy
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_cycle_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/write_cycle_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/write_cycle_meta_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/start_write_cycle
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/host_model_write_cycle_complete
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/write_cycle_hold_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/write_transmit_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/model_read_host_data_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/transmit_byte_storage
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_ft_status_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/ft_status_byte
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_ft_status_cntr
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/host_byte_available
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/state_read_fifo
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/next_read_fifo
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_wren
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_rden
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_dout
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_afull
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/fifo_aempty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/data_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/flush
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/read_fifo_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/write_cycle_complete_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/temp_byte
add wave -noupdate -radix ascii /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/state_name
add wave -noupdate -divider {Host Read Model}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/HOST_FT245_RXF_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/HOST_FT245_RD_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/HOST_FT245_READ_BYTE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/TRANSMIT_BYTE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/START_READ_CYCLE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/READ_CYCLE_RDY
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/READ_CYCLE_COMPLETE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/start_read_cycle_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/ft245_rd_n_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/output_enable_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/rxf_n_delay_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/rxf_n_delay_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_READ/state_name
add wave -noupdate -divider {Host Write Model}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/CLK
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/HOST_FT245_TXE_N
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/HOST_FT245_WR
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/HOST_FT245_WRITE_BYTE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/TRANSMIT_BYTE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/START_WRITE_CYCLE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/WRITE_CYCLE_COMPLETE
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/state
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/next
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/output_enable_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_enable
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_enable_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/txe_delay_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/txe_delay_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/host_ft245_txe_n_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/host_ft245_txe_n_count
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_byte_control_reg
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_byte_control_count
add wave -noupdate -radix ascii /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/HOST_WRITE/state_name
add wave -noupdate -divider {Host FIFO Model}
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/clk
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/reset_n
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/flush
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/read_req
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/write_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/wdata_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/read_data
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/rdata_valid
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/fifo_empty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/fifo_aempty
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/fifo_full
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/fifo_afull
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/write_ack
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/read_ptr
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/write_ptr
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/read_enable
add wave -noupdate -radix hexadecimal /tb_ept_4ce6_top/HOST_FT_245_MODEL_INST/FIFO/write_enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 19} {1351976408 ps} 0} {{Cursor 3} {457955146 ps} 0} {{Cursor 4} {2516974337 ps} 0} {{Cursor 5} {1235368386 ps} 0}
quietly wave cursor active 4
configure wave -namecolwidth 293
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
WaveRestoreZoom {1289811661 ps} {1649483597 ps}
