<?php

include('../koneksi/koneksi.php');
$meja = $_POST['meja'];
$bayar = $_POST['bayar'];

$sql = "insert into pesanan (meja, metode) values('$meja', '$bayar')";
mysqli_query($koneksi,$sql);

echo $sql;

?>
