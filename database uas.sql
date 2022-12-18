-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 03:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dss_tender_kontruksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `idalternatif` int(11) NOT NULL,
  `nmalternatif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`idalternatif`, `nmalternatif`) VALUES
(1, 'Radika'),
(2, 'Suci Ramdani\r\n'),
(3, 'Ariska Tika'),
(4, 'Syahdiah'),
(5, 'Putri Dhani'),
(6, 'Yolaliza'),
(7, 'Isty'),
(8, 'Asri'),
(9, 'Budianto'),
(10, 'Rma zai\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `idbobot` int(11) NOT NULL,
  `idkriteria` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`idbobot`, `idkriteria`, `value`, `tipe`) VALUES
(1, 1, 0.520833, 'Benefit'),
(2, 2, 0.270833, 'Cost'),
(3, 3, 0.145833, 'Cost'),
(4, 4, 0.06, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `idkriteria` int(11) NOT NULL,
  `nmkriteria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`idkriteria`, `nmkriteria`) VALUES
(1, 'Prestasi Akademik'),
(2, 'Penghasilan Orang Tua'),
(3, 'Tanggungan Orang Tua\r\n'),
(4, 'Kelengkapan Surat\r\n'),
(6, 'ongkos');

-- --------------------------------------------------------

--
-- Table structure for table `matrikskeputusan`
--

