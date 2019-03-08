-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2019 at 07:25 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goalapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE IF NOT EXISTS `goals` (
  `id` int(10) unsigned NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `owner_id`, `title`, `description`, `start_time`, `start_date`, `end_time`, `end_date`, `level`, `goal_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Flyer', 'i will fly high', '33232', '232322', '232323', '23232322', '2yt', 'ggfgfgffg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'Change', 'dfdfdfdfdfdfd', '33232', '232322', '232323', '23232322', '2yt', 'dfdfdfff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Dame', 'dfdfdfdfdfdfd', '33232', '232322', '232323', '23232322', '2yt', 'gfgfgfdgfgf', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_03_05_094548_create_users_table', 1),
(4, '2019_03_06_215445_create_goals_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_recover_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_recover_token`, `phone_number`, `account_type`, `password`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'Okechukwu Obi', 'junipreach2017@gmail.com', 'edd23dffb5607961e89adfcd7a5863edca19f47c4f9cb9079ab9f52895bb2345', '07060959269', 'Personal', '$2y$10$6j.Z0nG3jS4gxU3icGW1Cu5a6HGu5/6u9OTEjexK7KcC36KA0vADm', 'fa50b1932f6bd649f3ceb608005d8c08c9e2c3b5e1928fb92b59a4102dafc816', '2019-03-07 07:50:57', '2019-03-07 07:50:57'),
(2, 'juni', 'junipreach12017@gmail.com', '66213408a1e6196df725d20f23f5826bd8ff21f54663a451601de8a32d1698e9', ' 2347060959269', 'Company', '$2y$10$xAl/mprhgClQ4vm0F6irwOOqLm4D5F9nD2SqxGDMKJSvUzuT57.ya', '7c210880f83c86959eda3cc693c753c134db0858fedf55d9408d081d2d724bae', '2019-03-07 07:52:09', '2019-03-07 07:52:09'),
(3, 'Deni', 'junipreach20thttht17@gmail.com', '14e54b90ece0f44d246c632cbee65aa257156ba9f69386bd060d54dbc6831438', ' 2347060959269', 'Team', '$2y$10$aYWAo1mmGnWdf61LAJkOeeVyCFfpf1Pkb6PkDwYF2umI2uKCasMpu', '2f2c41eb9738c29804122263ec1c6404cf099a21166de4d210be58b2b0eb1a04', '2019-03-07 14:43:26', '2019-03-07 14:43:26'),
(4, 'Samming', 'garnu17@gmail.com', 'c8f972e352590d279c35b53c4e9907c3f33e39b0b89c7a7429316cb89cbb2fb0', ' 2347060959269', 'Team', '$2y$10$CiEWkxRBmHTKPLvGtwCSAehT9MAPfPAZYqhEfwl2mw2xy2ebCZs4i', 'a520ea59770f8f24659eb1939dc52ca6ecb2eaf8f340c3c62ac585e52de8822c', '2019-03-07 15:05:03', '2019-03-07 15:05:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `goals_goal_token_unique` (`goal_token`),
  ADD KEY `goals_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_password_recover_token_unique` (`password_recover_token`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
