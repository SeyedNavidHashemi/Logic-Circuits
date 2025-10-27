`timescale 1ns/1ns
module Q2TB();
reg DD = 0;
reg CCLK = 0;

wire QQ, QQb;
D_flip_flop UUT2(DD, CCLK, QQ, QQb);

initial repeat(20) #100 CCLK = ~CCLK;
initial repeat(13) #150 DD = $random;

endmodule