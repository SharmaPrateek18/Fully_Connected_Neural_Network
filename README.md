# Fully_Connected_Neural_Network

This code is an implementation of a Fully Connected Neural Network (FNN) in SystemVerilog. It consists of four layers of neurons, and the neurons in each layer are connected to all neurons in the previous layer.

## Top Module (top_FNN)
The input to the FNN is the signal IN, and the output is the signal OUT. The in_data_valid signal is used to indicate when the input data is valid. The out_valid signal is used to indicate when the output data is valid.

Each layer of the FNN is implemented as a separate module (Layer1, Layer2, Layer3 and Layer4). The top_FNN module instantiates these modules and connects them together.

The config_layer_num and config_neuron_num signals are used to configure the weights and biases of the neurons in the FNN. The weightValue and biasValue signals hold the weights and biases for the neurons in each layer. The weightValid and biasValid signals indicate when the weights and biases are valid.

The x_valid signals are used to indicate when the input data to each layer is valid, and the o_valid signals are used to indicate when the output data from each layer is valid. The x_in and x_out signals are used to connect and send data to the neurons in next layer.

The FNN is implemented using a pipelining approach, where each layer uses a state machine to pipeline the data between layers. The state_1, state_2, and state_3 signals are used to indicate the current state of each state machine, and the count_1, count_2, and count_3 signals are used to count the number of neurons that have been processed by each layer. The data_out_valid_1, data_out_valid_2, and data_out_valid_3 signals are used to indicate when the output data from each layer is valid.

The holdData_1, holdData_2, and holdData_3 signals are used to store the output data from each layer while it is being pipelined to the next layer. The out_data_1, out_data_2, and out_data_3 signals are used to store the final output data from each layer.

## Layers in the Neural network (Layer1,Layer2, Layer3 and Layer4)

This Layer module implements the neural network layer. The layer has 30,30,10 and 10 neurons in each corresponding layers. Each neuron is implemented by a separate module instantiation.

The layers are parameterized by several input parameters, including the number of neurons in the layer, the number of input weights, the width of the input data, and the type of activation function used. The input and output of the layer are both 1D arrays, with the input array having a width of dataWidth and the output array having a width of dataWidth * NN, where NN is the number of neurons in the layer.

Each neuron is an instance of the Neuron_[Layer_No.]_[Neuron_No.] module, which also takes several input parameters to configure its behavior, such as the index of the neuron in the layer, the width of the input data, and the activation function to use.

The Layer module interface includes clock and reset inputs, inputs for the layer's weights and biases, and inputs for the input data and control signals. The output signals include a validity signal for each neuron's output, indicating when the neuron has produced a valid output, and a combined output array.

## Neuron (Neuron_[Layer_No.]_[Neuron_No.])

This single neuron of a Funny Connected Neural Network is described here.

The module is named "Neuron_[Layer_No.]_[Neuron_No.]" and includes a number of input and output ports. The input ports include the clock signal "clk", reset signal "rst", "myinput" representing the input data for the neuron, "myinputValid" indicating if the input data is valid, "weightValid" indicating if the weight data is valid, "biasValid" indicating if the bias data is valid, "weightValue" representing the weight value, "biasValue" representing the bias value, and "config_layer_num" and "config_neuron_num" representing the layer number and neuron number, respectively. The output ports include "out" representing the output of the neuron and "outvalid" indicating if the output is valid.

The parameter values are specified within the module definition and include the "layerNo" and "neuronNo" parameters, which define the neuron's position in the network, "numWeight", the number of weight values the neuron receives, "dataWidth", the width of the input and output data, "sigmoidSize", which is used for sigmoid activation function implementation, "weightIntWidth", the width of the weight value, and "actType", which specifies the type of activation function (in this implementation, it is hard-coded to "sigmoid").

The module includes a few internal signals, including "wen", "ren", "w_addr", "r_addr", "w_in", "w_out", "mul", "sum", "bias", "biasReg", "weight_valid", "mult_valid", "mux_valid", "sigValid", "comboAdd", "BiasAdd", "myinputd", "muxValid_d", "muxValid_f", and "addr".

The code includes several always_ff blocks, which execute on the positive edge of the clock signal. These blocks perform a variety of functions, including loading weight values into memory, calculating the product of the input and weight values, calculating the sum of the product and bias values, and checking if the output should be saturated.

Overall, this code is a functional implementation of a single neuron in a fully connected neural network.

## Weight Memory (W_Mem_[Layer_No.]_[Neuron_No.])

 A memory module is used for storing weights of a particular neuron in a neural network.

The Weight Memory module has several inputs and one output. The inputs include clk, which is the clock signal used to synchronize the module, wen and ren, which are write enable and read enable signals respectively. wadd and radd are the write and read addresses, and win is the input data that is written to the memory. The output is wout, which is the data read from the memory.

The module uses an array mem to store the data. The size of the array is numWeight, which is a parameter passed to the module. The width of the addresses and data are determined by the addressWidth and dataWidth parameters respectively.

This Weight Memory module can be used to store weights of a particular neuron of a neural network and retrieve them as needed for computations.

## Sigmoid Activation function implementation (Sig_ROM)

Sig_ROM module defines a signal ROM (read-only memory) that takes an input x of width inWidth, and outputs a signal out of width dataWidth. The ROM is implemented as an array of 2**inWidth elements, with each element having a width of dataWidth.

The address of the element to be read is determined by y, which is computed based on the value of x. If x is a non-negative number, then y is simply x added to 2**(inWidth-1). If x is negative, then y is x subtracted from 2**(inWidth-1).

The output out is assigned to the value stored in the memory location indexed by y. The memory is declared as logic [dataWidth-1:0] mem [2**inWidth-1:0];.

The always_ff block updates the value of y on each positive edge of the clock clk.

## Rectified Linear Unit Activation Function (ReLU)

The ReLU module implements the Rectified Linear Unit (ReLU) function. The ReLU function takes as input a value and returns either that value (if it is positive) or zero (if it is negative).

The module takes in a clock signal (clk) and an input signal (x) of width 2*dataWidth. It also has a parameter weightIntWidth that determines the number of bits used to represent the integer part of the weights used in the module.

The always_ff block is triggered on the positive edge of the clock signal. It first checks if x is positive using the $signed function. If it is positive, it checks whether any of the most significant weightIntWidth bits of x are set. If they are, it saturates the output to the maximum positive value representable by dataWidth bits (i.e., sets all bits except the sign bit to 1). If none of the most significant weightIntWidth bits are set, it simply outputs the lower dataWidth bits of x.

If x is negative, the module sets the output to 0.

The output of the module is the ReLU function applied to the input signal x, represented by the out output signal of width dataWidth.

# CONCLUSION
A Fully Connected Neural Network is implemented and verified using simulation on Nexys 4 board. The modules used are explained above. The following Neural Network works for MNIST dataset. 

