module clock_divider(
    input wire clk,
    input wire btn1,
    output reg [5:0] led
);

    parameter HEDEF= 13_500_000;
    reg [23:0] sayici;
    reg clk_1hz;

    always @(posedge clk)begin
        if(~btn1) begin
            sayici<= 0;
            clk_1hz <= 0;
        end
        else if (sayici==HEDEF - 1) begin
            sayici <= 0;
            clk_1hz <= ~clk_1hz;
        end
        else begin
            sayici<= sayici+1;
        end
    end
    always@(*) begin
        led =6'b111111;
        led[0]= ~clk_1hz;
    end
endmodule