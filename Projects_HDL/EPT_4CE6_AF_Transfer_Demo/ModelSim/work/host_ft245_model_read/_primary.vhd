library verilog;
use verilog.vl_types.all;
entity host_ft245_model_read is
    generic(
        IDLE            : integer := 0;
        ASSERT_RXF_N    : integer := 1;
        DELAY_RXF_N     : integer := 2;
        WAIT_FOR_CYCLE_END: integer := 3;
        READ_COMPLETE   : integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        HOST_FT245_RXF_N: out    vl_logic;
        HOST_FT245_RD_N : in     vl_logic;
        HOST_FT245_READ_BYTE: out    vl_logic_vector(7 downto 0);
        TRANSMIT_BYTE   : in     vl_logic_vector(7 downto 0);
        START_READ_CYCLE: in     vl_logic;
        READ_CYCLE_RDY  : out    vl_logic;
        READ_CYCLE_COMPLETE: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_RXF_N : constant is 1;
    attribute mti_svvh_generic_type of DELAY_RXF_N : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_CYCLE_END : constant is 1;
    attribute mti_svvh_generic_type of READ_COMPLETE : constant is 1;
end host_ft245_model_read;
