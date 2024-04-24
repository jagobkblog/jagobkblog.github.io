---
draft: false
date: 2024-04-17T14:43:13+07:00
title: "Modul 3 Kueri Dasar"
slug: modul-3-kueri-dasar

tags:
    - MSAccessQueries
    - SQLBasics
    - QueryDesign
    - DataFilteringMSAccess
    - LearnMSAccess

categories:
    - MsAccess

authorname: "Riofebri Prasetia"
authorlink: "https://rii92-portofolio.web.app/"
authorphoto: "https://media.licdn.com/dms/image/D5603AQHsWRz4U7IKzA/profile-displayphoto-shrink_200_200/0/1690182368248?e=1718841600&v=beta&t=UrTxqBd5G0GRg7UsKkoxTP99WK_An-NJpp4Nu2RXlO8"

image: https://jagoberkarir.com/images/MsAccess-Modul3.jpg
thumbnail: https://jagoberkarir.com/images/MsAccess-Modul3.jpg
width: 1024
height: 576
description: "Dalam Modul 3 dari seri MS Access untuk Pemula, pelajari cara esensial dalam membuat kueri yang efektif menggunakan SQL dan Query Design. Modul ini mengajarkan Anda cara menyaring dan memproses data untuk memenuhi kebutuhan spesifik, meningkatkan kemampuan Anda untuk mengelola dan menganalisis informasi database dengan presisi."
---

# MS Access untuk Pemula: Modul 3 - Kueri Dasar dalam MS Access

Setelah memahami bagaimana mengatur tabel dan data di Modul 2, Modul 3 dari seri pelatihan MS Access kita akan fokus pada pembelajaran dasar-dasar kueri. Kueri adalah fondasi dari interaksi pengguna dengan database, memungkinkan untuk menyaring, mengurutkan, dan mengekstrak data secara efisien. Di modul ini, Anda akan menguasai cara membuat kueri yang efektif menggunakan SQL dan Query Design.

## Memperdalam Kueri dalam MS Access

Belajar membuat kueri yang baik adalah keterampilan penting untuk mengelola database dengan efektif. Kueri memungkinkan Anda untuk mengajukan pertanyaan kepada database Anda dan mendapatkan jawaban yang tepat dalam bentuk data yang diorganisir.

### Penerapan Kueri Seleksi:

- **Menyaring Data**: Kueri seleksi memungkinkan Anda untuk menampilkan data berdasarkan kondisi yang ditetapkan, seperti menampilkan semua pelanggan dari kota tertentu atau order dalam rentang tanggal tertentu.
- **Menggabungkan Tabel**: Menggabungkan data dari beberapa tabel memungkinkan analisis yang lebih kompleks dan menyeluruh.

### Penerapan Kueri Agregat:

- **Ringkasan Data**: Kueri agregat sangat berguna untuk mendapatkan ringkasan seperti jumlah total pelanggan, rata-rata penjualan, atau total penjualan per kategori.

## Contoh Kueri Seleksi

Misalkan kita ingin mengetahui semua pelanggan yang berasal dari kota 'New York', kita bisa membuat kueri seleksi dengan cara berikut:

1. **Buka Query Design**:
   - Pilih 'Query Design' dari tab 'Create'.
   
2. **Tambahkan Tabel `Customers`**:
   - Drag dan drop tabel `Customers` ke area desain.
   
3. **Pilih Kolom yang Diperlukan**:
   - Klik dua kali pada `CustomerName`, `ContactNumber`, dan `City` untuk menambahkannya ke kueri.
   
4. **Tentukan Kriteria untuk `City`**:
   - Di baris 'Criteria' di bawah kolom 'City', masukkan 'New York'.

5. **Jalankan Kueri**:
   - Klik 'Run' untuk melihat semua pelanggan dari New York.

```sql
SELECT CustomerName, ContactNumber, City
FROM Customers
WHERE City = 'New York';
```

## **Latihan Praktik: Membuat dan Menggunakan Kueri**

Sekarang setelah kita telah membahas teorinya, saatnya untuk berlatih dengan data dummy yang telah kita siapkan di Modul 2.

### **Latihan 1: Mencari Data Pelanggan**

- Buat kueri untuk menemukan semua pelanggan yang memiliki 'Doe' di nama mereka.

### **Latihan 2: Menghitung Total Penjualan**

- Gunakan kueri agregat untuk menghitung total penjualan yang dilakukan di bulan Desember 2023.

### **Latihan 3: Kueri dengan Parameter**

- Buatlah kueri yang meminta pengguna memasukkan kota dan menampilkan daftar pelanggan dari kota tersebut.

Dengan menyelesaikan latihan ini, Anda akan memperoleh pemahaman yang lebih kuat tentang cara merancang kueri yang efektif di MS Access dan bagaimana kueri tersebut dapat digunakan untuk mengolah data secara dinamis.

## **Kesimpulan**

Anda telah menyelesaikan Modul 3, di mana Anda telah belajar dasar-dasar pembuatan kueri dalam MS Access. Penggunaan kueri yang tepat sangat penting dalam menggali informasi yang berguna dari kumpulan data Anda. Dengan pengetahuan ini, Anda sekarang memiliki dasar yang kuat untuk melanjutkan ke modul pelatihan berikutnya, yang akan mencakup kueri lanjutan, form, dan laporan.

Dengan menguasai kueri dasar, Anda akan dapat mengambil keputusan yang lebih berdasarkan data dan memaksimalkan potensi database Anda untuk kebutuhan bisnis dan analisis data.