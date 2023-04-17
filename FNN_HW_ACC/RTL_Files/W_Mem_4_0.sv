`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_4_0
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

module W_Mem_4_0 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1100000011011;
assign mem[1] =   16'b1001000111101;
assign mem[2] =   16'b1010110001101010;
assign mem[3] =   16'b1100111000010110;
assign mem[4] =   16'b11011000010100;
assign mem[5] =   16'b100001011100000;
assign mem[6] =   16'b1011011010111010;
assign mem[7] =   16'b1010110010;
assign mem[8] =   16'b1111101101011001;
assign mem[9] =   16'b1100011101010110;
        

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