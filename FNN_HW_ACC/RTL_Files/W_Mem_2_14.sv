`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_14
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

module W_Mem_2_14 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111010001001011;
assign mem[1] =   16'b10001;
assign mem[2] =   16'b1010000000001;
assign mem[3] =   16'b1001010001101;
assign mem[4] =   16'b1111100110010111;
assign mem[5] =   16'b1011110101000;
assign mem[6] =   16'b1111110100000010;
assign mem[7] =   16'b1111000010100011;
assign mem[8] =   16'b1110011001100001;
assign mem[9] =   16'b1110011111100101;
assign mem[10] =  16'b1110010110010100;
assign mem[11] =  16'b100100;
assign mem[12] =  16'b101011100100;
assign mem[13] =  16'b101000101010;
assign mem[14] =  16'b10010001110000;
assign mem[15] =  16'b11001101110;
assign mem[16] =  16'b1110100011101101;
assign mem[17] =  16'b1111010111100000;
assign mem[18] =  16'b1110110001101111;
assign mem[19] =  16'b1110001111;
assign mem[20] =  16'b1011011000;
assign mem[21] =  16'b1000100111100;
assign mem[22] =  16'b100001100011;
assign mem[23] =  16'b1111011010111;
assign mem[24] =  16'b1111100110110010;
assign mem[25] =  16'b10000000011;
assign mem[26] =  16'b10110001011;
assign mem[27] =  16'b1111010110001001;
assign mem[28] =  16'b1011011100;
assign mem[29] =  16'b101101001;
        

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