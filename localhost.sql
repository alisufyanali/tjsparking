-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2024 at 05:44 AM
-- Server version: 10.6.18-MariaDB-cll-lve-log
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tjstcdmp_parking`
--
CREATE DATABASE IF NOT EXISTS `tjstcdmp_parking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tjstcdmp_parking`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `featured_image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Sample Blog Post', 'This is a sample blog post content.', 'path/to/featured_image.jpg', 1, '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, 'test', 'sadas', 'featured_images/cknRJaeANt6mwk8Uxk0sluAluU0myPPYM54tMqB8.jpg', 4, '2024-07-22 17:15:48', '2024-07-22 17:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `blog_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL),
(2, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, 'Health', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(3, 'Business', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(4, 'Entertainment', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(5, 'Sports', '2024-07-22 16:41:55', '2024-07-22 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `email`, `author`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'john@example.com', 'John Doe', 'Great post!', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, 1, 'jane@example.com', 'Jane Doe', 'Very informative.', '2024-07-22 16:41:55', '2024-07-22 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `discount_type` varchar(8) NOT NULL,
  `discount_usage` decimal(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `discount_type`, `discount_usage`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'hgytjo', 16.77, 'percent', 20.00, '2024-11-16', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, 'zhkvyk', 10.91, 'percent', 20.00, '2024-10-19', '2024-07-22 16:41:55', '2024-07-22 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `subject`, `body`, `recipient`, `cc`, `bcc`, `status`, `sent_at`, `created_at`, `updated_at`) VALUES
(1, 'test', '<p><strong>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</strong></p>', 'alisufyan2410@gmail.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:22:56', '2024-08-05 10:22:56'),
(2, 'test', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:47:16', '2024-08-05 10:47:16'),
(3, 'test', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:49:00', '2024-08-05 10:49:00'),
(4, 'test', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:49:30', '2024-08-05 10:49:30'),
(5, 'as', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:51:44', '2024-08-05 10:51:44'),
(6, 'as', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:52:10', '2024-08-05 10:52:10'),
(7, 'as', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:58:12', '2024-08-05 10:58:12'),
(8, 'sd', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 10:58:33', '2024-08-05 10:58:33'),
(9, 'as', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 11:02:57', '2024-08-05 11:02:57'),
(10, 'sasa', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 11:03:41', '2024-08-05 11:03:41'),
(11, 'ew', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 11:04:56', '2024-08-05 11:04:56'),
(12, 'ew', '<p>Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies.</p>', 'ronanib582@almaxen.com', NULL, NULL, 'draft', NULL, '2024-08-05 11:05:49', '2024-08-05 11:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_driver` varchar(255) NOT NULL,
  `mail_host` varchar(255) NOT NULL,
  `mail_port` int(11) NOT NULL,
  `mail_username` varchar(255) NOT NULL,
  `mail_password` varchar(255) NOT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `mail_from_address` varchar(255) NOT NULL,
  `mail_from_name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `mail_from_address`, `mail_from_name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'tjstruckparking.com', 587, 'info@tjstruckparking.com', 'Admin123!@@!', 'tls', 'info@tjstruckparking.com', 'TJ\'s Truck Parking', 1, '2024-07-22 16:41:55', '2024-08-04 00:35:39'),
(2, 'smtp', 'tjstruckparking.com', 587, 'info@tjstruckparking.com', 'Admin123!@@!', 'tls', 'info@tjstruckparking.com', 'Employee User', 2, '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(3, 'smtp', 'tjstruckparking.com', 587, 'info@tjstruckparking.com', 'Admin123!@@!', 'tls', 'info@tjstruckparking.com', 'Member User', 3, '2024-07-22 16:41:55', '2024-07-22 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepage_content`
--

CREATE TABLE `homepage_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spec_of_resort` text DEFAULT NULL,
  `spec_of_resort_1_img` text DEFAULT NULL,
  `spec_of_resort_1_content` text DEFAULT NULL,
  `spec_of_resort_2_img` text DEFAULT NULL,
  `spec_of_resort_2_content` text DEFAULT NULL,
  `spec_of_resort_3_img` text DEFAULT NULL,
  `spec_of_resort_3_content` text DEFAULT NULL,
  `virtual_link` text DEFAULT NULL,
  `virtual_img` text DEFAULT NULL,
  `virtual_count_1` text DEFAULT NULL,
  `virtual_text_1` text DEFAULT NULL,
  `virtual_count_2` text DEFAULT NULL,
  `virtual_text_2` text DEFAULT NULL,
  `virtual_count_3` text DEFAULT NULL,
  `virtual_text_3` text DEFAULT NULL,
  `virtual_count_4` text DEFAULT NULL,
  `virtual_text_4` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_content`
--

INSERT INTO `homepage_content` (`id`, `spec_of_resort`, `spec_of_resort_1_img`, `spec_of_resort_1_content`, `spec_of_resort_2_img`, `spec_of_resort_2_content`, `spec_of_resort_3_img`, `spec_of_resort_3_content`, `virtual_link`, `virtual_img`, `virtual_count_1`, `virtual_text_1`, `virtual_count_2`, `virtual_text_2`, `virtual_count_3`, `virtual_text_3`, `virtual_count_4`, `virtual_text_4`, `created_at`, `updated_at`) VALUES
(1, 'Catering to the needs of truck drivers and logistics companies by offering secure and convenient parking options at competitive rates. Services include daily, weekly, and monthly parking for truck-trailer combos and oversized trailers. Giving significant discounts to those who need long-term commitments.', 'images/qg2wmZvpslLGH8wqYO5TXv4NIRtgJRpBQfF6hjOR.jpg', NULL, 'images/7sCNP618Su7Bzk6ga5ga32sfHswG2IdjpAv8AOL1.jpg', NULL, 'images/k0KAzF88zNSXBxVEXQnHOm0IcrAXcyNTGln9wSaH.jpg', NULL, 'https://www.youtube.com/watch?v=48uPk1SA37Y', 'images/video-bg.png', '712', 'NEW FRIENDSHIPSs', '254', 'INTERNATIONAL', '430', 'FIVE STARS', '782', 'SERVED', '2024-07-22 16:41:55', '2024-07-27 17:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_testimonial`
--

CREATE TABLE `homepage_testimonial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `postion` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_testimonial`
--

INSERT INTO `homepage_testimonial` (`id`, `comment`, `name`, `postion`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Loved the amenities and 24/7 access. Will definitely be back.', 'John Doe', 'Logistics Coordinator', 'testimonials/client-1.png', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, 'Excellent service and facilities. Perfect for truck drivers!', 'Jane Smith', 'Long-Haul Driver', 'testimonials/client-1.png', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(3, 'eiusmod tempor incididunt ut labore et dolore magna aliqua.Great experience! Secure parking and friendly staff. Highly recommend!', 'Sarah', ' Fleet Manager', 'testimonials/client-1.png', '2024-07-22 16:41:55', '2024-07-22 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `featured` varchar(255) NOT NULL DEFAULT '0',
  `per_night_charges` decimal(8,2) DEFAULT NULL,
  `daily` decimal(8,2) NOT NULL,
  `weekly` decimal(8,2) NOT NULL,
  `monthly` decimal(8,2) NOT NULL,
  `oversized_price` decimal(8,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `total_spaces` text DEFAULT NULL,
  `location_images` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `location_services` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `slug`, `featured`, `per_night_charges`, `daily`, `weekly`, `monthly`, `oversized_price`, `description`, `total_spaces`, `location_images`, `featured_image`, `location_services`, `created_at`, `updated_at`) VALUES
(1, 'Houston, TX', 'houston', '1', 100.00, 100.00, 160.00, 200.00, 50.00, 'Secure parking with electric fence, 24/7 access, bright lighting at night, and security images.', '50', '[\"location-details-.jpg\",\"location-details.jpg\"]', 'location-1.jpg', 'Electric fence , 24/7 access , Bright lighting , Security', '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(2, 'Dallas, TX', 'dallas', '1', 120.00, 120.00, 160.00, 300.00, 50.00, 'Parking available with CCTV surveillance, gated entry, and security patrols.', '20', '[\"location-details-.jpg\",\"location-details.jpg\"]', 'location-2.jpg', 'CCTV surveillance , Gated entry , Security patrols', '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(3, 'Austin, TX', 'austin', '1', 110.00, 110.00, 160.00, 200.00, 50.00, 'Affordable parking with ample space and easy access to major highways.', '30', '[\"location-details-.jpg\",\"location-details.jpg\"]', 'location-3.jpg', 'Ample space , Easy highway access', '2024-07-22 16:41:53', '2024-07-22 16:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `long_truck_parking`
--

CREATE TABLE `long_truck_parking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `number` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `long_truck_parking`
--

INSERT INTO `long_truck_parking` (`id`, `picture`, `title`, `description`, `number`, `location`, `created_at`, `updated_at`) VALUES
(3, '1722849245.jpg', 'Secure Long-Term Truck Parking', 'Our long truck parking area is designed to provide a secure and convenient space for truck drivers who need extended parking. Located conveniently off major highways, our facility offers ample space for both standard and oversized trucks. The area is equipped with high-security features, including 24/7 surveillance cameras and secure fencing, to ensure the safety of your vehicle and cargo.', '243243242', 'Houston, TX, near Highway 45 and I-10', '2024-08-05 11:49:03', '2024-08-05 13:14:05'),
(4, '1722849807.jpg', 'Convenient Truck Parking with 24/7 Surveillance', 'Our long truck parking area is designed to provide a secure and convenient space for truck drivers who need extended parking. Located conveniently off major highways, our facility offers ample space for both standard and oversized trucks. The area is equipped with high-security features, including 24/7 surveillance cameras and secure fencing, to ensure the safety of your vehicle and cargo. With facilities that include well-lit parking spots, easy access to restrooms, and a dedicated space for truck maintenance, our parking area is the perfect choice for long-term truck storage. We offer flexible parking options, including daily, weekly, and monthly rates, to accommodate your needs. Additionally, our location provides easy access to nearby amenities such as fuel stations and dining options. Whether you\\\'re a local truck driver or passing through, our facility provides a comfortable and reliable solution for your parking needs. Enjoy peace of mind knowing your truck is in a secure and well-maintained environment while you take your required rest or attend to other duties', '23543534534', 'Conveniently situated near Highway 290 in Houston', '2024-08-05 11:49:08', '2024-08-05 13:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(37, '2024_06_12_065059_create_time_off_requests_table', 1),
(38, '2024_06_12_065109_create_working_hours_table', 1),
(39, '2024_06_12_065119_create_scheduled_days_table', 1),
(40, '2024_06_12_065129_create_pays_table', 1),
(41, '2024_06_15_165056_create_locations_table', 1),
(42, '2024_06_21_103110_create_contacts_table', 1),
(43, '2024_06_22_074700_create_reviews_table', 1),
(44, '2024_06_22_122455_create_permission_tables', 1),
(45, '2024_06_26_114524_coupen', 1),
(46, '2024_06_27_162558_create_to_do_cards_table', 1),
(47, '2024_06_27_172305_create_to_do_lists_table', 1),
(48, '2024_06_27_181640_create_emails_table', 1),
(49, '2024_07_02_080900_create_prices_table', 1),
(50, '2024_07_04_195519_create_sessions_table', 1),
(51, '2024_07_07_194226_create_events_table', 1),
(52, '2024_07_10_231726_create_reservations_table', 1),
(53, '2024_07_11_081454_create_spots_table', 1),
(54, '2024_07_16_081417_create_category_table', 1),
(55, '2024_07_16_081454_create_blogs_table', 1),
(56, '2024_07_16_081466_create_comments_table', 1),
(57, '2024_07_16_081477_create_tags_table', 1),
(58, '2024_07_16_081488_create_blog_tag_table', 1),
(59, '2024_07_17_203955_create_homepage_content_table', 1),
(60, '2024_07_17_204255_create_homepage_testimonial_table', 1),
(61, '2024_07_18_095823_create_settings_table', 1),
(62, '2024_07_21_170244_create_email_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `pay_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(2, 'role-create', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(3, 'role-edit', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(4, 'role-delete', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(5, 'location-list', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(6, 'location-create', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(7, 'location-edit', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(8, 'location-delete', 'web', '2024-07-22 16:41:54', '2024-07-22 16:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `daily` decimal(8,2) NOT NULL,
  `weekly` decimal(8,2) NOT NULL,
  `monthly` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL,
  `nights` int(11) NOT NULL,
  `truck_number` varchar(255) NOT NULL,
  `truck_color` varchar(255) NOT NULL,
  `number_of_spaces` int(11) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `grand_price` decimal(8,2) NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'Card',
  `stripe_response` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `date_in`, `date_out`, `nights`, `truck_number`, `truck_color`, `number_of_spaces`, `total_price`, `grand_price`, `location_id`, `user_id`, `coupon_id`, `payment_method`, `stripe_response`, `created_at`, `updated_at`) VALUES
(1, '1991-09-19', '2005-11-25', 2, 'ni0-410', 'lime', 1, 102.18, 246.93, 3, 3, 1, 'Cash', 'Illo sequi incidunt omnis quam et incidunt. Aut non voluptatem sit sit delectus quis a. Amet repellat autem dolores adipisci.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, '2015-10-19', '1989-03-09', 5, 'gx0-159', 'white', 4, 101.81, 437.34, 2, 3, 2, 'Cash', 'Illum vero vel sapiente inventore quia et culpa. Aut minima quam excepturi non. Voluptas et est reprehenderit quos doloremque eligendi.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(3, '2012-01-15', '2012-07-16', 2, 'ax0-939', 'olive', 5, 182.85, 436.91, 2, 2, 1, 'Cash', 'A incidunt odio sequi modi laudantium. Voluptatem vel sed magnam nihil ipsa.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(4, '1986-01-21', '2024-04-12', 6, 'hx9-321', 'purple', 2, 141.92, 256.91, 3, 2, 2, 'Cash', 'Deleniti temporibus qui saepe beatae sed at. Sequi totam exercitationem ut aut animi. Libero enim sit dolorem voluptatem.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(5, '1973-11-03', '2005-05-19', 5, 'xb3-569', 'green', 4, 198.91, 238.84, 2, 2, 2, 'Card', 'Et asperiores ut officiis dolorem quasi asperiores tempora voluptatem. Aperiam impedit ducimus exercitationem autem ipsam sint dolores. Expedita voluptas natus maxime non.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(6, '1979-06-22', '1989-08-09', 3, 'ah0-414', 'blue', 4, 120.34, 302.74, 3, 2, 2, 'Cash', 'Quidem libero dolor dolorem aut maxime. Qui cupiditate quos eum accusantium. Recusandae qui expedita porro numquam voluptatum ex nulla. Ex velit cumque et.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(7, '1998-08-12', '1991-10-27', 3, 'mn8-514', 'purple', 1, 107.53, 205.38, 3, 2, 2, 'Card', 'Quis odio adipisci vel sunt ut exercitationem. Aut eum fuga sunt atque voluptate voluptatem. Laudantium ratione nobis aliquid sunt dolorem.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(8, '1971-07-24', '1990-12-22', 4, 'ar9-028', 'teal', 5, 63.92, 280.48, 1, 3, 2, 'Cash', 'Quia quo quae consectetur sequi. Cumque optio consectetur qui consequatur quod assumenda laudantium. Quod eius nemo et aperiam deserunt aut cum laboriosam.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(9, '1997-02-06', '2016-10-17', 2, 'vl8-404', 'teal', 3, 179.38, 366.38, 2, 2, 1, 'Card', 'Sint eos provident repudiandae iste. Minima voluptatem et dignissimos. Aperiam ullam corporis molestiae quis architecto sit maiores. Ut et eos reiciendis et.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(10, '2013-03-26', '1982-07-14', 5, 'ki1-540', 'maroon', 3, 132.51, 216.32, 3, 2, 2, 'Cash', 'Aliquid quod mollitia in blanditiis. Quibusdam sed tempora saepe distinctio nostrum.', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(11, '2024-07-28', '2024-08-06', 9, '123-3123', 't3', 3, 480.00, 480.00, 3, 4, 0, 'Card', 'cs_test_b169a4lu0TFwEoYn1bha0ZDcQgZXWldf9wyilpq7f3wU9IOwSGJeFfXfNx', '2024-07-28 22:36:50', '2024-07-28 22:36:50'),
(12, '2024-07-28', '2024-08-06', 9, '123-3123', 't3', 3, 480.00, 480.00, 3, 4, 0, 'Card', 'cs_test_b169a4lu0TFwEoYn1bha0ZDcQgZXWldf9wyilpq7f3wU9IOwSGJeFfXfNx', '2024-07-28 22:37:08', '2024-07-28 22:37:08'),
(13, '2024-07-28', '2024-08-06', 9, '123-3123', 't3', 3, 480.00, 480.00, 3, 4, 0, 'Card', 'cs_test_b1ZhW6nKAljIdiqLN2cV8Wrrej85PlLGJczPIeGoUAtLJu1RC6Lr1gmSYS', '2024-07-28 22:43:27', '2024-07-28 22:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `message` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `rating`, `message`, `location_id`, `approved`, `created_at`, `updated_at`) VALUES
(2, 'Jane Smith', 'jane@example.com', 4, 'Overall, I had a very good experience at this parking lot. The location is convenient and the security measures are solid. However, there was a minor delay during check-in, which is why I am giving it 4 stars instead of 5. Still, I would definitely use their services again.', 1, 1, '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(3, 'Bob Johnson', 'bob@example.com', 3, 'Average experience, nothing special.', 1, 1, '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(5, 'Alice Brown', 'alice@example.com', 5, 'I was very impressed with the parking services provided. The 24/7 access is a huge plus for me, and the security features like the electric fence and surveillance cameras are top-notch. The staff were friendly and efficient. I will definitely be using this service regularly.', 2, 1, '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(6, 'John Doe', 'john@example.com', 5, 'Great service, highly recommend!', 2, 1, '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(7, 'Charlie Davis', 'charlie@example.com', 4, 'Good overall experience. The location in Houston is excellent and easy to find. The parking spaces are well-maintained and the security is reassuring. However, I did notice that the restroom facilities could use some improvement. Other than that, I was satisfied with the service.', 3, 1, '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(8, 'Jane Smith', 'jane@example.com', 4, 'Very good, but could improve in some areas.', 3, 1, '2024-07-22 16:41:53', '2024-07-22 16:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(2, 'employee', 'web', '2024-07-22 16:41:53', '2024-07-22 16:41:53'),
(3, 'member', 'web', '2024-07-22 16:41:53', '2024-07-22 16:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_days`
--

CREATE TABLE `scheduled_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `sliders` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `meta_tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `user_id`, `logo`, `favicon`, `sliders`, `address`, `contact_no`, `email`, `meta_tags`, `created_at`, `updated_at`) VALUES
(1, 1, 'public/assets/img/logo.png', 'public/assets/img/logo.png', 'public/assets/img/home-slider/slider-5.jpg,public/assets/img/home-slider/slider-6.jpg,public/assets/img/home-slider/slider-7.jpg', '1234 Main St, Anytown, USA', '346-641-9617', 'info@tjstruckparking.com', 'example,site,meta,tags', '2024-07-22 16:41:55', '2024-07-26 17:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) UNSIGNED NOT NULL,
  `spot_number` varchar(255) NOT NULL,
  `is_reserved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Holidays', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(2, 'Food & Drink', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(3, 'Hotels', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(4, 'Activites', '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(5, 'Travel Tips', '2024-07-22 16:41:55', '2024-07-22 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `time_off_requests`
--

CREATE TABLE `time_off_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `to_do_cards`
--

CREATE TABLE `to_do_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `completed` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `to_do_lists`
--

CREATE TABLE `to_do_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `completed` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profile`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', NULL, NULL, NULL, '$2y$12$rtNbNxmArMqHSSy2rOYI7OJgetSI1DcsoeTP8rOAPWDHO2jvixHPe', 'admin', 'QZiUhem5FXGtMz3uzXY3NvfDsFdJUiUHreGrCSG2cop61OcniII4xWTlNHiC', '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(2, 'Employee User', 'employee@example.com', NULL, NULL, NULL, '$2y$12$DSI/EWiKH.yao0FngHs/oeRqaawm.8DYwxXmPabQL4SkR5wUVxDhC', 'emp', NULL, '2024-07-22 16:41:54', '2024-07-22 16:41:54'),
(3, 'Member User', 'member@example.com', NULL, NULL, NULL, '$2y$12$v7YRRcFboP85gCd3jup/Mu.0KKlccBXJE8E6/qb7p.JPKs56zGZ/W', 'member', NULL, '2024-07-22 16:41:55', '2024-07-22 16:41:55'),
(4, 'sufyan', 'alisufyan2410@gmail.com', '03172159160', NULL, NULL, '$2y$12$jEDcCPEB3o1f/ReNXhtiQOEfLWLQv6Nux5NLywvJcn9nEHN8EfyP.', 'member', NULL, '2024-07-28 22:36:50', '2024-07-28 22:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `working_hours`
--

CREATE TABLE `working_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `working_day` varchar(255) NOT NULL,
  `working_on` varchar(255) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tag_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homepage_content`
--
ALTER TABLE `homepage_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_testimonial`
--
ALTER TABLE `homepage_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `long_truck_parking`
--
ALTER TABLE `long_truck_parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_location_id_foreign` (`location_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_location_id_foreign` (`location_id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scheduled_days`
--
ALTER TABLE `scheduled_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheduled_days_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spots_reservation_id_foreign` (`reservation_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_off_requests`
--
ALTER TABLE `time_off_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_off_requests_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `to_do_cards`
--
ALTER TABLE `to_do_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_do_cards_user_id_foreign` (`user_id`);

--
-- Indexes for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_do_lists_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `working_hours_employee_id_foreign` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepage_content`
--
ALTER TABLE `homepage_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepage_testimonial`
--
ALTER TABLE `homepage_testimonial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `long_truck_parking`
--
ALTER TABLE `long_truck_parking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scheduled_days`
--
ALTER TABLE `scheduled_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `time_off_requests`
--
ALTER TABLE `time_off_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `to_do_cards`
--
ALTER TABLE `to_do_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `working_hours`
--
ALTER TABLE `working_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD CONSTRAINT `email_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scheduled_days`
--
ALTER TABLE `scheduled_days`
  ADD CONSTRAINT `scheduled_days_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `spots`
--
ALTER TABLE `spots`
  ADD CONSTRAINT `spots_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_off_requests`
--
ALTER TABLE `time_off_requests`
  ADD CONSTRAINT `time_off_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `to_do_cards`
--
ALTER TABLE `to_do_cards`
  ADD CONSTRAINT `to_do_cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `to_do_lists`
--
ALTER TABLE `to_do_lists`
  ADD CONSTRAINT `to_do_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD CONSTRAINT `working_hours_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
