<?php
$servername = "localhost";
$username = "root"; // Ganti dengan username MySQL Anda
$password = ""; // Ganti dengan password MySQL Anda
$dbname = "contactform";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Mengambil data dari form
$nama = $_POST['nama'];
$nim = $_POST['nim'];
$kelas = $_POST['kelas'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$message = $_POST['message'];

// Menyimpan data ke dalam database
$sql = "INSERT INTO contacts (nama, nim, kelas, gender, email, message) VALUES ('$nama', '$nim', '$kelas', '$gender', '$email', '$message')";

if ($conn->query($sql) === TRUE) {
    header("Location: index.php?success=1");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Menutup koneksi
$conn->close();
?>
