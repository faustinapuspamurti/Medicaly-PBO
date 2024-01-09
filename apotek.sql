-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2023 pada 14.39
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataobat`
--

CREATE TABLE `dataobat` (
  `kodeObat` varchar(20) NOT NULL,
  `namaObat` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `jenisObat` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `tglKedaluwarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dataobat`
--

INSERT INTO `dataobat` (`kodeObat`, `namaObat`, `stok`, `jenisObat`, `harga`, `tglKedaluwarsa`) VALUES
('K001', 'Bodrex', 483, 'Tablet', 10000, '2023-12-15'),
('K002', 'Paracetamol', 189, 'Tablet', 20000, '2023-12-01'),
('K003', 'Ambroxol', 200, 'Cair', 21000, '2026-12-16'),
('K004', 'Amoksisilin', 145, 'Capsul', 36000, '2024-12-11'),
('K005', 'Aminofilin', 14, 'Tablet', 36000, '2024-12-11'),
('K006', 'Asam Mefenamat', 100, 'Capsul', 17000, '2024-12-11'),
('K007', 'Ibuprofen', 300, 'Tablet', 23000, '2024-12-11'),
('K008', 'Obat Batuk Hitam (O.B.H)', 300, 'Cair', 5000, '2024-12-11'),
('K009', 'Anti Bakteri DOEN', 30, 'Salep', 83000, '2024-12-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapenjualan`
--

CREATE TABLE `datapenjualan` (
  `kodeObat` varchar(20) NOT NULL,
  `namaObat` varchar(50) NOT NULL,
  `jumlahObat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datapenjualan`
--

INSERT INTO `datapenjualan` (`kodeObat`, `namaObat`, `jumlahObat`, `harga`, `tanggal`) VALUES
('K001', 'Bodrex', 9, 10000, '2023-12-21'),
('K002', 'Paracetamol', 5, 20000, '2023-12-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `full_name` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`) VALUES
(NULL, 'Faustina Puspamurti', 'murtileey@gmail.com', '12345'),
(NULL, 'SI06C', '12345@gmail.com', '12345'),
(NULL, 'namira shifwah kumandani', 'namira@gmail.com', 'namira123'),
(NULL, 'Faustina Puspamurti', '12345@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataobat`
--
ALTER TABLE `dataobat`
  ADD PRIMARY KEY (`kodeObat`);

--
-- Indeks untuk tabel `datapenjualan`
--
ALTER TABLE `datapenjualan`
  ADD PRIMARY KEY (`kodeObat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
