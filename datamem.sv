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
    input logic [31:0] address ,
    input logic [31:0] writedata,
    output logic [31:0] readdata
    );
    logic [31:0] RAM [127:0];
    
    
    always_ff @(address) begin
    if (we) begin
    RAM[address]<=writedata;
    readdata <= RAM[address];
     end else begin
     RAM[address] <= writedata;
     end
    end 
     //   readdata = RAM[address]
endmodule



