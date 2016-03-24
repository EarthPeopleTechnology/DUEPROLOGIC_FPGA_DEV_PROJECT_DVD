library verilog;
use verilog.vl_types.all;
entity active_transfer is
    generic(
        IN_IDLE         : integer := 0;
        IN_READ_CMD     : integer := 1;
        IN_READ_BYTE    : integer := 2;
        IN_DELAY        : integer := 3
    );
    port(
        uc_clk          : in     vl_logic;
        uc_reset        : in     vl_logic;
        uc_in           : in     vl_logic_vector(31 downto 0);
        uc_out          : out    vl_logic_vector(29 downto 0);
        start_transfer  : in     vl_logic;
        transfer_received: out    vl_logic;
        transfer_busy   : out    vl_logic;
        uc_addr         : in     vl_logic_vector(2 downto 0);
        transfer_to_host: in     vl_logic_vector(7 downto 0);
        transfer_to_device: out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IN_IDLE : constant is 1;
    attribute mti_svvh_generic_type of IN_READ_CMD : constant is 1;
    attribute mti_svvh_generic_type of IN_READ_BYTE : constant is 1;
    attribute mti_svvh_generic_type of IN_DELAY : constant is 1;
end active_transfer;
