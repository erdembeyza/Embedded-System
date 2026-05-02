# Deney 3: Kayan Işık (LED Chaser / Shift Register)

6 adet LED üzerinde sağa ve sola otomatik olarak kayan bir ışık efekti tasarımıdır.

## 🛠 Teknik Detaylar
- **Değişken Hız:** `btn2` (S2) butonuna basıldığında kayma hızı 2 Hz'den 10 Hz'e çıkar.
- **Hareket Mantığı:** Işık 0'dan 5'e kadar ilerler, sınıra ulaştığında yön değiştirerek geri döner (Ping-pong efekti).
- **Donanım:** Tang Nano 9K dahili kristal osilatörü (27 MHz) kullanılmıştır.

## 📌 Pin Bağlantıları
| Sinyal | Pin | Açıklama |
| :--- | :--- | :--- |
| `clk` | 52 | 27 MHz Saat Girişi |
| `btn1` | 3 | Reset (S1) |
| `btn2` | 4 | Hız Seçimi (S2) |
| `led[5:0]` | - | Kayar Işık Çıkışları |

## 🚀 Çalıştırma
1. `led_chaser.v` dosyasını projenize dahil edin.
2. Sentezleme (Synthesize) işleminden sonra pinleri kartınıza göre atayın.
3. `.fs` dosyasını yükledikten sonra butonlarla hızı ve reset durumunu test edin.