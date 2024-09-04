-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2024 at 05:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelsso`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1725425632;', 1725425632),
('arifmehedi.du@gmail.com|127.0.0.1', 'i:1;', 1725425798),
('arifmehedi.du@gmail.com|127.0.0.1:timer', 'i:1725425798;', 1725425798);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_04_041242_create_oauth_auth_codes_table', 1),
(5, '2024_09_04_041243_create_oauth_access_tokens_table', 1),
(6, '2024_09_04_041244_create_oauth_refresh_tokens_table', 1),
(7, '2024_09_04_041245_create_oauth_clients_table', 1),
(8, '2024_09_04_041246_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('409f6796d71d80d9f96dcb333d2648e1b4e182272d4f018be572039117a0cfdf9d5720da1dc62451', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:48:30', '2024-09-03 22:48:30', '2024-09-05 04:48:30'),
('84b8c53a8d1a65522c1d178ece96cf45179d1388478c0dbbbbe07150ef073b7c874a8489559aee73', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:53:52', '2024-09-03 22:53:52', '2024-09-05 04:53:52'),
('bf104897b9fb0d0d440a18ac39b0720ecf833dffb56364aa3a9cbf3265eb8f5eed6f4ecd9b01fdae', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:49:06', '2024-09-03 22:49:06', '2024-09-05 04:49:06'),
('d7375b34fc6214b8cca54e5f01dfe0a95cf650c7519b03fa7d9df75cd88d821a59f785df9f7f596a', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:50:53', '2024-09-03 22:50:53', '2024-09-05 04:50:53'),
('dc1a604a7bda75a9a2b70da3806c789c41d823eb481280010c76adf9cef552ffa612176d8d04ba7b', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:50:32', '2024-09-03 22:50:32', '2024-09-05 04:50:32'),
('f6226a4730968246e5d9f3f71711cb49d0eca3bf81b1db1769e68a9190e7855d3123aad27ecbd021', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:51:29', '2024-09-03 22:51:29', '2024-09-05 04:51:29'),
('faf0ac2309f61c54548a037c02924597d15cda79a3b42a49a75e6bac4045dbc6ddcf9eb6b599be6f', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', NULL, '[]', 0, '2024-09-03 22:52:52', '2024-09-03 22:52:52', '2024-09-05 04:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_auth_codes`
--

