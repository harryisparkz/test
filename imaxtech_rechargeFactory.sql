-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2017 at 03:30 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `imaxtech_rechargeFactory`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_key` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `url_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile-recharge', '1', '2017-01-30 18:09:44', '2017-01-30 18:09:44'),
(2, 'Dht', 'dht-recharge', '1', '2017-02-01 13:52:42', '2017-02-20 03:19:14'),
(3, 'Data Card', 'data-card', '1', '2017-02-02 16:30:08', '2017-02-20 03:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `circles`
--

CREATE TABLE IF NOT EXISTS `circles` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `circle_code` tinyint(4) NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `circles`
--

INSERT INTO `circles` (`id`, `category_id`, `state_id`, `circle_code`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 1, '1', '2017-02-07 16:22:04', '2017-02-07 16:22:04'),
(6, 1, 4, 2, '1', '2017-02-07 16:22:42', '2017-02-07 16:22:42'),
(7, 1, 5, 3, '1', '2017-02-07 16:22:54', '2017-02-07 16:22:54'),
(8, 1, 6, 4, '1', '2017-02-07 16:23:11', '2017-02-07 16:23:11'),
(9, 1, 7, 5, '1', '2017-02-07 16:23:46', '2017-02-07 16:23:46'),
(10, 1, 8, 6, '1', '2017-02-07 16:24:13', '2017-02-07 16:24:13'),
(11, 1, 9, 7, '1', '2017-02-07 16:24:25', '2017-02-07 16:24:25'),
(12, 1, 10, 8, '1', '2017-02-07 16:24:40', '2017-02-07 16:24:40'),
(13, 1, 11, 9, '1', '2017-02-07 16:24:51', '2017-02-07 16:25:48'),
(14, 1, 12, 10, '1', '2017-02-07 16:25:04', '2017-02-07 16:25:04'),
(15, 1, 13, 11, '1', '2017-02-07 16:26:03', '2017-02-07 16:26:03'),
(16, 1, 14, 12, '1', '2017-02-07 16:26:26', '2017-02-07 16:26:26'),
(17, 1, 15, 13, '1', '2017-02-07 16:26:42', '2017-02-07 16:26:42'),
(18, 1, 16, 14, '1', '2017-02-07 16:26:57', '2017-02-07 16:26:57'),
(19, 1, 1, 15, '1', '2017-02-07 16:27:13', '2017-02-07 16:27:13'),
(20, 1, 2, 16, '1', '2017-02-07 16:27:28', '2017-02-07 16:27:28'),
(21, 1, 17, 17, '1', '2017-02-07 16:27:45', '2017-02-07 16:27:45'),
(22, 1, 18, 18, '1', '2017-02-07 16:27:59', '2017-02-07 16:27:59'),
(23, 1, 19, 19, '1', '2017-02-07 16:28:11', '2017-02-07 16:28:11'),
(24, 1, 20, 20, '1', '2017-02-07 16:28:30', '2017-02-07 16:28:30'),
(25, 1, 21, 21, '1', '2017-02-07 16:28:42', '2017-02-07 16:28:42'),
(26, 1, 22, 22, '1', '2017-02-07 16:29:20', '2017-02-07 16:29:20'),
(27, 1, 23, 23, '1', '2017-02-07 16:29:33', '2017-02-07 16:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(121, '2014_10_12_000000_create_users_table', 1),
(122, '2014_10_12_100000_create_password_resets_table', 1),
(123, '2017_01_10_090617_create_roles_table', 1),
(124, '2017_01_12_102231_create_categories_table', 1),
(125, '2017_01_17_114822_create_types_table', 1),
(126, '2017_01_18_095226_create_operator_table', 1),
(127, '2017_01_19_044542_create_photos_table', 1),
(128, '2017_01_23_121954_create_states_table', 1),
(129, '2017_01_24_052659_create_circles_table', 1),
(130, '2017_01_24_111339_create_plans_table', 1),
(131, '2017_01_27_061024_create_options_table', 1),
(132, '2017_01_28_065255_create_information_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE IF NOT EXISTS `operators` (
  `id` int(10) unsigned NOT NULL,
  `operator_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operator_code` tinyint(4) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `operator_name`, `operator_code`, `category_id`, `type_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Aircel', 1, 1, 3, '1', '2017-02-07 16:15:32', '2017-02-07 16:15:32'),
(7, 'BSNL', 3, 1, 3, '1', '2017-02-07 16:17:04', '2017-02-07 16:17:04'),
(8, 'Videocon', 5, 1, 3, '1', '2017-02-07 16:17:19', '2017-02-07 16:17:19'),
(9, 'MTNL Mumbai', 6, 1, 3, '1', '2017-02-07 16:17:38', '2017-02-07 16:17:38'),
(10, 'MTNL Mumbai Special', 7, 1, 3, '1', '2017-02-07 16:18:03', '2017-02-07 16:18:03'),
(11, 'Idea', 8, 1, 3, '1', '2017-02-07 16:18:23', '2017-02-07 16:18:23'),
(12, 'MTS', 10, 1, 3, '1', '2017-02-07 16:18:39', '2017-02-07 16:18:39'),
(13, 'Reliance CDMA', 12, 1, 3, '1', '2017-02-07 16:18:50', '2017-02-07 16:18:50'),
(14, 'Reliance GSM', 13, 1, 3, '1', '2017-02-07 16:19:03', '2017-02-07 16:19:03'),
(15, 'Docomo GSM', 17, 1, 3, '1', '2017-02-07 16:19:19', '2017-02-07 16:19:19'),
(16, 'Docomo CDMA', 18, 1, 3, '1', '2017-02-07 16:19:33', '2017-02-07 16:19:33'),
(17, 'Uninor', 19, 1, 3, '1', '2017-02-07 16:19:44', '2017-02-07 16:19:44'),
(18, 'MTNL Delhi', 20, 1, 3, '1', '2017-02-07 16:20:07', '2017-02-07 16:20:07'),
(19, 'MTNL Delhi Special', 21, 1, 3, '1', '2017-02-07 16:20:19', '2017-02-07 16:20:19'),
(20, 'Vodafone', 22, 1, 3, '1', '2017-02-07 16:20:31', '2017-02-07 16:20:31'),
(21, 'Tata Walky', 23, 1, 3, '1', '2017-02-07 16:20:42', '2017-02-07 16:20:42'),
(22, 'BSNL - Validity', 24, 1, 3, '1', '2017-02-07 16:20:52', '2017-02-07 16:20:52'),
(23, 'Docomo GSM - Special', 25, 1, 3, '1', '2017-02-07 16:21:01', '2017-02-07 16:21:01'),
(24, 'Uninor - Special', 26, 1, 1, '1', '2017-02-07 16:21:13', '2017-02-07 16:21:13'),
(25, 'Videocon - Special', 27, 1, 1, '1', '2017-02-07 16:21:25', '2017-02-07 16:21:25'),
(26, 'Airtel', 28, 1, 3, '1', '2017-02-07 17:36:49', '2017-02-07 17:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `option_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL,
  `photo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` int(11) NOT NULL,
  `set_postion` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `category_id`, `plan_name`, `order_by`, `set_postion`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '3g', 1, '1', '1', '2017-01-31 19:19:20', '2017-02-20 03:17:34'),
(2, 1, 'Talk Time', 2, '0', '1', '2017-01-31 19:19:33', '2017-02-22 12:13:11'),
(5, 1, '2G', 3, '0', '1', '2017-02-07 16:31:38', '2017-02-07 16:31:38'),
(6, 1, 'Roaming', 4, '0', '1', '2017-02-07 16:31:58', '2017-02-22 12:35:12'),
(7, 1, 'SMS', 5, '0', '1', '2017-02-07 16:32:07', '2017-02-07 16:32:07'),
(10, 1, 'Best Offer', 8, '0', '1', '2017-02-12 14:25:11', '2017-02-12 14:25:11'),
(11, 2, 'Monthly Pack', 1, '1', '1', '2017-02-20 03:27:58', '2017-02-20 03:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `plan_information`
--

CREATE TABLE IF NOT EXISTS `plan_information` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `operator_id` int(10) unsigned DEFAULT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `circle_id` int(10) unsigned DEFAULT NULL,
  `plan_id` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plan_information`
--

INSERT INTO `plan_information` (`id`, `category_id`, `operator_id`, `type_id`, `circle_id`, `plan_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(10, 1, 11, 3, 19, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:3:"985";s:8:"validity";s:7:"30 Days";s:8:"benefits";s:19:"20 MB 2G/3G/4G Data";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-09 17:10:39', '2017-02-21 19:11:02'),
(11, 1, 11, 3, 19, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:2:"19";s:8:"validity";s:7:"30 Days";s:8:"benefits";s:20:"45 MB 2G /3G/4G Data";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-09 17:11:22', '2017-02-09 17:11:22'),
(12, 1, 11, 3, 19, 2, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"2";s:8:"talktime";s:2:"55";s:5:"price";s:2:"55";s:8:"validity";s:6:"4 Days";s:8:"benefits";s:53:"Full talktime in DA for 4 days + 5 A2A SMS for 2 days";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:9:"Talk Time";}', '1', '2017-02-09 17:12:43', '2017-02-09 17:12:43'),
(13, 1, 11, 3, 19, 2, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"2";s:8:"talktime";s:3:"115";s:5:"price";s:3:"115";s:8:"validity";s:7:"10 Days";s:8:"benefits";s:69:"Full talktime in DA for 10 days + 5 Local Airtel night SMS for 2 days";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:9:"Talk Time";}', '1', '2017-02-09 17:13:21', '2017-02-09 17:13:21'),
(14, 1, 11, 3, 19, 5, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"5";s:8:"talktime";s:1:"0";s:5:"price";s:1:"9";s:8:"validity";s:7:"30 Days";s:8:"benefits";s:19:"20 MB 2G/3G/4G Data";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:2:"2G";}', '1', '2017-02-09 17:13:57', '2017-02-09 17:13:57'),
(15, 1, 11, 3, 19, 5, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"5";s:8:"talktime";s:1:"0";s:5:"price";s:2:"25";s:8:"validity";s:6:"4 Days";s:8:"benefits";s:18:"145 MB 2G Internet";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:2:"2G";}', '1', '2017-02-09 17:15:11', '2017-02-09 17:15:11'),
(17, 1, 11, 3, 19, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:2:"23";s:8:"validity";s:6:"3 Days";s:8:"benefits";s:25:"90 MB 3G/4G Internet Data";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-09 17:17:09', '2017-02-09 17:17:09'),
(18, 1, 11, 3, 19, 10, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"19";s:4:"Plan";s:2:"10";s:8:"talktime";s:1:"0";s:8:"validity";s:7:"28 Days";s:8:"benefits";s:132:"Unlimited Local + STD Airtel to Airtel mobile calls (T&C apply)+ 50 MB 3G/4G Data for 28 days (For 4G handset only: Get 300 MB Data)";s:5:"price";s:3:"149";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:6:"Punjab";s:9:"plan_name";s:10:"Best Offer";}', '1', '2017-02-12 14:25:56', '2017-02-12 14:25:56'),
(21, 1, 26, 3, 25, 5, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"5";s:8:"talktime";s:1:"0";s:5:"price";s:2:"25";s:8:"validity";s:6:"4 Days";s:8:"benefits";s:8:"145MB 2G";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:2:"2G";}', '1', '2017-02-22 12:15:48', '2017-02-22 12:31:23'),
(22, 1, 26, 3, 25, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:1:"9";s:8:"validity";s:7:"30 Days";s:8:"benefits";s:15:"20MB 2G/3G/4G 8";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:16:27', '2017-02-22 12:31:35'),
(23, 1, 26, 3, 25, 2, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"2";s:8:"validity";s:9:"Unlimited";s:5:"price";s:3:"300";s:8:"benefits";s:16:"Talktime Rs. 300";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:9:"Talk Time";s:8:"talktime";s:3:"300";}', '1', '2017-02-22 12:17:32', '2017-02-22 12:17:32'),
(24, 1, NULL, 3, 25, 2, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:0:"";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"2";s:8:"validity";s:9:"Unlimited";s:8:"benefits";s:48:"Talktime of Rs.550. [Only on Airtel Website/App]";s:8:"talktime";s:3:"500";s:5:"price";s:3:"500";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:0:"";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:9:"Talk Time";}', '1', '2017-02-22 12:23:25', '2017-02-22 12:23:25'),
(25, 1, 26, 3, 25, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:2:"19";s:8:"validity";s:7:"30 Days";s:8:"benefits";s:13:"45MB 2G/3G/4G";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:32:35', '2017-02-22 12:32:35'),
(26, 1, 26, 3, 25, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:2:"22";s:8:"validity";s:6:"2 Days";s:8:"benefits";s:10:"90MB 3G/4G";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:33:16', '2017-02-22 12:33:16'),
(27, 1, 26, 3, 25, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:1:"3";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:2:"29";s:8:"validity";s:7:"30 Days";s:8:"benefits";s:13:"75MB 2G/3G/4G";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:33:55', '2017-02-22 12:33:55'),
(28, 1, 26, NULL, 25, 6, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"26";s:4:"Type";s:0:"";s:6:"Circle";s:2:"25";s:4:"Plan";s:1:"6";s:8:"validity";s:8:"180 Days";s:8:"benefits";s:73:"Roaming Tariff - Incoming Free, Outgoing local @ 80p/min, STD @1.15Rs/min";s:5:"price";s:3:"181";s:8:"talktime";s:1:"0";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:6:"Airtel";s:9:"type_name";s:0:"";s:10:"state_name";s:16:"Himachal Pradesh";s:9:"plan_name";s:7:"Roaming";}', '1', '2017-02-22 12:36:51', '2017-02-22 12:36:51'),
(29, 1, 11, 3, 5, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:1:"5";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:3:"498";s:8:"benefits";s:72:"Instant benefit 4GB 3G 28 d, post that get 1GB 3G 28d@Rs121 for 6 months";s:8:"validity";s:8:"6 months";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:9:"Delhi NCR";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:41:15', '2017-02-22 12:42:45'),
(30, 1, 11, 3, 5, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:1:"5";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:3:"747";s:8:"benefits";s:94:"Instant benefit 7GB 3G 28d, post that get 1GB 3G 28d@Rs102 & 2.5 GB 3G 28d@ Rs256 for 6 months";s:8:"validity";s:8:"6 months";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:9:"Delhi NCR";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:42:05', '2017-02-22 12:42:28'),
(31, 1, 11, 3, 5, 1, 'a:14:{s:8:"Category";s:1:"1";s:8:"Operator";s:2:"11";s:4:"Type";s:1:"3";s:6:"Circle";s:1:"5";s:4:"Plan";s:1:"1";s:8:"talktime";s:1:"0";s:5:"price";s:4:"1498";s:8:"benefits";s:110:"Instant benefit 15GB 3G 28 d, post that get 1GB 3G 28d@Rs51, 2GB 3G 28d@ Rs102 & 5 GB 3G 28d@ Rs256 for 1 year";s:8:"validity";s:9:"12 months";s:13:"category_name";s:6:"Mobile";s:13:"operator_name";s:4:"Idea";s:9:"type_name";s:7:"Prepaid";s:10:"state_name";s:9:"Delhi NCR";s:9:"plan_name";s:2:"3g";}', '1', '2017-02-22 12:43:37', '2017-02-22 12:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Punjab', '1', '2017-01-31 15:18:07', '2017-02-02 16:54:27'),
(2, 'Haryana', '1', '2017-02-01 13:51:49', '2017-02-07 15:26:39'),
(3, 'Delhi NCR', '1', '2017-02-07 15:23:11', '2017-02-07 15:23:11'),
(4, 'Mumbai', '1', '2017-02-07 15:23:20', '2017-02-07 15:23:20'),
(5, 'Kolkata', '1', '2017-02-07 15:24:02', '2017-02-07 15:24:02'),
(6, 'Maharashtra', '1', '2017-02-07 15:24:11', '2017-02-07 15:24:11'),
(7, 'Andhra Pradesh', '1', '2017-02-07 15:24:47', '2017-02-07 15:24:47'),
(8, 'Tamil Nadu', '1', '2017-02-07 15:24:56', '2017-02-07 15:24:56'),
(9, 'Karnataka', '1', '2017-02-07 15:25:04', '2017-02-07 15:25:04'),
(10, 'Gujarat', '1', '2017-02-07 15:25:14', '2017-02-07 15:25:14'),
(11, 'Uttar Pradesh (E)', '1', '2017-02-07 15:25:25', '2017-02-07 15:25:25'),
(12, 'Madhya Pradesh', '1', '2017-02-07 15:25:40', '2017-02-07 15:25:40'),
(13, 'Uttar Pradesh (W)', '1', '2017-02-07 15:25:49', '2017-02-07 15:25:49'),
(14, 'West Bengal', '1', '2017-02-07 15:26:02', '2017-02-07 15:26:02'),
(15, 'Rajasthan', '1', '2017-02-07 15:26:13', '2017-02-07 15:26:13'),
(16, 'Kerala', '1', '2017-02-07 15:26:21', '2017-02-07 15:26:21'),
(17, 'Bihar & Jharkhand', '1', '2017-02-07 15:26:51', '2017-02-07 15:26:51'),
(18, 'Odisha', '1', '2017-02-07 15:26:59', '2017-02-07 15:26:59'),
(19, 'Assam', '1', '2017-02-07 15:27:09', '2017-02-07 15:27:09'),
(20, 'North East', '1', '2017-02-07 15:27:17', '2017-02-07 15:27:17'),
(21, 'Himachal Pradesh', '1', '2017-02-07 15:27:42', '2017-02-07 15:27:42'),
(22, 'Jammu & Kashmir', '1', '2017-02-07 15:27:50', '2017-02-07 15:27:50'),
(23, 'Chennai', '1', '2017-02-07 15:27:59', '2017-02-07 15:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` int(11) NOT NULL,
  `set_postion` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `category_id`, `type_name`, `order_by`, `set_postion`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Postpaid', 2, '0', '1', '2017-01-31 15:21:22', '2017-02-20 03:21:58'),
(3, 1, 'Prepaid', 1, '1', '1', '2017-02-01 17:08:41', '2017-02-20 03:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'testimax@gmail.com', '$2y$10$Hk8CHb7ts6hw3ngOHbwxtOx7u2a03BI69iR2XRKzXzlOpLOUXjIlG', NULL, '2017-02-20 01:45:20', '2017-02-20 01:45:20'),
(2, 'imax', 'imaxcompany@gmail.com', '$2y$10$Caul.9.nTS/9F/wI1KJgR.8NGW66PML5vk.ZJDAsTV7ddFAfWZf1.', 'xhd9cFU7eX7JlhMWKQ4aCV27hsudrZF5GMc4ElKHW16sUzkaCR24zJaWjwrp', '2017-02-21 19:03:30', '2017-02-21 19:05:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`), ADD KEY `circles_category_id_foreign` (`category_id`), ADD KEY `circles_state_id_foreign` (`state_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`), ADD KEY `operators_category_id_foreign` (`category_id`), ADD KEY `operators_type_id_foreign` (`type_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`), ADD KEY `options_category_id_foreign` (`category_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`), ADD KEY `photos_user_id_foreign` (`user_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`), ADD KEY `plans_category_id_foreign` (`category_id`);

--
-- Indexes for table `plan_information`
--
ALTER TABLE `plan_information`
  ADD PRIMARY KEY (`id`), ADD KEY `plan_information_category_id_foreign` (`category_id`), ADD KEY `plan_information_operator_id_foreign` (`operator_id`), ADD KEY `plan_information_type_id_foreign` (`type_id`), ADD KEY `plan_information_circle_id_foreign` (`circle_id`), ADD KEY `plan_information_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`), ADD KEY `types_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `plan_information`
--
ALTER TABLE `plan_information`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `circles`
--
ALTER TABLE `circles`
ADD CONSTRAINT `circles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `circles_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `operators`
--
ALTER TABLE `operators`
ADD CONSTRAINT `operators_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `operators_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
ADD CONSTRAINT `options_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
ADD CONSTRAINT `photos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
ADD CONSTRAINT `plans_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_information`
--
ALTER TABLE `plan_information`
ADD CONSTRAINT `plan_information_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `plan_information_circle_id_foreign` FOREIGN KEY (`circle_id`) REFERENCES `circles` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `plan_information_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `plan_information_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `plan_information_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
ADD CONSTRAINT `types_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