CREATE TABLE `matrikskeputusan` (
  `idmatriks` int(11) NOT NULL,
  `idalternatif` int(11) DEFAULT NULL,
  `idbobot` int(11) DEFAULT NULL,
  `idskala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matrikskeputusan`
--

INSERT INTO `matrikskeputusan` (`idmatriks`, `idalternatif`, `idbobot`, `idskala`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 2),
(3, 1, 3, 1),
(4, 1, 4, 3),
(5, 2, 1, 2),
(6, 2, 2, 2),
(7, 2, 3, 2),
(8, 2, 4, 1),
(9, 3, 1, 3),
(10, 3, 2, 1),
(11, 3, 3, 1),
(12, 3, 4, 1),
(13, 4, 1, 2),
(14, 4, 2, 1),
(15, 4, 3, 1),
(16, 4, 4, 3),
(17, 5, 1, 1),
(18, 5, 2, 2),
(19, 5, 3, 1),
(20, 5, 4, 1),
(21, 6, 1, 2),
(22, 6, 2, 1),
(23, 6, 3, 2),
(24, 6, 4, 3),
(25, 7, 1, 3),
(26, 7, 2, 2),
(27, 7, 3, 3),
(28, 7, 4, 3),
(29, 8, 1, 3),
(30, 8, 2, 2),
(31, 8, 3, 1),
(32, 8, 4, 3),
(33, 9, 1, 2),
(34, 9, 2, 3),
(35, 9, 3, 2),
(36, 9, 4, 3),
(37, 10, 1, 3),
(38, 10, 2, 1),
(39, 10, 3, 3),
(40, 10, 4, 3),
(42, 10, 3, 1),
(43, 9, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `skala`
--

CREATE TABLE `skala` (
  `idskala` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skala`
--

INSERT INTO `skala` (`idskala`, `value`, `keterangan`) VALUES
(1, 1, 'Buruk'),
(2, 2, 'Baik'),
(3, 3, 'Sangat Baik'),
(5, 4, 'cantik');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmatrixkeputtusan`
-- (See below for the actual view)
--
CREATE TABLE `vmatrixkeputtusan` (
`idmatriks` int(11)
,`idalternatif` int(11)
,`nmalternatif` varchar(50)
,`idkriteria` int(11)
,`nmkriteria` varchar(50)
,`idbobot` int(11)
,`value` float
,`nilai` int(11)
,`keterangan` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_jumlahbobot`
-- (See below for the actual view)
--
CREATE TABLE `wp_jumlahbobot` (
`jumlah` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_nilais`
-- (See below for the actual view)
--
CREATE TABLE `wp_nilais` (
`idalternatif` int(11)
,`nmalternatif` varchar(50)
,`nilaiS` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_nilaiv`
-- (See below for the actual view)
--
CREATE TABLE `wp_nilaiv` (
`idalternatif` int(11)
,`nmalternatif` varchar(50)
,`nilaiv` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_normalisasiterbobot`
-- (See below for the actual view)
--
CREATE TABLE `wp_normalisasiterbobot` (
`idbobot` int(11)
,`idkriteria` int(11)
,`value` float
,`tipe` varchar(50)
,`jumlah` double
,`normalisasi_w` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_pangkat`
-- (See below for the actual view)
--
CREATE TABLE `wp_pangkat` (
`idmatriks` int(11)
,`idalternatif` int(11)
,`nmalternatif` varchar(50)
,`idkriteria` int(11)
,`nmkriteria` varchar(50)
,`idbobot` int(11)
,`value` float
,`nilai` int(11)
,`keterangan` varchar(50)
,`normalisasi_w` double
,`pangkat` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_sums`
-- (See below for the actual view)
--
CREATE TABLE `wp_sums` (
`jum` double
);

-- --------------------------------------------------------

--
-- Structure for view `vmatrixkeputtusan`
--
DROP TABLE IF EXISTS `vmatrixkeputtusan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmatrixkeputtusan`  AS  select `matrikskeputusan`.`idmatriks` AS `idmatriks`,`alternatif`.`idalternatif` AS `idalternatif`,`alternatif`.`nmalternatif` AS `nmalternatif`,`kriteria`.`idkriteria` AS `idkriteria`,`kriteria`.`nmkriteria` AS `nmkriteria`,`bobot`.`idbobot` AS `idbobot`,`bobot`.`value` AS `value`,`skala`.`value` AS `nilai`,`skala`.`keterangan` AS `keterangan` from ((((`matrikskeputusan` join `skala`) join `bobot`) join `kriteria`) join `alternatif`) where ((`matrikskeputusan`.`idalternatif` = `alternatif`.`idalternatif`) and (`matrikskeputusan`.`idbobot` = `bobot`.`idbobot`) and (`matrikskeputusan`.`idskala` = `skala`.`idskala`) and (`kriteria`.`idkriteria` = `bobot`.`idkriteria`)) ;

-- --------------------------------------------------------

--
-- Structure for view `wp_jumlahbobot`
--
DROP TABLE IF EXISTS `wp_jumlahbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_jumlahbobot`  AS  select sum(`bobot`.`value`) AS `jumlah` from `bobot` ;

-- --------------------------------------------------------

--
-- Structure for view `wp_nilais`
--
DROP TABLE IF EXISTS `wp_nilais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilais`  AS  select `wp_pangkat`.`idalternatif` AS `idalternatif`,`wp_pangkat`.`nmalternatif` AS `nmalternatif`,exp(sum(log(`wp_pangkat`.`pangkat`))) AS `nilaiS` from `wp_pangkat` group by `wp_pangkat`.`idalternatif` ;

-- --------------------------------------------------------

--
-- Structure for view `wp_nilaiv`
--
DROP TABLE IF EXISTS `wp_nilaiv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilaiv`  AS  select `wp_nilais`.`idalternatif` AS `idalternatif`,`wp_nilais`.`nmalternatif` AS `nmalternatif`,(`wp_nilais`.`nilaiS` / `wp_sums`.`jum`) AS `nilaiv` from (`wp_nilais` join `wp_sums`) ;

-- --------------------------------------------------------

--
-- Structure for view `wp_normalisasiterbobot`
--
DROP TABLE IF EXISTS `wp_normalisasiterbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_normalisasiterbobot`  AS  select `bobot`.`idbobot` AS `idbobot`,`bobot`.`idkriteria` AS `idkriteria`,`bobot`.`value` AS `value`,`bobot`.`tipe` AS `tipe`,`wp_jumlahbobot`.`jumlah` AS `jumlah`,if((`bobot`.`tipe` = 'Cost'),((`bobot`.`value` / `wp_jumlahbobot`.`jumlah`) * -(1)),(`bobot`.`value` / `wp_jumlahbobot`.`jumlah`)) AS `normalisasi_w` from (`bobot` join `wp_jumlahbobot`) ;

-- --------------------------------------------------------

--
-- Structure for view `wp_pangkat`
--
DROP TABLE IF EXISTS `wp_pangkat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_pangkat`  AS  select `vmatrixkeputtusan`.`idmatriks` AS `idmatriks`,`vmatrixkeputtusan`.`idalternatif` AS `idalternatif`,`vmatrixkeputtusan`.`nmalternatif` AS `nmalternatif`,`vmatrixkeputtusan`.`idkriteria` AS `idkriteria`,`vmatrixkeputtusan`.`nmkriteria` AS `nmkriteria`,`vmatrixkeputtusan`.`idbobot` AS `idbobot`,`vmatrixkeputtusan`.`value` AS `value`,`vmatrixkeputtusan`.`nilai` AS `nilai`,`vmatrixkeputtusan`.`keterangan` AS `keterangan`,`wp_normalisasiterbobot`.`normalisasi_w` AS `normalisasi_w`,pow(`vmatrixkeputtusan`.`nilai`,`wp_normalisasiterbobot`.`normalisasi_w`) AS `pangkat` from (`vmatrixkeputtusan` join `wp_normalisasiterbobot`) where (`wp_normalisasiterbobot`.`idkriteria` = `vmatrixkeputtusan`.`idkriteria`) group by `vmatrixkeputtusan`.`idmatriks` ;

-- --------------------------------------------------------

--
-- Structure for view `wp_sums`
--
DROP TABLE IF EXISTS `wp_sums`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_sums`  AS  select sum(`wp_nilais`.`nilaiS`) AS `jum` from `wp_nilais` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`idalternatif`) USING BTREE;

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`idbobot`),
  ADD KEY `idkriteria` (`idkriteria`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`idkriteria`);

--
-- Indexes for table `matrikskeputusan`
--
ALTER TABLE `matrikskeputusan`
  ADD PRIMARY KEY (`idmatriks`),
  ADD KEY `idalternatif` (`idalternatif`),
  ADD KEY `idbobot` (`idbobot`),
  ADD KEY `idskala` (`idskala`);

--
-- Indexes for table `skala`
--
ALTER TABLE `skala`
  ADD PRIMARY KEY (`idskala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `idalternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `idbobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `idkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matrikskeputusan`
--
ALTER TABLE `matrikskeputusan`
  MODIFY `idmatriks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `skala`
--
ALTER TABLE `skala`
  MODIFY `idskala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bobot`
--
ALTER TABLE `bobot`
  ADD CONSTRAINT `FK_bobot_kriteria` FOREIGN KEY (`idkriteria`) REFERENCES `kriteria` (`idkriteria`);

--
-- Constraints for table `matrikskeputusan`
--
ALTER TABLE `matrikskeputusan`
  ADD CONSTRAINT `FK_matrikskeputusan_alternatif` FOREIGN KEY (`idalternatif`) REFERENCES `alternatif` (`idalternatif`),
  ADD CONSTRAINT `FK_matrikskeputusan_bobot` FOREIGN KEY (`idbobot`) REFERENCES `bobot` (`idbobot`),
  ADD CONSTRAINT `FK_matrikskeputusan_skala` FOREIGN KEY (`idskala`) REFERENCES `skala` (`idskala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
