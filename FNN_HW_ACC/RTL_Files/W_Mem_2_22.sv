`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_22
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

module W_Mem_2_22 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b11110010001;
assign mem[1] =   16'b1111110001011100;
assign mem[2] =   16'b1111101101101001;
assign mem[3] =   16'b1001011111;
assign mem[4] =   16'b1111011001101100;
assign mem[5] =   16'b111100101;
assign mem[6] =   16'b1111111110111000;
assign mem[7] =   16'b1111100100001100;
assign mem[8] =   16'b1111110101001010;
assign mem[9] =   16'b1111110101010110;
assign mem[10] =  16'b100010101011;
assign mem[11] =  16'b1011010001;
assign mem[12] =  16'b1111011110011111;
assign mem[13] =  16'b1111111110101111;
assign mem[14] =  16'b1111000111110110;
assign mem[15] =  16'b1111010101011000;
assign mem[16] =  16'b100100100;
assign mem[17] =  16'b10000011110;
assign mem[18] =  16'b100111100011;
assign mem[19] =  16'b1011010000;
assign mem[20] =  16'b1111001110001001;
assign mem[21] =  16'b1111110001010110;
assign mem[22] =  16'b11110111;
assign mem[23] =  16'b1111011001111010;
assign mem[24] =  16'b10010110011;
assign mem[25] =  16'b111101111;
assign mem[26] =  16'b1010011001;
assign mem[27] =  16'b1111100100101001;
assign mem[28] =  16'b10111000111;
assign mem[29] =  16'b1111100100100110;
        

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