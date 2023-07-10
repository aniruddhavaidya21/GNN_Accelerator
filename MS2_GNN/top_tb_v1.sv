module tb_top_v1();

reg [4:0] x0_node0, x1_node0, x2_node0, x3_node0;
reg [4:0] x0_node1, x1_node1, x2_node1, x3_node1;
reg [4:0] x0_node2, x1_node2, x2_node2, x3_node2;
reg [4:0] x0_node3, x1_node3, x2_node3, x3_node3;
reg [4:0] w04, w14, w24, w34;
reg [4:0] w05, w15, w25, w35;
reg [4:0] w06, w16, w26, w36;
reg [4:0] w07, w17, w27, w37;
reg [4:0] w48, w58, w68, w78;
reg [4:0] w49, w59, w69, w79;

reg clk;

wire [20:0] out0_node0, out1_node0;
wire [20:0] out0_node1, out1_node1;
wire [20:0] out0_node2, out1_node2;
wire [20:0] out0_node3, out1_node3;

wire out10_ready_node0, out11_ready_node0;
wire out10_ready_node1, out11_ready_node1;
wire out10_ready_node2, out11_ready_node2;
wire out10_ready_node3, out11_ready_node3;

reg in_ready;
// Top module
// Instantiation of top module
// Please replace the instantiation with the top module of your gate level model
// Look for 'test failed' in the message. If there is no such message then your output matches the golden outputs. 


top top(.x0_node0(x0_node0), .x1_node0(x1_node0), .x2_node0(x2_node0), .x3_node0(x3_node0), 
        .x0_node1(x0_node1), .x1_node1(x1_node1), .x2_node1(x2_node1), .x3_node1(x3_node1), 
        .x0_node2(x0_node2), .x1_node2(x1_node2), .x2_node2(x2_node2), .x3_node2(x3_node2), 
        .x0_node3(x0_node3), .x1_node3(x1_node3), .x2_node3(x2_node3), .x3_node3(x3_node3), 
        .w04(w04), .w14(w14), .w24(w24), .w34(w34), 
        .w05(w05), .w15(w15), .w25(w25), .w35(w35),
        .w06(w06), .w16(w16), .w26(w26), .w36(w36),
        .w07(w07), .w17(w17), .w27(w27), .w37(w37),
        .w48(w48), .w58(w58), .w68(w68), .w78(w78),
        .w49(w49), .w59(w59), .w69(w69), .w79(w79),
        .out0_node0(out0_node0), .out1_node0(out1_node0),
        .out0_node1(out0_node1), .out1_node1(out1_node1),
        .out0_node2(out0_node2), .out1_node2(out1_node2),
        .out0_node3(out0_node3), .out1_node3(out1_node3),
        .in_ready(in_ready),
        .out10_ready_node0(out10_ready_node0), .out11_ready_node0(out11_ready_node0),
        .out10_ready_node1(out10_ready_node1), .out11_ready_node1(out11_ready_node1),
        .out10_ready_node2(out10_ready_node2), .out11_ready_node2(out11_ready_node2),
        .out10_ready_node3(out10_ready_node3), .out11_ready_node3(out11_ready_node3),
        .clk(clk));

