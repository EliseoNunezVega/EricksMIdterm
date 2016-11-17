`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2016 06:59:15 PM
// Design Name: 
// Module Name: mem_twoport
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


module mem_twoport(
input logic clk ,
input logic [8:0] ra , //read address
input logic [8:0] wa , //write address
input logic write , //determines whether to write data to memory or not
input logic [19:0] d , //data from read address
output logic [19:0] q //output data (data from write address)
    );    
    //theres 512 positions of ram/ i guess we could make an array    
    logic [19:0] mem [511:0];
    always_ff @(posedge clk) begin //always flipflop begin clock
        if (write)
        mem [wa] <= d;
        else
        q <= mem [ra]; 
        end;
        
    //so basically clk is going to continously get added everytime an operation takes place, 
    //d is some value, and q is output 
    //if write is true take data d and stuff into address wa 
    
endmodule
