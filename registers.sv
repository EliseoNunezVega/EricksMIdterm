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
    input clk, //clk 
    input ra1, //register address 1
    input ra2, //register address 2 
    input we, // write enable 
    input wa, //writing address
    input wd, //wriitng destination
    output rd1, //register destination1 
    output rd2 //register destination 2
    
    );
    //mental note <= means read so ra <= r1 means r1 reads ra
    logic [31:0] register [63:0]; //packed part (number of bits) variable unpacked part(array)
    assign rd1 = register[ra1];
    assign rd2 = register[ra2];
    always @(wa) begin //  always allows you to use normal c code begin and end are bars to hold the code in. this says if there is a change in wa, start this code ^_^  
        if (we)  
            register[wa] =  wd;
    end //
   // assign register[wa] = (we)? wd : register[wa]; //only works with constants
       
endmodule

    
