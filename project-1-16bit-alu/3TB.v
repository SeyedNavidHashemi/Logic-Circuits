`timescale 1ns/1ns
module my_ALU_TB3();
    reg [15:0] inAA;
    reg [15:0] inBB;
    reg inCC;
    reg [2:0] OOPC;
    wire [15:0] outWW1;
    wire [15:0] outWW3;
    wire ZZer1;
    wire ZZer3;
    wire NNeg1;
    wire NNeg3;
    my_ALU CUT1(inAA, inBB, inCC, OOPC, outWW1, ZZer1, NNeg1);
    my_ALU_3_synth CUT3(inAA, inBB, inCC, OOPC, outWW3, ZZer3, NNeg3);
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