-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 11:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `judul`, `foto`) VALUES
(13, 'Starry Night Over the Rhone', '20241119080131.jpg'),
(14, 'Starry Night', '20241119080141.jpg'),
(18, 'Cafe Terrace at Night', '20241120082923.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Lukisan');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_wa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `facebook`, `instagram`, `email`, `alamat`, `no_wa`) VALUES
(1, 'GALERI SENI', 'Saya Fattah', '', '', 'fattahdhana595@gmail.com', 'PERUM SWAKARYA,Gg.RoketPalur', '6281567931020');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(30, 'Starry Night', 'Malam Berbintang adalah sebuah lukisan minyak di kanvas karya pelukis pasca-Impresionis Belanda Vincent van Gogh. Dilukis pada Juni 1889, lukisan tersebut menggambarkan pemandangan dari jendela yang menghadap ke arah timur dari kamar rumah sakit jiwanya di Saint-Rémy-de-Provence, tepat sebelum matahari terbit, dengan tambahan sebuah desa yang diidealkan.', '20241119074243.jpg', 'Starry-Night', '3', '2024-11-19', 'Asep'),
(32, 'Starry Night Over the Rhone', 'Malam Berbintang di atas Rhône (September 1888, bahasa Prancis: Nuit étoilée sur le Rhône) adalah salah satu lukisan Arles pada malam hari karya Vincent van Gogh. Lukisan tersebut dilukis di tepi sungai Rhone yang hanya berjarak satu atau dua menit berjalan kaki dari Rumah Kuning di Place Lamartine yang disewa oleh Van Gogh saat itu. Langit malam dan efek cahaya pada malam hari merupakan subjek dari lukisan ini dan lukisan terkenal lainnya, Starry Night.\r\n\r\nMalam Berbintang di atas Rhône menjadi milik pribadi sampai tahun 1922 yang kemudian diperoleh oleh Buffa, Gallery of Amsterdam. Sejak 1975, lukisan ini menjadi koleksi Musee d\'Orsay.', '20241119075935.jpg', 'Starry-Night-Over-the-Rhone', '3', '2024-11-19', 'Asep'),
(33, 'Cafe Terrace at Night', 'Teras Kafé pada Malam Hari, yang juga dikenal sebagai Teras Kafe di Place du Forum, adalah sebuah lukisan minyak yang dibuat oleh seniman Belanda Vincent van Gogh saat berada di Arles, Prancis, pada pertengahan September 1888. Lukisan tersebut tak bertanda tangan, tetapi dideskripsikan dan disebutkan oleh seniman tersebut dalam tiga surat.\r\n\r\nLukisan tersebut sekarang berada di Museum Kröller-Müller, Otterlo, Belanda.', '20241119080555.jpg', 'Cafe-Terrace-at-Night', '3', '2024-11-19', 'Asep');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(8, 'Asep', 'Asep', '081e127fe622361157d47abcf49ffce5', 'Admin'),
(9, 'p', 'p', '83878c91171338902e0fe0fb97a8c47a', 'Kontributor'),
(10, 'tes1', 'tes1', 'fa3fb6e0dccc657b57251c97db271b05', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
