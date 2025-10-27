`timescale 1ns/1ns
module Q1TB();
	reg SS;
	reg RR;
	wire QQ;
	wire QQb;
	SR2_latch UUT1(SS, RR, QQ, QQb);
	initial begin
        SS = 0; RR = 1;
        #100 SS = 0; RR = 0;
        #100 SS = 0; RR = 1;
        #100 SS = 0; RR = 0;
        #100 SS = 1; RR = 0;
        #100 SS = 0; RR = 0;
        #100 SS = 1; RR = 1;
        #100 SS = 0; RR = 0;
        #100 SS = 0; RR = 1;
        #100 SS = 1; RR = 0;
        #100 SS = 0; RR = 1;
        #100 SS = 1; RR = 1;
        #100 SS = 0; RR = 1;
        #100 SS = 1; RR = 0;
        #100 SS = 1; RR = 1;
        #100 SS = 1; RR = 0;
        #100 SS = 1; RR = 1;
        #100 $stop;
    end
endmodule