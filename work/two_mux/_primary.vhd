library verilog;
use verilog.vl_types.all;
entity two_mux is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        b               : in     vl_logic_vector(1 downto 0);
        s               : in     vl_logic;
        c               : out    vl_logic_vector(1 downto 0)
    );
end two_mux;
