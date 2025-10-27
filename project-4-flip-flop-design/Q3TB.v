`timescale 1ns/1ns
module Q3TB();

    reg DD = 1, CClk = 0, PRE_B = 1, CLR_B = 1;
    wire QQ, QQb;

   Q3_D_flip_flop UUT3(DD, CClk, PRE_B, CLR_B, QQ, QQb);
    initial forever #100 CClk = ~CClk;
    initial begin
    #149 DD = 1; CLR_B = 0;
    #270 DD = 0; CLR_B = 1;
    #350 DD = 1;
    #170 DD = 0;
    #59 DD = 1; PRE_B = 0;
    #117 DD = 0;
    #131 DD = 1;
    #167 DD = 0;
    #200 $stop;
    end
endmodule