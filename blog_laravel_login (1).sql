-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2025 at 12:55 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_laravel_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'pending',
  `count_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT 'It count user is active or not & count number of user in database & show in dashboard\r\n0 = Inactive\r\n1 = Active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `type`, `title`, `description`, `image`, `status`, `count_status`, `created_at`, `updated_at`) VALUES
(192, 'page', 'Trend Tapestry', 'Chic Chronicles', '1737438560.jpg', 'active', '1', '2025-01-21 11:19:20', '2025-01-21 11:19:20'),
(110, 'page1', 'Education Blog', 'Focuses on learning resources.', '111736603376.webp', 'active', '1', '2025-01-07 13:51:14', '2025-01-11 19:19:36'),
(109, 'page2', 'Personal Finance Blog', 'Provides tips on saving.', '111736603391.webp', 'active', '1', '2025-01-07 12:58:55', '2025-01-11 19:19:51'),
(111, 'page6', 'Parenting and Family Blog', 'Shares advice on parenting, child development, family activities.', '111736603406.webp', 'active', '1', '2025-01-07 13:51:26', '2025-01-11 19:20:06'),
(112, 'page5', 'Health and Fitness Blog', 'Covers workout routines, diet plans, wellness tips, and mental health topics.', '111736603420.webp', 'active', '1', '2025-01-07 13:51:44', '2025-01-11 19:20:20'),
(114, 'viewlist', 'Fashion and Lifestyle Blog', 'Focuses on fashion trends, styling tips, beauty routines.', '111736603433.webp', 'active', '1', '2025-01-07 14:28:17', '2025-01-11 19:20:33'),
(115, 'viewlist', 'Technology Blog', 'Covers gadgets, software reviews, tech trends, and innovations.', '131736770837.webp', 'active', '1', '2025-01-07 14:28:30', '2025-01-13 17:50:37'),
(116, 'viewlist', 'Travel Blog test', 'Documents travel experiences, destination guides, itineraries, and travel tips', '111736603464.webp', 'active', '1', '2025-01-07 14:28:42', '2025-02-10 13:36:18'),
(117, 'viewlist', 'Business and Entrepreneurship Blog', 'Provides insights into starting and managing businesses.', '111736603496.jpg', 'active', '1', '2025-01-07 14:28:54', '2025-01-11 19:21:36'),
(118, 'viewlist', 'Entertainment Blog', 'Covers movies, TV shows, celebrity news, and pop culture.', '111736603509.jpg', 'active', '1', '2025-01-07 14:29:09', '2025-01-11 19:21:49'),
(119, 'viewlist', 'Food Blog', 'What is your Favorite Food.', '111736603521.webp', 'active', '1', '2025-01-07 14:29:19', '2025-01-11 19:22:01'),
(120, 'viewlist', 'Nature Blog', 'Find the best destination', '111736603535.webp', 'inactive', '1', '2025-01-07 14:29:30', '2025-03-19 13:39:33'),
(194, 'viewblog', 'fsdsds', 'sdsdssd', '1742455131.png', 'active', '1', '2025-03-20 12:48:51', '2025-03-20 12:48:51'),
(196, 'viewblog', 'google', 'foofle crome', '1742822634.png', 'active', '1', '2025-03-24 18:53:54', '2025-03-24 18:53:54'),
(193, 'viewblog', 'asdfgh', 'asdfgh', '1742299125.png', 'pending', '1', '2025-03-18 17:28:45', '2025-03-18 17:28:54'),
(182, 'viewblog', 'Stronger Self Blog', 'Thrive Time', '1737438134.jpg', 'active', '1', '2025-01-21 11:12:14', '2025-01-21 11:12:14'),
(183, 'viewblog', 'Peak Potential Path', 'Move & Motivate', '1737438152.webp', 'active', '1', '2025-01-21 11:12:32', '2025-01-21 11:12:32'),
(184, 'viewblog', 'The Healthy Hustle', 'Vital Vibes', '1737438172.jpg', 'active', '1', '2025-01-21 11:12:52', '2025-01-21 11:12:52'),
(185, 'viewblog', 'Nourish Notes', 'Glow-Up Journey', '1737438191.jpg', 'active', '1', '2025-01-21 11:13:11', '2025-01-21 11:13:11'),
(186, 'viewblog', 'Journey Jotter', 'Passport Pages', '1737438211.jpg', 'active', '1', '2025-01-21 11:13:31', '2025-01-21 11:13:31'),
(187, 'viewblog', 'Wanderlust Tales', 'The Nomad Notes', '1737438227.jpeg', 'active', '1', '2025-01-21 11:13:47', '2025-01-21 11:13:47'),
(188, 'viewblog', 'Globe-Trotter Gazette', 'Beyond Boundaries', '1737438255.webp', 'active', '1', '2025-01-21 11:14:15', '2025-01-21 11:14:15'),
(173, 'viewblog', 'Beyond Borders Blog', 'Wander & Wonder', '1737437595.jpeg', 'active', '1', '2025-01-21 11:03:15', '2025-01-21 11:03:15'),
(174, 'viewblog', 'Dreamers’ Digest', 'Creative Chronicles', '1737437616.webp', 'active', '1', '2025-01-21 11:03:36', '2025-01-21 11:03:36'),
(175, 'viewblog', 'Inspire & Aspire', 'Blissful Escapes', '1737437637.jpg', 'active', '1', '2025-01-21 11:03:57', '2025-01-21 11:03:57'),
(176, 'viewblog', 'Daily Dose Journal', 'Infinite Explorations', '1737437693.jpg', 'active', '1', '2025-01-21 11:04:53', '2025-01-21 11:04:53'),
(177, 'viewblog', 'Living Letters', 'Serendipity Stories', '1737437711.jpg', 'active', '1', '2025-01-21 11:05:11', '2025-01-21 11:05:11'),
(178, 'viewblog', 'Urban Odyssey', 'Passion Projects Blog', '1737437735.jpg', 'active', '1', '2025-01-21 11:05:35', '2025-01-21 11:05:35'),
(190, 'viewblog', 'The Life Edit', 'Graceful Grind', '1737438518.webp', 'active', '1', '2025-01-21 11:18:38', '2025-01-21 11:18:38'),
(189, 'viewblog', 'Map My Memories', 'The Adventurer’s Atlas', '1737438292.jpg', 'active', '1', '2025-01-21 11:14:52', '2025-01-21 11:14:52'),
(179, 'viewblog', 'Rustic Reverie', 'The Pursuit of Wonder', '1737437754.jpeg', 'active', '1', '2025-01-21 11:05:54', '2025-01-21 11:05:54'),
(180, 'viewblog', 'Everyday Elevation', 'My Curated World', '1737437774.jpg', 'active', '1', '2025-01-21 11:06:14', '2025-01-21 11:06:14'),
(181, 'viewblog', 'Fit & Fabulous', 'Wellness Wonders', '1737437796.jpg', 'active', '1', '2025-01-21 11:06:36', '2025-01-21 11:06:36'),
(195, 'viewlist', 'asassasas', 'asasasasas', '1742455159.png', 'pending', '1', '2025-03-20 12:49:19', '2025-03-20 12:49:19'),
(191, 'viewblog', 'Beautifully Balanced', 'Mindful Moments', '1737438537.jpg', 'active', '1', '2025-01-21 11:18:57', '2025-01-21 11:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

DROP TABLE IF EXISTS `cruds`;
CREATE TABLE IF NOT EXISTS `cruds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dob` date NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cruds`
--

