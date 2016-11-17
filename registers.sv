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
    input ra1, //register address 1
    input ra2, //register address 2 
    input we, // write enable 
    input wa, //writing address
    input wd, //wriitng destination
    output rd1, //register destination1 
    output rd2 //register destination 2
    );
    logic register[63:0];
    assign rd1 = register[ra1];
    assign rd2 = register[ra2];
    always begin if (we) 
    register[wa] =  wd;
    end
    
    
     
endmodule

    