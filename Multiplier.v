`timescale 1ns/1ns
module multiplier_4(input[3:0]a, input[3:0]b, input clk, enable, start, output [7:0]result);

    wire rst, ld, s0, s1, s2;

    datapath data_path(a, b, rst, clk, ld, s0, s1, s2, result);
    controller control(start, clk, enable, rst, ld, s0, s1, s2);

endmodule
