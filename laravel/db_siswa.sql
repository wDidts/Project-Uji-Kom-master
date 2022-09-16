-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2022 pada 21.46
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telpon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Agus', '021586795423', 'Purwokerto', '2022-07-25 20:48:01', '2022-07-25 22:46:35'),
(2, 'Dwijaya', '021568974334', 'Banyumas', '2022-07-25 20:48:01', '2022-07-25 22:46:35'),
(3, 'Suharsono', '0215867856', 'Banyumas', '2022-07-27 19:30:03', '2022-07-27 21:29:26'),
(4, 'Suharsono', '0215867856', 'Banyumas', '2022-07-27 19:29:46', '2022-07-27 21:29:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'M001', 'Matematika', 'Ganjil', 1, '2022-07-22 18:52:15', '2022-07-22 20:51:41'),
(2, 'B001', 'Bahasa Indonesia', 'Ganjil', 1, '2022-07-22 18:52:15', '2022-07-22 20:51:41'),
(3, 'M003', 'Agama Islam', 'Ganjil', 2, '2022-07-22 23:20:07', '2022-07-23 01:19:49'),
(4, 'B003', 'TIK', 'Ganjil', 3, '2022-07-27 19:29:15', '2022-07-27 21:28:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(2, 11, 2, 95, '2022-07-22 18:53:09', '2022-07-22 20:52:48'),
(4, 1, 1, 75, '2022-07-22 19:06:39', '2022-07-22 21:06:31'),
(8, 6, 1, 50, '2022-07-22 15:55:19', '2022-07-22 22:55:19'),
(9, 1, 3, 45, '2022-07-22 23:40:17', '2022-07-23 01:40:02'),
(11, 1, 1, 65, '2022-07-22 23:02:46', '2022-07-23 06:02:46'),
(15, 11, 1, 80, '2022-07-25 13:32:45', '2022-07-25 20:32:45'),
(16, 11, 3, 60, '2022-07-25 13:53:22', '2022-07-25 20:53:22'),
(17, 2, 2, 80, '2022-07-25 14:31:59', '2022-07-27 19:40:08'),
(18, 4, 2, 80, '2022-07-25 14:32:13', '2022-07-25 21:32:13'),
(19, 5, 2, 50, '2022-07-25 14:32:27', '2022-07-25 21:32:27'),
(20, 7, 2, 80, '2022-07-25 14:32:46', '2022-07-25 21:32:46'),
(21, 8, 2, 60, '2022-07-25 14:33:00', '2022-07-25 21:33:00'),
(22, 16, 2, 80, '2022-07-25 14:33:15', '2022-07-25 21:33:15'),
(24, 19, 3, 80, '2022-07-27 12:22:12', '2022-07-27 19:22:12'),
(25, 22, 4, 50, '2022-07-27 12:32:02', '2022-07-27 19:32:02');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_22_104906_create_table_siswa', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(45) NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 0, 'Bambang', 'Agus', 'L', 'Islam', 'Banyumas', 'timeline_20220630_155159.jpg', '0000-00-00 00:00:00', '2022-07-22 10:51:40'),
(2, 0, 'Agus', 'Budi', 'L', 'Islam', 'Purwokerto', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 0, 'Santra', 'Dwi', 'L', 'Islam', 'Banyumas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 0, 'Dwi', 'Aji', 'P', 'Islam', 'Purwokerto', '', '2022-07-22 06:00:20', '2022-07-27 12:31:34'),
(11, 0, 'Okvi', 'Santra', 'L', 'Islam', 'Banyumas', '', '2022-07-22 08:58:57', '2022-07-22 08:58:57'),
(16, 9, 'Malamoo', 'aulia', 'P', 'Islam', 'Jakarta', 'timeline_20220707_145028.jpg', '2022-07-22 14:10:17', '2022-07-22 14:10:34'),
(18, 12, 'nazwa', 'Suparjo', 'P', 'Islam', 'Bandung', 'c7cf2a8dfbe9ed3baf75eb1d39bd9d3f_tn.jpg', '2022-07-27 12:08:21', '2022-07-27 12:08:21'),
(19, 13, 'Miasari', 'aulia', 'P', 'Islam', 'Purwokerto', 'c7cf2a8dfbe9ed3baf75eb1d39bd9d3f_tn.jpg', '2022-07-27 12:21:38', '2022-07-27 12:22:32'),
(20, 14, 'Bambang', 'Pamungkas', 'P', 'Islam', 'Banyumas', 'c7cf2a8dfbe9ed3baf75eb1d39bd9d3f_tn.jpg', '2022-07-27 12:23:24', '2022-07-27 12:23:24'),
(21, 16, 'Lionel', 'Messi', 'L', 'Kristen', 'Paris', NULL, '2022-07-27 12:28:09', '2022-07-27 12:28:09'),
(22, 17, 'Cristiano', 'Ronaldo', 'L', 'Kristen', 'Manchester', NULL, '2022-07-27 12:31:16', '2022-07-27 12:31:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'guru', 'admin', 'admin@gmail.com', NULL, '$2y$10$w7pwihgdQ7q.PD8ASq.LI.bVnhbjP/LtXdpsXd.eXj0Owq.vnVsbK', NULL, '2022-07-22 10:08:28', '2022-07-22 10:08:28'),
(4, 'siswa', 'Santra', 'dsan@gmail.com', NULL, '$2y$10$6e2oN2HRfw/kxHf1blricOb6bPhaL5QhSMSKexZNnfoYsjql4nZWC', 'M11ardnWljN32Kvg06uJf6NrWXmrPvUfT0WfMySFPmcv4ccbUAzM5xT2pJj8', '2022-07-22 11:24:46', '2022-07-22 11:24:46'),
(9, 'siswa', 'Malam', 'aulmal@gmail.com', NULL, '$2y$10$I.Ve1OThwbc.TuiC2fKXa.C.Kva4EDficNtsfN6e2ag0PxNqj.iRi', 'E4iEt44rzNy7ZmeUgtpI4SIDjs4DgjaGxDhzsv2OZSDcTLFUKlM6N7eKZqJH', '2022-07-22 14:10:17', '2022-07-22 14:10:17'),
(10, 'siswa', 'nazwa', 'nazwaaul@gmail.com', NULL, '$2y$10$sKG7Gw8NMYK78zc6BgTKQeny7o.6UC24kHn6scR1zM5mBSkHWX5ZO', 'cPURUJNKWNZea5NHBEG8K4jPlHGgvOaSR7dlr7wAMzLaLDGajwYlcuJcLgnu', '2022-07-27 10:42:06', '2022-07-27 10:42:06'),
(11, 'siswa', 'Malaaa', 'lalala@gmail.com', NULL, '$2y$10$zs5Qy7kTBXi5HtYdEw9H7u0HhUHclD9Q.FtJRrj3MHjjfugAywmdq', '9hUjRI8BxwLUqBgqkXzehNPyqL4iGTWc0klA52RTPX3FCL7PUajFlop9BwEX', '2022-07-27 10:43:32', '2022-07-27 10:43:32'),
(12, 'siswa', 'nazwa', 'suparjonazwa@gmail.com', NULL, '$2y$10$WYswPcAl.NZA2/lxnhL7M.VgycY8qrXzmoqDqXcK3zeNtT6TE2kAC', 'kkYOmYGhMr2ztYyzPFETwEYqt2Ls7NKNe2TovisjPn24qz2jiuM2tWY8WjiW', '2022-07-27 12:08:21', '2022-07-27 12:08:21'),
(13, 'siswa', 'Malammm', 'dsawe@gmail.com', NULL, '$2y$10$aE2MtNiU519zz4P/qBDjOO4LhmnlsGfKP0rC9AxcE4TuxWc9y95He', 'DirFwLDhpYf0R0orr4kxIeivNOf1M4M4ZQJBmzwDugOZuDU4wEWoiRdSgPWu', '2022-07-27 12:21:38', '2022-07-27 12:21:38'),
(14, 'siswa', 'Bambang', 'abc@gmail.com', NULL, '$2y$10$n2Gua5Z3SIdQJu9zZ4qnSuYTquPmYOgghG.ef43lEZ3Iz7YFeC.TS', 'iFkd9yuDv30j8m8q69oT5o4xXAuWE6xCvxhZ6S3OAqOBPNEAt3JA9OwzkFVn', '2022-07-27 12:23:24', '2022-07-27 12:23:24'),
(15, 'siswa', 'Lionel', 'messi@lionel.com', NULL, '$2y$10$gsheUzyediDQfVBY1EzhWOa7Ew9tg3S1EUmamx6muJ1vP4MX/Tgou', 'i4K27ysdcAwNe0Ms9ciRDiik5UgOLCQPtpGuigJUyo2G8PNdk3vTnpszBb8x', '2022-07-27 12:23:59', '2022-07-27 12:23:59'),
(16, 'siswa', 'Lionel', 'lionel@gmail.com', NULL, '$2y$10$MW0SH7Jms8J9ilKxxy/DdOs8cVu5rmgyG9cpQSlsYRI/AL9PhlogO', '04QsAhAgOWTjokizuL16LHrDFxdTWOgvycERrrB84hLmxRbT5s3Z9lg1Za8q', '2022-07-27 12:28:09', '2022-07-27 12:28:09'),
(17, 'siswa', 'Cristiano', 'Ronaldo@mu.com', NULL, '$2y$10$Skx044My3cBj60Nx/pcDQO6j4e7Umv22zxXV5azsVOng7ipmn.IJC', 'G5W8T3k5dtBPlq5SjIxPJ886R7KEJPvYlhw2c5urx8HfGE4L6mLvOb7xk8fU', '2022-07-27 12:31:16', '2022-07-27 12:31:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
