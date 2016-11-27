`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2016 10:26:35 PM
// Design Name: 
// Module Name: processor_v1
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

//module Sign_Extend(
//    input signed [14:0] Imm,
//    output signed [31:0] Ext_imm
//    );
//    wire [1:0] ext_part;
    
//    assign ext_part = {17{Imm[14]}};
//    assign Ext_imm = {ext_part, Imm};
    
//endmodule
//module motherbrain(
//   input logic Instructiontype, //r type vs i type         
//           //66469
//        input logic [31:0] ReadData, 
//        output [3:0] ALUopsel,   
//        output logic Ms1,
//        output logic Ms2,
//        output logic WE1,
//        output logic WE2,
//        output logic [5:0] rs,
//        output logic [5:0] rd,
//        output logic [3:0] funct,
//        output logic [5:0] rt,
//        output logic [8:0] Immid,
//        output logic [14:0] Immid2
//        );
        
    
//        //control unit
//        assign Instructiontype = ReadData[0];
//        assign rs =ReadData[6:1];
//        assign rd=ReadData[12:7];
//        assign funct=ReadData[16:13];
//        assign ALUopsel=ReadData[16:13];
//        assign Ms1= ReadData[0];
//        always@ (ReadData) begin 
//        if(Instructiontype==0) begin
//        rt=ReadData[22:17];
//        Immid=ReadData[31:23];
//        end
//        if (Instructiontype==1)begin
//        Immid2=ReadData[31:17];
//        end
//        if(funct<=4'b0100|funct<=4'b0110)begin
//        Ms2 <= 0;
//        end
//        else begin
//        Ms2 <= 1;
//        end
//        if(funct<=4'b1111|funct<=4'b0110)begin
//        WE1 <= 0;
//        end
//        else begin
//        WE1 <= 1;
//        end
//        if(funct<=4'b0110)begin
//        WE2 <= 1;
//        end
//        else begin
//        WE2 <= 0;
//        end
        
//        end
//        endmodule
//module ALU32bit( op1 , op2 , opsel , mode , result , c_flag , z_flag , o_flag , s_flag );
    
//    parameter DWIDTH = 32;
    
//    input logic [DWIDTH-1:0] op1;
//    input logic [DWIDTH-1:0] op2;
//    input logic [       2:0] opsel;
//    input logic mode;
//    output logic [DWIDTH-1:0] result;
//    output logic c_flag;
//    output logic z_flag;
//    output logic o_flag;
//    output logic s_flag;
    
//    genvar i;
//    wire [DWIDTH-1:0] Cin;
//    wire [DWIDTH-1:0] Cout;
//    generate
    
    
    
    
//     assign Cin[0] = ((mode == 0 & opsel == 3'b000 )? 1'bz:
//                                                 ((mode == 0 & opsel == 3'b001 )? 1'bz :
//                                                                        ((mode == 0 & opsel == 3'b010 )? 1'b1:
//                                                                              ((mode == 0 & opsel == 3'b011 )? 1'bz:
//                                                                                             ((mode == 0 & opsel == 3'b100 )? 1'b1:
//                                                                                                  ((mode == 0 & opsel == 3'b101 )? 0 :
//                                                                                                   ((mode == 0 & opsel == 3'b110 )? 1'b1:
//                                                                                                         ((mode == 1 & opsel == 3'b000 )? 0:
//                                                                                                             ((mode == 1 & opsel == 3'b001 )? 0:
//                                                                                                                 ((mode == 1 & opsel == 3'b010 )? 0:  
//                                                                                                                     ((mode == 1 & opsel == 3'b011 )? 0:
//                                                                                                                         ((mode == 1 & opsel == 3'b100 )? 1'b0:
//                                                                                                                                                         3'bzzz)))))))))))); 
//    for (i=0; i<=31; i++) begin:g
//    ALU1bit l1 (
//       .op1(op1[i]),
//       .op2(op2[i]),
//       .opsel(opsel),
//       .mode(mode),
//       .result(result[i]),
//       .Cout(Cout[i]),
//       .Cin(Cin[i])      
//    );
     
//    assign Cin[i+1] = ((mode == 0 & opsel == 3'b000 )? Cout[i]:
//                        ((mode == 0 & opsel == 3'b001 )? Cout[i]:
//                            ((mode == 0 & opsel == 3'b010 )? 0:
//                                ((mode == 0 & opsel == 3'b011 )? Cout[i]:
//                                    ((mode == 0 & opsel == 3'b100 )? Cout[i]:
//                                        ((mode == 0 & opsel == 3'b101 )? 0:
//                                            ((mode == 0 & opsel == 3'b110 )? Cout[i]:
//                                                ((mode == 1 & opsel == 3'b000 )? 0:
//                                                    ((mode == 1 & opsel == 3'b001 )? 0:
//                                                        ((mode == 1 & opsel == 3'b010 )? 0:  
//                                                            ((mode == 1 & opsel == 3'b011 )? 0:
//                                                                ((mode == 1 & opsel == 3'b100 )? 0:
//                                                                                            3'bzzz)))))))))))); 
   
//    end
//    endgenerate
    
//    assign c_flag = (Cout[31] == 1)? 1:0;
//    assign z_flag = (result[31:0] == 0) ? 1 : 0; //ask TA tommorow about zero flag 
//    assign s_flag = ((mode == 0 & (opsel == 3'b001 | opsel == 3'b011)) & Cout[31] == 1)? 1:0 ;
//    assign o_flag = (Cout[31] ==1 )? 1:0;

    
    
//endmodule

//module ALU1bit(
//    input logic op1,
//    input logic op2,
//    input logic Cin,
//    input logic [2:0] opsel,
//    input logic mode,
//    output logic result,
//    output logic Cout
//    );
//    wire tempma,tempca,tempcsb,tempmsb,tempmm,tempcs,tempms,tempci,tempmi,tempmd,tempcd,tempcai,tempmai,tempmart,tempcart,tempmlog,tempclog;
//    //arithmetic section
//    //adder
//    adder l1 (
//        .A(op1),
//        .B(op2),
//        .Cin(Cin),
//        .Sum(tempma),
//        .Cout(tempca) );
//        //sub with borrowed carry
//    subtractor1 l2 (     
//         .A(op1),
//         .B(op2),
//         //Cin(Cin),
//         .Cout(tempcsb),
//         .Diffrence(tempmsb)
//    );   
//    //move
//    Mover l3(
//        .A(op1),
//        .Y(tempmm)
//    );
//    //subtractor
//    sum l4(
//            .A(op1),
//            .B(op2),
//            .Cin(Cin),
//            .Cout(tempcs),
//            .Out(tempms)
//    );
//    //Increment
//    Increment1 l5(
//         .A(op1),
//         .Cout(tempci),
//         .Y(tempmi)
//    );
//    //Decrement
//    Decrement l6(
//         .A(op1),
//         .Y(tempmd),
//         .Cout(tempcd)
//         );
//    //Add&Increment
//    addincrement l7(
//        .A(op1),
//        .B(op1),
//        .Cin(Cin),
//        .Cout(tempcai),
//        .Sum(tempmai)
//    );
    
//   //multiplexer for main output
//   mux8_1 l8(
//         .a(tempma),
//         .b(tempmsb),
//         .c(tempmm),
//         .d(tempms),
//         .e(tempmi),
//         .f(tempmd),
//         .g(tempmai),
//         .h(z),
//         .sel (opsel),
//         .out(tempartm)
//   );
//   //multiplexer for cout
//   mux8_1 l9(
//            .a(tempca),
//            .b(tempcsb),
//            .c(z),
//            .d(tempcs),
//            .e(tempci),
//            .f(tempcd),
//            .g(tempcai),
//            .h(z),
//            .sel(opsel),
//            .out(tempartc)
//        ); 
//        //logic module alrdy made
//   logic8_1 l10(
//        .op1(op1),
//        .op2(op2),
//        .cin(Cin),
//        .opsel(opsel),
//        .mode(mode),
//        .out (tempclog),
//        .result(tempmlog)
//   );
//   //mux for cout
//   mux21_dataflow l11(
//             .a(tempcart),
//             .b(tempclog),
//             .out(cout),
//            .sel(mode)
//            );
//   mux21_dataflow l12(
//   .a(tempmart),
//   .b(tempmlog),
//   .out(result),
//   .sel(mode)
//   );
//endmodule
//module Mux21(
//    input a,
//    input b,
//    output out,
//    input sel
//    );
    
//    assign out = ((~sel)&a) | (sel & b);
//endmodule
//module Mux41(
//    input a,
//    input b,
//    input c,
//    input d,
//    input [1:0] sel, // sel[0], sel[1]
//    output out
//    );
    
//    logic temp1, temp2;
        
//        Mux21 l1 (
//                        .a(a),
//                        .b(b),
//                        .sel(sel[0]),
//                        .out(temp1)
    
//    );
        
//         Mux21 l2 (
//                       .a(c),
//                       .b(d),
//                       .sel(sel[0]),
//                       .out(temp2)
    
//    );
    
//         Mux21 l3 (
//                        .a(temp1),
//                        .b(temp2),
//                        .sel(sel[1]),
//                        .out(out)
    
//    );
    
//endmodule
//module mux8_1(
//     input a,
//     input b,
//     input c,
//     input d,
//     input e,
//     input f,
//     input g,
//     input h,
//     input [2:0] sel,
//     output out
//);

//logic temp1, temp2, temp3, temp4;
        
//        Mux41 l1 (
//                        .a(a),
//                        .b(b),
//                        .c(c),
//                        .d(d),
//                        .sel(sel[1:0]),
//                        .out(temp3)
    
//    );
        
//         Mux41 l2 (
//                       .a(e),
//                       .b(f),
//                       .c(g),
//                       .d(h),
//                       .sel(sel[1:0]),
//                       .out(temp4)
    
//    );
    
//         Mux21 l3 (
//                        .a(temp3),
//                        .b(temp4),
//                        .sel(sel[2]),
//                        .out(out)
    
//    );

//endmodule
//module adder(
//    input A,
//    input B,
//    input Cin,
//    output Cout,
//    output Sum
//    );
//    assign Cout = (A & B) | (Cin & (A ^ B));
//    assign Sum = A ^ B ^ Cin;
//endmodule
//module mux21_dataflow(
//    input logic a,
//    input logic b,
//    input logic sel,
//    output logic out
//    );
    
//    assign out = ((~sel)&a) | (sel& b);
    
//endmodule
//module subtractor1(
//    input A,
//    input B,
//    input Cin,
//    output Cout,
//    output Diffrence
//    );
//    assign Cout = ((~A)*B)+(B*Cin)+((~A)*Cin);
//    assign Diffrence =A^B^Cin ;
//endmodule
//module Mover(
//    input A,
//    output Y
//    );
//    assign Y = A; 
    
//endmodule
//module sum(
//    input A,
//    input B,
//    input Cin,
//    output Cout,
//    output Out
//    );
//    wire d;
//    wire c;
//    assign c = ((~A)*B)+(B*Cin)+((~A)*Cin);
//    assign d =A^B^Cin ;
//    assign Cout = (d & 1) | (c & 1) |(d & c) ;
//    assign Out = d ^ 1 ^ c;
    
//endmodule
//module Increment1(
//    input A,
//    output Cout,
//    output Y
//    );
//        assign Y = A + 1'b1;
//    assign Cout = (Y == 1'b0)? 1'b1 : 1'b0;
//endmodule
//module Decrement(
//    input A,
//    output Y,
//    output Cout
//    ); 
//    assign Y = A - 1'b1;
//    assign Cout = (Y == 1'b1)? 1'b1 : 1'b0;
//endmodule
//module logic8_1(
//    input op1,
//    input op2,
//    input cin,
//    input [2:0] opsel,
//    input mode,
//    output out,
//    output result
//    );
    
//    logic temp5, temp6, temp7, temp8, temp9, temp10;
    
//    andop l1 (
//                .a(op1),
//                .b(op2),
//                .out(temp5)
//                );
    
//    xorop l2 (
//                .a(op1),
//                .b(op2),
//                .out(temp7)
//                );
   
//    orop l3 (
//                .a(op1),
//                .b(op2),
//                .out(temp6)
//                );                
                
//    compop l4 (
//                .a(op1),
//                .out(temp8)
//                );

//    lshiftop l5 (
//                .a(op1),
//                .cin(cin),
//                .out(temp9)
//                );
    
//    mux8_1 l6 (
//                .a(temp5),
//                .b(temp6),
//                .c(temp7),
//                .d(temp8),
//                .e(temp9),
//                .f(z),
//                .g(z),
//                .h(z),
//                .sel(opsel[2:0]),
//                .out(temp10)
                
//                );
//endmodule
//module compop(
//    input a,
//    output out
//    );
    
//    assign out = ~a;
    
//endmodule
//module addincrement(
//    input A,
//    input B,
//    input Cin,
//    output Cout,
//    output Sum
//    );
//    assign Cout = (A & B) | (Cin & B) |(A & Cin) ;
//    assign Sum = A ^ B ^ Cin;
//endmodule
//module lshiftop(
//    input a,
//    input cin,
//    output cout,
//    output out
//    );
    
//    assign a = cout;
//    assign cin = out;
//endmodule
//module orop(
//    input a,
//    input b,
//    output out
//    );
    
//    assign out = a | b;
    
//endmodule
//module xorop(
//    input a,
//    input b,
//    output out
//    );
    
//    assign out = a ^ b;
    
//endmodule
//module andop(
//    input a,
//    input b,
//    output out
//    );
    
//    assign out = a & b;
    
//endmodule
//module Mux2_21(
//    input a,
//    input b,
//    input MUXsel2,
//    output WD
//    );
    
//    assign WD = ((~MUXsel2)&a) | (MUXsel2 & b);
    
//endmodule
//module Mux1_21(
//    input a,
//    input b,
//    input MUXsel1,
//    output OperandB
//    );
    
//    assign OperandB = ((~MUXsel1)&a) | (MUXsel1 & b);
    
//endmodule
//module regfile( 
//    input  logic ra1, //register address 1
//    input  logic ra2, //register address 2 
//    input  logic we, // write enable 
//    input  logic wa, //writing address
//    input  logic wd, //wriitng destination
//    output logic rd1, //register destination1 
//    output logic rd2 //register destination 2
  
//   );
//    //mental note <= means read so ra <= r1 means r1 reads ra
//     logic [63:0] register[31:0];
//    assign rd1 = register[ra1];
//    assign rd2 = register[ra2];
    
//always_ff @(ra1) begin  //  always allows you to use normal c code begin and end are bars to hold the code in. this says if there is a change in wa, start this code ^_^  
//        if (we==0) begin
//           rd2 <= 1'bx;
//           rd1 <= register[ra1];
//           end
//        else begin
//        rd1 <= register[ra1];
//        rd2 <= register[ra2];
//        end          
//        //   register [wa] = wd; // w/o braces, if statements will only read the first line.
//                  //if write enable true assign register to wd
//    register [0] = 0;
//      end 
//        //
//   // assign register[wa] = (we)? wd : register[wa]; //only works with constants
       
//endmodule
//module datamem(//edited this made it store correctly and load correctly instead of pushing out dont care for load
//    input logic we, 
//    input logic [31:0] address ,
//    input logic [31:0] writedata,
//    output logic [31:0] readdata
//    );
//    logic [31:0] RAM [127:0];
    
//    always_ff @(address) begin //this now loads and stores correctly
//    if (we) begin
//    RAM[address]<=writedata;
//    readdata <= RAM[address];
//     end else begin
//     readdata <= RAM[address];
//     end
//    end 
//     //   readdata = RAM[address]
//endmodule

module processor_v1(
    input clkreset,
    input clk
    );
    logic [31:0] inst_mem[0:63]; //reg files
    //66469
    logic Instructiontype; //determines whether or not its R type or I type
    //66469
    logic [5:0] rs; logic [5:0] rd;  logic [3:0] funct; logic [5:0] rt; //output of controller
             logic [8:0] Immid; logic [14:0] Immid2; //output of controller whether it's R type or I type
    logic PC= 0; logic temp1 =0; logic Address1 =0; //Clk (program counter)
    logic [31:0] ReadData; //from instruction memory
    logic [3:0] ALUopsel; 
      
    logic Ms1; logic Ms2; //muxselect1/2
      logic WE1; logic WE2; //write enable 1/2
    logic [31:0] RD1; logic [31:0] RD2; //a and b for alu
    logic [31:0] WD;
    
    logic [31:0] aluresult;
    assign inst_mem[0] = 32'b00000000000001111000000000000000; //NOP
    assign inst_mem[1] = 32'b10000000000010000000000000000001; //R1 = R0 + 1
    assign inst_mem[2] = 32'b10000010000100000000000000000001; //R2 = R1 + 1
    assign inst_mem[3] = 32'b00000010000111010000010000000000; //R3 = R1 XOR R2
    assign inst_mem[4] = 32'b00000110001001101000000000000000; //R4 = SLL R3 by 1
    assign inst_mem[5] = 32'b00001000001111001000011000000000; //R7 = R4 OR R3
    assign inst_mem[6] = 32'b00001110001010011000010000000000; //R5 = R7 - R2
    assign inst_mem[7] = 32'b10000000001100000000000000000110; //R6 = R0 + 6
    assign inst_mem[8] = 32'b00001100000000110000101000000000; //Store DM(R6) <- R5
    assign inst_mem[9] = 32'b00001100001100100000000000000000; //Load R6 <- DM(R6)
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
    ReadData[31:0] = inst_mem[Address1][31:0];
    end
    //control unit   
MotherBrain l1(
          .Instructiontype(Instructiontype),
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
              
    logic c_flag;
    logic z_flag;
    logic o_flag;
    logic s_flag;          
    ALU32bit l3(
            .opsel(funct[3:1]), //.variablesinmodules(overheadvar), operartion select
            .mode(funct[0]), //logic or arithmetic
            .op1(RD1), //first operand
            .op2(OperandB), //second operand
            .result(aluresult), //results
            .c_flag(c_flag),
            .z_flag(z_flag),
            .o_flag(o_flag),
            .s_flag(s_flag)
              );
              
              
    logic readdatamem; //readdata from data memory
    datamem l4 (
    .we(WE2),//.WE2(we),
    .writedata(RD2),
    .address(aluresult),
    .readdata(readdatamem)
    
    );
    
     Sign_Extend l5 (
     .Imm(Immid2),
     .Ext_imm(ext_imm) //extended immediete (15 to 32 bit)
     );
     logic [31:0] outputmux1;
     Mux1_21 l6(
     .a(RD2),
     .b(ext_imm),
     .MUXsel1(Ms1),
     .OperandB(outputmux1)
     );
     
     Mux2_21 l7 (
     .a(ReadDatamem),
     .b(ALUresult),
     .MUXsel2(Ms2),
     .WD(WD));
     
endmodule

