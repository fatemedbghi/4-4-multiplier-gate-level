library verilog;
use verilog.vl_types.all;
entity register_8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ld              : in     vl_logic;
        b               : out    vl_logic_vector(7 downto 0)
    );
end register_8;
