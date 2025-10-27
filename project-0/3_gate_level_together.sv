`timescale 1ns/1ns
module gate_together_level_proj (input a, b, c, output y1, y0);
    supply1 Vdd;
    supply0 Gnd;
    wire m, n, o, p, q;

    xor #(10, 14) G1(p, a, b);
    xor #(10, 14) G2(y0, p, c);
    and #(12, 17) G3(o, a, c);
    and #(12, 17) G4(n, b, c);
    and #(12, 17) G5(m, a, b);
    or #(10, 17) G6(q, m, n);
    or #(10, 17) G7(y1, q, o);
endmodule 