`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:
// Design Name: 
// Module Name: tb_FNN
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

`define MaxTestSamples 5

module tb_FNN_New(); 
logic clk;
logic reset;
logic [`dataWidth-1:0] expected;
integer i = 0;
integer t = 0;
integer right=0;
logic [`dataWidth-1:0] in_mem [784:0];
logic [7:0] fileName[23:0];

logic in_data_valid;
logic [`dataWidth-1:0] IN;

logic out_valid;
logic [31:0] OUT;

top_FNN uut( .clk(clk), .reset(reset), .IN(IN), .in_data_valid(in_data_valid), .out_valid(out_valid), .OUT(OUT));

initial 
begin
$sdf_annotate("./FNN_sdf.sdf",tb_FNN_New.uut,,,"MAXIMUM","1:1:1","FROM_MTM");
end

initial 
begin
in_mem[0] =   16'b0;
in_mem[1] =   16'b0;
in_mem[2] =   16'b0;
in_mem[3] =   16'b0;
in_mem[4] =   16'b0;
in_mem[5] =   16'b0;
in_mem[6] =   16'b0;
in_mem[7] =   16'b0;
in_mem[8] =   16'b0;
in_mem[9] =   16'b0;
in_mem[10] =  16'b0;
in_mem[11] =  16'b0;
in_mem[12] =  16'b0;
in_mem[13] =  16'b0;
in_mem[14] =  16'b0;
in_mem[15] =  16'b0;
in_mem[16] =  16'b0;
in_mem[17] =  16'b0;
in_mem[18] =  16'b0;
in_mem[19] =  16'b0;
in_mem[20] =  16'b0;
in_mem[21] =  16'b0;
in_mem[22] =  16'b0;
in_mem[23] =  16'b0;
in_mem[24] =  16'b0;
in_mem[25] =  16'b0;
in_mem[26] =  16'b0;
in_mem[27] =  16'b0;
in_mem[28] =  16'b0;
in_mem[29] =  16'b0;
in_mem[30] =  16'b0;
in_mem[31] =  16'b0;
in_mem[32] =  16'b0;
in_mem[33] =  16'b0;
in_mem[34] =  16'b0;
in_mem[35] =  16'b0;
in_mem[36] =  16'b0;
in_mem[37] =  16'b0;
in_mem[38] =  16'b0;
in_mem[39] =  16'b0;
in_mem[40] =  16'b0;
in_mem[41] =  16'b0;
in_mem[42] =  16'b0;
in_mem[43] =  16'b0;
in_mem[44] =  16'b0;
in_mem[45] =  16'b0;
in_mem[46] =  16'b0;
in_mem[47] =  16'b0;
in_mem[48] =  16'b0;
in_mem[49] =  16'b0;
in_mem[50] =  16'b0;
in_mem[51] =  16'b0;
in_mem[52] =  16'b0;
in_mem[53] =  16'b0;
in_mem[54] =  16'b0;
in_mem[55] =  16'b0;
in_mem[56] =  16'b0;
in_mem[57] =  16'b0;
in_mem[58] =  16'b0;
in_mem[59] =  16'b0;
in_mem[60] =  16'b0;
in_mem[61] =  16'b0;
in_mem[62] =  16'b0;
in_mem[63] =  16'b0;
in_mem[64] =  16'b0;
in_mem[65] =  16'b0;
in_mem[66] =  16'b0;
in_mem[67] =  16'b0;
in_mem[68] =  16'b0;
in_mem[69] =  16'b0;
in_mem[70] =  16'b0;
in_mem[71] =  16'b0;
in_mem[72] =  16'b0;
in_mem[73] =  16'b0;
in_mem[74] =  16'b0;
in_mem[75] =  16'b0;
in_mem[76] =  16'b0;
in_mem[77] =  16'b0;
in_mem[78] =  16'b0;
in_mem[79] =  16'b0;
in_mem[80] =  16'b0;
in_mem[81] =  16'b0;
in_mem[82] =  16'b0;
in_mem[83] =  16'b0;
in_mem[84] =  16'b0;
in_mem[85] =  16'b0;
in_mem[86] =  16'b0;
in_mem[87] =  16'b0;
in_mem[88] =  16'b0;
in_mem[89] =  16'b0;
in_mem[90] =  16'b0;
in_mem[91] =  16'b0;
in_mem[92] =  16'b0;
in_mem[93] =  16'b0;
in_mem[94] =  16'b0;
in_mem[95] =  16'b0;
in_mem[96] =  16'b0;
in_mem[97] =  16'b0;
in_mem[98] =  16'b0;
in_mem[99] =  16'b0;
in_mem[100] = 16'b0;
in_mem[101] = 16'b0;
in_mem[102] = 16'b0;
in_mem[103] = 16'b0;
in_mem[104] = 16'b0;
in_mem[105] = 16'b0;
in_mem[106] = 16'b0;
in_mem[107] = 16'b0;
in_mem[108] = 16'b0;
in_mem[109] = 16'b0;
in_mem[110] = 16'b0;
in_mem[111] = 16'b0;
in_mem[112] = 16'b0;
in_mem[113] = 16'b0;
in_mem[114] = 16'b0;
in_mem[115] = 16'b0;
in_mem[116] = 16'b0;
in_mem[117] = 16'b0;
in_mem[118] = 16'b0;
in_mem[119] = 16'b0;
in_mem[120] = 16'b0;
in_mem[121] = 16'b0;
in_mem[122] = 16'b0;
in_mem[123] = 16'b0;
in_mem[124] = 16'b0;
in_mem[125] = 16'b0;
in_mem[126] = 16'b0;
in_mem[127] = 16'b0;
in_mem[128] = 16'b0;
in_mem[129] = 16'b0;
in_mem[130] = 16'b0;
in_mem[131] = 16'b0;
in_mem[132] = 16'b0;
in_mem[133] = 16'b0;
in_mem[134] = 16'b0;
in_mem[135] = 16'b0;
in_mem[136] = 16'b0;
in_mem[137] = 16'b0;
in_mem[138] = 16'b0;
in_mem[139] = 16'b0;
in_mem[140] = 16'b0;
in_mem[141] = 16'b0;
in_mem[142] = 16'b0;
in_mem[143] = 16'b0;
in_mem[144] = 16'b0;
in_mem[145] = 16'b0;
in_mem[146] = 16'b0;
in_mem[147] = 16'b0;
in_mem[148] = 16'b0;
in_mem[149] = 16'b0;
in_mem[150] = 16'b0;
in_mem[151] = 16'b0;
in_mem[152] = 16'b0;
in_mem[153] = 16'b0;
in_mem[154] = 16'b0;
in_mem[155] = 16'b0;
in_mem[156] = 16'b0;
in_mem[157] = 16'b0;
in_mem[158] = 16'b0;
in_mem[159] = 16'b0;
in_mem[160] = 16'b0;
in_mem[161] = 16'b0;
in_mem[162] = 16'b0;
in_mem[163] = 16'b0;
in_mem[164] = 16'b0;
in_mem[165] = 16'b0;
in_mem[166] = 16'b0;
in_mem[167] = 16'b0;
in_mem[168] = 16'b0;
in_mem[169] = 16'b0;
in_mem[170] = 16'b0;
in_mem[171] = 16'b0;
in_mem[172] = 16'b0;
in_mem[173] = 16'b0;
in_mem[174] = 16'b0;
in_mem[175] = 16'b0;
in_mem[176] = 16'b0;
in_mem[177] = 16'b0;
in_mem[178] = 16'b0;
in_mem[179] = 16'b0;
in_mem[180] = 16'b0;
in_mem[181] = 16'b0;
in_mem[182] = 16'b0;
in_mem[183] = 16'b0;
in_mem[184] = 16'b0;
in_mem[185] = 16'b0;
in_mem[186] = 16'b0;
in_mem[187] = 16'b0;
in_mem[188] = 16'b0;
in_mem[189] = 16'b0;
in_mem[190] = 16'b0;
in_mem[191] = 16'b0;
in_mem[192] = 16'b0;
in_mem[193] = 16'b0;
in_mem[194] = 16'b0;
in_mem[195] = 16'b0;
in_mem[196] = 16'b0;
in_mem[197] = 16'b0;
in_mem[198] = 16'b0;
in_mem[199] = 16'b0;
in_mem[200] = 16'b0;
in_mem[201] = 16'b0;
in_mem[202] = 16'b10101000000000;
in_mem[203] = 16'b101110010000000;
in_mem[204] = 16'b100111110000000;
in_mem[205] = 16'b100101110000000;
in_mem[206] = 16'b1111000000000;
in_mem[207] = 16'b1001000000000;
in_mem[208] = 16'b0;
in_mem[209] = 16'b0;
in_mem[210] = 16'b0;
in_mem[211] = 16'b0;
in_mem[212] = 16'b0;
in_mem[213] = 16'b0;
in_mem[214] = 16'b0;
in_mem[215] = 16'b0;
in_mem[216] = 16'b0;
in_mem[217] = 16'b0;
in_mem[218] = 16'b0;
in_mem[219] = 16'b0;
in_mem[220] = 16'b0;
in_mem[221] = 16'b0;
in_mem[222] = 16'b0;
in_mem[223] = 16'b0;
in_mem[224] = 16'b0;
in_mem[225] = 16'b0;
in_mem[226] = 16'b0;
in_mem[227] = 16'b0;
in_mem[228] = 16'b0;
in_mem[229] = 16'b0;
in_mem[230] = 16'b110111100000000;
in_mem[231] = 16'b111111100000000;
in_mem[232] = 16'b111111100000000;
in_mem[233] = 16'b111111100000000;
in_mem[234] = 16'b111111100000000;
in_mem[235] = 16'b111100010000000;
in_mem[236] = 16'b110001100000000;
in_mem[237] = 16'b110001100000000;
in_mem[238] = 16'b110001100000000;
in_mem[239] = 16'b110001100000000;
in_mem[240] = 16'b110001100000000;
in_mem[241] = 16'b110001100000000;
in_mem[242] = 16'b110001100000000;
in_mem[243] = 16'b110001100000000;
in_mem[244] = 16'b101010100000000;
in_mem[245] = 16'b1101000000000;
in_mem[246] = 16'b0;
in_mem[247] = 16'b0;
in_mem[248] = 16'b0;
in_mem[249] = 16'b0;
in_mem[250] = 16'b0;
in_mem[251] = 16'b0;
in_mem[252] = 16'b0;
in_mem[253] = 16'b0;
in_mem[254] = 16'b0;
in_mem[255] = 16'b0;
in_mem[256] = 16'b0;
in_mem[257] = 16'b0;
in_mem[258] = 16'b10000110000000;
in_mem[259] = 16'b11100100000000;
in_mem[260] = 16'b10010000000000;
in_mem[261] = 16'b11100100000000;
in_mem[262] = 16'b101000110000000;
in_mem[263] = 16'b111000110000000;
in_mem[264] = 16'b111111100000000;
in_mem[265] = 16'b111000010000000;
in_mem[266] = 16'b111111100000000;
in_mem[267] = 16'b111111100000000;
in_mem[268] = 16'b111111100000000;
in_mem[269] = 16'b111110100000000;
in_mem[270] = 16'b111001010000000;
in_mem[271] = 16'b111111100000000;
in_mem[272] = 16'b111111100000000;
in_mem[273] = 16'b100011000000000;
in_mem[274] = 16'b0;
in_mem[275] = 16'b0;
in_mem[276] = 16'b0;
in_mem[277] = 16'b0;
in_mem[278] = 16'b0;
in_mem[279] = 16'b0;
in_mem[280] = 16'b0;
in_mem[281] = 16'b0;
in_mem[282] = 16'b0;
in_mem[283] = 16'b0;
in_mem[284] = 16'b0;
in_mem[285] = 16'b0;
in_mem[286] = 16'b0;
in_mem[287] = 16'b0;
in_mem[288] = 16'b0;
in_mem[289] = 16'b0;
in_mem[290] = 16'b0;
in_mem[291] = 16'b100010000000;
in_mem[292] = 16'b10000100000000;
in_mem[293] = 16'b11100000000;
in_mem[294] = 16'b10000110000000;
in_mem[295] = 16'b10000110000000;
in_mem[296] = 16'b10000110000000;
in_mem[297] = 16'b1110110000000;
in_mem[298] = 16'b101010000000;
in_mem[299] = 16'b111011000000000;
in_mem[300] = 16'b111111100000000;
in_mem[301] = 16'b11010100000000;
in_mem[302] = 16'b0;
in_mem[303] = 16'b0;
in_mem[304] = 16'b0;
in_mem[305] = 16'b0;
in_mem[306] = 16'b0;
in_mem[307] = 16'b0;
in_mem[308] = 16'b0;
in_mem[309] = 16'b0;
in_mem[310] = 16'b0;
in_mem[311] = 16'b0;
in_mem[312] = 16'b0;
in_mem[313] = 16'b0;
in_mem[314] = 16'b0;
in_mem[315] = 16'b0;
in_mem[316] = 16'b0;
in_mem[317] = 16'b0;
in_mem[318] = 16'b0;
in_mem[319] = 16'b0;
in_mem[320] = 16'b0;
in_mem[321] = 16'b0;
in_mem[322] = 16'b0;
in_mem[323] = 16'b0;
in_mem[324] = 16'b0;
in_mem[325] = 16'b0;
in_mem[326] = 16'b10100110000000;
in_mem[327] = 16'b111111010000000;
in_mem[328] = 16'b110100010000000;
in_mem[329] = 16'b100100000000;
in_mem[330] = 16'b0;
in_mem[331] = 16'b0;
in_mem[332] = 16'b0;
in_mem[333] = 16'b0;
in_mem[334] = 16'b0;
in_mem[335] = 16'b0;
in_mem[336] = 16'b0;
in_mem[337] = 16'b0;
in_mem[338] = 16'b0;
in_mem[339] = 16'b0;
in_mem[340] = 16'b0;
in_mem[341] = 16'b0;
in_mem[342] = 16'b0;
in_mem[343] = 16'b0;
in_mem[344] = 16'b0;
in_mem[345] = 16'b0;
in_mem[346] = 16'b0;
in_mem[347] = 16'b0;
in_mem[348] = 16'b0;
in_mem[349] = 16'b0;
in_mem[350] = 16'b0;
in_mem[351] = 16'b0;
in_mem[352] = 16'b0;
in_mem[353] = 16'b101100000000;
in_mem[354] = 16'b111010010000000;
in_mem[355] = 16'b111111110000000;
in_mem[356] = 16'b10100110000000;
in_mem[357] = 16'b0;
in_mem[358] = 16'b0;
in_mem[359] = 16'b0;
in_mem[360] = 16'b0;
in_mem[361] = 16'b0;
in_mem[362] = 16'b0;
in_mem[363] = 16'b0;
in_mem[364] = 16'b0;
in_mem[365] = 16'b0;
in_mem[366] = 16'b0;
in_mem[367] = 16'b0;
in_mem[368] = 16'b0;
in_mem[369] = 16'b0;
in_mem[370] = 16'b0;
in_mem[371] = 16'b0;
in_mem[372] = 16'b0;
in_mem[373] = 16'b0;
in_mem[374] = 16'b0;
in_mem[375] = 16'b0;
in_mem[376] = 16'b0;
in_mem[377] = 16'b0;
in_mem[378] = 16'b0;
in_mem[379] = 16'b0;
in_mem[380] = 16'b0;
in_mem[381] = 16'b100000010000000;
in_mem[382] = 16'b111111100000000;
in_mem[383] = 16'b111011100000000;
in_mem[384] = 16'b1011000000000;
in_mem[385] = 16'b0;
in_mem[386] = 16'b0;
in_mem[387] = 16'b0;
in_mem[388] = 16'b0;
in_mem[389] = 16'b0;
in_mem[390] = 16'b0;
in_mem[391] = 16'b0;
in_mem[392] = 16'b0;
in_mem[393] = 16'b0;
in_mem[394] = 16'b0;
in_mem[395] = 16'b0;
in_mem[396] = 16'b0;
in_mem[397] = 16'b0;
in_mem[398] = 16'b0;
in_mem[399] = 16'b0;
in_mem[400] = 16'b0;
in_mem[401] = 16'b0;
in_mem[402] = 16'b0;
in_mem[403] = 16'b0;
in_mem[404] = 16'b0;
in_mem[405] = 16'b0;
in_mem[406] = 16'b0;
in_mem[407] = 16'b0;
in_mem[408] = 16'b1110110000000;
in_mem[409] = 16'b111110010000000;
in_mem[410] = 16'b111111100000000;
in_mem[411] = 16'b1111100000000;
in_mem[412] = 16'b0;
in_mem[413] = 16'b0;
in_mem[414] = 16'b0;
in_mem[415] = 16'b0;
in_mem[416] = 16'b0;
in_mem[417] = 16'b0;
in_mem[418] = 16'b0;
in_mem[419] = 16'b0;
in_mem[420] = 16'b0;
in_mem[421] = 16'b0;
in_mem[422] = 16'b0;
in_mem[423] = 16'b0;
in_mem[424] = 16'b0;
in_mem[425] = 16'b0;
in_mem[426] = 16'b0;
in_mem[427] = 16'b0;
in_mem[428] = 16'b0;
in_mem[429] = 16'b0;
in_mem[430] = 16'b0;
in_mem[431] = 16'b0;
in_mem[432] = 16'b0;
in_mem[433] = 16'b0;
in_mem[434] = 16'b0;
in_mem[435] = 16'b0;
in_mem[436] = 16'b100001010000000;
in_mem[437] = 16'b111111100000000;
in_mem[438] = 16'b101110110000000;
in_mem[439] = 16'b1010000000;
in_mem[440] = 16'b0;
in_mem[441] = 16'b0;
in_mem[442] = 16'b0;
in_mem[443] = 16'b0;
in_mem[444] = 16'b0;
in_mem[445] = 16'b0;
in_mem[446] = 16'b0;
in_mem[447] = 16'b0;
in_mem[448] = 16'b0;
in_mem[449] = 16'b0;
in_mem[450] = 16'b0;
in_mem[451] = 16'b0;
in_mem[452] = 16'b0;
in_mem[453] = 16'b0;
in_mem[454] = 16'b0;
in_mem[455] = 16'b0;
in_mem[456] = 16'b0;
in_mem[457] = 16'b0;
in_mem[458] = 16'b0;
in_mem[459] = 16'b0;
in_mem[460] = 16'b0;
in_mem[461] = 16'b0;
in_mem[462] = 16'b0;
in_mem[463] = 16'b10010000000;
in_mem[464] = 16'b110011010000000;
in_mem[465] = 16'b111110000000000;
in_mem[466] = 16'b1110100000000;
in_mem[467] = 16'b0;
in_mem[468] = 16'b0;
in_mem[469] = 16'b0;
in_mem[470] = 16'b0;
in_mem[471] = 16'b0;
in_mem[472] = 16'b0;
in_mem[473] = 16'b0;
in_mem[474] = 16'b0;
in_mem[475] = 16'b0;
in_mem[476] = 16'b0;
in_mem[477] = 16'b0;
in_mem[478] = 16'b0;
in_mem[479] = 16'b0;
in_mem[480] = 16'b0;
in_mem[481] = 16'b0;
in_mem[482] = 16'b0;
in_mem[483] = 16'b0;
in_mem[484] = 16'b0;
in_mem[485] = 16'b0;
in_mem[486] = 16'b0;
in_mem[487] = 16'b0;
in_mem[488] = 16'b0;
in_mem[489] = 16'b0;
in_mem[490] = 16'b0;
in_mem[491] = 16'b11111100000000;
in_mem[492] = 16'b111111100000000;
in_mem[493] = 16'b101101100000000;
in_mem[494] = 16'b0;
in_mem[495] = 16'b0;
in_mem[496] = 16'b0;
in_mem[497] = 16'b0;
in_mem[498] = 16'b0;
in_mem[499] = 16'b0;
in_mem[500] = 16'b0;
in_mem[501] = 16'b0;
in_mem[502] = 16'b0;
in_mem[503] = 16'b0;
in_mem[504] = 16'b0;
in_mem[505] = 16'b0;
in_mem[506] = 16'b0;
in_mem[507] = 16'b0;
in_mem[508] = 16'b0;
in_mem[509] = 16'b0;
in_mem[510] = 16'b0;
in_mem[511] = 16'b0;
in_mem[512] = 16'b0;
in_mem[513] = 16'b0;
in_mem[514] = 16'b0;
in_mem[515] = 16'b0;
in_mem[516] = 16'b0;
in_mem[517] = 16'b0;
in_mem[518] = 16'b10010110000000;
in_mem[519] = 16'b111110110000000;
in_mem[520] = 16'b111100000000000;
in_mem[521] = 16'b1110010000000;
in_mem[522] = 16'b0;
in_mem[523] = 16'b0;
in_mem[524] = 16'b0;
in_mem[525] = 16'b0;
in_mem[526] = 16'b0;
in_mem[527] = 16'b0;
in_mem[528] = 16'b0;
in_mem[529] = 16'b0;
in_mem[530] = 16'b0;
in_mem[531] = 16'b0;
in_mem[532] = 16'b0;
in_mem[533] = 16'b0;
in_mem[534] = 16'b0;
in_mem[535] = 16'b0;
in_mem[536] = 16'b0;
in_mem[537] = 16'b0;
in_mem[538] = 16'b0;
in_mem[539] = 16'b0;
in_mem[540] = 16'b0;
in_mem[541] = 16'b0;
in_mem[542] = 16'b0;
in_mem[543] = 16'b0;
in_mem[544] = 16'b0;
in_mem[545] = 16'b100110000000;
in_mem[546] = 16'b110111010000000;
in_mem[547] = 16'b111111100000000;
in_mem[548] = 16'b101001100000000;
in_mem[549] = 16'b0;
in_mem[550] = 16'b0;
in_mem[551] = 16'b0;
in_mem[552] = 16'b0;
in_mem[553] = 16'b0;
in_mem[554] = 16'b0;
in_mem[555] = 16'b0;
in_mem[556] = 16'b0;
in_mem[557] = 16'b0;
in_mem[558] = 16'b0;
in_mem[559] = 16'b0;
in_mem[560] = 16'b0;
in_mem[561] = 16'b0;
in_mem[562] = 16'b0;
in_mem[563] = 16'b0;
in_mem[564] = 16'b0;
in_mem[565] = 16'b0;
in_mem[566] = 16'b0;
in_mem[567] = 16'b0;
in_mem[568] = 16'b0;
in_mem[569] = 16'b0;
in_mem[570] = 16'b0;
in_mem[571] = 16'b0;
in_mem[572] = 16'b110000000;
in_mem[573] = 16'b110010110000000;
in_mem[574] = 16'b111111100000000;
in_mem[575] = 16'b110110110000000;
in_mem[576] = 16'b1000110000000;
in_mem[577] = 16'b0;
in_mem[578] = 16'b0;
in_mem[579] = 16'b0;
in_mem[580] = 16'b0;
in_mem[581] = 16'b0;
in_mem[582] = 16'b0;
in_mem[583] = 16'b0;
in_mem[584] = 16'b0;
in_mem[585] = 16'b0;
in_mem[586] = 16'b0;
in_mem[587] = 16'b0;
in_mem[588] = 16'b0;
in_mem[589] = 16'b0;
in_mem[590] = 16'b0;
in_mem[591] = 16'b0;
in_mem[592] = 16'b0;
in_mem[593] = 16'b0;
in_mem[594] = 16'b0;
in_mem[595] = 16'b0;
in_mem[596] = 16'b0;
in_mem[597] = 16'b0;
in_mem[598] = 16'b0;
in_mem[599] = 16'b0;
in_mem[600] = 16'b1001100000000;
in_mem[601] = 16'b111111100000000;
in_mem[602] = 16'b111111100000000;
in_mem[603] = 16'b10011010000000;
in_mem[604] = 16'b0;
in_mem[605] = 16'b0;
in_mem[606] = 16'b0;
in_mem[607] = 16'b0;
in_mem[608] = 16'b0;
in_mem[609] = 16'b0;
in_mem[610] = 16'b0;
in_mem[611] = 16'b0;
in_mem[612] = 16'b0;
in_mem[613] = 16'b0;
in_mem[614] = 16'b0;
in_mem[615] = 16'b0;
in_mem[616] = 16'b0;
in_mem[617] = 16'b0;
in_mem[618] = 16'b0;
in_mem[619] = 16'b0;
in_mem[620] = 16'b0;
in_mem[621] = 16'b0;
in_mem[622] = 16'b0;
in_mem[623] = 16'b0;
in_mem[624] = 16'b0;
in_mem[625] = 16'b0;
in_mem[626] = 16'b0;
in_mem[627] = 16'b111110000000;
in_mem[628] = 16'b111000000000000;
in_mem[629] = 16'b111111100000000;
in_mem[630] = 16'b11100110000000;
in_mem[631] = 16'b10000000;
in_mem[632] = 16'b0;
in_mem[633] = 16'b0;
in_mem[634] = 16'b0;
in_mem[635] = 16'b0;
in_mem[636] = 16'b0;
in_mem[637] = 16'b0;
in_mem[638] = 16'b0;
in_mem[639] = 16'b0;
in_mem[640] = 16'b0;
in_mem[641] = 16'b0;
in_mem[642] = 16'b0;
in_mem[643] = 16'b0;
in_mem[644] = 16'b0;
in_mem[645] = 16'b0;
in_mem[646] = 16'b0;
in_mem[647] = 16'b0;
in_mem[648] = 16'b0;
in_mem[649] = 16'b0;
in_mem[650] = 16'b0;
in_mem[651] = 16'b0;
in_mem[652] = 16'b0;
in_mem[653] = 16'b0;
in_mem[654] = 16'b0;
in_mem[655] = 16'b100001010000000;
in_mem[656] = 16'b111111100000000;
in_mem[657] = 16'b111111100000000;
in_mem[658] = 16'b1101000000000;
in_mem[659] = 16'b0;
in_mem[660] = 16'b0;
in_mem[661] = 16'b0;
in_mem[662] = 16'b0;
in_mem[663] = 16'b0;
in_mem[664] = 16'b0;
in_mem[665] = 16'b0;
in_mem[666] = 16'b0;
in_mem[667] = 16'b0;
in_mem[668] = 16'b0;
in_mem[669] = 16'b0;
in_mem[670] = 16'b0;
in_mem[671] = 16'b0;
in_mem[672] = 16'b0;
in_mem[673] = 16'b0;
in_mem[674] = 16'b0;
in_mem[675] = 16'b0;
in_mem[676] = 16'b0;
in_mem[677] = 16'b0;
in_mem[678] = 16'b0;
in_mem[679] = 16'b0;
in_mem[680] = 16'b0;
in_mem[681] = 16'b0;
in_mem[682] = 16'b1111010000000;
in_mem[683] = 16'b111100100000000;
in_mem[684] = 16'b111111100000000;
in_mem[685] = 16'b111111100000000;
in_mem[686] = 16'b1101000000000;
in_mem[687] = 16'b0;
in_mem[688] = 16'b0;
in_mem[689] = 16'b0;
in_mem[690] = 16'b0;
in_mem[691] = 16'b0;
in_mem[692] = 16'b0;
in_mem[693] = 16'b0;
in_mem[694] = 16'b0;
in_mem[695] = 16'b0;
in_mem[696] = 16'b0;
in_mem[697] = 16'b0;
in_mem[698] = 16'b0;
in_mem[699] = 16'b0;
in_mem[700] = 16'b0;
in_mem[701] = 16'b0;
in_mem[702] = 16'b0;
in_mem[703] = 16'b0;
in_mem[704] = 16'b0;
in_mem[705] = 16'b0;
in_mem[706] = 16'b0;
in_mem[707] = 16'b0;
in_mem[708] = 16'b0;
in_mem[709] = 16'b0;
in_mem[710] = 16'b11110010000000;
in_mem[711] = 16'b111111100000000;
in_mem[712] = 16'b111111100000000;
in_mem[713] = 16'b110110110000000;
in_mem[714] = 16'b1010000000000;
in_mem[715] = 16'b0;
in_mem[716] = 16'b0;
in_mem[717] = 16'b0;
in_mem[718] = 16'b0;
in_mem[719] = 16'b0;
in_mem[720] = 16'b0;
in_mem[721] = 16'b0;
in_mem[722] = 16'b0;
in_mem[723] = 16'b0;
in_mem[724] = 16'b0;
in_mem[725] = 16'b0;
in_mem[726] = 16'b0;
in_mem[727] = 16'b0;
in_mem[728] = 16'b0;
in_mem[729] = 16'b0;
in_mem[730] = 16'b0;
in_mem[731] = 16'b0;
in_mem[732] = 16'b0;
in_mem[733] = 16'b0;
in_mem[734] = 16'b0;
in_mem[735] = 16'b0;
in_mem[736] = 16'b0;
in_mem[737] = 16'b0;
in_mem[738] = 16'b11110010000000;
in_mem[739] = 16'b111111100000000;
in_mem[740] = 16'b110011110000000;
in_mem[741] = 16'b100100000000;
in_mem[742] = 16'b0;
in_mem[743] = 16'b0;
in_mem[744] = 16'b0;
in_mem[745] = 16'b0;
in_mem[746] = 16'b0;
in_mem[747] = 16'b0;
in_mem[748] = 16'b0;
in_mem[749] = 16'b0;
in_mem[750] = 16'b0;
in_mem[751] = 16'b0;
in_mem[752] = 16'b0;
in_mem[753] = 16'b0;
in_mem[754] = 16'b0;
in_mem[755] = 16'b0;
in_mem[756] = 16'b0;
in_mem[757] = 16'b0;
in_mem[758] = 16'b0;
in_mem[759] = 16'b0;
in_mem[760] = 16'b0;
in_mem[761] = 16'b0;
in_mem[762] = 16'b0;
in_mem[763] = 16'b0;
in_mem[764] = 16'b0;
in_mem[765] = 16'b0;
in_mem[766] = 16'b0;
in_mem[767] = 16'b0;
in_mem[768] = 16'b0;
in_mem[769] = 16'b0;
in_mem[770] = 16'b0;
in_mem[771] = 16'b0;
in_mem[772] = 16'b0;
in_mem[773] = 16'b0;
in_mem[774] = 16'b0;
in_mem[775] = 16'b0;
in_mem[776] = 16'b0;
in_mem[777] = 16'b0;
in_mem[778] = 16'b0;
in_mem[779] = 16'b0;
in_mem[780] = 16'b0;
in_mem[781] = 16'b0;
in_mem[782] = 16'b0;
in_mem[783] = 16'b0;
in_mem[784] = 16'b111;
end

initial 
begin
    clk = 0;
    forever #5 clk = ~clk;
end

function [7:0] to_ascii;
      input integer a;
      begin
        to_ascii = a+48;
      end
endfunction

task sendData();
    begin
//        $readmemb(fileName, in_mem);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
	#5000;
        for (t=0; t <784; t=t+1) begin
            @(posedge clk);
            IN <= in_mem[t];
            in_data_valid <= 1;
            
        end 
        @(posedge clk);
        in_data_valid <= 0;
        expected = in_mem[t];
        
        end
endtask

integer testDataCount;
integer testDataCount_int;

initial
    begin
        reset = 1;
        in_data_valid = 0;
        #100;
        reset = 0;
        #100

        for(testDataCount=0;testDataCount<`MaxTestSamples;testDataCount=testDataCount+1)
        begin
            testDataCount_int = testDataCount;
            fileName[0] = "t";
            fileName[1] = "x";
            fileName[2] = "t";
            fileName[3] = ".";
            fileName[4] = "0";
            fileName[5] = "0";
            fileName[6] = "0";
            fileName[7] = "0";
            i=0;
            while(testDataCount_int != 0)
            begin
                fileName[i+4] = to_ascii(testDataCount_int%10);
                testDataCount_int = testDataCount_int/10;
                i=i+1;
            end 
            fileName[8] = "_";
            fileName[9] = "a";
            fileName[10] = "t";
            fileName[11] = "a";
            fileName[12] = "d";
            fileName[13] = "_";
            fileName[14] = "t";
            fileName[15] = "s";
            fileName[16] = "e";
            fileName[17] = "t";
            sendData();
            @(posedge out_valid);
            if(OUT == expected)
                right = right+1;
            $display("%0d. Accuracy: %f, Detected number: %0x, Expected: %x",testDataCount+1,right*100.0/(testDataCount+1),OUT,expected);
        end
        $display("Accuracy: %f",right*100.0/testDataCount);
        $stop;
end
endmodule


