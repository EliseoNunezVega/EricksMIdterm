`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2016 08:09:09 PM
// Design Name: 
// Module Name: ALU1bit
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


module ALU1bit(
    input logic op1,
    input logic op2,
    input logic Cin,
    input logic [2:0] opsel,
    input logic mode,
    output logic result,
    output logic cout
    );
    wire tempma,tempca,tempcsb,tempmsb,tempmm,tempcs,tempms,tempci,tempmi,tempmd,tempcd,tempcai,tempmai,tempmart,tempcart,tempmlog,tempclog;
    //arithmetic section
    //adder
    adder l1 (
        .A(op1),
        .B(op2),
        .Cin(Cin),
        .Sum(tempma),
        .Cout(tempca) );
        //sub with borrowed carry
    subtractor1 l2 (     
         .A(op1),
         .B(op2),
         //Cin(Cin),
         .Cout(tempcsb),
         .Diffrence(tempmsb)
    );   
    //move
    Mover l3(
        .A(op1),
        .Y(tempmm)
    );
    //subtractor
    sum l4(
            .A(op1),
            .B(op2),
            .Cin(Cin),
            .Cout(tempcs),
            .Out(tempms)
    );
    //Increment
    Increment1 l5(
         .A(op1),
         .Cout(tempci),
         .Y(tempmi)
    );
    //Decrement
    Decrement l6(
         .A(op1),
         .Y(tempmd),
         .Cout(tempcd)
         );
    //Add&Increment
    addincrement l7(
        .A(op1),
        .B(op1),
        .Cin(Cin),
        .Cout(tempcai),
        .Sum(tempmai)
    );
    
   //multiplexer for main output
   mux8_1 l8(
         .a(tempma),
         .b(tempmsb),
         .c(tempmm),
         .d(tempms),
         .e(tempmi),
         .f(tempmd),
         .g(tempmai),
         .h(z),
         .sel (opsel),
         .out(tempartm)
   );
   //multiplexer for cout
   mux8_1 l9(
            .a(tempca),
            .b(tempcsb),
            .c(z),
            .d(tempcs),
            .e(tempci),
            .f(tempcd),
            .g(tempcai),
            .h(z),
            .sel(opsel),
            .out(tempartc)
        ); 
        //logic module alrdy made
   logic8_1 l10(
        .op1(op1),
        .op2(op2),
        .cin(Cin),
        .opsel(opsel),
        .mode(mode),
        .out (tempclog),
        .result(tempmlog)
   );
   //mux for cout
   mux21_dataflow l11(
             .a(tempcart),
             .b(tempclog),
             .out(cout),
            .sel(mode)
            );
   mux21_dataflow l12(
   .a(tempmart),
   .b(tempmlog),
   .out(result),
   .sel(mode)
   );
endmodule
    
    
