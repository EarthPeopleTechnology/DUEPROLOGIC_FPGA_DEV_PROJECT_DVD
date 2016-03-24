library verilog;
use verilog.vl_types.all;
entity host_ft245_model is
    generic(
        IDLE            : integer := 0;
        READ_CYCLE_START: integer := 1;
        READ_CYCLE_COMPLETE: integer := 2;
        WRITE_CYCLE_START: integer := 3;
        WRITE_CYCLE_COMPLETE: integer := 4;
        READ_STATUS_BYTE: integer := 5
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        HOST_FT245_RXF_N: out    vl_logic;
        HOST_FT245_TXE_N: out    vl_logic;
        HOST_FT245_RD_N : in     vl_logic;
        HOST_FT245_WR   : in     vl_logic;
        HOST_FT245_RESET_N: in     vl_logic;
        HOST_FT245_PWREN_N: out    vl_logic;
        HOST_FT245_TEST : in     vl_logic;
        HOST_FT245_DATA : inout  vl_logic_vector(7 downto 0);
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        DATA_OUT        : out    vl_logic_vector(7 downto 0);
        READ_FT_245     : in     vl_logic;
        WRITE_FT_245    : in     vl_logic;
        READ_FT_STATUS  : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of READ_CYCLE_START : constant is 1;
    attribute mti_svvh_generic_type of READ_CYCLE_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CYCLE_START : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CYCLE_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of READ_STATUS_BYTE : constant is 1;
end host_ft245_model;
