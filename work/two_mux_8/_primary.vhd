library verilog;
use verilog.vl_types.all;
entity two_mux_8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic;
        c               : out    vl_logic_vector(7 downto 0)
    );
end two_mux_8;
