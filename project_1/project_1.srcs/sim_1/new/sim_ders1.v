`timescale 1ns / 1ps
module sim_ders1;
    reg a;
    reg b;
    wire y;
    ders1 uut( .a(a), .b(b), .y(y) );
    initial begin
        #10; a=1'b0; b=1 'b0;
        #10; a=1'b0; b=1 'b1;
        #10; a=1'b1; b=1 'b0;
        #10; a=1'b1; b=1 'b1;
    end
endmodule
