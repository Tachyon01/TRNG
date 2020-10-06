module ISU(Ai, Aj, Bi, Bj, Outm, Outn);
output Ai, Aj;
input Bi, Bj, Outm, Outn;
wire x,y;
mux muxBL(x,Bi,Bj,Outn);
mux muxBR(y,Bj,Bi,Outn);
mux muxTL(Ai,~x,~y,Outm);
mux muxTR(Aj,~y,~x,Outm);
endmodule

module mux(y,in1,in0,sel);
output reg y;
input in1, in0, sel;
always@(in1,in0,sel)
 case(sel)
 1'b0: y=in0;
 1'b1: y=in1;
 endcase
endmodule
