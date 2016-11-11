`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2016 12:12:59 AM
// Design Name: 
// Module Name: addincrement
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


module addincrement(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
    wire s;
    wire c;
    assign c = (A & B) | (Cin & B) |(A & Cin) ;
    assign s = A ^ B ^ Cin;
    assign Cout = (s & 1) | (c & 1) |(s & c) ;
    assign Sum = s ^ 1 ^ c;
    
endmodule
