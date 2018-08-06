`timescale 1ns / 1ps
module tb_controller;
    reg rst;
    reg clk;
    reg [7:0] DataInputA;
    wire [7:0] DataOutput1;
    wire [2:0] AddressA;
    wire [7:0] result;
    wire [7:0] addOut;
    wire [7:0] Q;
    wire [7:0] subOut;
    wire sign;
    wire [0:1] addressB;
    wire Wr_enable;
    wire Wr_enableB;
    wire IncrementB;
    wire IncrementA;

    TopModule T (result,Q,addOut,subOut,sign,DataOutput1,AddressA,addressB,IncrementA,rst,clk,Wr_enable,DataInputA,Wr_enableB,IncrementB);
    
    initial begin
     clk <= 0; rst <= 0; 
     #10 DataInputA <= 8'b00010100;
     #10 DataInputA <= 8'b00010101;
     #10 DataInputA <= 8'b10101010;
     #10 DataInputA <= 8'b11110000;
     #10 DataInputA <= 8'b00100010;
     #10 DataInputA <= 8'b11001100;
     #10 DataInputA <= 8'b01110110;
     #10 DataInputA <= 8'b00100100;   
     end 

    always
    begin
        #5 clk <= ~clk;
    end 
endmodule
