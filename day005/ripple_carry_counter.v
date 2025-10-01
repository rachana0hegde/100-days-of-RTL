`timescale 1ps/1ps

// 4-bit Ripple Carry Counter
module ripple_carry_counter (
    output wire [3:0] q,  // Changed to wire since it's driven by sub-modules
    input wire clk,
    input wire rst_n
);


T_FF tff0 (.q(q[0]), .clk(clk), .rst_n(rst_n));
T_FF tff1 (.q(q[1]), .clk(q[0]), .rst_n(rst_n));  
T_FF tff2 (.q(q[2]), .clk(q[1]), .rst_n(rst_n));  
T_FF tff3 (.q(q[3]), .clk(q[2]), .rst_n(rst_n));  

endmodule

module T_FF (
    output wire q,
    input wire clk,
    input wire rst_n
);

wire d;  


D_FF dff (.q(q), .d(d), .clk(clk), .rst_n(rst_n));
not n1 (d, q);  

endmodule 

module D_FF (
    output reg q,
    input wire d,
    input wire clk,
    input wire rst_n
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)        
        q <= 1'b0;
    else
        q <= d;
end

endmodule