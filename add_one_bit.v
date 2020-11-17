`timescale 1ns/1ns
module adder_1(input a,b,ci, output s,co);
  wire i,j,k;
  xor xor1(i,a,b);
  xor xor2(s,i,ci);
  and and1(j,a,b);
  and and2(k,i,ci);
  or or1(co,j,k);
endmodule