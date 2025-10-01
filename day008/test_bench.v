`timescale 1ns / 1ps

module test_bench;
reg din,clk,reset;
wire y;

fsm_11001 dut(din,clk,reset,y);

initial begin
    $dumpfile("fsm_11001.vcd");
    $dumpvars(0,test_bench);
clk= 1'b0;
forever #5 clk= ~clk;
end

initial begin
reset= 1'b1;
#10 reset= 1'b0;
#5 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b1;
#10 din= 1'b1;
#10 din= 1'b0;
#10 din= 1'b0;
#10 din= 1'b1;
end

initial begin
$monitor("\t\t clock: %d  input: %d   detect: %d",clk, din, y);
#180 $finish;
end
endmodule