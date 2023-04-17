`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: W_Mem_4_9
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

module W_Mem_4_9 #(parameter numWeight =10,
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
    
assign mem[0] =   16'b1100001011100;
assign mem[1] =   16'b10110110010;
assign mem[2] =   16'b101111100110110;
assign mem[3] =   16'b1010110011000010;
assign mem[4] =   16'b10111001011100;
assign mem[5] =   16'b1010110110001000;
assign mem[6] =   16'b1111000001111110;
assign mem[7] =   16'b1101110111010101;
assign mem[8] =   16'b1111100101011;
assign mem[9] =   16'b1101000011111010;
        

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