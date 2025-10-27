`timescale 1ns/1ns
module question_part_7TB();
    reg aa14, aa13, aa12, aa11, aa10, aa9, aa8, aa7, aa6, aa5, aa4, aa3, aa2, aa1, aa0;
    wire ss3, ss2, ss1, ss0;
    question_part_7 CUT(aa14, aa13, aa12, aa11, aa10, aa9, aa8, aa7, aa6, aa5, aa4, aa3, aa2, aa1, aa0, ss3, ss2, ss1, ss0);
    initial begin
    #100 aa14 = 0; aa13 = 0; aa12 = 0; aa11 = 0; aa10 = 0; aa9 = 0; aa8 = 0; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 0; aa0 = 0;
    #100 aa14 = 1; aa13 = 0; aa12 = 1; aa11 = 0; aa10 = 1; aa9 = 1; aa8 = 0; aa7 = 1; aa6 = 1; aa5 = 1; aa4 = 0; aa3 = 0; aa2 = 1; aa1 = 1; aa0 = 0;
    #100 aa14 = 0; aa13 = 0; aa12 = 0; aa11 = 0; aa10 = 0; aa9 = 1; aa8 = 0; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 0; aa0 = 0;
    #100 aa14 = 0; aa13 = 0; aa12 = 1; aa11 = 0; aa10 = 0; aa9 = 0; aa8 = 1; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 1; aa0 = 0;
    #100 aa14 = 1; aa13 = 1; aa12 = 0; aa11 = 0; aa10 = 1; aa9 = 0; aa8 = 0; aa7 = 1; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 1; aa0 = 0;
    #100 aa14 = 0; aa13 = 0; aa12 = 0; aa11 = 1; aa10 = 0; aa9 = 0; aa8 = 0; aa7 = 0; aa6 = 1; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 0; aa0 = 0;
    #100 aa14 = 1; aa13 = 0; aa12 = 1; aa11 = 0; aa10 = 0; aa9 = 0; aa8 = 0; aa7 = 0; aa6 = 0; aa5 = 1; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 1; aa0 = 0;
    #100 aa14 = 0; aa13 = 1; aa12 = 0; aa11 = 1; aa10 = 0; aa9 = 0; aa8 = 0; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 1; aa3 = 0; aa2 = 0; aa1 = 0; aa0 = 0;
    #100 aa14 = 1; aa13 = 0; aa12 = 0; aa11 = 0; aa10 = 0; aa9 = 0; aa8 = 0; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 1; aa2 = 0; aa1 = 0; aa0 = 0;
    #100 aa14 = 0; aa13 = 1; aa12 = 0; aa11 = 1; aa10 = 0; aa9 = 1; aa8 = 1; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 1; aa0 = 0;
    #100 aa14 = 0; aa13 = 0; aa12 = 1; aa11 = 0; aa10 = 1; aa9 = 0; aa8 = 1; aa7 = 0; aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 0; aa0 = 0;
    #100 aa14 = 1; aa13 = 1; aa12 = 1; aa11 = 1; aa10 = 1; aa9 = 1; aa8 = 1; aa7 = 1; aa6 = 1; aa5 = 1; aa4 = 1; aa3 = 1; aa2 = 1; aa1 = 1; aa0 = 1;
    end
endmodule
