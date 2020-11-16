`timescale 1ns/1ns
module zero_extend(input [3:0]a, output [7:0]b);
  
  supply1 Vdd;
  supply0 Gnd;
  
  not not1(b[7],Vdd);
  not not2(b[6],Vdd);
  not not3(b[5],Vdd);
  not not4(b[4],Vdd);
  or or1(b[3],Gnd,a[3]);
  or or2(b[2],Gnd,a[2]);
  or or3(b[1],Gnd,a[1]);
  or or4(b[0],Gnd,a[0]);
  
endmodule