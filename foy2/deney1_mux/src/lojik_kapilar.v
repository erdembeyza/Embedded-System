module lojik_kapilar (
input wire btn1, // S1 (pin 3, aktif-düşük)
input wire btn2, // S2 (pin 4, aktif-düşük)
output wire [5:0] led // 6 LED (aktif-düşük)
);
// Aktif-düşük butonları aktif-yüksek'e çevir
wire a = ~btn1; // basılı = 1
wire b = ~btn2; // basılı = 1

// Her LED'de farklı bir lojik kapı göster
assign led[0] = ~(a & b); // AND → ikisi de basılı
assign led[1] = ~(a | b); // OR → biri basılı
assign led[2] = ~(a ^ b); // XOR → sadece biri basılı
assign led[3] = ~(~a); // NOT → S1'in kendisi
assign led[4] = ~(~(a & b)); // NAND → AND'ın tersi
assign led[5] = ~(~(a | b)); // NOR → OR'un tersi
endmodule