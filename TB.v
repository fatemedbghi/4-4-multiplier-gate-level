`timescale 1ns/1ns
module TestBench();

  reg [3:0] a, b;
  reg start, clk, enable;
  wire [7:0] out;

  multiplier_4 mul(a, b, clk, enable, start, out);

  initial begin

    a = 4'b0111; //7
    b = 4'b1000; //8

    clk = 0; 
    start = 0; 
    enable = 0;

    #100 clk = 1; #100 clk = 0;
    enable = 1;
    #100 clk = 1; #100 clk = 0;
    enable = 0;
    #100 clk = 1; #100 clk = 0;
    start = 1;
    #100 clk = 1; #100 clk = 0;
    start = 0; 
    repeat(15) #100 clk = ~clk;

    a = 4'b0101; //5
    b = 4'b0101; //5
    start = 1; clk = 0;
    #100 clk = 1; #100 clk = 0;
    #10 start = 1;
    #100 clk = 1; #100 clk = 0;
    #10 start = 0;
    repeat(15) #100 clk = ~clk;
    
    a = 4'b0011; //3
    b = 4'b0000; //0
    start = 1; clk = 0;
    #100 clk = 1; #100 clk = 0;
    #10 start = 1;
    #100 clk = 1; #100 clk = 0;
    #10 start = 0;
    repeat(15) #100 clk = ~clk;
    
    a = 4'b0110; //6
    b = 4'b0100; //4
    start = 1; clk = 0;
    #100 clk = 1; #100 clk = 0;
    #10 start = 1;
    #100 clk = 1; #100 clk = 0;
    #10 start = 0;
    repeat(15) #100 clk = ~clk;
    
    a = 4'b0010; //2
    b = 4'b1111; //15
    start = 1; clk = 0;
    #100 clk = 1; #100 clk = 0;
    #10 start = 1;
    #100 clk = 1; #100 clk = 0;
    #10 start = 0;
    repeat(15) #100 clk = ~clk;
    
    a = 4'b1101; //13
    b = 4'b1011; //11
    start = 1; clk = 0;
    #100 clk = 1; #100 clk = 0;
    #10 start = 1;
    #100 clk = 1; #100 clk = 0;
    #10 start = 0;
    repeat(15) #100 clk = ~clk;

    #100 $stop;
  end

endmodule
