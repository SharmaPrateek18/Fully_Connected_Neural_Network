`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_2_20
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

module W_Mem_2_20 #(parameter numWeight =30,
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
    
assign mem[0] =   16'b1111100110101111;
assign mem[1] =   16'b1111111000110110;
assign mem[2] =   16'b101110001001;
assign mem[3] =   16'b1111101011101101;
assign mem[4] =   16'b1111110000001101;
assign mem[5] =   16'b100111000001;
assign mem[6] =   16'b1111111110000001;
assign mem[7] =   16'b1111100001100011;
assign mem[8] =   16'b1111111101110011;
assign mem[9] =   16'b10010011011;
assign mem[10] =  16'b1101111;
assign mem[11] =  16'b100000011;
assign mem[12] =  16'b1001010101;
assign mem[13] =  16'b10001000000;
assign mem[14] =  16'b10010010001;
assign mem[15] =  16'b1111110001011110;
assign mem[16] =  16'b1111101010010001;
assign mem[17] =  16'b1111110001010101;
assign mem[18] =  16'b1110011010;
assign mem[19] =  16'b11001011000;
assign mem[20] =  16'b1111110110110100;
assign mem[21] =  16'b111101101;
assign mem[22] =  16'b10100111000;
assign mem[23] =  16'b100111100000;
assign mem[24] =  16'b1000101110;
assign mem[25] =  16'b1101001100;
assign mem[26] =  16'b1101011000;
assign mem[27] =  16'b1000011001;
assign mem[28] =  16'b1101101000;
assign mem[29] =  16'b1111011111100111;
        

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