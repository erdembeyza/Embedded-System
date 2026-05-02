# Deney 1: 1 Hz Clock Bölücü

27 MHz ana saat sinyalini bölerek bir LED'in saniyede bir kez yanıp sönmesini sağlar.

## 🛠 Teknik Detaylar

- **Kart:** Tang Nano 9K (Gowin EDA)
- **Saat Frekansı:** 27 MHz (Pin 52)
- **Hesaplama:** 27.000.000 / 2 = 13.500.000 (0.5 sn toggle)

## 📌 Pin Bağlantıları

| Sinyal   | Pin | Açıklama            |
| :------- | :-- | :------------------ |
| `clk`    | 52  | 27 MHz Saat         |
| `btn1`   | 3   | Reset (Aktif Düşük) |
| `led[0]` | -   | 1 Hz LED Çıkışı     |

## 🚀 Çalıştırma

1. Verilog kodunu projeye ekle.
2. Pin atamalarını yap ve sentezle.
3. `.fs` dosyasını karta yükle.
