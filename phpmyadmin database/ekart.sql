-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2022 at 10:23 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 2, 5, '2022-04-06 23:20:16', '2022-04-06 23:20:16');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_03_06_184556_create_users_table', 1),
(3, '2022_03_06_191526_create_products_table', 1),
(4, '2022_03_06_203703_create_cart_table', 1),
(5, '2022_03_07_140449_create_orders_table', 1),
(6, '2022_03_07_200437_create_products2_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'pending', 'Online', 'pending', 'hhhh', NULL, NULL),
(2, 1, 1, 'pending', 'Online', 'pending', 'hhhh', NULL, NULL),
(3, 1, 1, 'pending', 'cash', 'pending', '1', NULL, NULL),
(4, 1, 4, 'pending', 'cash', 'pending', 'gorakhpur', NULL, NULL),
(5, 1, 5, 'pending', 'cash', 'pending', 'gorakhpur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Realme', '20rs', 'Phone', 'high performance', 'https://i0.wp.com/gizmologi.id/wp-content/uploads/2022/02/realme-9-Pro-001-1.jpg', NULL, NULL),
(2, 'Boat Headphones', '100$', 'Sounds', 'Super Bass Headphones', 'https://m.media-amazon.com/images/S/aplus-media-library-service-media/682418e5-2fb9-4577-8bf7-1d129e64bc65.__CR0,67,1024,633_PT0_SX970_V1___.png', NULL, NULL),
(3, 'Nikon Camera', '200$', 'Photos', 'Ultra HD Camera', 'https://www.cameralabs.com/wp-content/uploads/2019/08/coolpix_b600_header-1920x1223.jpg', NULL, NULL),
(4, 'Puma T-Shirt', '20$', 'clothes', 'Branded Soft and comfy T-shirt', 'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/530896/02/fnd/IND/fmt/png/PUMA-International-Printed-Kid\'s---T-shirt', NULL, NULL),
(5, 'I-Phone mini', '300$', 'Phones', 'Secured and safe Phone', 'https://www.apple.com/newsroom/images/product/iphone/standard/apple_iphone-12-spring21_lp_us_04202021.jpg.landing-big_2x.jpg', NULL, NULL),
(6, 'Skybags', '50$', 'Bags', 'Heavy Duty bag', 'https://cdn.shopify.com/s/files/1/0508/5262/6598/files/Skybag-05_992x612.png?v=1635757527', NULL, NULL),
(8, 'Lenovo', '200$', 'Laptops', '8Gb Gaming laptop', 'https://www.windowscentral.com/sites/wpcentral.com/files/styles/xlarge_wm_brb/public/field/image/2021/01/lenovo-thinkpad-x1-titanium-yoga-hero.jpg', NULL, NULL),
(9, 'TCL TV', '300$', 'Television', 'Super HD TV', 'https://www.tcl.com/usca/content/dam/tcl/products/home-theater/6-series-cat-hero-1.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products2`
--

CREATE TABLE `products2` (
  `id` bigint UNSIGNED NOT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products2`
--

INSERT INTO `products2` (`id`, `name2`, `price2`, `category2`, `description2`, `gallery2`, `created_at`, `updated_at`) VALUES
(1, 'realme 2', '23456', 'phone', 'sdf', 'https://images.news18.com/ibnlive/uploads/2022/03/realme-9-pro-featured-16475051963x2.jpg?impolicy=website&width=510&height=356', NULL, NULL),
(2, 'Boat Headphones', '100$', 'Sounds', 'Super Bass Headphones', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.in%2FBoat-Rockerz-400-Bluetooth-Headphones%2Fdp%2FB01J82IYLW&psig=AOvVaw2_EE_-KOadnya1_gh-dkju&ust=1646770480418000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNChiKLotPYCFQAAAAAdAAAAABAD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Shubham Singh', 'shubhamsingh091234@gmail.com', '$2y$10$iYnRGrJ1AolbOcAbKiCOxeLLrVysv6QMzzaoNEphT34gBHHh6KpRS', NULL, NULL),
(2, 'Aman Singh', 'amansingh091234@gmail.com', '$2y$10$7zkQMnUoh9APqIp9A5QZxeONvFkKtQY726rA0vcIQ9G14PSOfVwAy', NULL, NULL),
(3, 'Satyam', 'student1@gmail.com', '$2y$10$aJWmR8O2RdNw8iOuSYTADuWG18WdUWiGRQ8walDHKvVJe95SBR7mK', '2022-04-04 14:24:26', '2022-04-04 14:24:26'),
(4, 'singh', 'admin@gmail.com', '$2y$10$OOAWT48/klw0Y8AirWyNp.b2zCwEa2yCOSB0MSVQIg7DIXzqBB8mq', '2022-04-06 13:30:48', '2022-04-06 13:30:48'),
(5, 'shubham singh', 'singh@gmail.com', '$2y$10$5kYHMWIotMCfmcpQmFfnKeUwO7TjA8rT/H9FRKp/oeSay/XNwBlv6', '2022-04-06 23:17:34', '2022-04-06 23:17:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products2`
--
ALTER TABLE `products2`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products2`
--
ALTER TABLE `products2`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
