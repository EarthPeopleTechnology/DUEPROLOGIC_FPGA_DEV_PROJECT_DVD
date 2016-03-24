library verilog;
use verilog.vl_types.all;
entity i2c_receive is
    generic(
        IDLE            : integer := 0;
        I2C_START       : integer := 1;
        RECEIVE_DATA    : integer := 2;
        READ_DONE       : integer := 3;
        READ_DONE_DELAY : integer := 4;
        BIT_COUNT_IDLE  : integer := 0;
        BIT_COUNT_CLK_HI: integer := 1;
        BIT_COUNT_CLK_LOW: integer := 2;
        BIT_COUNT_INC_BYTE: integer := 3
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        DATA_IN         : in     vl_logic;
        SCLK            : in     vl_logic;
        DOUT            : out    vl_logic_vector(7 downto 0);
        DONE            : out    vl_logic;
        START           : in     vl_logic;
        PERFORM_READ    : out    vl_logic;
        TEST_BUS        : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of I2C_START : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_DATA : constant is 1;
    attribute mti_svvh_generic_type of READ_DONE : constant is 1;
    attribute mti_svvh_generic_type of READ_DONE_DELAY : constant is 1;
    attribute mti_svvh_generic_type of BIT_COUNT_IDLE : constant is 1;
    attribute mti_svvh_generic_type of BIT_COUNT_CLK_HI : constant is 1;
    attribute mti_svvh_generic_type of BIT_COUNT_CLK_LOW : constant is 1;
    attribute mti_svvh_generic_type of BIT_COUNT_INC_BYTE : constant is 1;
end i2c_receive;
