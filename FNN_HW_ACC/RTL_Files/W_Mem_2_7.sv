`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_7
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

module W_Mem_2_7 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b111011111110;
assign mem[1] =   16'b101101010;
assign mem[2] =   16'b1111001101010111;
assign mem[3] =   16'b10110110;
assign mem[4] =   16'b1111000000100111;
assign mem[5] =   16'b100011101110;
assign mem[6] =   16'b1110110110000110;
assign mem[7] =   16'b1011101011000;
assign mem[8] =   16'b100111111010;
assign mem[9] =   16'b100010011010;
assign mem[10] =  16'b1110111011110101;
assign mem[11] =  16'b111011101100;
assign mem[12] =  16'b1110100101001010;
assign mem[13] =  16'b1111110010010101;
assign mem[14] =  16'b101100110110;
assign mem[15] =  16'b1110101101000101;
assign mem[16] =  16'b1111011000000001;
assign mem[17] =  16'b1111101001110100;
assign mem[18] =  16'b1111110110100100;
assign mem[19] =  16'b1111001010001110;
assign mem[20] =  16'b1110111000000101;
assign mem[21] =  16'b11110011101;
assign mem[22] =  16'b100000000010;
assign mem[23] =  16'b1111000001001001;
assign mem[24] =  16'b1111101101000001;
assign mem[25] =  16'b1111111000110010;
assign mem[26] =  16'b1110100110100100;
assign mem[27] =  16'b101000000010;
assign mem[28] =  16'b11000110110;
assign mem[29] =  16'b1111101100011101;
        

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