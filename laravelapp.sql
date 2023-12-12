-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2023 at 11:06 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelapp`
--

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2022_09_19_042108_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('0558b789bddb55faa428803700a3dd65b450ff46e2b5ef02f63ebd2db1e9b8c85a1ad688375605c1', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:34:40', '2022-09-15 03:34:40', '2023-09-15 09:34:40'),
('0bda8b4382374c5f350a9ccb0b42f96e9bf813c29ce5c3c2e9cc52fe976b7cf8da80b23aa1dc4995', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:35:12', '2022-09-15 03:35:12', '2023-09-15 09:35:12'),
('0c14255a027b6e895c0e658d74b693396df77b323c2ee542f4b8b369495fd7c8983dd3d3ad1abd73', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-18 00:34:35', '2022-09-18 00:34:35', '2023-09-18 06:34:35'),
('175d7083274b853896560b837bd4e1b569270c5dd43d41753df645f1435dbbfce40927a7bc93dd31', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:30:39', '2022-09-15 04:30:39', '2023-09-15 10:30:39'),
('1b261654c2b883d2ba84bcba28e366f521159b5483f2db7c5603222a5462c460736c27251f541b95', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-14 23:44:25', '2022-09-14 23:44:25', '2023-09-15 05:44:25'),
('1cff8a235a7d2ca7372bfffec8c9cf704213cc041aecd6b12a9b90c9c1b104d0f429897bc530c63f', 2, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'rasel1@gmail.com', '[]', 0, '2022-09-14 04:50:52', '2022-09-14 04:50:52', '2023-09-14 10:50:52'),
('218a81eff4adb79f00566e9e5ee086ad5231fb2b1386679a17bba23b084084d2ea36a55f59945594', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-14 23:41:45', '2022-09-14 23:41:45', '2023-09-15 05:41:45'),
('22b1ad4c686a8c1d72e1eedc597efb4b2e95973b09ad6ef59262155243d9687d9f3567adbf9cd6ad', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 05:29:23', '2022-09-15 05:29:23', '2023-09-15 11:29:23'),
('23450b4dcb3fd52c45bcf653f4add75c56f5a941c037fe148f2a6076b6ca2bfc6877a520513540ba', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:30:57', '2022-09-15 04:30:57', '2023-09-15 10:30:57'),
('35e530a91b41ebe96cb704c30fa984c056c415557dbcf96fa876253125d8e7ea51821d9e041e1624', 4, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'rasel2@gmail.com', '[]', 0, '2022-09-14 23:37:21', '2022-09-14 23:37:21', '2023-09-15 05:37:21'),
('374a6c92c696f01c81c133cf0e0ddb96aa1cb4a83f3d36c32290e49f94938e106b5af0c1e5a8a3d5', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:36:52', '2022-09-15 04:36:52', '2023-09-15 10:36:52'),
('387691ced6bc0a4a0801d2d75a711609e1ade03f1fbb986c6171fd935644103bccb2d0302645521e', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:07:55', '2022-09-15 03:07:55', '2023-09-15 09:07:55'),
('397caa37a89e42affe3b1e83e96dfa2bdc1b22d055a79454259b13f0ea68ab9332b80cbcf863b291', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:12:25', '2022-09-15 03:12:25', '2023-09-15 09:12:25'),
('43ac96698a34529ec84e9134c033681e91c3cef24ae5fa4f48b7d6d286c34b795ae0973724f6bc21', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:09:49', '2022-09-15 04:09:49', '2023-09-15 10:09:49'),
('4466043b3071544085fa0d63c8432577dd313f96c2c4d475445015f7f3ac3e22b298fc44738fc2d0', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:16:35', '2022-09-15 03:16:35', '2023-09-15 09:16:35'),
('4741b6649d87ee074377906aeb07ec61344889b7c7b740419f58f8c598f0e5bc0f6b702b34481415', 1, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'Token Name', '[]', 0, '2022-09-14 04:40:55', '2022-09-14 04:40:55', '2023-09-14 10:40:55'),
('4a54d86ca2e9a6249a9b404c9916afc263706761af2cf5399e613528a31920103b084ba579b23758', 3, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'rasel@gmail.com', '[]', 0, '2022-09-14 04:52:29', '2022-09-14 04:52:29', '2023-09-14 10:52:29'),
('5779fb2d080306cc3116de7575fa5814683c8884ce35faebb6312a2eb7a278f18b95683bbc5381ff', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:01:51', '2022-09-15 03:01:51', '2023-09-15 09:01:51'),
('672073e8e9b2b93cbb7307f1a21ff30549e9500253966001975bc3f9be43bb7a306d03f0ed1f0b61', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:07:36', '2022-09-15 03:07:36', '2023-09-15 09:07:36'),
('685089ac39019fcf8234f47ed2b61b3c86dae2022e4d74a1997fe13ac5de74a18b36adf82762619d', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-18 00:34:26', '2022-09-18 00:34:26', '2023-09-18 06:34:26'),
('6aff23cdb19c8c4d3ee82d60a0ad0b8999236028739166fef706954c96d23f353b27a9d57e4dff98', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:31:18', '2022-09-15 04:31:18', '2023-09-15 10:31:18'),
('73db26a905fb01425c0772d909e2043a54646c27717a5666a1a095d13613b57f242277bc2dcd2815', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:58:24', '2022-09-15 03:58:24', '2023-09-15 09:58:24'),
('7bcf4dad06fbec84b1dc73ef152d589315833c41f33f71c5edbe20e70720378727815d19ae0add8c', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:35:05', '2022-09-15 04:35:05', '2023-09-15 10:35:05'),
('7ec50f5013c2c5c87c9d9b34fa6bf5f715b7d112677d7c92e1a2176934e8dd5f3654a11e6b38eaa7', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:16:04', '2022-09-15 03:16:04', '2023-09-15 09:16:04'),
('80535d208e372193bf37d2dcd9c44cfb42fe8c33bda68509d33964d44fea98079d0d832e9eb08a25', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:50:59', '2022-09-15 03:50:59', '2023-09-15 09:50:59'),
('875be9f27b1790fe0056f780ee77cbc4fdc74475943cee836461e65da34df574c3e8739878dad3ab', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:15:14', '2022-09-15 03:15:14', '2023-09-15 09:15:14'),
('8db8fd1aaaa69ffb9f546babb492ff35deca78e258ee84cb0e28a3d1aef481fecf589fcf4bb63cb3', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:28:59', '2022-09-15 03:28:59', '2023-09-15 09:28:59'),
('8fecff16bdc833b8849a493ace0f96cb51d1a8ce20b23c1e9a4c8200af98132ca3b6c3feb45d7c41', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:10:12', '2022-09-15 04:10:12', '2023-09-15 10:10:12'),
('95df93c8c5bc5ecbd68e8c3a3ec11efb56403ed083cba9d5694bcc564990ffabfc748842d8f09193', 5, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'rasel2@gmail.com', '[]', 0, '2022-09-14 23:37:42', '2022-09-14 23:37:42', '2023-09-15 05:37:42'),
('9c23b8ef7b69e05f8d016156412ef07f1d90a44669dc1b6156392d16da5c6680be8b98042d4865ed', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:16:48', '2022-09-15 03:16:48', '2023-09-15 09:16:48'),
('9e38a3e9f58ca9badbf0a561a654de7a73d08d0b9f4bb564d384530a09e0d2821b6aed93ea1829fa', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:10:53', '2022-09-15 03:10:53', '2023-09-15 09:10:53'),
('a11704dfbbddb57a364157fa9c4bcb149370667992249d445b9a9b5b4eed189c2592c2655f4e0825', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:10:25', '2022-09-15 04:10:25', '2023-09-15 10:10:25'),
('bc363f75fff24f73740d74c7828f4664be10ee1eb912984f976244799013d21af6f6645a0e8b8dc3', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:10:20', '2022-09-15 04:10:20', '2023-09-15 10:10:20'),
('bf15a056edd29fcc08fed4e635ce5de499ec525bd67edd3413dd06efcb34b55f1a7e3bc0fedb7e29', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:19:32', '2022-09-15 03:19:32', '2023-09-15 09:19:32'),
('bf75fb08fc38e329aad2540c00a06802f471284443dfcb8dc7d705fbeecd2060da27806cc5a8d144', 1, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'Token Name', '[]', 0, '2022-09-14 04:38:31', '2022-09-14 04:38:31', '2023-09-14 10:38:31'),
('cc01a2861de8346cbc9f776fad97a5c3060cb6491f158ab6e0fc346657472ab4a80e88385b0839bf', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:36:38', '2022-09-15 03:36:38', '2023-09-15 09:36:38'),
('d2edd1c3837f7f062593b1b322c27819314dc2d2daace80c73bf79e7bea721ec13180c0d4f817661', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:36:52', '2022-09-15 03:36:52', '2023-09-15 09:36:52'),
('d7f75cb0663c251249d63f32f945867b14037e0c055461116efc74d5f04988d551acf5b0a9a21a81', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:16:53', '2022-09-15 03:16:53', '2023-09-15 09:16:53'),
('d837f8205fb031fddab7155e767cce5397d7eb89ce80e41feaf24d43a249c77527b1e58f5cb2d765', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:35:18', '2022-09-15 04:35:18', '2023-09-15 10:35:18'),
('ea014387beadaec4f07665670fcd4e741a74b5ed9b01f5401a8749c260bde8a6a0f4cff7e81cfc2c', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:15:23', '2022-09-15 03:15:23', '2023-09-15 09:15:23'),
('ee2409f9d4d04b2e93d302b1fc93a465acdf3854c332c7b50d96d0f243768ec7488a5a94c1348e60', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:54:47', '2022-09-15 03:54:47', '2023-09-15 09:54:47'),
('eec39e2abcbe0a661c605bb5048aa6b6ae8c9c7034ca7fdfef899619b444230457af1fac21ab5ef3', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:38:11', '2022-09-15 03:38:11', '2023-09-15 09:38:11'),
('f512dd1d6dcd9565e29cdade8f714c6364b84d3a7187c1eb3e8b6c59281eb827d28ed7f6363a31a1', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:31:09', '2022-09-15 04:31:09', '2023-09-15 10:31:09'),
('fc8a84d6988481763f491a3e1cd19bfa6b19deca9e2c6691fcc7be73064bfecdd69a5a3207ffb8c0', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 04:43:00', '2022-09-15 04:43:00', '2023-09-15 10:43:00'),
('ff99dc5757845f81c55e556ef7230966ce458f3e993ea8790d5ef0cd73833f494cd440d4b3b0f303', 6, '9743421a-f499-48ad-9c12-c82eb7f32da3', 'demo@gmail.com', '[]', 0, '2022-09-15 03:15:52', '2022-09-15 03:15:52', '2023-09-15 09:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('9743421a-f499-48ad-9c12-c82eb7f32da3', NULL, 'Laravel Personal Access Client', 'VNmCUkQlOpvHLbhGAs9sB4k1riPHOEIrLj5ypZCS', NULL, 'http://localhost', 1, 0, 0, '2022-09-14 04:27:57', '2022-09-14 04:27:57'),
('9743421b-f5fd-463a-a9ed-6c17f1ce669f', NULL, 'Laravel Password Grant Client', 'ztE4pMprhz1edlkvDEnGDeXDtFw6BLt9VNXNqB3h', 'users', 'http://localhost', 0, 1, 0, '2022-09-14 04:27:57', '2022-09-14 04:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9743421a-f499-48ad-9c12-c82eb7f32da3', '2022-09-14 04:27:57', '2022-09-14 04:27:57');

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

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('qlGBuFjmoO7UjhVTvlNl2L4CDfCVyTDjHKHIq2Vo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW1rN0lFdEtzaDdnd3RvWktPdWJmMXcwTnBtVzF3RDZYTGNFSE1yMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1702292765);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `access_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(21, 'admin', 'admin@gmail.com', NULL, '2022-09-20 04:06:32', '$2y$10$nNMj5sfjaDKOUM9MDwl6QuJIfNPffl6smZCCVPqdJwNgoG1AQIGTC', NULL, '2022-09-20 04:05:54', '2022-09-20 04:06:32'),
(22, 'user', 'user@gmail.com', NULL, '2022-09-20 04:14:12', '$2y$10$tBBdFdEA3LZgNgg34AtYj.6xaY/eMrjIBnMOApBaEKfKcLIeLhZwe', NULL, '2022-09-20 04:08:17', '2022-09-20 04:14:12');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
