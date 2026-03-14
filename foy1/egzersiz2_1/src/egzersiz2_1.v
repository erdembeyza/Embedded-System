/*module buton_led (
    input wire btn1,      // S1 butonu (pin 3)
    input wire btn2,      // S2 butonu (pin 4)
    output wire [5:0] led // 6 adet LED
);
    // S1=0 (basılı) ve S2=1 (bırakılmış) ise sonuç 0 (yanar) olur.
    // Diğer tüm durumlarda (ikisi de basılı, ikisi de bırakılmış vb.) sonuç 1 (söner) olur.
    assign led[4] = btn1 ^ ~btn2; 

    // Diğer LED'leri sönük tutalım (Aktif-düşük olduğu için 1 veriyoruz)
    assign led[0] = 1'b1;
    assign led[1] = 1'b1;
    assign led[2] = 1'b1;
    assign led[3] = 1'b1;
    assign led[5] = 1'b1;

endmodule
*/
module buton_led (
    input wire btn1,      // S1 butonu (pin 3)
    input wire btn2,      // S2 butonu (pin 4)
    output wire [5:0] led // 6 adet LED
);
    // btn1 ve btn2 ikisi de 1 ise (hiçbirine basılmadıysa) sonuç 6'b000000 (hepsi yanar)
    // Herhangi biri 0 olursa (birine basılırsa) sonuç 6'b111111 (hepsi söner)
    assign led = (btn1 & btn2) ? 6'b000000 : 6'b111111;

endmodule