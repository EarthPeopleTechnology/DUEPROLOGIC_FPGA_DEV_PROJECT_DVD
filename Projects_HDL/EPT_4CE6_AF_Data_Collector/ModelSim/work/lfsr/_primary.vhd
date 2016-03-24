library verilog;
use verilog.vl_types.all;
entity lfsr is
    port(
        Q               : out    vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        SEED            : in     vl_logic_vector(3 downto 0);
        LOAD            : in     vl_logic
    );
end lfsr;
