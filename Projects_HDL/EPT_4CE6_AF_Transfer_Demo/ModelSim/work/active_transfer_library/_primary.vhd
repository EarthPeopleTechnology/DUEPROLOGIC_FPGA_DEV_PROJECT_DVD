library verilog;
use verilog.vl_types.all;
entity active_transfer_library is
    generic(
        IDLE            : integer := 0;
        ASSERT_RD_N     : integer := 1;
        WAIT_FOR_DE_ASSERT_RD_N: integer := 2;
        DE_ASSERT_RD_N  : integer := 3;
        DECODE_BYTE     : integer := 4;
        READ_CONTROL_BYTE: integer := 5;
        READ_DATA_BYTE  : integer := 6;
        WAIT_FIFO_READY : integer := 7;
        WRITE_CONTROL_BYTE: integer := 8;
        WRITE_CONTROL_COMPLETE: integer := 9;
        WRITE_DATA_BYTE : integer := 10;
        WRITE_DATA_COMPLETE: integer := 11;
        ASSERT_WR       : integer := 12;
        CHECK_TXE       : integer := 13;
        WAIT_FOR_WR_COMPLETION: integer := 14;
        DE_ASSERT_WR    : integer := 15
    );
    port(
        aa              : in     vl_logic_vector(1 downto 0);
        bc_in           : in     vl_logic_vector(1 downto 0);
        bc_out          : out    vl_logic_vector(2 downto 0);
        bd_inout        : inout  vl_logic_vector(7 downto 0);
        UC_IN           : out    vl_logic_vector(31 downto 0);
        UC_OUT          : in     vl_logic_vector(29 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_RD_N : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_DE_ASSERT_RD_N : constant is 1;
    attribute mti_svvh_generic_type of DE_ASSERT_RD_N : constant is 1;
    attribute mti_svvh_generic_type of DECODE_BYTE : constant is 1;
    attribute mti_svvh_generic_type of READ_CONTROL_BYTE : constant is 1;
    attribute mti_svvh_generic_type of READ_DATA_BYTE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FIFO_READY : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CONTROL_BYTE : constant is 1;
    attribute mti_svvh_generic_type of WRITE_CONTROL_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of WRITE_DATA_BYTE : constant is 1;
    attribute mti_svvh_generic_type of WRITE_DATA_COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of ASSERT_WR : constant is 1;
    attribute mti_svvh_generic_type of CHECK_TXE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_FOR_WR_COMPLETION : constant is 1;
    attribute mti_svvh_generic_type of DE_ASSERT_WR : constant is 1;
end active_transfer_library;
