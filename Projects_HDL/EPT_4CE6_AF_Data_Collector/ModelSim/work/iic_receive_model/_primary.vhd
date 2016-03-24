library verilog;
use verilog.vl_types.all;
entity iic_receive_model is
    generic(
        log_width       : integer := 3
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        iic_data        : in     vl_logic;
        iic_clock       : out    vl_logic;
        receive_start   : in     vl_logic;
        data_out        : out    vl_logic_vector;
        valid_out       : out    vl_logic;
        active          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of log_width : constant is 1;
end iic_receive_model;
