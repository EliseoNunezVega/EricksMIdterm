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
    logic Instructiontype;         
    logic [31:0] register[0:63];
    //66469
    logic [5:0] rs;
    logic [5:0] rd;
    logic [3:0] funct;
    logic [5:0] rt;
    logic [8:0] Immid;
    logic [14:0] Immid2;
    logic PC= 0;
    logic temp1 =0;
    logic Address1 =0;
    logic [31:0] ReadData; 
    logic [3:0] ALUopsel;   
    logic Ms1;
    logic Ms2;
    logic WE1;
    logic WE2;
    logic [31:0] RD1;
    logic [31:0] RD2;
    logic [31:0] WD;
    always @(posedge clk)
    begin
    //PC counting up section
         
        if(clkreset==0)begin
            PC = Address1;
            temp1 = PC;
            PC = temp1+1;
         end
         if(PC==6'b111111)begin
         PC<=0;
         end 
     //instructional Memory
    ReadData[31:0] <= register[Address1][31:0];
    //control unit
   
    end
  Motherbrain l1(
             .ReadData(ReadData), 
             .ALUopsel(ALUopsel),   
             .Ms1(Ms1),
             .Ms2(Ms2),
             .WE1(WE1),
             .WE2(WE2),
             .rs(rs),
             .rd(rd),
             .funct(funct),
             .rt(rt),
             .Immid(Immid),
             .Immid2(Immid2)
             );
 regfile l2(
     .ra1(rs), 
     .ra2(rt), //register address 2 
     .we(WE1), // write enable 
     .wa(rd), //writing address
     .wd(WD), //wriitng destination
     .rd1(RD1), //register destination1 
     .rd2(RD2) //register destination 2
 
 );

endmodule
