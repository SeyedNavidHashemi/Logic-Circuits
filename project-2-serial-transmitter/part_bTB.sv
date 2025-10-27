`timescale 1ns/1ns
module BitCounterTB();
    logic Clk = 0, RST = 0, SerI = 0, En_reg = 1, Init_Reg = 0, Init_Cnt = 0, Inc_Cnt = 1;
    wire CO;
    wire [7:0] Reg_Out;
    BitCounter UUT1(Clk, Rst, SerI, En_reg, Init_Reg, Init_Cnt, Inc_Cnt, Reg_Out, CO);
    initial repeat(50) #100 Clk = ~Clk;
    initial begin
    #150 Init_Cnt = 1; Init_Reg = 1;
    #400 Init_Cnt = 0; Init_Reg = 0;
    #200 SerI = 0;
    #200 SerI = 1;
    #200 SerI = 1;
    #200 SerI = 1;
    #200 SerI = 0;
    #200 SerI = 1;
    #200 SerI = 1;
    #200 SerI = 0;
    #200 SerI = 1;
    #200 SerI = 0;
    #200 SerI = 0;
    #200 SerI = 0;

    #50 $stop;
    end
endmodule