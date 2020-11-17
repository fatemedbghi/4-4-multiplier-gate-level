library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ld1             : in     vl_logic;
        ld2             : in     vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        c               : out    vl_logic_vector(7 downto 0)
    );
end datapath;
