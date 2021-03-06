module twentyBitCounter
(
    input [19:0] max,
    input en,
    input clock,
    output [19:0] count
);

//wire en_pulse;

// Pulser for Input
/*pulser pulse1
(
    .D(en),
    .clock(clock),
    .Q(en_pulse)
);*/

// Logical Comparitor for Max

wire opcode_not, opcode;

wire [19:0] muxout;
wire [19:0] addout;
wire [19:0] dffwire;

twentyBitComparitor comp1
(
    .A(max),
    .B(dffwire),
    .F(opcode_not)
);

not not1(opcode, opcode_not);

/*wire [9:0]xnorwire;

xnor xnor1(xnorwire[0], max[0], dffwire[0]);

xnor xnor2(xnorwire[1], max[1], dffwire[1]);

xnor xnor3(xnorwire[2], max[2], dffwire[2]);

xnor xnor4(xnorwire[3], max[3], dffwire[3]);

xnor xnor5(xnorwire[4], max[4], dffwire[4]);

xnor xnor6(xnorwire[5], max[5], dffwire[5]);

xnor xnor7(xnorwire[6], max[6], dffwire[6]);

xnor xnor8(xnorwire[7], max[7], dffwire[7]);

xnor xnor9(xnorwire[8], max[8], dffwire[8]);

xnor xnor10(xnorwire[9], max[9], dffwire[9]);

nand and1(opcode, xnorwire[0], xnorwire[1], xnorwire[2], xnorwire[3], xnorwire[4], xnorwire[5], xnorwire[6], xnorwire[7], xnorwire[8], xnorwire[9]);
*/

// Mux for ALU
mux #(2,1) mux1
(
    .data_out(muxout[0]),
    .select_in({opcode}),
    .data_in({dffwire[0],1'b0})
);

mux #(2,1) mux2
(
    .data_out(muxout[1]),
    .select_in({opcode}),
    .data_in({dffwire[1],1'b0})
);

mux #(2,1) mux3
(
    .data_out(muxout[2]),
    .select_in({opcode}),
    .data_in({dffwire[2],1'b0})
);

mux #(2,1) mux4
(
    .data_out(muxout[3]),
    .select_in({opcode}),
    .data_in({dffwire[3],1'b0})
);

mux #(2,1) mux5
(
    .data_out(muxout[4]),
    .select_in({opcode}),
    .data_in({dffwire[4],1'b0})
);

mux #(2,1) mux6
(
    .data_out(muxout[5]),
    .select_in({opcode}),
    .data_in({dffwire[5],1'b0})
);

mux #(2,1) mux7
(
    .data_out(muxout[6]),
    .select_in({opcode}),
    .data_in({dffwire[6],1'b0})
);

mux #(2,1) mux8
(
    .data_out(muxout[7]),
    .select_in({opcode}),
    .data_in({dffwire[7],1'b0})
);

mux #(2,1) mux9
(
    .data_out(muxout[8]),
    .select_in({opcode}),
    .data_in({dffwire[8],1'b0})
);

mux #(2,1) mux10
(
    .data_out(muxout[9]),
    .select_in({opcode}),
    .data_in({dffwire[9],1'b0})
);

mux #(2,1) mux11
(
    .data_out(muxout[10]),
    .select_in({opcode}),
    .data_in({dffwire[10],1'b0})
);

mux #(2,1) mux12
(
    .data_out(muxout[11]),
    .select_in({opcode}),
    .data_in({dffwire[11],1'b0})
);

mux #(2,1) mux13
(
    .data_out(muxout[12]),
    .select_in({opcode}),
    .data_in({dffwire[12],1'b0})
);

mux #(2,1) mux14
(
    .data_out(muxout[13]),
    .select_in({opcode}),
    .data_in({dffwire[13],1'b0})
);

mux #(2,1) mux15
(
    .data_out(muxout[14]),
    .select_in({opcode}),
    .data_in({dffwire[14],1'b0})
);

mux #(2,1) mux16
(
    .data_out(muxout[15]),
    .select_in({opcode}),
    .data_in({dffwire[15],1'b0})
);

mux #(2,1) mux17
(
    .data_out(muxout[16]),
    .select_in({opcode}),
    .data_in({dffwire[16],1'b0})
);

mux #(2,1) mux18
(
    .data_out(muxout[17]),
    .select_in({opcode}),
    .data_in({dffwire[17],1'b0})
);

mux #(2,1) mux19
(
    .data_out(muxout[18]),
    .select_in({opcode}),
    .data_in({dffwire[18],1'b0})
);

mux #(2,1) mux20
(
    .data_out(muxout[19]),
    .select_in({opcode}),
    .data_in({dffwire[19],1'b0})
);

//Flip-Flops for Enable

register #(20) reg1
(
    .clk(clock),
    .load(en),
    .d(addout),
    .q(dffwire)
);

/*dff_en dff1
(
    .data_out(dffwire[0]),
    .in_D(addout[0]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff2
(
    .data_out(dffwire[1]),
    .in_D(addout[1]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff3
(
    .data_out(dffwire[2]),
    .in_D(addout[2]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff4
(
    .data_out(dffwire[3]),
    .in_D(addout[3]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff5
(
    .data_out(dffwire[4]),
    .in_D(addout[4]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff6
(
    .data_out(dffwire[5]),
    .in_D(addout[5]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff7
(
    .data_out(dffwire[6]),
    .in_D(addout[6]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff8
(
    .data_out(dffwire[7]),
    .in_D(addout[7]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff9
(
    .data_out(dffwire[8]),
    .in_D(addout[8]),
    .in_CLK(clock),
    .in_EN(en_pulse)
);

dff_en dff10
(
    .data_out(dffwire[9]),
    .in_D(addout[9]),
    .in_CLK(clock),
    .in_EN(en_pulse)
); */

// Logical 10-Bit Adder

twentyBitAdder add1
(
    .A(1'b1),
    .B(muxout),
    .S(addout)
);

assign count = muxout;


endmodule
