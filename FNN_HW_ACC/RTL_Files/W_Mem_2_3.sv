`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_3
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

module W_Mem_2_3 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111111011010001;
assign mem[1] =   16'b1100001111;
assign mem[2] =   16'b1111001011011011;
assign mem[3] =   16'b1111100101001000;
assign mem[4] =   16'b1111111000111010;
assign mem[5] =   16'b1111101100111000;
assign mem[6] =   16'b1111111110;
assign mem[7] =   16'b11000000111;
assign mem[8] =   16'b1101001110;
assign mem[9] =   16'b1011000000111;
assign mem[10] =  16'b1111101111101110;
assign mem[11] =  16'b1000011011100;
assign mem[12] =  16'b100100000010;
assign mem[13] =  16'b110000111;
assign mem[14] =  16'b1111100111011001;
assign mem[15] =  16'b1000101101101;
assign mem[16] =  16'b1011110101;
assign mem[17] =  16'b1111101100011001;
assign mem[18] =  16'b1001111110;
assign mem[19] =  16'b100100000001;
assign mem[20] =  16'b100011111011;
assign mem[21] =  16'b1110001000;
assign mem[22] =  16'b1100110100;
assign mem[23] =  16'b1110111000010001;
assign mem[24] =  16'b1111101100110010;
assign mem[25] =  16'b1110011100100101;
assign mem[26] =  16'b1110110010011111;
assign mem[27] =  16'b1111110111101101;
assign mem[28] =  16'b11011;
assign mem[29] =  16'b10011111111;
        

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