INSERT INTO `cruds` (`id`, `full_name`, `dob`, `state`, `contact`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'rishab', '2024-12-05', 'JK', 7979333, 'undertekar@gmail.com', 's', '2024-12-28 16:15:12', '2024-12-28 16:15:12'),
(2, 'hhh', '2024-12-05', 'JK', 7979333, 'undertekar@gmail.com', 'hhh', '2024-12-22 15:47:22', '2024-12-22 15:47:22'),
(3, 'brock', '2024-12-04', 'HP', 7979333, 'brock@gmail.com', 'Brock', '2024-12-23 06:34:08', '2024-12-23 06:34:08'),
(9, 'brock', '2024-12-03', 'HP', 7979333, 'as8439260@gmail.com', '1111111', '2024-12-31 08:22:20', '2024-12-31 08:22:20'),
(4, 'brock', '2024-12-20', 'HP', 7979333, 'singh', '1111111', '2024-12-23 12:40:24', '2024-12-23 12:40:24'),
(5, 'brock', '2024-12-04', 'HP', 7979333, 'singh', '1111111', '2024-12-24 07:15:33', '2024-12-24 07:15:33'),
(6, 'sachin', '1211-12-12', 'JH', 787844, 'sachin@gmail.com', 'sachin', '2024-12-26 05:25:20', '2024-12-26 05:25:20'),
(7, 'jjj', '2024-12-04', 'LA', 2323232, 'singh', '1111111', '2024-12-27 18:06:30', '2024-12-27 18:06:30'),
(8, 'jjj', '2024-12-11', 'LA', 2323232, 'singh', '1111111', '2024-12-28 16:14:20', '2024-12-28 16:14:20'),
(10, 'brock', '2024-12-02', 'HP', 7979333, 'singh', '1111111', '2024-12-31 12:30:37', '2024-12-31 12:30:37'),
(11, 'brock', '2025-01-01', 'HP', 7979333, 'singh', '1111111', '2025-01-02 05:23:21', '2025-01-02 05:23:21'),
(12, 'zuck', '2024-12-31', 'HP', 2323232, 'cena brock', 'AFGnaMsvEyd!rt2', '2025-01-09 11:11:45', '2025-01-09 11:11:45'),
(13, 'cena brock', '2024-12-31', 'DL', 234354, 'cena brock', 'AFGnaMsvEyd!rt2', '2025-01-13 11:41:43', '2025-01-13 11:41:43'),
(14, 'Ajay Singh', '3748-07-31', 'DL', 383838, 'ajay@gmail.com', 'ajay', '2025-01-17 10:30:30', '2025-01-17 10:30:30'),
(15, 'ajay', '0047-06-04', 'JH', 464646, 'rishab@gmail.com', 'dffd', '2025-01-18 18:06:05', '2025-01-18 18:06:05'),
(20, 'new customer', '2025-03-14', 'HR', 990000000, 'ajay@gmail.com', 'bfgfcgvf', '2025-03-19 13:00:47', '2025-03-19 13:00:47'),
(17, 'jonh cena', '2025-01-09', 'HR', 7979333, 'wwe@gmail.com', '12345', '2025-01-21 11:07:29', '2025-01-21 11:07:29'),
(18, 'ajay singh', '0111-11-11', 'DL', 7854545, 'delhi@gmail.com', 'delhi', '2025-03-18 08:48:41', '2025-03-18 08:48:41'),
(19, 'sfdasd', '2025-02-24', 'HR', 4233, 'wwe@gmail.com', 'erere', '2025-03-18 11:14:38', '2025-03-18 11:14:38'),
(21, 'ajay', '2025-02-26', 'HR', 99, 'ed.sanchez@gmail.com', 'sdsds', '2025-03-20 06:38:57', '2025-03-20 06:38:57'),
(22, 'ajay', '2025-02-26', 'HR', 990000000, 'ed.sanchez@gmail.com', 'dfdfd', '2025-03-20 06:40:08', '2025-03-20 06:40:08'),
(23, 'car', '2025-02-26', 'HR', 990000000, 'ajay@gmail.com', ' xcxcxcx', '2025-03-20 07:21:21', '2025-03-20 07:21:21'),
(24, 'today twenty', '0009-05-02', 'DL', 454545, 'admin@gmail.com', 'sdfghjkl;`', '2025-03-20 10:53:18', '2025-03-20 10:53:18'),
(25, 'check', '2025-03-05', 'JH', 990000000, 'ed.sanchez@gmail.com', 'ddsdfdf', '2025-03-20 11:38:57', '2025-03-20 11:38:57'),
(26, 'sunil', '2025-03-07', 'HP', 65677777, 'ajay@gmail.com', '1234', '2025-03-31 13:32:47', '2025-03-31 13:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `dob`, `email`, `contact`, `password`, `created_at`, `updated_at`) VALUES
(1, 'new customer', '0055-05-04', 'customer@gmail.com', 45785, '$2y$10$mpGIxGY0NyrM8h6dnt/eUOO0o3lZh80zE573yXUHrPvrN3UimLwA2', '2025-01-20 06:12:54', '2025-01-20 06:12:54'),
(2, 'car', '0088-08-09', 'car@gmail.com', 474643, '$2y$10$Cm7d9XydesgfKcQBqVQkLeFAXXUKDK05uxBqWmt6u7Z8ry5XvOJTO', '2025-01-20 06:38:57', '2025-01-20 06:38:57'),
(3, 'ajay', '0068-08-08', 'ajay@gmail.com', 78657, '$2y$12$9Dnf.oMGiBdlAFjAmxhIzui08AbFEchk30r8.HE8pkAYWOBswG7RW', '2025-01-23 08:03:13', '2025-01-23 08:03:13'),
(4, 'google', '0013-12-12', 'google@gmail.com', 2323244, '$2y$10$hj5hGzoHXZlQePtnGJX5AOfEZ5xFBGeDT2ORuV9sP8ejF0sGt2tia', '2025-01-23 05:10:41', '2025-01-23 05:10:41'),
(5, 'check', '2006-01-10', 'check@gmail.com', 232324, '$2y$10$GxFCay0HfKbpFDhRreA5ROTDuQqzf4XHqCOrn0iYFoEgydRMQVb/O', '2025-01-23 05:31:50', '2025-01-23 05:31:50'),
(6, 'ai', '0078-06-07', 'ai@gmail.com', 2323231, '$2y$10$CQrB7hcQeKAFSiIXJ7Zh9uB6ras91YUzDoLU44ky9CyXA17zuKrX6', '2025-01-23 06:11:37', '2025-01-23 06:11:37'),
(7, 'ajay', '0054-04-12', 'ajay@gmail.com', 6757587, '$2y$10$k40nSTGpd5qh4T388/CMSe01UOmqtAQoB.xZ7RE/sA6jQwWD/A9TO', '2025-01-23 07:53:40', '2025-01-23 07:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `fblogs`
--

DROP TABLE IF EXISTS `fblogs`;
CREATE TABLE IF NOT EXISTS `fblogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_group` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `status` enum('active','inactive','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'pending',
  `count_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fblogs`
--

INSERT INTO `fblogs` (`id`, `type`, `user_group`, `agency`, `first_name`, `last_name`, `email`, `contact`, `status`, `count_status`, `created_at`, `updated_at`) VALUES
(34, 'page', 'today This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We\'ll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.', 'Additional', 'Anil', 'Sharma', 'anil@gmail.com', 3434353, 'active', '1', '2025-02-13 10:27:24', '2025-02-13 10:27:24'),
(29, 'page1', 'Blockquotes This is an example blockquote in action:  Quoted text goes here.  This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We\'ll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.', 'Example', 'Rohit', 'Verma', 'rohit@gmail.com', 88787834, 'active', '1', '2025-01-22 07:44:04', '2025-01-22 07:44:04'),
(28, 'page2', 'From home decor to artworks and fashion design - this template offers an excellent start for all professionals whose work has a strong aesthetic and visual component. Whether you offer consulting services or promote your own creations, use this template to captivate audiences with bold colors and larger-than-life images. It provides you with plenty of space to portray your skills in both text and visuals. Plus, it includes an ‘About page’ that introduces your team and flaunts your success stories with testimonials.', 'Fashion', 'Virat', 'Kohli', 'virat@gmail.com', 213434343, 'active', '1', '2025-01-22 07:44:43', '2025-01-22 07:44:43'),
(27, 'page3', 'Inline HTML elements this is blog', 'Element', 'Deepak', 'Yadav', 'deepak@gmail.com', 21454575, 'active', '1', '2025-01-22 07:45:34', '2025-01-22 07:45:34'),
(32, 'page4', 'This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We\'ll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.', 'Book', 'Narendra', 'Singh', 'narendra@gmail.com', 333333343, 'active', '1', '2025-01-22 07:46:34', '2025-01-22 07:46:34'),
(25, 'page7', 'This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We\'ll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.  Example code block This is some additional paragraph placeholder content. It\'s a slightly shorter version of the other highly repetitive body text used throughout.', 'Wallet', 'Roman', 'Singh', 'roman@gmail.com', 21343432, 'active', '1', '2025-01-22 07:47:43', '2025-01-22 07:47:43'),
(24, 'page8', 'Longer quote goes here, maybe with some emphasized text in the middle of it.', 'Bilboard', 'Naveen', 'Sharma', 'naveen@gmail.com', 2145757, 'active', '1', '2025-01-22 07:49:11', '2025-01-22 07:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone_number` int NOT NULL,
  `organization` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `purchasing` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `business` varchar(255) NOT NULL,
  `revenue` varchar(255) NOT NULL,
  `count_status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `first_name`, `last_name`, `email_address`, `country`, `phone_number`, `organization`, `job_title`, `purchasing`, `industry`, `business`, `revenue`, `count_status`, `created_at`, `updated_at`) VALUES
(2, 'cccc', 'cccc', 'modi@gmail.com', 'AN', 457842, 'cccc', 'cccc', 'AN', 'CG', 'AN', 'no', '1', '2025-03-21 06:03:09', '2025-03-21 06:03:09'),
(3, 'vbb', 'lesner', 'brock@gmail.com', 'AN', 4545754, 'b', 'bb', 'AP', 'GA', 'AN', 'No', '1', '2025-03-21 06:07:13', '2025-03-21 06:07:13'),
(4, 'ajay', 'singh', 'ajay@gmail.com', 'BR', 84392, 'job', 'developer', 'AR', 'GJ', 'AN', 'no', '1', '2025-03-11 10:50:05', '2025-03-11 10:50:05'),
(5, 'musk', 'elon', 'musk@gmail.com', 'KL', 84392, 'job', 'developer', 'AN', 'AS', 'AN', 'no', '1', '2025-03-11 12:15:36', '2025-03-11 12:15:36'),
(6, 'Anil', 'Singh', 'anil@gmail.com', 'HP', 84392, 'wwe', 'Monday Night Row', 'AP', 'KL', 'AN', 'No', '1', '2025-03-18 12:01:12', '2025-03-18 12:01:12'),
(7, 'Deepak', 'sharma 2', 'anil@gmail.com', 'GJ', 84392, 'job', 'it', 'AP', 'JK', 'AP', 'no', '1', '2025-03-19 11:42:00', '2025-03-19 11:42:00'),
(8, 'Deepak', 'sharma 2', 'anil@gmail.com', 'GJ', 84392, 'job', 'it', 'AP', 'JK', 'AP', 'no', '1', '2025-03-19 11:42:34', '2025-03-19 11:42:34'),
(9, 'test', 'tetst', 'anil@gmail.com', 'HP', 2132, '12', '231', 'AP', 'LA', 'AN', '123', '1', '2025-03-20 07:02:42', '2025-03-20 07:02:42'),
(10, 'today', 'now', 'ajay@gmail.com', 'AP', 9260330, 'job', 'Monday Night Row', 'AN', 'KL', 'AN', 'No', '1', '2025-03-20 07:03:55', '2025-03-20 07:03:55'),
(11, 'today', 'twenty march', 'anil@gmail.com', 'GA', 39260330, 'job', 'it', 'AP', 'AP', 'AN', 'no', '1', '2025-03-20 07:13:02', '2025-03-20 07:13:02'),
(12, 'Rohit', 'Sharma', 'rohit@gmail.com', 'LA', 439260330, 'dl', 'dl LL', 'AN', 'BR', 'AN', 'ggggg', '1', '2025-03-20 11:28:04', '2025-03-20 11:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sblogs`
--

DROP TABLE IF EXISTS `sblogs`;
CREATE TABLE IF NOT EXISTS `sblogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `promotion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` enum('active','inactive','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'pending',
  `count_status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sblogs`
--

INSERT INTO `sblogs` (`id`, `type`, `promotion`, `title`, `image`, `status`, `count_status`, `created_at`, `updated_at`) VALUES
(47, 'page', 'blogger to blog', 'website builder', '101736523042.jpg', 'active', '1', '2025-01-28 12:17:52', '2025-01-28 12:17:52'),
(52, 'code2', 'these basic standard', 'and should be used in all cases', '101736523059.jpg', 'active', '1', '2025-01-10 15:30:59', '2025-01-10 15:30:59'),
(51, 'code3', 'where questions/conflicts should', 'add additional requirements', '101736523071.jpg', 'active', '1', '2025-01-10 15:31:11', '2025-01-10 15:31:11'),
(50, 'code4', 'contents should be listed', 'in alpha-numeric or descending', '101736523082.jpeg', 'active', '1', '2025-01-10 15:31:22', '2025-01-10 15:31:22'),
(49, 'code5', 'date order based on the specifield', 'focus of the list.', '101736523095.webp', 'active', '1', '2025-01-10 15:31:35', '2025-01-10 15:31:35'),
(48, 'code6', 'page listing that required', 'More than on page', '101736523110.webp', 'active', '1', '2025-01-10 15:31:50', '2025-01-10 15:31:50'),
(53, 'code7', 'should have a page selection', 'Option across the top AND bottom', '101736523123.webp', 'active', '1', '2025-01-10 15:32:03', '2025-01-10 15:32:03'),
(54, 'code8', 'Of the page that includes the ability to:', 'Jump to different pages.', '101736523137.webp', 'active', '1', '2025-01-10 15:32:17', '2025-01-10 15:32:17'),
(55, 'code9', 'Jump to previous page', 'The first page in the list.', '101736523150.webp', 'active', '1', '2025-01-10 15:32:30', '2025-01-10 15:32:30'),
(56, 'code10', 'The next page and the last page in the list.', 'page Listing that require more than on page.', '101736523162.webp', 'active', '1', '2025-01-10 15:32:42', '2025-01-10 15:32:42'),
(57, 'code11', 'Display a page and record count.', 'at the last page in the list.', '101736523181.webp', 'active', '1', '2025-01-10 15:33:01', '2025-01-10 15:33:01'),
(65, 'code12', 'All Listing that require more than one page', 'The bottom of each page.', '111736603662.webp', 'active', '1', '2025-01-11 13:54:22', '2025-01-11 13:54:22'),
(66, 'code13', 'All page Listings should have a Download.', 'Button and that button download.', '111736603678.webp', 'active', '1', '2025-01-11 13:54:38', '2025-01-11 13:54:38'),
(67, 'code14', 'Drop-Downs', 'Drop-Down Fileds.', '111736603692.webp', 'active', '1', '2025-01-11 13:54:52', '2025-01-11 13:54:52'),
(68, 'code15', 'where questions/conflicts should', 'where questions/conflicts should', '111736603706.webp', 'active', '1', '2025-01-11 13:55:06', '2025-01-11 13:55:06'),
(69, 'code16', 'in alpha-numeric or descending', 'in alpha-numeric or descending', '111736603720.jpg', 'active', '1', '2025-01-11 13:55:20', '2025-01-11 13:55:20'),
(70, 'code17', 'date order based on the specifield', 'date order based on the specifield', '111736603735.webp', 'active', '1', '2025-01-11 13:55:35', '2025-01-11 13:55:35'),
(71, 'code18', 'Of the page that includes the ability to:', 'Of the page that includes the ability to:', '111736603748.webp', 'active', '1', '2025-01-11 13:55:48', '2025-01-11 13:55:48'),
(72, 'code19', 'Option across the top AND bottom', 'Option across the top AND bottom', '111736603760.webp', 'active', '1', '2025-01-11 13:56:00', '2025-01-11 13:56:00'),
(73, 'code20', 'page Listing that require more than on page.', 'page Listing that require more than on page.', '111736603772.webp', 'active', '1', '2025-01-11 13:56:12', '2025-01-11 13:56:12'),
(74, 'code21', 'Jump to previous page', 'Jump to previous page', '111736603788.webp', 'active', '1', '2025-01-11 13:56:28', '2025-01-11 13:56:28'),
(75, 'code22', 'in alpha-numeric or descending', 'in alpha-numeric or descending', '111736603804.webp', 'active', '1', '2025-01-11 13:56:44', '2025-01-11 13:56:44'),
(76, 'code23', 'All page Listings should have a Download.', 'All page Listings should have a Download.', '111736603818.webp', 'active', '1', '2025-01-11 13:56:58', '2025-01-11 13:56:58'),
(77, 'code24', 'The next page and the last page in the list.', 'The next page and the last page in the list.', '111736603833.webp', 'active', '1', '2025-01-11 13:57:13', '2025-01-11 13:57:13'),
(78, 'code25', 'page Listing that require more than on page.', 'page Listing that require more than on page.', '111736603849.webp', 'active', '1', '2025-01-11 13:57:29', '2025-01-11 13:57:29'),
(79, 'code26', 'page Listing that require more than on page.', 'page Listing that require more than on page.', '111736603866.jpeg', 'active', '1', '2025-01-11 13:57:46', '2025-01-11 13:57:46'),
(80, 'code27', 'these basic standard time blog', 'these basic standard', '111736603887.webp', 'active', '1', '2025-01-11 13:58:07', '2025-01-11 13:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `full_name`, `dob`, `email`, `contact`, `password`, `created_at`, `updated_at`) VALUES
(75, 'upload/blog/1742473113.png', 'person', '0111-11-11', 'person@gmail.com', 9292923, '$2y$12$lyezuzX.OMzy6FVakBI6EO.KLOajI4QMVvHrKt/Jx5GNMf.g2.weC', '2025-03-20 12:18:33', '2025-03-20 12:18:33'),
(71, NULL, 'zuck', '0433-03-31', 'zuck@gmail.com', 2323232, '$2y$10$/e6rI0BQCnY9bZAJA6RT9uJ0WMyGMNHa6eXEodm69ArOmy8CWmqy.', '2025-01-09 10:22:14', '2025-01-09 10:22:14'),
(72, NULL, 'musk', '3322-02-23', 'musk@gmail.com', 232322, '$2y$12$Zfm6NSboGgZGnUBk0ER0QOPAu7oOd8VraCrm2yAIYCcfymfowpRbK', '2025-01-09 09:41:17', '2025-01-09 09:41:17'),
(73, 'upload/blog/1736611122.jpg', 'test', '1516-06-16', 'test@gmail.com', 545646, '$2y$12$tKIYxezd79EQkv6R8dwAOes8AKQseuyYjzYRIwYDbnfmUxfdIIUGm', '2025-01-11 15:58:42', '2025-01-11 15:58:42'),
(74, NULL, 'test@gmail.com', '0011-11-11', 'test@gmail.com', 5454545, '$2y$10$ybbks6yDlVtIhOpmDskAjec5Xt29gfMeUAcahpz1Xc5L55eP4ElRm', '2025-01-11 14:25:48', '2025-01-11 14:25:48'),
(68, NULL, 'virat', '0012-12-12', 'virat@gmail.com', 10102020, '$2y$10$i6EIaWMaIj6kCGDtdnMYk.HtFTgnOAiTbLC.BrURra507AqN0iAFi', '2025-01-09 07:24:00', '2025-01-09 07:24:00'),
(69, NULL, 'cena brock', '4224-12-15', 'paulheyman@gmail.com', 28485, '$2y$10$/O18TMS907cJ4MTgws0zs.gZN8Hp7OjnXXe6TN5CmDwJv6SR5JHiW', '2025-01-09 09:19:19', '2025-01-09 09:19:19'),
(70, NULL, 'paul heyman', '0121-12-12', 'paulheyman@gmail.com', 2323232, '$2y$10$uSPhsWgkAb6kywa1kS4jGe1.P4.cEH4ZK633B0Z5WG1lUUMhtObP.', '2025-01-09 09:20:17', '2025-01-09 09:20:17'),
(76, NULL, 'anil singh', '3232-02-23', 'anil@gmail.com', 2323232, '$2y$12$wstCisDVJsrs7jCWoU1L.ek16lcrz5JlCY0TbSjw8DO0bRWSvv3Ce', '2025-01-09 13:25:21', '2025-01-09 13:25:21'),
(77, NULL, 'anil', '3232-02-23', 'anil@gmail.com', 2323232, '$2y$10$l4HGMWvVMQseKPc/1rc.cOLSQMZdGJ5xbQd4DDE5Uf5k9KCrhwYtG', '2025-01-09 12:11:06', '2025-01-09 12:11:06'),
(78, 'upload/blog/1736605431.jpg', 'new', '0045-05-04', 'new@gmail.com', 45784544, '$2y$12$x.it5nWnb14u3L8UrdNdeesJKsjPnS9/ko1T1thr8kFeFayQhDfCW', '2025-01-11 14:23:51', '2025-01-11 14:23:51'),
(79, 'upload/blog/1736746457.jpg', 'ajay', '0028-02-28', 'ajay@gmail.com', 8383733, '$2y$10$uG.bVDHeHXNr4ShhNzl/zuzrnVMgH.RoUyrQheZVIyeG/Kc.d24YG', '2025-01-22 12:54:26', '2025-01-22 12:54:26'),
(80, NULL, 'cena brock', '2025-06-03', 'testuser@gmail.com', 68068, '$2y$12$/ObvE0FyJSGCxhTK.P/Vn.oEfAUHB2AIyfwK7yrsKCx0EiogNNrAi', '2025-01-13 12:59:34', '2025-01-13 12:59:34'),
(81, NULL, 'ajay', '0052-12-12', 'harsh@gmail.com', 9845688, '$2y$10$QQQ8y6rY0Cs5WJ/6QSOkreqo4kzPFom/DWt07fCUJJPzuWT9Yu7kS', '2025-01-13 13:01:28', '2025-01-13 13:01:28'),
(82, NULL, 'deepak', '2028-02-13', 'deepak@gmail.com', 7474646, '$2y$10$LK6VpCjm9UmVk5vK/RckfeOPofGCmTRYEOojIcn5u37yQ.qLFlhD6', '2025-01-13 13:04:51', '2025-01-13 13:04:51'),
(83, 'upload/blog/1736935175.jpg', 'hhh', '0055-05-12', 'hhh@gmail.com', 547854, '$2y$12$47exgFdajicHRF0r6ZAPyuiIAxu2LZlMz8XXwuhchQbjNWGpxJNQC', '2025-01-15 09:59:35', '2025-01-15 09:59:35'),
(84, 'upload/blog/1737369882.jpg', 'new customer', '0048-03-07', 'customer@gmail.com', 4746273, '$2y$12$BQR/L8nz7l4t3anlZTZ5ceJPJevsy9Xgbn7/vXAnpP4Z6N1/sSklu', '2025-01-20 10:44:42', '2025-01-20 10:44:42'),
(85, NULL, 'van', '0077-03-31', 'van@gmail.com', 373737, '$2y$10$stCtzx5p0rmXUh0ohQ4qm.2GwqbS5nZb056qjoVYNMmrwoOWZkNtC', '2025-01-17 11:07:16', '2025-01-17 11:07:16'),
(86, NULL, 'trump', '2432-02-23', 'trump@gmail.com', 34343455, '$2y$12$.Sz9lklYJhBQwpxF5PNeG.CZhZhI8NLClPVhhdM.Tb1CUIAqFc1dG', '2025-01-22 12:14:27', '2025-01-22 12:14:27'),
(87, NULL, 'morning', '0232-11-12', 'morning@gmail.com', 2324343, '$2y$12$u84ju1Jq0WH7LA1JkHK2juepnjTa42L7PHDS/3TfQXX4h8CoOc6XC', '2025-01-23 06:04:29', '2025-01-23 06:04:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
