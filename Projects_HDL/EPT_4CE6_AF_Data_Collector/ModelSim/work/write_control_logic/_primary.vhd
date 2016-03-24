library verilog;
use verilog.vl_types.all;
entity write_control_logic is
    generic(
        ADDR_WIDTH      : integer := 4;
        AFULL           : integer := 3;
        DEPTH           : integer := 16
    );
    port(
        read_ptr        : in     vl_logic_vector;
        wdata_valid     : in     vl_logic;
        flush           : in     vl_logic;
        reset_n         : in     vl_logic;
        clk             : in     vl_logic;
        write_ack       : out    vl_logic;
        write_enable    : out    vl_logic;
        write_ptr       : out    vl_logic_vector;
        fifo_full       : out    vl_logic;
        fifo_afull      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of AFULL : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end write_control_logic;
