module top ( x0_node0, x1_node0, x2_node0, x3_node0, 
             x0_node1, x1_node1, x2_node1, x3_node1, 
             x0_node2, x1_node2, x2_node2, x3_node2, 
             x0_node3, x1_node3, x2_node3, x3_node3, 
             w04, w14, w24, w34, 
             w05, w15, w25, w35, 
             w06, w16, w26, w36, 
             w07, w17, w27, w37, 
             w48, w58, w68, w78, 
             w49, w59, w69, w79, 
             out0_node0, out1_node0, 
             out0_node1, out1_node1, 
             out0_node2, out1_node2, 
             out0_node3, out1_node3, 
             in_ready, 
             out10_ready_node0, out11_ready_node0, 
             out10_ready_node1, out11_ready_node1, 
             out10_ready_node2, out11_ready_node2, 
             out10_ready_node3, out11_ready_node3, 
             clk); 
 
	input signed[4:0] x0_node0, x1_node0, x2_node0, x3_node0; 
	input signed[4:0] x0_node1, x1_node1, x2_node1, x3_node1; 
	input signed[4:0] x0_node2, x1_node2, x2_node2, x3_node2; 
	input signed[4:0] x0_node3, x1_node3, x2_node3, x3_node3; 
	input signed[4:0] w04, w14, w24, w34; 
	input signed[4:0] w05, w15, w25, w35; 
	input signed[4:0] w06, w16, w26, w36; 
	input signed[4:0] w07, w17, w27, w37; 
	input signed[4:0] w48, w58, w68, w78; 
	input signed[4:0] w49, w59, w69, w79; 
	 
	input clk, in_ready; 
	 
	output signed[20:0] out0_node0, out1_node0; 

	output signed[20:0] out0_node1, out1_node1; 
	output signed[20:0] out0_node2, out1_node2; 
	output signed[20:0] out0_node3, out1_node3; 
	output out10_ready_node0, out11_ready_node0; 
	output out10_ready_node1, out11_ready_node1; 
	output out10_ready_node2, out11_ready_node2; 
	output out10_ready_node3, out11_ready_node3; 
	 
	//Implementation of GNN
	logic signed[6:0] x0_node0_ag, x1_node0_ag, x2_node0_ag, x3_node0_ag;
	logic signed[6:0] x0_node1_ag, x1_node1_ag, x2_node1_ag, x3_node1_ag;
	logic signed[6:0] x0_node2_ag, x1_node2_ag, x2_node2_ag, x3_node2_ag;
	logic signed[6:0] x0_node3_ag, x1_node3_ag, x2_node3_ag, x3_node3_ag;

	//Post Relu Unit Connections
	logic signed[12:0] z4_node0, z5_node0, z6_node0, z7_node0;
	logic signed[12:0] z4_node1, z5_node1, z6_node1, z7_node1;
	logic signed[12:0] z4_node2, z5_node2, z6_node2, z7_node2;
	logic signed[12:0] z4_node3, z5_node3, z6_node3, z7_node3;

	logic signed[14:0] a4_node0, a5_node0, a6_node0, a7_node0;
	logic signed[14:0] a4_node1, a5_node1, a6_node1, a7_node1;
	logic signed[14:0] a4_node2, a5_node2, a6_node2, a7_node2;
	logic signed[14:0] a4_node3, a5_node3, a6_node3, a7_node3;

	//DNNs Instantiation
	dnn_top node0(.clk(clk), .x0(x0_node0_ag), .x1(x1_node0_ag), .x2(x2_node0_ag), .x3(x3_node0_ag), .in_ready(in_ready), .w04(w04), .w05(w05), .w06(w06), .w07(w07), .w14(w14), .w15(w15), .w16(w16), .w17(w17), .w24(w24), .w25(w25), .w26(w26), .w27(w27), .w34(w34), .w35(w35), .w36(w36), .w37(w37), .w48(w48), .w58(w58), .w68(w68), .w78(w78), .w49(w49), .w59(w59), .w69(w69), .w79(w79), .out0(out0_node0), .out1(out1_node0), .out10_ready(out10_ready_node0), .out11_ready(out11_ready_node0), .z4(z4_node0), .z5(z5_node0), .z6(z6_node0), .z7(z7_node0), .a4(a4_node0), .a5(a5_node0), .a6(a6_node0), .a7(a7_node0));
	dnn_top node1(.clk(clk), .x0(x0_node1_ag), .x1(x1_node1_ag), .x2(x2_node1_ag), .x3(x3_node1_ag), .in_ready(in_ready), .w04(w04), .w05(w05), .w06(w06), .w07(w07), .w14(w14), .w15(w15), .w16(w16), .w17(w17), .w24(w24), .w25(w25), .w26(w26), .w27(w27), .w34(w34), .w35(w35), .w36(w36), .w37(w37), .w48(w48), .w58(w58), .w68(w68), .w78(w78), .w49(w49), .w59(w59), .w69(w69), .w79(w79), .out0(out0_node1), .out1(out1_node1), .out10_ready(out10_ready_node1), .out11_ready(out11_ready_node1), .z4(z4_node1), .z5(z5_node1), .z6(z6_node1), .z7(z7_node1), .a4(a4_node1), .a5(a5_node1), .a6(a6_node1), .a7(a7_node1));
	dnn_top node2(.clk(clk), .x0(x0_node2_ag), .x1(x1_node2_ag), .x2(x2_node2_ag), .x3(x3_node2_ag), .in_ready(in_ready), .w04(w04), .w05(w05), .w06(w06), .w07(w07), .w14(w14), .w15(w15), .w16(w16), .w17(w17), .w24(w24), .w25(w25), .w26(w26), .w27(w27), .w34(w34), .w35(w35), .w36(w36), .w37(w37), .w48(w48), .w58(w58), .w68(w68), .w78(w78), .w49(w49), .w59(w59), .w69(w69), .w79(w79), .out0(out0_node2), .out1(out1_node2), .out10_ready(out10_ready_node2), .out11_ready(out11_ready_node2), .z4(z4_node2), .z5(z5_node2), .z6(z6_node2), .z7(z7_node2), .a4(a4_node2), .a5(a5_node2), .a6(a6_node2), .a7(a7_node2));
	dnn_top node3(.clk(clk), .x0(x0_node3_ag), .x1(x1_node3_ag), .x2(x2_node3_ag), .x3(x3_node3_ag), .in_ready(in_ready), .w04(w04), .w05(w05), .w06(w06), .w07(w07), .w14(w14), .w15(w15), .w16(w16), .w17(w17), .w24(w24), .w25(w25), .w26(w26), .w27(w27), .w34(w34), .w35(w35), .w36(w36), .w37(w37), .w48(w48), .w58(w58), .w68(w68), .w78(w78), .w49(w49), .w59(w59), .w69(w69), .w79(w79), .out0(out0_node3), .out1(out1_node3), .out10_ready(out10_ready_node3), .out11_ready(out11_ready_node3), .z4(z4_node3), .z5(z5_node3), .z6(z6_node3), .z7(z7_node3), .a4(a4_node3), .a5(a5_node3), .a6(a6_node3), .a7(a7_node3));

	//Aggregation and Combination
	assign a4_node0 = z4_node0 + z4_node1 + z4_node2;
	assign a5_node0 = z5_node0 + z5_node1 + z5_node2;
	assign a6_node0 = z6_node0 + z6_node1 + z6_node2;
	assign a7_node0 = z7_node0 + z7_node1 + z7_node2;

	assign a4_node1 = z4_node0 + z4_node1 + z4_node3;
	assign a5_node1 = z5_node0 + z5_node1 + z5_node3;
	assign a6_node1 = z6_node0 + z6_node1 + z6_node3;
	assign a7_node1 = z7_node0 + z7_node1 + z7_node3;

	assign a4_node2 = z4_node0 + z4_node3 + z4_node2;
	assign a5_node2 = z5_node0 + z5_node3 + z5_node2;
	assign a6_node2 = z6_node0 + z6_node3 + z6_node2;
	assign a7_node2 = z7_node0 + z7_node3 + z7_node2;

	assign a4_node3 = z4_node3 + z4_node1 + z4_node2;
	assign a5_node3 = z5_node3 + z5_node1 + z5_node2;
	assign a6_node3 = z6_node3 + z6_node1 + z6_node2;
	assign a7_node3 = z7_node3 + z7_node1 + z7_node2;

	assign x0_node0_ag = x0_node0 + x0_node1 + x0_node2;
	assign x1_node0_ag = x1_node0 + x1_node1 + x1_node2;
	assign x2_node0_ag = x2_node0 + x2_node1 + x2_node2;
	assign x3_node0_ag = x3_node0 + x3_node1 + x3_node2;

	assign x0_node1_ag = x0_node0 + x0_node1 + x0_node3;
	assign x1_node1_ag = x1_node0 + x1_node1 + x1_node3;
	assign x2_node1_ag = x2_node0 + x2_node1 + x2_node3;
	assign x3_node1_ag = x3_node0 + x3_node1 + x3_node3;

	assign x0_node2_ag = x0_node0 + x0_node3 + x0_node2;
	assign x1_node2_ag = x1_node0 + x1_node3 + x1_node2;
	assign x2_node2_ag = x2_node0 + x2_node3 + x2_node2;
	assign x3_node2_ag = x3_node0 + x3_node3 + x3_node2;

	assign x0_node3_ag = x0_node3 + x0_node1 + x0_node2;
	assign x1_node3_ag = x1_node3 + x1_node1 + x1_node2;
	assign x2_node3_ag = x2_node3 + x2_node1 + x2_node2;
	assign x3_node3_ag = x3_node3 + x3_node1 + x3_node2;
 
endmodule

