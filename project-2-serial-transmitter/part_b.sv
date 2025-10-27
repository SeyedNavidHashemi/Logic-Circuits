`timescale 1ns/1ns
module BitCounter(input clk, rst, serI, en_reg, Init_reg, Init_cnt, Inc_cnt, output logic [7:0] reg_out, output Co);
    logic [2:0] counter;
    always @(posedge clk, posedge rst) begin
        if(rst) reg_out <= 8'b0;
        else
            if(Init_reg) reg_out <= 8'b0;
            else
                if(en_reg) reg_out <= {serI, reg_out[7:1]};
    end
    //counter part
    always @(posedge clk, posedge rst) begin
        if(rst) counter <= 3'b000;
        else
            if(Init_cnt) begin counter <= 3'b000;
            end
            else
                if(Inc_cnt)
                    counter <= counter + 1'b1;
            
    end
    assign Co = &counter;
endmodule