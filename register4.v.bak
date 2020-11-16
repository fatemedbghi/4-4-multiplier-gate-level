`timescale 1ns/1ns
module register_4(input[3:0]a, input clk,rst,ld, output reg[3:0]b);
  always@(posedge clk , posedge rst) begin
    if (rst) b = 4'b0;
    else if (ld) b <= a;
  end
endmodule