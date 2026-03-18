module mux_4to1(
    input wire btn1,
    input wire btn2,
    output reg [5:0] led

);

    wire [1:0] sel={~btn1, ~btn2};
    always @(*) begin
        case (sel)
            2'b00: led= 6'b111110;
            2'b01: led= 6'b111001;
            2'b10: led= 6'b100111;
            2'b11: led= 6'b000000;
            default: led=6'b111111;
        endcase
    end
endmodule