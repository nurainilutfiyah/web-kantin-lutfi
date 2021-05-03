<?php

header('Content-Type: application/json');
include('../koneksi/koneksi.php');

$query = mysqli_query($koneksi,"select * from pesanan order by id_order DESC limit 1");
while ($row = $query->fetch_assoc()) {
    $data['id_order'] = $row['id_order'];
    $data['meja'] = $row['meja'];
    $data['metode'] = $row['metode'];

    $pesan[] = $data;
}

echo json_encode(['data' => $pesan]);

?>