`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2016 12:01:43 PM
// Design Name: 
// Module Name: Mux1_21
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


module Mux1_21(
    input a,
    input b,
    input MUXsel1,
    output OperandB
    );
    
    assign OperandB = ((~MUXsel1)&a) | (MUXsel1 & b);
    
endmodule
