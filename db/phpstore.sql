-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 09:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'arsalanmughal400@gmail.com', 'phpstore');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nike', '2020-10-29 01:24:54', '2020-10-29 01:24:54'),
(2, 'adidas', '2020-10-30 16:49:05', '2020-10-30 16:49:05'),
(3, 'fjallraven', '2021-06-12 16:26:35', '2021-06-12 16:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'arsalanmughal41@yahoo.com', 'Is it visible in DATABASE?', '2020-10-27 06:01:59', '2020-10-27 06:01:59'),
(2, 'arsalanmughal400@gmail.com', '', '2020-11-12 21:34:01', '2020-11-12 21:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'arsalanmughal324@gmail.com', 'customer', '2020-11-12 21:43:13', '2020-11-12 21:43:13'),
(2, 'arsalanmughal400@gmail.com', 'buy', '2020-11-12 21:44:24', '2020-11-12 21:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_method`, `created_at`, `updated_at`) VALUES
(3, 1, 'flat 13-b, gulshan terrace, Mu', '03332975389', 15002, '', '2020-11-14 22:50:18', '2020-11-14 22:50:18'),
(4, 1, 'Sanarota', '03332975389', 15002, '', '2020-11-14 22:57:55', '2020-11-14 22:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 1, '2020-11-14 23:03:39', '2020-11-14 23:03:39'),
(2, 6, 9, 1, '2020-11-14 23:11:07', '2020-11-14 23:11:07'),
(3, 8, 9, 1, '2020-11-19 07:10:05', '2020-11-19 07:10:05'),
(4, 9, 9, 1, '2020-11-19 07:10:14', '2020-11-19 07:10:14'),
(5, 10, 9, 1, '2020-11-19 07:12:15', '2020-11-19 07:12:15'),
(6, 11, 9, 1, '2020-11-19 07:12:51', '2020-11-19 07:12:51'),
(7, 12, 9, 1, '2020-11-19 07:13:15', '2020-11-19 07:13:15'),
(8, 13, 9, 1, '2020-11-19 07:17:39', '2020-11-19 07:17:39'),
(9, 14, 9, 1, '2020-11-19 07:17:51', '2020-11-19 07:17:51'),
(10, 15, 9, 1, '2020-11-19 07:19:04', '2020-11-19 07:19:04'),
(11, 16, 9, 1, '2020-11-19 07:19:10', '2020-11-19 07:19:10'),
(12, 17, 9, 1, '2020-11-19 07:19:25', '2020-11-19 07:19:25'),
(13, 18, 9, 1, '2020-11-19 07:19:36', '2020-11-19 07:19:36'),
(14, 19, 9, 1, '2020-11-19 07:21:22', '2020-11-19 07:21:22'),
(15, 20, 9, 1, '2020-11-19 07:21:32', '2020-11-19 07:21:32'),
(16, 4, 13, 1, '2020-11-19 08:12:43', '2020-11-19 08:12:43'),
(17, 4, 13, 1, '2020-11-19 08:12:50', '2020-11-19 08:12:50'),
(18, 4, 13, 1, '2020-11-19 08:13:09', '2020-11-19 08:13:09'),
(19, 4, 13, 1, '2020-11-19 08:13:38', '2020-11-19 08:13:38'),
(20, 21, 13, 1, '2020-11-19 08:15:32', '2020-11-19 08:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'كانكين', 89, 'uploads/fj5.png', ' حقيبة ظهر Kånken كلاسيكية من قماش Vinylon شديد التحمل مع سحاب يفتح المقصورة الرئيسية بالكامل. وسادة مقعد قابلة للإزالة وجيب أمامي صغير وحمالات كتف بسيطة ومقابض في الأعلى', 1, '2020-10-30 16:48:24', '2020-10-30 16:48:24'),
(9, 'اديداس', 65, 'uploads/pngaaa.com-173444.png', ' adidas شنطة ظهر بـ 3 خطوط ميتاليك لمعان ميتاليك، شعار الثلاثة خطوط، شعار تريفويل، جيب أمامي عريض، غلق بسحاب علوي، مقبض علوي فردي، حمالات كتف قابلة للتعديل . الوعي الإيجابي: حصلت مجموعة adidas Group على 4 نقاط من 5 من مؤسسة Good On You، التي تقيم الماركات الصديقة للبيئة أخلاقيًا. تستخدم الماركة مواد صديقة للبيئة في أغلب المنتجات وتحصل على 100% من القطن المستخدم من مصادر مستدامة، كما أنها تلتزم بالاعتماد على البوليستر المعاد تدويره بشكل تام بحلول عام 2024. كما تتعقب الماركة أغلب مراحل سلسلة التوريدات وتقيمها لضمان تطبيق معايير جيدة للعمالة، وتلتزم الماركة بتقليل انبعاثات الكربون وإهدار المياه مع جميع مورديها..  الخامات البطانة: البوليستر 100%  الجزء الخارجي: البولي إيثيلين 100%  معرف الماركة: GN2138  الإطلالة طول الموديل 1٫77 م، والمقاس OS  لوك الموديل: Off-White نظارة شمس بإطار مستطيل.', 2, '2020-11-05 22:34:08', '2020-11-05 22:34:08'),
(13, 'نايك', 85, 'uploads/nike4.png', '', 1, '2020-11-05 23:20:51', '2020-11-05 23:20:51'),
(16, 'حقيبة لابتوب كانكين', 99, 'uploads/fj1.png', ' حقيبة ظهر Kånken كلاسيكية من قماش Vinylon شديد التحمل مع سحاب يفتح المقصورة الرئيسية بالكامل. وسادة مقعد قابلة للإزالة وجيب أمامي صغير وحمالات كتف بسيطة ومقابض في الأعلى', 3, '2020-11-07 19:59:49', '2020-11-07 19:59:49'),
(18, 'نايك', 560, 'uploads/nike3.png', ' شعار سووش، طبعة كتابية أمامية، طبعة كتابية خلفية، جزء مقسم بفواصل، جيبان جانبيان بسحاب، غلق بسحاب علوي، مقبض علوي فردي، حمالات كتف قابلة للتعديل .  الخامات الجزء الخارجي: القماش 100%  معرف الماركة: DH3069  الإطلالة طول الموديل 1٫86 م، والمقاس OS  لوك الموديل: Nike سنيكر \'زوم بيغاسوس 36 تريل\'، وOff-White كاب بيسبول بطبعة شعار الماركة.', 1, '2021-06-12 17:04:28', '2021-06-12 17:04:28'),
(20, 'اديداس', 100, 'uploads/adidas2.png', '', 2, '2021-06-12 17:15:37', '2021-06-12 17:15:37'),
(21, 'كانكين', 89, 'uploads/fj3.png', ' حقيبة ظهر Kånken كلاسيكية من قماش Vinylon شديد التحمل مع سحاب يفتح المقصورة الرئيسية بالكامل. وسادة مقعد قابلة للإزالة وجيب أمامي صغير وحمالات كتف بسيطة ومقابض في الأعلى', 1, '2021-06-12 17:23:13', '2021-06-12 17:23:13'),
(22, 'نايك', 99, 'uploads/nike2.png', ' شنطة ظهر RPM بطبعة كتابة شعار سووش، طبعة كتابية أمامية، طبعة كتابية خلفية، جزء مقسم بفواصل، جيبان جانبيان بسحاب، غلق بسحاب علوي، مقبض علوي فردي، حمالات كتف قابلة للتعديل .  الخامات الجزء الخارجي: القماش 100%  معرف الماركة: DH3069  الإطلالة طول الموديل 1٫86 م، والمقاس OS  لوك الموديل: Nike سنيكر \'زوم بيغاسوس 36 تريل\'، وOff-White كاب بيسبول بطبعة شعار الماركة.', 1, '2021-06-12 18:08:16', '2021-06-12 18:08:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
