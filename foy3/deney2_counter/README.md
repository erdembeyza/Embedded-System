# Deney 2: 4-bit Yukarı/Aşağı Sayıcı

1 Hz hızında çalışan, buton kontrolü ile ileri veya geri sayabilen 4-bitlik bir binary sayıcı tasarımıdır.

## 🛠 Teknik Detaylar
- **İşlev:** 0-15 (4-bit) arası binary sayma.
- **Saat:** 27 MHz sistem saati 1 Hz'e bölünmüştür.
- **Yön Kontrolü:** `btn2` basılıyken aşağı, bırakıldığında yukarı sayar.

## 📌 Pin Bağlantıları
| Sinyal | Pin | Açıklama |
| :--- | :--- | :--- |
| `clk` | 52 | 27 MHz Saat Girişi |
| `btn1` | 3 | Reset (Aktif Düşük) |
| `btn2` | 4 | Yön Seçimi (Basılı=Aşağı) |
| `led[3:0]` | - | 4-bit Binary Çıkış |
| `led[4]` | - | Yön Durum Göstergesi |

## 🚀 Çalıştırma
1. `counter.v` dosyasını Gowin EDA projesine ekle.
2. Pin atamalarını (Constraints) yukarıdaki tabloya göre yap.
3. Sentez ve yerleştirme işlemlerinden sonra `.fs` dosyasını karta yükle.