-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Bir 11 d. 10:49
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kompiuteriu dalys`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `jungtys`
--

CREATE TABLE `jungtys` (
  `COM` text COLLATE utf8_lithuanian_ci NOT NULL,
  `USB` text COLLATE utf8_lithuanian_ci NOT NULL,
  `LPT` text COLLATE utf8_lithuanian_ci NOT NULL,
  `eSATA` text COLLATE utf8_lithuanian_ci NOT NULL,
  `PCI` text COLLATE utf8_lithuanian_ci NOT NULL,
  `AGP` text COLLATE utf8_lithuanian_ci NOT NULL,
  `HDMI` text COLLATE utf8_lithuanian_ci NOT NULL,
  `M.2` text COLLATE utf8_lithuanian_ci NOT NULL,
  `DVI` text COLLATE utf8_lithuanian_ci NOT NULL,
  `VGA` text COLLATE utf8_lithuanian_ci NOT NULL,
  `IDC` text COLLATE utf8_lithuanian_ci NOT NULL,
  `SATA` text COLLATE utf8_lithuanian_ci NOT NULL,
  `ATA` text COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `komponentai`
--

CREATE TABLE `komponentai` (
  `Vaizdo plokštės` int(10) NOT NULL,
  `RAM` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `Procesoriai` int(10) NOT NULL,
  `Pagrindinės plokštės` int(10) NOT NULL,
  `Maitinimo šaltiniai` int(10) NOT NULL,
  `Kietieji diskai` int(10) NOT NULL,
  `Garso plokštės` int(10) NOT NULL,
  `Aušintuvai` int(10) NOT NULL,
  `Korpusai ir jų priedai` int(10) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komponentai`
--
ALTER TABLE `komponentai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komponentai`
--
ALTER TABLE `komponentai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
