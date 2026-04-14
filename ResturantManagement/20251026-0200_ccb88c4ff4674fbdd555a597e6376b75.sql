-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2025 at 06:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_plain` varchar(255) NOT NULL,
  `password_md5` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password_plain`, `password_md5`, `created_at`) VALUES
(11, 'TAHMIDA', 'admin@administration.com', '123', '202cb962ac59075b964b07152d234b70', '2025-10-19 15:02:27'),
(12, 'non_void', 'noid.void@gmail.com', 'admin123', '0192023a7bbd73250516f069df18b500', '2025-10-23 12:53:51'),
(14, 'Nishu', 'Nishu@gmail.com', '12345', '827ccb0eea8a706c4c34a16891f84e7b', '2025-10-25 12:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `restaurant_id`, `name`, `description`, `price`, `image`, `is_active`, `created_at`, `image_url`) VALUES
(65, 1, 'Margherita Pizza', 'Classic pizza with tomato, mozzarella, and basil.', 8.99, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1601924582975-15b9c6ebf5b3?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(66, 1, 'Pasta Carbonara', 'Creamy pasta with pancetta, egg, and parmesan.', 10.50, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1617196035442-9476b12101d2?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(67, 1, 'Bruschetta', 'Grilled bread topped with fresh tomatoes and basil.', 5.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1617196034885-bd6037f0d7f2?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(68, 1, 'Lasagna', 'Layered pasta with meat, cheese, and tomato sauce.', 12.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1604908177521-53d1c118f826?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(69, 1, 'Tiramisu', 'Classic Italian coffee-flavored dessert.', 6.50, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1603052875873-5e5c75a77ff8?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(70, 2, 'Kung Pao Chicken', 'Spicy stir-fried chicken with peanuts and vegetables.', 9.99, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1617196035448-dc6a3b0dbf69?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(71, 2, 'Sushi Platter', 'Assorted fresh sushi with wasabi and soy sauce.', 15.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1562158070-1cfae5df1f78?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(72, 2, 'Pad Thai', 'Thai stir-fried noodles with shrimp, peanuts, and lime.', 11.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(73, 2, 'Spring Rolls', 'Crispy rolls filled with vegetables and shrimp.', 5.50, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1617196035440-7e7c6d12e9b3?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(74, 2, 'Mango Sticky Rice', 'Sweet coconut sticky rice with ripe mango.', 6.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1598204508676-95e0f499d988?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(75, 3, 'Classic Cheeseburger', 'Juicy beef patty with cheddar cheese and lettuce.', 7.50, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1550547660-d9450f859349?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(76, 3, 'Bacon Burger', 'Beef burger topped with crispy bacon and cheese.', 8.50, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(77, 3, 'Veggie Burger', 'Grilled veggie patty with fresh vegetables.', 7.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1586190848837-99aa4a171e90?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(78, 3, 'Fries Combo', 'Crispy fries served with your choice of dipping sauce.', 3.50, NULL, 1, '2025-10-17 15:15:29', 'https://www.burgerfi.com/wp-content/uploads/2025/01/burgerfi-burger-with-fries-683x1024.webp'),
(79, 3, 'Milkshake', 'Creamy milkshake available in chocolate or vanilla.', 4.00, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300'),
(80, 4, 'Chocolate Cake', 'Rich and moist chocolate layered cake.', 6.50, NULL, 1, '2025-10-17 15:15:29', 'https://mojo.generalmills.com/api/public/content/QYYSZSvDmU2BEzvW_HnVkg_webp_base.webp?v=4ce198a1&t=191ddcab8d1c415fa10fa00a14351227'),
(81, 4, 'Cheesecake', 'Classic creamy cheesecake with a graham cracker crust.', 6.00, NULL, 1, '2025-10-17 15:15:29', 'https://static01.nyt.com/images/2021/11/02/dining/dg-Tall-and-Creamy-Cheesecake-copy/dg-Tall-and-Creamy-Cheesecake-threeByTwoMediumAt2X.jpg?quality=75&auto=webp'),
(82, 4, 'Ice Cream Sundae', 'Vanilla ice cream topped with chocolate sauce and nuts.', 5.50, NULL, 1, '2025-10-17 15:15:29', 'https://www.keep-calm-and-eat-ice-cream.com/wp-content/uploads/2022/08/Ice-cream-sundae-hero-10.jpg'),
(83, 4, 'Macarons', 'Colorful French macarons with assorted flavors.', 4.50, NULL, 1, '2025-10-17 15:15:29', 'https://www.allrecipes.com/thmb/WYoRkZvHCAXgaE3MzZ9oSN_9Bc8=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/223232macaronsKim4x3-97e86da8c9e849218d5b70ac93bbe5f1.jpg'),
(84, 4, 'Fruit Tart', 'Fresh fruit tart with pastry cream and seasonal fruits.', 5.50, NULL, 1, '2025-10-17 15:15:29', 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?crop=entropy&cs=tinysrgb&fit=max&h=180&w=300');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` enum('Pending','Processing','Ready','Delivered','Cancelled') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `status`, `created_at`) VALUES
(1, NULL, 5.99, 'Delivered', '2025-09-25 12:07:52'),
(2, NULL, 36.49, 'Cancelled', '2025-10-19 18:47:17'),
(3, 7, 5.50, 'Pending', '2025-10-19 18:48:07'),
(4, 7, 51.50, 'Pending', '2025-10-19 19:00:23'),
(5, 7, 11.00, 'Pending', '2025-10-19 19:00:55'),
(6, 7, 65.50, 'Pending', '2025-10-19 19:12:13'),
(7, 7, 8.50, 'Cancelled', '2025-10-19 19:13:03'),
(8, 7, 42.00, 'Delivered', '2025-10-19 19:41:56'),
(9, 7, 5.50, 'Pending', '2025-10-19 19:43:04'),
(10, 7, 60.00, 'Ready', '2025-10-19 19:49:31'),
(11, NULL, 25.00, 'Delivered', '2025-10-20 03:50:10'),
(12, NULL, 9.00, 'Delivered', '2025-10-21 17:26:33'),
(13, NULL, 24.00, 'Delivered', '2025-10-23 18:09:03'),
(14, 9, 56.00, 'Delivered', '2025-10-23 20:06:02'),
(15, 9, 6.00, 'Cancelled', '2025-10-23 20:23:52'),
(16, 9, 32.00, 'Processing', '2025-10-23 20:27:01'),
(17, NULL, 16.50, 'Pending', '2025-10-23 20:41:32'),
(18, NULL, 30.00, 'Pending', '2025-10-23 21:00:16'),
(19, 10, 40.00, 'Delivered', '2025-10-25 16:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `food_id`, `quantity`, `price`) VALUES
(2, 2, 82, 5, 5.50),
(3, 2, 65, 1, 8.99),
(4, 3, 84, 1, 5.50),
(5, 4, 75, 1, 7.50),
(6, 4, 84, 6, 5.50),
(7, 4, 72, 1, 11.00),
(8, 5, 72, 1, 11.00),
(9, 6, 72, 5, 11.00),
(10, 6, 66, 1, 10.50),
(11, 7, 76, 1, 8.50),
(12, 8, 77, 6, 7.00),
(13, 9, 84, 1, 5.50),
(14, 10, 83, 4, 4.50),
(15, 10, 81, 7, 6.00),
(16, 11, 84, 2, 5.50),
(17, 11, 78, 4, 3.50),
(18, 12, 83, 2, 4.50),
(19, 13, 81, 4, 6.00),
(20, 14, 84, 2, 5.50),
(21, 14, 83, 2, 4.50),
(22, 14, 81, 6, 6.00),
(23, 15, 81, 1, 6.00),
(24, 16, 83, 1, 4.50),
(25, 16, 84, 5, 5.50),
(26, 17, 84, 3, 5.50),
(27, 18, 81, 5, 6.00),
(28, 19, 72, 2, 11.00),
(29, 19, 81, 3, 6.00);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `address`, `created_at`, `image`, `image_url`) VALUES
(1, 'The Classic Diner', 'Comfort food and fast service', '123 Main St.', '2025-09-25 10:58:00', NULL, 'https://static.wixstatic.com/media/ba2edd_adba18daa11c48c2a74d50a8936b83f5~mv2.png/v1/fill/w_747,h_600,al_c,q_90,enc_avif,quality_auto/ba2edd_adba18daa11c48c2a74d50a8936b83f5~mv2.png'),
(2, 'Green Garden', 'Healthy and vegetarian options', '45 Park Ave.', '2025-09-25 10:58:00', NULL, 'https://images.unsplash.com/photo-1504674900247-0877df9cc836'),
(3, 'Spice Avenue', 'Authentic Indian dishes with rich flavors.', '78 Spice Street, Dhaka', '2025-10-14 06:13:03', NULL, 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092'),
(4, 'Ocean Delight', 'Fresh seafood and beach-style dining.', '22 Bay Road, Chittagong', '2025-10-14 06:13:03', NULL, 'https://s3-media0.fl.yelpcdn.com/bphoto/MCW_KaQMbwLwr7GYJdGFjw/o.jpg'),
(5, 'Chillox', 'We serve the best food in ctg', 'CTG', '2025-10-25 16:24:12', NULL, 'https://engaze-storage-prod.s3.ap-south-1.amazonaws.com/stores/64ad3a63969e2e6568e59344/home/tr-280xauto/logo_701535.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_plain` varchar(255) NOT NULL,
  `password_md5` varchar(32) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_plain`, `password_md5`, `phone`, `address`, `created_at`) VALUES
(7, 'void admin', 'admin@administration.com', '123', '202cb962ac59075b964b07152d234b70', '123456897', 'Anowara, Chatttogram, Bangladesh', '2025-10-19 18:21:24'),
(9, 'TAHMIDA', 'TAHMIDA24@GMAIL.COM', '456', '250cf8b51c773f3f8dc8b4be867a9a02', '01653218548', 'BD,CTG', '2025-10-23 20:04:33'),
(10, 'Shuktara', 'Shukatara@gmail.com', '12345', '827ccb0eea8a706c4c34a16891f84e7b', '123456789', 'BD', '2025-10-25 15:54:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
