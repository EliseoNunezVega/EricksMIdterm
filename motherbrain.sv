`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2016 04:06:19 PM
// Design Name: 
// Module Name: motherbrain
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


module motherbrain( 
    input logic [0:1] Instructiontype, //r type vs i type         
       //66469
    input logic [31:0] ReadData, 
    output ALUopsel,   
    output MUXsel1,
    output MUXsel2,
    output WE1,
    output WE2
    );
    logic [5:0] rs;
    logic [5:0] rd;
    logic [3:0] funct;
    logic [5:0] rt;
    logic [8:0] Immid;
    logic [14:0] Immid2;

    //control unit
    assign Instructiontype = ReadData[0];
    assign rs =ReadData[6:1];
    assign rd=ReadData[12:7];
    assign funct=ReadData[16:13];
    always@ (ReadData) begin 
    if(Instructiontype[0]==0) begin
    rt=ReadData[22:17];
    Immid=ReadData[31:23];
    end
    if (Instructiontype[0]==1)begin
    Immid2=ReadData[31:17];
    end
    end


endmodule
