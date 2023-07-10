module ReLu(clk, y4, y5, y6, y7, z4, z5, z6, z7);

	input clk;
	input signed[11:0] y4, y5, y6, y7;

	//Bits after ReLu Operation
	output signed[11:0] z4, z5, z6, z7;

	//Internal Signals
	logic signed[11:0] y4_q, y5_q, y6_q, y7_q;

	//ReLu Operation
	assign z4 = (y4_q[11])  ? 'b0 : y4_q;
	assign z5 = (y5_q[11])  ? 'b0 : y5_q;
	assign z6 = (y6_q[11])  ? 'b0 : y6_q;
	assign z7 = (y7_q[11])  ? 'b0 : y7_q;

	always @(posedge clk) begin
		y4_q <= y4;
		y5_q <= y5;
		y6_q <= y6;
		y7_q <= y7;
	end

endmodule
