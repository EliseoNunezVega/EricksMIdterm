`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 11:29:54 PM
// Design Name: 
// Module Name: sum
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


module sum(
    input A,
    input B,
    input Cin,
    output Cout,
    output Out
    );
    wire d;
    wire c;
    assign c = ((~A)*B)+(B*Cin)+((~A)*Cin);
    assign d =A^B^Cin ;
    assign Cout = (d & 1) | (c & 1) |(d & c) ;
    assign Out = d ^ 1 ^ c;
    
endmodule
