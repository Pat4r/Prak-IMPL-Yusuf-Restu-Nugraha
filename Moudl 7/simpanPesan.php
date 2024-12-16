<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Koneksi ke database
    $conn = new mysqli("localhost", "root", "", "pesan");

    // Cek koneksi
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }

    // Ambil data dari form
    $ID_Penerima = $_POST['idPenerima'];
    $judul = $_POST['judul'];
    $textPesan = $_POST['TextPesan'];
    $ID_Pengirim = 1; // Contoh ID pengirim, biasanya dari session pengguna login

    // Query untuk menyimpan data
    $query = "INSERT INTO pesan (ID_Penerima, ID_Pengirim, judul, textPesan) 
              VALUES ('$ID_Penerima', '$ID_Pengirim', '$judul', '$textPesan')";

    if ($conn->query($query) === TRUE) {
        echo "Pesan berhasil disimpan!<br>";
        echo "<a href='tampilPesan.php'>Lihat Daftar Pesan</a>";
    } else {
        echo "Pesan gagal disimpan: " . $conn->error;
    }

    $conn->close();
} else {
    echo "Metode HTTP tidak diizinkan.";
}
?>