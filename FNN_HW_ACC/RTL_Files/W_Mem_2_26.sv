`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_26
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

module W_Mem_2_26 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b100011000111;
assign mem[1] =   16'b1110101100100001;
assign mem[2] =   16'b1110101010100000;
assign mem[3] =   16'b1011000011;
assign mem[4] =   16'b1111111001100010;
assign mem[5] =   16'b11111001011;
assign mem[6] =   16'b1110011100111000;
assign mem[7] =   16'b1110110101111;
assign mem[8] =   16'b1011011000011;
assign mem[9] =   16'b1011110111011;
assign mem[10] =  16'b1111011001011010;
assign mem[11] =  16'b110100111101;
assign mem[12] =  16'b1001110111;
assign mem[13] =  16'b101110101111;
assign mem[14] =  16'b1111111010010000;
assign mem[15] =  16'b11010111100;
assign mem[16] =  16'b1111010111110100;
assign mem[17] =  16'b1111000110101111;
assign mem[18] =  16'b10100101101;
assign mem[19] =  16'b101110001110;
assign mem[20] =  16'b1111101011110110;
assign mem[21] =  16'b1011110100000;
assign mem[22] =  16'b11000100;
assign mem[23] =  16'b1110000101010111;
assign mem[24] =  16'b1110100111111110;
assign mem[25] =  16'b1110010100110001;
assign mem[26] =  16'b1101010001100000;
assign mem[27] =  16'b11100100011;
assign mem[28] =  16'b111100001000;
assign mem[29] =  16'b1000100110;
        

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