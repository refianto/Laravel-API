-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2019 at 05:32 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lns`
--

-- --------------------------------------------------------

--
-- Table structure for table `debts`
--

CREATE TABLE `debts` (
  `id` int(11) NOT NULL,
  `debtor` int(11) NOT NULL,
  `owed` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debts`
--

INSERT INTO `debts` (`id`, `debtor`, `owed`, `total`, `description`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 11000, 'bayar hutang sebelum tempo', '2019-05-03 01:55:32', '2019-05-03 01:55:32'),
(4, 2, 1, 11000, 'bayar hutang sebelum tempo', '2019-05-03 01:55:49', '2019-05-03 01:55:49'),
(5, 2, 1, 11000, 'bayar hutang sebelum tempo', '2019-05-06 03:34:31', '2019-05-06 03:34:31'),
(6, 1, 2, 11000, 'bayar hutang sebelum tempo', '2019-05-06 03:34:44', '2019-05-06 03:34:44'),
(7, 3, 2, 11000, 'bayar hutang sebelum tempo', '2019-05-06 03:34:51', '2019-05-06 03:34:51'),
(8, 3, 1, 12000, 'bayar hutang sebelum tempo', '2019-05-06 03:36:34', '2019-05-06 03:36:34');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('066fc6de38c4b6ee47a108adb7049a612f0c64c00c857dd8ab20e0553a568f1d108f41e92ef72fec', 1, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:03:37', '2019-05-06 04:03:37', '2020-05-06 11:03:37'),
('0ca8819905b76573c234196e639aab4b912c201aad87b95705999108a412125dccd0d37c9d1666c8', 4, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:27:32', '2019-05-06 04:27:32', '2020-05-06 11:27:32'),
('2218f34a8fcd2edf5fa60f9af8a5121bec41dd177f2024d2c05edff748ee19c3aed7c2fde9312ed7', 5, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:39:00', '2019-05-06 04:39:00', '2020-05-06 11:39:00'),
('2da4582c7a41232ec33e33435e92bfde7dbf56066049d213341a649387aabe1cf0d882b77aec0af8', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:45:31', '2019-05-06 04:45:31', '2020-05-06 11:45:31'),
('484a48cf69339e9c08d767a40ce6cf35c8d5fc0a84f0b5f53387813386c17c74fd5beef68e6ed898', 1, 1, 'TutsForWeb', '[]', 0, '2019-05-06 01:50:14', '2019-05-06 01:50:14', '2020-05-06 08:50:14'),
('4aa641ff46f23f353cb16638eecb27d9077dec1ae3829c413969eeebe104051300136482f12ada17', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:45:26', '2019-05-06 04:45:26', '2020-05-06 11:45:26'),
('548f59cd9b200114dd424f4eae6798d79be8405e9760829069724600eaa64ba45ebca967eccbfae4', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:45:11', '2019-05-06 04:45:11', '2020-05-06 11:45:11'),
('6586ec7ba3d3165cff594717639a4c38054b7c9e0bc9a701b678a5a2f10d60f447da624c6ac86d59', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:45:23', '2019-05-06 04:45:23', '2020-05-06 11:45:23'),
('6ff15bf78281dbb757ec6369ce61056ff35f4aadd1dfb7ba1b2a52a7466caed38b1ffb058dd16179', 4, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:30:46', '2019-05-06 04:30:46', '2020-05-06 11:30:46'),
('70b012fe64b2f9189209d4ded543d695988f07c9a6710263ca612c626d674c30678e3141d5a5608d', 1, 1, 'TutsForWeb', '[]', 0, '2019-05-03 03:22:15', '2019-05-03 03:22:15', '2020-05-03 10:22:15'),
('ae8bccf274e221df6fe56a35a9efe8174bd5967bfcdd6abb7fd86ed7a138381cf1c468986eb3f988', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:45:33', '2019-05-06 04:45:33', '2020-05-06 11:45:33'),
('e36a8bfc40786303a2e6d6c5eba81e28175eff0381d20122ce5934a6654302321b701d90e7ef4d8c', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:44:54', '2019-05-06 04:44:54', '2020-05-06 11:44:54'),
('e9c19ee812473be10abf2935e4d06caef5dc16599e6fe04b3388cb1d0e6111c1a775cd67e517b38d', 6, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:45:29', '2019-05-06 04:45:29', '2020-05-06 11:45:29'),
('f81f5403114086b045716541c0c2271878af6464704349b38ed1791c3fc63a94bb33bc5a7ae59ff4', 5, 1, 'TutsForWeb', '[]', 0, '2019-05-06 04:41:38', '2019-05-06 04:41:38', '2020-05-06 11:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '8d7n1wfC3nUCKE5JBCva7EAkT7KiMEZRIRMFTrHY', 'http://localhost', 1, 0, 0, '2019-05-03 02:53:25', '2019-05-03 02:53:25'),
(2, NULL, 'Laravel Password Grant Client', 'NecmsZcMYxwN65QUjy6zhSDs5pf6tuYDSbyobJpH', 'http://localhost', 0, 1, 0, '2019-05-03 02:53:25', '2019-05-03 02:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-03 02:53:25', '2019-05-03 02:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$Id6gaFXK0WngGzH0LzUy3OrW3fmnI5CBttmZ7Klj5pAyk0Fl0SaWO', NULL, '2019-05-02 00:42:58', '2019-05-02 00:42:58'),
(2, 'user2', 'user2@gmail.com', NULL, '$2y$10$PgfkQ/5ZT0eI8pjpfkT1buYB9t0yUVfUOIYqegLHHntI8v8Hlo5Ta', NULL, '2019-05-02 00:44:05', '2019-05-02 00:44:05'),
(3, 'user3', 'user3@gmail.com', NULL, '$2y$10$yByAgOIhnUttZx8SrvGQ8uxTyyqnfissKEz1kEKh.InXlKlifhgAG', NULL, '2019-05-02 00:44:21', '2019-05-02 00:44:21'),
(4, 'user4', 'user4@gmail.com', NULL, '$2y$10$.94U1SOwu3Lnv7icJMuPle0LdDo8jTgRmnTsGibjImUvLHlAj..za', NULL, '2019-05-06 04:27:32', '2019-05-06 04:27:32'),
(5, 'user5', 'user5@gmail.com', NULL, '$2y$10$xxmsjRBLprwnfJ8viJbBYOlHqf8.H3ijvTJ2ZvKr4iJok6T8iOUou', NULL, '2019-05-06 04:39:00', '2019-05-06 04:39:00'),
(6, 'user6', 'user6@gmail.com', NULL, '$2y$10$8hCaVL6vlT1KZSBZT6b3t.jxwhbEmFjoSUEgoIzVRpF3BfEIRhrTq', NULL, '2019-05-06 04:44:54', '2019-05-06 04:44:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `debts`
--
ALTER TABLE `debts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `debtor` (`debtor`),
  ADD KEY `owed` (`owed`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `debts`
--
ALTER TABLE `debts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `debts`
--
ALTER TABLE `debts`
  ADD CONSTRAINT `debts_ibfk_1` FOREIGN KEY (`debtor`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `debts_ibfk_2` FOREIGN KEY (`owed`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
