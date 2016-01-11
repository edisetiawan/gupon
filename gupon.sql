-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2016 at 05:33 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gupon`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `diskusi_id` int(11) NOT NULL,
  `pengguna_id` int(11) DEFAULT NULL,
  `materi_id` int(11) DEFAULT NULL,
  `diskusi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`diskusi_id`, `pengguna_id`, `materi_id`, `diskusi`) VALUES
(1, 1, 2, 'Heloooo .....???????????\r\nGo-Jex Yooooo'),
(2, 2, 2, 'Hello Juga..\r\nSek Aku Lg ngooding.???'),
(3, 3, 2, 'Ngoding Ra pentinggg...\r\nRa jaman saiki ngoding..\r\nHuh..cah kodingan'),
(16, 1, 2, 'Ngoono looo'),
(33, 2, 2, 'Yeee'),
(35, 5, 1, 'Yoooo\r\n'),
(36, 5, 1, 'lol'),
(38, 2, 1, 'Piee Gan'),
(42, 4, 3, 'Pie iki..???'),
(43, 3, 3, 'Ngono we bingung'),
(44, 2, 3, 'Ciee Mas Mass ..\r\nPada Ngaoain Nieee'),
(45, 5, 3, 'Apaaahh ....'),
(46, 6, 1, 'Hai Anak-anak....'),
(47, 6, 3, 'di Kerjain sendiri yaaa Anak-anak'),
(48, 6, 3, 'Ngak Boleh Nyontek'),
(49, 6, 1, 'Nggaa boleh Baper');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `materi_id` int(11) NOT NULL,
  `materi_judul` varchar(50) DEFAULT NULL,
  `materi_foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`materi_id`, `materi_judul`, `materi_foto`) VALUES
(1, 'Pemrograman Web', NULL),
(2, 'Pemrograman Delphi10', NULL),
(3, 'Analisa dan Desan Database', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(12) DEFAULT NULL,
  `pengguna_foto` text,
  `pengguna_email` varchar(12) DEFAULT NULL,
  `pengguna_kelas` varchar(12) DEFAULT NULL,
  `pengguna_username` varchar(200) DEFAULT NULL,
  `pengguna_password` varchar(200) DEFAULT NULL,
  `pengguna_level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_foto`, `pengguna_email`, `pengguna_kelas`, `pengguna_username`, `pengguna_password`, `pengguna_level`) VALUES
(1, 'Ghufron ', NULL, 'ghufron@yaho', 'XI A', 'ghufron', '$2y$10$jX7rNVw9qvI4NBWrr9zq4Op7OoWVclUzr1gKl4IVacazAIQvLF7mi', 'SISWA'),
(2, 'Milla', NULL, 'milla@yahoo.', 'XI B', 'milla', '$2y$10$jX7rNVw9qvI4NBWrr9zq4Op7OoWVclUzr1gKl4IVacazAIQvLF7mi', 'SISWA'),
(3, 'Yakup', NULL, 'yakup@yahoo.', 'XI C', 'yakup', '$2y$10$jX7rNVw9qvI4NBWrr9zq4Op7OoWVclUzr1gKl4IVacazAIQvLF7mi', 'SISWA'),
(4, 'Yarto', NULL, 'yarto@yahoo.', 'XI D', 'yarto', '$2y$10$jX7rNVw9qvI4NBWrr9zq4Op7OoWVclUzr1gKl4IVacazAIQvLF7mi', 'SISWA'),
(5, 'Heri', NULL, 'heri@yahoo.c', 'XI B', 'heri', '$2y$10$jX7rNVw9qvI4NBWrr9zq4Op7OoWVclUzr1gKl4IVacazAIQvLF7mi', 'SISWA'),
(6, 'dwi', NULL, 'dwi@yahoo.co', '', 'dwi', '$2y$10$jX7rNVw9qvI4NBWrr9zq4Op7OoWVclUzr1gKl4IVacazAIQvLF7mi', 'GURU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`diskusi_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`materi_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `diskusi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `materi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
