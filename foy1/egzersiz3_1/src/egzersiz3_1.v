module binary_goster (
    input  wire btn1, btn2,
    output wire [5:0] led
);

    // btn1'i 0. bit, btn2'yi 1. bit olarak kabul edersek:
    assign led[0] = btn1; // Butona basınca (0), LED yanar (0)
    assign led[1] = btn2; // Butona basınca (0), LED yanar (0)

    // Kalan LED'leri (2,3,4,5) söndürmek için aktif-düşük mantığıyla 1 veriyoruz
    assign led[5:2] = 4'b1111; 

endmodule