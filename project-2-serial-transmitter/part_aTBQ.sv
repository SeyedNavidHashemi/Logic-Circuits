`timescale 1ns/1ns
module SD_TBQ();
    reg Clk = 0 , Rst = 0 , J = 0;
    wire W;

    SequenceDetector UUT1(Clk, Rst, J, W);
    initial repeat(40) #100 Clk = ~Clk;
    initial begin
    #90 J = 1;
    #200 J = 0;
    #200 J = 1;
    #200 J = 0;
    #200 J = 1;
    #200 J = 1;
    #200 J = 1;
    #200 J = 1;
    #200 J = 1;
    #200 J = 0;
    #200 J = 1;
    #200 J = 0;
    #200 J = 1;
    end
endmodule