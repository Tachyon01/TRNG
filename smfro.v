module smfro_rng(A);
input [15:0] A;
wire [15:0] B;
reg [15:0] Out;

xor16_1 xor16(B[15],A);
xor16_1 xor15(B[14],A);
xor16_1 xor14(B[13],A);
xor16_1 xor13(B[12],A);
xor16_1 xor12(B[11],A);
xor16_1 xor11(B[10],A);
xor16_1 xor10(B[9],A);
xor16_1 xor9(B[8],A);
xor16_1 xor8(B[7],A);
xor16_1 xor7(B[6],A);
xor16_1 xor6(B[5],A);
xor16_1 xor5(B[4],A);
xor16_1 xor4(B[3],A);
xor16_1 xor3(B[2],A);
xor16_1 xor2(B[1],A);
xor16_1 xor1(B[0],A);

ISU ISU1_2(A[0],A[1],B[0],B[1],Out*,Out*);

endmodule
