<?php
include('config/koneksi.php');

// Query untuk mengambil hanya kolom no_hp
$sql = "SELECT no_hp FROM tb_user";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Buat konten file
    $content = "";
    while ($row = $result->fetch_assoc()) {
        $no_hp = $row['no_hp'];

        // Tambahkan 0 di awal jika tidak dimulai dengan 0
        if (substr($no_hp, 0, 1) !== '0') {
            $no_hp = '0' . $no_hp;
        }

        $content .= $no_hp . "\n"; // Tambahkan nomor HP ke dalam konten
    }
    
    // Header untuk download file
    header('Content-Type: text/plain');
    header('Content-Disposition: attachment; filename="no_hp_users.txt"');
    header('Content-Length: ' . strlen($content));

    // Tampilkan konten untuk diunduh
    echo $content;
} else {
    echo "Tidak ada data.";
}

// Tutup koneksi
$conn->close();
?>
