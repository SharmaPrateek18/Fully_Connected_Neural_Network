`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_3_6
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

module W_Mem_3_6 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1111101011100100;
assign mem[1] =   16'b1110100110010010;
assign mem[2] =   16'b1111011100110;
assign mem[3] =   16'b1101101100001;
assign mem[4] =   16'b1110101000011011;
assign mem[5] =   16'b1101000011110111;
assign mem[6] =   16'b110110001;
assign mem[7] =   16'b1111010011011010;
assign mem[8] =   16'b100101101101;
assign mem[9] =   16'b101001101001;
assign mem[10] =  16'b100100011111;
assign mem[11] =  16'b1110110001010111;
assign mem[12] =  16'b100000100111;
assign mem[13] =  16'b1001000110110;
assign mem[14] =  16'b1111010010010000;
assign mem[15] =  16'b1110101101000111;
assign mem[16] =  16'b1111010011110111;
assign mem[17] =  16'b1110001001011000;
assign mem[18] =  16'b1110010111110100;
assign mem[19] =  16'b111001110011;
assign mem[20] =  16'b1001110100;
assign mem[21] =  16'b11010000100;
assign mem[22] =  16'b1111111000010011;
assign mem[23] =  16'b1100011011100;
assign mem[24] =  16'b1010000000011;
assign mem[25] =  16'b1110101100000110;
assign mem[26] =  16'b1000000110011;
assign mem[27] =  16'b101010011001;
assign mem[28] =  16'b100100;
assign mem[29] =  16'b101101011100;
        

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