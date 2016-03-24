library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        Q               : out    vl_logic;
        CONTROL         : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic
    );
end mux;
