`timescale 1ns / 1ps

module tb_trng();
wire [15:0] Out, A, B, temp;
reg put_seed, clk;
smfro_rng SMFRO(Out, A, B, temp, put_seed, clk);

initial
begin
    clk=0;
    forever #0.05 clk=~clk;
end

initial
begin
    put_seed = 1'b1;
    #0.07 put_seed = 1'b0;
end

always@(*)
    $display("%d",Out);

endmodule
