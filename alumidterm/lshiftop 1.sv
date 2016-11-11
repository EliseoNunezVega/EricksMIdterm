`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2016 09:20:03 PM
// Design Name: 
// Module Name: lshiftop
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


module lshiftop(
    input a,
    input cin,
    output cout,
    output out
    );
    
    assign a = cout;
    assign cin = out;
endmodule
