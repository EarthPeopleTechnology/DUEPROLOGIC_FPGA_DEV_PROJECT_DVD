library verilog;
use verilog.vl_types.all;
entity flipflop is
    port(
        Q               : out    vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        D               : in     vl_logic
    );
end flipflop;
