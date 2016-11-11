`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 10:13:20 PM
// Design Name: 
// Module Name: Decrement
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


module Decrement(
    input A,
    output Y,
    output Cout
    ); 
    assign Y = A - 1'b1;
    assign Cout = (Y == 1'b1)? 1'b1 : 1'b0;
endmodule
