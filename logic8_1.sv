`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 07:29:58 PM
// Design Name: 
// Module Name: logic8_1
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


module logic8_1(
    input op1,
    input op2,
    input cin,
    input [2:0] opsel,
    input mode,
    output out,
    output result
    );
    
    logic temp5, temp6, temp7, temp8, temp9, temp10;
    
    andop l1 (
                .a(op1),
                .b(op2),
                .out(temp5)
                );
    
    xorop l2 (
                .a(op1),
                .b(op2),
                .out(temp7)
                );
   
    orop l3 (
                .a(op1),
                .b(op2),
                .out(temp6)
                );                
                
    compop l4 (
                .a(op1),
                .out(temp8)
                );

    lshiftop l5 (
                .a(op1),
                .cin(cin),
                .out(temp9)
                );
    
    mux8_1 l6 (
                .a(temp5),
                .b(temp6),
                .c(temp7),
                .d(temp8),
                .e(temp9),
                .f(z),
                .g(z),
                .h(z),
                .sel(opsel[2:0]),
                .out(temp10)
                
                );
endmodule
