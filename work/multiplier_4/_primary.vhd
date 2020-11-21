library verilog;
use verilog.vl_types.all;
entity multiplier_4 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        start           : in     vl_logic;
        result          : out    vl_logic_vector(7 downto 0)
    );
end multiplier_4;
