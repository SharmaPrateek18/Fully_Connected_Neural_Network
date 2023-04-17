`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_0
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

module W_Mem_3_0 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b100100011001;
assign mem[1] =   16'b10101111101;
assign mem[2] =   16'b1111010110010110;
assign mem[3] =   16'b1001011101001;
assign mem[4] =   16'b1111110110100001;
assign mem[5] =   16'b1110100101110111;
assign mem[6] =   16'b1111000010111101;
assign mem[7] =   16'b1111110110110100;
assign mem[8] =   16'b1110011001010101;
assign mem[9] =   16'b1110011101010110;
assign mem[10] =  16'b10010001100100;
assign mem[11] =  16'b100001011;
assign mem[12] =  16'b1110111011001100;
assign mem[13] =  16'b1000001001010;
assign mem[14] =  16'b1111110011110000;
assign mem[15] =  16'b1110100111110110;
assign mem[16] =  16'b10001111001;
assign mem[17] =  16'b1110101011011011;
assign mem[18] =  16'b1110111011000111;
assign mem[19] =  16'b1001001000100;
assign mem[20] =  16'b1111011010100010;
assign mem[21] =  16'b1001111011101;
assign mem[22] =  16'b1111010011000000;
assign mem[23] =  16'b1110010011010110;
assign mem[24] =  16'b10001001100;
assign mem[25] =  16'b1001110110101;
assign mem[26] =  16'b1100100110010;
assign mem[27] =  16'b11000001111;
assign mem[28] =  16'b1101011110;
assign mem[29] =  16'b1111110000110101;
        

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