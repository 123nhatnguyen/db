-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 03, 2024 lúc 11:17 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, ' shirt', 'King\'s crown on a little bit, and said anxiously to herself, in a tone of great relief. \'Call the first figure,\' said the Dodo. Then they all spoke at once, while all the unjust things--\' when his.', '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(2, 'pants', 'Alice thought to herself, being rather proud of it: for she had asked it aloud; and in his turn; and both the hedgehogs were out of a globe of goldfish she had quite a large pool all round the.', '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(3, 'Hoodies', 'King. Here one of them.\' In another moment it was not a regular rule: you invented it just grazed his nose, you know?\' \'It\'s the first position in which case it would make with the name \'W. RABBIT\'.', '2024-05-09 02:21:31', '2024-05-09 02:21:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_09_082921_create_categories_table', 1),
(5, '2024_05_09_082939_create_products_table', 1),
(6, '2024_05_09_083046_create_orderts_table', 1),
(7, '2024_05_09_083110_create_ordertitems_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '7419ca26-63b4-3773-97be-0bef0ca07506', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(2, 'b3d03027-0f7f-3db9-a814-d400415cc1c3', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(3, 'ea48b898-05b3-3144-a97e-6cb49d4cc947', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(4, 'e3dc52cd-a55f-38bd-a64a-854691cc410f', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(5, '1310679e-50a1-30e6-8fcf-f31f773c78ac', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(6, 'a9342d44-78c0-3f44-91f0-34ed94025352', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(7, '039ab752-0424-3a7f-a4ec-5c2551511e2c', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(8, 'fa92f179-fd0e-3329-a9e6-00e4634a6892', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(9, '29cb0017-6254-3bf3-bd25-963edfecf9bc', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(10, '53a4a11c-0030-363c-9b14-57242ca4c9b4', '0', 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(11, '', '', 26, '2024-06-01 02:13:40', '2024-06-01 02:13:40'),
(12, '', '', 26, '2024-06-01 02:20:36', '2024-06-01 02:20:36'),
(13, '', '', 26, '2024-06-01 02:27:04', '2024-06-01 02:27:04'),
(14, '', '', 26, '2024-06-01 19:54:30', '2024-06-01 19:54:30'),
(15, '', '', 26, '2024-06-03 01:57:58', '2024-06-03 01:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1051141633, 2, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(2, 1, 1, 193408781, 2, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(3, 1, 1, 48093903, 0, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(4, 1, 1, 762840093, 5, '2024-05-09 02:21:32', '2024-05-09 02:21:32'),
(5, 1, 1, 2019672334, 5, '2024-05-09 02:21:32', '2024-05-09 02:21:32'),
(6, 1, 1, 619097305, 3, '2024-05-09 02:21:32', '2024-05-09 02:21:32'),
(7, 1, 1, 330671620, 7, '2024-05-09 02:21:32', '2024-05-09 02:21:32'),
(8, 1, 1, 1585232593, 4, '2024-05-09 02:21:32', '2024-05-09 02:21:32'),
(9, 1, 1, 1258452564, 6, '2024-05-09 02:21:32', '2024-05-09 02:21:32'),
(10, 1, 1, 2038153065, 8, '2024-05-09 02:21:32', '2024-05-09 02:21:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `img`, `name`, `desc`, `price`, `quantity`, `category_id`, `views`, `created_at`, `updated_at`) VALUES
(1, '/images/shirt1.png', 'Hot shirt', 'Top quality European shirts', 100.5, 2098445419, 1, 1, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(2, '/images/shirt2.png', 'Hot shirt', 'Top quality European shirts', 150.5, 1208100856, 1, 2, '2024-01-09 02:21:31', '2024-05-09 02:21:31'),
(3, '/images/shirt3.png', 'Hot shirt', 'Top quality European shirts', 500.54, 844215979, 1, 3, '2024-07-05 02:21:31', '2024-05-09 02:21:31'),
(4, '/images/shirt4.png', 'Hot shirt', 'Top quality European shirts', 320.2, 1839091939, 1, 5, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(5, '/images/shirt5.png', 'Hot pants', 'Top quality European jeans', 100.5, 840728916, 1, 6, '2024-02-09 02:21:31', '2024-05-09 02:21:31'),
(6, '/images/shirt6.png', 'Hot pants', 'Top quality European jeans', 50.5, 556599558, 1, 8, '2024-04-09 02:21:31', '2024-05-09 02:21:31'),
(7, '/images/shirt7.png', 'Hot pants', 'Top quality European jeans', 500.1, 2009496296, 1, 6, '2024-03-09 02:21:31', '2024-05-09 02:21:31'),
(8, '/images/shirt8.png', 'Hot pants', 'Top quality European jeans', 300.2, 1538791880, 1, 7, '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(9, '/images/shirt9.png', 'Hoodies', 'Quality European hoodie', 160.5, 874730704, 1, 9, '2024-07-09 02:21:31', '2024-05-09 02:21:31'),
(10, '/images/shirt10.png', 'Hoodies', 'Quality European hoodie', 200.3, 1018528619, 1, 4, '2024-05-09 02:21:31', '2024-05-09 02:21:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9a9fmhPxDc6cXTzq3yyLICkqWvTyhJGjZBQj6e3h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieURyWDMyeEpvQzcyWUNodmJuSEw0a0FYRVEyU3VNOURuUnNuOU16YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717383818),
('d6gxRygkZX5EyQeLQXIhQgRxk9BSbDVJKEFRZxF7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG1zV0NZam4yOEFrQk9KVmViV0taN3NuTFl5Q3ZjaE9nRzdFaFVHbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODUvY2F0ZWdvcmllcy9sb2dvLnBuZyI7fX0=', 1717321002),
('Yy7QjpUkgVE7sNQR5YQlPBDW7atTH2Bh4mVIGlx9', 26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialhOdjBOcXJGOENjYTFrVXBweGlNZjZ1d2lpbVFoUGhDeUNmYk1OeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODUvcHJvZHVjdHMvbWVudS5wbmciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNjt9', 1717405139);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jound', 'stephanie.vvvvhyatt@example.com', '2024-05-09 02:21:31', '$2y$12$IDQBIOS.YCnabMOBrLPs6.hV7Bu6bK4i6G93Nrhcp.1H4If9toMB6', 'B3k7oHEEw2', '2024-05-09 02:21:31', '2024-05-17 02:21:48'),
(2, 'Prof. Cale Rice Jr.', 'alfredo02@example.net', '2024-05-09 02:21:31', '$2y$12$IDQBIOS.YCnabMOBrLPs6.hV7Bu6bK4i6G93Nrhcp.1H4If9toMB6', 'GW151MTCXJ', '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(3, 'Ms. Sincere Blick', 'lila44@example.org', '2024-05-09 02:21:31', '$2y$12$IDQBIOS.YCnabMOBrLPs6.hV7Bu6bK4i6G93Nrhcp.1H4If9toMB6', 'kOnxm82R6B', '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(9, 'Dewitt Luettgen', 'cleo54@example.com', '2024-05-09 02:21:31', '$2y$12$IDQBIOS.YCnabMOBrLPs6.hV7Bu6bK4i6G93Nrhcp.1H4If9toMB6', 'MxUyb3oaVY', '2024-05-09 02:21:31', '2024-05-09 02:21:31'),
(12, 'Nguyen van c', 'degea@gmail.com', NULL, '$2y$12$geDboQx3AAD1V//b099TzuihKVTNJ6F8H3N21hv6qHevGszM9GKim', NULL, '2024-05-14 02:35:09', '2024-05-14 02:35:19'),
(13, 'nhat', 'nguyennhat4913@gmail.com', NULL, '$2y$12$kWlK7DUoGvmqGu8XIrTztuOy1KHuqO/LtdtjYfE6GCjyaeweciznS', NULL, '2024-05-17 02:21:14', '2024-05-17 02:21:14'),
(16, 'tran van b', 'nobita@1gmial.conm', NULL, '$2y$12$J9jRaykiK9MrtQTLTsZn8.nu66zu7nmitagBCgrKZi2wp2hJOKtxW', NULL, '2024-05-17 19:08:54', '2024-05-17 19:09:09'),
(18, 'ww', 'aa2a@gmail.com', NULL, '$2y$12$Ky2/MWZsmFz7e20l.vzXCuh5dc58tqy.dqxLcZYUzVClMBwjg8FXm', NULL, '2024-05-17 19:59:31', '2024-05-17 19:59:31'),
(21, 'nhat', 'demo@gmail.com', NULL, '$2y$12$lITgvHSYt4gApqlscBmcR.shtjTDgymhQUzCsznvPBXTqooTP/eou', NULL, '2024-05-26 07:52:40', '2024-05-26 07:52:40'),
(25, 'Ngyuyen duc nhat', 'binguyen@gmnail.com', NULL, '$2y$12$Y0c/f0bMV6V2PxSVxRv1ZOfQiJE/tSjRfuF.5H3cXMk4DjtE3SpDy', NULL, '2024-05-26 08:15:34', '2024-05-26 08:15:34'),
(26, 'nguyenbi', 'bi@gmai.com', NULL, '$2y$12$TrwoPRFE0EhO7Hn/zAiYdONohc5LMPvWLnFgZo9nLcQr.1G9gJrxa', NULL, '2024-05-26 09:04:10', '2024-05-26 09:04:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
