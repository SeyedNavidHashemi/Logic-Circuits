`timescale 1ns/1ns
module question_part_6(input a6, a5, a4, a3, a2, a1, a0, output y2, y1, y0);
    wire m, n, o, p, q;
    assign_statement_proj first_3_input_OC(a2, a1, a0, n, m);
    assign_statement_proj second_3_input_OC(a5, a4, a3, p, o);
    assign_statement_proj third_3_input_OC(a6, o, m, q, y0);
    assign_statement_proj forth_3_input_OC(n, p, q, y2, y1);
endmodule