`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_3
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

module W_Mem_3_3 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1111111011101101;
assign mem[1] =   16'b1111110010000001;
assign mem[2] =   16'b1111110010011010;
assign mem[3] =   16'b1110101100101100;
assign mem[4] =   16'b1101111111101110;
assign mem[5] =   16'b1111001010100101;
assign mem[6] =   16'b100110110101;
assign mem[7] =   16'b10100011110;
assign mem[8] =   16'b10100100011001;
assign mem[9] =   16'b11100011111;
assign mem[10] =  16'b1110110100011001;
assign mem[11] =  16'b1111111100000111;
assign mem[12] =  16'b10111000;
assign mem[13] =  16'b101101110111;
assign mem[14] =  16'b10001010011000;
assign mem[15] =  16'b110001001100;
assign mem[16] =  16'b1101010000010111;
assign mem[17] =  16'b1111111011100110;
assign mem[18] =  16'b101011101001;
assign mem[19] =  16'b1110100001100110;
assign mem[20] =  16'b1000100001100;
assign mem[21] =  16'b1111100111011011;
assign mem[22] =  16'b1111101101101111;
assign mem[23] =  16'b1000100111110;
assign mem[24] =  16'b1101101101111;
assign mem[25] =  16'b1110011110101110;
assign mem[26] =  16'b1111000111111111;
assign mem[27] =  16'b1001111111011;
assign mem[28] =  16'b11100000100;
assign mem[29] =  16'b1000011011011;
        

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