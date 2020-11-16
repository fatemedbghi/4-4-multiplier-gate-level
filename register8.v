`timescale 1ns/1ns
module register_8(input[7:0]a, input clk,rst, output reg[7:0]b);
  always@(posedge clk , posedge rst) begin
    if (rst) b = 8'b0;
    else b <= a;
  end
endmodule