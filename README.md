# Verilog ALU

A Verilog HDL implementation of a 16-bit Arithmetic Logic Unit (ALU) supporting arithmetic, logical, shift, and buffer operations.

## Project Description

This project implements a 16-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic and logical operations on two 8-bit input operands based on a 4-bit command input. The design is written in Verilog HDL and verified using a testbench in ModelSim.

## Features

- Arithmetic Operations
  - Addition
  - Subtraction
  - Multiplication
  - Division
  - Increment
  - Decrement

- Shift Operations
  - Shift Left
  - Shift Right

- Logical Operations
  - AND
  - OR
  - NOT
  - NAND
  - NOR
  - XOR
  - XNOR
  - Buffer

## Inputs

| Signal   | Width    | Description      |
|----------|----------|------------------|
|    a     | 8-bit    | Operand A        |
|    b     | 8-bit    | Operand B        |
|  enable  | 1-bit    | Enable Signal    |
|  command | 4-bit    | Operation Select |

## Output

| Signal   | Width    | Description |
|----------|----------|-------------|
| d_out    | 16-bit   | ALU Result  |

## Supported Commands

| Command  | Operation  |
|----------|------------|
|   0000   | ADD        |
|   0001   | SUB        |
|   0010   | MUL        |
|   0011   | DIV        |
|   0100   | INC        |
|   0101   | DEC        |
|   0110   | SHL        |
|   0111   | SHR        |
|   1000   | AND        |
|   1001   | OR         |
|   1010   | NOT        |
|   1011   | NAND       |
|   1100   | NOR        |
|   1101   | XOR        |
|   1110   | XNOR       |
|   1111   | BUF        |

## Tools Used

- Verilog HDL
- ModelSim
- VS Code
- Git
- GitHub

## Simulation

The design functionality is verified using a Verilog testbench (`alu_tb.v`) and simulated in ModelSim.

## Author

Siva P

B.E. Electrical and Electronics Engineering

RTL Design and Verification Enthusiast