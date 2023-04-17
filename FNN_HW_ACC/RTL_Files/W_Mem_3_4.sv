`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_4
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

module W_Mem_3_4 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1001010100100;
assign mem[1] =   16'b1001001111110;
assign mem[2] =   16'b1110011111100000;
assign mem[3] =   16'b100100000;
assign mem[4] =   16'b110010001010;
assign mem[5] =   16'b1111100111010110;
assign mem[6] =   16'b1100111000000101;
assign mem[7] =   16'b1111010100011101;
assign mem[8] =   16'b1100111100010;
assign mem[9] =   16'b1101101000010011;
assign mem[10] =  16'b1101110111110;
assign mem[11] =  16'b1101000101000;
assign mem[12] =  16'b1110010001011010;
assign mem[13] =  16'b1111000110110101;
assign mem[14] =  16'b1000100110101;
assign mem[15] =  16'b111100101111;
assign mem[16] =  16'b1111001000010110;
assign mem[17] =  16'b1111011010100110;
assign mem[18] =  16'b10111111100;
assign mem[19] =  16'b100001;
assign mem[20] =  16'b1000111110;
assign mem[21] =  16'b1111101010100100;
assign mem[22] =  16'b1111111101001011;
assign mem[23] =  16'b1111111000111110;
assign mem[24] =  16'b1111000001000100;
assign mem[25] =  16'b11011001010;
assign mem[26] =  16'b110010010101;
assign mem[27] =  16'b1101010101101011;
assign mem[28] =  16'b10001110110;
assign mem[29] =  16'b110101111100;
        

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