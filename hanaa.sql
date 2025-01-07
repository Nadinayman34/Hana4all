-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 11:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `emp_id` int(11) NOT NULL,
  `emp_name` text NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_pass` varchar(50) NOT NULL,
  `emp_contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`emp_id`, `emp_name`, `emp_email`, `emp_pass`, `emp_contact`) VALUES
(1, 'nadin', 'nadin@admin.com', '123456', 1127267211),
(2, 'jacket', 'yara@gmail.com', '123456', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `c_id` varchar(255) NOT NULL,
  `e_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `products_id`, `ip_add`, `qty`, `size`, `reg_date`, `c_id`, `e_id`) VALUES
(1, 50, '::1', 1, '35', '2023-06-16 23:22:34', 'ha@admin.com', NULL),
(24, 52, '::1', 1, '39', '2023-06-21 00:09:14', 'admin@admin.com', NULL),
(25, 55, '::1', 1, 'm', '2023-06-21 00:11:38', 'admin@admin.com', NULL),
(33, 66, '154.178.32.157', 1, '', '2023-06-24 01:03:26', 'Omnia.wag@gmail.com', NULL),
(34, 66, '2.49.219.94', 1, '', '2023-06-25 08:00:20', 'omnya.wag@gmail.com', NULL),
(35, 89, '::1', 1, 's', '2023-07-10 15:38:47', 'admin@admin.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', ' Latest and best outfits for men'),
(2, 'Women', ' Latest and best outfits for women'),
(3, 'Kids', ' Latest and best outfits for kids'),
(4, 'houseware', 'Latest and best outfits for houseware'),
(6, 'Bags', 'Latest and best outfits for Bags'),
(7, 'Makup', 'Latest and best outfits for Makup'),
(8, 'Shoes', 'Latest and best outfits for Shoes'),
(9, 'electronic', 'Latest and best outfits for Electronics'),
(10, 'glasses', 'Latest and best outfits for glasses'),
(11, 'watches', 'Latest and best outfits for watches');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `idcolors` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`idcolors`, `color_name`, `products_id`) VALUES
(1, 'white', 0),
(2, 'red', 0),
(3, 'black', 0),
(4, 'off-white', 0),
(5, 'gray', 0),
(6, 'maroon', 0),
(7, 'orange', 0),
(8, 'beige', 0),
(9, 'cashmere', 0),
(10, 'nude', 0),
(11, 'lime', 0),
(12, 'mint-green', 0),
(13, 'olive', 0),
(14, 'aqua', 0),
(15, 'indigo', 0),
(35, 'purple', 0),
(36, 'lavender', 0),
(37, 'violet', 0),
(38, 'pink', 0),
(39, 'blue', 0),
(40, 'navy-blue', 0),
(41, 'baby-blue', 0),
(42, 'navy', 0),
(43, 'yellow', 0),
(44, 'green', 0),
(45, 'brown', 0),
(46, 'silver', 0),
(47, 'gold', 0),
(48, 'rose-gold', 0),
(50, 'woodand canvas', 0),
(51, 'colorful', 0),
(52, 'printed', 0),
(53, 'baby-pink', 0),
(54, 'flowers', 0),
(55, 'tigger', 0),
(56, 'cow-print', 0),
(57, 'zebra', 0),
(58, 'dark gray', 0),
(59, 'white ', 0),
(60, 'off-white', 0),
(61, 'black ', 0),
(62, 'blue', 0),
(63, 'Red', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'bishoy', 'admin@admin.com', 'math', 'uhihu'),
(2, 'kjkjjhkkj', 'admin1@admin.com', 'math', 'uhihu'),
(3, 'jhkkjhk', 'admin1@admin.com', 'math', 'uhihu'),
(9, 'Raymondlen', 'no.reply.RobertMartinez@gmail.com', 'Are you on the lookout for a cost-effective and creative advertising option for a cost-effective price?', 'Hi there! hana4all.com \r\n \r\nDid you know that it is possible to send commercial offer fully in legitimate manner? We are offering a legitimate way of sending requests via feedback forms. Feedback forms such as these can be found on many webpages. \r\nWhen such business proposals are sent, no personal data is used, and messages are securely sent to forms specifically designed to receive them. Since Feedback Forms messages are deemed important, they won\'t be labeled as junk. \r\nGive our service a go – it won’t cost you a thing! \r\nWe guarantee you up to 50,000 messages. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.'),
(10, 'Laurene Upjohn', 'upjohn.laurene@googlemail.com', 'Hi hana4all.com Admin!', 'I am pleased to inform you that you can now submit your site to our business directory for free. Visit: http://submityoursitefree.12com.xyz/'),
(11, 'JosephBus', 'no.reply.JozefMaes@gmail.com', 'An extraordinary new technique of advertising.', 'Wassup? hana4all.com \r\n \r\nDo you know that it is possible to send messages entirely legally? We suggest a unique way of sending commercial offers through contact forms. These kinds of feedback forms can be seen on a variety of websites. \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive and process messages and appeals. By using Communication Forms, messages sent are less likely to be flagged as spam, as they are considered significant. \r\nWe are now offering you the chance to use our service for free. \r\nWe can transmit up to 50,000 messages in your behalf. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.'),
(12, 'Mike Finch\r\n', 'mikeTrautle@gmail.com', 'Semrush Audit and fixes for hana4all.com', 'Hi there, \r\n \r\nI have recently conducted an analysis of hana4all.com for onsite errors and discovered that your website presents several issues that require attention. \r\n \r\nRegardless of the product or service you are offering or selling, possessing a site that is inadequately optimized and rife with errors and bugs will not aid in boosting your rankings. \r\n \r\nLet us fix your WordPress website problems today and improve your search engine rankings. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/product/wordpress-seo-audit-and-fix-service/ \r\n \r\n \r\nRegards \r\nMike Finch\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(50) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_ip` int(11) DEFAULT NULL,
  `approve` tinyint(4) NOT NULL DEFAULT 0,
  `role_as` int(11) NOT NULL DEFAULT 0 COMMENT '"0=user,1=admin"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_contact`, `customer_ip`, `approve`, `role_as`) VALUES
(31, 'Yousaf', 'yo@gmail.com', '123', '03002291527', 0, 0, 0),
(32, 'seif', 'ha@admin.com', '123456', '11111111111', 0, 0, 0),
(33, 'bishoy', 'admin@admin.com', '12345', '01224524452', 0, 0, 0),
(34, 'bishoy', 'admin1@admin.com', 'password', '01226764759', 0, 0, 1),
(35, ' nadin ayman', 'nadin.ayman.34@gmail.com', '123456', '', NULL, 0, 0),
(36, 'Omnia', 'Omnia.wag@gmail.com', 'man100100', '', NULL, 0, 0),
(37, ' Omar', 'Omariaeh@yahoo.com', 'man100100', '', NULL, 0, 0),
(38, ' Seif', 'seifeldin_m96489@cic-cairo.com', 'SEIF20196489', '', NULL, 0, 0),
(44, ' Test', 'Guytorch21@gmail.com', 'man100100', '', NULL, 0, 0),
(47, ' omar', 'new.saeid7@gmail.com', 'man100100', '', NULL, 0, 0),
(48, ' omar ayman', 'omar54@gmail.com', '1245', '', NULL, 0, 0),
(49, ' ahmed', 'ahmedhend305@gmail.com', 'man100100', '', NULL, 0, 0),
(51, ' hani', 'eng.islqm@yahoo.com', 'man100100', '', NULL, 0, 0),
(63, ' omnya', 'omnya.wag@gmail.com', 'man100100', '', NULL, 0, 0),
(64, 'omar ayman', 'omarayman2@gmail.com', '123456', '', NULL, 0, 0),
(65, 'nadin ayman', 'nadin.ayman.394@gmail.com', '123456', '', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `rec_orders` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `products` varchar(50) NOT NULL,
  `transaction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `pincode` varchar(191) NOT NULL,
  `address` mediumtext DEFAULT NULL,
  `status_message` varchar(191) NOT NULL,
  `total_price` int(11) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `tracking_no`, `user_id`, `fullname`, `email`, `phone`, `pincode`, `address`, `status_message`, `total_price`, `payment_mode`, `payment_id`, `created_at`) VALUES
(21, 'hana4all8533226764759', 34, 'bishoy', 'nido_bomba@yahoo.com', '01226764759', '123345', 'dfghjk', 'in progress', 5700, 'Cash on Delivery', '', '2023-05-30 10:18:19'),
(22, 'hana4all8012226764759', 34, 'bishoy', 'mode@mode.gmail.com', '01226764759', '2345678', 'sdfghjkl;', 'in progress', 1200, 'Cash on Delivery', '', '2023-05-30 16:32:25'),
(23, 'hana4all8508226764759', 34, 'bishoy', 'admin@gmail.com', '01226764759', '3456789', 'ertyuio', 'in progress', 2200, 'Cash on Delivery', '', '2023-05-30 16:38:59'),
(24, 'hana4all4128', 34, 'Justine Moran', 'cyroqol@mailinator.com', '41', '46', 'Itaque soluta mollit', 'in progress', 12566, 'Cash on Delivery', '', '2023-06-04 21:07:24'),
(25, 'hana4all6865', 34, 'Justine Moran', 'cyroqol@mailinator.com', '41', '46', 'Itaque soluta mollit', 'in progress', 0, 'Cash on Delivery', '', '2023-06-04 21:07:29'),
(26, 'hana4all3005', 34, 'Justine Moran', 'cyroqol@mailinator.com', '41', '46', 'Itaque soluta mollit', 'in progress', 0, 'Cash on Delivery', '', '2023-06-04 21:07:32'),
(27, 'hana4all88283123', 34, '', 'sb-5wt8h26164832@personal.example.com', '123123', '123123', '', 'COMPLETED', 0, 'Paypal', '45S76223KA362643R', '2023-06-04 21:12:50'),
(28, 'hana4all67133123', 34, '', 'sb-5wt8h26164832@personal.example.com', '123123', '123123', '', 'COMPLETED', 0, 'Paypal', '8MP158358F995573M', '2023-06-04 21:19:37'),
(29, 'hana4all24993123', 34, '', 'sb-5wt8h26164832@personal.example.com', '123123', '123123', '', 'COMPLETED', 3500, 'Paypal', '6CU58738UF744214M', '2023-06-05 10:03:08'),
(30, 'hana4all74903123', 33, '', 'sb-5wt8h26164832@personal.example.com', '123123', '123123', '', 'COMPLETED', 3500, 'Paypal', '4E419550646725401', '2023-06-05 14:10:03'),
(31, 'hana4all97443123', 33, '', 'sb-5wt8h26164832@personal.example.com', '123123', '123123', '', 'COMPLETED', 3500, 'Paypal', '41577791678701245', '2023-06-05 14:18:46'),
(32, 'hana4all833980403153', 35, 'nadin ayman', 'nadin.ayman.34@gmail.com', '2280403153', '3753450', 'zayed', 'in progress', 5, 'Cash on Delivery', '', '2023-06-18 14:56:07'),
(33, 'hana4all775080403153', 35, 'nadin ayman', 'nadin.ayman.34@gmail.com', '2280403153', '3753450', 'zayed', 'in progress', 5, 'Cash on Delivery', '', '2023-06-18 15:44:43'),
(34, 'hana4all285403452446', 0, 'Test', 'Guytorch21@gmail.com', '0503452446', '00000', 'Test test test', 'in progress', 2300, 'Cash on Delivery', '', '2023-06-19 09:12:20'),
(35, 'hana4all367068887740', 36, 'Omnya ', 'omnia.wag@gmail.com', '0568887740', '1234', 'Sharjah Muwailleh ', 'in progress', 5400, 'Cash on Delivery', '', '2023-06-20 06:07:18'),
(36, 'hana4all491180403153', 35, 'nadin ayman', 'nadin.ayman.34@gmail.com', '2280403153', '3753450', 'zayed', 'in progress', 55, 'Cash on Delivery', '', '2023-06-21 01:00:43'),
(37, 'hana4all68642569', 35, 'seif', 'seif@gmail.com', '012569', '3753450', 'zayed', 'in progress', 0, 'Cash on Delivery', '', '2023-06-21 01:02:06'),
(38, 'hana4all584380403153', 38, 'seif', 'seif@gmail.com', '2280403153', '3753450', 'zayed', 'in progress', 57, 'Cash on Delivery', '', '2023-06-21 01:03:53'),
(39, 'hana4all540268887740', 0, 'omnia', 'new.saeid7@gmail.com', '0568887740', '1234', 'sharjah', 'in progress', 200, 'Cash on Delivery', '', '2023-06-21 10:40:54'),
(40, 'hana4all4220127267211', 35, 'nadin ayman', 'nadin.ayman.34@gmail.com', '01127267211', '11213', 'cairo,mokattam', 'in progress', 1500, 'Cash on Delivery', '', '2025-01-05 08:33:28'),
(41, 'hana4all3185111231111', 35, 'nadin', 'nadin.ayman.34@gmail.com', '01111231111', '12113', 'cairo,mokattam', 'in progress', 1060, 'Cash on Delivery', '', '2025-01-05 09:12:43'),
(42, 'hana4all592722253222', 35, 'nadin', 'nadin.ayman.34@gmail.com', '0122253222', '11211', 'cairo.egypt', 'in progress', 1060, 'Cash on Delivery', '', '2025-01-05 09:51:36'),
(43, 'hana4all61561123556', 35, 'nadin', 'nadin@gmail.com', '011123556', '11231', 'cairoo', 'in progress', 1060, 'Cash on Delivery', '', '2025-01-05 09:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_size` varchar(191) NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `product_size`, `product_color`, `price`, `created_at`) VALUES
(1, 18, 15, 1, 'Medium', '', 3500, '2023-05-29 22:27:18'),
(2, 18, 26, 2, 'XxL', '', 390, '2023-05-29 22:27:18'),
(3, 19, 15, 1, 'Medium', '', 3500, '2023-05-29 22:27:37'),
(4, 19, 26, 2, 'XxL', '', 390, '2023-05-29 22:27:37'),
(5, 20, 15, 1, 'Medium', '', 3500, '2023-05-29 22:44:52'),
(6, 20, 26, 2, 'XxL', '', 780, '2023-05-29 22:44:52'),
(7, 21, 4, 1, 'Large', '', 2200, '2023-05-30 10:18:19'),
(8, 21, 15, 1, 'Medium', '', 3500, '2023-05-30 10:18:19'),
(9, 22, 45, 1, 'Large', '', 1200, '2023-05-30 16:32:25'),
(10, 23, 4, 1, 'Medium', '', 2200, '2023-05-30 16:38:59'),
(11, 24, 12, 1, 'Medium', '', 2700, '2023-06-04 21:07:24'),
(12, 24, 15, 1, 'Medium', '', 3500, '2023-06-04 21:07:24'),
(13, 24, 46, 1, 'XxL', '', 6366, '2023-06-04 21:07:24'),
(14, 29, 15, 1, 'Medium', '', 3500, '2023-06-05 10:03:08'),
(15, 30, 15, 1, 'Medium', '', 3500, '2023-06-05 14:10:03'),
(16, 31, 15, 1, 'Medium', '', 3500, '2023-06-05 14:18:46'),
(17, 32, 52, 1, '', '', 5, '2023-06-18 14:56:07'),
(18, 33, 52, 1, '', '', 5, '2023-06-18 15:44:43'),
(19, 34, 22, 1, '', '', 2300, '2023-06-19 09:12:20'),
(20, 35, 15, 1, '', '', 3500, '2023-06-20 06:07:19'),
(21, 35, 16, 1, '', '', 1900, '2023-06-20 06:07:19'),
(22, 35, 49, 0, '', '', 0, '2023-06-20 06:07:19'),
(23, 36, 53, 1, '38', '', 55, '2023-06-21 01:00:43'),
(24, 38, 54, 1, '', '', 2, '2023-06-21 01:03:53'),
(25, 38, 53, 1, '42', '', 55, '2023-06-21 01:03:53'),
(26, 39, 56, 1, '', '', 200, '2023-06-21 10:40:54'),
(27, 40, 91, 1, 'm', '', 1500, '2025-01-05 08:33:28'),
(28, 41, 93, 1, '', '', 1060, '2025-01-05 09:12:43'),
(29, 42, 93, 1, '', '', 1060, '2025-01-05 09:51:36'),
(30, 43, 93, 1, '', '', 1060, '2025-01-05 09:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `p_cat_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text DEFAULT NULL,
  `product_img2` text DEFAULT NULL,
  `product_img3` text DEFAULT NULL,
  `product_img4` text DEFAULT NULL,
  `product_img5` text DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `sale` int(15) NOT NULL,
  `product_keywords` text DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `colors` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `p_cat_id`, `cat_id`, `reg_date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `product_img5`, `product_price`, `sale`, `product_keywords`, `product_desc`, `size`, `colors`) VALUES
(91, 1, 2, '2024-12-31 10:08:08', 'dress', 'Coupons (3).png', 'Coupons (2).png', 'Coupons (1).png', 'Coupons (4).png', '', 2300, 1500, 'dress', 'jeans jacket', 1, 0),
(92, 15, 1, '2024-12-31 11:40:10', 'shirt', 'Coupons (5).png', 'Coupons (6).png', 'Coupons (7).png', 'Coupons (8).png', '', 1900, 1100, 'shirts', '', 1, NULL),
(93, 10, 3, '2025-01-05 09:07:09', 'LEGO® Chewbacca™', '1717065734951.png', '1717065734413.png', '1717065734361.png', '1717065734776.png', '', 1560, 1060, 'game', 'Brick-built LEGO® Star Wars™ Chewbacca figure (75371) – Celebrate the 40th anniversary of Star Wars: Return of the Jedi and pay tribute to a heroic Wookiee with this detailed build-and-display model\r\nDesigned for display – The buildable, non-posable Chewbacca LEGO® figure holds a brick-built bowcaster and has a built-in display stand, plus a plaque with information about the character\r\nIncludes a Chewbacca LEGO® minifigure – The Chewbacca LEGO minifigure has a stud-shooting bowcaster and can be displayed next to the information plaque', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(11) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Jackets', 'Good quality custom made and casual wear jackets'),
(2, 'Tee-Shirts', 'Good and easy stuff designed Tee-Shirt '),
(3, 'Jeans', 'High Quality Denim and Leather Jeans'),
(4, 'Shoes', 'Good quality and soft sole shoes with good endurance'),
(5, 'Hoodies', 'Cool customized and colorful hoodies'),
(6, 'housewares', '000'),
(7, 'Bags', ''),
(8, 'Makeup', ''),
(9, 'Shoes', ''),
(10, 'electronics\r\n', ''),
(11, 'glasses', 'Latest and best outfits for glasses'),
(12, 'watches', ''),
(13, 'dresses', ''),
(14, 'pants', ''),
(15, 'shirts', '');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `idsize` int(11) NOT NULL,
  `size_pro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`idsize`, `size_pro`) VALUES
(1, 's,m,l,xl,xxl,xxxl,xxxxl'),
(2, '35,36,37,38,39,40,41,42,43,44,45,46,47'),
(3, 'no size');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(11) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_heading` varchar(100) NOT NULL,
  `slide_text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_heading`, `slide_text`) VALUES
(1, 'Slide 1', 'slide_1.jpg', 'Summer Sale', 'Walk in for the Fashion, Stay in for the Style.'),
(2, 'Slide 2', 'slide_2.jpg', 'Black friday', 'Simply Eveything You Want.');

-- --------------------------------------------------------

--
-- Table structure for table `test_admin`
--

CREATE TABLE `test_admin` (
  `Admin_Name` varchar(100) NOT NULL,
  `Admin_Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_admin`
--

INSERT INTO `test_admin` (`Admin_Name`, `Admin_Password`) VALUES
('admin', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`idcolors`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`idsize`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `idcolors` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `idsize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
