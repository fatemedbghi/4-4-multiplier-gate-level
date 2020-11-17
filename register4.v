`timescale 1ns/1ns
module register_4(input[3:0]a, input clk,rst,ld, output [3:0]b);
  register_1 reg1(a[3],clk,rst,ld,b[3]);
  register_1 reg2(a[2],clk,rst,ld,b[2]);
  register_1 reg3(a[1],clk,rst,ld,b[1]);
  register_1 reg4(a[0],clk,rst,ld,b[0]);
endmodule