// ==========================================
// Deney 3: Kayan Işık (LED Chaser)
// 6 LED'de sağa-sola kayan tek ışık
// ==========================================

module led_chaser (
    input wire clk,
    input wire btn1,    // Reset
    input wire btn2,    // Hız: basılı=hızlı
    output reg [5:0] led
);

    // Hız seçimi
    parameter HIZ_YAVAS = 6_750_000;  // 2 Hz
    parameter HIZ_HIZLI = 1_350_000;  // 10 Hz

    reg [23:0] clk_sayici;
    reg clk_led;
    wire [23:0] hedef = (~btn2) ? HIZ_HIZLI : HIZ_YAVAS;

    // Ayarlanabilir clock bölücü
    always @(posedge clk) begin
        if (clk_sayici >= hedef - 1) begin
            clk_sayici <= 0;
            clk_led <= ~clk_led;
        end
        else
            clk_sayici <= clk_sayici + 1;
    end

    // Konum ve yön kontrolü
    reg [2:0] pozisyon;  // 0-5 arası
    reg yon;             // 0=sağa, 1=sola

    always @(posedge clk_led) begin
        if (~btn1) begin
            pozisyon <= 0;
            yon <= 0;
        end
        else begin
            // Kenar kontrolü ve yön değiştirme
            if (pozisyon == 5 && yon == 0)
                yon <= 1;
            else if (pozisyon == 0 && yon == 1)
                yon <= 0;

            // Hareketi uygula
            if (yon == 0)
                pozisyon <= pozisyon + 1;
            else
                pozisyon <= pozisyon - 1;
        end
    end

    // LED çıkışı: Sadece o anki pozisyondaki LED yanar (aktif-düşük)
    always @(*) begin
        led = 6'b111111;      // Tüm LED'leri söndür
        led[pozisyon] = 1'b0; // Sadece seçili olanı yak
    end

endmodule