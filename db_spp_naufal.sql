-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2026 pada 11.43
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
-- Database: `db_spp_naufal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('K02', 'XII RPL 2', 'REKAYASA PERANGKAT LUNAK ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_petugas` varchar(11) DEFAULT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `bulan_tagihan` varchar(12) NOT NULL,
  `tahun_tagihan` int(4) NOT NULL,
  `id_spp` varchar(5) NOT NULL,
  `no_bayar` varchar(11) DEFAULT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `no_bayar`, `keterangan`) VALUES
(29, 'A02', '2334', '2026-09-04', 'Juli', 2026, 'SPP0', '20260904000', 'LUNAS'),
(30, NULL, '2334', '0000-00-00', 'Agustus', 2026, 'SPP0', NULL, ''),
(31, NULL, '2334', '0000-00-00', 'September', 2026, 'SPP0', NULL, ''),
(32, NULL, '2334', '0000-00-00', 'Oktober', 2026, 'SPP0', NULL, ''),
(33, NULL, '2334', '0000-00-00', 'November', 2026, 'SPP0', NULL, ''),
(34, NULL, '2334', '0000-00-00', 'Desember', 2026, 'SPP0', NULL, ''),
(35, NULL, '2334', '0000-00-00', 'Januari', 2027, 'SPP0', NULL, ''),
(36, NULL, '2334', '0000-00-00', 'Februari', 2027, 'SPP0', NULL, ''),
(37, NULL, '2334', '0000-00-00', 'Maret', 2027, 'SPP0', NULL, ''),
(38, NULL, '2334', '0000-00-00', 'April', 2027, 'SPP0', NULL, ''),
(39, NULL, '2334', '0000-00-00', 'Mei', 2027, 'SPP0', NULL, ''),
(40, NULL, '2334', '0000-00-00', 'Juni', 2027, 'SPP0', NULL, ''),
(41, 'A01', '0987', '2026-09-04', 'Juli', 2026, 'SPP2', '20260904040', 'LUNAS'),
(42, 'A01', '0987', '2026-09-04', 'Agustus', 2026, 'SPP2', '20260904040', 'LUNAS'),
(43, 'A01', '0987', '2026-09-04', 'September', 2026, 'SPP2', '20260904040', 'LUNAS'),
(44, NULL, '0987', '0000-00-00', 'Oktober', 2026, 'SPP2', NULL, ''),
(45, NULL, '0987', '0000-00-00', 'November', 2026, 'SPP2', NULL, ''),
(46, NULL, '0987', '0000-00-00', 'Desember', 2026, 'SPP2', NULL, ''),
(47, NULL, '0987', '0000-00-00', 'Januari', 2027, 'SPP2', NULL, ''),
(48, NULL, '0987', '0000-00-00', 'Februari', 2027, 'SPP2', NULL, ''),
(49, NULL, '0987', '0000-00-00', 'Maret', 2027, 'SPP2', NULL, ''),
(50, NULL, '0987', '0000-00-00', 'April', 2027, 'SPP2', NULL, ''),
(51, NULL, '0987', '0000-00-00', 'Mei', 2027, 'SPP2', NULL, ''),
(52, NULL, '0987', '0000-00-00', 'Juni', 2027, 'SPP2', NULL, ''),
(89, 'A01', '0887', '2026-09-04', 'Juli', 2026, 'SPP1', '20260904040', 'LUNAS'),
(90, NULL, '0887', '0000-00-00', 'Agustus', 2026, 'SPP1', NULL, ''),
(91, NULL, '0887', '0000-00-00', 'September', 2026, 'SPP1', NULL, ''),
(92, NULL, '0887', '0000-00-00', 'Oktober', 2026, 'SPP1', NULL, ''),
(93, NULL, '0887', '0000-00-00', 'November', 2026, 'SPP1', NULL, ''),
(94, NULL, '0887', '0000-00-00', 'Desember', 2026, 'SPP1', NULL, ''),
(95, NULL, '0887', '0000-00-00', 'Januari', 2027, 'SPP1', NULL, ''),
(96, NULL, '0887', '0000-00-00', 'Februari', 2027, 'SPP1', NULL, ''),
(97, NULL, '0887', '0000-00-00', 'Maret', 2027, 'SPP1', NULL, ''),
(98, NULL, '0887', '0000-00-00', 'April', 2027, 'SPP1', NULL, ''),
(99, NULL, '0887', '0000-00-00', 'Mei', 2027, 'SPP1', NULL, ''),
(100, NULL, '0887', '0000-00-00', 'Juni', 2027, 'SPP1', NULL, ''),
(101, NULL, '0992', '0000-00-00', 'Juli', 2026, 'SPP2', NULL, ''),
(102, NULL, '0992', '0000-00-00', 'Agustus', 2026, 'SPP2', NULL, ''),
(103, NULL, '0992', '0000-00-00', 'September', 2026, 'SPP2', NULL, ''),
(104, NULL, '0992', '0000-00-00', 'Oktober', 2026, 'SPP2', NULL, ''),
(105, NULL, '0992', '0000-00-00', 'November', 2026, 'SPP2', NULL, ''),
(106, NULL, '0992', '0000-00-00', 'Desember', 2026, 'SPP2', NULL, ''),
(107, NULL, '0992', '0000-00-00', 'Januari', 2027, 'SPP2', NULL, ''),
(108, NULL, '0992', '0000-00-00', 'Februari', 2027, 'SPP2', NULL, ''),
(109, NULL, '0992', '0000-00-00', 'Maret', 2027, 'SPP2', NULL, ''),
(110, NULL, '0992', '0000-00-00', 'April', 2027, 'SPP2', NULL, ''),
(111, NULL, '0992', '0000-00-00', 'Mei', 2027, 'SPP2', NULL, ''),
(112, NULL, '0992', '0000-00-00', 'Juni', 2027, 'SPP2', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas',',') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'naufal', 'a7ef174d3ed272acd2b72913a7ef9d40', 'naufal', 'admin'),
('A02', 'tugas', '827ccb0eea8a706c4c34a16891f84e7b', 'udin', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('0887', '1111', 'bela', 'K02', 'mtp', '086633', 'SPP1'),
('0987', '222', 'Naufal', 'K02', 'bjb', '0897675432', 'SPP2'),
('0992', '2223', 'ijul', 'K02', 'London', '087776', 'SPP2'),
('2334', '8666', 'tereg', 'K02', 'bati bati', '0856789', 'SPP0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP0', 2010, 85000),
('SPP1', 2021, 85001),
('SPP2', 2025, 1000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
