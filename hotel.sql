-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2020 pada 13.43
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkin`
--

CREATE TABLE `checkin` (
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `kmr_IDKamar` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `IdCustomer` varchar(5) NOT NULL,
  `NoKTPCustomer` char(10) NOT NULL,
  `NamaCustomer` varchar(30) NOT NULL,
  `NoTelpCustomer` varchar(13) DEFAULT NULL,
  `JenisKelaminCustomer` char(1) DEFAULT NULL,
  `Asal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`IdCustomer`, `NoKTPCustomer`, `NamaCustomer`, `NoTelpCustomer`, `JenisKelaminCustomer`, `Asal`) VALUES
('A0001', '3506031601', 'Abdul Latif', NULL, 'L', 'Bandung'),
('A0002', '3506031602', 'Tio Arya', '081358934071', 'L', 'Jakarta'),
('A0003', '3506031603', 'Banat Zata', '081563248565', 'P', 'Jakarta'),
('A0004', '3506031604', 'Zulfan Avivi', NULL, 'L', 'Pontianak'),
('A0005', '3506031605', 'Fulan ', NULL, 'L', 'Surabaya'),
('A0006', '3506031606', 'Kiki M.', '081365379826', 'L', 'Bandung'),
('A0007', '3506031607', 'Siti R.', NULL, 'P', 'Jakarta'),
('A0008', '3506031608', 'Ziza Zuzeta', NULL, 'P', 'Jakarta'),
('A0009', '3506031609', 'Gilang R.', NULL, 'L', 'Bandung'),
('A0010', '3506031610', 'Dyah Ayu', '081562419564', 'P', 'Semarang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `IdFasilitas` int(10) NOT NULL,
  `NamaFasilitas` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`IdFasilitas`, `NamaFasilitas`) VALUES
