`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 07:17:06 PM
// Design Name: 
// Module Name: subtractor1
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


module subtractor1(
    input A,
    input B,
    input Cin,
    output Cout,
    output Diffrence
    );
    assign Cout = (A & ~B) | (~A&B);
    assign Diffrence = ( ~A&B);
endmodule
