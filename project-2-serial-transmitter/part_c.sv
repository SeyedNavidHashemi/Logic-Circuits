`timescale 1ns/1ns
module Transmitter(input[7:0] ParIn, input clk, rst, serIn, ld_counter, dec_counter, tri_en, output serOut, Cout);
    logic[7:0] countReg;
    always @(posedge clk, posedge rst) begin
       if(rst)
        countReg <= 8'b0;
       else
        if(ld_counter) 
            countReg <= ParIn;
        else
            if(dec_counter) countReg <= countReg - 1'b1;
    end
    assign Cout = ~|{countReg};
    assign serOut = tri_en ? serIn : 1'bz; 
endmodule