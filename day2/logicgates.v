'`timescale 1ps/1ps

module logicgates(a,b,y_and,y_or,y_not);
    input wire a,b;
    output wire y_and,y_or,y_not;

    assign y_and = a & b;
    assign y_or  = a | b;
    assign y_not = ~a;
endmodule
