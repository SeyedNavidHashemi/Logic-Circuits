`timescale 1ns/1ns
module Q3_D_flip_flop(input D, Clk, Pre_b, Clr_b, output Q, Qb);
    wire g1, g2, g3, g4;

    SR3_latch G1_and_G2(Pre_b, g4, Clk, Clr_b, g1, g2);
    SR3_latch G3_and_G4(g2, Clk, Clr_b, D, g3, g4);
    SR3_latch G5_and_G6(Pre_b, g2, Clr_b, g3, Q, Qb);
endmodule