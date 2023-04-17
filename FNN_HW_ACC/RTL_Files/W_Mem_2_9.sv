`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_9
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

module W_Mem_2_9 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b11100111110;
assign mem[1] =   16'b1111011101010;
assign mem[2] =   16'b111100100101;
assign mem[3] =   16'b1110101010101101;
assign mem[4] =   16'b1111110101111010;
assign mem[5] =   16'b1111010111010111;
assign mem[6] =   16'b1010110001110;
assign mem[7] =   16'b1111001001101101;
assign mem[8] =   16'b100011001011;
assign mem[9] =   16'b11010000111;
assign mem[10] =  16'b1101101101011;
assign mem[11] =  16'b1111101101100110;
assign mem[12] =  16'b1111110101010000;
assign mem[13] =  16'b1111100110000000;
assign mem[14] =  16'b1111101000000010;
assign mem[15] =  16'b1001010000;
assign mem[16] =  16'b101111100110;
assign mem[17] =  16'b11101111110;
assign mem[18] =  16'b1111111111101110;
assign mem[19] =  16'b100011010101;
assign mem[20] =  16'b1111010110011011;
assign mem[21] =  16'b1101111111100000;
assign mem[22] =  16'b1111111111100111;
assign mem[23] =  16'b1011110100111;
assign mem[24] =  16'b10100101111;
assign mem[25] =  16'b10110111110;
assign mem[26] =  16'b1000100100000;
assign mem[27] =  16'b110101101000;
assign mem[28] =  16'b1111111011000110;
assign mem[29] =  16'b1110110111110110;
        

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