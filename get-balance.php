<?php
$user =mysqli_query($conn,"SELECT * FROM `tb_user` WHERE user = '".$_SESSION['user']."'") or die (mysqli_error());
$u = mysqli_fetch_array($user);
$externalPlayerId = $u['extplayer'];

$bal = $kingisback->getBalance($externalPlayerId);
if ((int)$bal['status'] === 200) {
$getBalanceResponse = $bal['data']['balance'] ?? 0;
} else {
$getBalanceResponse = 0;
}

// Pastikan response dari API berisi balance, jika tidak ada default ke 0
//$balance = isset($getBalanceResponse['balance']) ? $getBalanceResponse['balance'] : 0;

// Update balance in database menggunakan mysqli_query biasa
$query = "UPDATE tb_balance SET active = '$getBalanceResponse' WHERE userID = '$userID'";
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
?>