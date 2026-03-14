led_yak.v Verilog
module led_yak (
output wire [5:0] led "# 6 adet onboard LED
);
"# LED[0]'ı yak (aktif-düşük: 0 = yanık)
"# Diğer LED'leri söndür (1 = sönük)
assign led = 6'b111110;
endmodule