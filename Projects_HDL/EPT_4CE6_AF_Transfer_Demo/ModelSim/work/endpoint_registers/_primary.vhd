library verilog;
use verilog.vl_types.all;
entity endpoint_registers is
    generic(
        IDLE            : integer := 0;
        DECODE_BYTE     : integer := 1;
        READ_CONTROL_BYTE: integer := 2;
        READ_DATA_BYTE  : integer := 3;
        WAIT_FIFO_READY : integer := 4;
        WRITE_CONTROL_BYTE: integer := 6;
        WRITE_CONTROL_BYTE_DELAY: integer := 7;
        WRITE_CONTROL_COMPLETE: integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        ENDPOINT_DECODE : in     vl_logic_vector(7 downto 0);
        DATA_BYTE_READY : in     vl_logic;
        ENDPOINT_EN     : out    vl_logic;
        WRITE_EN        : out    vl_logic;
        WRITE_READY     : in     vl_logic;
        WRITE_BYTE      : out    vl_logic_vector(7 downto 0);
        WRITE_COMPLETE  : in     vl_logic;
        UC_IN           : out    vl_logic_vector(23 downto 0);
        UC_OUT          : in     vl_logic_vector(21 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of DECODE_BYTE : constant is 1;
    attribute mti_svvh_generic_type of READ_CONTROL_BYTE : constant is 1;
    attribute mti_svvh_generic_type of READ_DATA_BYTE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FIFO_READY : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CONTROL_BYTE : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CONTROL_BYTE_DELAY : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CONTROL_COMPLETE : constant is 1;
end endpoint_registers;
