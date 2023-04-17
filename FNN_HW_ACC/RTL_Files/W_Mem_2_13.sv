`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_13
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

module W_Mem_2_13 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111110110101010;
assign mem[1] =   16'b10000111111100;
assign mem[2] =   16'b1111101000101000;
assign mem[3] =   16'b1111100100101111;
assign mem[4] =   16'b1110110111111011;
assign mem[5] =   16'b111100010110;
assign mem[6] =   16'b1111110111110001;
assign mem[7] =   16'b1111101011101010;
assign mem[8] =   16'b1111100111100000;
assign mem[9] =   16'b1111001100100100;
assign mem[10] =  16'b11001110;
assign mem[11] =  16'b1011101100010;
assign mem[12] =  16'b111010100111;
assign mem[13] =  16'b1111011100010111;
assign mem[14] =  16'b1111011110010101;
assign mem[15] =  16'b110001111001;
assign mem[16] =  16'b100000;
assign mem[17] =  16'b101000010000;
assign mem[18] =  16'b1110001110110010;
assign mem[19] =  16'b10001010111;
assign mem[20] =  16'b1000100011101;
assign mem[21] =  16'b1111110111110100;
assign mem[22] =  16'b1010001010001;
assign mem[23] =  16'b1010011000;
assign mem[24] =  16'b10000101111;
assign mem[25] =  16'b1110110101001110;
assign mem[26] =  16'b100110110011;
assign mem[27] =  16'b1110100100010001;
assign mem[28] =  16'b1111010110111010;
assign mem[29] =  16'b1000010001011;
        

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