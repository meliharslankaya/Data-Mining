## Temel Fonksiyonlar

Bu klasörde, R programlama dilinde veri madenciliği ve analizi için temel fonksiyonlar bulunmaktadır. Bu fonksiyonlar, veri setlerini yükleme, temel istatistiksel analizler yapma, veri manipülasyonu ve görselleştirme gibi işlemleri gerçekleştirmek için kullanılabilir.

### Fonksiyonlar

- `kare(x)`: Verilen bir sayının karesini döndüren bir fonksiyondur.
- `gerisayim(a)`: Belirtilen bir sayıdan geriye doğru saymayı sağlayan bir fonksiyondur.
- `veri`: Örnek veri setlerini yüklemek için kullanılan bir fonksiyondur. Örneğin, `read.csv()` fonksiyonu ile bir CSV dosyasını okuyarak bir veri çerçevesi oluşturur.
- `veri2`: R'deki önceden tanımlı veri setlerine erişmek için kullanılan bir fonksiyondur. Örneğin, `mtcars` veri setini bir veri çerçevesine dönüştürür.
- `veri2_tibble`: Bir veri çerçevesini tibble formatına dönüştüren bir fonksiyondur.
- `veri2_yeniden_ad`: Bir veri setinin sütunlarının adlarını yeniden adlandıran bir fonksiyondur.
- `veri2_mpg`: Belirli bir sütunu seçmek için kullanılan bir fonksiyondur.
- `veri2_mpg_fil`: Belirli bir koşula göre veri setini filtrelemek için kullanılan bir fonksiyondur.
- `veri2_piped`: Zincirlenmiş işlemlerle veri setini filtrelemek ve seçmek için kullanılan bir fonksiyondur.

### Kullanım

Bu fonksiyonlar, veri analizi, keşifsel veri analizi ve veri madenciliği gibi çeşitli veri bilimi projelerinde kullanılabilir. Özellikle, veri setlerinin yüklenmesi, temel istatistiksel analizlerin yapılması ve veri manipülasyonu gibi adımlarda sıkça kullanılırlar.

Örnek kullanım:

```R
# Veri setini yükleme
veri <- read.csv("veri.csv")

# Veri setinin boyutunu kontrol etme
dim(veri)

# Veri setinin ilk birkaç gözlemine bakma
head(veri)
```

Bu fonksiyonlar, R programlama dilinde veri madenciliği ve analizi için temel bir zemin oluşturur ve daha karmaşık analizler için temel bir adım sağlar.
