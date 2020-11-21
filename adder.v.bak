`timescale 1ns/1ns
module adder(input [7:0]a, input [7:0]b, output [7:0]s);
  
  supply0 Gnd;
  wire [7:0]co;
  adder_1 add1(a[0],b[0],Gnd,s[0],co[0]);
  adder_1 add2(a[1],b[1],co[0],s[1],co[1]);
  adder_1 add3(a[2],b[2],co[1],s[2],co[2]);
  adder_1 add4(a[3],b[3],co[2],s[3],co[3]);
  adder_1 add5(a[4],b[4],co[3],s[4],co[4]);
  adder_1 add6(a[5],b[5],co[4],s[5],co[5]);
  adder_1 add7(a[6],b[6],co[5],s[6],co[6]);
  adder_1 add8(a[7],b[7],co[6],s[7],co[7]);
  
endmodule