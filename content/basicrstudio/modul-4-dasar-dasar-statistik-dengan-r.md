---
draft: false
date: 2024-05-03T15:50:48+07:00
title: "Modul 4 Dasar Dasar Statistik Dengan R"
slug: modul-4-dasar-dasar-statistik-dengan-r

tags:
    - RStatistics
    - DescriptiveStats
    - Probabilities
    - HypothesisTesting
    - RegressionInR

categories:
    - BasicRStudio

authorname: "Riofebri Prasetia"
authorlink: "https://rii92-portofolio.web.app/"
authorphoto: "https://media.licdn.com/dms/image/D5603AQHsWRz4U7IKzA/profile-displayphoto-shrink_200_200/0/1690182368248?e=1718841600&v=beta&t=UrTxqBd5G0GRg7UsKkoxTP99WK_An-NJpp4Nu2RXlO8"

image: https://jagoberkarir.com/images/basicrstudio/basic-r-studio-modul-4.jpg
thumbnail: https://jagoberkarir.com/images/basicrstudio/basic-r-studio-modul-4.jpg
width: 1024
height: 576
description: "Kembangkan pemahaman tentang statistik deskriptif, probabilitas, distribusi data, serta metode uji hipotesis dan regresi linier menggunakan R."
---
# **Modul 4: Dasar-dasar Statistik dengan R**
{{< toc >}}
Modul 4 dalam seri tutorial R ini memberikan fondasi yang kuat dalam statistik menggunakan R. Anda akan belajar melakukan analisis statistik deskriptif, memahami konsep dasar probabilitas dan distribusi, serta melaksanakan uji hipotesis dan analisis regresi.

## **Statistik Deskriptif**

Statistik deskriptif adalah metode yang digunakan untuk menggambarkan dan mensintesis kumpulan data. R menyediakan berbagai fungsi yang dapat digunakan untuk menghitung ukuran statistik deskriptif penting.

### **Menghitung Statistik Deskriptif**

Anda dapat menggunakan fungsi-fungsi berikut dalam R untuk menghitung mean (rata-rata), median, modus, dan deviasi standar dari data:

```r
# Menggunakan data contoh
data <- c(2, 3, 5, 7, 11, 13, 17)

# Mean
mean_data <- mean(data)

# Median
median_data <- median(data)

# Deviasi Standar
sd_data <- sd(data)

# Untuk modus, R tidak memiliki fungsi bawaan dan harus dibuat manual
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_data <- get_mode(data)

```

## **Probabilitas dan Distribusi**

Memahami distribusi probabilitas adalah kunci untuk melakukan banyak jenis analisis statistik, termasuk inferensi statistik.

### **Penggunaan Distribusi Normal dan Binomial**

R menyediakan fungsi untuk bekerja dengan berbagai distribusi probabilitas. Misalnya, fungsi untuk distribusi normal dan binomial:

```r
# Distribusi normal
normal_values <- rnorm(100, mean = 50, sd = 10)  # 100 nilai acak dari distribusi normal

# Distribusi binomial
binomial_values <- rbinom(100, size = 10, prob = 0.5)  # 100 percobaan dari distribusi binomial

```

## **Uji Hipotesis dan Regresi**

Uji hipotesis dan regresi adalah teknik statistik fundamental yang digunakan untuk memahami hubungan antar variabel dan membuat inferensi.

### **Melaksanakan Uji t dan Regresi Linier**

Uji t dan regresi linier dapat dilakukan di R dengan menggunakan fungsi bawaan:

```r
# Uji t
t_test <- t.test(data ~ group, data = data_frame)

# Regresi Linier
model <- lm(Y ~ X1 + X2, data = data_frame)
summary(model)  # Menampilkan ringkasan model regresi

```

Dengan memahami dasar-dasar statistik ini, Anda akan lebih siap untuk mengeksplorasi analisis data yang lebih canggih dan menarik. Modul 4 tidak hanya mengajarkan Anda teknik, tetapi juga cara menginterpretasikan hasil untuk pengambilan keputusan yang berinformasi.