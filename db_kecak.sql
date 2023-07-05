-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 11:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
-- Table structure for table `comunity`
--

CREATE TABLE `comunity` (
  `comunity_id` int(11) NOT NULL,
  `comunity_name` varchar(45) NOT NULL,
  `village_id` int(11) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  `comunity_desc` text NOT NULL,
  `comunity_logo` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comunity`
--

INSERT INTO `comunity` (`comunity_id`, `comunity_name`, `village_id`, `contact_name`, `comunity_desc`, `comunity_logo`, `created_at`, `Updated_at`) VALUES
(0, 'Kecak Fire Dance', 0, '', '', '', '2022-12-01 07:07:02', '2022-12-01 07:07:02'),
(1, 'Kecak Dance Fire', 0, '', '', '', '2022-12-01 07:16:18', '2022-12-01 07:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `disc`
--

CREATE TABLE `disc` (
  `disc_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_end` date NOT NULL,
  `refferal_code` varchar(45) NOT NULL,
  `disc_percent` decimal(10,0) NOT NULL,
  `disc_nominal` decimal(10,0) NOT NULL,
  `min_transection` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migrations` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `package_code` varchar(10) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `package_desc` text NOT NULL,
  `featrure_image` varchar(45) NOT NULL,
  `location_id` int(11) NOT NULL,
  `comunity_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `package_code`, `package_name`, `permalink`, `package_desc`, `featrure_image`, `location_id`, `comunity_id`, `created_at`, `update_at`) VALUES
(0, 'p001', 'Kecak', 'Kecak', 'Kecak Dance From Bali.', '', 0, 0, '2022-12-01 07:09:08', '2022-12-01 07:09:08'),
(1, 'p002', 'Kecak Fire', 'Kecak Fire', 'Kecak Dance With Accrobatic Fire From Bali.', '', 0, 1, '2022-12-01 07:23:18', '2022-12-01 07:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `passsword_resets`
--

CREATE TABLE `passsword_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `attribute` text NOT NULL,
  `last_us_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rate_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `rate_name` varchar(45) NOT NULL,
  `date_from` date NOT NULL,
  `date_end` date NOT NULL,
  `qty_per_day` int(11) NOT NULL,
  `adult_rate` decimal(10,0) NOT NULL,
  `child_rate` decimal(10,0) NOT NULL,
  `infant_rate` decimal(10,0) NOT NULL,
  `foreign_adult_rate` decimal(10,0) NOT NULL,
  `foreign_child_rate` decimal(10,0) NOT NULL,
  `foreign_infant_rate` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_rate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comunity`
--
ALTER TABLE `comunity`
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
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `comunity_id` (`comunity_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`comunity_id`) REFERENCES `comunity` (`comunity_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
