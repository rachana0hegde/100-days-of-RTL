`timescale 1ps/1ps

module stimulus;
    reg clk;
    reg rst_n;
    wire [3:0] q;

    
    ripple_carry_counter uut (
        .q(q),
        .clk(clk), 
        .rst_n(rst_n)
    );
    
    
    initial begin
        $monitor($time, " Count: %b (%d)", q, q);
    end

    initial begin
        $dumpfile("ripple_carry_counter.vcd");
        $dumpvars(0, stimulus);  
        clk = 1'b0;
    end

    always #5 clk = ~clk;

   
    initial begin
        rst_n = 1'b0;    
        #15 rst_n = 1'b1;
        #200 $finish;    
    end

endmodule