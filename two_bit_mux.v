`timescale 1ns/1ns
module two_mux(input [1:0]a, input [1:0]b, input s, output [1:0]c);
  
  wire snot,i,j,k,l;
  
  not not1(snot,s);
  
  and and1(i,snot,b[0]);
  and and2(j,snot,b[1]);
  and and3(k,s,a[0]);
  and and4(l,s,a[1]);
  
  or or1(c[0],i,k);
  or or2(c[1],j,l);
  
endmodule