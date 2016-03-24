set ALTERA C:/Altera 
set SRC C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/src/EPT_4CE6_AF_D1_Top.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/src/lfsr.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/src/mux.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/src/flipflop.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/sim/active_control_register.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/sim/active_transfer_library.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/sim/eptWireOR.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/sim/active_trigger.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/sim/active_transfer.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/sim/active_block.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/test/host_ft245_model.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/test/host_ft245_model_read.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/test/host_ft245_model_write.v}
vlog +define+SIM -reportprogress 300 -work work {C:/EPT/Code_FPGA/EPT_Active_Transfer_Simulation/EPT_4CE6_AF_Active_Transfer/Testbench/tb_ept_4ce6_top.v}
vsim +maxdelays work.tb_ept_4ce6_top
do wave_ept_4ce6_top.do
run -all
