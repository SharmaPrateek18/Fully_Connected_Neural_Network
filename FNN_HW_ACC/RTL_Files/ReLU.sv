`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: ReLU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ReLU #(parameter dataWidth = 16, weightIntWidth = 1) 
(
    input           clk,
    input       [2*dataWidth-1:0] x,
    output logic   [dataWidth-1:0] out
);

always_ff @(posedge clk)
begin
    if($signed(x) >= 0)
        if(|x[2*dataWidth-1-:weightIntWidth])
            out <= {1'b0,{(dataWidth-1){1'b1}}}; //positive saturate
        else
            out <= x[2*dataWidth-weightIntWidth-1-:dataWidth];
    else
        out <= 0;
end

endmodule

