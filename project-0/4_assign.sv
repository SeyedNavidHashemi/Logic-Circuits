`timescale 1ns/1ns
module assign_statement_proj(input a, b, c, output y1, y0);
    assign #20 y0= (a ^ b) ^ c;
    assign #30 y1= ((a & b) | (a & c)) | (b & c);
endmodule