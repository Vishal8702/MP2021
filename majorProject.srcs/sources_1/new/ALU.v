`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Vishal
// 
// Create Date: 23.09.2021 08:20:03
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(

    output [dataWidth] result,
    input [dataWidth] input1, input2,
    input [funct3width] funct3,
    input inverse
    );
    
always@(*)
    case(funct3width)
    begin: ALU
    
    funct3_add_sub : result = a+b;
    funct3_sll     : 





















endmodule
