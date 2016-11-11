`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 10:16:22 PM
// Design Name: 
// Module Name: Increment1
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


module Increment1(
    input A,
    output Cout,
    output Y
    );
        assign Y = A + 1'b1;
    assign Cout = (Y == 1'b0)? 1'b1 : 1'b0;
endmodule
