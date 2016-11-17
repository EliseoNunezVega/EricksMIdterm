`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2016 09:33:34 PM
// Design Name: 
// Module Name: Sign_Extend
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


module Sign_Extend(
    input signed [14:0] Imm,
    output signed [31:0] Ext_imm
    );
    wire [1:0] ext_part;
    
    assign ext_part = {17{Imm[14]}};
    assign Ext_imm = {ext_part, Imm};
    
endmodule
