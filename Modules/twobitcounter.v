`timescale 1ns / 1ps 
module ThreeBitCounter(AddrA, IncA,Reset, clock);
    output [2:0] AddrA;
    input IncA;
    input Reset;
    input clock;
    reg [2:0] AddrA;
    
    always @ (posedge clock)
    begin
        if (Reset == 1)
            AddrA <= 3'b000;
        else if (IncA == 1)
            AddrA <= AddrA+1;
    end 
endmodule
