`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_15
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

module W_Mem_2_15 #(parameter numWeight =30,
                             addressWidth = $clog2(numWeight), 
                             dataWidth = 16)
                             
                      ( 
                      input clk,
                      input wen,
                      input ren,
                      input [addressWidth-1:0] wadd,
                      input [addressWidth-1:0] radd,
                      input [dataWidth-1:0] win,
                      output logic [dataWidth-1:0] wout
                      );
        
    logic [dataWidth-1:0] mem [numWeight-1:0];
    
assign mem[0] =   16'b1111110011010111;
assign mem[1] =   16'b111001;
assign mem[2] =   16'b110000111111;
assign mem[3] =   16'b10100000101;
assign mem[4] =   16'b1111001110100011;
assign mem[5] =   16'b100000100110;
assign mem[6] =   16'b1111011101010010;
assign mem[7] =   16'b1111000101100110;
assign mem[8] =   16'b1111011001111111;
assign mem[9] =   16'b1111000100110010;
assign mem[10] =  16'b1100001101;
assign mem[11] =  16'b1111101010100001;
assign mem[12] =  16'b11000000001;
assign mem[13] =  16'b101100100011;
assign mem[14] =  16'b100110;
assign mem[15] =  16'b1111010101011011;
assign mem[16] =  16'b1111101101101101;
assign mem[17] =  16'b1111100111010110;
assign mem[18] =  16'b1111100;
assign mem[19] =  16'b11100100;
assign mem[20] =  16'b1110011010011101;
assign mem[21] =  16'b1111111101111110;
assign mem[22] =  16'b10010010;
assign mem[23] =  16'b1000011100011;
assign mem[24] =  16'b1111101000011000;
assign mem[25] =  16'b1000000010010;
assign mem[26] =  16'b1001111111001;
assign mem[27] =  16'b1111100010011010;
assign mem[28] =  16'b1010111100;
assign mem[29] =  16'b1000101;
        

//		always_ff @(posedge clk)
//		begin
//			if (wen)
//			begin
//				mem[wadd] <= win;
//			end
			
//			else
//			begin
//			 //Do Nothing
//            end
//		end 

    
        always_ff @(posedge clk)
        begin
            if (ren)
            begin
                wout <= mem[radd];
            end
            
            else
            begin
             //Do Nothing
            end
        end 
endmodule