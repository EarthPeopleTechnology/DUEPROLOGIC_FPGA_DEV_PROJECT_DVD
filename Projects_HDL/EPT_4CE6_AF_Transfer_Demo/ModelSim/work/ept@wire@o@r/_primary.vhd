library verilog;
use verilog.vl_types.all;
entity eptWireOR is
    generic(
        N               : integer := 1
    );
    port(
        uc_out          : out    vl_logic_vector(29 downto 0);
        uc_out_m        : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end eptWireOR;
