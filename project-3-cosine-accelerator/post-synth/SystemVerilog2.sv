`timescale 1ns/1ns
module Controller(input clk, rst, CO, ADDGTY, output AOS, output reg LDX, LDX2, INIT_TEMP, LD_TEMP, INIT_RES, LD_RES, LDY, SELTEMP, SELXP, SELX, SELX2, SELTBL, INIT_CNT, INC_CNT);
    reg [2:0] pstate = 0, nstate;
    parameter[0:2]
    Init = 0, Wait = 1, Cal_x2 = 2, Mult_1 = 3, Mult_2 = 4, Add = 5;
    reg ready = 1'b0;
    reg cnt_en = 0;
    reg cnt = 1'b0;
    always @(pstate, CO, ADDGTY) begin
        nstate = 0;
        {LDX2, INIT_TEMP, LD_TEMP, INIT_RES, LD_RES, LDY, SELTEMP, SELXP, SELX, SELX2, SELTBL, INIT_CNT, INC_CNT, LDX} = 15'b0;
        case(pstate)
            Init: begin nstate = ready ? Init : Wait; {INIT_RES, INIT_CNT, INIT_TEMP, LDX, LDY} = 5'b11111; end
            Wait: nstate = Cal_x2;
            Cal_x2: begin nstate = Mult_1; {SELXP, SELX, LDX2} = 3'b111; end
            Mult_1: begin nstate = Mult_2; {SELX2, SELTEMP, LD_TEMP} = 3'b111; end
            Mult_2: begin nstate = ADDGTY ? Add : Init; {SELTBL, SELTEMP, LD_TEMP, cnt_en} = 4'b1111; end
            Add: begin nstate = (CO | ~ADDGTY) ? Init : Mult_1; {LD_RES, INC_CNT} = 2'b11; ready = (CO | ~ADDGTY) ? 1'b1 : 1'b0; end
        endcase
    end

    always @(posedge clk, posedge rst) begin
        if(rst) pstate <= Init;
        else
            pstate <= nstate;
    end


    assign AOS = (cnt) ? 1'b0 : 1'b1;
    always @(posedge clk, posedge rst) begin
		if(rst) cnt <= 1'b0;
        else 
			if(cnt_en) cnt <= cnt + 1;
    end
endmodule
