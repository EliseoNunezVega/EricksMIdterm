`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 07:50:10 PM
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit(
    input logic op1,
    input logic op2,
    input logic opsel[2:0],
    input logic mode,
    output logic result,
    output logic c_flag,
    output logic z_flag,
    output logic o_flag,
    output logic s_flag
    );
    adder 11(
        input A,
        input B,
        input Cin,
        output Cout,
        output Sum)
endmodule
