`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_5
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

module W_Mem_2_5 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1100111101011;
assign mem[1] =   16'b1111110010101110;
assign mem[2] =   16'b1111111010111100;
assign mem[3] =   16'b111001110100;
assign mem[4] =   16'b10110010010;
assign mem[5] =   16'b1111001101010011;
assign mem[6] =   16'b1110111110110000;
assign mem[7] =   16'b1111111110100100;
assign mem[8] =   16'b101100010011;
assign mem[9] =   16'b1110111100010101;
assign mem[10] =  16'b11011000101;
assign mem[11] =  16'b1111100000010110;
assign mem[12] =  16'b1110000001111101;
assign mem[13] =  16'b111101101010;
assign mem[14] =  16'b1001010111000;
assign mem[15] =  16'b1110001000111011;
assign mem[16] =  16'b10110010000;
assign mem[17] =  16'b1110101000111011;
assign mem[18] =  16'b10101101011;
assign mem[19] =  16'b101011000111;
assign mem[20] =  16'b1100111001000101;
assign mem[21] =  16'b1111101010001000;
assign mem[22] =  16'b11111110010;
assign mem[23] =  16'b1011010;
assign mem[24] =  16'b10111110011;
assign mem[25] =  16'b10001110101010;
assign mem[26] =  16'b1001001001100;
assign mem[27] =  16'b111011010110;
assign mem[28] =  16'b1111001111110010;
assign mem[29] =  16'b1111111011101111;
        

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