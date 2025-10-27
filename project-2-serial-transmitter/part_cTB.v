`timescale 1ns/1ns
module TransmitterTB();
    reg[7:0] parin;
    reg Clk = 0, Rst = 0, SerIn = 1, Ld_conter = 0, Dec_counter = 1, Tri_en = 1;
    wire SerOut, COut;

    Transmitter UUT1(.ParIn(parin), .clk(Clk), .rst(Rst), .serIn(SerIn), .ld_counter(Ld_conter), .dec_counter(Dec_counter), .tri_en(Tri_en), .serOut(SerOut), .Cout(COut));
    initial repeat(50) #100 Clk = ~Clk;
    initial begin
    #90 Ld_conter = 1; parin = 8'b00001010;
    #200 Ld_conter = 0;
    #200 SerIn = 0;
    #200 SerIn = 0;
    #200 SerIn = 1;
    #200 SerIn = 0;
    #200 SerIn = 1;
    #200 SerIn = 1;
    #200 SerIn = 0;
    #200 SerIn = 0;
    #200 SerIn = 1;
    #200 SerIn = 0;
    #50 $stop;
    end
endmodule