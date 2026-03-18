`timescale 1ns / 1ps

module Sim_adder();
    
    reg [3:0] a;
    reg [3:0] b;
    reg c_in;
    wire [3:0] Sum;
    wire c_out;
    toplayici uut(
        .a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out)
    );
    initial begin 
        a=4'b0011; b=4'b1001; c_in=1'b0; #10;
        a=4'b1111; b=4'b1101; c_in=1'b0; #10;
        a=4'b1011; b=4'b1111; c_in=1'b1; #10;        

    end
    
    

endmodule
