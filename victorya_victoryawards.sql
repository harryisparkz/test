-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2017 at 12:52 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `victorya_victoryawards`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_17_073458_create_wn_role_table', 1),
(4, '2017_03_17_073519_create_wn_users_table', 1),
(5, '2017_03_17_073540_create_wn_country_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191)),
  KEY `password_resets_token_index` (`token`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aman kumar', 'aman.imaxtechnologies@gmail.com', '$2y$10$ysUs4ZLlQv1cTcylwxveweOh8AwyzrCnY4h94ToJieLE2IQ0hZEI2', 'GlQUJXPfARmFhwz3DQ16TwNFLKl045WPrUuK1QAy9j3iyqZmDQeThDJ9JzMn', '2017-03-17 06:12:49', '2017-03-17 06:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `wn_category`
--

CREATE TABLE IF NOT EXISTS `wn_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wn_category`
--

INSERT INTO `wn_category` (`id`, `name`, `description`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Test Category', 'Test', 1, '1', '2017-03-22 06:20:35', '2017-03-22 06:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `wn_contests`
--

CREATE TABLE IF NOT EXISTS `wn_contests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voting_start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voting_end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `wn_contests`
--

INSERT INTO `wn_contests` (`id`, `name`, `description`, `category`, `start_date`, `end_date`, `voting_start_date`, `voting_end_date`, `payment_type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'contest test', 'test', '["2","3"]', '', '', '', '', '0', '', '0', '2017-03-22 22:51:18', '2017-03-22 23:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `wn_country`
--

CREATE TABLE IF NOT EXISTS `wn_country` (
  `country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code_num_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=251 ;

--
-- Dumping data for table `wn_country`
--

INSERT INTO `wn_country` (`country_id`, `name`, `countries_name`, `iso_code_2`, `iso_code_3`, `iso_code_num_3`, `continent_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 'Is', 'AFG', '4', 'AS', '0', NULL, NULL),
(2, 'AX', 'Aland Islands', 'Is', 'ALA', '248', 'EU', '0', NULL, NULL),
(3, 'AL', 'Albania', 'Re', 'ALB', '8', 'EU', '0', NULL, NULL),
(4, 'DZ', 'Algeria', 'Pe', 'DZA', '12', 'AF', '0', NULL, NULL),
(5, 'AS', 'American Samoa', 'Am', 'ASM', '16', 'OC', '0', NULL, NULL),
(6, 'AD', 'Andorra', 'Pr', 'AND', '20', 'EU', '0', NULL, NULL),
(7, 'AO', 'Angola', 'Re', 'AGO', '24', 'AF', '0', NULL, NULL),
(8, 'AI', 'Anguilla', 'An', 'AIA', '660', 'NA', '0', NULL, NULL),
(9, 'AQ', 'Antarctica', 'An', 'ATA', '10', 'AN', '0', NULL, NULL),
(10, 'AG', 'Antigua and Barbuda', 'An', 'ATG', '28', 'NA', '0', NULL, NULL),
(11, 'AR', 'Argentina', 'Ar', 'ARG', '32', 'SA', '0', NULL, NULL),
(12, 'AM', 'Armenia', 'Re', 'ARM', '51', 'AS', '0', NULL, NULL),
(13, 'AW', 'Aruba', 'Ar', 'ABW', '533', 'NA', '0', NULL, NULL),
(14, 'AU', 'Australia', 'Co', 'AUS', '36', 'OC', '0', NULL, NULL),
(15, 'AT', 'Austria', 'Re', 'AUT', '40', 'EU', '0', NULL, NULL),
(16, 'AZ', 'Azerbaijan', 'Re', 'AZE', '31', 'AS', '0', NULL, NULL),
(17, 'BS', 'Bahamas', 'Co', 'BHS', '44', 'NA', '0', NULL, NULL),
(18, 'BH', 'Bahrain', 'Ki', 'BHR', '48', 'AS', '0', NULL, NULL),
(19, 'BD', 'Bangladesh', 'Pe', 'BGD', '50', 'AS', '0', NULL, NULL),
(20, 'BB', 'Barbados', 'Ba', 'BRB', '52', 'NA', '0', NULL, NULL),
(21, 'BY', 'Belarus', 'Re', 'BLR', '112', 'EU', '0', NULL, NULL),
(22, 'BE', 'Belgium', 'Ki', 'BEL', '56', 'EU', '0', NULL, NULL),
(23, 'BZ', 'Belize', 'Be', 'BLZ', '84', 'NA', '0', NULL, NULL),
(24, 'BJ', 'Benin', 'Re', 'BEN', '204', 'AF', '0', NULL, NULL),
(25, 'BM', 'Bermuda', 'Be', 'BMU', '60', 'NA', '0', NULL, NULL),
(26, 'BT', 'Bhutan', 'Ki', 'BTN', '64', 'AS', '0', NULL, NULL),
(27, 'BO', 'Bolivia', 'Pl', 'BOL', '68', 'SA', '0', NULL, NULL),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bo', 'BES', '535', 'NA', '0', NULL, NULL),
(29, 'BA', 'Bosnia and Herzegovina', 'Bo', 'BIH', '70', 'EU', '0', NULL, NULL),
(30, 'BW', 'Botswana', 'Re', 'BWA', '72', 'AF', '0', NULL, NULL),
(31, 'BV', 'Bouvet Island (Bouvetoya)', 'Bo', 'BVT', '74', 'AN', '0', NULL, NULL),
(32, 'BR', 'Brazil', 'Fe', 'BRA', '76', 'SA', '0', NULL, NULL),
(33, 'IO', 'British Indian Ocean Territory (Chagos Archipelago)', 'Br', 'IOT', '86', 'AS', '0', NULL, NULL),
(34, 'VG', 'British Virgin Islands', 'Br', 'VGB', '92', 'NA', '0', NULL, NULL),
(35, 'BN', 'Brunei Darussalam', 'Br', 'BRN', '96', 'AS', '0', NULL, NULL),
(36, 'BG', 'Bulgaria', 'Re', 'BGR', '100', 'EU', '0', NULL, NULL),
(37, 'BF', 'Burkina Faso', 'Bu', 'BFA', '854', 'AF', '0', NULL, NULL),
(38, 'BI', 'Burundi', 'Re', 'BDI', '108', 'AF', '0', NULL, NULL),
(39, 'KH', 'Cambodia', 'Ki', 'KHM', '116', 'AS', '0', NULL, NULL),
(40, 'CM', 'Cameroon', 'Re', 'CMR', '120', 'AF', '0', NULL, NULL),
(41, 'CA', 'Canada', 'Ca', 'CAN', '124', 'NA', '0', NULL, NULL),
(42, 'CV', 'Cape Verde', 'Re', 'CPV', '132', 'AF', '0', NULL, NULL),
(43, 'KY', 'Cayman Islands', 'Ca', 'CYM', '136', 'NA', '0', NULL, NULL),
(44, 'CF', 'Central African Republic', 'Ce', 'CAF', '140', 'AF', '0', NULL, NULL),
(45, 'TD', 'Chad', 'Re', 'TCD', '148', 'AF', '0', NULL, NULL),
(46, 'CL', 'Chile', 'Re', 'CHL', '152', 'SA', '0', NULL, NULL),
(47, 'CN', 'China', 'Pe', 'CHN', '156', 'AS', '0', NULL, NULL),
(48, 'CX', 'Christmas Island', 'Ch', 'CXR', '162', 'AS', '0', NULL, NULL),
(49, 'CC', 'Cocos (Keeling) Islands', 'Co', 'CCK', '166', 'AS', '0', NULL, NULL),
(50, 'CO', 'Colombia', 'Re', 'COL', '170', 'SA', '0', NULL, NULL),
(51, 'KM', 'Comoros', 'Un', 'COM', '174', 'AF', '0', NULL, NULL),
(52, 'CD', 'Congo', 'De', 'COD', '180', 'AF', '0', NULL, NULL),
(53, 'CG', 'Congo', 'Re', 'COG', '178', 'AF', '0', NULL, NULL),
(54, 'CK', 'Cook Islands', 'Co', 'COK', '184', 'OC', '0', NULL, NULL),
(55, 'CR', 'Costa Rica', 'Re', 'CRI', '188', 'NA', '0', NULL, NULL),
(56, 'CI', 'Cote d''Ivoire', 'Re', 'CIV', '384', 'AF', '0', NULL, NULL),
(57, 'HR', 'Croatia', 'Re', 'HRV', '191', 'EU', '0', NULL, NULL),
(58, 'CU', 'Cuba', 'Re', 'CUB', '192', 'NA', '0', NULL, NULL),
(59, 'CW', 'Curacao', 'Cu', 'CUW', '531', 'NA', '0', NULL, NULL),
(60, 'CY', 'Cyprus', 'Re', 'CYP', '196', 'AS', '0', NULL, NULL),
(61, 'CZ', 'Czech Republic', 'Cz', 'CZE', '203', 'EU', '0', NULL, NULL),
(62, 'DK', 'Denmark', 'Ki', 'DNK', '208', 'EU', '0', NULL, NULL),
(63, 'DJ', 'Djibouti', 'Re', 'DJI', '262', 'AF', '0', NULL, NULL),
(64, 'DM', 'Dominica', 'Co', 'DMA', '212', 'NA', '0', NULL, NULL),
(65, 'DO', 'Dominican Republic', 'Do', 'DOM', '214', 'NA', '0', NULL, NULL),
(66, 'EC', 'Ecuador', 'Re', 'ECU', '218', 'SA', '0', NULL, NULL),
(67, 'EG', 'Egypt', 'Ar', 'EGY', '818', 'AF', '0', NULL, NULL),
(68, 'SV', 'El Salvador', 'Re', 'SLV', '222', 'NA', '0', NULL, NULL),
(69, 'GQ', 'Equatorial Guinea', 'Re', 'GNQ', '226', 'AF', '0', NULL, NULL),
(70, 'ER', 'Eritrea', 'St', 'ERI', '232', 'AF', '0', NULL, NULL),
(71, 'EE', 'Estonia', 'Re', 'EST', '233', 'EU', '0', NULL, NULL),
(72, 'ET', 'Ethiopia', 'Fe', 'ETH', '231', 'AF', '0', NULL, NULL),
(73, 'FO', 'Faroe Islands', 'Fa', 'FRO', '234', 'EU', '0', NULL, NULL),
(74, 'FK', 'Falkland Islands (Malvinas)', 'Fa', 'FLK', '238', 'SA', '0', NULL, NULL),
(75, 'FJ', 'Fiji', 'Re', 'FJI', '242', 'OC', '0', NULL, NULL),
(76, 'FI', 'Finland', 'Re', 'FIN', '246', 'EU', '0', NULL, NULL),
(77, 'FR', 'France', 'Fr', 'FRA', '250', 'EU', '0', NULL, NULL),
(78, 'GF', 'French Guiana', 'Fr', 'GUF', '254', 'SA', '0', NULL, NULL),
(79, 'PF', 'French Polynesia', 'Fr', 'PYF', '258', 'OC', '0', NULL, NULL),
(80, 'TF', 'French Southern Territories', 'Fr', 'ATF', '260', 'AN', '0', NULL, NULL),
(81, 'GA', 'Gabon', 'Ga', 'GAB', '266', 'AF', '0', NULL, NULL),
(82, 'GM', 'Gambia', 'Re', 'GMB', '270', 'AF', '0', NULL, NULL),
(83, 'GE', 'Georgia', 'Ge', 'GEO', '268', 'AS', '0', NULL, NULL),
(84, 'DE', 'Germany', 'Fe', 'DEU', '276', 'EU', '0', NULL, NULL),
(85, 'GH', 'Ghana', 'Re', 'GHA', '288', 'AF', '0', NULL, NULL),
(86, 'GI', 'Gibraltar', 'Gi', 'GIB', '292', 'EU', '0', NULL, NULL),
(87, 'GR', 'Greece', 'He', 'GRC', '300', 'EU', '0', NULL, NULL),
(88, 'GL', 'Greenland', 'Gr', 'GRL', '304', 'NA', '0', NULL, NULL),
(89, 'GD', 'Grenada', 'Gr', 'GRD', '308', 'NA', '0', NULL, NULL),
(90, 'GP', 'Guadeloupe', 'Gu', 'GLP', '312', 'NA', '0', NULL, NULL),
(91, 'GU', 'Guam', 'Gu', 'GUM', '316', 'OC', '0', NULL, NULL),
(92, 'GT', 'Guatemala', 'Re', 'GTM', '320', 'NA', '0', NULL, NULL),
(93, 'GG', 'Guernsey', 'Ba', 'GGY', '831', 'EU', '0', NULL, NULL),
(94, 'GN', 'Guinea', 'Re', 'GIN', '324', 'AF', '0', NULL, NULL),
(95, 'GW', 'Guinea-Bissau', 'Re', 'GNB', '624', 'AF', '0', NULL, NULL),
(96, 'GY', 'Guyana', 'Co', 'GUY', '328', 'SA', '0', NULL, NULL),
(97, 'HT', 'Haiti', 'Re', 'HTI', '332', 'NA', '0', NULL, NULL),
(98, 'HM', 'Heard Island and McDonald Islands', 'He', 'HMD', '334', 'AN', '0', NULL, NULL),
(99, 'VA', 'Holy See (Vatican City State)', 'Ho', 'VAT', '336', 'EU', '0', NULL, NULL),
(100, 'HN', 'Honduras', 'Re', 'HND', '340', 'NA', '0', NULL, NULL),
(101, 'HK', 'Hong Kong', 'Ho', 'HKG', '344', 'AS', '0', NULL, NULL),
(102, 'HU', 'Hungary', 'Hu', 'HUN', '348', 'EU', '0', NULL, NULL),
(103, 'IS', 'Iceland', 'Re', 'ISL', '352', 'EU', '0', NULL, NULL),
(104, 'IN', 'India', 'Re', 'IND', '356', 'AS', '0', NULL, NULL),
(105, 'ID', 'Indonesia', 'Re', 'IDN', '360', 'AS', '0', NULL, NULL),
(106, 'IR', 'Iran', 'Is', 'IRN', '364', 'AS', '0', NULL, NULL),
(107, 'IQ', 'Iraq', 'Re', 'IRQ', '368', 'AS', '0', NULL, NULL),
(108, 'IE', 'Ireland', 'Ir', 'IRL', '372', 'EU', '0', NULL, NULL),
(109, 'IM', 'Isle of Man', 'Is', 'IMN', '833', 'EU', '0', NULL, NULL),
(110, 'IL', 'Israel', 'St', 'ISR', '376', 'AS', '0', NULL, NULL),
(111, 'IT', 'Italy', 'It', 'ITA', '380', 'EU', '0', NULL, NULL),
(112, 'JM', 'Jamaica', 'Ja', 'JAM', '388', 'NA', '0', NULL, NULL),
(113, 'JP', 'Japan', 'Ja', 'JPN', '392', 'AS', '0', NULL, NULL),
(114, 'JE', 'Jersey', 'Ba', 'JEY', '832', 'EU', '0', NULL, NULL),
(115, 'JO', 'Jordan', 'Ha', 'JOR', '400', 'AS', '0', NULL, NULL),
(116, 'KZ', 'Kazakhstan', 'Re', 'KAZ', '398', 'AS', '0', NULL, NULL),
(117, 'KE', 'Kenya', 'Re', 'KEN', '404', 'AF', '0', NULL, NULL),
(118, 'KI', 'Kiribati', 'Re', 'KIR', '296', 'OC', '0', NULL, NULL),
(119, 'KP', 'Korea', 'De', 'PRK', '408', 'AS', '0', NULL, NULL),
(120, 'KR', 'Korea', 'Re', 'KOR', '410', 'AS', '0', NULL, NULL),
(121, 'KW', 'Kuwait', 'St', 'KWT', '414', 'AS', '0', NULL, NULL),
(122, 'KG', 'Kyrgyz Republic', 'Ky', 'KGZ', '417', 'AS', '0', NULL, NULL),
(123, 'LA', 'Lao People''s Democratic Republic', 'La', 'LAO', '418', 'AS', '0', NULL, NULL),
(124, 'LV', 'Latvia', 'Re', 'LVA', '428', 'EU', '0', NULL, NULL),
(125, 'LB', 'Lebanon', 'Le', 'LBN', '422', 'AS', '0', NULL, NULL),
(126, 'LS', 'Lesotho', 'Ki', 'LSO', '426', 'AF', '0', NULL, NULL),
(127, 'LR', 'Liberia', 'Re', 'LBR', '430', 'AF', '0', NULL, NULL),
(128, 'LY', 'Libya', 'Li', 'LBY', '434', 'AF', '0', NULL, NULL),
(129, 'LI', 'Liechtenstein', 'Pr', 'LIE', '438', 'EU', '0', NULL, NULL),
(130, 'LT', 'Lithuania', 'Re', 'LTU', '440', 'EU', '0', NULL, NULL),
(131, 'LU', 'Luxembourg', 'Gr', 'LUX', '442', 'EU', '0', NULL, NULL),
(132, 'MO', 'Macao', 'Ma', 'MAC', '446', 'AS', '0', NULL, NULL),
(133, 'MK', 'Macedonia', 'Re', 'MKD', '807', 'EU', '0', NULL, NULL),
(134, 'MG', 'Madagascar', 'Re', 'MDG', '450', 'AF', '0', NULL, NULL),
(135, 'MW', 'Malawi', 'Re', 'MWI', '454', 'AF', '0', NULL, NULL),
(136, 'MY', 'Malaysia', 'Ma', 'MYS', '458', 'AS', '0', NULL, NULL),
(137, 'MV', 'Maldives', 'Re', 'MDV', '462', 'AS', '0', NULL, NULL),
(138, 'ML', 'Mali', 'Re', 'MLI', '466', 'AF', '0', NULL, NULL),
(139, 'MT', 'Malta', 'Re', 'MLT', '470', 'EU', '0', NULL, NULL),
(140, 'MH', 'Marshall Islands', 'Re', 'MHL', '584', 'OC', '0', NULL, NULL),
(141, 'MQ', 'Martinique', 'Ma', 'MTQ', '474', 'NA', '0', NULL, NULL),
(142, 'MR', 'Mauritania', 'Is', 'MRT', '478', 'AF', '0', NULL, NULL),
(143, 'MU', 'Mauritius', 'Re', 'MUS', '480', 'AF', '0', NULL, NULL),
(144, 'YT', 'Mayotte', 'Ma', 'MYT', '175', 'AF', '0', NULL, NULL),
(145, 'MX', 'Mexico', 'Un', 'MEX', '484', 'NA', '0', NULL, NULL),
(146, 'FM', 'Micronesia', 'Fe', 'FSM', '583', 'OC', '0', NULL, NULL),
(147, 'MD', 'Moldova', 'Re', 'MDA', '498', 'EU', '0', NULL, NULL),
(148, 'MC', 'Monaco', 'Pr', 'MCO', '492', 'EU', '0', NULL, NULL),
(149, 'MN', 'Mongolia', 'Mo', 'MNG', '496', 'AS', '0', NULL, NULL),
(150, 'ME', 'Montenegro', 'Mo', 'MNE', '499', 'EU', '0', NULL, NULL),
(151, 'MS', 'Montserrat', 'Mo', 'MSR', '500', 'NA', '0', NULL, NULL),
(152, 'MA', 'Morocco', 'Ki', 'MAR', '504', 'AF', '0', NULL, NULL),
(153, 'MZ', 'Mozambique', 'Re', 'MOZ', '508', 'AF', '0', NULL, NULL),
(154, 'MM', 'Myanmar', 'Re', 'MMR', '104', 'AS', '0', NULL, NULL),
(155, 'NA', 'Namibia', 'Re', 'NAM', '516', 'AF', '0', NULL, NULL),
(156, 'NR', 'Nauru', 'Re', 'NRU', '520', 'OC', '0', NULL, NULL),
(157, 'NP', 'Nepal', 'Fe', 'NPL', '524', 'AS', '0', NULL, NULL),
(158, 'NL', 'Netherlands', 'Ki', 'NLD', '528', 'EU', '0', NULL, NULL),
(159, 'NC', 'New Caledonia', 'Ne', 'NCL', '540', 'OC', '0', NULL, NULL),
(160, 'NZ', 'New Zealand', 'Ne', 'NZL', '554', 'OC', '0', NULL, NULL),
(161, 'NI', 'Nicaragua', 'Re', 'NIC', '558', 'NA', '0', NULL, NULL),
(162, 'NE', 'Niger', 'Re', 'NER', '562', 'AF', '0', NULL, NULL),
(163, 'NG', 'Nigeria', 'Fe', 'NGA', '566', 'AF', '0', NULL, NULL),
(164, 'NU', 'Niue', 'Ni', 'NIU', '570', 'OC', '0', NULL, NULL),
(165, 'NF', 'Norfolk Island', 'No', 'NFK', '574', 'OC', '0', NULL, NULL),
(166, 'MP', 'Northern Mariana Islands', 'Co', 'MNP', '580', 'OC', '0', NULL, NULL),
(167, 'NO', 'Norway', 'Ki', 'NOR', '578', 'EU', '0', NULL, NULL),
(168, 'OM', 'Oman', 'Su', 'OMN', '512', 'AS', '0', NULL, NULL),
(169, 'PK', 'Pakistan', 'Is', 'PAK', '586', 'AS', '0', NULL, NULL),
(170, 'PW', 'Palau', 'Re', 'PLW', '585', 'OC', '0', NULL, NULL),
(171, 'PS', 'Palestine', 'St', 'PSE', '275', 'AS', '0', NULL, NULL),
(172, 'PA', 'Panama', 'Re', 'PAN', '591', 'NA', '0', NULL, NULL),
(173, 'PG', 'Papua New Guinea', 'In', 'PNG', '598', 'OC', '0', NULL, NULL),
(174, 'PY', 'Paraguay', 'Re', 'PRY', '600', 'SA', '0', NULL, NULL),
(175, 'PE', 'Peru', 'Re', 'PER', '604', 'SA', '0', NULL, NULL),
(176, 'PH', 'Philippines', 'Re', 'PHL', '608', 'AS', '0', NULL, NULL),
(177, 'PN', 'Pitcairn Islands', 'Pi', 'PCN', '612', 'OC', '0', NULL, NULL),
(178, 'PL', 'Poland', 'Re', 'POL', '616', 'EU', '0', NULL, NULL),
(179, 'PT', 'Portugal', 'Po', 'PRT', '620', 'EU', '0', NULL, NULL),
(180, 'PR', 'Puerto Rico', 'Co', 'PRI', '630', 'NA', '0', NULL, NULL),
(181, 'QA', 'Qatar', 'St', 'QAT', '634', 'AS', '0', NULL, NULL),
(182, 'RE', 'Reunion', 'Re', 'REU', '638', 'AF', '0', NULL, NULL),
(183, 'RO', 'Romania', 'Ro', 'ROU', '642', 'EU', '0', NULL, NULL),
(184, 'RU', 'Russian Federation', 'Ru', 'RUS', '643', 'EU', '0', NULL, NULL),
(185, 'RW', 'Rwanda', 'Re', 'RWA', '646', 'AF', '0', NULL, NULL),
(186, 'BL', 'Saint Barthelemy', 'Sa', 'BLM', '652', 'NA', '0', NULL, NULL),
(187, 'SH', 'Saint Helena, Ascension and Tristan da Cunha', 'Sa', 'SHN', '654', 'AF', '0', NULL, NULL),
(188, 'KN', 'Saint Kitts and Nevis', 'Fe', 'KNA', '659', 'NA', '0', NULL, NULL),
(189, 'LC', 'Saint Lucia', 'Sa', 'LCA', '662', 'NA', '0', NULL, NULL),
(190, 'MF', 'Saint Martin', 'Sa', 'MAF', '663', 'NA', '0', NULL, NULL),
(191, 'PM', 'Saint Pierre and Miquelon', 'Sa', 'SPM', '666', 'NA', '0', NULL, NULL),
(192, 'VC', 'Saint Vincent and the Grenadines', 'Sa', 'VCT', '670', 'NA', '0', NULL, NULL),
(193, 'WS', 'Samoa', 'In', 'WSM', '882', 'OC', '0', NULL, NULL),
(194, 'SM', 'San Marino', 'Re', 'SMR', '674', 'EU', '0', NULL, NULL),
(195, 'ST', 'Sao Tome and Principe', 'De', 'STP', '678', 'AF', '0', NULL, NULL),
(196, 'SA', 'Saudi Arabia', 'Ki', 'SAU', '682', 'AS', '0', NULL, NULL),
(197, 'SN', 'Senegal', 'Re', 'SEN', '686', 'AF', '0', NULL, NULL),
(198, 'RS', 'Serbia', 'Re', 'SRB', '688', 'EU', '0', NULL, NULL),
(199, 'SC', 'Seychelles', 'Re', 'SYC', '690', 'AF', '0', NULL, NULL),
(200, 'SL', 'Sierra Leone', 'Re', 'SLE', '694', 'AF', '0', NULL, NULL),
(201, 'SG', 'Singapore', 'Re', 'SGP', '702', 'AS', '0', NULL, NULL),
(202, 'SX', 'Sint Maarten (Dutch part)', 'Si', 'SXM', '534', 'NA', '0', NULL, NULL),
(203, 'SK', 'Slovakia (Slovak Republic)', 'Sl', 'SVK', '703', 'EU', '0', NULL, NULL),
(204, 'SI', 'Slovenia', 'Re', 'SVN', '705', 'EU', '0', NULL, NULL),
(205, 'SB', 'Solomon Islands', 'So', 'SLB', '90', 'OC', '0', NULL, NULL),
(206, 'SO', 'Somalia', 'So', 'SOM', '706', 'AF', '0', NULL, NULL),
(207, 'ZA', 'South Africa', 'Re', 'ZAF', '710', 'AF', '0', NULL, NULL),
(208, 'GS', 'South Georgia and the South Sandwich Islands', 'So', 'SGS', '239', 'AN', '0', NULL, NULL),
(209, 'SS', 'South Sudan', 'Re', 'SSD', '728', 'AF', '0', NULL, NULL),
(210, 'ES', 'Spain', 'Ki', 'ESP', '724', 'EU', '0', NULL, NULL),
(211, 'LK', 'Sri Lanka', 'De', 'LKA', '144', 'AS', '0', NULL, NULL),
(212, 'SD', 'Sudan', 'Re', 'SDN', '729', 'AF', '0', NULL, NULL),
(213, 'SR', 'Suriname', 'Re', 'SUR', '740', 'SA', '0', NULL, NULL),
(214, 'SJ', 'Svalbard & Jan Mayen Islands', 'Sv', 'SJM', '744', 'EU', '0', NULL, NULL),
(215, 'SZ', 'Swaziland', 'Ki', 'SWZ', '748', 'AF', '0', NULL, NULL),
(216, 'SE', 'Sweden', 'Ki', 'SWE', '752', 'EU', '0', NULL, NULL),
(217, 'CH', 'Switzerland', 'Sw', 'CHE', '756', 'EU', '0', NULL, NULL),
(218, 'SY', 'Syrian Arab Republic', 'Sy', 'SYR', '760', 'AS', '0', NULL, NULL),
(219, 'TW', 'Taiwan', 'Ta', 'TWN', '158', 'AS', '0', NULL, NULL),
(220, 'TJ', 'Tajikistan', 'Re', 'TJK', '762', 'AS', '0', NULL, NULL),
(221, 'TZ', 'Tanzania', 'Un', 'TZA', '834', 'AF', '0', NULL, NULL),
(222, 'TH', 'Thailand', 'Ki', 'THA', '764', 'AS', '0', NULL, NULL),
(223, 'TL', 'Timor-Leste', 'De', 'TLS', '626', 'AS', '0', NULL, NULL),
(224, 'TG', 'Togo', 'To', 'TGO', '768', 'AF', '0', NULL, NULL),
(225, 'TK', 'Tokelau', 'To', 'TKL', '772', 'OC', '0', NULL, NULL),
(226, 'TO', 'Tonga', 'Ki', 'TON', '776', 'OC', '0', NULL, NULL),
(227, 'TT', 'Trinidad and Tobago', 'Re', 'TTO', '780', 'NA', '0', NULL, NULL),
(228, 'TN', 'Tunisia', 'Tu', 'TUN', '788', 'AF', '0', NULL, NULL),
(229, 'TR', 'Turkey', 'Re', 'TUR', '792', 'AS', '0', NULL, NULL),
(230, 'TM', 'Turkmenistan', 'Tu', 'TKM', '795', 'AS', '0', NULL, NULL),
(231, 'TC', 'Turks and Caicos Islands', 'Tu', 'TCA', '796', 'NA', '0', NULL, NULL),
(232, 'TV', 'Tuvalu', 'Tu', 'TUV', '798', 'OC', '0', NULL, NULL),
(233, 'UG', 'Uganda', 'Re', 'UGA', '800', 'AF', '0', NULL, NULL),
(234, 'UA', 'Ukraine', 'Uk', 'UKR', '804', 'EU', '0', NULL, NULL),
(235, 'AE', 'United Arab Emirates', 'Un', 'ARE', '784', 'AS', '0', NULL, NULL),
(236, 'GB', 'United Kingdom of Great Britain & Northern Ireland', 'Un', 'GBR', '826', 'EU', '0', NULL, NULL),
(237, 'US', 'United States of America', 'Un', 'USA', '840', 'NA', '0', NULL, NULL),
(238, 'UM', 'United States Minor Outlying Islands', 'Un', 'UMI', '581', 'OC', '0', NULL, NULL),
(239, 'VI', 'United States Virgin Islands', 'Un', 'VIR', '850', 'NA', '0', NULL, NULL),
(240, 'UY', 'Uruguay', 'Ea', 'URY', '858', 'SA', '0', NULL, NULL),
(241, 'UZ', 'Uzbekistan', 'Re', 'UZB', '860', 'AS', '0', NULL, NULL),
(242, 'VU', 'Vanuatu', 'Re', 'VUT', '548', 'OC', '0', NULL, NULL),
(243, 'VE', 'Venezuela', 'Bo', 'VEN', '862', 'SA', '0', NULL, NULL),
(244, 'VN', 'Vietnam', 'So', 'VNM', '704', 'AS', '0', NULL, NULL),
(245, 'WF', 'Wallis and Futuna', 'Wa', 'WLF', '876', 'OC', '0', NULL, NULL),
(246, 'EH', 'Western Sahara', 'We', 'ESH', '732', 'AF', '0', NULL, NULL),
(247, 'YE', 'Yemen', 'Ye', 'YEM', '887', 'AS', '0', NULL, NULL),
(248, 'ZM', 'Zambia', 'Re', 'ZMB', '894', 'AF', '0', NULL, NULL),
(249, 'ZW', 'Zimbabwe', 'Re', 'ZWE', '716', 'AF', '0', NULL, NULL),
(250, 'PL', 'Poland', 'Po', 'POL', '48', 'PL', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wn_questions`
--

CREATE TABLE IF NOT EXISTS `wn_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questiontype_id` int(11) NOT NULL,
  `word_limit` int(11) NOT NULL,
  `is_muliple` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` int(11) NOT NULL,
  `answer_type` int(11) NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `wn_role`
--

CREATE TABLE IF NOT EXISTS `wn_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` date NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wn_role`
--

INSERT INTO `wn_role` (`role_id`, `name`, `update_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2017-03-20', '0', '2017-03-19 18:30:00', '2017-03-19 18:30:00'),
(2, 'Admin', '2017-03-20', '0', '2017-03-19 18:30:00', '2017-03-19 18:30:00'),
(3, 'Judge', '2017-03-20', '0', '2017-03-19 18:30:00', '2017-03-19 18:30:00'),
(4, 'User', '2017-03-20', '0', '2017-03-19 18:30:00', '2017-03-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `wn_users`
--

CREATE TABLE IF NOT EXISTS `wn_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wn_users`
--

INSERT INTO `wn_users` (`user_id`, `role_id`, `firstname`, `lastname`, `username`, `email`, `password`, `companyname`, `country_id`, `description`, `ip`, `update_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Aman', 'kumar', 'Aman kumar', 'aman.imaxtechnologies@gmail.com', '$2y$10$8ioLOqMeewh37Ut1Npmt3.MoESPJ6Bp3FkZcJSmOTFUV5hQI7r6cu', 'Imax', 104, 'Testing', '192.168.1.1', '2017-03-20', 2, NULL, NULL),
(2, 4, 'Testing', 'User', 'Testing', 'testing@gmail.com', '$2y$10$8ioLOqMeewh37Ut1Npmt3.MoESPJ6Bp3FkZcJSmOTFUV5hQI7r6cu', 'Imax', 104, 'Testing', '192.168.1.1', '2017-03-20', 2, NULL, NULL),
(3, 4, 'aman', '--', 'aman', 'aman@gmail.com', '$2y$10$uRbQby1iSH5wY1uuxIVpVucRsXlNe3YdppnbOl0KieMCjuD7ktIpu', 'Imax', 123, 'Testing', '192.168.1.1', '2017-03-22', 1, '2017-03-22 04:25:50', NULL),
(4, 4, 'Aman', 'kumar', 'aman.imax', 'aman.imax@ymail.com', '$2y$10$cgO/bEiWcpepJ73wf4ayieQncXPVKXvgBBWRVsrKZpJ8ILutkl3A6', 'Imax Technologies', 104, 'This is only for testing purposes .. Thanks', '127.0.0.1', '2017-03-22', 1, '2017-03-22 04:42:31', NULL),
(5, 4, 'Karnail', 'Singh', 'Karnailsingh', 'karnail@gmail.com', '$2y$10$CfzlcAsAl7rc1O5aRlVjRuGBehnS5g8dfif5ZnpDb/SCtw/DZbZFC', 'Imax Technologies', 104, 'This user is only for testing purposes .', '127.0.0.1', '2017-03-23', 2, '2017-03-23 03:21:49', NULL),
(6, 4, 'Aman', 'Kumar', 'Amankumar', 'developer.amankr@gmail.com', '$2y$10$hSkHHEIEjHwf04jzN0vB9u9AYzsKXlzeHeUMJpa8SA7u/.fZYrELG', 'Imax', 16, 'This is only for testing', '127.0.0.1', '2017-03-23', 0, '2017-03-23 07:23:37', NULL),
(7, 4, 'Hary', 'Singh', 'harry', 'hary@ymail.com', '$2y$10$ZC6EOTFlhTi3swNUa5ZCD.rG0P23pj7Jvk.G7Xnh4mNka/UFJW8R2', 'Imax Technologies', 30, 'This is testing account', '103.239.234.9', '2017-03-24', 0, '2017-03-24 04:56:31', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