(1, 'Kasur Spring Bed S'),
(2, 'TV'),
(3, 'AC'),
(4, 'Shower'),
(5, 'Lampu Tidur'),
(6, 'Meja Kecil'),
(7, 'Kursi Kecil'),
(8, 'Kasur Spring Bed M'),
(9, 'Bath Tup'),
(10, 'Kasur Spring Bed L'),
(11, 'Sofa Kecil'),
(12, 'Sofa Besar'),
(13, 'Meja Kerja'),
(14, 'Ruang Tamu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_fasilitas`
--

CREATE TABLE `isi_fasilitas` (
  `IdIsi` int(10) NOT NULL,
  `JeKa_IdJenisKamar` int(10) DEFAULT NULL,
  `Fas_IdFasilitas` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `isi_fasilitas`
--

INSERT INTO `isi_fasilitas` (`IdIsi`, `JeKa_IdJenisKamar`, `Fas_IdFasilitas`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 2),
(9, 2, 3),
(10, 2, 4),
(11, 2, 5),
(12, 2, 6),
(13, 2, 7),
(14, 2, 8),
(15, 2, 9),
(16, 3, 2),
(17, 3, 3),
(18, 3, 4),
(19, 3, 5),
(21, 3, 9),
(20, 3, 10),
(24, 3, 11),
(22, 3, 12),
(23, 3, 13),
(25, 3, 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kamar`
--

CREATE TABLE `jenis_kamar` (
  `IdJenisKamar` int(10) NOT NULL,
  `NamaJenisKamar` varchar(10) DEFAULT NULL,
  `Kapasitas` int(10) DEFAULT NULL,
  `Harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kamar`
--

INSERT INTO `jenis_kamar` (`IdJenisKamar`, `NamaJenisKamar`, `Kapasitas`, `Harga`) VALUES
(1, 'Reguler', 5, '200.000'),
(2, 'VIP', 7, '350.000'),
(3, 'VVIP', 10, '500.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `IdKamar` varchar(5) NOT NULL,
  `Lantai` varchar(2) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `JeKa_IdJenisKamar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`IdKamar`, `Lantai`, `Status`, `JeKa_IdJenisKamar`) VALUES
('A1001', '1', 'Available', 1),
('A1002', '1', 'Available', 1),
('A1003', '1', 'Available', 1),
('A1004', '1', 'Booked', 1),
('A1005', '1', 'Booked', 1),
('B1001', '1', 'Available', 2),
('B1002', '2', 'Booked', 2),
('B1003', '2', 'Available', 2),
('B1004', '2', 'Available', 2),
('C1001', '2', 'Available', 3),
('C1002', '2', 'Available', 3),
('C1003', '2', 'Booked', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2020_10_30_101432_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `IdPegawai` int(10) NOT NULL,
  `NoKTPPegawai` char(16) NOT NULL,
  `NamaPegawai` varchar(30) NOT NULL,
  `JenisKelaminPegawai` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`IdPegawai`, `NoKTPPegawai`, `NamaPegawai`, `JenisKelaminPegawai`) VALUES
(1, '12347', 'Muhammad Fikri R.', 'L'),
(2, '12340', 'vachri', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penginapan`
--

CREATE TABLE `penginapan` (
  `IDPenginapan` varchar(5) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Kepala` varchar(25) NOT NULL,
  `Lokasi` varchar(30) NOT NULL,
  `Bintang` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penginapan`
--

INSERT INTO `penginapan` (`IDPenginapan`, `Nama`, `Kepala`, `Lokasi`, `Bintang`) VALUES
('PG001', 'Penginapan Intan Asr', 'Imam Baharuddin', 'Jl. Imam Bonjol No. 27 Blitar', '3'),
('PG002', 'Penginapan Puri Kera', 'Yusuf Aminuddin', 'Jl. Teuku Umar No. 7 Klaten', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ujbCvfWThxKeOIw1RsxV4RNsFnNH1tjsf6vAUSla', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2tuN1dXWDQ4VlRtVVN3bFp3YUx2NGphQzBzbzFYNE5mRGVwSlNBMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1604061109);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `IdTransaksi` int(10) NOT NULL,
  `Kamar_IdKamar` varchar(5) DEFAULT NULL,
  `Cus_IdCustomer` varchar(5) DEFAULT NULL,
  `Peg_IdPegawai` int(10) DEFAULT NULL,
  `StatusPembayaran` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asas', 'mighty@gmail.com', NULL, '$2y$10$MohLuKG/MhzMZr31F0HJE.tDjShgFmlf/GvjVoFOGeZ.GgpGvGqTS', NULL, NULL, 'mY0VPQOI67Ej0OZITps6vMrXWhFRoksGVJiLxPtq9RiDcyBtrAnCL0Ym6ZCY', '2020-10-30 04:48:04', '2020-10-30 04:48:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checkin`
--
ALTER TABLE `checkin`
  ADD KEY `cus_IDCustomer` (`users_id`),
  ADD KEY `kmr_IDKamar` (`kmr_IDKamar`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`IdCustomer`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`IdFasilitas`);

--
-- Indeks untuk tabel `isi_fasilitas`
--
ALTER TABLE `isi_fasilitas`
  ADD PRIMARY KEY (`IdIsi`),
  ADD UNIQUE KEY `IdIsi` (`IdIsi`),
  ADD UNIQUE KEY `IdIsi_2` (`IdIsi`),
  ADD KEY `JeKa_IdJenisKamar` (`JeKa_IdJenisKamar`),
  ADD KEY `Fas_IdFasilitas` (`Fas_IdFasilitas`),
  ADD KEY `JeKa_IdJenisKamar_2` (`JeKa_IdJenisKamar`,`Fas_IdFasilitas`);

--
-- Indeks untuk tabel `jenis_kamar`
--
ALTER TABLE `jenis_kamar`
  ADD PRIMARY KEY (`IdJenisKamar`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`IdKamar`),
  ADD KEY `JeKa_IdJenisKamar` (`JeKa_IdJenisKamar`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`IdPegawai`);

--
-- Indeks untuk tabel `penginapan`
--
ALTER TABLE `penginapan`
  ADD PRIMARY KEY (`IDPenginapan`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`IdTransaksi`),
  ADD KEY `Kamar_IdKamar` (`Kamar_IdKamar`),
  ADD KEY `Cus_IdCustomer` (`Cus_IdCustomer`),
  ADD KEY `Peg_IdPegawai` (`Peg_IdPegawai`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `IdFasilitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `IdPegawai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `IdTransaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `checkin`
--
ALTER TABLE `checkin`
  ADD CONSTRAINT `checkin_ibfk_3` FOREIGN KEY (`kmr_IDKamar`) REFERENCES `kamar` (`IdKamar`),
  ADD CONSTRAINT `checkin_ibfk_4` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `isi_fasilitas`
--
ALTER TABLE `isi_fasilitas`
  ADD CONSTRAINT `isi_fasilitas_ibfk_1` FOREIGN KEY (`Fas_IdFasilitas`) REFERENCES `fasilitas` (`IdFasilitas`),
  ADD CONSTRAINT `isi_fasilitas_ibfk_2` FOREIGN KEY (`JeKa_IdJenisKamar`) REFERENCES `jenis_kamar` (`IdJenisKamar`);

--
-- Ketidakleluasaan untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`JeKa_IdJenisKamar`) REFERENCES `jenis_kamar` (`IdJenisKamar`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Kamar_IdKamar`) REFERENCES `kamar` (`IdKamar`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`Cus_IdCustomer`) REFERENCES `customer` (`IdCustomer`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`Peg_IdPegawai`) REFERENCES `pegawai` (`IdPegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
