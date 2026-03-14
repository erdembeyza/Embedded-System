`timescale 1ns/1ps

module tb_majority4;
    reg a, b, c, d; // Girişler reg (değiştireceğimiz için)
    wire y;          // Çıkış wire

    // Test edilecek modülü (UUT) buraya bağlıyoruz
    majority4 uut (
        .a(a), .b(b), .c(c), .d(d), .y(y)
    );

    integer i;
    initial begin
        $display("a b c d | y"); // Konsola başlık yazdır
        for (i = 0; i < 16; i = i + 1) begin
            {a, b, c, d} = i;   // i sayısını binary olarak girişlere ata
            #10;                // 10ns bekle
            $display("%b %b %b %b | %b", a, b, c, d, y);
        end
        $finish; // Simülasyonu bitir
    end
endmodule