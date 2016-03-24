library verilog;
use verilog.vl_types.all;
entity tb_ept_4ce6_top is
    generic(
        BEGIN_SECTION   : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        TRIGGER_IN_SECTION: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        TRANSFER_IN_SECTION: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        BLOCK_OUT_SECTION: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        WRITE_SECTION   : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        BLOCK_IN_SECTION: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        ARDUINO_WRITE_TO_FIFO: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        ARDUINO_ANALOG_MONITOR: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        LED_BLINKY      : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        BLOCK_COUNT_8   : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        BLOCK_COUNT_16  : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        BLOCK_COUNT_32  : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        BLOCK_COUNT_64  : vl_logic_vector(0 to 7) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        BLOCK_COUNT_128 : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BEGIN_SECTION : constant is 1;
    attribute mti_svvh_generic_type of TRIGGER_IN_SECTION : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_IN_SECTION : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_OUT_SECTION : constant is 1;
    attribute mti_svvh_generic_type of WRITE_SECTION : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_IN_SECTION : constant is 1;
    attribute mti_svvh_generic_type of ARDUINO_WRITE_TO_FIFO : constant is 1;
    attribute mti_svvh_generic_type of ARDUINO_ANALOG_MONITOR : constant is 1;
    attribute mti_svvh_generic_type of LED_BLINKY : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_COUNT_8 : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_COUNT_16 : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_COUNT_32 : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_COUNT_64 : constant is 1;
    attribute mti_svvh_generic_type of BLOCK_COUNT_128 : constant is 1;
end tb_ept_4ce6_top;
