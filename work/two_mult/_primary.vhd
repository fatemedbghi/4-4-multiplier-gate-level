library verilog;
use verilog.vl_types.all;
entity two_mult is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        c               : out    vl_logic_vector(3 downto 0)
    );
end two_mult;
