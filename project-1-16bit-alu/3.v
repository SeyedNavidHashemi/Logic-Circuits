`timescale 1ns/1ns
module adder(input [15:0] A, B, input Carry, output [15:0] W);
    assign W = A + B + Carry;
endmodule

module my_ALU_3(input [15:0] inA, inB, input inC, input[2:0] opc, output reg[15:0] outW, output reg zer, neg);
    wire [15:0] output_of_adder;
    reg [15:0] A_adder, B_adder;
    reg Carry_adder;
    assign A_adder = (opc == 3'b000) ? ~inA : inA;

    assign B_adder = (opc == 3'b000) ? 16'b0:
                     (opc == 3'b001) ? 16'b0:
                     (opc == 3'b010) ? inB:
                     (opc == 3'b011) ? (inB >> 1):
                     16'bx;

    assign Carry_adder = (opc == 3'b000) ? 1'b1:
                         (opc == 3'b001) ? 1'b1:
                         (opc == 3'b010) ? inC:
                         (opc == 3'b011) ? 1'b0:
                         1'bx;
    adder my_adder(A_adder, B_adder, Carry_adder, output_of_adder);  
    always @ (inA, inB, inC, opc) begin
        outW = 16'b0;
        zer = 1'b0;
        neg = 1'b0;
        
        case (opc)
            3'b000: outW = output_of_adder;
            3'b001: outW = output_of_adder;
            3'b010: outW = output_of_adder;
            3'b011: outW = output_of_adder;
            3'b100: outW = inA & inB;
            3'b101: outW = inA | inB;
            3'b110: outW = {inA[7:0], inB[7:0]};
            default: outW = 16'b0;
        endcase

    zer = (outW == 0) ? 1 : 0;
    neg = (outW[15] == 1) ? 1 : 0; 
    end
endmodule