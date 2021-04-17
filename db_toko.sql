-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2021 pada 18.23
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) DEFAULT NULL,
  `produk` int(10) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`id`, `order_id`, `produk`, `qty`, `harga`) VALUES
(1, 1, 1, 10, '3500000'),
(2, 19, 3, 1, '7250000'),
(3, 20, 5, 1, '4300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `nama_kategori`) VALUES
(1, 'Kaca'),
(2, 'Kertas'),
(3, 'Kaleng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pelanggan` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `tanggal`, `pelanggan`) VALUES
(1, '2021-04-14', 1),
(2, '2021-04-14', 2),
(3, '2021-04-14', 3),
(4, '2021-04-14', 4),
(5, '2021-04-14', 5),
(6, '2021-04-14', 6),
(7, '2021-04-14', 7),
(8, '2021-04-14', 8),
(9, '2021-04-14', 9),
(10, '2021-04-14', 10),
(11, '2021-04-14', 11),
(12, '2021-04-14', 12),
(13, '2021-04-14', 13),
(14, '2021-04-14', 14),
(15, '2021-04-14', 15),
(16, '2021-04-14', 16),
(17, '2021-04-14', 17),
(18, '2021-04-14', 18),
(19, '2021-04-14', 19),
(20, '2021-04-14', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id`, `nama`, `email`, `alamat`, `telp`) VALUES
(1, 'muhammad rizky setiawan', 'rizkysetiawan010201@gmail.com', 'Jl. Sunan Kalijaga', '0897654321'),
(2, 'muhammad rizky setiawan', 'rizkysetiawan010201@gmail.com', 'Jl. Sunan Kalijaga', '0897654321'),
(3, 'muhammad rizky setiawan', 'rizkysetiawan010201@gmail.com', 'Jl. Sunan Kalijaga', '0897654321'),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, 'muhammad rizky S', 'zoriyem@gmail.com', 'Jl. Sunan Muria', '1234567'),
(20, 'kikiki', 'admin@gmail.com', 'Jl. Sunan Ampel', '99999');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `kategori` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `gambar`, `kategori`) VALUES
(1, 'Botol Kaca 1', 'Botol-botol kaca bekas minuman.', '500', 'kaca1.jpg', 1),
(2, 'Botol Kaca 2', 'Botol-botol kaca bekas minuman.', '500', 'kaca2.jpg', 1),
(4, 'Kaleng Susu 1', 'Kaleng minuman susu.', '250', 'kaleng1.jpg', 2),
(5, 'Kaleng Susu 2', 'Kaleng minuman susu.', '250', 'kaleng2.jpg', 2),
(7, 'Kertas Koran 1', 'Surat kabar lama. ', '1000', 'koran1.jpg', 3),
(8, 'Kertas Koran 2', 'Surat kabar lama.', '1000', 'koran2.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
