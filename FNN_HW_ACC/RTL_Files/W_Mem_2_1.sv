`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_1
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

module W_Mem_2_1 #(parameter numWeight = 30,
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
    
assign mem[0] =   16'b1111100010011010;
assign mem[1] =   16'b1111100101001100;
assign mem[2] =   16'b10011010000;
assign mem[3] =   16'b1000110011101;
assign mem[4] =   16'b10011111101;
assign mem[5] =   16'b10001101101;
assign mem[6] =   16'b1111011101111101;
assign mem[7] =   16'b10001010001;
assign mem[8] =   16'b1110111110001000;
assign mem[9] =   16'b1111001110111000;
assign mem[10] =  16'b1110100111001110;
assign mem[11] =  16'b10000;
assign mem[12] =  16'b1111111110100000;
assign mem[13] =  16'b110101011;
assign mem[14] =  16'b1000101111110;
assign mem[15] =  16'b1110000001;
assign mem[16] =  16'b1111010101000100;
assign mem[17] =  16'b1111110111011010;
assign mem[18] =  16'b1111110100001011;
assign mem[19] =  16'b1111010010111100;
assign mem[20] =  16'b1111110011000010;
assign mem[21] =  16'b1001010011101;
assign mem[22] =  16'b1111101000000100;
assign mem[23] =  16'b10101100000;
assign mem[24] =  16'b1111110101111110;
assign mem[25] =  16'b1111101001011100;
assign mem[26] =  16'b1111111011010110;
assign mem[27] =  16'b1000000010;
assign mem[28] =  16'b101011101;
assign mem[29] =  16'b100101011101;
        

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