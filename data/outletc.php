<?php

header('Content-Type: application/json');
include '../koneksi/koneksi.php';

$idOutlet = $_GET['data'];

$queryo = mysqli_query($koneksi, "select `nama`, `gambar` from outlet where `id_outlet` = '$idOutlet'");
while ($row = $queryo->fetch_assoc()) {
    $data['nama'] = $row['nama'];
    $data['gambar'] = $row['gambar'];
    $outlet[] = $data;
}

echo json_encode(['data' => $outlet]);

?>