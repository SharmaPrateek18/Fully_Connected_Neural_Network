`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: maxFinder
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
`include "include.sv"

module maxFinder #(parameter numInput = `numNeuronLayer4,
                             inputWidth = `dataWidth)
                             
                  (
                  input           i_clk,
                  input [(numInput*inputWidth)-1:0]   i_data,
                  input           i_valid,
                  output logic [31:0] o_data,
                  output  logic     o_data_valid
                  );

logic [inputWidth-1:0] maxValue;
logic [(numInput*inputWidth)-1:0] inDataBuffer;
integer counter;

always_ff @(posedge i_clk)
begin
    o_data_valid <= 1'b0;
    if(i_valid)
    begin
        maxValue <= i_data[inputWidth-1:0];
        counter <= 1;
        inDataBuffer <= i_data;
        o_data <= 0;
    end
    else if(counter == numInput)
    begin
        counter <= 0;
        o_data_valid <= 1'b1;
    end
    else if(counter != 0)
    begin
        counter <= counter + 1;
        if(inDataBuffer[counter*inputWidth+:inputWidth] > maxValue)
        begin
            maxValue <= inDataBuffer[counter*inputWidth+:inputWidth];
            o_data <= counter;
        end
    end
end

endmodule
