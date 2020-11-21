library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        start           : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        rst             : out    vl_logic;
        ld              : out    vl_logic;
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic
    );
end controller;
