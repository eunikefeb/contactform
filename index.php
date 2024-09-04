<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function showSuccessPopup() {
            alert('Data has been submitted successfully!');
            window.location.href = 'index.php'; // Mengarahkan kembali ke index.php setelah alert
        }
    </script>
</head>
<body>
    <div class="card">
        <h2>Contact Form</h2>
        <?php
        if (isset($_GET['success']) && $_GET['success'] == 1) {
            echo "<script>showSuccessPopup();</script>";
        }
        ?>
        <form action="submit.php" method="POST">
            <label for="nama">Nama:</label>
            <input type="text" id="nama" name="nama" required>
            
            <label for="nim">NIM:</label>
            <input type="text" id="nim" name="nim" required>
            
            <label for="kelas">Kelas:</label>
            <input type="text" id="kelas" name="kelas" required>
            
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="Laki-laki">Laki-laki</option>
                <option value="Perempuan">Perempuan</option>
            </select>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>
            
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
