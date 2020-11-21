`timescale 1ns/1ns
module two_mult(input [1:0]a ,input [1:0]b , output [3:0]c);
  
  wire a0,a1,b0,b1,i,j,k,l,m,n;
  
  and and1(c[0],a[0],b[0]);
  
  not inv1(a0, a[0]);
  not inv2(a1, a[1]);
  not inv3(b0, b[0]);
  not inv4(b1, b[1]);
  and and2(i, a[1],b1,b[0]);
  and and3(j, a1,a[0],b[1]);
  and and4(k, a[0],b[1],b0);
  and and5(l, a[1],a0,b[0]);
  or or1(c[1],i,j,k,l);
  
  and and6(m,a[1],a0,b[1]);
  and and7(n,a[1],b[1],b0);
  or or2(c[2],m,n);
  
  and and8(c[3],a[0],a[1],b[0],b[1]);
  
endmodule