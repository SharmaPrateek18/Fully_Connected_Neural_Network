
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_16
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

module W_Mem_2_16 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111111111110111;
assign mem[1] =   16'b100111111001;
assign mem[2] =   16'b11001101110;
assign mem[3] =   16'b1111110101000101;
assign mem[4] =   16'b10010000000101;
assign mem[5] =   16'b1101111000100000;
assign mem[6] =   16'b100001011010;
assign mem[7] =   16'b1111101111001110;
assign mem[8] =   16'b1111110010000100;
assign mem[9] =   16'b100001000111;
assign mem[10] =  16'b1111111100111010;
assign mem[11] =  16'b1111000010010010;
assign mem[12] =  16'b1111000011001101;
assign mem[13] =  16'b1111111110000000;
assign mem[14] =  16'b10011001000;
assign mem[15] =  16'b1110101100000100;
assign mem[16] =  16'b1000000000111;
assign mem[17] =  16'b10111011010;
assign mem[18] =  16'b1011101010010;
assign mem[19] =  16'b1110100110001101;
assign mem[20] =  16'b10110100100;
assign mem[21] =  16'b1111110110100100;
assign mem[22] =  16'b1110111001010011;
assign mem[23] =  16'b1000000011110;
assign mem[24] =  16'b1111111010110000;
assign mem[25] =  16'b100011101011;
assign mem[26] =  16'b1000001001100;
assign mem[27] =  16'b1001010011001;
assign mem[28] =  16'b1111000111000101;
assign mem[29] =  16'b101011101001;
        

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