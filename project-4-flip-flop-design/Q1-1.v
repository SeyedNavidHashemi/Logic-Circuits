`timescale 1ns/1ns
module SR2_latch(input S, R, output Q, Qb);

	nand #8 N1(Q, S, Qb);
	nand #8 N2(Qb, R, Q);

endmodule