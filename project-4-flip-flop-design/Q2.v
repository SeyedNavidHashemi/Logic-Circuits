`timescale 1ns/1ns
module D_flip_flop(input D, Clk, output Q, Qb);
    wire g1, g2, g3, g4;

    SR2_latch G1_and_G2(g4, Clk, g1, g2); 
    SR3_latch G3_and_G4(g2, Clk, D, D, g3, g4);
    SR2_latch G5_and_G6(g2, g3, Q, Qb);

endmodule