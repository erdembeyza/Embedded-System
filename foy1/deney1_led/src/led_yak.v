module led_yak (
    output wire [5:0] led // 6 adet onboard LED
);
    // Aktif-düşük (0 = yanık, 1 = sönük)
    // Sadece LED[0] yansın istenmiş: 111110
assign led = 6'b000000; // 6 programlanabilir LED'in hepsini yakar 
endmodule