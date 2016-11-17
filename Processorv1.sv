`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2016 08:47:55 PM
// Design Name: 
// Module Name: Processorv1
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


module Processorv1(
    input clkreset,
    input clk
    );         
    logic [63:0] register[31:0];
    logic PC= 6'b000000;
    logic temp1 =6'b000000;
    logic Address1 =6'b000000;
    always @(posedge clk)
    begin
    //PC counting up section
         
        if(clkreset==0)begin
            PC = Address1;
            temp1 = PC;
            PC = temp1+1;
         end
         if(PC==6'b111111)begin
         PC=0;
         end 
     //instructional Memory
        
    end


endmodule
