`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_23
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

module W_Mem_2_23 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b100110000001;
assign mem[1] =   16'b11100001010;
assign mem[2] =   16'b100111001001;
assign mem[3] =   16'b1110111001011111;
assign mem[4] =   16'b1111011011011000;
assign mem[5] =   16'b111110111000;
assign mem[6] =   16'b1111011011011010;
assign mem[7] =   16'b1111011110100001;
assign mem[8] =   16'b11011010110;
assign mem[9] =   16'b1110111100110;
assign mem[10] =  16'b100100000111;
assign mem[11] =  16'b1010100101;
assign mem[12] =  16'b101011010101;
assign mem[13] =  16'b1010111011000;
assign mem[14] =  16'b1111110110110101;
assign mem[15] =  16'b1111101100011111;
assign mem[16] =  16'b1111100000101101;
assign mem[17] =  16'b1111001001010011;
assign mem[18] =  16'b1000110010100;
assign mem[19] =  16'b1100111100111;
assign mem[20] =  16'b1110111000111111;
assign mem[21] =  16'b1111001111110001;
assign mem[22] =  16'b101101011001;
assign mem[23] =  16'b1000100101;
assign mem[24] =  16'b1110111110010110;
assign mem[25] =  16'b1111101101110000;
assign mem[26] =  16'b1110111111001111;
assign mem[27] =  16'b1001100011;
assign mem[28] =  16'b1000110101101;
assign mem[29] =  16'b1111001101110001;
        

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