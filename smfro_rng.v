`timescale 1ns / 1ps

module smfro_rng(Out, A, B, temp, put_seed, clk);
output [15:0] B, temp;
input put_seed, clk;
output reg [15:0] Out, A;
//wire [15:0] temp;

parameter seed = 16'b0110101101100100;

always@(posedge clk)
begin
    if(put_seed) begin
        Out <= seed;
        A <= seed;
    end
    else begin
        Out <= temp;
        A <=  temp;
    end
end

/*dff dff0(Out[0],A[0],clk);
dff dff1(Out[1],A[1],clk);
dff dff2(Out[2],A[2],clk);
dff dff3(Out[3],A[3],clk);
dff dff4(Out[4],A[4],clk);
dff dff5(Out[5],A[5],clk);
dff dff6(Out[6],A[6],clk);
dff dff7(Out[7],A[7],clk);
dff dff8(Out[8],A[8],clk);
dff dff9(Out[9],A[9],clk);
dff dff10(Out[10],A[10],clk);
dff dff11(Out[11],A[11],clk);
dff dff12(Out[12],A[12],clk);
dff dff13(Out[13],A[13],clk);
dff dff14(Out[14],A[14],clk);
dff dff15(Out[15],A[15],clk);*/

xor16_1 xor16(B[15],{1'b0,A[14:0]});
xor16_1 xor15(B[14],{2'b00,A[13:1],1'b0});
xor16_1 xor14(B[13],{A[15],2'b00,A[12:0]});
xor16_1 xor13(B[12],{A[15:14],2'b00,A[11:0]});
xor16_1 xor12(B[11],{A[15:13],2'b00,A[10:0]});
xor16_1 xor11(B[10],{A[15:12],2'b00,A[9:0]});
xor16_1 xor10(B[9],{A[15:11],2'b00,A[8:0]});
xor16_1 xor9(B[8],{A[15:10],2'b00,A[7:0]});
xor16_1 xor8(B[7],{A[15:09],2'b00,A[6:0]});
xor16_1 xor7(B[6],{A[15:08],2'b00,A[5:0]});
xor16_1 xor6(B[5],{A[15:07],2'b00,A[4:0]});
xor16_1 xor5(B[4],{A[15:06],2'b00,A[3:0]});
xor16_1 xor4(B[3],{A[15:05],2'b00,A[2:0]});
xor16_1 xor3(B[2],{A[15:04],2'b00,A[1:0]});
xor16_1 xor2(B[1],{A[15:03],2'b00,A[0]});
xor16_1 xor1(B[0],{A[15:02],2'b00});

ISU ISU1_2(temp[0],temp[1],B[0],B[1],Out[0],Out[1]);
ISU ISU3_4(temp[2],temp[3],B[2],B[3],Out[2],Out[3]);
ISU ISU5_6(temp[4],temp[5],B[4],B[5],Out[4],Out[5]);
ISU ISU7_8(temp[6],temp[7],B[6],B[7],Out[6],Out[7]);
ISU ISU9_10(temp[8],temp[9],B[8],B[9],Out[8],Out[9]);
ISU ISU11_12(temp[10],temp[11],B[10],B[11],Out[10],Out[11]);
ISU ISU13_14(temp[12],temp[13],B[12],B[13],Out[12],Out[13]);
ISU ISU15_16(temp[14],temp[15],B[14],B[15],Out[14],Out[15]);
endmodule
