`timescale 1ns / 1ps
module TwoBitCounter(addrB,rst,clk,incrB);
output [1:0] addrB;
input rst;
input clk;
input incrB;

reg [1:0] addrB;

always @ (posedge clk)
begin
if(incrB == 1)
addrB <= addrB+1;
end
initial
begin
addrB <= 2'b00;
end
endmodule
