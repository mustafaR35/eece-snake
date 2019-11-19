module tenBitSubtractor
(
    input [9:0] A,
    input [9:0] B,
    output [9:0] D
);

wire carryOut1, carryOut2, carryOut3, carryout4, carryOut5, carryOut6, carryOut7, carryOut8, carryOut9;
wire [9:0] B_Not;

not not1(B_Not, B);

FULLADDER add1
(
    .A(A[0]),
    .B(B[0]),
    .Co(carryOut1),
    .Ci(0'b1)
)

FULLADDER add2
(
    .A(A[1]),
    .B(B[1]),
    .Co(carryOut2),
    .Ci(carryOut1)
)

FULLADDER add3
(
    .A(A[2]),
    .B(B[2]),
    .Co(carryOut3),
    .Ci(carryOut2)
)

FULLADDER add4
(
    .A(A[3]),
    .B(B[3]),
    .Co(carryOut4),
    .Ci(carryOut3)
)

FULLADDER add5
(
    .A(A[4]),
    .B(B[4]),
    .Co(carryOut5),
    .Ci(carryOut4)
)

FULLADDER add6
(
    .A(A[5]),
    .B(B[5]),
    .Co(carryOut6),
    .Ci(carryOut5)
)

FULLADDER add7
(
    .A(A[6]),
    .B(B[6]),
    .Co(carryOut7),
    .Ci(carryOut6)
)

FULLADDER add8
(
    .A(A[7]),
    .B(B[7]),
    .Co(carryOut8),
    .Ci(carryOut7)
)

FULLADDER add9
(
    .A(A[8]),
    .B(B[8]),
    .Co(carryOut9),
    .Ci(carryOut8)
)

FULLADDER add10
(
    .A(A[9]),
    .B(B[9]),
    .Co(),
    .Ci(carryOut9)
)