INSERT INTO `oauth_auth_codes` (`id`, `user_id`, `client_id`, `scopes`, `revoked`, `expires_at`) VALUES
('0501365ccfbf30dcc3ce6da843cd53be3808951047ba6c84e0f9f8f1c7337741401d9646c518349d', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 0, '2024-09-04 04:56:32'),
('0f52581c28b9372ee82c73660b54ce600766a23d55c5cd9c67a3b5e149a8d57596be070d7de479ec', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 05:00:52'),
('12ee11c60b23566469fd6c894f2576696c4e4ce45045be13b53490a445efe4d854a316732ce9f69e', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 05:01:28'),
('5665d902bc044fae630f058ad3e563c13ef403e493a1a62788d5cb284f601b0601db3d5386a6a90b', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 05:03:51'),
('7ae48e0189018ffd5254f7662b2408c957a524c67e09c13a09c4c9d7c99a05f8a54b6011c727d588', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 04:59:06'),
('873e1b1508213f6312e398cc266010735f39e6f12776189b59f3fbcf00cf37363a600c2bd04d5317', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 0, '2024-09-04 04:58:03'),
('a223b97f2d9f0440cd1e1604fb52d4b9958be26fbec4538716bcc0a9a18e269ea1e17ca18c84c1f3', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 05:00:31'),
('c74f6cde4fe580c207d661289435516f6d155a60d1864249cd7fb6b42801f0f8fdf6a28caf1ed59c', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 05:02:52'),
('eecb7920847e9bd6895167d02b596c29dcfac7d934da43a41fcb9eb22937645295e8cd8782c59777', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 0, '2024-09-04 04:56:57'),
('f4eb62ac20b7b9e024d4b155378215b89aee62cbd6372b49ee611004b1d1a07b58c4afd416a45e3d', 1, '9ced2b6a-50e8-4fcb-8524-c692199bfa4a', '[]', 1, '2024-09-04 04:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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
('9ced23bd-55a0-4c32-91be-9fd139357afb', NULL, 'SSO Login Server Personal Access Client', '6BMSduPnvDgAiF2xngBNGZjJpcYOkNdacjRt8g4Y', NULL, 'http://localhost', 1, 0, 0, '2024-09-03 22:13:27', '2024-09-03 22:13:27'),
('9ced23bd-5c75-4183-aa24-0c183fe935be', NULL, 'SSO Login Server Password Grant Client', 'Q7MQd1ECDEDpM3xaoyJkBhCTFSs3XbQ0pqqiFpV0', 'users', 'http://localhost', 0, 1, 0, '2024-09-03 22:13:27', '2024-09-03 22:13:27'),
('9ced2b6a-50e8-4fcb-8524-c692199bfa4a', 1, 'sso_admin', '9Zr6O6KXr1JZ5jYKh9sdLZq0pkK9HLjZiRFb055Q', NULL, 'http://127.0.0.1:8080/callback', 0, 0, 0, '2024-09-03 22:34:55', '2024-09-03 22:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9ced23bd-55a0-4c32-91be-9fd139357afb', '2024-09-03 22:13:27', '2024-09-03 22:13:27');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('24ce5706331ececa53e3a85404d17cac6c51a88cb750f220abde31718e61d18702cd5367a850d980', 'dc1a604a7bda75a9a2b70da3806c789c41d823eb481280010c76adf9cef552ffa612176d8d04ba7b', 0, '2024-10-04 04:50:32'),
('40ec27e920a3864078d46655500b1438227985bf6df070cf6c89a0f1477d0d8ec6b5a333a3651023', '409f6796d71d80d9f96dcb333d2648e1b4e182272d4f018be572039117a0cfdf9d5720da1dc62451', 0, '2024-10-04 04:48:30'),
('639b40b2b55150deb9bfa3b5a10f96d952213f7898559a77804e017b4ea77f96a1cbfc74f31b825f', '84b8c53a8d1a65522c1d178ece96cf45179d1388478c0dbbbbe07150ef073b7c874a8489559aee73', 0, '2024-10-04 04:53:52'),
('7d9a5d5a55ad2dddd6aa29e80befdaf7670ea251dddc688f062942bb32b002d06ad20ddb63632bed', 'faf0ac2309f61c54548a037c02924597d15cda79a3b42a49a75e6bac4045dbc6ddcf9eb6b599be6f', 0, '2024-10-04 04:52:52'),
('9b3d55e75c836d5abf503f6b0342a99f0e04cebe3a417cec7ee570205a01859a59ef946066251369', 'd7375b34fc6214b8cca54e5f01dfe0a95cf650c7519b03fa7d9df75cd88d821a59f785df9f7f596a', 0, '2024-10-04 04:50:53'),
('afbc4ee801430c38c620961e080f357df02493aa9e6b5416c87935e898aa557eabe412fd44d7c752', 'f6226a4730968246e5d9f3f71711cb49d0eca3bf81b1db1769e68a9190e7855d3123aad27ecbd021', 0, '2024-10-04 04:51:29'),
('e962d0ff6e554c431a2d519c72426c4f3bd13236b5fc1e80d094ebcef895c1c33deed12b0f07bd79', 'bf104897b9fb0d0d440a18ac39b0720ecf833dffb56364aa3a9cbf3265eb8f5eed6f4ecd9b01fdae', 0, '2024-10-04 04:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BuwOxF0s4KLuA93VJ5zkESXkaXH8VoyATIZHy3Vz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoia1JPcUVTREQ3cXpEQWxjbFdmbGJGdWpiQ2V3UnZEaENqYXFibXltNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjExOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvb2F1dGgvYXV0aG9yaXplP2NsaWVudF9pZD05Y2VkMmI2YS01MGU4LTRmY2ItODUyNC1jNjkyMTk5YmZhNGEmcmVkaXJlY3RfdXJpPWh0dHAlM0ElMkYlMkYxMjcuMC4wLjElM0E4MDgwJTJGY2FsbGJhY2smcmVzcG9uc2VfdHlwZT1jb2RlJnNjb3BlPSZzdGF0ZT1YUTBWcDZxSTZRWVFMQ2owejR6V214VFF5VFFHVTBHSnFZRGlPWkNoIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzI1NDI1MzA3O31zOjk6ImF1dGhUb2tlbiI7czoxNjoiak5TcXFCd0IwdTZ0SGhSYSI7czoxMToiYXV0aFJlcXVlc3QiO086NTQ6IkxlYWd1ZVxPQXV0aDJcU2VydmVyXFJlcXVlc3RUeXBlc1xBdXRob3JpemF0aW9uUmVxdWVzdCI6OTp7czoxNDoiACoAZ3JhbnRUeXBlSWQiO3M6MTg6ImF1dGhvcml6YXRpb25fY29kZSI7czo5OiIAKgBjbGllbnQiO086MzA6IkxhcmF2ZWxcUGFzc3BvcnRcQnJpZGdlXENsaWVudCI6NTp7czoxMzoiACoAaWRlbnRpZmllciI7czozNjoiOWNlZDJiNmEtNTBlOC00ZmNiLTg1MjQtYzY5MjE5OWJmYTRhIjtzOjg6InByb3ZpZGVyIjtOO3M6NzoiACoAbmFtZSI7czo5OiJzc29fYWRtaW4iO3M6MTQ6IgAqAHJlZGlyZWN0VXJpIjthOjE6e2k6MDtzOjMwOiJodHRwOi8vMTI3LjAuMC4xOjgwODAvY2FsbGJhY2siO31zOjE3OiIAKgBpc0NvbmZpZGVudGlhbCI7YjoxO31zOjc6IgAqAHVzZXIiO086Mjg6IkxhcmF2ZWxcUGFzc3BvcnRcQnJpZGdlXFVzZXIiOjE6e3M6MTM6IgAqAGlkZW50aWZpZXIiO2k6MTt9czo5OiIAKgBzY29wZXMiO2E6MDp7fXM6MjQ6IgAqAGF1dGhvcml6YXRpb25BcHByb3ZlZCI7YjoxO3M6MTQ6IgAqAHJlZGlyZWN0VXJpIjtzOjMwOiJodHRwOi8vMTI3LjAuMC4xOjgwODAvY2FsbGJhY2siO3M6ODoiACoAc3RhdGUiO3M6NDA6Imx5YXRTb0NxVGRIa0R5U0lTMks2ZEd0bmg3STk5bFdMMFRHdjN6bUUiO3M6MTY6IgAqAGNvZGVDaGFsbGVuZ2UiO047czoyMjoiACoAY29kZUNoYWxsZW5nZU1ldGhvZCI7Tjt9fQ==', 1725425452),
('i6rgok84e2IWLS78qCHh8Fn8zI1CF8CmWeVEXIuU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWkZZZ1hUTm53VHdVYTlWR2dDUWZZOENjOHlIa0tRSUhRenN4a2NYSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjExOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvb2F1dGgvYXV0aG9yaXplP2NsaWVudF9pZD05Y2VkMmI2YS01MGU4LTRmY2ItODUyNC1jNjkyMTk5YmZhNGEmcmVkaXJlY3RfdXJpPWh0dHAlM0ElMkYlMkYxMjcuMC4wLjElM0E4MDgwJTJGY2FsbGJhY2smcmVzcG9uc2VfdHlwZT1jb2RlJnNjb3BlPSZzdGF0ZT1KWXdLd0VDNnZhWmlObHZtOUNxaDdRZDAxalhCdXBWYzlnblZGSG5RIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzI1NDI1NTcyO319', 1725425572),
('JClYrRfim0tBaVgdIVIPw7VSbObcuUjMxPc2lgKS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUmdBaE1yUW9na2p2eVVabEJQUjlYWTlxbWVjUUw2VjdZMmxjQnBzaiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL29hdXRoL2F1dGhvcml6ZT9jbGllbnRfaWQ9OWNlZDJiNmEtNTBlOC00ZmNiLTg1MjQtYzY5MjE5OWJmYTRhJnJlZGlyZWN0X3VyaT1odHRwJTNBJTJGJTJGMTI3LjAuMC4xJTNBODA4MCUyRmNhbGxiYWNrJnJlc3BvbnNlX3R5cGU9Y29kZSZzY29wZT0mc3RhdGU9bHVjTjVYaHRXaTJtS0NGT0tpVXdlVk1nc2FYeTBYandxQVEzblVNVCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzI1NDI1NjMxO319', 1725425631),
('QR3exNw1jOaRxPd6IH5jKT7SRroIpAQnfD74QnW5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlYzbE1VRDc0YzlDbVZCM1FBVXQyUk82cHR1dXFuN2xQTjJEQXN1eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1725426159),
('tA8iuD1ylXEskMolxyoUcP7LZPrf41GkDAHaSAm3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaElqTEEyS2ZkUllCM1Q4Tjd5ZVBQTnhZbjVZa3daSXpJbUVjUHRVSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vYXV0aC9jbGllbnRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1725424712);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'SSO Admin', 'mehediarif.du@gmail.com', NULL, '$2y$12$8EZ55XiDckNeHXcLgS8GK.aYLzifqoKUeDx0C2bzJTVN6sc23FkSu', 'k5c1zpp3qWKAdQrNeZVdW5oUjtlVqsdj2lFqOTA753syskMng6ViaQWKnuIE', '2024-09-03 22:30:31', '2024-09-03 22:30:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
