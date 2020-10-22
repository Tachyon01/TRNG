`timescale 1ns / 1ps

module tb_trng();
reg [15:0] A;
reg clk;
wire Out;
smfro_rng SMFRO(A, clk, Out);

initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
    //A=16'b1011101000101010;
    #100 $finish;
end

endmodule
