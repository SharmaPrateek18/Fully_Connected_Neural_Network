`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: tb_FNN
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

//`include "include.sv"

`include "..\..\sources_1\new\include.sv"

`define MaxTestSamples 20

module tb_FNN(); 
logic clk;
logic reset;
logic [`dataWidth-1:0] expected;
integer i = 0;
integer t = 0;
integer right=0;
logic [`dataWidth-1:0] in_mem [784:0];
logic [7:0] fileName[23:0];

logic in_data_valid;
logic [`dataWidth-1:0] IN;

logic out_valid;
logic [31:0] OUT;

top_FNN uut( .clk(clk), .reset(reset), .IN(IN), .in_data_valid(in_data_valid), .out_valid(out_valid), .OUT(OUT));

initial 
begin
    clk = 0;
    forever #5 clk = ~clk;
end

function [7:0] to_ascii;
      input integer a;
      begin
        to_ascii = a+48;
      end
endfunction

task sendData();
    begin
        $readmemb(fileName, in_mem);
        @(posedge clk);
        for (t=0; t <784; t=t+1) begin
            @(posedge clk);
            IN <= in_mem[t];
            in_data_valid <= 1;
            
        end 
        @(posedge clk);
        in_data_valid <= 0;
        expected = in_mem[t];
    end
endtask

integer testDataCount;
integer testDataCount_int;

initial
    begin
        reset = 1;
        in_data_valid = 0;
        #100;
        reset = 0;
        #100

        for(testDataCount=0;testDataCount<`MaxTestSamples;testDataCount=testDataCount+1)
        begin
            testDataCount_int = testDataCount;
            fileName[0] = "t";
            fileName[1] = "x";
            fileName[2] = "t";
            fileName[3] = ".";
            fileName[4] = "0";
            fileName[5] = "0";
            fileName[6] = "0";
            fileName[7] = "0";
            i=0;
            while(testDataCount_int != 0)
            begin
                fileName[i+4] = to_ascii(testDataCount_int%10);
                testDataCount_int = testDataCount_int/10;
                i=i+1;
            end 
            fileName[8] = "_";
            fileName[9] = "a";
            fileName[10] = "t";
            fileName[11] = "a";
            fileName[12] = "d";
            fileName[13] = "_";
            fileName[14] = "t";
            fileName[15] = "s";
            fileName[16] = "e";
            fileName[17] = "t";
            sendData();
            @(posedge out_valid);
            if(OUT == expected)
                right = right+1;
            $display("%0d. Accuracy: %f, Detected number: %0x, Expected: %x",testDataCount+1,right*100.0/(testDataCount+1),OUT,expected);
        end
        $display("Accuracy: %f",right*100.0/testDataCount);
        $stop;
end
endmodule


