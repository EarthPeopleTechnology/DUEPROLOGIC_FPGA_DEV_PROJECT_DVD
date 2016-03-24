library verilog;
use verilog.vl_types.all;
entity i2c_ack is
    generic(
        IDLE            : integer := 0;
        RECEIVE_ACK     : integer := 1;
        READ_ACK        : integer := 2;
        RECEIVE_ACK_DELAY: integer := 3;
        RECEIVE_ACK_COMPLETE: integer := 4;
        SEND_ACK        : integer := 5;
        WRITE_ACK       : integer := 6;
        SEND_ACK_COMPLETE: integer := 7;
        SEND_ACK_DELAY  : integer := 8;
        SEND_ACK_DELAY_COUNT: vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        SEND_ACK_COMPLETE_COUNT: vl_logic_vector(0 to 15) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        GNT_START       : in     vl_logic;
        REQ_START       : in     vl_logic;
        RECEIVE_UNIT_DONE: in     vl_logic;
        TRANSMIT_UNIT_DONE: in     vl_logic;
        VALID_SEND      : out    vl_logic;
        VALID_RECEIVE   : out    vl_logic;
        DATA_IN         : in     vl_logic;
        DOUT            : out    vl_logic;
        DATA_OUT        : out    vl_logic;
        DONE            : out    vl_logic;
        SCLK            : in     vl_logic;
        I2C_STOP        : in     vl_logic;
        TEST_BUS_OUT    : out    vl_logic_vector(3 downto 0);
        STATE_OUT       : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK : constant is 1;
    attribute mti_svvh_generic_type of READ_ACK : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK_DELAY : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK : constant is 1;
    attribute mti_svvh_generic_type of WRITE_ACK : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_DELAY : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_DELAY_COUNT : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_COMPLETE_COUNT : constant is 1;
end i2c_ack;
