library verilog;
use verilog.vl_types.all;
entity serial_iic_comms_model is
    generic(
        IDLE            : integer := 0;
        I2C_START       : integer := 1;
        RECEIVE_WORD    : integer := 2;
        STORE_DATA_WORD : integer := 3;
        CHECK_FOR_LAST_WORD: integer := 4;
        READ_WORD_DELAY : integer := 5;
        RECEIVE_CHECK_ACK: integer := 6;
        WRITE_TO_I2C_BUS: integer := 7;
        RECEIVE_TRANSMIT_MUX: integer := 8;
        CHECK_FOR_TRANSMIT_WORD: integer := 9;
        CHECK_FOR_TRANSMIT_WORD_DELAY: integer := 10;
        ADDRESS_WORD    : integer := 11;
        ADDRESS_WORD_DELAY: integer := 12;
        WRITE_OUTGOING_MESSAGE: integer := 13;
        WAIT_FOR_WRITE_CYCLE_COMPLETE: integer := 14;
        WRITE_CYCLE_COMPLETE: integer := 15;
        TRANSMIT_CHECK_ACK: integer := 16;
        I2C_STOP        : integer := 17
    );
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        SERIAL_CLK      : in     vl_logic;
        IIC_DATA        : inout  vl_logic;
        IIC_CLOCK       : out    vl_logic;
        SERIAL_IIC_TRANSMIT_DATA_IN: in     vl_logic_vector(7 downto 0);
        SERIAL_IIC_TRANSMIT_ENA_OUT: out    vl_logic;
        SERIAL_IIC_TRANSMIT_RDY_IN: in     vl_logic;
        SERIAL_IIC_TRANSMIT_WORD_COUNT_IN: in     vl_logic_vector(7 downto 0);
        SERIAL_IIC_TRANSMIT_ADDRESS_IN: in     vl_logic_vector(7 downto 0);
        SERIAL_I2C_RECEIVE_REQUEST: in     vl_logic;
        SERIAL_IIC_RECEIVE_DATA_OUT: out    vl_logic_vector(7 downto 0);
        SERIAL_IIC_RECEIVE_ENA_IN: in     vl_logic;
        SERIAL_IIC_RECEIVE_RDY_OUT: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of I2C_START : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_WORD : constant is 1;
    attribute mti_svvh_generic_type of STORE_DATA_WORD : constant is 1;
    attribute mti_svvh_generic_type of CHECK_FOR_LAST_WORD : constant is 1;
    attribute mti_svvh_generic_type of READ_WORD_DELAY : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_CHECK_ACK : constant is 1;
    attribute mti_svvh_generic_type of WRITE_TO_I2C_BUS : constant is 1;
    attribute mti_svvh_generic_type of RECEIVE_TRANSMIT_MUX : constant is 1;
    attribute mti_svvh_generic_type of CHECK_FOR_TRANSMIT_WORD : constant is 1;
    attribute mti_svvh_generic_type of CHECK_FOR_TRANSMIT_WORD_DELAY : constant is 1;
    attribute mti_svvh_generic_type of ADDRESS_WORD : constant is 1;
    attribute mti_svvh_generic_type of ADDRESS_WORD_DELAY : constant is 1;
    attribute mti_svvh_generic_type of WRITE_OUTGOING_MESSAGE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_WRITE_CYCLE_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CYCLE_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of TRANSMIT_CHECK_ACK : constant is 1;
    attribute mti_svvh_generic_type of I2C_STOP : constant is 1;
end serial_iic_comms_model;
