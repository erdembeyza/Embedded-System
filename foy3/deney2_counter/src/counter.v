// ==========================================
// Deney 2: 4-bit Yukarı/Aşağı Sayıcı
// LED[3:0]'da binary, S2 ile yön seçimi
// ==========================================

module counter (
    input wire clk,
    input wire btn1,    // Reset
    input wire btn2,    // Yön: basılı=aşağı
    output reg [5:0] led
);

    // Clock bölücü: 1 Hz
    parameter HEDEF = 13_500_000;
    reg [23:0] clk_sayici;
    reg clk_yavaz;

    always @(posedge clk) begin
        if (clk_sayici == HEDEF - 1) begin
            clk_sayici <= 0;
            clk_yavaz <= ~clk_yavaz;
        end
        else
            clk_sayici <= clk_sayici + 1;
    end

    // 4-bit sayıcı
    reg [3:0] deger;

    always @(posedge clk_yavaz) begin
        if (~btn1)              // Reset
            deger <= 4'b0000;
        else if (~btn2)         // Aşağı say
            deger <= deger - 1;
        else                    // Yukarı say
            deger <= deger + 1;
    end

    // LED gösterimi (aktif-düşük)
    always @(*) begin
        led[3:0] = ~deger;      // 4-bit binary
        led[4] = btn2;          // Yön göstergesi
        led[5] = 1'b1;          // Sönük
    end

endmodule