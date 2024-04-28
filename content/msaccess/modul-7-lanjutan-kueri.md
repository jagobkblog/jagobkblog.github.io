---
draft: false
date: 2024-04-24T12:57:05+07:00
title: "Modul 7 Lanjutan Kueri"
slug: modul-7-lanjutan-kueri

tags:
    - MSAccess
    - AdvancedQueriesMSAccess
    - MSAccessDataManagement
    - SQLQueries
    - DatabaseOperations
    - MSAccessProgramming

categories:
    - MsAccess

authorname: "Riofebri Prasetia"
authorlink: "https://rii92-portofolio.web.app/"
authorphoto: "https://media.licdn.com/dms/image/D5603AQHsWRz4U7IKzA/profile-displayphoto-shrink_200_200/0/1690182368248?e=1718841600&v=beta&t=UrTxqBd5G0GRg7UsKkoxTP99WK_An-NJpp4Nu2RXlO8"

image: https://jagoberkarir.com/images/MsAccess-Modul7.jpg
thumbnail: https://jagoberkarir.com/images/MsAccess-Modul7.jpg
width: 1024
height: 576
description: "Di Modul 7, pelajari teknik-teknik lanjutan dalam pembuatan kueri di MS Access, termasuk kueri update untuk mengubah data secara massal, kueri delete untuk menghapus data berdasarkan kriteria, dan kueri make-table serta append untuk manipulasi data yang efisien. Tingkatkan kemampuan Anda untuk mengelola dan memodifikasi data dengan kueri yang kuat dan dinamis."
---
# MS Access untuk Pemula: Modul 7 - Kueri Lanjutan

Setelah mempelajari dasar-dasar impor dan ekspor data di Modul 6, Modul 7 ini akan memperkenalkan Anda kepada kueri lanjutan di MS Access. Kueri lanjutan ini termasuk kueri update, delete, make-table, dan append yang memungkinkan Anda untuk memanipulasi data secara lebih kompleks dan efisien. Modul ini akan membantu Anda mengoptimalkan pengelolaan database dengan teknik-teknik yang efektif untuk mengubah dan menyempurnakan data Anda.

{{< toc >}}

## Kueri Update

Kueri update digunakan untuk memodifikasi data yang ada dalam tabel berdasarkan kriteria tertentu.

### Cara Membuat Kueri Update:
1. **Buka Query Design**:
   - Dari tab 'Create', pilih 'Query Design'.
   
2. **Pilih Tabel Sumber**:
   - Tambahkan tabel yang data-nya ingin Anda update.

3. **Set Kondisi Update**:
   - Gunakan row 'Update To' untuk menentukan nilai baru dan 'Criteria' untuk menentukan baris mana yang akan di-update.

4. **Jalankan Kueri**:
   - Setelah selesai, simpan dan jalankan kueri untuk mengupdate data.

### Contoh Kueri Update:
Mengubah kota pelanggan menjadi 'New York' jika nama pelanggan mengandung 'Smith'.
```sql
UPDATE Customers SET City = 'New York' WHERE CustomerName LIKE '*Smith*';
```
## **Kueri Delete**

Kueri delete memungkinkan Anda menghapus baris dari tabel yang memenuhi kondisi tertentu.

### **Cara Membuat Kueri Delete:**

1. **Setup Query**:
    - Mirip dengan kueri update, tetapi pilih 'Delete' dari toolbar setelah membuka Query Design.
2. **Definisikan Kriteria**:
    - Tentukan kondisi penghapusan pada row 'Criteria'.
3. **Eksekusi Kueri**:
    - Hati-hati saat menjalankan kueri delete karena tindakan ini tidak dapat dibatalkan.

### **Contoh Kueri Delete:**

Menghapus semua catatan pelanggan yang berasal dari 'Los Angeles'.

```sql
DELETE FROM Customers WHERE City = 'Los Angeles';
```

## **Kueri Make-Table**

Kueri make-table digunakan untuk membuat tabel baru dari hasil kueri.

### **Cara Membuat Kueri Make-Table:**

1. **Konfigurasi Query**:
    - Buat kueri seleksi dan kemudian pilih opsi 'Make Table' dari ribbon.
2. **Tentukan Nama Tabel Baru**:
    - Masukkan nama untuk tabel baru yang akan berisi hasil kueri.
3. **Jalankan Kueri**:
    - Eksekusi kueri untuk membuat tabel baru.

### **Contoh Kueri Make-Table:**

Membuat tabel baru yang berisi data pelanggan dari 'Chicago'.

```sql
SELECT * INTO NewChicagoCustomers FROM Customers WHERE City = 'Chicago';
```

## **Kueri Append**

Kueri append digunakan untuk menambahkan data dari satu tabel ke tabel lain.

### **Cara Membuat Kueri Append:**

1. **Setup Query**:
    - Pilih 'Append' dari toolbar setelah membuka Query Design.
2. **Pilih Tabel Tujuan**:
    - Tentukan tabel yang akan ditambahkan data.
3. **Definisikan Data yang Ditambahkan**:
    - Tentukan baris dan kolom mana yang akan di-append.

### **Contoh Kueri Append:**

Menambahkan data pelanggan baru ke tabel utama 'Customers'.

```sql
INSERT INTO Customers (CustomerName, ContactNumber) SELECT CustomerName, ContactNumber FROM NewCustomers;
```

Dengan memahami dan menguasai kueri lanjutan ini, Anda akan mampu melakukan manipulasi data yang lebih kompleks dan efisien dalam database MS Access Anda. Keterampilan ini tidak hanya meningkatkan fleksibilitas dalam pengelolaan data tetapi juga memperluas kemungkinan analisis dan laporan yang dapat Anda buat. Selamat mencoba dan lanjutkan eksplorasi Anda dalam kemampuan MS Access.