`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2016 07:54:10 PM
// Design Name: 
// Module Name: MotherBrain
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


module MotherBrain(
   input logic Instructiontype, //r type vs i type         
           //66469
        input logic [31:0] ReadData, 
        output [3:0] ALUopsel,   
        output logic Ms1,
        output logic Ms2,
        output logic WE1,
        output logic WE2,
        output logic [5:0] rs,
        output logic [5:0] rd,
        output logic [3:0] funct,
        output logic [5:0] rt,
        output logic [8:0] Immid,
        output logic [14:0] Immid2
        );
        
    
        //control unit
        assign Instructiontype = ReadData[0];
        assign rs =ReadData[6:1];
        assign rd=ReadData[12:7];
        assign funct=ReadData[16:13];
        assign ALUopsel=ReadData[16:13];
        assign Ms1= ReadData[0];
        always@ (ReadData) begin 
        if(Instructiontype==0) begin
        rt=ReadData[22:17];
        Immid=ReadData[31:23];
        end
        if (Instructiontype==1)begin
        Immid2=ReadData[31:17];
        end
        if(funct<=4'b0100|funct<=4'b0110)begin
        Ms2 <= 0;
        end
        else begin
        Ms2 <= 1;
        end
        if(funct<=4'b1111|funct<=4'b0110)begin
        WE1 <= 0;
        end
        else begin
        WE1 <= 1;
        end
        if(funct<=4'b0110)begin
        WE2 <= 1;
        end
        else begin
        WE2 <= 0;
        end
        
        end
        endmodule
