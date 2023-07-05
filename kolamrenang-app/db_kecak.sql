-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 05:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kecak`
--

-- --------------------------------------------------------

--
-- Table structure for table `comunities`
--

CREATE TABLE `comunities` (
  `comunity_id` int(11) NOT NULL,
  `comunity_name` varchar(46) NOT NULL,
  `village_id` int(12) NOT NULL,
  `contact_name` varchar(47) NOT NULL,
  `comunity_desc` text NOT NULL,
  `comunity_logo` varchar(44) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comunities`
--

INSERT INTO `comunities` (`comunity_id`, `comunity_name`, `village_id`, `contact_name`, `comunity_desc`, `comunity_logo`, `create_at`, `update_at`) VALUES
(1, 'kolam renang umum1', 0, '', '', NULL, NULL, NULL),
(2, 'kolam renang umum2', 0, '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disc`
--

CREATE TABLE `disc` (
  `disc_id` int(11) NOT NULL,
  `package_id` int(12) NOT NULL,
  `date_from` date NOT NULL,
  `date_end` date NOT NULL,
  `refferal_code` varchar(45) NOT NULL,
  `disc_nominal` decimal(15,0) NOT NULL,
  `min_transaction` decimal(16,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_code` varchar(10) NOT NULL,
  `package_name` varchar(89) NOT NULL,
  `package_desc` text NOT NULL,
  `feature_img` varchar(15) NOT NULL,
  `location_id` int(17) NOT NULL,
  `comunity_id` int(18) NOT NULL,
  `creat_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_code`, `package_name`, `package_desc`, `feature_img`, `location_id`, `comunity_id`, `creat_at`, `update_at`) VALUES
(2, 'P001', 'Kolam Taman Pandawa ', 'Kolam renang taman pandawa terletak di sesa ambengan , kolam renang ini berdiri dari 2016 dan nama pemiliknya adalah komang mertha yasa\r\n', 'pandawa1.jpg', 0, 1, NULL, NULL),
(3, 'p003', 'Kolam Jembong', 'Kolam renang Jembong adalah kolam renang yang di kelola bersama desa, terletak di dusun Jembong, dibangun pada tahun 2018', 'jembong.jpg', 0, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `rate_id` int(11) NOT NULL,
  `package_id` int(12) NOT NULL,
  `rate_name` varchar(56) NOT NULL,
  `date_from` date NOT NULL,
  `date_end` date NOT NULL,
  `qty_per_day` int(15) NOT NULL,
  `aduit_rate` decimal(10,0) NOT NULL,
  `child_rate` decimal(10,1) NOT NULL,
  `infant_rate` decimal(10,2) NOT NULL,
  `foreign_adult_rate` decimal(10,3) NOT NULL,
  `foreign_chil_rate` decimal(10,4) NOT NULL,
  `foreign_infant_rate` decimal(10,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wendii', 'wendi@undiksha.ac.id', NULL, '$2y$10$xyVFtdWF1aoRdW8n/9KhwOlsMZ9EO1.hNRf06XT/WVKj.0hMlKicy', NULL, '2022-12-06 04:05:32', '2022-12-06 04:05:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comunities`
--
ALTER TABLE `comunities`
  ADD PRIMARY KEY (`comunity_id`);

--
-- Indexes for table `disc`
--
ALTER TABLE `disc`
  ADD PRIMARY KEY (`disc_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `comunity_id` (`comunity_id`);

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
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`rate_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`comunity_id`) REFERENCES `comunities` (`comunity_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
