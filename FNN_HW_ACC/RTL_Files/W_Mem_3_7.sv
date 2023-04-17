`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_7
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

module W_Mem_3_7 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1001101010111;
assign mem[1] =   16'b110011110;
assign mem[2] =   16'b110001100111;
assign mem[3] =   16'b1110100110101100;
assign mem[4] =   16'b1001110000110;
assign mem[5] =   16'b1111111110100110;
assign mem[6] =   16'b1000001000;
assign mem[7] =   16'b100001000101;
assign mem[8] =   16'b1101100000;
assign mem[9] =   16'b1000001010010;
assign mem[10] =  16'b1111110110101011;
assign mem[11] =  16'b111100101100;
assign mem[12] =  16'b110111001111;
assign mem[13] =  16'b101000110001;
assign mem[14] =  16'b100001000;
assign mem[15] =  16'b1000100001110;
assign mem[16] =  16'b1111110010101111;
assign mem[17] =  16'b10010001011;
assign mem[18] =  16'b1111001100110101;
assign mem[19] =  16'b101010100111;
assign mem[20] =  16'b1111111111110101;
assign mem[21] =  16'b1111111001011111;
assign mem[22] =  16'b10110110001;
assign mem[23] =  16'b1000001000110;
assign mem[24] =  16'b1111010000110101;
assign mem[25] =  16'b100110011100;
assign mem[26] =  16'b1111110100101101;
assign mem[27] =  16'b1101101000110110;
assign mem[28] =  16'b1111110001100000;
assign mem[29] =  16'b1111110011001010;
        

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