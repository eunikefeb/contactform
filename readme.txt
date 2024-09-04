Contact Form PHP Native

Merupakan sebuah website sederhana yang terhubung ke database yang berisi nim, nama, kelas, gender, email dan message 
yang ketika form tersebut di submit akan otomatis tersimpan di database

# Langkah-langkah 
1. Konfigurasi koneksi database pada file submit.php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "contactform";

    // Membuat koneksi
    $conn = new mysqli($servername, $username, $password, $dbname);
    

2. Import database yang bernama contactformdb.sql

3. Pastikan server web mengarahkan ke direktori folder ini.

## Penggunaan
1. Akses aplikasi melalui browser dengan mengunjungi URL yang mengarah ke direktori folder ini.
2. Isi formulir kontak dengan nim, nama, kelas, gender, email dan message anda.
3. Klik tombol "submit" untuk mengirimkan formulir. Jika berhasil, pesan akan disimpan dalam database dan Anda akan menerima pesan konfirmasi.