<?php

header('Content-Type: application/json');
include('../koneksi/koneksi.php');

$nim = $_POST['nim'];
$password = $_POST['password'];

$data = mysqli_query($koneksi,"select * from customer where nim = '$nim' and password = '$password'");
$cek = mysqli_fetch_row($data);
if ($cek > 0){
    $data = [
        'success' => true
    ];
} else {
    $data = [
        'success' => false
    ];
}

echo json_encode($data);

?>