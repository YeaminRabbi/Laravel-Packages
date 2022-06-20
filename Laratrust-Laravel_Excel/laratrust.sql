-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 11:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laratrust`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2022_06_20_082404_laratrust_setup_tables', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-users', 'Create Users', 'Create Users', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(2, 'read-users', 'Read Users', 'Read Users', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(3, 'update-users', 'Update Users', 'Update Users', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(4, 'delete-users', 'Delete Users', 'Delete Users', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(5, 'create-acl', 'Create Acl', 'Create Acl', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(6, 'read-acl', 'Read Acl', 'Read Acl', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(7, 'update-acl', 'Update Acl', 'Update Acl', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(8, 'delete-acl', 'Delete Acl', 'Delete Acl', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(9, 'read-profile', 'Read Profile', 'Read Profile', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(10, 'update-profile', 'Update Profile', 'Update Profile', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(11, 'create-profile', 'Create Profile', 'Create Profile', '2022-06-20 02:28:42', '2022-06-20 02:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`permission_id`, `user_id`, `user_type`) VALUES
(9, 4, 'App\\User'),
(10, 4, 'App\\User'),
(11, 4, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', 'Superadmin', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(2, 'admin', 'Admin', 'Admin', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(3, 'user', 'User', 'User', '2022-06-20 02:28:42', '2022-06-20 02:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(3, 3, 'App\\User'),
(2, 5, 'App\\User'),
(1, 6, 'App\\User'),
(2, 7, 'App\\User'),
(3, 8, 'App\\User'),
(2, 9, 'App\\User'),
(1, 10, 'App\\User'),
(2, 11, 'App\\User'),
(2, 12, 'App\\User'),
(2, 13, 'App\\User');

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
(1, 'yeamin', 'yeaminrabbi308@gmail.com', NULL, '$2y$10$34uxWYWe00jRM7Pfj3yANe43Jle3RDRTflPmrTak0rkMNuTVrDr7G', NULL, '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(2, 'Admin', 'admin@app.com', NULL, '$2y$10$pvqrotjUygnXsxkIDhhqoOzXJI0xbY8lI41L/llFXDLTD415bHp.G', NULL, '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(3, 'User', 'user@app.com', NULL, '$2y$10$PqX.1ZfGQh1xHQ/NWRE6z.CX0oDT9vVJ2Hv7xcY7D5S3ewr10OmM2', NULL, '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(4, 'Cru User', 'cru_user@app.com', NULL, '$2y$10$IN0/EHFfSm9G1bxK8T5cre9FBpbX6DqUkE33iksLC3G7POnxXj5jW', 'yvmfG4obhA', '2022-06-20 02:28:42', '2022-06-20 02:28:42'),
(5, 'Rahat Hossain', 'rahat@gmail.com', '2022-06-20 03:28:11', '$2y$10$mM0ud.WIWtrFFlTIlaVaN.Cb6.2YTg8XdmFtixiHQ63NyY58YwYc2', NULL, '2022-06-20 03:28:11', '2022-06-20 03:28:11'),
(6, 'JellyFish', 'jelly@gmail.com', '2022-06-20 03:28:34', '$2y$10$3XYDHmfG89ZVkLlaFt/Ev.XZ/iEzcxJdNUL87u80jKmKkMnQgnqIW', NULL, '2022-06-20 03:28:34', '2022-06-20 03:28:34'),
(7, 'Israt Rahman', 'israt@gmail.com', '2022-06-20 03:32:21', '$2y$10$5935AjZy3ibOZZd/pTVVMukv69ivxcsirC3pur7QtANJCcuDekC8i', NULL, '2022-06-20 03:32:21', '2022-06-20 03:32:21'),
(8, 'Navid', 'navid101@gmail.com', '2022-06-20 03:34:01', '$2y$10$hg9KBO8.ZXcKOqE75hEAUOnoqQLzex4WKsk10xND/6G7BnLB4XPtu', NULL, '2022-06-20 03:34:01', '2022-06-20 03:34:01'),
(9, 'Rabbi', 'rabbi@gmail.com', '2022-06-20 03:34:20', '$2y$10$OP.Dce1Ojz19LLQj5ktkYeRjlmJ3zwqkmSgDz2afNY10gp8q3gVnm', NULL, '2022-06-20 03:34:20', '2022-06-20 03:34:20'),
(10, 'Siaf Uddin', 'saif@gmail.com', '2022-06-20 03:34:37', '$2y$10$VZWDr/FSIJs0Pl.eEHm3tesvFKJLx8nL9GMB6MzA.ZABm5EzQDw0e', NULL, '2022-06-20 03:34:37', '2022-06-20 03:34:37'),
(11, 'Akram Ali', 'akram@gmail.com', '2022-06-20 03:34:57', '$2y$10$motXjfKlZX99BWJwUaaqlOUmTccjyDgny9NNOybWB10OH8CGCkSzK', NULL, '2022-06-20 03:34:57', '2022-06-20 03:34:57'),
(12, 'Sakib', 'sakib@gmail.com', '2022-06-20 03:35:34', '$2y$10$6b710k2BsqwF6xuoePQd0ObqKXF1l0LbE4AxRov3A2.PeuAsglxmy', NULL, '2022-06-20 03:35:34', '2022-06-20 03:35:34'),
(13, 'Raisidul Islam', 'raisid@gmail.com', '2022-06-20 03:35:55', '$2y$10$zOjxQhxuwe82HeGK8fSSAO7RgwDyn1B5QSM7EM1LojwJJcdtvGDpa', NULL, '2022-06-20 03:35:55', '2022-06-20 03:35:55');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
