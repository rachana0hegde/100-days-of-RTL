`timescale 1ns/1ps

module tb_logicgates;
    reg a, b;
    wire y_and, y_or, y_not;

    logicgates uut (.a(a), .b(b), .y_and(y_and), .y_or(y_or), .y_not(y_not));

    initial begin
        $dumpfile("logicgates.vcd");
        $dumpvars(0, tb_logicgates);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
