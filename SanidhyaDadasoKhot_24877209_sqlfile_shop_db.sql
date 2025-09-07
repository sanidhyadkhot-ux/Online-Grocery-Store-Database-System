-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 12:18 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(13, 32, 'john', '9876543217', 'john@gmail.com', 'cash on delivery', 'flat no. flat number 1012 gbp crest road brisbane Queensland Australia - 2005', ', apple ( 3 ), banana ( 1 )', 17, '19-Apr-2025', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(24, 'apple', 'fruits', 'Apples are sweet, crisp fruits that are perfect for snacking.  \r\nThey come in different colors and flavors, from tart to juicy and sweet.  \r\nGreat for eating fresh, making juice, or baking into desserts.', 5, 'apple.png'),
(25, 'banana', 'fruits', 'Bananas are soft, sweet fruits that come in a yellow peel.\r\nThey’re easy to eat, great for energy, and loved by all ages.\r\nPerfect for smoothies, snacks, or baking into banana bread.', 2, 'banana.png'),
(26, 'Beef', 'meat', 'Steak is a tender, flavorful cut of meat that&#39;s rich and satisfying.  \r\nIt cooks up beautifully on a grill or pan with just a little seasoning.  \r\nGreat for a hearty meal, paired with veggies, sauces, or potatoes.', 18, 'beaf steak.png'),
(27, 'Blue Grapes', 'fruits', 'Blue grapes are juicy, sweet, and packed with a rich, fruity flavor.\r\nThey’re great for snacking, tossing into salads, or blending into smoothies.\r\nPlus, they’re full of antioxidants and make a tasty, healthy treat.', 6, 'blue grapes.png'),
(28, 'Broccoli', 'vegitables', 'Broccoli is like nature’s little green tree—crunchy stems, fluffy tops, and packed with goodness.\r\nSteam it, roast it, or toss it in a stir-fry—it soaks up flavor while keeping its signature bite.\r\nLoaded with vitamins and antioxidants, it’s a tasty way to eat clean and feel full.', 2, 'broccoli.png'),
(29, 'cabbage', 'vegitables', 'Cabbage wears layer upon layer of crisp, emerald leaves that snap satisfyingly with every bite.\r\nShred it raw for vibrant slaws, toss it into stir‑fries for a hint of sweetness, or roll it into comforting, savory parcels.', 1, 'cabbage.png'),
(30, 'Capsicum', 'vegitables', 'Capsicum, also known as bell pepper, is crunchy, colorful, and slightly sweet.\r\nIt adds a fresh bite to salads, stir-fries, and sandwiches.\r\nAvailable in green, red, and yellow—each one brings its own flavor twist.', 2, 'capsicum.png'),
(31, 'Carrot', 'vegitables', 'Carrots are crisp, sweet vegetables with a bright orange color.\r\nThey’re perfect for munching raw, tossing into stews, or blending into juices.\r\nPacked with vitamin A, they’re great for your eyes and overall health.', 3, 'carrot.png'),
(32, 'Cauliflower', 'vegitables', 'Cauliflower is a mild, versatile veggie with a soft, fluffy texture when cooked.\r\nGreat for roasting, curries, or even blending into a low-carb rice or mash.\r\nIt soaks up flavor beautifully and fits into almost any dish.', 2, 'cauliflower.png'),
(33, 'Chicken Leg piece', 'meat', 'Chicken leg pieces are juicy, flavorful cuts that are perfect for grilling, frying, or baking.\r\nThey stay tender on the inside with crispy skin when cooked right.\r\nGreat for hearty meals, weekend BBQs, or comforting curries.', 5, 'chicken leg pieces.png'),
(34, 'Chicken', 'meat', 'Chicken is a tender, versatile meat that works with just about any recipe.\r\nWhether grilled, fried, roasted, or curried, it’s always a crowd-pleaser.\r\nLight, protein-rich, and easy to cook for everyday meals.', 4, 'chicken.png'),
(35, 'Green Grapes', 'fruits', 'Green grapes are sweet, juicy, and refreshingly crisp with every bite.\r\nPerfect for snacking, tossing into fruit salads, or freezing for a cool treat.\r\nThey’re light, hydrating, and loved by kids and adults alike.', 3, 'green grapes.png'),
(36, 'Lichi', 'fruits', 'Lichi (lychee) is a juicy, fragrant fruit with a soft, sweet flesh and a floral taste.\r\nHidden beneath its rough pink skin is a tropical delight that&#39;s perfect for summer.\r\nGreat for eating fresh, adding to desserts, or blending into cool drinks.', 4, 'lichi.png'),
(37, 'Oily Fishes', 'fish', 'Oily fishes like salmon, mackerel, and sardines are rich in flavor and healthy fats.\r\nThey’re loaded with omega-3s, great for heart and brain health.\r\nPerfect for grilling, baking, or adding to hearty curries and stews.', 6, 'oily fishes.png'),
(38, 'Orange', 'fruits', 'Oranges are juicy, sweet, and bursting with refreshing citrus flavor.\r\nThey’re great for snacking, juicing, or adding a zesty twist to salads and desserts.\r\nPacked with vitamin C, they help boost your immunity and brighten your day.', 6, 'orange.png'),
(39, 'Red pepper', 'vegitables', 'Red peppers are sweet, slightly tangy, and full of bold flavor.\r\nThey’re great for roasting, stuffing, or slicing into fresh salads.\r\nA colorful way to add taste and nutrition to any meal.', 6, 'red papper.png'),
(40, 'Salmon', 'fish', 'Salmon fish is rich, tender, and full of natural flavor with a buttery texture.\r\nIt’s perfect for grilling, baking, or pan-searing with simple herbs and lemon.\r\nLoaded with omega-3 fatty acids, it’s both delicious and heart-healthy.', 15, 'semon fish.png'),
(41, 'Stwarberry', 'fruits', 'Strawberries are bright red, juicy, and naturally sweet with a hint of tartness.\r\nPerfect for snacking, blending into smoothies, or topping desserts.\r\nThey’re rich in vitamin C and bring a burst of freshness to every bite.', 8, 'strawberry.png'),
(42, 'Tomato', 'vegitables', 'Tomatoes are juicy, tangy, and a kitchen essential in almost every cuisine.\r\nThey’re perfect for sauces, salads, soups, or just slicing fresh on toast.\r\nFull of vitamins and antioxidants, they add both flavor and nutrition to meals.', 3, 'tomato.png'),
(43, 'Watermelon', 'fruits', 'Watermelon is a sweet, refreshing fruit packed with juicy goodness.\r\nPerfect for hot days, it&#39;s hydrating and loved by all ages.\r\nGreat for snacking, making juices, or adding to fruit salads.', 6, 'watermelon.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'admin', 'admin@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'admin', 'download (1).png'),
(32, 'user', 'user@gmail.com', 'ba5ef51294fea5cb4eadea5306f3ca3b', 'user', 'images.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
