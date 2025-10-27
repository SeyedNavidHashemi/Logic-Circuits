`timescale 1ns/1ns
module Ca4Top(input clk, rst, SerIn, output SerOut);
    wire W, CO, COUT;
    wire Init_Reg, En_Reg, Init_Cnt, Inc_Cnt, Ld_Counter, Dec_Counter, Tri_En;
    wire[7:0] Reg_Out;
    SequenceDetector sd(.clk(clk), .rst(rst), .j(SerIn), .w(W));
    BitCounter bc(.clk(clk), .rst(rst), .serI(SerIn), .en_reg(En_Reg), .Init_reg(Init_Reg), .Init_cnt(Init_Cnt), .Inc_cnt(Inc_Cnt), .reg_out(Reg_Out), .Co(CO));
    Transmitter tr(.ParIn(Reg_Out),.clk(clk), .rst(rst), .serIn(SerIn), .ld_counter(Ld_Counter), .dec_counter(Dec_Counter), .tri_en(Tri_En), .serOut(SerOut), .Cout(COUT));
    Controller cn(.clk(clk), .rst(rst), .W(W), .Co(CO), .Cout(COUT), .Init_reg(Init_Reg), .en_reg(En_Reg), .Init_cnt(Init_Cnt), .Inc_cnt(Inc_Cnt), .ld_counter(Ld_Counter), .dec_counter(Dec_Counter), .tri_en(Tri_En));
endmodule  