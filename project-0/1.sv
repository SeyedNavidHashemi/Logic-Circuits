`timescale 1ns/1ns
module tr_level_proj (input a, b, c, output y1, y0);
    supply1 Vdd;
    supply0 Gnd;
    wire m, n, o, p, q, r, s, t, u, v, w, x, y, z;
        
    pmos #(5, 6, 7) T1(m, Vdd, ~a);
    pmos #(5, 6, 7) T2(n, Vdd, ~c);
    pmos #(5, 6, 7) T3(y1, m, ~b);
    pmos #(5, 6, 7) T4(y1, m, ~c);
    pmos #(5, 6, 7) T5(y1, n, ~b);
    nmos #(3, 4, 5) T6(y1, o, ~a);
    nmos #(3, 4, 5) T7(y1, p, ~b);
    nmos #(3, 4, 5) T8(p, o, ~c);
    nmos #(3, 4, 5) T9(o, Gnd, ~c);
    nmos #(3, 4, 5) T10(o, Gnd, ~b);

    pmos #(5, 6, 7) T11(q, Vdd, a);
    pmos #(5, 6, 7) T12(s, q, b);
    pmos #(5, 6, 7) T13(y0, s, ~c);
    pmos #(5, 6, 7) T14(t, q, ~b);
    pmos #(5, 6, 7) T15(y0, t, c);
    pmos #(5, 6, 7) T16(r, Vdd, ~a);
    pmos #(5, 6, 7) T17(u, r, c);
    pmos #(5, 6, 7) T18(y0, u, b);
    pmos #(5, 6, 7) T19(v, r, ~b);
    pmos #(5, 6, 7) T20(y0, v, ~c);
    nmos #(3, 4, 5) T21(y0, x, a);
    nmos #(3, 4, 5) T22(y0, w, b);
    nmos #(3, 4, 5) T23(y0, w, ~c);
    nmos #(3, 4, 5) T24(w, x, ~b);
    nmos #(3, 4, 5) T25(w, x, c);
    nmos #(3, 4, 5) T26(x, Gnd, ~a);
    nmos #(3, 4, 5) T27(x, y, ~b);
    nmos #(3, 4, 5) T28(x, y, ~c);
    nmos #(3, 4, 5) T29(y, Gnd, b);
    nmos #(3, 4, 5) T30(y, Gnd, c);
endmodule