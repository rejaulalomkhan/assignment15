-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220627.78b2c1f4eb
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 27, 2023 at 05:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_26_151944_create_products_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `image`, `status`, `brand`, `sku`, `created_at`, `updated_at`) VALUES
(1, 'Maud Kiehn', 'Non nesciunt dolor ut laboriosam distinctio.', '26.38', 38, 'https://via.placeholder.com/640x480.png/0077ee?text=officia', 1, 'molestiae', '590732', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(2, 'Samara Champlin', 'Similique error officia dicta voluptatum exercitationem minus sequi.', '60.53', 30, 'https://via.placeholder.com/640x480.png/0099ee?text=in', 0, 'quos', '470836', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(3, 'Haylie Stokes', 'Vitae voluptas quia sit ut velit ut voluptatem.', '76.50', 41, 'https://via.placeholder.com/640x480.png/002211?text=iusto', 1, 'rerum', '413660', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(4, 'Greg Koch', 'Quibusdam nemo iusto et nihil id.', '32.69', 10, 'https://via.placeholder.com/640x480.png/0066bb?text=quaerat', 1, 'consequuntur', '126278', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(5, 'Pascale Luettgen', 'Quia voluptatibus labore facere dolor.', '10.66', 5, 'https://via.placeholder.com/640x480.png/00ee77?text=voluptas', 0, 'eligendi', '476068', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(6, 'Celestino Willms', 'Maiores in aut et eligendi.', '48.11', 99, 'https://via.placeholder.com/640x480.png/00cc55?text=est', 1, 'neque', '883232', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(7, 'Ernestine Zboncak', 'Nemo quasi aut aperiam.', '88.70', 86, 'https://via.placeholder.com/640x480.png/0077aa?text=voluptas', 1, 'quisquam', '12046', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(8, 'Schuyler Cummings', 'Voluptatem magni maxime suscipit et.', '30.25', 37, 'https://via.placeholder.com/640x480.png/0033dd?text=nisi', 1, 'et', '899985', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(9, 'Viola Rau', 'Voluptatem eveniet molestiae molestiae sunt quasi temporibus voluptate quo.', '21.59', 8, 'https://via.placeholder.com/640x480.png/009999?text=aut', 0, 'in', '893580', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(10, 'Sydnee Grady', 'Est est perferendis et officiis quia molestiae quo.', '25.26', 93, 'https://via.placeholder.com/640x480.png/0000ff?text=molestias', 1, 'consequuntur', '490519', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(11, 'Kameron Boyer', 'Et adipisci sed ducimus aut occaecati id voluptatem.', '27.09', 31, 'https://via.placeholder.com/640x480.png/001199?text=laboriosam', 1, 'ipsa', '527774', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(12, 'Haylie Dooley MD', 'Corporis hic libero id qui sit.', '74.25', 63, 'https://via.placeholder.com/640x480.png/00ffff?text=dignissimos', 1, 'et', '281822', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(13, 'Sven Harris', 'Iure rerum voluptatem animi sint adipisci nulla.', '72.21', 71, 'https://via.placeholder.com/640x480.png/00aa44?text=id', 0, 'hic', '775598', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(14, 'Theron Tromp MD', 'Optio quisquam facere et ipsum perspiciatis ab.', '75.43', 49, 'https://via.placeholder.com/640x480.png/003399?text=doloremque', 0, 'sit', '213450', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(15, 'Myrl Cruickshank', 'Maxime facilis delectus non nulla iure.', '91.61', 78, 'https://via.placeholder.com/640x480.png/008866?text=commodi', 0, 'molestiae', '215937', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(16, 'Elton Conn', 'Laudantium corrupti enim et.', '8.33', 10, 'https://via.placeholder.com/640x480.png/001166?text=natus', 1, 'fugiat', '581082', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(17, 'Luther Roberts', 'Repudiandae accusamus vitae corrupti recusandae laboriosam.', '37.43', 59, 'https://via.placeholder.com/640x480.png/009977?text=quas', 1, 'in', '469996', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(18, 'Sydnie Ledner', 'Enim esse quia numquam vitae id et.', '76.18', 94, 'https://via.placeholder.com/640x480.png/00cc33?text=asperiores', 1, 'consequatur', '241888', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(19, 'Dr. Cesar Dickinson Sr.', 'Iusto et porro ratione aut.', '88.24', 93, 'https://via.placeholder.com/640x480.png/0033cc?text=deleniti', 1, 'qui', '805953', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(20, 'Richie Gaylord', 'Et eum sint dolorem dolore aut iste eligendi.', '41.06', 62, 'https://via.placeholder.com/640x480.png/0077cc?text=quo', 1, 'velit', '139680', '2023-05-27 01:05:08', '2023-05-27 01:05:08'),
(21, 'Infinix Smart 7 (4/64GB) Mobile', NULL, '1066.00', 10, NULL, 1, NULL, NULL, '2023-05-27 03:18:55', '2023-05-27 05:26:45'),
(22, 'An Awesome Pen', NULL, '28.11', 11, NULL, 1, NULL, NULL, '2023-05-27 04:43:51', '2023-05-27 04:43:51');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



