`timescale 1ns/1ns
module Cosx(input clk, rst, aos, ldx, ldx2, Init_temp, ld_temp, Init_res, ld_res, ldy, seltemp, selxp, selx2, selx, selTbl, Init_cnt, Inc_cnt, input[15:0] XIn, input[7:0] YIn, output Co, addGTy, output[15:0] result);
    logic [2:0] count_reg;
    logic [15:0] x_reg, x2_reg, temp_reg, res_reg;
    logic [7:0] y_reg;

    wire [31:0] multres;
    wire [16:0] addres;
    wire [15:0] mux1, mux2, tableOut;

    logic [15:0] looktable [7:0];
    assign looktable[0] = 16'b0000000010000000;
    assign looktable[1] = 16'b0000000000010101;
    assign looktable[2] = 16'b0000000000001000;
    assign looktable[3] = 16'b0000000000000100;
    assign looktable[4] = 16'b0000000000000010;
    assign looktable[5] = 16'b0000000000000001;
    assign looktable[6] = 16'b0000000000000001;
    assign looktable[7] = 16'b0000000000000001;
    
    always @(posedge clk, posedge rst) begin
        if(rst) count_reg <= 3'b0;
        else
            if(Init_cnt) count_reg <= 3'b0;
            else if(Inc_cnt) count_reg <= count_reg + 1;
    end
//xreg
    always @(posedge clk, posedge rst) begin
        if(rst)
            x_reg <= 16'b0;
        else
            if(ldx) x_reg <= XIn;
    end
//x2reg
     always @(posedge clk, posedge rst) begin
        if(rst)
            x2_reg <= 16'b0;
        else
            if(ldx2) x2_reg <= multres[23:8];
    end
//temp_reg
    always @(posedge clk, posedge rst) begin
        if(rst)
            temp_reg <= 16'b0;
        else
            if(Init_temp) temp_reg <= 16'b0000000011111111;
            else if(ld_temp) temp_reg <= multres[23:8];
    end
//res_reg
    always @(posedge clk, posedge rst) begin
        if(rst)
            res_reg <= 16'b0;
        else
            if(Init_res) res_reg <= 16'b0000000011111111;
            else if(ld_res) res_reg <= addres[15:0];
    end
//y_reg
    always @(posedge clk, posedge rst) begin
        if(rst)
            y_reg <= 8'b0;
        else
            if(ldy) y_reg <= YIn;
    end

    assign mux1 = seltemp ? temp_reg :
                  selxp ? x_reg : 16'b0;
    assign mux2 = selx ? x_reg :
           selx2 ? x2_reg :
           selTbl ? tableOut : 16'b0;
    assign multres = mux1 * mux2;
    assign addres = aos ? (temp_reg + res_reg) : (res_reg - temp_reg);

    assign addGTy = (addres >= {8'b0, y_reg}) ? 1'b1 : 1'b0;
    assign tableOut = looktable[count_reg];
    assign result = res_reg;
    assign Co = &{count_reg};
endmodule