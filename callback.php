<?php
date_default_timezone_set('Asia/Jakarta');
header('Content-Type: application/json');
require_once 'config/koneksi.php'; // Ganti sesuai file koneksi kamu

// Pastikan request dari POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['success' => false, 'message' => 'Metode tidak diizinkan']);
    exit;
}

// Ambil data dari POST
$username = trim($_POST['username'] ?? '');
$nominal  = floatval($_POST['amount'] ?? 0);

// Validasi data
if (empty($username) || $nominal <= 0) {
    echo json_encode(['success' => false, 'message' => 'Data tidak lengkap']);
    exit;
}

// Generate data transaksi
$unik          = date('Hs');
$kode_unik     = substr(str_shuffle('1234567890'), 0, 2);
$kd_transaksi  = date('Ymds') . $kode_unik;
$totalBayar    = $nominal;
$created_date  = date('Y-m-d H:i:s');

$gameid   = '0';
$metode   = '0';
$pay_from = '0';
$postID   = $username;
$catatan  = 'Top Up via QRIS';

// Insert ke tabel
$query = "
INSERT INTO tb_transaksi 
(kd_transaksi, date, transaksi, total, saldo, note, gameid, providerID, jenis, metode, pay_from, userID, status)
VALUES 
('$kd_transaksi', '$created_date', 'Top Up', '$totalBayar', 0, '$catatan', '$gameid', '0', '1', '$metode', '$pay_from', '$postID', 0)
";

if (mysqli_query($conn, $query)) {
    echo json_encode([
        'success' => true,
        'message' => 'Transaksi berhasil disimpan',
        'data' => [
            'kd_transaksi' => $kd_transaksi,
            'userID'       => $username,
            'nominal'      => $nominal,
            'tanggal'      => $created_date
        ]
    ]);
} else {
    echo json_encode([
        'success' => false,
        'message' => 'Gagal menyimpan transaksi: ' . mysqli_error($conn)
    ]);
}

mysqli_close($conn);
?>
