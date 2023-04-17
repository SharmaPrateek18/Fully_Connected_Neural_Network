`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_29
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

module W_Mem_2_29 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111011011001001;
assign mem[1] =   16'b1111001101111010;
assign mem[2] =   16'b10111000110;
assign mem[3] =   16'b1111111010110010;
assign mem[4] =   16'b1111001111001101;
assign mem[5] =   16'b1000100101111;
assign mem[6] =   16'b1111101000000111;
assign mem[7] =   16'b1111110001100000;
assign mem[8] =   16'b1111110010010100;
assign mem[9] =   16'b100010001100;
assign mem[10] =  16'b1111110010001111;
assign mem[11] =  16'b11000101011;
assign mem[12] =  16'b10001010000;
assign mem[13] =  16'b110110;
assign mem[14] =  16'b1111110001001001;
assign mem[15] =  16'b1000110000;
assign mem[16] =  16'b1111001100100111;
assign mem[17] =  16'b1111110001110101;
assign mem[18] =  16'b1111110111011011;
assign mem[19] =  16'b101000100111;
assign mem[20] =  16'b10011001011;
assign mem[21] =  16'b100000011000;
assign mem[22] =  16'b111011;
assign mem[23] =  16'b1111100110010111;
assign mem[24] =  16'b1111111111000001;
assign mem[25] =  16'b1111101110000011;
assign mem[26] =  16'b1111001011110010;
assign mem[27] =  16'b1111011101011000;
assign mem[28] =  16'b101110110010;
assign mem[29] =  16'b1111100010011011;
        

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