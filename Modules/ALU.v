`timescale 1ns / 1ps
module ALU (Result, Q, AddOut, SubOut, sign, D, clock);
    output [7:0] Result;
    output [7:0] Q;
    output [7:0] AddOut;
    output [7:0] SubOut;
    output sign;
    input [7:0] D;
    input clock;
    
    wire [7:0] D;
    wire clock;
    reg [7:0] Q;
    reg sign;
    reg [7:0] addOut;
    reg [7:0] subOut;
    reg [7:0] Result;
    always @ (posedge clock)
    begin
    Q <= D;
    
    if(Q >= D)
    sign <= 0;
    else
    sign <= 1;
    
    addOut <= D+Q;
    subOut <= Q-D;
    
    end
    
    always @ (addOut or subOut or sign)
    begin
    case(sign)
    1:Result <= addOut;
    0:Result <= subOut;
    endcase
    end
endmodule
