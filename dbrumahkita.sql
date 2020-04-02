-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 11:14 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrumahkita`
--
CREATE DATABASE IF NOT EXISTS `dbrumahkita` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbrumahkita`;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_rumah`
--

CREATE TABLE `kategori_rumah` (
  `id` int(2) NOT NULL,
  `nama` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_rumah`
--

INSERT INTO `kategori_rumah` (`id`, `nama`) VALUES
(1, 'Rumah Komplek'),
(2, 'Rumah Biasa'),
(3, 'Rumah Mewah');

-- --------------------------------------------------------

--
-- Table structure for table `rumahkita`
--

CREATE TABLE `rumahkita` (
  `id` int(20) NOT NULL,
  `id_kategori` int(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `nohp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumahkita`
--

INSERT INTO `rumahkita` (`id`, `id_kategori`, `nama`, `alamat`, `type`, `harga`, `nohp`) VALUES
(1, 1, 'dadar', 'aku', 'jaja', 'a', '0'),
(2, 2, 'Yukiyu', 'jln.kh.azhari, 16 ulu, Plaju, lurung masjid', 'type 180', '800 juta', '081277665544'),
(3, 3, 'nana', 'jln.sudirman', 'type 70', '100 juta', '081988776644'),
(14, 1, 'dadar', 'aku', 'jaja', 'a', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_rumah`
--
ALTER TABLE `kategori_rumah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumahkita`
--
ALTER TABLE `rumahkita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cons_fk_id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rumahkita`
--
ALTER TABLE `rumahkita`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rumahkita`
--
ALTER TABLE `rumahkita`
  ADD CONSTRAINT `cons_fk_id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_rumah` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
