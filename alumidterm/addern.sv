`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2016 03:19:14 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
    assign Cout = (A & B) | (Cin & B) |(A & Cin) ;
    assign Sum = A ^ B ^ Cin;
endmodule
