`timescale 1ns/1ns
module register_8(input[7:0]a, input clk,rst,ld, output [7:0]b);
  register_1 reg1(a[7],clk,rst,ld,b[7]);
  register_1 reg2(a[6],clk,rst,ld,b[6]);
  register_1 reg3(a[5],clk,rst,ld,b[5]);
  register_1 reg4(a[4],clk,rst,ld,b[4]);
  register_1 reg5(a[3],clk,rst,ld,b[3]);
  register_1 reg6(a[2],clk,rst,ld,b[2]);
  register_1 reg7(a[1],clk,rst,ld,b[1]);
  register_1 reg8(a[0],clk,rst,ld,b[0]);
endmodule