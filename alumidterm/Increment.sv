`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 10:05:14 PM
// Design Name: 
// Module Name: Increment
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


module Increment(
    input A,
    output Y
    );
    wire Cout; 
    assign Y = A + 1'b1;
    assign Cout = (Y == 1'b0)? 1'b1 : 1'b0;
    
endmodule
