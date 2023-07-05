-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 03:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `comunities`
--

CREATE TABLE `comunities` (
  `comunity_id` int(11) NOT NULL,
  `comunity_name` varchar(45) DEFAULT NULL,
  `village_id` int(11) NOT NULL,
  `contact_name` varchar(45) DEFAULT NULL,
  `comunity_desc` text DEFAULT NULL,
  `comunity_logo` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comunities`
--

INSERT INTO `comunities` (`comunity_id`, `comunity_name`, `village_id`, `contact_name`, `comunity_desc`, `comunity_logo`, `created_at`, `updated_at`) VALUES
(1, 'kecak ', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comunity`
--

CREATE TABLE `comunity` (
  `comunity_id` int(11) NOT NULL,
  `comunity_name` varchar(45) DEFAULT NULL,
  `village_id` int(11) NOT NULL,
  `contact_name` varchar(45) DEFAULT NULL,
  `comunity_desc` text DEFAULT NULL,
  `comunity_logo` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comunity`
--

INSERT INTO `comunity` (`comunity_id`, `comunity_name`, `village_id`, `contact_name`, `comunity_desc`, `comunity_logo`, `created_at`, `updated_at`) VALUES
(1, 'kecak ', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disc`
--

CREATE TABLE `disc` (
  `disc_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `date_form` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `refferal_code` varchar(45) DEFAULT NULL,
  `disc_percent` decimal(10,0) DEFAULT NULL,
  `disc_nominal` decimal(10,0) DEFAULT NULL,
  `min_transaction` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(5, '2022_12_05_154407_create_murids_table', 2),
(6, '2022_12_06_023918_create_students_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `murids`
--

CREATE TABLE `murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_code` varchar(10) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_desc` text DEFAULT NULL,
  `feature_img` varchar(45) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `comunity_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_code`, `package_name`, `package_desc`, `feature_img`, `location_id`, `comunity_id`, `created_at`, `updated_at`, `permalink`) VALUES
(0, 'p001', 'Ikan chana maru', 'Ikan Channa Maru, Ikan Hias dengan Corak Indah\r\nIkan channa jenis ini memiliki corak tubuh yang indah yang berbentuk seperti bunga berwarna hitam dengan pinggiran berwarna putih. Ikan ini memiliki mata berwarna merah yang membuatnya tampak cantik dan menjadi daya tarik bagi pecinta ikan hias.', NULL, 0, 1, NULL, NULL, 'Ikan chana ');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rate_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `rate_name` varchar(45) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `qty_per_day` int(11) DEFAULT NULL,
  `adult_rate` decimal(10,0) DEFAULT NULL,
  `child_rate` decimal(10,0) DEFAULT NULL,
  `infant_rate` decimal(10,0) DEFAULT NULL,
  `foreign_adult_rate` decimal(10,0) DEFAULT NULL,
  `foreign_child_rate` decimal(10,0) DEFAULT NULL,
  `foreign_infant_rate` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `address`, `mobile`, `created_at`, `updated_at`) VALUES
(3, 'bayu', 'singaraja', '098', '2022-12-07 05:36:43', '2022-12-07 05:36:43');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bayusastra', 'bayu.sastra057@gmail.com', NULL, '$2y$10$Ej7U.V2v6i8ipVcQHrLepeRLYa0mwB9W9VTWHvzV8DcqdZyP1gqgy', 'eUoEldQfSUM7txGurhZvXI7tRlOquXba5h8LRB6mKJ13GTwqDmlljrrlky8L', '2022-11-09 01:15:39', '2022-11-09 01:15:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comunities`
--
ALTER TABLE `comunities`
  ADD KEY `comunity_id` (`comunity_id`);

--
-- Indexes for table `comunity`
--
ALTER TABLE `comunity`
  ADD KEY `comunity_id` (`comunity_id`);

--
-- Indexes for table `disc`
--
ALTER TABLE `disc`
  ADD KEY `package_id` (`package_id`);

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
-- Indexes for table `murids`
--
ALTER TABLE `murids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD UNIQUE KEY `permalink` (`permalink`),
  ADD KEY `package_id` (`package_id`),
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
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `murids`
--
ALTER TABLE `murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disc`
--
ALTER TABLE `disc`
  ADD CONSTRAINT `disc_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`comunity_id`) REFERENCES `comunity` (`comunity_id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
