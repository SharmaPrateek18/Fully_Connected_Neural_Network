`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_19
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

module W_Mem_2_19 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b11011100001;
assign mem[1] =   16'b111101010110;
assign mem[2] =   16'b1111000110010111;
assign mem[3] =   16'b1111011110011000;
assign mem[4] =   16'b11100011111;
assign mem[5] =   16'b1111001100001000;
assign mem[6] =   16'b1111101010010000;
assign mem[7] =   16'b11110000001;
assign mem[8] =   16'b111010010100;
assign mem[9] =   16'b1100100010;
assign mem[10] =  16'b100101111011;
assign mem[11] =  16'b111100111;
assign mem[12] =  16'b100010001110;
assign mem[13] =  16'b110111010110;
assign mem[14] =  16'b1111100001101111;
assign mem[15] =  16'b11010100;
assign mem[16] =  16'b110110110000;
assign mem[17] =  16'b1111110110100010;
assign mem[18] =  16'b1111101100100100;
assign mem[19] =  16'b1101001100;
assign mem[20] =  16'b1111110000110010;
assign mem[21] =  16'b1111000010011110;
assign mem[22] =  16'b1111100111110101;
assign mem[23] =  16'b1111011111110010;
assign mem[24] =  16'b1110111100000010;
assign mem[25] =  16'b11000111110;
assign mem[26] =  16'b1111110101100010;
assign mem[27] =  16'b1111100010001011;
assign mem[28] =  16'b1111000101010011;
assign mem[29] =  16'b1100010011101;
        

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