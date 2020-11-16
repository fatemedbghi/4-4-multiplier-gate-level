library verilog;
use verilog.vl_types.all;
entity shift_left_8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : out    vl_logic_vector(7 downto 0)
    );
end shift_left_8;
