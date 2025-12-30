-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Des 2025 pada 04.05
-- Versi server: 8.0.30
-- Versi PHP: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `poslaravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_28_041652_create_m_level_table', 1),
(5, '2025_10_28_044107_create_m_user_table', 1),
(6, '2025_10_28_044740_create_m_kategori', 1),
(7, '2025_10_28_045639_create_m_supplier', 1),
(8, '2025_10_28_050000_create_m_barang', 1),
(9, '2025_10_28_051100_create_t_stok', 1),
(10, '2025_10_28_051236_create_t_penjualan', 1),
(11, '2025_10_28_052750_create_t_penjualan_detail', 1),
(12, '2025_12_23_163458_add_avatar_to_m_user_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` int UNSIGNED NOT NULL,
  `kategori_id` int UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'BRG001', 'Laptop ASUS ROG', 15000000, 16500000, NULL, NULL),
(2, 1, 'BRG002', 'Mouse Logitech G502', 800000, 950000, NULL, NULL),
(3, 1, 'BRG003', 'Keyboard Keychron K2', 1200000, 1400000, NULL, NULL),
(4, 2, 'BRG004', 'Kemeja Pria Uniqlo', 250000, 350000, NULL, NULL),
(5, 2, 'BRG005', 'Celana Jeans Levis', 600000, 750000, NULL, NULL),
(6, 2, 'BRG006', 'Jaket H&M', 450000, 550000, NULL, NULL),
(7, 3, 'BRG007', 'Buku Tulis Sinar Dunia (1 pack)', 35000, 45000, NULL, NULL),
(8, 3, 'BRG008', 'Pulpen Pilot G2 (1 lusin)', 150000, 180000, NULL, NULL),
(9, 3, 'BRG009', 'Kertas A4 Sidu (1 rim)', 40000, 50000, NULL, NULL),
(10, 4, 'BRG010', 'Indomie Goreng (1 karton)', 110000, 125000, NULL, NULL),
(11, 4, 'BRG011', 'Beras Sania 5kg', 65000, 72000, NULL, NULL),
(12, 4, 'BRG012', 'Minyak Goreng Bimoli 2L', 38000, 43000, NULL, NULL),
(13, 5, 'BRG013', 'Coca-Cola 1.5L (1 dus)', 180000, 200000, NULL, NULL),
(14, 5, 'BRG014', 'Teh Kotak (1 karton)', 70000, 85000, NULL, NULL),
(15, 5, 'BRG015', 'Kopi Kapal Api Special (1 pack)', 25000, 30000, NULL, NULL),
(19, 4, 'BRG016', 'Indomie Kuah', 10000, 11000, '2025-12-23 08:49:23', '2025-12-23 08:49:23'),
(22, 1, 'BRG017', 'Indomie Kuah (1 karton)', 110000, 125000, '2025-12-23 08:56:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` int UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'ELK', 'Elektronik', NULL, NULL),
(2, 'PKN', 'Pakaian', NULL, NULL),
(3, 'ATK', 'Alat Tulis Kantor', NULL, NULL),
(4, 'MKN', 'Makanan', NULL, NULL),
(5, 'MNM', 'Minuman', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, '2025-12-15 21:51:48'),
(4, 'ITRN', 'Internship', '2025-12-22 21:39:00', '2025-12-22 21:39:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` int UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'SPL001', 'PT Elektronik Jaya', 'Jl. Elektronik No. 1, Jakarta', NULL, NULL),
(2, 'SPL002', 'CV Pangan Makmur', 'Jl. Pangan No. 2, Surabaya', NULL, NULL),
(3, 'SPL003', 'Toko ATK Bersama', 'Jl. ATK No. 3, Bandung', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Administrator', '$2y$12$uCPgk8htZpdf3SkJzjdFJu3cxxtw2hI.g8dfBca7JaMsV91wOlrsK', '69A0g5MiitDLscYrra71VuzTJpWJ0DRF8NVPFkLp.png', NULL, '2025-12-23 10:07:12'),
(2, 2, 'manager', 'Manager', '$2y$12$AX9ndPa0MOzliIERYdS6Ledc25I/pj1nsptKc5/frWPXUzowBABtu', NULL, NULL, NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$3KzNfch6A1WKjQlMV33OIOw5vHVBEebGUfSuNV4AqLB6LTBBTTudO', NULL, NULL, NULL),
(25, 4, 'internship', 'Internship', '$2y$12$8yFBM5phX69a6ZTOLckLi.HSworQ8eGOaYsKgC9k9uOnCzLWZqWBW', NULL, '2025-12-22 21:40:35', '2025-12-22 21:40:35'),
(26, 4, 'alhaq', 'alhaq', '$2y$12$i.zE9/yZM5M40XVz1k3PqOFe5D39BRbz22exAXj64/PjilhUyjfVC', NULL, '2025-12-29 20:34:42', '2025-12-29 20:34:42'),
(27, 4, 'maftuh', 'maftuh', '$2y$12$YLwDQ4k7D.AhfOTXrWQKzuzFwWn7DKCIBQSd/NnpPkU3.GiXh4zne', NULL, '2025-12-29 20:36:51', '2025-12-29 20:36:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7Fj5vCLLqhb9mzgPMVhoFON4U2psEg48RrWcDwoE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2pyM0dOZDdSRHZpS3YyNVBQeG9mQmswb1o5d1NiNTJsdWtoY3h1UiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cDovL3BlbXJvZ3JhbWFud2ViZnJhbWV3b3JrLnRlc3QiO31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNToiaHR0cDovL3BlbXJvZ3JhbWFud2ViZnJhbWV3b3JrLnRlc3QiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767065310),
('Bkb3xtLq3eOhVFApSropjtXIIdXu5j95d0nxjwyh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHJWQjZ2Zkh5WmhSMW1IOGQ2a2d0RU1iUXZvcG53Zlg4aktKVVJ1bCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9wZW1yb2dyYW1hbndlYmZyYW1ld29yay50ZXN0L2xvZ2luIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767066517);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 3, 'Budi Santoso', 'PJL001', '2025-11-15 16:02:47', NULL, NULL),
(2, 3, 'Citra Lestari', 'PJL002', '2025-11-15 16:02:47', NULL, NULL),
(3, 3, 'Doni Firmansyah', 'PJL003', '2025-11-15 16:02:47', NULL, NULL),
(4, 3, 'Eka Putri', 'PJL004', '2025-11-15 16:02:47', NULL, NULL),
(5, 3, 'Fajar Nugroho', 'PJL005', '2025-11-15 16:02:47', NULL, NULL),
(6, 3, 'Gita Permata', 'PJL006', '2025-11-15 16:02:47', NULL, NULL),
(7, 3, 'Hadi Wibowo', 'PJL007', '2025-11-15 16:02:47', NULL, NULL),
(8, 3, 'Indah Cahyani', 'PJL008', '2025-11-15 16:02:47', NULL, NULL),
(9, 3, 'Joko Susilo', 'PJL009', '2025-11-15 16:02:47', NULL, NULL),
(10, 3, 'Kania Dewi', 'PJL010', '2025-11-15 16:02:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` int UNSIGNED NOT NULL,
  `penjualan_id` int UNSIGNED NOT NULL,
  `barang_id` int UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 16500000, 1, NULL, NULL),
(2, 1, 7, 45000, 2, NULL, NULL),
(3, 1, 10, 125000, 1, NULL, NULL),
(4, 2, 2, 950000, 1, NULL, NULL),
(5, 2, 5, 750000, 1, NULL, NULL),
(6, 2, 12, 43000, 3, NULL, NULL),
(7, 3, 3, 1400000, 1, NULL, NULL),
(8, 3, 8, 180000, 1, NULL, NULL),
(9, 3, 13, 200000, 2, NULL, NULL),
(10, 4, 4, 350000, 2, NULL, NULL),
(11, 4, 9, 50000, 5, NULL, NULL),
(12, 4, 14, 85000, 1, NULL, NULL),
(13, 5, 6, 550000, 1, NULL, NULL),
(14, 5, 11, 72000, 2, NULL, NULL),
(15, 5, 15, 30000, 4, NULL, NULL),
(16, 6, 1, 16500000, 1, NULL, NULL),
(17, 6, 2, 950000, 1, NULL, NULL),
(18, 6, 3, 1400000, 1, NULL, NULL),
(19, 7, 7, 45000, 10, NULL, NULL),
(20, 7, 9, 50000, 10, NULL, NULL),
(21, 7, 8, 180000, 2, NULL, NULL),
(22, 8, 10, 125000, 1, NULL, NULL),
(23, 8, 11, 72000, 1, NULL, NULL),
(24, 8, 12, 43000, 1, NULL, NULL),
(25, 9, 13, 200000, 1, NULL, NULL),
(26, 9, 14, 85000, 2, NULL, NULL),
(27, 9, 15, 30000, 3, NULL, NULL),
(28, 10, 4, 350000, 1, NULL, NULL),
(29, 10, 5, 750000, 1, NULL, NULL),
(30, 10, 6, 550000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` int UNSIGNED NOT NULL,
  `supplier_id` int UNSIGNED NOT NULL,
  `barang_id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `supplier_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '2025-11-18 07:42:47', 100, NULL, NULL),
(2, 1, 2, 3, '2025-11-18 07:42:47', 50, NULL, NULL),
(3, 1, 3, 3, '2025-11-18 07:42:47', 75, NULL, NULL),
(4, 1, 4, 3, '2025-11-18 07:42:47', 100, NULL, NULL),
(5, 1, 5, 3, '2025-11-18 07:42:47', 80, NULL, NULL),
(6, 2, 6, 3, '2025-11-18 07:42:47', 60, NULL, NULL),
(7, 2, 7, 3, '2025-11-18 07:42:47', 100, NULL, NULL),
(8, 2, 8, 3, '2025-11-18 07:42:47', 120, NULL, NULL),
(9, 2, 9, 3, '2025-11-18 07:42:47', 90, NULL, NULL),
(10, 2, 10, 3, '2025-11-18 07:42:47', 100, NULL, NULL),
(11, 3, 11, 3, '2025-11-18 07:42:47', 50, NULL, NULL),
(12, 3, 12, 3, '2025-11-18 07:42:47', 50, NULL, NULL),
(13, 3, 13, 3, '2025-11-18 07:42:47', 75, NULL, NULL),
(14, 3, 14, 3, '2025-11-18 07:42:47', 100, NULL, NULL),
(15, 3, 15, 3, '2025-11-18 07:42:47', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `m_barang_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `m_level_level_kode_unique` (`level_kode`);

--
-- Indeks untuk tabel `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indeks untuk tabel `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `t_penjualan_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_detail_penjualan_id_foreign` (`penjualan_id`),
  ADD KEY `t_penjualan_detail_barang_id_foreign` (`barang_id`);

--
-- Indeks untuk tabel `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_supplier_id_foreign` (`supplier_id`),
  ADD KEY `t_stok_barang_id_foreign` (`barang_id`),
  ADD KEY `t_stok_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Ketidakleluasaan untuk tabel `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Ketidakleluasaan untuk tabel `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjualan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Ketidakleluasaan untuk tabel `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
