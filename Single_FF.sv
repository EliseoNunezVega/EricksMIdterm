`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2016 07:22:27 PM
// Design Name: 
// Module Name: Single_FF
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


module Single_FF(
    input logic clk,
    input logic rst,
    input logic d,
    output logic q
    );
    
    always @ (posedge clk, posedge rst) begin
        if (rst) begin
            q   <= 1'b0;
        end
        else begin
            q   <= d;
        end
   end
    
endmodule
