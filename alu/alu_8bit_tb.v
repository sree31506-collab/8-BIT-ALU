`timescale 1ns/1ps

module alu_8bit_tb;

reg  [7:0] A;
reg  [7:0] B;
reg  [2:0] ALU_Sel;

wire [7:0] Result;
wire       Carry;
wire       Zero;

alu_8bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .Carry(Carry),
    .Zero(Zero)
);

initial begin

    $dumpfile("alu_8bit.vcd");
    $dumpvars(0, alu_8bit_tb);

    $monitor("Time=%0t | A=%h | B=%h | Sel=%b | Result=%h | Carry=%b | Zero=%b",
             $time, A, B, ALU_Sel, Result, Carry, Zero);

    // Addition
    A = 8'h15;
    B = 8'h27;
    ALU_Sel = 3'b000;
    #10;

    // Subtraction
    A = 8'h30;
    B = 8'h10;
    ALU_Sel = 3'b001;
    #10;

    // AND
    A = 8'hF0;
    B = 8'h0F;
    ALU_Sel = 3'b010;
    #10;

    // OR
    A = 8'hF0;
    B = 8'h0F;
    ALU_Sel = 3'b011;
    #10;

    // XOR
    A = 8'hAA;
    B = 8'h55;
    ALU_Sel = 3'b100;
    #10;

    // NOT A
    A = 8'h55;
    B = 8'h00;
    ALU_Sel = 3'b101;
    #10;

    // Increment
    A = 8'h0F;
    B = 8'h00;
    ALU_Sel = 3'b110;
    #10;

    // Decrement
    A = 8'h10;
    B = 8'h00;
    ALU_Sel = 3'b111;
    #10;

    // Carry test
    A = 8'hFF;
    B = 8'h01;
    ALU_Sel = 3'b000;
    #10;

    $finish;

end

endmodule