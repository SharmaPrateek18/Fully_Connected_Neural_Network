`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_1
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

module W_Mem_3_1 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1000111010010;
assign mem[1] =   16'b100010001110;
assign mem[2] =   16'b1111000101111010;
assign mem[3] =   16'b1110110011111011;
assign mem[4] =   16'b100011011000;
assign mem[5] =   16'b1110110101;
assign mem[6] =   16'b100010111100;
assign mem[7] =   16'b1111110100111110;
assign mem[8] =   16'b1110110001100000;
assign mem[9] =   16'b1111001010011010;
assign mem[10] =  16'b1111100100011;
assign mem[11] =  16'b1100011011;
assign mem[12] =  16'b1111001100010111;
assign mem[13] =  16'b1010010011010;
assign mem[14] =  16'b101000001110;
assign mem[15] =  16'b1111110111000100;
assign mem[16] =  16'b101111011000;
assign mem[17] =  16'b1111110001101011;
assign mem[18] =  16'b1110110101011;
assign mem[19] =  16'b1111111011111100;
assign mem[20] =  16'b1111101100001010;
assign mem[21] =  16'b111000100000;
assign mem[22] =  16'b1111111100011001;
assign mem[23] =  16'b1101011101111100;
assign mem[24] =  16'b1111110110101101;
assign mem[25] =  16'b1110011001110;
assign mem[26] =  16'b1110100000011101;
assign mem[27] =  16'b10001010010100;
assign mem[28] =  16'b10011101100;
assign mem[29] =  16'b1111011000001100;
        

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