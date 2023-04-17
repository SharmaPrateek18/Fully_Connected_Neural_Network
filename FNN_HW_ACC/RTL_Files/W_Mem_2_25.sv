`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_25
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

module W_Mem_2_25 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111110000111110;
assign mem[1] =   16'b1110100000011001;
assign mem[2] =   16'b1110111110101100;
assign mem[3] =   16'b1101010011;
assign mem[4] =   16'b101001000001;
assign mem[5] =   16'b1110110111000101;
assign mem[6] =   16'b1111110010110111;
assign mem[7] =   16'b1000000000011;
assign mem[8] =   16'b10111000000;
assign mem[9] =   16'b1111000101100110;
assign mem[10] =  16'b11001110111;
assign mem[11] =  16'b1111011111100110;
assign mem[12] =  16'b1111001001000001;
assign mem[13] =  16'b1110110110011010;
assign mem[14] =  16'b1111011001101101;
assign mem[15] =  16'b1111100011101011;
assign mem[16] =  16'b1111111110000111;
assign mem[17] =  16'b101101001111;
assign mem[18] =  16'b1000000101010;
assign mem[19] =  16'b1110011110010000;
assign mem[20] =  16'b1111111111111011;
assign mem[21] =  16'b1111111011101010;
assign mem[22] =  16'b1111001011111100;
assign mem[23] =  16'b1110100010111011;
assign mem[24] =  16'b100110110110;
assign mem[25] =  16'b100010001;
assign mem[26] =  16'b1111111011110001;
assign mem[27] =  16'b11100011101;
assign mem[28] =  16'b1111011100100101;
assign mem[29] =  16'b1111111110010111;
        

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