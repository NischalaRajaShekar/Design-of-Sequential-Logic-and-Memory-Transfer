`timescale 1ns / 1ps
module MemoryB(AddrB, WEB, DataInB, clock);
    input [1:0] AddrB;
    input WEB;
    input [7:0] DataInB;
    input clock;
    reg [7:0] SRAM [3:0];
    wire [1:0] AddrB;
    wire [7:0] DataInB;
    
    always @ (posedge clock)
    begin
        if (WEB==1)
            SRAM[AddrB] <= DataInB;
    end
endmodule
