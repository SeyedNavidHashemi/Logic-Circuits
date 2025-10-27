`timescale 1ns/1ns
module my_ALU_TB1();
    reg [15:0] inAA;
    reg [15:0] inBB;
    reg inCC;
    reg [2:0] OOPC;
    wire [15:0] outWW;
    wire ZZer, NNeg;

    my_ALU CUT1(inAA, inBB, inCC, OOPC, outWW, ZZer, NNeg);
    initial begin
        repeat(6) begin
        inAA = $random;
        inBB = $random;
        inCC = $random;
        OOPC = $random;
        #100;
        end
    end
endmodule