<?php

header('Content-Type: application/json');
include('../koneksi/koneksi.php');

$query = mysqli_query($koneksi,"select * from  outlet order by id_outlet");
while ($row = $query->fetch_assoc()) {
    $data['id_outlet'] = $row['id_outlet'];
    $data['nama'] = $row['nama'];
    $data['deskripsi'] = $row['deskripsi'];
    $data['gambar'] = $row['gambar'];

    $outlet[] = $data;
}

echo json_encode(['data' => $outlet]);

?>