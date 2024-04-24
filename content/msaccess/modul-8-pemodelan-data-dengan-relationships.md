---
draft: true
date: 2024-04-24T12:57:29+07:00
title: "Modul 8 Pemodelan Data Dengan Relationships"
slug: modul-8-pemodelan-data-dengan-relationships

tags:
    - MSAccess
    - DataModelingMSAccess
    - DatabaseRelationships
    - ReferentialIntegrity
    - MSAccessTraining
    - DataStructure

categories:
    - MsAccess

authorname: "Riofebri Prasetia"
authorlink: "https://rii92-portofolio.web.app/"
authorphoto: "https://media.licdn.com/dms/image/D5603AQHsWRz4U7IKzA/profile-displayphoto-shrink_200_200/0/1690182368248?e=1718841600&v=beta&t=UrTxqBd5G0GRg7UsKkoxTP99WK_An-NJpp4Nu2RXlO8"

image: https://jagoberkarir.com/images/MsAccess-Modul8.jpg
thumbnail: https://jagoberkarir.com/images/MsAccess-Modul8.jpg
width: 1024
height: 576
description: "Modul 8 mendalami pemodelan data dengan menggunakan relationships dalam MS Access. Anda akan belajar cara membuat dan mengelola relationships antar tabel, termasuk one-to-one, one-to-many, dan many-to-many, serta menggunakan lookup fields dan mengatur referential integrity. Tingkatkan struktur dan efisiensi database Anda dengan penerapan relationships yang tepat."
---
# MS Access untuk Pemula: Modul 8 - Pemodelan Data dengan Relationships

Dalam Modul 8 dari seri pelatihan MS Access, kita akan menjelajahi konsep dasar dan lanjutan dari pemodelan data menggunakan relationships. Pemahaman yang mendalam tentang relationships antar tabel sangat penting untuk membangun database yang efisien dan efektif. Modul ini tidak hanya akan mengajarkan Anda cara membuat dan mengelola relationships, tetapi juga akan menyediakan contoh kueri untuk menggambarkan manfaat dari penggunaan relationships yang benar dalam database Anda.

{{< toc >}}

## Pengenalan Relationships dalam MS Access

Relationships antar tabel memungkinkan Anda untuk menautkan data yang tersebar di berbagai tabel, mengurangi redundansi dan meningkatkan integritas data.

### Cara Membuat Relationships:

1. **Buka Database Tools**:
    - Dari MS Access, pilih 'Database Tools' lalu klik 'Relationships'.
2. **Tambahkan Tabel yang Diperlukan**:
    - Tambahkan tabel yang ingin Anda hubungkan dengan drag and drop ke area relationships.
3. **Membuat Link Antar Tabel**:
    - Seret primary key dari satu tabel ke foreign key tabel terkait untuk membentuk relationship.
4. **Set Properti Relationship**:
    - Pilih opsi seperti 'Enforce Referential Integrity' untuk memastikan data yang dihubungkan tetap konsisten.

## Types of Relationships

Mengetahui jenis-jenis relationship dapat membantu Anda memilih tipe yang paling sesuai untuk kebutuhan database Anda.

### One-to-One Relationship:

- **Contoh**: Hubungan antara pegawai dan detail gaji mereka, dimana satu rekaman pegawai memiliki satu rekaman gaji terkait.
- **Implementasi**:
    
    ```sql
    CREATE TABLE Employees (
        EmployeeID INT PRIMARY KEY,
        Name VARCHAR(100)
    );
    
    CREATE TABLE Salaries (
        EmployeeID INT PRIMARY KEY,
        Salary DECIMAL(10,2),
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
    );
    ```
    

### **One-to-Many Relationship:**

- **Contoh**: Hubungan antara seorang dokter dan pasien-pasiennya.
- **Implementasi**:
    
    ```sql
    CREATE TABLE Doctors (
        DoctorID INT PRIMARY KEY,
        Name VARCHAR(100)
    );
    
    CREATE TABLE Patients (
        PatientID INT PRIMARY KEY,
        Name VARCHAR(100),
        DoctorID INT,
        FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
    
    ```
    

### **Many-to-Many Relationship:**

- **Contoh**: Hubungan antara mahasiswa dan kursus, dimana satu mahasiswa dapat mengambil banyak kursus dan satu kursus dapat diikuti oleh banyak mahasiswa.
- **Implementasi**:
    
    ```sql
    CREATE TABLE Students (
        StudentID INT PRIMARY KEY,
        Name VARCHAR(100)
    );
    
    CREATE TABLE Courses (
        CourseID INT PRIMARY KEY,
        CourseName VARCHAR(100)
    );
    
    CREATE TABLE Enrollment (
        StudentID INT,
        CourseID INT,
        FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
        FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
        PRIMARY KEY (StudentID, CourseID)
    );
    
    ```
    

## **Lookup Fields dan Referential Integrity**

Lookup fields dan pengaturan referential integrity adalah dua aspek penting yang meningkatkan usability dan keandalan database.

### **Menggunakan Lookup Fields:**

- Lookup fields membantu pengguna memilih data dari daftar yang sudah ada, menghindari kesalahan entri.
- **Contoh Implementasi**:
    - Dalam sebuah form entri data, lookup field dapat digunakan untuk memilih dokter dari tabel **`Doctors`** ketika memasukkan data untuk **`Patients`**.

### **Pengaturan Referential Integrity:**

- Menjaga integritas referensial memastikan bahwa hubungan antar tabel tidak memiliki data yatim atau referensi yang tidak valid.
- **Contoh Implementasi**:
    - Pastikan bahwa setiap **`PatientID`** dalam tabel **`Visits`** memiliki referensi valid di tabel **`Patients`**.

Dengan mengimplementasikan pemodelan data yang efektif menggunakan relationships, Anda dapat memastikan bahwa database Anda tidak hanya kuat dari sisi teknis, tapi juga mudah dioperasikan dan dikelola. Keseluruhan modul ini memberikan landasan yang akan membantu Anda dalam menyusun database yang lebih terstruktur dan menangani data dengan lebih efisien.

Sebagai penutup, pemahaman tentang cara membangun dan mengelola relationships antar tabel sangat penting untuk siapa saja yang ingin memaksimalkan penggunaan MS Access. Modul ini membekali Anda dengan keterampilan untuk memanipulasi dan menjaga data agar tetap terorganisir dan konsisten, yang vital dalam dunia database modern.