initial begin

    clk = 0;
    in_ready = 1; 
    
    x0_node0 = 5'b0100;
    x1_node0 = 5'b0010;
    x2_node0 = 5'b0100;
    x3_node0 = 5'b0001;
    
    x0_node1 = 5'b0110;
    x1_node1 = 5'b0100;
    x2_node1 = 5'b0100;
    x3_node1 = 5'b0001;
    
    x0_node2 = 5'b1000;
    x1_node2 = 5'b0110;
    x2_node2 = 5'b0100;
    x3_node2 = 5'b0001;
    
    x0_node3 = 5'b0110;
    x1_node3 = 5'b0100;
    x2_node3 = 5'b0100;
    x3_node3 = 5'b0001;
    
    w04 = 5'b00011;
    w14 = 5'b00010;
    w24 = 5'b01101;
    w34 = 5'b11010;
    w05 = 5'b10111;
    w15 = 5'b00001;
    w25 = 5'b11100;
    w35 = 5'b01110;
    w06 = 5'b00011;
    w16 = 5'b00110;
    w26 = 5'b10001;
    w36 = 5'b01111;
    w07 = 5'b01001;
    w17 = 5'b10110;
    w27 = 5'b01111;
    w37 = 5'b10110;
    w48 = 5'b00000;
    w58 = 5'b11111;
    w68 = 5'b00011;
    w78 = 5'b10101;
    w49 = 5'b10100;
    w59 = 5'b10001;
    w69 = 5'b10001;
    w79 = 5'b00110;

    #40
    if (out0_node0 == -20'd6358)
        $display("-----------out0_node0 is correct-----------------");
    else
        $display("-----------out0_node0 is incorrect-----------");
    if (out1_node0 == -20'd4188)
        $display("-----------out1_node0 is correct-----------");
    else
        $display("-----------out1_node0 is incorrect-----------");

    if (out0_node1 == -20'd6309)
        $display("-----------out0_node1 is correct-----------------");
    else
        $display("-----------out0_node1 is incorrect-----------");
    if (out1_node1 == -20'd4455)
        $display("-----------out1_node1 is correct-----------");
    else
        $display("-----------out1_node1 is incorrect-----------");

    if (out0_node2 == -20'd6287)
        $display("-----------out0_node2 is correct-----------------");
    else
        $display("-----------out0_node2 is incorrect-----------");
    if (out1_node2 == -20'd4587)
        $display("-----------out1_node2 is correct-----------");
    else
        $display("-----------out1_node2 is incorrect-----------");

    if (out0_node3 == -20'd6309)
        $display("-----------out0_node3 is correct-----------------");
    else
        $display("-----------out0_node3 is incorrect-----------");
    if (out1_node3 == -20'd4455)
        $display("-----------out1_node3 is correct-----------");
    else
        $display("-----------out1_node3 is incorrect-----------");

    $display("--------------------------------------");


    //Min
    #40
    in_ready = 0;
    #40
    in_ready = 1; 

    x0_node0 = -5'd16;
    x1_node0 = -5'd16;
    x2_node0 = -5'd16;
    x3_node0 = -5'd16;
    
    x0_node1 = -5'd16;
    x1_node1 = -5'd16;
    x2_node1 = -5'd16;
    x3_node1 = -5'd16;
    
    x0_node2 = -5'd16;
    x1_node2 = -5'd16;
    x2_node2 = -5'd16;
    x3_node2 = -5'd16;
    
    x0_node3 = -5'd16;
    x1_node3 = -5'd16;
    x2_node3 = -5'd16;
    x3_node3 = -5'd16;
    
    w04 = -5'd16;
    w14 = -5'd16;
    w24 = -5'd16;
    w34 = -5'd16;
    w05 = -5'd16;
    w15 = -5'd16;
    w25 = -5'd16;
    w35 = -5'd16;
    w06 = -5'd16;
    w16 = -5'd16;
    w26 = -5'd16;
    w36 = -5'd16;
    w07 = -5'd16;
    w17 = -5'd16;
    w27 = -5'd16;
    w37 = -5'd16;
    w48 = -5'd16;
    w58 = -5'd16;
    w68 = -5'd16;
    w78 = -5'd16;
    w49 = -5'd16;
    w59 = -5'd16;
    w69 = -5'd16;
    w79 = -5'd16;

    #40
    if (out0_node0 == -20'd589824)
        $display("-----------out0_node0 is correct-----------------");
    else
        $display("-----------out0_node0 is incorrect-----------");
    if (out1_node0 == -20'd589824)
        $display("-----------out1_node0 is correct-----------");
    else
        $display("-----------out1_node0 is incorrect-----------");

    if (out0_node1 == -20'd589824)
        $display("-----------out0_node1 is correct-----------------");
    else
        $display("-----------out0_node1 is incorrect-----------");
    if (out1_node1 == -20'd589824)
        $display("-----------out1_node1 is correct-----------");
    else
        $display("-----------out1_node1 is incorrect-----------");

    if (out0_node2 == -20'd589824)
        $display("-----------out0_node2 is correct-----------------");
    else
        $display("-----------out0_node2 is incorrect-----------");
    if (out1_node2 == -20'd589824)
        $display("-----------out1_node2 is correct-----------");
    else
        $display("-----------out1_node2 is incorrect-----------");

    if (out0_node3 == -20'd589824)
        $display("-----------out0_node3 is correct-----------------");
    else
        $display("-----------out0_node3 is incorrect-----------");
    if (out1_node3 == -20'd589824)
        $display("-----------out1_node3 is correct-----------");
    else
        $display("-----------out1_node3 is incorrect-----------");

    $display("--------------------------------------");


    //Max
    #40
    in_ready = 0;
    #40
    in_ready = 1; 

    x0_node0 = 5'd15;
    x1_node0 = 5'd15;
    x2_node0 = 5'd15;
    x3_node0 = 5'd15;
    
    x0_node1 = 5'd15;
    x1_node1 = 5'd15;
    x2_node1 = 5'd15;
    x3_node1 = 5'd15;
    
    x0_node2 = 5'd15;
    x1_node2 = 5'd15;
    x2_node2 = 5'd15;
    x3_node2 = 5'd15;
    
    x0_node3 = 5'd15;
    x1_node3 = 5'd15;
    x2_node3 = 5'd15;
    x3_node3 = 5'd15;
    
    w04 = 5'd15;
    w14 = 5'd15;
    w24 = 5'd15;
    w34 = 5'd15;
    w05 = 5'd15;
    w15 = 5'd15;
    w25 = 5'd15;
    w35 = 5'd15;
    w06 = 5'd15;
    w16 = 5'd15;
    w26 = 5'd15;
    w36 = 5'd15;
    w07 = 5'd15;
    w17 = 5'd15;
    w27 = 5'd15;
    w37 = 5'd15;
    w48 = 5'd15;
    w58 = 5'd15;
    w68 = 5'd15;
    w78 = 5'd15;
    w49 = 5'd15;
    w59 = 5'd15;
    w69 = 5'd15;
    w79 = 5'd15;

    #40
    if (out0_node0 == 20'd486000)
        $display("-----------out0_node0 is correct-----------------");
    else
        $display("-----------out0_node0 is incorrect-----------");
    if (out1_node0 == 20'd486000)
        $display("-----------out1_node0 is correct-----------");
    else
        $display("-----------out1_node0 is incorrect-----------");

    if (out0_node1 == 20'd486000)
        $display("-----------out0_node1 is correct-----------------");
    else
        $display("-----------out0_node1 is incorrect-----------");
    if (out1_node1 == 20'd486000)
        $display("-----------out1_node1 is correct-----------");
    else
        $display("-----------out1_node1 is incorrect-----------");

    if (out0_node2 == 20'd486000)
        $display("-----------out0_node2 is correct-----------------");
    else
        $display("-----------out0_node2 is incorrect-----------");
    if (out1_node2 == 20'd486000)
        $display("-----------out1_node2 is correct-----------");
    else
        $display("-----------out1_node2 is incorrect-----------");

    if (out0_node3 == 20'd486000)
        $display("-----------out0_node3 is correct-----------------");
    else
        $display("-----------out0_node3 is incorrect-----------");
    if (out1_node3 == 20'd486000)
        $display("-----------out1_node3 is correct-----------");
    else
        $display("-----------out1_node3 is incorrect-----------");

    $display("--------------------------------------");

end


always
    #1 clk = !clk;


initial
    #1000 $finish;


endmodule
