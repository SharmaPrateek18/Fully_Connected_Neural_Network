`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_17
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

module W_Mem_2_17 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1001111101111;
assign mem[1] =   16'b11001111101;
assign mem[2] =   16'b1100010000;
assign mem[3] =   16'b11110111010;
assign mem[4] =   16'b110000001;
assign mem[5] =   16'b1111101010010000;
assign mem[6] =   16'b1111011111101000;
assign mem[7] =   16'b1000011101;
assign mem[8] =   16'b101011101010;
assign mem[9] =   16'b1111010101011110;
assign mem[10] =  16'b100010010001;
assign mem[11] =  16'b1111101010100001;
assign mem[12] =  16'b1111000010001101;
assign mem[13] =  16'b111001000110;
assign mem[14] =  16'b100111000111;
assign mem[15] =  16'b1110101110000100;
assign mem[16] =  16'b10010110100;
assign mem[17] =  16'b1111000001011100;
assign mem[18] =  16'b1001001;
assign mem[19] =  16'b100001001010;
assign mem[20] =  16'b1101110000011001;
assign mem[21] =  16'b1111011010001100;
assign mem[22] =  16'b11001000111;
assign mem[23] =  16'b11110011110;
assign mem[24] =  16'b1111110001100000;
assign mem[25] =  16'b1111010101110;
assign mem[26] =  16'b1000011011101;
assign mem[27] =  16'b11110111101;
assign mem[28] =  16'b1111100000111101;
assign mem[29] =  16'b1111111111001111;
        

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