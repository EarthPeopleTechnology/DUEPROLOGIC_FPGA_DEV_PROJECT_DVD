library verilog;
use verilog.vl_types.all;
entity active_trigger is
    generic(
        TO_TRIGUPDATE_COUNT: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1)
    );
    port(
        uc_clk          : in     vl_logic;
        uc_reset        : in     vl_logic;
        uc_in           : in     vl_logic_vector(31 downto 0);
        uc_out          : out    vl_logic_vector(29 downto 0);
        trigger_to_host : in     vl_logic_vector(7 downto 0);
        trigger_to_device: out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TO_TRIGUPDATE_COUNT : constant is 1;
end active_trigger;
