`timescale 1ns / 1ps

module ISU(Ai, Aj, Bi, Bj, Outm, Outn);
  output Ai, Aj;
  input Bi, Bj, Outm, Outn;
  wire x,y;
  mux muxBL(x,Bi,Bj,Outn);
  mux muxBR(y,Bj,Bi,Outn);
  mux muxTL(Ai,~x,~y,Outm);
  mux muxTR(Aj,~y,~x,Outm);
endmodule
