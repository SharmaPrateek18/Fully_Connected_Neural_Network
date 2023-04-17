`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_24
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

module W_Mem_2_24 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1110100010001101;
assign mem[1] =   16'b1111111101111001;
assign mem[2] =   16'b1001011111001;
assign mem[3] =   16'b1111110;
assign mem[4] =   16'b1111111101010101;
assign mem[5] =   16'b10101001;
assign mem[6] =   16'b10000011010;
assign mem[7] =   16'b1111100011001111;
assign mem[8] =   16'b1111100010100001;
assign mem[9] =   16'b1010101111010;
assign mem[10] =  16'b1111011101010010;
assign mem[11] =  16'b1111100011000111;
assign mem[12] =  16'b1111111000001011;
assign mem[13] =  16'b1111011101100111;
assign mem[14] =  16'b111111011110;
assign mem[15] =  16'b10010110100;
assign mem[16] =  16'b1110110100011111;
assign mem[17] =  16'b1111101001010011;
assign mem[18] =  16'b1111101000010110;
assign mem[19] =  16'b10100;
assign mem[20] =  16'b1001111101010;
assign mem[21] =  16'b101000010000;
assign mem[22] =  16'b11100110001;
assign mem[23] =  16'b1001000001111;
assign mem[24] =  16'b11000001100;
assign mem[25] =  16'b1111010010100111;
assign mem[26] =  16'b1111111111101000;
assign mem[27] =  16'b101011100100;
assign mem[28] =  16'b1110101001;
assign mem[29] =  16'b1110101010100110;
        

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