library verilog;
use verilog.vl_types.all;
entity sync_fifo is
    generic(
        ADDR_WIDTH      : integer := 4;
        DATA_WIDTH      : integer := 16;
        DEPTH           : integer := 16;
        AEMPTY          : integer := 3;
        AFULL           : integer := 3
    );
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        flush           : in     vl_logic;
        read_req        : in     vl_logic;
        write_data      : in     vl_logic_vector;
        wdata_valid     : in     vl_logic;
        read_data       : out    vl_logic_vector;
        rdata_valid     : out    vl_logic;
        fifo_empty      : out    vl_logic;
        fifo_aempty     : out    vl_logic;
        fifo_full       : out    vl_logic;
        fifo_afull      : out    vl_logic;
        write_ack       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of AEMPTY : constant is 1;
    attribute mti_svvh_generic_type of AFULL : constant is 1;
end sync_fifo;
