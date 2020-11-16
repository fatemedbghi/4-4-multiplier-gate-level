`timescale 1ns/1ns
module two_mux_8(input [7:0]a, input [7:0]b, input s, output [7:0]c);
  
  two_mux mux1(a[1:0], b[1:0], s, c[1:0]);
  two_mux mux2(a[3:2], b[3:2], s, c[3:2]);
  two_mux mux3(a[5:4], b[5:4], s, c[5:4]);
  two_mux mux4(a[7:6], b[7:6], s, c[7:6]);
  
endmodule
