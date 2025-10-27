`timescale 1ns/1ns
module tr_level_projTB();
    reg aa, bb, cc;
    wire yy1, yy0, xx1, xx0;
    tr_level_proj CUT1(aa, bb, cc, yy1, yy0);
    gate_together_level_proj CUT2(aa, bb, cc, xx1, xx0);
    assign_statement_proj CUT3(aa, bb, cc, zz1, zz0);
    initial begin
    aa = 0;bb = 0;cc = 0;
    #117 aa = 0;bb = 0;cc = 1;
    #111 aa = 0;bb = 1;cc = 0;
    #113 aa = 0;bb = 1;cc = 1;
    #119 aa = 1;bb = 0;cc = 0;
    #111 aa = 1;bb = 0;cc = 1;
    #113 aa = 1;bb = 1;cc = 0;
    #120 aa = 1;bb = 1;cc = 1;
    #119 $stop;
    end
endmodule
// `timescale 1ns/1ns
// module tr_level_projTB();
//     reg aa, bb, cc;
//     wire yy1, yy0, xx1, xx0;
//     tr_level_proj CUT1(aa, bb, cc, yy1, yy0);
//     gate_together_level_proj CUT2(aa, bb, cc, xx1, xx0);
//     assign_statement_proj CUT3(aa, bb, cc, zz1, zz0);
//     initial begin
//     aa = 0;bb = 0;cc = 0;
//     #117 aa = 1;
//     #111 cc = 1;
//     #113 bb = 1;
//     #119 bb = 0;
//     #111 aa = 0;
//     #113 cc = 0;
//     #119 $stop;
//     end
// endmodule