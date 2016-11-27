`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2016 08:32:36 PM
// Design Name: 
// Module Name: regfile
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


module regfile( 
    input  logic [63:0]  ra1, //register address 1
    input  logic [63:0] ra2, //register address 2 
    input  logic we, // write enable 
    input  logic [5:0] wa, //writing address
    input  logic wd, //wriitng destination
    output logic [31:0] rd1, //register destination1 
    output logic [31:0] rd2 //register destination 2
    
    );
    //mental note <= means read so ra <= r1 means r1 reads ra
    logic [63:0] register[31:0];
    //assign rd1 = register[ra1];
 //   assign rd2 = register[ra2];
    
always_ff @(ra1) begin  //  always allows you to use normal c code begin and end are bars to hold the code in. this says if there is a change in wa, start this code ^_^  
        if (we) begin
           rd1 <= 1'bx;
           rd2 <= register[ra1];
           end
        else begin
        rd1 <= register[ra1];
        rd2 <= register[ra2];
        end          
                //   register [wa] = wd; // w/o braces, if statements will only read the first line.
                  //if write enable true assign register to wd
    register [0] = 0;
      end 
        //
   // assign register[wa] = (we)? wd : register[wa]; //only works with constants
       
endmodule

    
