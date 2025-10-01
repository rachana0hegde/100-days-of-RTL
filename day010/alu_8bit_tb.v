`timescale 1ns/1ps
module alu_8bit_tb();

reg [7:0] A, B;
reg [3:0] opcode;
wire [7:0] result;
wire carry_out, zero;

alu_8bit uut (
    .A(A), .B(B),
    .opcode(opcode),
    .result(result),
    .carry_out(carry_out),
    .zero(zero)
);

initial begin
    $dumpfile("alu_8bit.vcd");
    $dumpvars(0, alu_8bit_tb);
    $monitor("Time=%0t A=%d B=%d opcode=%b result=%d carry=%b zero=%b", 
              $time, A, B, opcode, result, carry_out, zero);

    A = 8'd10; B = 8'd3;

    opcode = 4'b0000; #10; // ADD
    opcode = 4'b0001; #10; // SUB
    opcode = 4'b0010; #10; // AND
    opcode = 4'b0011; #10; // OR
    opcode = 4'b0100; #10; // XOR
    opcode = 4'b0101; #10; // NOT
    opcode = 4'b0110; #10; // Shift Left
    opcode = 4'b0111; #10; // Shift Right

    $finish;
end

endmodule
