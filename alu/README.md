# 8-Bit ALU Using Verilog

## Description

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

An ALU is a digital circuit that performs arithmetic and logical operations on binary data. The ALU designed in this project accepts two 8-bit inputs and a 3-bit operation-select signal.

The project includes the Verilog RTL design, a testbench, and simulation files.

## Features

The 8-bit ALU supports the following operations:

| ALU_Sel | Operation | Description |
|--------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A AND B |
| 011 | OR | A OR B |
| 100 | XOR | A XOR B |
| 101 | NOT | NOT A |
| 110 | INC | A + 1 |
| 111 | DEC | A - 1 |

## Inputs

- `A` - 8-bit input
- `B` - 8-bit input
- `ALU_Sel` - 3-bit operation selector

## Outputs

- `Result` - 8-bit ALU result
- `Carry` - Carry/borrow indication
- `Zero` - Indicates whether the result is zero

## Project Structure

```text
8-bit-ALU-Verilog/
│
├── README.md
├── src/
│   └── alu_8bit.v
│
├── testbench/
│   └── alu_8bit_tb.v
│
└── simulation/
    └── simulation_output.txt