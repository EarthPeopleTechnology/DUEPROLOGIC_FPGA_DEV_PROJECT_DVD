library verilog;
use verilog.vl_types.all;
entity mem_array is
    generic(
        ADDR_WIDTH      : integer := 4;
        DEPTH           : integer := 16;
        DATA_WIDTH      : integer := 16
    );
    port(
        write_addr      : in     vl_logic_vector;
        read_addr       : in     vl_logic_vector;
        write_enable    : in     vl_logic;
        read_enable     : in     vl_logic;
        clk             : in     vl_logic;
        write_data      : in     vl_logic_vector;
        read_data       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end mem_array;
