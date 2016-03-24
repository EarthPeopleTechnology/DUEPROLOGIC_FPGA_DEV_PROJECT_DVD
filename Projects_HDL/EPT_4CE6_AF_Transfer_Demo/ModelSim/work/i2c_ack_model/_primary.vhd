library verilog;
use verilog.vl_types.all;
entity i2c_ack_model is
    generic(
        IDLE            : integer := 0;
        RECEIVE_ACK     : integer := 1;
        RECEIVE_ACK_LO  : integer := 2;
        RECEIVE_ACK_HI  : integer := 3;
        READ_ACK        : integer := 4;
        RECEIVE_ACK_COMPLETE: integer := 5;
        SEND_ACK        : integer := 6;
        WRITE_ACK       : integer := 7;
        SEND_ACK_LO     : integer := 8;
        SEND_ACK_HI     : integer := 9;
        SEND_ACK_COMPLETE: integer := 10;
        SEND_ACK_DELAY  : integer := 11
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        GNT_START       : in     vl_logic;
        REQ_START       : in     vl_logic;
        VALID_SEND      : out    vl_logic;
        VALID_RECEIVE   : out    vl_logic;
        DATA_IN         : in     vl_logic;
        DOUT            : out    vl_logic;
        DATA_OUT        : out    vl_logic;
        DONE            : out    vl_logic;
        SCLK            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK_LO : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK_HI : constant is 1;
    attribute mti_svvh_generic_type of READ_ACK : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_ACK_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK : constant is 1;
    attribute mti_svvh_generic_type of WRITE_ACK : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_LO : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_HI : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACK_DELAY : constant is 1;
end i2c_ack_model;
