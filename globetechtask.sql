-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 03:45 PM
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
-- Database: `globetechtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_files`
--

CREATE TABLE `all_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `is_primary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'phone', 'product', 'true', NULL, NULL);

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `item_id`, `file`, `is_primary`, `created_at`, `updated_at`) VALUES
(3, 7, ' {\r\n \"id\": 1,\r\n \"name\": \"hqdefault_26092022_204611.jpg\",\r\n \"file\": \r\n\"http://127.0.0.1:8000/hqdefault_26092022_204611.jpg\",\r\n \"extension\": \"jpg\",\r\n \"size\": 21106,\r\n \"description\": null\r\n }', 'true', NULL, NULL),
(4, 7, ' {\r\n \"id\": 1,\r\n \"name\": \"dynahod_26092022_204623.jpg\",\r\n {\r\n \"id\": 1,\r\n \"name\": \"dynahod_26092022_204623.jpg\",\r\n', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `tradable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_type`, `location_id`, `tradable`, `user_id`, `added_by`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'product', 1, 'true', 5, ' {\r\n \"id\": 5,\r\n \"first_name\": \"Jhon\",\r\n \"last_name\": \"Carry\"\r\n }', 'pending', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `code`, `country`, `address1`, `address2`, `city`, `state`, `zone`, `zip_code`, `lat`, `lng`, `type`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'SU-00000001', 'BD', 'Khilkhet', '', 'Dhaka', 'Dhaka', 'Uttara', '1210', '23.830646510005334', ' 90.42397062039595', 'offer', 5, '2022-10-11 11:16:15', '2022-10-20 11:16:15');

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(18, '2016_06_01_000004_create_oauth_clients_table', 1),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2022_10_14_200325_create_products_table', 1),
(23, '2022_10_14_202316_create_categories_table', 1),
(24, '2022_10_14_202605_create_sub_categories_table', 1),
(29, '2022_10_16_091605_create_items_table', 2),
(30, '2022_10_16_092422_create_files_table', 2),
(31, '2022_10_16_103907_create_all_files_table', 2),
(32, '2022_10_16_111117_create_locations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('09f3ff82d0ec7a7e137e56cb0db86bb9e3e210e7aaf1c7ac0e8b5923ebf4f8512447ff3bcf778660', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 15:03:46', '2022-10-15 15:03:46', '2023-04-15 21:03:46'),
('1918a799eb6c1ff097919a33b8b87abc65007244a6db329641935068e4d06c7a4965ecf8dda23fa8', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 11:00:43', '2022-10-15 11:00:43', '2023-04-15 17:00:43'),
('355d893617bee409934b69fd481a5936a018827cc842caea34c7a9db82ec2d5759cda878d5e6acdd', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 07:00:53', '2022-10-15 07:00:53', '2023-04-15 13:00:53'),
('455fb9ecf4880312d243be16d057ab966f7bf4a688af5b45ae31d593710b9c3585bb988b9beb4c64', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 11:49:54', '2022-10-15 11:49:54', '2023-04-15 17:49:54'),
('59b98002545e7dd04f45049c3c2086caf70b9b44f8e5e293b50ac78890f5dc3b4e0248b5801ebf2a', 9, 3, 'globetechtask', '[]', 0, '2022-10-16 05:38:09', '2022-10-16 05:38:09', '2023-04-16 11:38:09'),
('7ede2994d8cbd0e6242057e92205ecbeb3c129622caf127ef7b3067e8fd53a0d00a403b901f8e214', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 12:03:13', '2022-10-15 12:03:13', '2023-04-15 18:03:13'),
('7f6ea5453625bc18f7190041dcaaa2d548c17dd3c1aa2e3a652229895d344b87793e09b23f80dc17', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 12:00:03', '2022-10-15 12:00:03', '2023-04-15 18:00:03'),
('8c6ff1898e0cc3befbc58d64b36c57596a23889466a11e708f75a443520e7fa2b7ce64c26ff4262e', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 07:02:05', '2022-10-15 07:02:05', '2023-04-15 13:02:05'),
('8fd43e47ce9b528d528bce2395d1cf6621a7795567504108bdd0141ba4e51b346790a20cd7df69c1', 9, 3, 'globetechtask', '[]', 0, '2022-10-16 00:35:43', '2022-10-16 00:35:43', '2023-04-16 06:35:43'),
('9a1468d1bcbe3665106e63ca7f00fa988cdf2423f52ff7ca70cbbac360717020359d9393b0e46e1f', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 06:56:59', '2022-10-15 06:56:59', '2023-04-15 12:56:59'),
('a1d640d01d5eb3232f21bbc30221d1ec28544a290fbd4ba611e34719a6676fa2b6e61d5e948f475e', 1, 3, 'globetechtask', '[]', 0, '2022-10-15 06:26:01', '2022-10-15 06:26:01', '2023-04-15 12:26:01'),
('b724c7c5bc1160100ba18f8cb08b2416777637360441eb6489387b3e6af74d32020d9aa8cf40e83e', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 11:26:52', '2022-10-15 11:26:52', '2023-04-15 17:26:52'),
('ca73de6c81e2bd0befbb4770e60bbd1607a769e36451b2f94c6152688e89df12f4c8b5e8f526db14', 9, 3, 'globetechtask', '[]', 0, '2022-10-16 07:30:08', '2022-10-16 07:30:08', '2023-04-16 13:30:08'),
('d90851c57719a7513c9fdbb1beb36f65bf82fc5962a3d4698c7a505ccd3349c14057c654a5dc3d8d', 9, 3, 'globetechtask', '[]', 0, '2022-10-15 10:43:53', '2022-10-15 10:43:53', '2023-04-15 16:43:53'),
('f9f1f2d5458efb5e1c6893583722f791ca85045cc1f3e30678355c5887aee07c66c5a73fd5dce45f', 9, 3, 'globetechtask', '[]', 0, '2022-10-16 06:55:54', '2022-10-16 06:55:54', '2023-04-16 12:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '3n3NIrcfwHuCAqZ3lDFJOhqV8fVQt4p8SS6KtiSA', NULL, 'http://localhost', 1, 0, 0, '2022-10-15 06:21:18', '2022-10-15 06:21:18'),
(2, NULL, 'Laravel Password Grant Client', 'xBp8vS0lICBiFOtIMezs4BvrxL12hqmd0Sn5zc8y', 'users', 'http://localhost', 0, 1, 0, '2022-10-15 06:21:18', '2022-10-15 06:21:18'),
(3, NULL, 'Laravel Personal Access Client', 'essZAPc0u3p0mgOPEmdC0yCUohQ8HCCunFWkpmxF', NULL, 'http://localhost', 1, 0, 0, '2022-10-15 06:22:58', '2022-10-15 06:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-15 06:21:18', '2022-10-15 06:21:18'),
(2, 3, '2022-10-15 06:22:58', '2022-10-15 06:22:58');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'userToken', 'db50ee75c098d55944b0321d7b0a6cb1c318e2c8ac65e1447d23edd9d9605d3b', '[\"*\"]', NULL, '2022-10-14 15:12:18', '2022-10-14 15:12:18'),
(2, 'App\\Models\\User', 1, 'userToken', '80d74c31333acc5b18e138e6c97fa0a6067aff6e80cee3e28fce875d2158b333', '[\"*\"]', NULL, '2022-10-14 15:17:37', '2022-10-14 15:17:37'),
(3, 'App\\Models\\User', 1, 'userToken', '7b7b4b37610a72de63bf5be1fd391ec1e0760ccd6f3f4ba790de55d433bb8215', '[\"*\"]', NULL, '2022-10-14 15:19:35', '2022-10-14 15:19:35'),
(4, 'App\\Models\\User', 5, 'globetech', '366c7d1021bfe5bd6f8c7953831648f4b6260af01487744ff05ae125aca9a4a4', '[\"*\"]', NULL, '2022-10-14 15:39:47', '2022-10-14 15:39:47'),
(5, 'App\\Models\\User', 5, 'Token Name', 'd9392d22b5e527a945e61d13c3b85d448b35ee13a5908ffa63d1561ec99671e2', '[\"*\"]', NULL, '2022-10-14 15:43:00', '2022-10-14 15:43:00'),
(6, 'App\\Models\\User', 5, 'Token Name', 'afab166e66f8049453bee3a895dd13c1d6fc00a10363ccc8d1889030ec904aed', '[\"*\"]', NULL, '2022-10-14 15:43:30', '2022-10-14 15:43:30'),
(7, 'App\\Models\\User', 5, 'globetech', 'de2b3b6fa3b653bcc036e10e05c612c818e3781474c8006c7e30d35ff0e2d6e3', '[\"*\"]', NULL, '2022-10-14 15:53:11', '2022-10-14 15:53:11'),
(8, 'App\\Models\\User', 5, 'globetech', '5c4a3425f3d183f7a879153f1fbe94af4b44c9f4dc509a37056f63b5026ac319', '[\"*\"]', NULL, '2022-10-14 15:54:23', '2022-10-14 15:54:23'),
(9, 'App\\Models\\User', 5, 'globetech', 'f09326d08b076882aa4d08697d5c19ef3234ff9b54af4b222a423ba3cb06cec9', '[\"*\"]', NULL, '2022-10-14 15:55:38', '2022-10-14 15:55:38'),
(10, 'App\\Models\\User', 5, 'globetech', 'd6e2200e69318d60e167d7d47f7eb00890d4c6ded7d46a3e021a2abf604fd9e0', '[\"*\"]', NULL, '2022-10-14 15:55:40', '2022-10-14 15:55:40'),
(11, 'App\\Models\\User', 5, 'globetech', 'b491130e1b69c1e82511f4c97892810e5046b873952363fbb7cb79e2c2cbdd6c', '[\"*\"]', NULL, '2022-10-14 15:57:57', '2022-10-14 15:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `nagotiable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `validity` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_id`, `title`, `category_id`, `subcategory_id`, `nagotiable`, `price`, `condition`, `description`, `min_quantity`, `validity`, `created_at`, `updated_at`) VALUES
(3, 7, 'product2', 1, 2, 'false', 54.5, 'New', 'test description', 10, '2021-10-26 00:26:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'oppo', 1, 'true', NULL, NULL);

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
(1, 'showmik', 'sh@gmail.com', NULL, '$2y$10$vLn16POL/PGTYpwqXR.mHei4pOmnZc3FH1T.YK/f.srjPk4j7Cr76', NULL, '2022-10-14 15:11:58', '2022-10-14 15:11:58'),
(2, 'showmik', 'showmik.aiub@gmail.com', NULL, '$2y$10$csdPwGTYFGcX9bHfsLTmQOVhijbWbYc4PNuAF8Nrr6t7u0W9.LfGq', NULL, '2022-10-14 15:36:03', '2022-10-14 15:36:03'),
(5, 'user', 'user@gmail.com', NULL, '$2y$10$aRoTH6sk0eUysXDq/NOate3XYD2DttddRNXQVUpB7eEWChiNsEfY6', NULL, '2022-10-14 15:38:55', '2022-10-14 15:38:55'),
(9, 'mehedi', 'm@gmail.com', NULL, '$2y$10$Lj9RozTRe3f9Q3lb.XoMrOujydCMOhq3d3iJtDPFmtUkT1JzjcOP.', NULL, '2022-10-15 06:15:44', '2022-10-15 06:15:44'),
(10, 'rk', 'rk@gmail.com', NULL, '$2y$10$a2cS/E3qT2WJFLCsjb3mO.Bxekdr7Z4FlgNBL0xON9u84JQpJ0Gci', NULL, '2022-10-16 07:26:44', '2022-10-16 07:26:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_files`
--
ALTER TABLE `all_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `all_files`
--
ALTER TABLE `all_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
