module mux_2to1
(
    input wire btn1,
    input wire btn2,
    output wire[5:0] led);

    wire sel = ~btn1;
// seçim: basılı=1
    wire d = ~btn2;
// veri: basılı=1
// 2:1 MUX: sel=0 → D0, sel=1 → D1
    wire d0 = 1'b1 ;
// D0 = sabit 1
    wire d1 = d;
// D1 = buton verisi
// MUX formülü: Y = (sel & D1) | (~sel & D0)
    wire mux_out = (sel & d1) | (~sel & d0);
    assign led[0] = ~mux_out;
// MUX çıkışı
    assign led[1] = ~sel;
// Seçim göstergesi
    assign led[2] =1'b1;
    assign led[3] =1'b1;
    assign led[4] =1'b1;
    assign led[5] =1'b1;
endmodule