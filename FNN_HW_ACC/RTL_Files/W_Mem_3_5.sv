`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_5
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

module W_Mem_3_5 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b10101011001;
assign mem[1] =   16'b1111001011011101;
assign mem[2] =   16'b1100101111100;
assign mem[3] =   16'b1111011111010001;
assign mem[4] =   16'b1111111011010110;
assign mem[5] =   16'b111010111010;
assign mem[6] =   16'b101010101001;
assign mem[7] =   16'b1110011101111010;
assign mem[8] =   16'b1110000011011100;
assign mem[9] =   16'b10010111010110;
assign mem[10] =  16'b11110011110;
assign mem[11] =  16'b1110010101001010;
assign mem[12] =  16'b1111011010101;
assign mem[13] =  16'b1100110000111;
assign mem[14] =  16'b100110100011;
assign mem[15] =  16'b1000110011101;
assign mem[16] =  16'b10101000011;
assign mem[17] =  16'b1100010010100;
assign mem[18] =  16'b1101110010001010;
assign mem[19] =  16'b1110000001000;
assign mem[20] =  16'b1111110001100011;
assign mem[21] =  16'b1101100000;
assign mem[22] =  16'b1111100011100001;
assign mem[23] =  16'b1111100001001010;
assign mem[24] =  16'b1111000100111110;
assign mem[25] =  16'b1111000110010100;
assign mem[26] =  16'b1110000011001100;
assign mem[27] =  16'b1110101010111100;
assign mem[28] =  16'b1011101101;
assign mem[29] =  16'b1110110001110100;
        

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