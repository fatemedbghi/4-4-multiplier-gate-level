library verilog;
use verilog.vl_types.all;
entity register_1 is
    port(
        a               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ld              : in     vl_logic;
        b               : out    vl_logic
    );
end register_1;
