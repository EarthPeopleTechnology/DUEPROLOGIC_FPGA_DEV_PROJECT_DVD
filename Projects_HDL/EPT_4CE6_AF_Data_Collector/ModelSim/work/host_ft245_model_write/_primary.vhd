library verilog;
use verilog.vl_types.all;
entity host_ft245_model_write is
    generic(
        IDLE            : integer := 0;
        WAIT_FOR_WR_ASSERT: integer := 1;
        ASSERT_TXE_N    : integer := 2;
        WAIT_FOR_CYCLE_END: integer := 3
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        HOST_FT245_TXE_N: out    vl_logic;
        HOST_FT245_WR   : in     vl_logic;
        HOST_FT245_WRITE_BYTE: in     vl_logic_vector(7 downto 0);
        TRANSMIT_BYTE   : out    vl_logic_vector(7 downto 0);
        START_WRITE_CYCLE: in     vl_logic;
        WRITE_CYCLE_COMPLETE: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_WR_ASSERT : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_TXE_N : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_CYCLE_END : constant is 1;
end host_ft245_model_write;
