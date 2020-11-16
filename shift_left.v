`timescale 1ns/1ns
module shift_left_8(input [7:0]a, output [7:0]b);
  
  supply1 Vdd;
  supply0 Gnd;
  
  or or1(b[7],Gnd,a[5]);
  or or2(b[6],Gnd,a[4]);
  or or3(b[5],Gnd,a[3]);
  or or4(b[4],Gnd,a[2]);
  or or5(b[3],Gnd,a[1]);
  or or6(b[2],Gnd,a[0]);
  not not1(b[1],Vdd);
  not not2(b[0],Vdd);
  
endmodule
