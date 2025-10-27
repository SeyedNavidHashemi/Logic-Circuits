`timescale 1ns/1ns
//339
module my_ALU_2(input [15:0] inA, inB, input inC, input[2:0] opc, output reg[15:0] outW, output reg zer, neg);
    
    wire [15:0] t, w;
    wire comp;
    assign comp = (opc == 3'b000) ? 1'b1 : 1'b0; 
    assign w =  (opc == 3'b001 | opc == 3'b000) ? 16'b1:
               (opc == 3'b010) ? (inB + inC):
               (opc == 3'b011) ? (inB >> 1):
               16'bx;
    assign inA = comp ? ~inA : inA;
    assign t = inA + w;
    always @ (inA, inB, inC, opc) begin
        outW = 16'b0;
        zer = 1'b0;
        neg = 1'b0;
        case (opc)
            3'b000: outW = t;
            3'b001: outW = t;
            3'b010: outW = t;
            3'b011: outW = t;
            3'b100: outW = inA & inB;
            3'b101: outW = inA | inB;
            3'b110: outW = {inA[7:0], inB[7:0]};
            default: outW = 16'b0;
        endcase

    zer = (outW == 0) ? 1 : 0;
    neg = (outW[15] == 1) ? 1 : 0; 
    end
endmodule