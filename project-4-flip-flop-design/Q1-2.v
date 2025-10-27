`timescale 1ns/1ns
module SR3_latch(input S1, S2, R1, R2, output Q, Qb);

	nand #12 N1(Q, S1, S2, Qb);
	nand #12 N2(Qb, R1, R2, Q);

endmodule