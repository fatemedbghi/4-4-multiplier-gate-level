library verilog;
use verilog.vl_types.all;
entity zero_extend is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(7 downto 0)
    );
end zero_extend;
