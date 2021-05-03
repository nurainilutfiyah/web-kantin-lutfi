<?php

header('Content-Type: application/json');
include '../koneksi/koneksi.php';

$idOutlet = $_GET['data'];

$querym = mysqli_query($koneksi, "select * from menu_hidangan where id_outlet = '$idOutlet' order by id_hidangan DESC limit 4");
while ($row = $querym->fetch_assoc()) {
    $data['id_hidangan'] = $row['id_hidangan'];
    $data['hidangan'] = $row['hidangan'];
    $data['gambar'] = $row['gambar'];
    $data['detail'] = $row['detail'];
    $data['harga'] = $row['harga'];
    $data['rp'] = 'Rp ' . number_format($row['harga'], 0, '.', ',');
    $menu[] = $data;
}

echo json_encode(['data' => $menu]);

?>