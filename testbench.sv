module testbench;

    logic clk;
    logic reset;     
processor_v1(
        .clk(clk),
        .clkreset(reset)
    );
    genvar i; 
        begin
       for (i = 0; i<31; i++)begin
    end
    end
initial begin
repeat(10) begin
end
end

endmodule    
