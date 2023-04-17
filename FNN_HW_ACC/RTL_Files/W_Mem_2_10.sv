`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_10
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

module W_Mem_2_10 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111000000101000;
assign mem[1] =   16'b100000111;
assign mem[2] =   16'b1111010011110010;
assign mem[3] =   16'b1111111011011010;
assign mem[4] =   16'b101000011010;
assign mem[5] =   16'b1111110000011010;
assign mem[6] =   16'b1111110001101101;
assign mem[7] =   16'b11110101;
assign mem[8] =   16'b1111011110011100;
assign mem[9] =   16'b1111100101011010;
assign mem[10] =  16'b1111011001100011;
assign mem[11] =  16'b1000010001000;
assign mem[12] =  16'b1011011000111;
assign mem[13] =  16'b101111100;
assign mem[14] =  16'b1111101011010100;
assign mem[15] =  16'b1100101111110;
assign mem[16] =  16'b110001001100;
assign mem[17] =  16'b1111101;
assign mem[18] =  16'b1110101111100110;
assign mem[19] =  16'b1111011011110010;
assign mem[20] =  16'b10000011001100;
assign mem[21] =  16'b11011100011;
assign mem[22] =  16'b1111100001011100;
assign mem[23] =  16'b1111100101101110;
assign mem[24] =  16'b1111110010101101;
assign mem[25] =  16'b1111001110101000;
assign mem[26] =  16'b1111111000101110;
assign mem[27] =  16'b1110100110000110;
assign mem[28] =  16'b1111000100111100;
assign mem[29] =  16'b1111100010111;
        

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