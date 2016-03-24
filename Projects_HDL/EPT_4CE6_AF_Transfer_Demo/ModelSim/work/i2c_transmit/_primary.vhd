library verilog;
use verilog.vl_types.all;
entity i2c_transmit is
    generic(
        log_width       : integer := 3;
        IDLE            : integer := 0;
        READ_DATA_IN    : integer := 1;
        INITIATE_IIC_START: integer := 2;
        LOAD_SHIFT_REG  : integer := 3;
        SHIFT_BIT_OUT   : integer := 4;
        CHECK_FOR_END_OF_WORD: integer := 5
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        iic_data        : out    vl_logic;
        iic_clock       : in     vl_logic;
        transmit_complete: out    vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        data_valid      : in     vl_logic;
        active          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of log_width : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of READ_DATA_IN : constant is 1;
    attribute mti_svvh_generic_type of INITIATE_IIC_START : constant is 1;
    attribute mti_svvh_generic_type of LOAD_SHIFT_REG : constant is 1;
    attribute mti_svvh_generic_type of SHIFT_BIT_OUT : constant is 1;
    attribute mti_svvh_generic_type of CHECK_FOR_END_OF_WORD : constant is 1;
end i2c_transmit;
