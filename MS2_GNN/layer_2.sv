module layer_2(in1, in2, in3, in4,
               w1, w2, w3, w4, out,
			   clk);


	input clk;
	
	input signed[14:0] in1, in2, in3, in4;		
	input signed[4:0] w1, w2, w3, w4;			

	output signed[20:0] out;
	
	logic signed[14:0] in1_q, in2_q, in3_q, in4_q; 
	logic signed[4:0] w1_q, w2_q, w3_q, w4_q;
	
	
	
	assign out = in1_q*w1_q + in2_q*w2_q + in3_q*w3_q + in4_q*w4_q;
	
	
	
	always @(posedge clk) begin
    in1_q <= in1;
    in2_q <= in2;
    in3_q <= in3;
    in4_q <= in4;
    
	w1_q <= w1;
    w2_q <= w2;
    w3_q <= w3;
    w4_q <= w4;
    end

endmodule

