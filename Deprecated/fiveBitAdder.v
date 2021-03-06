module fiveBitAdder
(
    input [4:0] A,
    input [4:0] B,
    output [4:0] S
);

wire carryOut, carryOut2, carryOut3, carryOut4;

FULLADD add1
(
    .A({A[0]}), 
    .B({B[0]}),
    .Ci({1'b0}),
    .Co(carryOut),
    .SUM(S[0])
);

FULLADD add2
(
    .A({A[1]}), 
    .B(B[1]),
    .Ci({carryOut}),
    .Co(carryOut2),
    .SUM(S[1])
);

FULLADD add3
(
    .A({A[2]}), 
    .B({B[2]}),
    .Ci({carryOut2}),
    .Co(carryOut3),
    .SUM(S[2])
);

FULLADD add4
(
    .A({A[3]}), 
    .B({B[3]}),
    .Ci({carryOut3}),
    .Co(carryOut4),
    .SUM(S[3])
);

FULLADD add5
(
    .A({A[4]}), 
    .B({B[4]}),
    .Ci({carryOut4}),
    .Co(),
    .SUM(S[4])
);

endmodule
