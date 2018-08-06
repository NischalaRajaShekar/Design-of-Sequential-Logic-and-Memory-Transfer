`timescale 1ns / 1ps
module controller(WEA,WEB,IncA,IncB,rst,clk);
output WEA;
output WEB;
output IncA;
output IncB;
input rst;
input clk;

reg [4:0]nstate,pstate;
reg IncA;
reg IncB;
reg WEA;
reg WEB;
parameter s0 = 5'b00000,s1 = 5'b00001,s2 = 5'b00010,s3 = 5'b00011,s4 = 5'b00100,s5 = 5'b00101,s6 = 5'b00110,s7 = 5'b00111,s8 = 5'b01000,s9 = 5'b01001,s10 = 5'b01010;
parameter s11 = 5'b01011,s12 = 5'b01100,s13 = 5'b01101,s14 = 5'b01110,s15 = 5'b01111,s16 = 5'b10000,s17 = 5'b10001,s18 = 5'b10010,s19 = 5'b10011,s20 = 5'b10100;

always @ (rst or pstate)
begin

case (pstate)
s0: begin
if(rst == 0)
nstate <= s1;
else
nstate <= s0;
end

s1: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s2;
end
else
nstate <= s0;
end

s2: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s3;
end
else
nstate <= s0;
end

s3: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s4;
end
else
nstate <= s0;
end

s4: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s5;
end
else
nstate <= s0;
end

s5: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s6;
end
else
nstate <= s0;
end

s6: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s7;
end
else
nstate <= s0;
end

s7: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s8;
end
else
nstate <= s0;
end

s8: begin
if(rst == 0)
begin
WEA <= 1;
IncA <= 1;
nstate <= s9;
end
else
nstate <= s0;
end

s9: begin
if(rst == 0)
begin
WEA <= 0;
IncA <= 1;
nstate <= s10;
end
else
nstate <= s0;
end

s10: begin
if(rst == 0)
begin
IncA <= 1;
nstate <= s11;
end
else
nstate <= s0;
end

s11: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 0;
IncB <= 0;
nstate <= s12;
end
else
nstate <= s0;
end

s12: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 1;
IncB <= 0;
nstate <= s13;
end
else
nstate <= s0;
end

s13: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 0;
IncB <= 1;
nstate <= s14;
end
else
nstate <= s0;
end

s14: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 1;
IncB <= 0;
nstate <= s15;
end
else
nstate <= s0;
end

s15: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 0;
IncB <= 1;
nstate <= s16;
end
else
nstate <= s0;
end

s16: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 1;
IncB <= 0;
nstate <= s17;
end
else
nstate <= s0;
end

s17: begin
if(rst == 0)
begin
IncA <= 1;
WEB <= 0;
IncB <= 1;
nstate <= s18;
end
else
nstate <= s0;
end

s18: begin
if(rst == 0)
begin
WEA <= 0;
IncA <= 1;
IncB <= 0;
WEB <= 1;
nstate <= s0;
end
else
nstate <= s0;
end

endcase
end

always @(posedge clk)
begin
if(rst == 1)
pstate <= s0;
else
pstate <= nstate;
end

initial
begin
pstate <= 5'b00000;
WEB <= 0;
WEA <= 0;
IncA <= 0;
IncB <= 0;
end
endmodule
