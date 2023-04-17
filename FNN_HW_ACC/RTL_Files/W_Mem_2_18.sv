`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_18
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

module W_Mem_2_18 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111101000110011;
assign mem[1] =   16'b1110100110111000;
assign mem[2] =   16'b101110110001;
assign mem[3] =   16'b110000100110;
assign mem[4] =   16'b11101111100;
assign mem[5] =   16'b1111101111;
assign mem[6] =   16'b1111011100110111;
assign mem[7] =   16'b1111010100000001;
assign mem[8] =   16'b1111111110101100;
assign mem[9] =   16'b1110110100100011;
assign mem[10] =  16'b1111100100001001;
assign mem[11] =  16'b1110100011011010;
assign mem[12] =  16'b1110111100001011;
assign mem[13] =  16'b1110100100100111;
assign mem[14] =  16'b10001011011;
assign mem[15] =  16'b1110011000111001;
assign mem[16] =  16'b1111000000010101;
assign mem[17] =  16'b1000001010011;
assign mem[18] =  16'b1001001111101;
assign mem[19] =  16'b1111011010100010;
assign mem[20] =  16'b1111111001011011;
assign mem[21] =  16'b111011000011;
assign mem[22] =  16'b1111101010100001;
assign mem[23] =  16'b100001010101;
assign mem[24] =  16'b1100111100111;
assign mem[25] =  16'b1011100000000;
assign mem[26] =  16'b1101000010;
assign mem[27] =  16'b101101010101;
assign mem[28] =  16'b111101010001;
assign mem[29] =  16'b1110110011100010;
        

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