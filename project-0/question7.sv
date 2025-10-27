`timescale 1ns/1ns
module question_part_7(input a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0, output s3, s2, s1, s0);
    wire m, n;
    question_part_6 first_7_input_OC(a6, a5, a4, a3, a2, a1, a0, y2, y1, y0);
    question_part_6 second_7_input_OC(a13, a12, a11, a10, a9, a8, a7, y5, y4, y3);
    tr_level_proj first_3_input_OC(a14, y3, y0, m, s0);
    tr_level_proj second_3_input_OC(y4, y1, m, n, s1);
    tr_level_proj third_3_input_OC(y5, y2, n, s3, s2);
endmodule