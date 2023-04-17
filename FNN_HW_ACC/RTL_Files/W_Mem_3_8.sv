`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_8
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

module W_Mem_3_8 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b10001011011110;
assign mem[1] =   16'b1000001101110;
assign mem[2] =   16'b1101111111100100;
assign mem[3] =   16'b1111101101111100;
assign mem[4] =   16'b1111010110001001;
assign mem[5] =   16'b1011010011100;
assign mem[6] =   16'b10111010010;
assign mem[7] =   16'b1001101011110;
assign mem[8] =   16'b1111010100110111;
assign mem[9] =   16'b1111011011011101;
assign mem[10] =  16'b1111100100011100;
assign mem[11] =  16'b1011011000000;
assign mem[12] =  16'b1111111110001011;
assign mem[13] =  16'b1101011100011011;
assign mem[14] =  16'b1011100101000;
assign mem[15] =  16'b1111110010010010;
assign mem[16] =  16'b1111010010111001;
assign mem[17] =  16'b101100100111;
assign mem[18] =  16'b11101000;
assign mem[19] =  16'b1111101010000011;
assign mem[20] =  16'b10001111001;
assign mem[21] =  16'b1111101101100101;
assign mem[22] =  16'b1111001011000001;
assign mem[23] =  16'b1101011001011;
assign mem[24] =  16'b111001111001;
assign mem[25] =  16'b1111000110110110;
assign mem[26] =  16'b10100110011100;
assign mem[27] =  16'b1110010011000111;
assign mem[28] =  16'b1111100101110000;
assign mem[29] =  16'b10010000010;
        

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