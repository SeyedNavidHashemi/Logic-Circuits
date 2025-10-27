`timescale 1ns/1ns
module Ca6TBQ();
    logic CLK = 0;
    logic RST = 0;
    logic[15:0] XIN = 16'b0000000001000011;
    logic[7:0] YIN = 0000001;
    wire [15:0] COSX1, COSX2;
    Ca6Top UUT1(.clk(CLK), .rst(RST), .xin(XIN), .yin(YIN), .cosx(COSX1));
    Ca6TopQ UUT2(.clk(CLK), .rst(RST), .xin(XIN), .yin(YIN), .cosx(COSX2))
    // Ca6TopQ UUT2(.clk(CLK), .rst(RST), .xin(XIN), .yin(YIN), .cosx(COSX2));
    initial repeat(100) #500 CLK = ~CLK;
endmodule//0000000110010010