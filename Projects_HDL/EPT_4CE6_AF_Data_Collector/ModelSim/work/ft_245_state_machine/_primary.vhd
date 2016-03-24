library verilog;
use verilog.vl_types.all;
entity ft_245_state_machine is
    generic(
        IDLE            : integer := 0;
        ASSERT_RD_N     : integer := 1;
        WAIT_FOR_RD_COMPLETION: integer := 2;
        WAIT_FOR_DE_ASSERT_RD_N: integer := 3;
        DE_ASSERT_RD_N  : integer := 4;
        CHECK_TXE       : integer := 5;
        ASSERT_WR       : integer := 6;
        WAIT_FOR_WR_COMPLETION: integer := 7;
        DE_ASSERT_WR    : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        USB_RXF_N       : in     vl_logic;
        USB_TXE_N       : in     vl_logic;
        USB_RD_N        : out    vl_logic;
        USB_WR          : out    vl_logic;
        USB_TEST        : out    vl_logic;
        USB_REGISTER_DECODE: out    vl_logic_vector(7 downto 0);
        USB_DATA_IN     : in     vl_logic_vector(7 downto 0);
        USB_DATA_OUT    : out    vl_logic_vector(7 downto 0);
        DATA_BYTE_READY : out    vl_logic;
        RSB_INT_EN      : in     vl_logic;
        WRITE_EN        : in     vl_logic;
        WRITE_READY     : out    vl_logic;
        WRITE_BYTE      : in     vl_logic_vector(7 downto 0);
        WRITE_COMPLETE  : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_RD_N : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_RD_COMPLETION : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_DE_ASSERT_RD_N : constant is 1;
    attribute mti_svvh_generic_type of DE_ASSERT_RD_N : constant is 1;
    attribute mti_svvh_generic_type of CHECK_TXE : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_WR : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_WR_COMPLETION : constant is 1;
    attribute mti_svvh_generic_type of DE_ASSERT_WR : constant is 1;
end ft_245_state_machine;
