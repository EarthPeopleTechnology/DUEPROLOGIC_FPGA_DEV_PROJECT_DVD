library verilog;
use verilog.vl_types.all;
entity read_control_logic is
    generic(
        ADDR_WIDTH      : integer := 4;
        AEMPTY          : integer := 3;
        DEPTH           : integer := 16
    );
    port(
        write_ptr       : in     vl_logic_vector;
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        flush           : in     vl_logic;
        read_req        : in     vl_logic;
        read_enable     : out    vl_logic;
        rdata_valid     : out    vl_logic;
        fifo_empty      : out    vl_logic;
        fifo_aempty     : out    vl_logic;
        read_ptr        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of AEMPTY : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
end read_control_logic;
