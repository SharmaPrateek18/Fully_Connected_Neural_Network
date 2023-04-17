`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_0
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

module W_Mem_2_0 #(parameter numWeight = 30,
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
    
assign mem[0] =   16'b1110110010101011;
assign mem[1] =   16'b100001100011;
assign mem[2] =   16'b1011000010010;
assign mem[3] =   16'b1001111010111;
assign mem[4] =   16'b1001011100110;
assign mem[5] =   16'b1111011010000011;
assign mem[6] =   16'b1100011111;
assign mem[7] =   16'b1111001000001010;
assign mem[8] =   16'b1110100011000001;
assign mem[9] =   16'b1111101110101000;
assign mem[10] =  16'b1110110001111100;
assign mem[11] =  16'b1111010000000000;
assign mem[12] =  16'b110101011000;
assign mem[13] =  16'b1111101101011011;
assign mem[14] =  16'b1001011000011;
assign mem[15] =  16'b1001000001001;
assign mem[16] =  16'b1111011011000100;
assign mem[17] =  16'b1111111111101010;
assign mem[18] =  16'b1111011101010010;
assign mem[19] =  16'b1110111000100011;
assign mem[20] =  16'b110000010011;
assign mem[21] =  16'b101001001011;
assign mem[22] =  16'b1111010110000011;
assign mem[23] =  16'b1110001110110;
assign mem[24] =  16'b1110000;
assign mem[25] =  16'b1110111000011010;
assign mem[26] =  16'b11001110000;
assign mem[27] =  16'b1101110;
assign mem[28] =  16'b1111100111101011;
assign mem[29] =  16'b110100110100;
        

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