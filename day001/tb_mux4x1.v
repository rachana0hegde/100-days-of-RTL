`timescale 1ns/1ps

module tb_mux4x1;
    reg [1:0] sel;
    reg [3:0] d;
    wire y;

    mux4x1 uut (.sel(sel), .d(d), .y(y));

    initial begin
        $dumpfile("mux4x1.vcd");
        $dumpvars(0, tb_mux4x1);

        d = 4'b1010;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end
endmodule

