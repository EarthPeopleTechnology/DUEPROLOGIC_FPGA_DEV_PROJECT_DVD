library verilog;
use verilog.vl_types.all;
entity active_control_register is
    generic(
        TRANSFER_CONTROL_BYTE1: vl_logic_vector(0 to 7) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        TRANSFER_CONTROL_BYTE2: vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        TRANSFER_CONTROL_BYTE3: vl_logic_vector(0 to 7) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0);
        TRANSFER_CONTROL_IDLE: integer := 0;
        TRANSFER_CONTROL_HDR1: integer := 1;
        TRANSFER_CONTROL_HDR2: integer := 2;
        TRANSFER_DECODE_BYTE: integer := 3;
        TRANSFER_CONTROL_SET: integer := 4
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        TRANSFER_IN_RECEIVED: in     vl_logic;
        TRANSFER_IN_BYTE: in     vl_logic_vector(7 downto 0);
        CONTROL_REGISTER: out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_BYTE1 : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_BYTE2 : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_BYTE3 : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_IDLE : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_HDR1 : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_HDR2 : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_DECODE_BYTE : constant is 1;
    attribute mti_svvh_generic_type of TRANSFER_CONTROL_SET : constant is 1;
end active_control_register;
