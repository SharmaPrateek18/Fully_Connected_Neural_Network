`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: Neuron_1_29
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


module Neuron_1_29 #(parameter layerNo = 1, 
                          neuronNo = 30, 
                          numWeight = 784, 
                          dataWidth = 16, 
                          sigmoidSize = 10, 
                          weightIntWidth = 1, 
                          actType = "sigmoid"
                          )
                (
                input           clk,
                input           rst,
                input [dataWidth-1:0]    myinput,
                input           myinputValid,
                input           weightValid,
                input           biasValid,
                input [31:0]    weightValue,
                input [31:0]    biasValue,
                input [31:0]    config_layer_num,
                input [31:0]    config_neuron_num,
                output[dataWidth-1:0]    out,
                output logic      outvalid   
                );
    
    parameter addressWidth = $clog2(numWeight);
    
    logic         wen;
    logic        ren;
    logic [addressWidth-1:0] w_addr;
    logic [addressWidth:0]   r_addr;//read address has to reach until numWeight hence width is 1 bit more
    logic [dataWidth-1:0]  w_in;
    logic [dataWidth-1:0] w_out;
    logic [2*dataWidth-1:0]  mul; 
    logic [2*dataWidth-1:0]  sum;
    logic [2*dataWidth-1:0]  bias;
    logic [31:0]    biasReg;
    logic         weight_valid;
    logic         mult_valid;
    logic        mux_valid;
    logic         sigValid; 
    logic [2*dataWidth:0] comboAdd;
    logic [2*dataWidth:0] BiasAdd;
    logic  [dataWidth-1:0] myinputd;
    logic muxValid_d;
    logic muxValid_f;
    logic addr=0;
   //Loading weight values into the momory
    always_ff @(posedge clk)
    begin
        if(rst)
        begin
            w_addr <= {addressWidth{1'b1}};
            wen <=0;
        end
        else if(weightValid & (config_layer_num==layerNo) & (config_neuron_num==neuronNo))
        begin
            w_in <= weightValue;
            w_addr <= w_addr + 1;
            wen <= 1;
        end
        else
            wen <= 0;
    end
	
	assign biasReg = 32'b1110101010101101;
    assign mux_valid = mult_valid;
    assign comboAdd = mul + sum;
    assign BiasAdd = bias + sum;
    assign ren = myinputValid;
 
 
    always_ff @(posedge clk)
    begin
        bias <= {biasReg[dataWidth-1:0],{dataWidth{1'b0}}};
    end
    
    
    always_ff @(posedge clk)
    begin
        if(rst|outvalid)
            r_addr <= 0;
        else if(myinputValid)
            r_addr <= r_addr + 1;
    end
    
    always_ff @(posedge clk)
    begin
        mul  <= $signed(myinputd) * $signed(w_out);
    end
    
    
    always_ff @(posedge clk)
    begin
        if(rst|outvalid)
            sum <= 0;
        else if((r_addr == numWeight) & muxValid_f)
        begin
            if(!bias[2*dataWidth-1] &!sum[2*dataWidth-1] & BiasAdd[2*dataWidth-1]) //If bias and sum are positive and after adding bias to sum, if sign bit becomes 1, saturate
            begin
                sum[2*dataWidth-1] <= 1'b0;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b1}};
            end
            else if(bias[2*dataWidth-1] & sum[2*dataWidth-1] &  !BiasAdd[2*dataWidth-1]) //If bias and sum are negative and after addition if sign bit is 0, saturate
            begin
                sum[2*dataWidth-1] <= 1'b1;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b0}};
            end
            else
                sum <= BiasAdd; 
        end
        else if(mux_valid)
        begin
            if(!mul[2*dataWidth-1] & !sum[2*dataWidth-1] & comboAdd[2*dataWidth-1])
            begin
                sum[2*dataWidth-1] <= 1'b0;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b1}};
            end
            else if(mul[2*dataWidth-1] & sum[2*dataWidth-1] & !comboAdd[2*dataWidth-1])
            begin
                sum[2*dataWidth-1] <= 1'b1;
                sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b0}};
            end
            else
                sum <= comboAdd; 
        end
    end
    
    always_ff @(posedge clk)
    begin
        myinputd <= myinput;
        weight_valid <= myinputValid;
        mult_valid <= weight_valid;
        sigValid <= ((r_addr == numWeight) & muxValid_f) ? 1'b1 : 1'b0;
        outvalid <= sigValid;
        muxValid_d <= mux_valid;
        muxValid_f <= !mux_valid & muxValid_d;
    end
    
    
    //Instantiation of Memory for Weights
    W_Mem_1_29 #(.numWeight(numWeight),.addressWidth(addressWidth),.dataWidth(dataWidth)) WM(
        .clk(clk),
        .wen(wen),
        .ren(ren),
        .wadd(w_addr),
        .radd(r_addr),
        .win(w_in),
        .wout(w_out)
    );
    
    generate
        if(actType == "sigmoid")
        begin:siginst
        //Instantiation of ROM for sigmoid
            Sig_ROM #(.inWidth(sigmoidSize),.dataWidth(dataWidth)) s1(
            .clk(clk),
            .x(sum[2*dataWidth-1-:sigmoidSize]),
            .out(out)
        );
        end
        else
        begin:ReLUinst
            ReLU #(.dataWidth(dataWidth),.weightIntWidth(weightIntWidth)) s1 (
            .clk(clk),
            .x(sum),
            .out(out)
        );
        end
    endgenerate

endmodule