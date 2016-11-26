`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2016 07:36:48 PM
// Design Name: 
// Module Name: mux21_dataflow
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


module mux21_dataflow(
    input logic a,
    input logic b,
    input logic sel,
    output logic out
    );
    
    assign out = ((~sel)&a) | (sel& b);
    
endmodule
