-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 14 Nov 2016 pada 15.16
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spktopsis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bantuan`
--

CREATE TABLE `tbl_bantuan` (
  `id` int(10) NOT NULL,
  `nuptk` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bantuan`
--

INSERT INTO `tbl_bantuan` (`id`, `nuptk`, `nama`, `nilai`) VALUES
(1, '2134353211', 'Anggi', '8.19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot`
--

CREATE TABLE `tbl_bobot` (
  `id_bobot` int(10) NOT NULL,
  `nama_bobot` varchar(50) NOT NULL,
  `nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bobot`
--

INSERT INTO `tbl_bobot` (`id_bobot`, `nama_bobot`, `nilai`) VALUES
(1, 'Sangat Rendah', 1),
(2, 'Rendah', 2),
(3, 'Cukup', 3),
(4, 'Baik', 4),
(5, 'Sangat Baik', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(10) NOT NULL,
  `nuptk` varchar(16) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `jenkel` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nuptk`, `nama_guru`, `jenkel`, `tmp_lahir`, `tgl_lahir`, `jabatan`) VALUES
(1, '2134353211', 'Anggi', 'P', 'Bandung', '1991-10-14', 'Guru IPA'),
(2, '21389487', 'Deni Setiawan', 'L', 'Bintaro', '2016-11-09', 'Kepala Sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_himpunan`
--

CREATE TABLE `tbl_himpunan` (
  `id_himpunan` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_himpunan`
--

INSERT INTO `tbl_himpunan` (`id_himpunan`, `id_kriteria`, `nama`, `nilai`) VALUES
(2, 3, 'SMA/SMK', 6.5),
(3, 3, 'D3', 7),
(4, 3, 'S1', 8),
(5, 3, 'S2', 9),
(6, 3, 'S3', 10),
(7, 2, '2001-2015', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_guru` int(5) NOT NULL,
  `id_himpunan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_guru`, `id_himpunan`) VALUES
(1, 7),
(1, 4),
(2, 7),
(2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` int(10) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `atribut` enum('benefit','cost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`id_kriteria`, `nama_kriteria`, `atribut`) VALUES
(1, 'Absensi', 'cost'),
(2, 'Masa Kerja', 'benefit'),
(3, 'Pendidikan', 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Elang Surya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bantuan`
--
ALTER TABLE `tbl_bantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bobot`
--
ALTER TABLE `tbl_bobot`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_himpunan`
--
ALTER TABLE `tbl_himpunan`
  ADD PRIMARY KEY (`id_himpunan`);

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bantuan`
--
ALTER TABLE `tbl_bantuan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_bobot`
--
ALTER TABLE `tbl_bobot`
  MODIFY `id_bobot` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_himpunan`
--
ALTER TABLE `tbl_himpunan`
  MODIFY `id_himpunan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  MODIFY `id_kriteria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
