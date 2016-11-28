`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2016 12:32:54 AM
// Design Name: 
// Module Name: testbench
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


module testbench;

    logic clk;
    logic reset;
    int i = 0;
processor_v1(
        .clk(clk),
        .clkreset(reset)
    );
    initial begin
       for(i = 0;i<32;i++)begin
       clk = clk + 1'b1;
       reset = reset + 1'b1;
    end
    end
initial begin
repeat(10) begin

end
end

endmodule    
