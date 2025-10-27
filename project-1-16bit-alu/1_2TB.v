`timescale 1ns/1ns
module my_ALU_TB1_2();
    reg [15:0] inAA;
    reg [15:0] inBB;
    reg inCC;
    reg [2:0] OOPC;
    wire [15:0] outWW1;
    wire [15:0] outWW2;
    wire ZZer1, NNeg1;
    wire ZZer2, NNeg2;

    my_ALU CUT1(inAA, inBB, inCC, OOPC, outWW1, ZZer1, NNeg1);
    my_ALU_synth CUT2(inAA, inBB, inCC, OOPC, outWW2, ZZer2, NNeg2);
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