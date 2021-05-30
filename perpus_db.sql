-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2021 pada 16.38
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nomor_anggota` varchar(6) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `alamaat_anggota` varchar(100) NOT NULL,
  `telepon_angoota` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`nomor_anggota`, `nama_anggota`, `alamaat_anggota`, `telepon_angoota`) VALUES
('01', 'maula al falaqi bisalah', 'medan', '999'),
('04', 'Maula Al Falaqi', 'tanjab tim', '00822123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `nomor_buku` varchar(6) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `stok` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`nomor_buku`, `judul`, `kategori`, `pengarang`, `penerbit`, `tahun`, `stok`) VALUES
('HG1', 'bassi data', 'ilmu', 'maula', 'medan', '2017', '89');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kembali`
--

CREATE TABLE `tb_kembali` (
  `nomor_buku` varchar(10) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `tanggal_kembali` varchar(30) NOT NULL,
  `denda` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kembali`
--

INSERT INTO `tb_kembali` (`nomor_buku`, `nama_anggota`, `tanggal_kembali`, `denda`) VALUES
('B12', 'Maula Al Falaqi', '12/10/2020', '1000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `kode_petugas` varchar(6) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `status_petugas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`kode_petugas`, `nama_petugas`, `status_petugas`) VALUES
('B12', 'hasan basri', 'honorer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `kode_buku` varchar(10) NOT NULL,
  `kode_petugas` varchar(50) NOT NULL,
  `no_pinjam` varchar(30) NOT NULL,
  `tanggal_pinjam` varchar(20) NOT NULL,
  `tanggal_kembali` varchar(20) NOT NULL,
  `nama_anggota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`kode_buku`, `kode_petugas`, `no_pinjam`, `tanggal_pinjam`, `tanggal_kembali`, `nama_anggota`) VALUES
('B12', 'C12', 'b12', '10/12/2021', '20/12/2021', 'maula13'),
('bf1', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('admin','user biasa',',') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `level`) VALUES
(2, 'maula al falaqi', 'admin@gmail.com', '1212', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nomor_anggota`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`nomor_buku`);

--
-- Indeks untuk tabel `tb_kembali`
--
ALTER TABLE `tb_kembali`
  ADD PRIMARY KEY (`nomor_buku`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`kode_petugas`);

--
-- Indeks untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
