`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_9
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

module W_Mem_3_9 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1101111001000010;
assign mem[1] =   16'b1110111110010010;
assign mem[2] =   16'b1011100101111;
assign mem[3] =   16'b1111110111011001;
assign mem[4] =   16'b1111111001110101;
assign mem[5] =   16'b1011011000111;
assign mem[6] =   16'b1010100000011;
assign mem[7] =   16'b1100000011010;
assign mem[8] =   16'b101110000110;
assign mem[9] =   16'b1111111100110111;
assign mem[10] =  16'b1110001101000111;
assign mem[11] =  16'b111000101011;
assign mem[12] =  16'b110100100;
assign mem[13] =  16'b1111100110101110;
assign mem[14] =  16'b1100101101111010;
assign mem[15] =  16'b1111111011000011;
assign mem[16] =  16'b11111;
assign mem[17] =  16'b11011011110;
assign mem[18] =  16'b1000101000111;
assign mem[19] =  16'b1111110011111110;
assign mem[20] =  16'b1111101110001101;
assign mem[21] =  16'b100010010110;
assign mem[22] =  16'b1000010011101;
assign mem[23] =  16'b111100110110;
assign mem[24] =  16'b1110110110001101;
assign mem[25] =  16'b1000100010011;
assign mem[26] =  16'b1000101111010;
assign mem[27] =  16'b1110111111110001;
assign mem[28] =  16'b111010110011;
assign mem[29] =  16'b10101110110;
        

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