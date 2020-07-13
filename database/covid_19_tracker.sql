-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 07:11 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid_19_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `covid_cases`
--

CREATE TABLE `covid_cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `confirm_cases` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `recovered` int(11) NOT NULL DEFAULT '0',
  `suspected` int(11) NOT NULL DEFAULT '0',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LK',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covid_cases`
--

INSERT INTO `covid_cases` (`id`, `date`, `confirm_cases`, `deaths`, `recovered`, `suspected`, `country`, `created_at`, `updated_at`) VALUES
(1, '2020-07-01', 2, 7, 4, 1, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(2, '2020-07-02', 0, 1, 1, 1, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(3, '2020-07-03', 2, 9, 3, 7, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(4, '2020-07-04', 8, 0, 7, 9, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(5, '2020-07-05', 10, 0, 4, 9, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(6, '2020-07-06', 7, 3, 9, 9, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(7, '2020-07-07', 6, 0, 0, 4, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(8, '2020-07-08', 7, 1, 5, 3, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(9, '2020-07-09', 8, 0, 8, 4, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(10, '2020-07-10', 2, 3, 1, 3, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(11, '2020-07-11', 2, 5, 4, 6, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(12, '2020-07-12', 6, 5, 7, 6, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38'),
(13, '2020-07-13', 6, 6, 8, 0, 'lk', '2020-07-12 06:35:38', '2020-07-12 06:35:38');

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
(1, '2020_07_12_073535_create_covid_cases_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covid_cases`
--
ALTER TABLE `covid_cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `covid_cases`
--
ALTER TABLE `covid_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
