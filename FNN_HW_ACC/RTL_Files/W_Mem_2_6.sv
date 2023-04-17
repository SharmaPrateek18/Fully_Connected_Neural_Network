`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_6
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

module W_Mem_2_6 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b111111011;
assign mem[1] =   16'b100011;
assign mem[2] =   16'b11111100101;
assign mem[3] =   16'b1111001001100111;
assign mem[4] =   16'b1111111111000111;
assign mem[5] =   16'b1111000101101000;
assign mem[6] =   16'b110011111101;
assign mem[7] =   16'b11101000100;
assign mem[8] =   16'b110110110100;
assign mem[9] =   16'b1001100010011;
assign mem[10] =  16'b1010010111101;
assign mem[11] =  16'b1110110010100110;
assign mem[12] =  16'b1110010110011010;
assign mem[13] =  16'b1110101110010010;
assign mem[14] =  16'b1111111111110001;
assign mem[15] =  16'b1110101100001111;
assign mem[16] =  16'b10111111110;
assign mem[17] =  16'b1111110000010000;
assign mem[18] =  16'b1111100111;
assign mem[19] =  16'b1111110111111110;
assign mem[20] =  16'b1111110001101001;
assign mem[21] =  16'b1111010110100001;
assign mem[22] =  16'b100110000;
assign mem[23] =  16'b101111101000;
assign mem[24] =  16'b1001001110;
assign mem[25] =  16'b111101111100;
assign mem[26] =  16'b10000000011;
assign mem[27] =  16'b1001011010000;
assign mem[28] =  16'b100101000;
assign mem[29] =  16'b1110111101011101;
        

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