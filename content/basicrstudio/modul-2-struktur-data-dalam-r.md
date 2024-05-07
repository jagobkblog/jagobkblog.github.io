---
draft: false
date: 2024-05-03T15:44:01+07:00
title: "Modul 2 Struktur Data Dalam R"
slug: modul-2-struktur-data-dalam-r

tags:
    - RDataStructures
    - VectorsInR
    - DataFrames
    - ListsInR
    - MatrixOperations

categories:
    - BasicRStudio

authorname: "Riofebri Prasetia"
authorlink: "https://rii92-portofolio.web.app/"
authorphoto: "https://media.licdn.com/dms/image/D5603AQHsWRz4U7IKzA/profile-displayphoto-shrink_200_200/0/1690182368248?e=1718841600&v=beta&t=UrTxqBd5G0GRg7UsKkoxTP99WK_An-NJpp4Nu2RXlO8"

image: https://jagoberkarir.com/images/basicrstudio/basic-r-studio-modul-2.jpg
thumbnail: https://jagoberkarir.com/images/basicrstudio/basic-r-studio-modul-2.jpg
width: 1024
height: 576
description: "Eksplorasi mendalam tentang struktur data kunci di R seperti vektor, faktor, list, DataFrame, matriks, dan array, serta operasi dasar yang dapat dilakukan dengan struktur data ini."
---
# **Modul 2: Struktur Data dalam R**
{{< toc >}}
Setelah memahami dasar-dasar R dalam Modul 1, Modul 2 akan membawa Anda lebih dalam ke dalam penggunaan struktur data di R. Memahami dan menguasai struktur data adalah kunci untuk efektivitas dalam analisis data dan pemrograman statistik.

## **Vektor dan Faktor**

### **Vektor**

Vektor adalah jenis struktur data paling dasar dalam R dan merupakan satu dimensi array yang dapat menyimpan data tipe yang sama. Untuk membuat vektor, Anda dapat menggunakan fungsi **`c()`** (combine):

```r
numbers <- c(1, 2, 3, 4, 5)  # Membuat vektor angka
characters <- c("apple", "banana", "cherry")  # Membuat vektor karakter

```

Operasi dasar pada vektor meliputi aritmatika vektor, akses elemen, dan operasi statistik sederhana seperti **`mean()`**, **`sum()`**, **`min()`**, dan **`max()`**.

### **Faktor**

Faktor digunakan untuk menyimpan data kategorikal. Faktor memiliki tingkat, yang menunjukkan kategori yang mungkin dari vektor tersebut:

```r
genders <- factor(c("male", "female", "female", "male"))

```

Faktor sangat penting dalam analisis data karena beberapa model statistik memperlakukan variabel yang berbeda tergantung pada apakah variabel tersebut numerik atau kategorikal.

## **List dan DataFrame**

### **List**

List di R bisa menyimpan koleksi objek yang berjenis data berbeda. List sangat fleksibel dan bisa digunakan untuk menyimpan kombinasi vektor, faktor, list lain, atau bahkan DataFrame:

```r
my_list <- list(name = "John", age = 30, scores = numbers)

```

### **DataFrame**

DataFrame adalah struktur data yang digunakan untuk menyimpan dataset dalam format tabular. Setiap kolom di DataFrame bisa memiliki tipe yang berbeda, mirip dengan tabel di database relasional atau spreadsheet di Excel:

```r
data <- data.frame(
  Name = c("John", "Ana", "Paul"),
  Age = c(28, 22, 35),
  Gender = factor(c("Male", "Female", "Male"))
)

```

DataFrame adalah struktur data yang sangat penting dalam R karena digunakan untuk hampir semua jenis analisis data.

## **Matriks dan Array**

### **Matriks**

Matriks di R adalah koleksi data dua dimensi yang elemen-elemennya memiliki tipe data yang sama. Anda bisa melakukan operasi matematika dan aljabar linear pada matriks:

```r
matrix_data <- matrix(1:9, nrow = 3, ncol = 3)  # Membuat matriks 3x3
```

### **Array**

Array di R dapat lebih dari dua dimensi, berbeda dengan matriks:

```r
array_data <- array(1:8, dim = c(2, 2, 2))  # Membuat array tiga dimensi
```

Dengan memahami struktur data ini, Anda akan lebih siap untuk melakukan berbagai jenis analisis data dan pemrograman statistik yang lebih kompleks. Modul ini menyediakan dasar yang kuat untuk bekerja dengan data dalam R, memungkinkan Anda untuk beralih ke tugas-tugas yang lebih kompleks dan khusus di modul-modul berikutnya.