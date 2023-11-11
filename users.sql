-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 10:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksampah`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('staff','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin', '$2a$12$sC5MwftpDwYmxEqfiPe6R.jZT.tMoSpBrc0cDq9mYQhlH29G/eI8S', NULL, '2023-10-02 21:00:43', '2023-10-02 21:00:43'),
(2, 'staff', 'staff', 'staff@gmail.com', 'staff', '$2a$12$oYAijSe8/qEzFSHWb/kjtudPtxNevJZGWjLaLO1gEHE3cW/z0MIGC', NULL, '2023-10-02 21:00:43', '2023-10-02 21:00:43'),
(3, 'Taufiq Fadillah', 'taufiq', 'fuungspot@gmail.com', 'staff', '$2y$10$Ra8hJ5S8UmKTbMWhIATMa.PZ5De1qqgSBdXCiCAjHuJd36Ne6uEkW', NULL, '2023-11-11 00:51:21', '2023-11-11 00:51:21'),
(4, 'Taufiq Fadillah', 'taufiqf', 'admin@localhost.com', 'staff', '$2y$10$sAEJUxMx9S2vk8eF2/m2S.J0ybxGJN5YUzbn2GRxay2VIS20tGi6y', NULL, '2023-11-11 01:30:10', '2023-11-11 01:30:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
