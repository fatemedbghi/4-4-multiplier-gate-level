`timescale 1ns/1ns
module datapath(input[3:0]a, input[3:0]b,input rst,clk,ld1,ld2,s0,s1,s2, output reg[7:0]c);
  
  wire [3:0]a1,b1,m_out;
  wire [1:0]m_in1,m_in2;
  wire [7:0]sign_out,shift_out,mux_out,add_out;
  
  register_4 reg4_1(a, clk, rst, ld1, a1);
  two_mux mux1(a1[3:2], a1[1:0], s0, m_in1);
  register_4 reg4_2(b, clk, rst, ld1, b1);
  two_mux mux2(b1[3:2], b1[1:0], s2, m_in2);
  two_mult mult(m_in1, m_in2, m_out);
  zero_extend ext(m_out, sign_out);
  shift_left_8 shl(c, shift_out);
  two_mux_8 mux3(c, shift_out, s2, mux_out);
  adder add(sign_out, mux_out, add_out);
  register_8 reg8(add_out, clk, rst, ld2, c);
  
endmodule