`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2016 07:08:25 PM
// Design Name: 
// Module Name: mux8_1
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


module mux8_1(
     input a,
     input b,
     input c,
     input d,
     input e,
     input f,
     input g,
     input h,
     input [2:0] sel,
     output out
);

logic temp1, temp2, temp3, temp4;
        
        Mux41 l1 (
                        .a(a),
                        .b(b),
                        .c(c),
                        .d(d),
                        .sel(sel[1:0]),
                        .out(temp3)
    
    );
        
         Mux41 l2 (
                       .a(e),
                       .b(f),
                       .c(g),
                       .d(h),
                       .sel(sel[1:0]),
                       .out(temp4)
    
    );
    
         Mux21 l3 (
                        .a(temp3),
                        .b(temp4),
                        .sel(sel[2]),
                        .out(out)
    
    );

endmodule

