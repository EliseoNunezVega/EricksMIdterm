`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2016 08:12:50 AM
// Design Name: 
// Module Name: datamem
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


module datamem(
    input logic we, 
    input [127:0] address,
    input [127:0] writedata,
    output [127:0] readdata
    );
    logic [127:0]RAM [31:0];
     //   readdata = RAM[address]
endmodule
