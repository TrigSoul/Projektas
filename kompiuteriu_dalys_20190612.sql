-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Bir 12 d. 07:47
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
  `id` int(10) UNSIGNED NOT NULL,
  `pavadinimas` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `paveiksliukas` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `komponentai`
--

CREATE TABLE `komponentai` (
  `id` int(10) UNSIGNED NOT NULL,
  `indiv_pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `tipas` enum('Vaizdo plokštė','RAM','Procesorius','Pagrindinė plokštė','Garso plokštė','Maitinimo šaltinis','Kietasis diskas','Korpusas') COLLATE utf8_lithuanian_ci NOT NULL,
  `gamintojas` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `pagam_data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `komponentai_jungtys`
--

CREATE TABLE `komponentai_jungtys` (
  `id_jungtys` int(10) NOT NULL,
  `id_komponento` int(10) NOT NULL,
  `variantas` int(10) NOT NULL,
  `mf` enum('m','f') COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `komponentai_prekyboje`
--

CREATE TABLE `komponentai_prekyboje` (
  `id_komponento` int(10) NOT NULL,
  `id_pardavejo` int(10) NOT NULL,
  `data` date NOT NULL,
  `kaina` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pardavejai`
--

CREATE TABLE `pardavejai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pavadinimas` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `kontaktas` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jungtys`
--
ALTER TABLE `jungtys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komponentai`
--
ALTER TABLE `komponentai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komponentai_jungtys`
--
ALTER TABLE `komponentai_jungtys`
  ADD KEY `id_jungtys` (`id_jungtys`,`id_komponento`);

--
-- Indexes for table `komponentai_prekyboje`
--
ALTER TABLE `komponentai_prekyboje`
  ADD KEY `id_komponento` (`id_komponento`,`id_pardavejo`);

--
-- Indexes for table `pardavejai`
--
ALTER TABLE `pardavejai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jungtys`
--
ALTER TABLE `jungtys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komponentai`
--
ALTER TABLE `komponentai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pardavejai`
--
ALTER TABLE `pardavejai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
