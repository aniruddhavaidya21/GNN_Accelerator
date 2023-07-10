module top (
    x0, x1, x2, x3, 
    w04, w05, w06, w07, 
    w14, w15, w16, w17, 
    w24, w25, w26, w27, 
    w34, w35, w36, w37, 
    w48, w58, w49, w59, 
    w68, w69, w78, w79, 
    out0, out1, 
    in_ready, out10_ready, out11_ready, 
    clk
);
	input signed [4:0]  x0, x1, x2, x3, 			//5 bit signed inputs and weight links.
						w04, w05, w06, w07, 
						w14, w15, w16, w17, 
						w24, w25, w26, w27, 
						w34, w35, w36, w37, 
						w48, w58, w49, w59, 
						w68, w69, w78, w79;
    input in_ready;
    input clk;

    output logic signed [16:0] out0, out1;   	   //17 bit signed outputs.
    output logic out10_ready, out11_ready;		   //Signals to indicate if outputs are ready.

	//internal signals
	logic signed[11:0] y4, y5, y6, y7;
	logic signed[11:0] z4, z5, z6, z7;
	logic in_ready1_q, in_ready2_q, in_ready3_q;
	logic in_ready1, in_ready2;

	//1st Stage Nodes (MAC).
	layer_1 node_4(.clk(clk), .in1(x0), .in2(x1), .in3(x2), .in4(x3), .w1(w04), .w2(w14), .w3(w24), .w4(w34), .out(y4));
	layer_1 node_5(.clk(clk), .in1(x0), .in2(x1), .in3(x2), .in4(x3), .w1(w05), .w2(w15), .w3(w25), .w4(w35), .out(y5));
	layer_1 node_6(.clk(clk), .in1(x0), .in2(x1), .in3(x2), .in4(x3), .w1(w06), .w2(w16), .w3(w26), .w4(w36), .out(y6));
	layer_1 node_7(.clk(clk), .in1(x0), .in2(x1), .in3(x2), .in4(x3), .w1(w07), .w2(w17), .w3(w27), .w4(w37), .out(y7));

	always @(posedge clk) begin
		in_ready1_q <= in_ready;
	end

	assign in_ready1 = in_ready1_q;
	//ReLu Unit.
	ReLu R1(.clk(clk), .y4(y4), .y5(y5), .y6(y6), .y7(y7), .z4(z4), .z5(z5), .z6(z6), .z7(z7));

	//2nd Stage Nodes (MAC).
	layer_2 out_node_0(.clk(clk), .in1(z4), .in2(z5), .in3(z6), .in4(z7), .w1(w48), .w2(w58), .w3(w68), .w4(w78), .out(out0));
	layer_2 out_node_1(.clk(clk), .in1(z4), .in2(z5), .in3(z6), .in4(z7), .w1(w49), .w2(w59), .w3(w69), .w4(w79), .out(out1));

	always @(posedge clk) begin
		in_ready2_q <= in_ready1;
	end

	assign in_ready2 = in_ready2_q;

	always @(posedge clk) begin
		in_ready3_q <= in_ready2;
	end


	assign out10_ready = in_ready3_q;
	assign out11_ready = in_ready3_q;

	endmodule

