-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 08:39 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_users`
--

CREATE TABLE `all_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_users`
--

INSERT INTO `all_users` (`id`, `name`, `email`, `phone`, `nid`, `address`, `type`, `status`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Al', 'abdullah@gmail.com', 1987654443, '1123456', 'Dhaka', 'admin', 'active', 'abdullah123', NULL, NULL),
(8, 'test 1', 'test@gmail.com', 1515298367, '12345', 'nikunjo 1', 'contractor', 'active', 'test12345', '2022-12-10 06:43:52', '2022-12-11 01:33:56'),
(9, 'test 2', 't@gmail.com', 1515298367, '56789', 'banani', 'contractor', 'active', 'test12345', '2022-12-10 06:46:51', '2022-12-10 06:46:51'),
(10, 'test customer', 'customer@gmail.com', 1987654443, '123432', 'uttra', 'customer', 'active', 'customer12345', '2022-12-10 12:49:14', '2022-12-10 23:54:59'),
(14, 'test 3', 'itsemon1999@hotmail.com', 1515298367, '12345', 'nikunjo 2', 'contractor', 'active', 'test12345', '2022-12-11 12:28:44', '2022-12-11 12:28:44'),
(15, 'test 3', 'emonf666@gmail.com', 1515298367, '12345', 'nikunjo 2', 'contractor', 'active', 'test12345', '2022-12-11 12:33:07', '2022-12-11 12:33:07'),
(16, 'test 4', 'emonf666@gmail.com', 1515298367, '56789', 'nikunjo 2', 'contractor', 'active', 'test12345', '2022-12-11 12:44:34', '2022-12-11 12:44:34'),
(17, 'last test', 'emonf666@gmail.com', 1515298367, '56789', 'nikunjo 1', 'contractor', 'active', 'emon12345', '2022-12-11 12:49:31', '2022-12-11 12:49:31'),
(18, 'final test', 'emonf666@gmail.com', 1515298367, '56789', 'nikunjo 1', 'contractor', 'requested', 'final12345', '2022-12-13 12:59:09', '2022-12-13 12:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `b_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_duration` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_b_ds`
--

CREATE TABLE `chat_b_ds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `o_id` bigint(20) UNSIGNED NOT NULL,
  `deliveryman_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_21_063856_create_all_users_table', 1),
(6, '2022_07_21_064135_create_products_table', 1),
(7, '2022_07_21_064256_create_orders_table', 1),
(8, '2022_07_21_064838_create_bans_table', 1),
(9, '2022_07_21_065000_create_deliveries_table', 1),
(10, '2022_07_21_065122_create_orderdetails_table', 1),
(11, '2022_07_21_070157_create_reviews_table', 1),
(12, '2022_07_21_071352_create_chat_b_ds_table', 1),
(13, '2022_07_21_071915_create_emails_table', 1),
(14, '2022_08_04_063407_create_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `o_id` bigint(20) UNSIGNED NOT NULL,
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `Price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `Price` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_qty` double(8,2) NOT NULL,
  `p_price` double(8,2) NOT NULL,
  `p_offer` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` bigint(20) UNSIGNED NOT NULL,
  `d_id` bigint(20) UNSIGNED NOT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `u_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'bbhSCshiFEGeJDZjDw5qSINzGP5ph0Ns6tajzgR4sQk04XXk5c7J3glsEQiuDcx3', '2022-12-10 03:22:46', NULL),
