module mux(y,in1,in0,sel);
output reg y;
input in1, in0, sel;
always@(in1,in0,sel)
 case(sel)
 1'b0: y=in0;
 1'b1: y=in1;
 endcase
endmodule