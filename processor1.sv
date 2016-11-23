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
          
    logic [31:0] register[0:63]; //reg files
    //66469
    logic Instructiontype; //determines whether or not its R type or I type
    //66469
    logic [5:0] rs; logic [5:0] rd;  logic [3:0] funct; logic [5:0] rt; //output of controller
             logic [8:0] Immid; logic [14:0] Immid2; //output of controller whether it's R type or I type
             
    logic PC= 0; logic temp1 =0; logic Address1 =0; //Clk (program counter)
    
    logic [31:0] ReadData; //this is from instruction memory
    logic [31:0] ReadDatamem; //readdata from memory
    logic [3:0] ALUopsel; 
      
    logic Ms1; logic Ms2; logic [31:0] outputmux1;//muxselect1/2
      logic WE1; logic WE2; //write enable 1/2
    logic [31:0] RD1; logic [31:0] RD2; //a and b for alu
    logic [31:0] WD; //output from mux2 
    
    logic [31:0] aluresult;
   
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
    Instructiontype <= ReadData[0];
    rs=ReadData[6:1];
    rd=ReadData[12:7];
    funct=ReadData[16:13];
    if(Instructiontype==0) begin
    rt=ReadData[22:17];
    Immid=ReadData[31:23];
    end
    if (Instructiontype==1)begin
    Immid2=ReadData[31:17];
    end
               
    end
    
motherbrain l1(
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
              
    ALU32bit l3(
            .opsel(funct[3:1]), //.variablesinmodules(overheadvar), operartion select
            .mode(funct[0]), //logic or arithmetic
            .op1(RD1), //first operand
            .op2(outputmux1), //second operand
            .result(rd) //results
              );
    
    datamem l4 (
    .WE2(we),
    .address(aluresult),
    .writedata(rd2),
    .readdata(Readdatamem)
    );
    
     Sign_Extend l5 (
     .Imm(Immid2),
     .Ext_imm(ext_imm) //extended immediete (15 to 32 bit)
     );
    
    Mux1_21 l6(
    .a(RD2),
    .b(ext_imm),
    .MUXSEL1(Ms1),
    .Operandb(outputmux1)
    );
    
    Mux2_21 l7 (
    .a(ReadDatamem),
    .b(ALUresult),
    .MUXSEL2(Ms2),
    .WD(WD)
    );
//always_ff @(wa) begin  //  always allows you to use normal c code begin and end are bars to hold the code in. this says if there is a change in wa, start this code ^_^  
  //      if (we1)
    //       register [wa] = wd; // w/o braces, if statements will only read the first line.
      //             //if write enable true assign register to wd
    // register [0] = 0;
      //  end 
      
      
      //   always_ff @(address) begin 
         // if (we)
            //  readdata <= RAM[address];// 
              //<= writedata;
         // else
           //   readdata = RAM[address];
       //   end

endmodule
