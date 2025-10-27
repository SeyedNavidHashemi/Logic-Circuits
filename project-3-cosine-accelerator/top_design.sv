`timescale 1ns/1ns
module Ca6Top(input clk, rst, input [15:0] xin, input[7:0] yin, output [15:0] cosx);
    wire co, add_gt_y, a_o_s, ld_x, ld_x2, init_temp, ld_temp, init_res, ld_res, ld_y, sel_temp, sel_xp, sel_x, sel_x2, sel_tbl, init_cnt, inc_cnt;
        Cosx DataPath(.clk(clk), .rst(rst), .aos(a_o_s), .ldx(ld_x), .ldx2(ld_x2),
                    .Init_temp(init_temp), .ld_temp(ld_temp), .Init_res(init_res),
                    .ld_res(ld_res), .ldy(ld_y), .seltemp(sel_temp), .selxp(sel_xp),
                    .selx2(sel_x2), .selx(sel_x), .selTbl(sel_tbl), .Init_cnt(init_cnt),
                    .Inc_cnt(inc_cnt), .XIn(xin), .YIn(yin), .Co(co), .addGTy(add_gt_y),
                    .result(cosx));
    Controller Cont(.clk(clk), .rst(rst), .CO(co), .ADDGTY(add_gt_y), .AOS(a_o_s),
                    .LDX(ld_x), .LDX2(ld_x2), .INIT_TEMP(init_temp), .LD_TEMP(ld_temp),
                    .INIT_RES(init_res), .LD_RES(ld_res), .LDY(ld_y), .SELTEMP(sel_temp),
                    .SELXP(sel_xp), .SELX(sel_x), .SELX2(sel_x2), .SELTBL(sel_tbl), .INIT_CNT(init_cnt),
                    .INC_CNT(inc_cnt));
endmodule