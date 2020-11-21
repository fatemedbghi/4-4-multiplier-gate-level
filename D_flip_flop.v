`timescale 1ns/1ns
module D_flip_flop(input D, clk, rst, output reg Q);

    always @(posedge clk, posedge rst) begin
        if(rst) Q <= 1'b0;
        else Q <= D; 
    end 

endmodule