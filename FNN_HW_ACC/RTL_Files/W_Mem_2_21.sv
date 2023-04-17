`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_21
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

module W_Mem_2_21 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b10111001101;
assign mem[1] =   16'b10001011101;
assign mem[2] =   16'b1110111110111010;
assign mem[3] =   16'b10010100;
assign mem[4] =   16'b1011011111;
assign mem[5] =   16'b1111011110001010;
assign mem[6] =   16'b1111011101001101;
assign mem[7] =   16'b11011110110;
assign mem[8] =   16'b100111110101;
assign mem[9] =   16'b1111111100010100;
assign mem[10] =  16'b1110011111;
assign mem[11] =  16'b111100101;
assign mem[12] =  16'b1111010100100001;
assign mem[13] =  16'b1111100111111010;
assign mem[14] =  16'b1111110110101000;
assign mem[15] =  16'b1111110001100111;
assign mem[16] =  16'b1101110100;
assign mem[17] =  16'b1011000100;
assign mem[18] =  16'b1111100111011000;
assign mem[19] =  16'b1111110111111110;
assign mem[20] =  16'b101001000101;
assign mem[21] =  16'b111111110;
assign mem[22] =  16'b100101110111;
assign mem[23] =  16'b1111010000101101;
assign mem[24] =  16'b111111011;
assign mem[25] =  16'b1111111110011001;
assign mem[26] =  16'b1111110100110111;
assign mem[27] =  16'b1111110010111011;
assign mem[28] =  16'b1111100001001010;
assign mem[29] =  16'b110011001010;
        

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