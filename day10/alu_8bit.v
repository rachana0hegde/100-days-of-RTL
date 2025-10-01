module alu_8bit (
    input  [7:0] A, B,
    input  [3:0] opcode,
    output reg [7:0] result,
    output reg carry_out,
    output reg zero
);

always @(*) begin
    carry_out = 0; // default
    case (opcode)
        4'b0000: {carry_out, result} = A + B;      // ADD
        4'b0001: {carry_out, result} = A - B;      // SUB
        4'b0010: result = A & B;                   // AND
        4'b0011: result = A | B;                   // OR
        4'b0100: result = A ^ B;                   // XOR
        4'b0101: result = ~A;                      // NOT (only A)
        4'b0110: result = A << 1;                  // Shift Left
        4'b0111: result = A >> 1;                  // Shift Right
        default: result = 8'b00000000;
    endcase

    zero = (result == 8'b0); // Zero flag
end

endmodule
