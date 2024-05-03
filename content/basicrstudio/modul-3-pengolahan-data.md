---
draft: true
date: 2024-05-03T15:49:36+07:00
title: "Modul 3 Pengolahan Data"
slug: modul-3-pengolahan-data

tags:
    - DataManagementR
    - ImportExportR
    - DataManipulation
    - DplyrTutorial
    - TidyData

categories:
    - BasicRStudio

authorname: "Riofebri Prasetia"
authorlink: "https://rii92-portofolio.web.app/"
authorphoto: "https://media.licdn.com/dms/image/D5603AQHsWRz4U7IKzA/profile-displayphoto-shrink_200_200/0/1690182368248?e=1718841600&v=beta&t=UrTxqBd5G0GRg7UsKkoxTP99WK_An-NJpp4Nu2RXlO8"

image: https://jagoberkarir.com/images/basicrstudio/basic-r-studio-modul-3.jpg
thumbnail: https://jagoberkarir.com/images/basicrstudio/basic-r-studio-modul-3.jpg
width: 1024
height: 576
description: "Pelajari teknik import dan export data dari dan ke berbagai format file seperti CSV dan Excel, serta cara menggunakan paket dplyr dan tidyr untuk manipulasi dan persiapan data yang efisien."
---
# **Modul 3: Pengelolaan Data**
{{< toc >}}
Dalam Modul 3, kita akan menyelami berbagai teknik pengelolaan data dalam R yang meliputi import dan export data, manipulasi data, dan teknik untuk merapikan data. Keterampilan ini esensial untuk mempersiapkan data sebelum melakukan analisis yang lebih mendalam.

## **Import dan Export Data**

Memahami cara efektif untuk mengimpor dan mengekspor data sangat penting dalam pengelolaan data. R menyediakan beberapa fungsi yang memudahkan transfer data antara format file yang berbeda dan lingkungan R.

### **Membaca Data**

Untuk mengimpor data dari CSV atau Excel, kita bisa menggunakan fungsi dari paket **`readr`** untuk CSV dan **`readxl`** untuk Excel:

```r

library(readr)
data_csv <- read_csv("data.csv")

library(readxl)
data_excel <- read_excel("data.xlsx")

```

### **Menulis Data**

Ekspor data ke format file yang diinginkan menggunakan fungsi **`write_csv`** dari **`readr`** atau menggunakan fungsi lain sesuai dengan format file:

```r
write_csv(data_csv, "output.csv")

```

## **Manipulasi Data dengan `dplyr`**

Paket **`dplyr`** adalah salah satu alat yang paling powerful dalam R untuk manipulasi data karena menyediakan syntax yang intuitif dan efisien. Kita akan melihat beberapa fungsi utama dari **`dplyr`**:

### **Seleksi dan Filter Data**

Menggunakan fungsi **`filter()`** untuk mengekstrak baris berdasarkan kondisi tertentu, dan **`select()`** untuk memilih kolom yang diinginkan:

```r
library(dplyr)

# Filter rows where age > 30
filtered_data <- filter(data_csv, age > 30)

# Select only the name and age columns
selected_data <- select(data_csv, name, age)

```

### **Transformasi Data**

Transformasi data dengan fungsi **`mutate()`** yang menambahkan kolom baru berdasarkan perhitungan dari kolom yang ada:

```r
# Add a new column called "age_next_year"
transformed_data <- mutate(data_csv, age_next_year = age + 1)

```

## **Tidying Data dengan `tidyr`**

Data seringkali tidak rapi saat pertama kali diperoleh. Paket **`tidyr`** membantu membuat data menjadi 'tidy' atau terorganisir dengan baik.

### **Teknik Tidying Data**

- **`gather()`** dan **`spread()`** untuk mengubah format data dari wide ke long dan sebaliknya.
- **`separate()`** dan **`unite()`** untuk memecah atau menggabungkan kolom berdasarkan pola tertentu.

```r
library(tidyr)

# Turn an untidy wide data frame into a tidy long data frame
tidy_data <- gather(data_csv, key = "measurement", value = "value", -name)

# Combine two columns into one
united_data <- unite(data_csv, "fullname", c(firstname, lastname), sep = " ")

```

Dengan menyelesaikan Modul 3, Anda akan memiliki pemahaman yang kuat tentang cara mengelola, memanipulasi, dan merapikan data dalam R, membuat Anda siap untuk melakukan analisis data yang lebih kompleks dan mendalam.