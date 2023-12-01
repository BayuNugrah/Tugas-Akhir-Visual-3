-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 16.12
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_ban`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nm_pelanggan` varchar(30) NOT NULL,
  `almt_pelanggan` varchar(50) NOT NULL,
  `no_pelanggan` varchar(15) NOT NULL,
  `email_pelanggan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nm_pelanggan`, `almt_pelanggan`, `no_pelanggan`, `email_pelanggan`) VALUES
(3, 'rahmat', 'bjm', '081257137857', 'rbayu0264@gmail.com'),
(4, 'bayu', 'bjm', '081257137858', 'rbayu0265@gmail.com'),
(5, 'nugraha', 'bjm', '081257137859', 'rbayu0266@gmail.com'),
(6, 'yunus', 'bjm', '081257137860', 'yns@gmail.com'),
(7, 'nanda', 'bjm', '081257137861', 'nnd@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemasok`
--

CREATE TABLE `tbl_pemasok` (
  `id_pemasok` int(11) NOT NULL,
  `nm_pemasok` varchar(30) NOT NULL,
  `almt_pemasok` varchar(40) NOT NULL,
  `no_pemasok` varchar(15) NOT NULL,
  `email_pemasok` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pemasok`
--

INSERT INTO `tbl_pemasok` (`id_pemasok`, `nm_pemasok`, `almt_pemasok`, `no_pemasok`, `email_pemasok`) VALUES
(1, 'yakin', 'bjm', '081258589292', 'yakin12@gmail.com'),
(2, 'raka', 'bjm', '081288888888', 'raka123@gmail.com'),
(3, 'herlambang', 'bjm', '081277777777', 'herlambang321@gmail.com'),
(4, 'rulkun', 'bjm', '081299999999', 'rulkun98@gmail.com'),
(5, 'denan', 'bjm', '081324441124', 'denan1998@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `nm_produk` varchar(30) NOT NULL,
  `desk_produk` varchar(30) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `jumlah_stok_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nm_produk`, `desk_produk`, `harga_produk`, `jumlah_stok_produk`) VALUES
(1, 'swallow', 'ban mobil', 700000, 8),
(2, 'dunlop', 'ban mobil', 800000, 11),
(3, 'bridgestone', 'ban mobil', 1000000, 9),
(4, 'swallow motor', 'ban motor', 200000, 4),
(5, 'dunlop motor', 'ban motor', 210000, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_stok`
--

CREATE TABLE `tbl_stok` (
  `id_stok` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_stok_barang` int(11) NOT NULL,
  `jumlah_stok_keluar` int(11) NOT NULL,
  `tgl_transaksi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_stok`
--

INSERT INTO `tbl_stok` (`id_stok`, `id_produk`, `jumlah_stok_barang`, `jumlah_stok_keluar`, `tgl_transaksi`) VALUES
(1, 1, 7, 3, '30112023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_pemasok` int(11) NOT NULL,
  `jns_transaksi` varchar(30) NOT NULL,
  `jumlah_produk_terlibat` int(11) NOT NULL,
  `tgl_transaksi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` enum('Admin','Pembeli','','') NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `password`, `email`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'admin123@gmail.com', 'Admin', 1),
(2, 'pembeli', 'pembeli', 'pembeli123@gmail.com', 'Pembeli', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `tbl_pemasok`
--
ALTER TABLE `tbl_pemasok`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tbl_stok`
--
ALTER TABLE `tbl_stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemasok`
--
ALTER TABLE `tbl_pemasok`
  MODIFY `id_pemasok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_stok`
--
ALTER TABLE `tbl_stok`
  MODIFY `id_stok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
