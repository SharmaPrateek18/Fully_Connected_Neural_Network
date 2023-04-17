`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_27
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

module W_Mem_2_27 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1110101100101100;
assign mem[1] =   16'b1111001100001110;
assign mem[2] =   16'b100111011011;
assign mem[3] =   16'b10111000000;
assign mem[4] =   16'b11101010110;
assign mem[5] =   16'b1111010000001001;
assign mem[6] =   16'b10001010111011;
assign mem[7] =   16'b10110001110;
assign mem[8] =   16'b1111111000000100;
assign mem[9] =   16'b1111111011111011;
assign mem[10] =  16'b10011101;
assign mem[11] =  16'b1111010000010000;
assign mem[12] =  16'b1111010101110110;
assign mem[13] =  16'b1101010010001011;
assign mem[14] =  16'b1111011100111111;
assign mem[15] =  16'b1010011001010;
assign mem[16] =  16'b1010100110;
assign mem[17] =  16'b1000110000001;
assign mem[18] =  16'b110000000;
assign mem[19] =  16'b1111100111100111;
assign mem[20] =  16'b1101000001110;
assign mem[21] =  16'b110001011101;
assign mem[22] =  16'b1110111110000101;
assign mem[23] =  16'b11100110010;
assign mem[24] =  16'b10100101000110;
assign mem[25] =  16'b11101110001;
assign mem[26] =  16'b10010001010;
assign mem[27] =  16'b111110010000;
assign mem[28] =  16'b100110111;
assign mem[29] =  16'b1110100110101111;
        

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