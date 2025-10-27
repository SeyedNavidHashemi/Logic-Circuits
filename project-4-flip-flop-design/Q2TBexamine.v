`timescale 1ns/1ns
module Q2TBexamine();
reg DD = 0;
reg CCLK = 0;

wire QQ, QQb;
D_flip_flop UUT2(DD, CCLK, QQ, QQb);

initial forever #100 CCLK = ~CCLK;
initial begin
    #120 DD = 1;//120 
    #80 DD = 0;//200
    #240 DD = 1;//440
    #61 DD = 0;//609
    #50 DD = 1;//663
    #117 DD = 0;//780
    #490 DD = 0;//1270
    #240 $stop;
end

endmodule
