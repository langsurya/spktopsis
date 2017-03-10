-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 10 Mar 2017 pada 05.22
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_categories`
--

CREATE TABLE `as_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_ceo` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `created_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `as_categories`
--

INSERT INTO `as_categories` (`category_id`, `category_name`, `category_ceo`, `image`, `status`, `created_userid`) VALUES
(1, 'Aquarium', 'ikan air tawar', '', 'Y', 1),
(3, 'Batu Karang', 'Batu karang antik dan Unik', '', 'N', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_cities`
--

CREATE TABLE `as_cities` (
  `city_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_code` varchar(10) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `created_userid` int(11) NOT NULL,
  `modified_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `as_cities`
--

INSERT INTO `as_cities` (`city_id`, `province_id`, `city_code`, `city_name`, `status`, `created_userid`, `modified_userid`) VALUES
(1, 1, 'JB01', 'Serang', 'Y', 1, 0),
(2, 2, 'DKI01', 'Jakarta Selatan', 'Y', 1, 0),
(3, 1, 'JB01', 'Tangerang', 'Y', 1, 0),
(4, 4, 'JB01', 'Bogor', 'Y', 1, 0),
(5, 2, 'DKI02', 'Jakarta Barat', 'Y', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_comments`
--

CREATE TABLE `as_comments` (
  `comment_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_members`
--

CREATE TABLE `as_members` (
  `member_id` int(11) NOT NULL,
  `facebook_id` varchar(20) NOT NULL,
  `twitter_id` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `biografi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `as_members`
--

INSERT INTO `as_members` (`member_id`, `facebook_id`, `twitter_id`, `email`, `username`, `password`, `photo`, `first_name`, `last_name`, `province_id`, `city_id`, `hp`, `alamat`, `biografi`, `created_at`, `hits`) VALUES
(1, '', '@sueagles', 'kiki@gmail.com', 'kikis', 'ikha', '470241.jpg', 'Kiki', 'Khairunisa', 1, 3, '23123', 'Jl. Murai, Tangerang', 'pintar cantik dan baik hati', '0000-00-00 00:00:00', 0),
(2, '', 'fariz', 'fariz@gmail.com', 'farizhahra', 'farizhah', '773194.jpg', 'fariza', 'alhifari', 8, 4, '0232134', 'Aceh utara selajaasd', 'Muslimah taat', '0000-00-00 00:00:00', 0),
(3, '@Suneagles', '@sueagles', 'suneagles@gmail.com', 'suneagles', 'suneagles', '945638.jpg', 'Elang', 'Surya', 1, 3, '089643912019', '<p>Jl Murai Raya Tangerang</p>', '<p>Rajin Mengaji</p>', '2017-03-10 10:21:59', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_provinces`
--

CREATE TABLE `as_provinces` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `created_userid` int(11) NOT NULL,
  `modified_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `as_provinces`
--

INSERT INTO `as_provinces` (`province_id`, `province_name`, `status`, `created_userid`, `modified_userid`) VALUES
(1, 'Banten', 'Y', 1, 0),
(2, 'DKI Jakarta', 'Y', 1, 0),
(4, 'Jawa Barat', 'Y', 1, 0),
(6, 'Jawa Tengah', 'Y', 1, 0),
(7, 'Jawa Timur', 'N', 1, 0),
(8, 'Aceh', 'Y', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_topics`
--

CREATE TABLE `as_topics` (
  `topic_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `member_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` date NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `as_user`
--

CREATE TABLE `as_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `blocked` enum('Y','N') NOT NULL,
  `created_userid` int(11) NOT NULL,
  `modified_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `as_user`
--

INSERT INTO `as_user` (`user_id`, `username`, `password`, `full_name`, `email`, `phone`, `level`, `blocked`, `created_userid`, `modified_userid`) VALUES
(1, 'admin', 'admin', 'Khairunisa', 'kiki@gmail.com', '0573927478', 'admin', 'Y', 1, 0),
(2, 'user', 'user', 'Dian Aprilia', 'dian@mail.com', '0573927478', 'admin', 'N', 1, 0),
(3, 'erlang', 'erlang', 'Erlang Surya', 'elangsurya19@gmail.com', '089643912019', 'admin', 'N', 1, 0),
(4, 'dhoni', 'dhoni', 'Juhadi Ramdhoni', 'dhoni@gmail.com', '094837822', 'admin', 'N', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `as_categories`
--
ALTER TABLE `as_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `as_cities`
--
ALTER TABLE `as_cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `as_comments`
--
ALTER TABLE `as_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `as_members`
--
ALTER TABLE `as_members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `as_provinces`
--
ALTER TABLE `as_provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `as_topics`
--
ALTER TABLE `as_topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `as_user`
--
ALTER TABLE `as_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `as_categories`
--
ALTER TABLE `as_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `as_cities`
--
ALTER TABLE `as_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `as_comments`
--
ALTER TABLE `as_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `as_members`
--
ALTER TABLE `as_members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `as_provinces`
--
ALTER TABLE `as_provinces`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `as_topics`
--
ALTER TABLE `as_topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `as_user`
--
ALTER TABLE `as_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
