`timescale 1ns / 1ps
module TopModule(result,Q,addOut,subOut,sign,DataOutput1,AddressA,addressB,IncrementA,rst,clk,Wr_enable,DataInputA,DataInputB,Wr_enableB,IncrementB);

output [7:0] DataOutput1;
output [7:0] result;
output [7:0] Q;
output [7:0] addOut;
output [7:0] subOut;
output sign;
output IncrementA;
output Wr_enableB;
output IncrementB;
output Wr_enable;
output [2:0] AddressA;
output [1:0] addressB;

input rst;
input clk;
input [7:0] DataInputA;
input [7:0] DataInputB;
wire [2:0] AddressA;
wire [1:0] addressB;
wire [7:0] DataOutput1;
wire Wr_enable;
wire IncrementA;
wire Wr_enableB;
wire IncrementB;

controller v (.WEA(Wr_enable),.WEB(Wr_enableB),.IncA(IncrementA),.IncB(IncrementB),.Reset(rst),.clock(clk));
ThreeBitCounter C1 (.AddrA(AddressA), .IncA(IncrementA), .Reset(rst), .clock(clk));
MemoryA a (.DOut1(DataOutput1), .AddrA(AddressA), .WEA(Wr_enable), .DataInA(DataInputA), .clock(clk));
ALU u (.Result(result),.Q(Q),.AddOut(addOut),.SubOut(subOut),.sign(sign),.D(DataOutput1),.clock(clk));
TwoBitCounter C2 (.addrB(addressB),.rst(rst),.clk(clk),.incrB(IncrementB));
MemoryB b (.AddrB(addressB),.WEB(Wr_enableB), .DataInB(DataInputB),.clock(clk));

Endmodule
