`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2020 23:59:07
// Design Name: 
// Module Name: ISU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ISU(Ai, Aj, Bi, Bj, Outm, Outn);
output Ai, Aj;
input Bi, Bj, Outm, Outn;
wire x,y;
mux muxBL(x,Bi,Bj,Outn);
mux muxBR(y,Bj,Bi,Outn);
mux muxTL(Ai,~x,~y,Outm);
mux muxTR(Aj,~y,~x,Outm);
endmodule