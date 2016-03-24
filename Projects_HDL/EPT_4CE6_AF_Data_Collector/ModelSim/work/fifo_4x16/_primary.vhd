library verilog;
use verilog.vl_types.all;
entity fifo_4x16 is
    port(
        DIN             : in     vl_logic_vector(15 downto 0);
        WR_EN           : in     vl_logic;
        WR_CLK          : in     vl_logic;
        RD_EN           : in     vl_logic;
        RD_CLK          : in     vl_logic;
        AINIT           : in     vl_logic;
        DOUT            : out    vl_logic_vector(15 downto 0);
        FULL            : out    vl_logic;
        EMPTY           : out    vl_logic;
        WR_ERR          : out    vl_logic
    );
end fifo_4x16;
