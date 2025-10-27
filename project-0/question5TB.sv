`timescale 1ns/1ns
module question_5_and_6_TB();
    reg aa6, aa5, aa4, aa3, aa2, aa1, aa0;
    wire yy2, yy1, yy0, xx2, xx1, xx0;
    question_part_5 CUT1(aa6, aa5, aa4, aa3, aa2, aa1, aa0, yy2, yy1, yy0);
    question_part_6 CUT2(aa6, aa5, aa4, aa3, aa2, aa1, aa0, xx2, xx1, xx0);
    initial begin
    aa6 = 0; aa5 = 1; aa4 = 0; aa3 = 0; aa2 = 1; aa1 = 1; aa0 = 0;
    #151 aa6 = 1; aa4 = 1; aa5 = 1; aa2 = 0;
    #149 aa4 = 1; aa3 = 1; aa6 = 0; aa2 = 1;
    #157 aa2 = 1; aa1 = 0;
    #139 aa0 = 1; aa5 = 1; aa4 = 0; aa3 = 0;
    #131 aa4 = 1; aa3 = 1; aa5= 0; aa2 = 1;
    #179 aa6 = 0;aa3 = 0; aa2 = 0; aa4 = 0;
    #156 aa6 = 0; aa5 = 1; aa4 = 1; aa3 = 0; aa2 = 0; aa1 = 1; aa0 = 0;
    #134 aa6 = 0; aa5 = 0; aa4 = 0; aa3 = 0; aa2 = 0; aa1 = 0; aa0 = 0;
    #119 $stop;      
    end   
endmodule
