module ReLu(clk, y4, y5, y6, y7, z4, z5, z6, z7);

input clk;
input signed[20:0] y4, y5, y6, y7;

output signed[12:0] z4, z5, z6, z7;

//Internal Signals
logic signed[12:0] y4_q, y5_q, y6_q, y7_q;

//ReLu Operations.
assign z4 = y4_q[12] == 1'b1 ? 0 : y4_q;
assign z5 = y5_q[12] == 1'b1 ? 0 : y5_q;
assign z6 = y6_q[12] == 1'b1 ? 0 : y6_q;
assign z7 = y7_q[12] == 1'b1 ? 0 : y7_q;

always @(posedge clk) begin
    y4_q <= y4;
    y5_q <= y5;
    y6_q <= y6;
    y7_q <= y7;
end

endmodule
