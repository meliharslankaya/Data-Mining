getwd() # Mevcut çalışma dizinini döndürür

kare <- function(x) {
  return(x^2)
}
print(kare(5)) # Verilen sayının karesini döndürür

gerisayim <- function(a) {
  print(a)
  while (a!=0) {
    Sys.sleep(1)
    a<-a-1
    print(a)
  }
}
gerisayim(10) # Verilen sayıdan geriye doğru sayar

veri = read.csv("http://johnmuschelli.com/intro_to_r/data/Youth_Tobacco_Survey_YTS_Data.csv")
View(veri) # Veri setini görsel olarak görüntüler

getwd() # Mevcut çalışma dizinini döndürür
setwd() # Çalışma dizinini ayarlar

View(veri) # Veri setini görsel olarak görüntüler
head(veri) # Veri setinin ilk birkaç gözlemini görüntüler

View(mtcars) # mtcars veri setini görsel olarak görüntüler

dim(veri) # Veri setinin boyutunu döndürür
nrow(veri) # Veri setinin satır sayısını döndürür
ncol(veri) # Veri setinin sütun sayısını döndürür

help("dim") # "dim" fonksiyonu hakkında yardım belgelerini görüntüler
install.packages("dplyr") # dplyr paketini yükler
library(dplyr) # dplyr paketini yükler ve yüklenen paketin fonksiyonlarını kullanılabilir hale getirir
data_rename = rename(veri, year=YEAR) # Veri setinin sütun adlarını yeniden adlandırır

names(data_rename) # Veri setinin sütun adlarını döndürür
names(veri) # Veri setinin sütun adlarını döndürür

install.packages("tidyverse") # tidyverse paketini yükler
library(tidyverse) # tidyverse paketini yükler ve yüklenen paketin fonksiyonlarını kullanılabilir hale getirir

veri2 = data(mtcars) # mtcars veri setini veri çerçevesine dönüştürür
veri2 = data.frame(mtcars) # mtcars veri setini veri çerçevesine dönüştürür
dim(mtcars) # mtcars veri setinin boyutunu döndürür
head(mtcars) # mtcars veri setinin ilk birkaç gözlemini döndürür
view(veri2) # Veri setini görsel olarak görüntüler

veri2_tibble = as_tibble(veri2) # Veri setini tibble formatına dönüştürür
head(veri2_tibble) # Veri setinin ilk birkaç gözlemini döndürür

veri2_yeniden_ad = dplyr::rename(veri2_tibble,MPG:mpg) # Sütun adlarını yeniden adlandırır
veri2_yeniden_ad2 = dplyr::rename_all(veri2_yeniden_ad2, toupper) # Tüm sütun adlarını büyük harflere dönüştürür

names(veri2) # Veri setinin sütun adlarını döndürür
veri2_gear = veri2$gear # "gear" sütununu seçer
dim(veri2_gear) # "gear" sütununun boyutunu döndürür
x = c(1,2,3) # x vektörünü oluşturur
?`matrix-class` # matrix-class hakkında yardım belgelerini görüntüler

veri2_mpg = select(veri2,mpg) # "mpg" sütununu seçer
dim(veri2_mpg) # "mpg" sütununun boyutunu döndürür
veri2_mpg2 = pull(select(veri2,mpg)) # "mpg" sütununu seçer ve içeriğini döndürür
dim(veri2_mpg2) # "mpg" sütununun boyutunu döndürür

veri2_mpg_fil = filter(veri2,mpg>19 | mpg<17) # "mpg" sütununu filtreler
veri2_gear = select(filter(veri2,mpg>19 | mpg>17),gear) # "mpg" sütununu filtreler ve "gear" sütununu seçer
veri2_gear = select(veri2_mpg_fil,gear) # "mpg" sütununu filtreler ve "gear" sütununu seçer

veri2_piped = veri2 %>% filter(mpg>22 & cyl==4) %>% select(disp,qsec, vs) # Veri setini filtreler ve seçer
