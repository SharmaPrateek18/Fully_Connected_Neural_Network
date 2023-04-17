`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: top_FNN
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

module top_FNN
(
    //Clock and Reset
    input                                   clk,
    input                                   reset,             
    //Input Data
    input [`dataWidth-1:0]                  IN,
    input                                   in_data_valid,
    //Output Data
    output logic                            out_valid,
    output [31:0]                           OUT
    
);


logic [31:0]  config_layer_num;
logic [31:0]  config_neuron_num;
logic [31:0] weightValue;
logic [31:0] biasValue;
logic weightValid;
logic biasValid;

localparam IDLE = 'd0,
           SEND = 'd1;
logic [`numNeuronLayer1-1:0] o1_valid;
logic [`numNeuronLayer1*`dataWidth-1:0] x1_out;
logic [`numNeuronLayer1*`dataWidth-1:0] holdData_1;
logic [`dataWidth-1:0] out_data_1;
logic data_out_valid_1;


Layer1 #(.NN(`numNeuronLayer1),.numWeight(`numWeightLayer1),.dataWidth(`dataWidth),.layerNum(1),.sigmoidSize(`sigmoidSize),.weightIntWidth(`weightIntWidth),.actType(`Layer1ActType)) l1(
	.clk(clk),
	.rst(reset),
	.weightValid(weightValid),
	.biasValid(biasValid),
	.weightValue(weightValue),
	.biasValue(biasValue),
	.config_layer_num(config_layer_num),
	.config_neuron_num(config_neuron_num),
	.x_valid(in_data_valid),
	.x_in(IN),
	.o_valid(o1_valid),
	.x_out(x1_out)
);

//State machine for data pipelining

logic       state_1;
integer   count_1;
always_ff @(posedge clk)
begin
    if(reset)
    begin
        state_1 <= IDLE;
        count_1 <= 0;
        data_out_valid_1 <=0;
    end
    else
    begin
        case(state_1)
            IDLE: begin
                count_1 <= 0;
                data_out_valid_1 <=0;
                if (o1_valid[0] == 1'b1)
                begin
                    holdData_1 <= x1_out;
                    state_1 <= SEND;
                end
            end
            SEND: begin
                out_data_1 <= holdData_1[`dataWidth-1:0];
                holdData_1 <= holdData_1>>`dataWidth;
                count_1 <= count_1 +1;
                data_out_valid_1 <= 1;
                if (count_1 == `numNeuronLayer1)
                begin
                    state_1 <= IDLE;
                    data_out_valid_1 <= 0;
                end
            end
        endcase
    end
end

logic [`numNeuronLayer2-1:0] o2_valid;
logic [`numNeuronLayer2*`dataWidth-1:0] x2_out;
logic [`numNeuronLayer2*`dataWidth-1:0] holdData_2;
logic [`dataWidth-1:0] out_data_2;
logic data_out_valid_2;

Layer2 #(.NN(`numNeuronLayer2),.numWeight(`numWeightLayer2),.dataWidth(`dataWidth),.layerNum(2),.sigmoidSize(`sigmoidSize),.weightIntWidth(`weightIntWidth),.actType(`Layer2ActType)) l2(
	.clk(clk),
	.rst(reset),
	.weightValid(weightValid),
	.biasValid(biasValid),
	.weightValue(weightValue),
	.biasValue(biasValue),
	.config_layer_num(config_layer_num),
	.config_neuron_num(config_neuron_num),
	.x_valid(data_out_valid_1),
	.x_in(out_data_1),
	.o_valid(o2_valid),
	.x_out(x2_out)
);

//State machine for data pipelining

logic       state_2;
integer   count_2;
always_ff @(posedge clk)
begin
    if(reset)
    begin
        state_2 <= IDLE;
        count_2 <= 0;
        data_out_valid_2 <=0;
    end
    else
    begin
        case(state_2)
            IDLE: begin
                count_2 <= 0;
                data_out_valid_2 <=0;
                if (o2_valid[0] == 1'b1)
                begin
                    holdData_2 <= x2_out;
                    state_2 <= SEND;
                end
            end
            SEND: begin
                out_data_2 <= holdData_2[`dataWidth-1:0];
                holdData_2 <= holdData_2>>`dataWidth;
                count_2 <= count_2 +1;
                data_out_valid_2 <= 1;
                if (count_2 == `numNeuronLayer2)
                begin
                    state_2 <= IDLE;
                    data_out_valid_2 <= 0;
                end
            end
        endcase
    end
end

logic [`numNeuronLayer3-1:0] o3_valid;
logic [`numNeuronLayer3*`dataWidth-1:0] x3_out;
logic [`numNeuronLayer3*`dataWidth-1:0] holdData_3;
logic [`dataWidth-1:0] out_data_3;
logic data_out_valid_3;

Layer3 #(.NN(`numNeuronLayer3),.numWeight(`numWeightLayer3),.dataWidth(`dataWidth),.layerNum(3),.sigmoidSize(`sigmoidSize),.weightIntWidth(`weightIntWidth),.actType(`Layer3ActType)) l3(
	.clk(clk),
	.rst(reset),
	.weightValid(weightValid),
	.biasValid(biasValid),
	.weightValue(weightValue),
	.biasValue(biasValue),
	.config_layer_num(config_layer_num),
	.config_neuron_num(config_neuron_num),
	.x_valid(data_out_valid_2),
	.x_in(out_data_2),
	.o_valid(o3_valid),
	.x_out(x3_out)
);

//State machine for data pipelining

logic       state_3;
integer   count_3;
always_ff @(posedge clk)
begin
    if(reset)
    begin
        state_3 <= IDLE;
        count_3 <= 0;
        data_out_valid_3 <=0;
    end
    else
    begin
        case(state_3)
            IDLE: begin
                count_3 <= 0;
                data_out_valid_3 <=0;
                if (o3_valid[0] == 1'b1)
                begin
                    holdData_3 <= x3_out;
                    state_3 <= SEND;
                end
            end
            SEND: begin
                out_data_3 <= holdData_3[`dataWidth-1:0];
                holdData_3 <= holdData_3>>`dataWidth;
                count_3 <= count_3 +1;
                data_out_valid_3 <= 1;
                if (count_3 == `numNeuronLayer3)
                begin
                    state_3 <= IDLE;
                    data_out_valid_3 <= 0;
                end
            end
        endcase
    end
end

logic [`numNeuronLayer4-1:0] o4_valid;
logic [`numNeuronLayer4*`dataWidth-1:0] x4_out;

Layer4 #(.NN(`numNeuronLayer4),.numWeight(`numWeightLayer4),.dataWidth(`dataWidth),.layerNum(4),.sigmoidSize(`sigmoidSize),.weightIntWidth(`weightIntWidth),.actType(`Layer4ActType)) l4(
	.clk(clk),
	.rst(reset),
	.weightValid(weightValid),
	.biasValid(biasValid),
	.weightValue(weightValue),
	.biasValue(biasValue),
	.config_layer_num(config_layer_num),
	.config_neuron_num(config_neuron_num),
	.x_valid(data_out_valid_3),
	.x_in(out_data_3),
	.o_valid(o4_valid),
	.x_out(x4_out)
);

maxFinder #(.numInput(`numNeuronLayer4),.inputWidth(`dataWidth))
    mFind(
        .i_clk(clk),
        .i_data(x4_out),
        .i_valid(o4_valid),
        .o_data(OUT),
        .o_data_valid(out_valid)
    );
endmodule
