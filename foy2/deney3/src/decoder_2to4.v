module decoder_2to4 (
    input  wire btn1,        // A1 (üst bit)
    input  wire btn2,        // A0 (alt bit)
    output reg  [5:0] led
);

    wire [1:0] addr = {~btn1, ~btn2};

    always @(*) begin
        led = 6'b111111;    // önce hepsini söndür

        case (addr)
            2'b00:   led[0] = 1'b0;  // LED[0] yak
            2'b01:   led[1] = 1'b0;  // LED[1] yak
            2'b10:   led[2] = 1'b0;  // LED[2] yak
            2'b11:   led[3] = 1'b0;  // LED[3] yak
            default: led = 6'b111111;
        endcase
    end

endmodule