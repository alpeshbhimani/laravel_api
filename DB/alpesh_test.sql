-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 08:18 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpesh_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `street3` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `street1`, `street2`, `street3`, `city`, `postcode`, `state_id`) VALUES
(1, 'Tony', 'Floor 42, Room 7', 'Stark Industries', NULL, 'New York', '1234', 7),
(2, 'Thor', 'The Citadel', 'Middle of the city', NULL, 'Asgard', '5678', 2),
(3, 'Charles', 'Xavier\'s School for Gifted Youngsters', '1 One Way', NULL, 'Western Massachusetts', '9012', 4);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Australia');

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
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `active_from` datetime NOT NULL,
  `active_thru` datetime DEFAULT NULL,
  `is_primary` int(1) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `person_id`, `email`, `email_verified_at`, `password`, `remember_token`, `active_from`, `active_thru`, `is_primary`, `created_at`, `updated_at`) VALUES
(1, 1, 'tony@stark.com', NULL, '$2y$10$lczKV0rN75CpIKLkDYAaBewEWy6c5xS84mRIFgedMpXb2kBXss8eK', NULL, '2014-01-01 00:00:00', NULL, 1, NULL, NULL),
(2, 2, 'thecap@marvel.com', NULL, '$2y$10$lczKV0rN75CpIKLkDYAaBewEWy6c5xS84mRIFgedMpXb2kBXss8eK', NULL, '2013-12-25 00:00:00', '2014-01-01 00:00:00', 1, NULL, NULL),
(8, 8, 'charles@xmen.com', NULL, '$2y$10$lczKV0rN75CpIKLkDYAaBewEWy6c5xS84mRIFgedMpXb2kBXss8eK', NULL, '2014-02-01 00:00:00', NULL, NULL, NULL, NULL);

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
('1354305d3e714e61c0dc4ac94bf55341c99b5b94606f0d007d34a4d211bd69f0cc8ad875c316bb50', 8, 1, 'API Token', '[]', 0, '2022-07-01 00:47:33', '2022-07-01 00:47:33', '2023-07-01 06:17:33'),
('3da0715db3425319ab2c3daf2df2ff8834bce3f58c28e05c1b82d542b7d936c0afb423deadd4706b', 1, 1, 'API Token', '[]', 1, '2022-06-30 22:52:27', '2022-06-30 22:52:27', '2023-07-01 04:22:27'),
('530982582b799af3a80ec5c8d2214255fda515ea1c39103e97f4ddf1eb8299f356fe3bdfed702287', 1, 1, 'API Token', '[]', 0, '2022-06-30 09:43:12', '2022-06-30 09:43:12', '2023-06-30 15:13:12'),
('6948cab3ae94a7cd528efefb696d4660aa1a0acdda664dde6460934b6e2336d6e0af7acc614b58c8', 1, 1, 'API Token', '[]', 0, '2022-06-30 23:20:54', '2022-06-30 23:20:54', '2023-07-01 04:50:54'),
('836f29cce2c95d46f367b7c7acdeb2fa01ca7c235fb669f2784b4acce6e75c7e0061894038e239ed', 8, 1, 'API Token', '[]', 0, '2022-07-01 00:47:27', '2022-07-01 00:47:27', '2023-07-01 06:17:27'),
('913d42bafee9fe6b44306e1464fe9fb0970d44881c66ce615900125b0fcb46818e974724ef2e57f7', NULL, 1, 'API Token', '[]', 0, '2022-06-30 10:02:01', '2022-06-30 10:02:01', '2023-06-30 15:32:01'),
('c67582cf767f10a9aca09837b45fe8d710fbe5321dbf191b1f424bf7e338fc119e4eb68a665313ed', 8, 1, 'API Token', '[]', 0, '2022-07-01 00:41:19', '2022-07-01 00:41:19', '2023-07-01 06:11:19'),
('d76999ff366a2b40e5a59ebca72e7ae571d09367e5dd2d4cc9752b01758ab1626d8c79bd19a74226', 2, 1, 'API Token', '[]', 0, '2022-06-30 23:23:55', '2022-06-30 23:23:55', '2023-07-01 04:53:55'),
('d8413b17cfad917f87c75aa0e3b2e80a88be23d8d01d0f48f432f768130e73ed1b31bb1e2910525d', 1, 1, 'API Token', '[]', 1, '2022-06-30 09:26:11', '2022-06-30 09:26:11', '2023-06-30 14:56:11');

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
(1, NULL, 'Laravel Personal Access Client', 'Q1q3lyYw2nSQolTWreObrWsX02xcjwGLPRMWULBT', NULL, 'http://localhost', 1, 0, 0, '2022-06-30 08:10:43', '2022-06-30 08:10:43'),
(2, NULL, 'Laravel Password Grant Client', 'D19hcBYt9tdKLsKfHs2hmtF6mW4rWGV9Wn8NnUzB', 'users', 'http://localhost', 0, 1, 0, '2022-06-30 08:10:43', '2022-06-30 08:10:43');

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
(1, 1, '2022-06-30 08:10:43', '2022-06-30 08:10:43');

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
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`) VALUES
(1, 'Iron Man'),
(2, 'Captain America'),
(3, 'Thor'),
(4, 'Black Widow'),
(5, 'Wolverine'),
(6, 'Storm'),
(7, 'Rogue'),
(8, 'Professor X');

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
(1, 'App\\Models\\User', 1, 'Laravel Password Grant Client', '44e33a93e6d1fb3754792168ca67b3c86b7ceb9cf2359477911ab050ff6d4a74', '[\"*\"]', NULL, '2022-06-30 08:32:58', '2022-06-30 08:32:58'),
(2, 'App\\Models\\User', 1, 'Testing API', '9ac509414fe5e7b8899081441f7bdc14c9b1c3f1410414603efd7259cd0d58b5', '[\"*\"]', NULL, '2022-06-30 08:36:55', '2022-06-30 08:36:55'),
(3, 'App\\Models\\User', 1, 'Testing API', '159cf9e04c1f7bc81758b2461f255d0d1bf35c47a2b3b70dcba708c870bd2bce', '[\"*\"]', NULL, '2022-06-30 08:55:11', '2022-06-30 08:55:11'),
(4, 'App\\Models\\User', 1, 'Testing API', '4a873a686261943128f1e5832b1b2383223876794935828240d5c16aa18a5c09', '[\"*\"]', NULL, '2022-06-30 08:56:06', '2022-06-30 08:56:06'),
(5, 'App\\Models\\User', 1, 'API Token', '123323f1ca5b83cf90bc7a2a516c911b894fa247dd00f65d04e714dd0b2e7d78', '[\"*\"]', NULL, '2022-06-30 09:00:52', '2022-06-30 09:00:52'),
(6, 'App\\Models\\User', 1, 'API Token', '1f3c5f615976126036e0803f62b6582032009112f72fde35af0b8046583dec31', '[\"*\"]', NULL, '2022-06-30 09:03:10', '2022-06-30 09:03:10'),
(7, 'App\\Models\\User', 1, 'API Token', 'fefe7bc281fa74b26d187eb7feee2dcb4890eee024a840a87a391de90ba55a19', '[\"*\"]', NULL, '2022-06-30 09:03:39', '2022-06-30 09:03:39'),
(8, 'App\\Models\\User', 1, 'API Token', '7bd062928c1ac150b81744b08269780f47b6c70b76f1207a18112bd3a9c1fead', '[\"*\"]', NULL, '2022-06-30 09:05:35', '2022-06-30 09:05:35'),
(9, 'App\\Models\\User', 1, 'API Token', '3ab9f1dc308b007a5576be4d0964cb97f532f1b0b935f02cd49e5f13213fa101', '[\"*\"]', NULL, '2022-06-30 09:06:13', '2022-06-30 09:06:13'),
(10, 'App\\Models\\User', 1, 'API Token', 'ac0b54ccbf6d782e16459ea398f3c30f3d14ed09516e02f1f9bf707a8bef617d', '[\"*\"]', NULL, '2022-06-30 09:24:11', '2022-06-30 09:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `person_address`
--

CREATE TABLE `person_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL,
  `active_from` datetime NOT NULL,
  `active_thru` datetime DEFAULT NULL,
  `is_primary` int(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_address`
--

INSERT INTO `person_address` (`id`, `person_id`, `address_id`, `active_from`, `active_thru`, `is_primary`) VALUES
(1, 1, 1, '2014-01-01 00:00:00', NULL, 1),
(2, 3, 2, '2014-10-01 00:00:00', NULL, NULL),
(3, 8, 3, '2013-07-20 11:59:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country_id`, `name`) VALUES
(1, 1, 'ACT'),
(2, 1, 'NSW'),
(3, 1, 'NT'),
(4, 1, 'QLD'),
(5, 1, 'SA'),
(6, 1, 'TAS'),
(7, 1, 'VIC'),
(8, 1, 'WA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`,`email`) USING BTREE;

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
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `person_address`
--
ALTER TABLE `person_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `person_address`
--
ALTER TABLE `person_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
