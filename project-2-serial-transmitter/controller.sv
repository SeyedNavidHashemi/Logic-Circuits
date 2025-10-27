`timescale 1ns/1ns
module Controller(input clk, rst, W, Co, Cout, output logic Init_reg, en_reg, Init_cnt, Inc_cnt, ld_counter, dec_counter, tri_en);
    logic[1:0] pstate, nstate;
    logic serOutValid;
    parameter[0:1]
    SeqDet = 0, BitCnt = 1, Trans = 2;
    always @(pstate, W, Co, Cout) begin
        nstate = 0;
        {Init_reg, en_reg, Init_cnt, Inc_cnt, ld_counter, dec_counter, tri_en} = 7'b0;
        case(pstate)
            SeqDet: begin nstate = W ? BitCnt : SeqDet; {Init_reg, Init_cnt} = 2'b11; serOutValid = 1'b0; end
            BitCnt: begin nstate = Co ? Trans : BitCnt; {Init_cnt, Init_reg} = 2'b0; {en_reg, Inc_cnt, ld_counter} = 3'b111; end
            Trans: begin nstate = Cout ? SeqDet : Trans; {dec_counter, tri_en} = 2'b11; ld_counter = 1'b0; serOutValid = 1'b1; end
            default: nstate = SeqDet;
        endcase
    end

    always @(posedge clk, posedge rst) begin
        if(rst) pstate <= SeqDet;
        else
            pstate <= nstate;
    end
endmodule