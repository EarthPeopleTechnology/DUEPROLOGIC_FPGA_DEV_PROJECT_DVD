library verilog;
use verilog.vl_types.all;
entity sensor_feedback_model is
    generic(
        IDLE            : integer := 0;
        ASSERT_ENA_IN   : integer := 1;
        READ_DATA       : integer := 2;
        DE_ASSERT_ENA_IN: integer := 3;
        ASSERT_RDY_IN   : integer := 4;
        TRANSMIT_DATA   : integer := 5;
        DE_ASSERT_RDY_IN: integer := 6
    );
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        SERIAL_CLK      : in     vl_logic;
        DATA            : inout  vl_logic;
        CLOCK           : out    vl_logic;
        CONTROL_REGISTER: out    vl_logic_vector(7 downto 0);
        STATUS_REGISTER : in     vl_logic_vector(7 downto 0);
        RECEIVE_REGISTER: out    vl_logic_vector(7 downto 0);
        SEND_REGISTER   : in     vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_ENA_IN : constant is 1;
    attribute mti_svvh_generic_type of READ_DATA : constant is 1;
    attribute mti_svvh_generic_type of DE_ASSERT_ENA_IN : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_RDY_IN : constant is 1;
    attribute mti_svvh_generic_type of TRANSMIT_DATA : constant is 1;
    attribute mti_svvh_generic_type of DE_ASSERT_RDY_IN : constant is 1;
end sensor_feedback_model;
