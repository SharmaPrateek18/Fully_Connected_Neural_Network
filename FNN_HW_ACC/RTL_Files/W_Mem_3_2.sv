`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_2
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

module W_Mem_3_2 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1010100001001;
assign mem[1] =   16'b1111101011111000;
assign mem[2] =   16'b1001101111010;
assign mem[3] =   16'b1111001110100111;
assign mem[4] =   16'b10101000101000;
assign mem[5] =   16'b1100110111100100;
assign mem[6] =   16'b11001010011;
assign mem[7] =   16'b1101101000111010;
assign mem[8] =   16'b1111111001111001;
assign mem[9] =   16'b111110011100;
assign mem[10] =  16'b1111110010110100;
assign mem[11] =  16'b1111010110100000;
assign mem[12] =  16'b11110100000;
assign mem[13] =  16'b1101111000111000;
assign mem[14] =  16'b1111100111001011;
assign mem[15] =  16'b110110001101;
assign mem[16] =  16'b10101010110110;
assign mem[17] =  16'b1110001101010011;
assign mem[18] =  16'b1010110001100;
assign mem[19] =  16'b1110101001010101;
assign mem[20] =  16'b101000011011;
assign mem[21] =  16'b1111000000001101;
assign mem[22] =  16'b1111011110;
assign mem[23] =  16'b10111101001;
assign mem[24] =  16'b1011100100110;
assign mem[25] =  16'b1111110011001101;
assign mem[26] =  16'b1101001001000000;
assign mem[27] =  16'b10100000000011;
assign mem[28] =  16'b1110110100100111;
assign mem[29] =  16'b10011000;
        

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