(2, 1, 'QT4drXEzU1p22yOAaxgSHAMXWEKJandzBVtdfAFgcY18WfwY0tsXQvUthJkxsdaK', '2022-12-10 03:22:48', NULL),
(3, 1, 'RyXHNuzBYK6phJtx7TGpii84K9ssDEDNh2rZ3aTESxLXuJ0TB9sVl9bWzNVgp6Iz', '2022-12-10 03:22:49', NULL),
(4, 1, 'jhGXcoMNporMXy4gIDEBg7qrOsmqDlNArttNdz7BqdB2s5mZ3J0M91arNCTkmBr7', '2022-12-10 03:22:52', NULL),
(5, 1, 'xJx8m5J3ipdKOH8fWISTpWKNSeoIKnN3lGO7s1RJj9zbEfuLB1PIyCe1C2UaqIIf', '2022-12-10 03:22:52', NULL),
(6, 1, 'OeX1K8lXfAa6DZdNI7FOql2c1NGQw1vNWLDI3pfU8UxsFot7kHKOjPJWostwSvGe', '2022-12-10 03:22:52', NULL),
(7, 1, 'wWHipmGE0IWGyF3ALaeJBHgFGYYVkZdayhFHANpLDeo0anDCFDMDOA8Mt3SNYhHE', '2022-12-10 03:23:02', NULL),
(8, 1, 'ooZjMJUQrAJUoMNwWqprOGHmpRFMSAcWjvtOnCjms90sqvO5mj6R3nMNKkg6WZyy', '2022-12-10 03:23:06', NULL),
(9, 1, 'XiTKz96AVWEy4G6T9sqCabAIDyr8Vh3JPtzFz9D0jfcCtdLXXwpL6z7K6Q8BjhNA', '2022-12-10 03:23:59', NULL),
(10, 1, 'yGyit7Uo6CthpZUpOoEdsHw9Czsb55wmn0Vj5LumCYm8N5bZomJrII0J6T4161WN', '2022-12-10 03:24:06', NULL),
(11, 1, 'KOOGsdmo5vLrGz0J0VytLWp3LccH6XrwNS6R5Ukoxn2DgS7YdXW6IG8uFp7dkih8', '2022-12-10 03:24:09', NULL),
(12, 1, 'EMRQhIYCX8BJLMojR1JHa7f5LksKVNpJJF424Q6zoQOmC5Lr0rKPId8jqZhQEZKM', '2022-12-10 03:25:44', NULL),
(13, 1, 'dMXrVUuUXfUqkQkRR18DQXZ7Xs5BI9XUGJYSBqfiPQHnU5TDNKrrFLFEZSwvoQVB', '2022-12-10 03:25:45', NULL),
(14, 1, 'btzlB5syjMrTVCpi4tCJu6n2k1XuhoPI6MEekvkmX81uugoWzSkucPiE6CrLe9HL', '2022-12-10 03:25:47', NULL),
(15, 1, 'auxLyCDrUd19jErDLlzF8dioBKgkSQUZIQxqFeiJivQklquMkuj9zuRBxOlQBHtd', '2022-12-10 03:43:25', NULL),
(16, 1, 'gEJEzIdCBJOBrEegnpzpK4Djf8wS8ywDgLmiBhPoUQA42P2KmgClrNY76h8b20WS', '2022-12-10 03:43:25', NULL),
(17, 1, 'O3Y31GyPQPYKKeU5YjgMdDu80SVrsmw39iuF7ALsLJeCPadDv4nDOMcQnb1mSHPf', '2022-12-10 03:43:26', NULL),
(18, 1, 'fef6nHyYWA6qhuHRW8eiIy2aFvDovnWUlemIMuhOKX0On9PfdXp8Sga0kSUghC0a', '2022-12-10 03:43:26', NULL),
(19, 1, 'IU9tWXrjwgUnvwRV7SUgpWzoa9xoMoQIDA5uUVfs2g8Nx1Sx1IKTWjUWRr9wmsLn', '2022-12-10 03:43:28', NULL),
(20, 1, 'HDEqEJQRdktolSoAwAPy7qTXFAzZvUYsXKqSPeMH3Cjt8LH7qLQFhZKyNcSSHlqh', '2022-12-10 03:43:28', NULL),
(21, 1, 'nwDqw8GiMfR7Kol2FjfIslwwQggjJRipMz2ySL9YOEaD3F2U2OY0xk9GXTlb7DPd', '2022-12-10 03:43:29', NULL),
(22, 1, 'uFCDuCQSUVNOW2azyM8Aeqx94NfMCRGzQX1kjVVVirAZpL5OJy0QC1MrwQDWjFVy', '2022-12-10 03:43:29', NULL),
(23, 1, 'ftbNI6gZ6PaK0CgXqGAKorurbwB2E1uXKN4pt38c8xf6EVelzYhVTHIQ2TZOrO5N', '2022-12-10 03:43:29', NULL),
(24, 1, 'NGAUkzT0109RYpk2rX3BhYATtUbQnkHYqut5RGehO9FyPMqhMgQ8zltYDN72iMlM', '2022-12-10 03:43:29', '2022-12-10 05:45:28'),
(25, 1, 'CB0OzRjle2YxFByacnBB8tTAJXHmfwelyfn0I2nBcRWx7YKAbQNgHwJyeucyAL7r', '2022-12-10 05:51:12', '2022-12-10 07:24:11'),
(26, 1, '3WgDTkrbh3tmhBN6cbOY5F2xMgNEmP4heH0vLtR3YPonRNpJatGvYc4yFUQPScEo', '2022-12-10 07:25:28', NULL),
(27, 1, '910Nr1IP2LYuUoZDRE9a4c6omi26CpZb2zSzRrLFoGenFHducRmBEBX28WDs92C5', '2022-12-10 07:35:13', '2022-12-10 07:35:26'),
(28, 1, 'E93igpfR0gAkwjGLOl3Z3bZd9vXa49dyXiAovlXZTERCpzv46eD0YSb9phtbpXwJ', '2022-12-10 07:36:19', NULL),
(29, 1, '2CFL5Du2ZB8eWDWu9W2hYL3qJKi3v2Qgqy4Umz7XJZ4FXFdWrLwGWummvusMw3ow', '2022-12-10 23:50:04', '2022-12-11 12:20:43'),
(30, 1, 'lyoFPokUffx0iJW3sFoudVl2neomLdObaAhUrEA02sn1IZRz2kMv4cJhQ1GDnMlx', '2022-12-11 12:21:07', '2022-12-11 12:21:15'),
(31, 1, 'v3DSpVZ5f4YxJikDmv1tCcxgK2VTsnJ8pzXYx3FZiyuMaSfp4nWhwHAMeZbttFDx', '2022-12-11 12:21:44', NULL),
(32, 1, '8uAzyNu6ygRsvTcn97llGSTc6HEHTbYHtx8dMZlldheZOKxnWdnNq2Oej5QJjwkK', '2022-12-11 13:08:53', '2022-12-11 13:13:57'),
(33, 1, 'ENuXhBLYPkKiLG7Js95jT5z02dvMo9R9QCaTvLdzEBcini5RAz4n2P0o6ScmRDWt', '2022-12-12 11:36:07', NULL),
(34, 1, 'TKdiUQcSnpcc6EqRlPszMj0mRwabJQP7PE97lEb2UHWn8lUdTbIXvDZCX2ZeVwJm', '2022-12-12 23:52:29', '2022-12-22 00:52:26'),
(35, 1, 'EpNmBlzyl2QvsfccPUAgxQGcg0xYxghR332OMqilK4SNkFgfR3I9JWMwrJVS0YmM', '2022-12-22 00:52:38', NULL),
(36, 1, '4XzR1jv15I9EXIojVsiiZZJeU2Za7XQWXnefqzZrtmp5m4pQ4DxrLsjwlPhtwipd', '2022-12-22 01:13:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_users`
--
ALTER TABLE `all_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_u_id_foreign` (`u_id`);

--
-- Indexes for table `chat_b_ds`
--
ALTER TABLE `chat_b_ds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_b_ds_sender_id_foreign` (`sender_id`),
  ADD KEY `chat_b_ds_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_o_id_foreign` (`o_id`),
  ADD KEY `deliveries_deliveryman_id_foreign` (`deliveryman_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emails_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_o_id_foreign` (`o_id`),
  ADD KEY `orderdetails_p_id_foreign` (`p_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_u_id_foreign` (`u_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_p_id_foreign` (`p_id`),
  ADD KEY `reviews_d_id_foreign` (`d_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tokens_u_id_foreign` (`u_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_users`
--
ALTER TABLE `all_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_b_ds`
--
ALTER TABLE `chat_b_ds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bans`
--
ALTER TABLE `bans`
  ADD CONSTRAINT `bans_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `all_users` (`id`);

--
-- Constraints for table `chat_b_ds`
--
ALTER TABLE `chat_b_ds`
  ADD CONSTRAINT `chat_b_ds_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `all_users` (`id`),
  ADD CONSTRAINT `chat_b_ds_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `all_users` (`id`);

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_deliveryman_id_foreign` FOREIGN KEY (`deliveryman_id`) REFERENCES `all_users` (`id`),
  ADD CONSTRAINT `deliveries_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `all_users` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderdetails_p_id_foreign` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `all_users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `all_users` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_d_id_foreign` FOREIGN KEY (`d_id`) REFERENCES `deliveries` (`id`),
  ADD CONSTRAINT `reviews_p_id_foreign` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_u_id_foreign` FOREIGN KEY (`u_id`) REFERENCES `all_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
