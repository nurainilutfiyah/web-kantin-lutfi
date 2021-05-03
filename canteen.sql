-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 01:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `nim` varchar(225) NOT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `jenis_kelamin` varchar(225) DEFAULT NULL,
  `no_handphone` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`nim`, `nama`, `jenis_kelamin`, `no_handphone`, `password`) VALUES
('1111', 'mei', 'perempuan', '085868372637', '123');

-- --------------------------------------------------------

--
-- Table structure for table `menu_hidangan`
--

CREATE TABLE `menu_hidangan` (
  `id_hidangan` int(11) NOT NULL,
  `hidangan` varchar(225) DEFAULT NULL,
  `gambar` varchar(225) DEFAULT NULL,
  `detail` varchar(225) DEFAULT NULL,
  `id_outlet` int(11) DEFAULT NULL,
  `harga` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_hidangan`
--

INSERT INTO `menu_hidangan` (`id_hidangan`, `hidangan`, `gambar`, `detail`, `id_outlet`, `harga`) VALUES
(1, 'Soto Ayam', 'sotoay.jpg', 'Soto khas lamongan dengan irisan daging ayam', 1, '15000'),
(2, 'Soto Babat', 'babat.jpg', 'Soto dengan irisan daging sapi', 1, '18000'),
(3, 'Sup Ayam', 'supay.jpg', 'Sup ayam dengan sayuran lengkap', 1, '18000'),
(4, 'Rawon', 'rawon.jpg', 'Masakan daging sapi diiris tipis dengan kuah', 1, '20000'),
(5, 'Nasi Pecel', 'pecel.jpg', 'Nasi sayuran lengkap dengan siraman bumbu kacang + krupuk peyek kacang', 1, '12000'),
(6, 'Lalapan Ayam', 'lapay.jpg', 'Masakan ayam goreng dengan lalapan sayur dan sambal', 1, '10000'),
(7, 'Teh', 'steh.jpg', 'Minuman teh dengan/tanpa es batu', 1, '5000'),
(8, 'Jeruk Peras', 'sjer.jpg', 'Minuman perasan jeruk dengan/tanpa es batu', 1, '8000'),
(9, 'Donat ', 'donat.jpg', 'Roti bulat dengan anek topping', 2, '2000'),
(10, 'France Fries', 'ffries.jpg', 'Irisan Kentang goreng gurih ', 2, '15000'),
(11, 'Jamur Crispy', 'jamur.jpg', 'Jamur yang digoreng dengan tepung krispi', 2, '10000'),
(12, 'Onion Ring', 'oring.jpg', 'Potongan bawang bombay yang digoreng dengan tepung krispi', 2, '12000'),
(13, 'Muffin', 'muffin.jpg', 'Kue oven yang berbentuk cup, dengan topping chocochips', 2, '5000'),
(14, 'Chicken Nugget', 'nugget.jpg', 'potongan daging ayam yang digoreng dengan tepung roti', 2, '20000'),
(15, 'Ice Cream', 'scream.jpg', 'Aneka rasa olahan susu yang dibekukan', 2, '7000'),
(16, 'Milkshake', 'mshake.jpg', 'Susu kocok aneka rasa', 2, '15000'),
(17, 'Fruit Salad', 'fsalad.jpg', 'Salad aneka buah', 3, '15000'),
(18, 'Vegetable Salad', 'vsalad.jpg', 'Salad aneka sayur', 3, '15000'),
(19, 'Pasta Salad', 'psalad.jpg', 'Salad aneka buah dan sayur dengan pasta', 3, '18000'),
(20, 'Veggie Spaghetti', 'vspa.jpg', 'Spagetti sayur tanpa daging', 3, '23000'),
(21, 'Nasgor Hongkong', 'hongkong.jpg', 'Nasi goreng tanpa daging dengan sayur', 3, '25000'),
(22, 'Sup Jamur', 'sjamur.jpg', 'Sup dengan potongan jamur', 3, '20000'),
(23, 'Yogurt', 'yogurt.jpg', 'Minuman hasil fermentasi susu', 3, '10000'),
(24, 'Infused Water', 'iwater.jpg', 'Minumah rendaman buah yang sehat dan segar', 3, '15000');

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `id_outlet` int(11) NOT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `deskripsi` varchar(225) DEFAULT NULL,
  `gambar` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`id_outlet`, `nama`, `deskripsi`, `gambar`) VALUES
(1, 'Warung Cak Har', 'Menyediakan berbagai jenis makanan dan minuman yang bergizi serta higienis. Ditambah dengan harga yang pas di kantong membuat kedai Cak Harr menjadi favorit mahasiswa loh!', 'g1.jpg'),
(2, 'Snack Factory', 'Disini Kami menyediakan banyak sekali snack kekinian yang dapat menemani kamu untuk mengerjakan tugas nih! Selain itu snack ini home made jadi terjamin kebersihannya. Kalau soal rasa udah pasti enak plus nagih dong!', 'g2.jpg'),
(3, 'Mama\'s Foodie', 'Untuk kamu yang lagi diet dan pecinta buah dan sayur di sini lah tempat yang cocok buat kalian. Mama\'s Foodie menyediakan bermacam - macam makanan sehat dan pastinya rasanya nggak bikin eneg.', 'g3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_order` int(11) NOT NULL,
  `meja` varchar(10) NOT NULL,
  `metode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_order`, `meja`, `metode`) VALUES
(1, '17', 'Cash'),
(2, '12', 'Cash'),
(3, '15', 'Gopay'),
(4, '', ''),
(5, '12', 'Cash'),
(6, '', ''),
(7, '', ''),
(8, '11', 'Cash'),
(9, '10', 'Cash'),
(10, '8', 'Ovo'),
(11, '8', 'Gopay'),
(12, '6', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nim` varchar(225) DEFAULT NULL,
  `id_hidangan` int(11) DEFAULT NULL,
  `metode_pembayaran` varchar(225) DEFAULT NULL,
  `total` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `menu_hidangan`
--
ALTER TABLE `menu_hidangan`
  ADD PRIMARY KEY (`id_hidangan`),
  ADD KEY `id_outlet` (`id_outlet`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_hidangan` (`id_hidangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_hidangan`
--
ALTER TABLE `menu_hidangan`
  MODIFY `id_hidangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `id_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_hidangan`
--
ALTER TABLE `menu_hidangan`
  ADD CONSTRAINT `menu_hidangan_ibfk_1` FOREIGN KEY (`id_outlet`) REFERENCES `outlet` (`id_outlet`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `customer` (`nim`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_hidangan`) REFERENCES `menu_hidangan` (`id_hidangan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
