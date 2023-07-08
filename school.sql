-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2023 at 02:14 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `status`, `student_id`, `grade_id`, `classroom_id`, `section_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(52, '2023-04-09', 0, 7, 1, 3, 3, 1, '2023-04-09 22:31:34', '2023-04-09 22:36:57'),
(53, '2023-04-09', 1, 9, 1, 3, 3, 1, '2023-04-09 22:31:34', '2023-04-09 22:36:57'),
(54, '2023-04-09', 0, 5, 1, 3, 3, 1, '2023-04-09 22:35:28', '2023-04-09 22:36:57'),
(55, '2023-04-08', 1, 5, 1, 3, 3, 1, '2023-04-09 22:38:33', '2023-04-10 18:49:59'),
(56, '2023-04-08', 0, 7, 1, 3, 3, 1, '2023-04-09 22:38:33', '2023-04-10 18:49:59'),
(57, '2023-04-08', 1, 9, 1, 3, 3, 1, '2023-04-09 22:38:33', '2023-04-10 18:49:59'),
(58, '2023-04-10', 1, 5, 1, 3, 3, 1, '2023-04-10 20:19:36', '2023-04-10 20:58:02'),
(59, '2023-04-10', 0, 7, 1, 3, 3, 1, '2023-04-10 20:19:36', '2023-04-10 20:58:02'),
(60, '2023-04-10', 1, 9, 1, 3, 3, 1, '2023-04-10 20:19:36', '2023-04-10 20:58:02'),
(61, '2023-04-13', 1, 5, 1, 3, 3, 1, '2023-04-13 10:21:04', '2023-04-13 10:21:29'),
(62, '2023-04-13', 0, 7, 1, 3, 3, 1, '2023-04-13 10:21:04', '2023-04-13 10:21:29'),
(63, '2023-04-13', 1, 9, 1, 3, 3, 1, '2023-04-13 10:21:04', '2023-04-13 10:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `bloods`
--

CREATE TABLE `bloods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloods`
--

INSERT INTO `bloods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O-', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(2, 'O+', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(3, 'A-', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(4, 'A+', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(5, 'B-', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(6, 'B+', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(7, 'AB-', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(8, 'AB+', '2023-03-17 12:32:30', '2023-03-17 12:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `class_name`, `grade_id`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u0648\\u0644\\u064a\",\"en\":\"the first group\"}', 1, '2023-03-17 12:50:25', '2023-03-17 12:50:25'),
(2, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0647\",\"en\":\"the second band\"}', 1, '2023-03-17 12:50:47', '2023-03-17 12:50:47'),
(3, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\\u0647\",\"en\":\"Third Division\"}', 1, '2023-03-17 12:51:05', '2023-03-17 12:51:05'),
(4, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\\u0647\",\"en\":\"The fourth squad\"}', 1, '2023-03-17 12:51:25', '2023-03-17 12:51:25'),
(5, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u0648\\u0644\\u064a\",\"en\":\"the first group\"}', 2, '2023-03-17 12:51:34', '2023-03-17 12:51:34'),
(6, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0647\",\"en\":\"the second band\"}', 2, '2023-03-17 12:51:43', '2023-03-17 12:51:43'),
(7, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\\u0647\",\"en\":\"Third Division\"}', 2, '2023-03-17 12:51:52', '2023-03-17 12:51:52'),
(8, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\\u0647\",\"en\":\"The fourth squad\"}', 2, '2023-03-17 12:52:03', '2023-03-17 12:52:03'),
(9, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u0648\\u0644\\u064a\",\"en\":\"the first group\"}', 3, '2023-03-17 12:52:12', '2023-03-17 12:52:12'),
(10, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0647\",\"en\":\"the second band\"}', 3, '2023-03-17 12:52:20', '2023-03-17 12:52:20'),
(11, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b\\u0647\",\"en\":\"Third Division\"}', 3, '2023-03-17 12:52:28', '2023-03-17 12:52:28'),
(12, '{\"ar\":\"\\u0627\\u0644\\u0641\\u0631\\u0642\\u0647 \\u0627\\u0644\\u0631\\u0627\\u0628\\u0639\\u0647\",\"en\":\"The fourth squad\"}', 3, '2023-03-17 12:52:40', '2023-03-17 12:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint UNSIGNED NOT NULL,
  `score` double(8,2) NOT NULL,
  `abuse` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `created_at`, `updated_at`) VALUES
(9, 'ff', '2023-03-30T00:00:00+02:00', '2023-04-14 10:32:11', '2023-04-14 10:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `year`, `teacher_id`, `grade_id`, `classroom_id`, `section_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0645\\u062d\\u0627\\u0633\\u0628\\u0647 \\u0634\\u0647\\u0631 \\u064a\\u0646\\u0627\\u064a\\u0631\",\"en\":\"\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646 \\u0645\\u062d\\u0627\\u0633\\u0628\\u0647 \\u0634\\u0647\\u0631 \\u064a\\u0646\\u0627\\u064a\\u0631\"}', '2023', 1, 1, 3, 3, 2, NULL, '2023-04-14 14:17:00'),
(2, '{\"ar\":\"gggg\",\"en\":\"ggggg\"}', '2023', 1, 1, 2, 1, 2, '2023-04-14 12:16:35', '2023-04-14 12:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `feetype_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `title`, `description`, `amount`, `year`, `grade_id`, `classroom_id`, `feetype_id`, `created_at`, `updated_at`) VALUES
(9, '{\"ar\":\"\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u062f\\u0631\\u0627\\u0633\\u064a\\u0647\",\"en\":\"Venus Chaney\"}', NULL, '10000.00', '2023', 1, 3, 1, '2023-04-02 22:32:48', '2023-04-02 22:32:48'),
(10, '{\"ar\":\"\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0628\\u0627\\u0635\",\"en\":\"Nola Leon\"}', NULL, '2000.00', '2023', 1, 3, 3, '2023-04-02 22:35:10', '2023-04-02 22:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `fee_invoices`
--

CREATE TABLE `fee_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `fees_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_invoices`
--

INSERT INTO `fee_invoices` (`id`, `date`, `amount`, `description`, `student_id`, `grade_id`, `classroom_id`, `fees_id`, `created_at`, `updated_at`) VALUES
(14, '2023-04-13', '10000.00', NULL, 5, 1, 3, 9, '2023-04-13 19:39:53', '2023-04-13 19:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `fee_types`
--

CREATE TABLE `fee_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_types`
--

INSERT INTO `fee_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0645\\u062f\\u0631\\u0633\\u064a\\u0647\",\"en\":\"School Fee\"}', '2023-03-25 01:54:21', '2023-03-25 01:54:21'),
(2, '{\"ar\":\"\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0643\\u062a\\u0628\",\"en\":\"Book Fee\"}', '2023-03-25 01:54:21', '2023-03-25 01:54:21'),
(3, '{\"ar\":\"\\u0645\\u0635\\u0627\\u0631\\u064a\\u0641 \\u0628\\u0627\\u0635\",\"en\":\"Bus Fee\"}', '2023-03-25 01:54:21', '2023-03-25 01:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `fund_accounts`
--

CREATE TABLE `fund_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_id` bigint UNSIGNED DEFAULT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_accounts`
--

INSERT INTO `fund_accounts` (`id`, `date`, `debit`, `credit`, `description`, `receipt_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(5, '2023-04-13', '2000.00', '0.00', 'مصاريف ترم اول', 9, NULL, '2023-04-13 19:40:45', '2023-04-13 19:40:45'),
(6, '2023-04-13', NULL, '1000.00', NULL, NULL, 5, '2023-04-13 19:41:43', '2023-04-13 19:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Male\",\"ar\":\"\\u0630\\u0643\\u0631\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(2, '{\"en\":\"Female\",\"ar\":\"\\u0627\\u0646\\u062b\\u064a\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\\u064a\\u0627\\u062a \\u0648\\u0627\\u0644\\u0641\\u064a\\u0632\\u064a\\u0627\\u0621 \\u0627\\u0644\\u0647\\u0646\\u062f\\u0633\\u064a\\u0629\",\"en\":\"Mathematical and Engineering Physics\"}', NULL, '2023-03-17 12:49:14', '2023-04-13 19:23:02'),
(2, '{\"ar\":\"\\u0647\\u0646\\u062f\\u0633\\u0629  \\u0627\\u0644\\u0642\\u0648\\u0649 \\u0648 \\u0627\\u0644\\u0622\\u0644\\u0627\\u062a \\u0627\\u0644\\u0643\\u0647\\u0631\\u0628\\u064a\\u0629\",\"en\":\"Power and Electrical Machines Engineering\"}', NULL, '2023-03-17 12:49:30', '2023-03-17 12:49:30'),
(3, '{\"ar\":\"\\u0647\\u0646\\u062f\\u0633\\u0629 \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628\\u0627\\u062a \\u0648\\u0646\\u0638\\u0645 \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645\",\"en\":\"Computers and Control Systems Engineering\"}', NULL, '2023-03-17 12:49:48', '2023-03-17 12:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint NOT NULL,
  `national_id` bigint NOT NULL,
  `passport_id` bigint DEFAULT NULL,
  `nationalitie_id` bigint UNSIGNED NOT NULL,
  `blood_id` bigint UNSIGNED DEFAULT NULL,
  `religion_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `name`, `email`, `address`, `password`, `job`, `phone`, `national_id`, `passport_id`, `nationalitie_id`, `blood_id`, `religion_id`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0645\\u062d\\u0645\\u062f\",\"en\":\"mohamed\"}', 'guardian@gmail.com', '{\"ar\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0647\",\"en\":\"cairo\"}', '$2y$10$j9tK2nHbHgG8f9sLr6nAt.tmDBZxHSY./v9sg93WHjMAKr9fKNoN6', '{\"en\":\"hamo01099389305@gmail.com\",\"ar\":\"guardian@gmail.com\"}', 1021811237, 20102221800518, NULL, 64, 6, 1, '2023-03-17 12:54:38', '2023-04-15 08:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_attachments`
--

CREATE TABLE `guardian_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(16, 'download (1).jpg', 26, 'App\\Models\\Student', '2023-03-19 23:29:13', '2023-03-19 23:29:13'),
(17, 'download.jpg', 26, 'App\\Models\\Student', '2023-03-19 23:29:13', '2023-03-19 23:29:13'),
(18, 'download (1).jpg', 6, 'App\\Models\\Student', '2023-04-01 22:30:32', '2023-04-01 22:30:32'),
(20, 'screencapture-school-test-2525-en-students-2023-04-04-18_01_00.png', 5, 'App\\Models\\Student', '2023-04-06 08:43:05', '2023-04-06 08:43:05'),
(21, 'download.jpg', 5, 'App\\Models\\Student', '2023-04-06 08:43:05', '2023-04-06 08:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint UNSIGNED NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `duration` int NOT NULL COMMENT 'minutes',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meeting password',
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `grade_id`, `classroom_id`, `section_id`, `created_by`, `meeting_id`, `topic`, `start_at`, `duration`, `password`, `start_url`, `join_url`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 3, 'hamo01099389305@gmail.com', '5423', 'ahmed', '2023-04-13 14:31:00', 25, '53453', 'http://127.0.0.1:8000/ar/lectures/create', 'http://127.0.0.1:8000/ar/lectures/create', '2023-04-13 10:29:08', '2023-04-13 10:29:08'),
(3, 1, 3, 3, 'teacher@gmail.com', '86', 'Raven Hendricks', '1989-04-27 07:28:00', 59, 'Reiciendis sit reic', 'https://www.suwesazov.in', 'https://www.vipagevacuw.me.uk', '2023-04-13 10:32:55', '2023-04-13 10:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE `libraries` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`id`, `title`, `file_name`, `grade_id`, `classroom_id`, `section_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(3, 'Enim officia sequi e', 'مشروع تخرج.pdf', 1, 3, 3, 1, '2023-04-06 17:32:36', '2023-04-06 18:34:13');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_21_204239_create_grades_table', 1),
(7, '2023_02_22_110533_create_classrooms_table', 1),
(8, '2023_03_03_092051_create_sections_table', 1),
(9, '2023_03_03_154307_create_bloods_table', 1),
(10, '2023_03_03_160259_create_nationalities_table', 1),
(11, '2023_03_03_161915_create_religions_table', 1),
(12, '2023_03_04_075222_create_guardians_table', 1),
(13, '2023_03_09_102057_create_guardian_attachments_table', 1),
(14, '2023_03_09_170818_create_genders_table', 1),
(15, '2023_03_09_171134_create_specializations_table', 1),
(16, '2023_03_09_185535_create_teachers_table', 1),
(17, '2023_03_10_172712_create_teacher_section_table', 1),
(19, '2023_03_13_141004_create_images_table', 1),
(20, '2023_03_21_202424_create_promotions_table', 2),
(21, '2023_03_11_150240_create_students_table', 3),
(24, '2023_03_25_024745_create_fee_invoices_table', 5),
(26, '2023_03_25_034416_create_fee_types_table', 6),
(27, '2023_03_23_183411_create_fees_table', 7),
(28, '2023_03_31_114947_create_receipts_table', 8),
(32, '2023_04_01_183650_create_processings_table', 10),
(34, '2023_04_03_000500_create_payments_table', 11),
(35, '2023_04_3_1650_create_student_accounts_table', 11),
(36, '2023_04_03_122649_create_fund_accounts_table', 12),
(37, '2023_04_03_032254_create_attendances_table', 13),
(38, '2023_04_03_191634_create_subjects_table', 14),
(43, '2023_04_04_002736_create_questions_table', 16),
(45, '2023_04_06_093957_create_libraries_table', 18),
(46, '2023_04_06_203929_create_settings_table', 19),
(47, '2023_04_07_205954_create_events_table', 20),
(48, '2023_04_05_121129_create_lectures_table', 21),
(49, '2023_04_03_223401_create_exams_table', 22),
(50, '2023_04_14_185618_create_degrees_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Afghan\",\"ar\":\"\\u0623\\u0641\\u063a\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(2, '{\"en\":\"Albanian\",\"ar\":\"\\u0623\\u0644\\u0628\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(3, '{\"en\":\"Aland Islander\",\"ar\":\"\\u0622\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(4, '{\"en\":\"Algerian\",\"ar\":\"\\u062c\\u0632\\u0627\\u0626\\u0631\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(5, '{\"en\":\"American Samoan\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a \\u0633\\u0627\\u0645\\u0648\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(6, '{\"en\":\"Andorran\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(7, '{\"en\":\"Angolan\",\"ar\":\"\\u0623\\u0646\\u0642\\u0648\\u0644\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(8, '{\"en\":\"Anguillan\",\"ar\":\"\\u0623\\u0646\\u063a\\u0648\\u064a\\u0644\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(9, '{\"en\":\"Antarctican\",\"ar\":\"\\u0623\\u0646\\u062a\\u0627\\u0631\\u0643\\u062a\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(10, '{\"en\":\"Antiguan\",\"ar\":\"\\u0628\\u0631\\u0628\\u0648\\u062f\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(11, '{\"en\":\"Argentinian\",\"ar\":\"\\u0623\\u0631\\u062c\\u0646\\u062a\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(12, '{\"en\":\"Armenian\",\"ar\":\"\\u0623\\u0631\\u0645\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(13, '{\"en\":\"Aruban\",\"ar\":\"\\u0623\\u0648\\u0631\\u0648\\u0628\\u0647\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(14, '{\"en\":\"Australian\",\"ar\":\"\\u0623\\u0633\\u062a\\u0631\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(15, '{\"en\":\"Austrian\",\"ar\":\"\\u0646\\u0645\\u0633\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(16, '{\"en\":\"Azerbaijani\",\"ar\":\"\\u0623\\u0630\\u0631\\u0628\\u064a\\u062c\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(17, '{\"en\":\"Bahamian\",\"ar\":\"\\u0628\\u0627\\u0647\\u0627\\u0645\\u064a\\u0633\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(18, '{\"en\":\"Bahraini\",\"ar\":\"\\u0628\\u062d\\u0631\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(19, '{\"en\":\"Bangladeshi\",\"ar\":\"\\u0628\\u0646\\u063a\\u0644\\u0627\\u062f\\u064a\\u0634\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(20, '{\"en\":\"Barbadian\",\"ar\":\"\\u0628\\u0631\\u0628\\u0627\\u062f\\u0648\\u0633\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(21, '{\"en\":\"Belarusian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(22, '{\"en\":\"Belgian\",\"ar\":\"\\u0628\\u0644\\u062c\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(23, '{\"en\":\"Belizean\",\"ar\":\"\\u0628\\u064a\\u0644\\u064a\\u0632\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(24, '{\"en\":\"Beninese\",\"ar\":\"\\u0628\\u0646\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:30', '2023-03-17 12:32:30'),
(25, '{\"en\":\"Saint Barthelmian\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u0627\\u0631\\u062a\\u064a\\u0644\\u0645\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(26, '{\"en\":\"Bermudan\",\"ar\":\"\\u0628\\u0631\\u0645\\u0648\\u062f\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(27, '{\"en\":\"Bhutanese\",\"ar\":\"\\u0628\\u0648\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(28, '{\"en\":\"Bolivian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0641\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(29, '{\"en\":\"Bosnian \\/ Herzegovinian\",\"ar\":\"\\u0628\\u0648\\u0633\\u0646\\u064a\\/\\u0647\\u0631\\u0633\\u0643\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(30, '{\"en\":\"Botswanan\",\"ar\":\"\\u0628\\u0648\\u062a\\u0633\\u0648\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(31, '{\"en\":\"Bouvetian\",\"ar\":\"\\u0628\\u0648\\u0641\\u064a\\u0647\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(32, '{\"en\":\"Brazilian\",\"ar\":\"\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(33, '{\"en\":\"British Indian Ocean Territory\",\"ar\":\"\\u0625\\u0642\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u062d\\u064a\\u0637 \\u0627\\u0644\\u0647\\u0646\\u062f\\u064a \\u0627\\u0644\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(34, '{\"en\":\"Bruneian\",\"ar\":\"\\u0628\\u0631\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(35, '{\"en\":\"Bulgarian\",\"ar\":\"\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(36, '{\"en\":\"Burkinabe\",\"ar\":\"\\u0628\\u0648\\u0631\\u0643\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(37, '{\"en\":\"Burundian\",\"ar\":\"\\u0628\\u0648\\u0631\\u0648\\u0646\\u064a\\u062f\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(38, '{\"en\":\"Cambodian\",\"ar\":\"\\u0643\\u0645\\u0628\\u0648\\u062f\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(39, '{\"en\":\"Cameroonian\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(40, '{\"en\":\"Canadian\",\"ar\":\"\\u0643\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(41, '{\"en\":\"Cape Verdean\",\"ar\":\"\\u0627\\u0644\\u0631\\u0623\\u0633 \\u0627\\u0644\\u0623\\u062e\\u0636\\u0631\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(42, '{\"en\":\"Caymanian\",\"ar\":\"\\u0643\\u0627\\u064a\\u0645\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(43, '{\"en\":\"Central African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(44, '{\"en\":\"Chadian\",\"ar\":\"\\u062a\\u0634\\u0627\\u062f\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(45, '{\"en\":\"Chilean\",\"ar\":\"\\u0634\\u064a\\u0644\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(46, '{\"en\":\"Chinese\",\"ar\":\"\\u0635\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(47, '{\"en\":\"Christmas Islander\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0639\\u064a\\u062f \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(48, '{\"en\":\"Cocos Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\\u0648\\u0633\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(49, '{\"en\":\"Colombian\",\"ar\":\"\\u0643\\u0648\\u0644\\u0648\\u0645\\u0628\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(50, '{\"en\":\"Comorian\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0627\\u0644\\u0642\\u0645\\u0631\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(51, '{\"en\":\"Congolese\",\"ar\":\"\\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(52, '{\"en\":\"Cook Islander\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0643\\u0648\\u0643\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(53, '{\"en\":\"Costa Rican\",\"ar\":\"\\u0643\\u0648\\u0633\\u062a\\u0627\\u0631\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(54, '{\"en\":\"Croatian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u062a\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(55, '{\"en\":\"Cuban\",\"ar\":\"\\u0643\\u0648\\u0628\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(56, '{\"en\":\"Cypriot\",\"ar\":\"\\u0642\\u0628\\u0631\\u0635\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(57, '{\"en\":\"Curacian\",\"ar\":\"\\u0643\\u0648\\u0631\\u0627\\u0633\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(58, '{\"en\":\"Czech\",\"ar\":\"\\u062a\\u0634\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(59, '{\"en\":\"Danish\",\"ar\":\"\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(60, '{\"en\":\"Djiboutian\",\"ar\":\"\\u062c\\u064a\\u0628\\u0648\\u062a\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(61, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(62, '{\"en\":\"Dominican\",\"ar\":\"\\u062f\\u0648\\u0645\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(63, '{\"en\":\"Ecuadorian\",\"ar\":\"\\u0625\\u0643\\u0648\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(64, '{\"en\":\"Egyptian\",\"ar\":\"\\u0645\\u0635\\u0631\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(65, '{\"en\":\"Salvadoran\",\"ar\":\"\\u0633\\u0644\\u0641\\u0627\\u062f\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:31', '2023-03-17 12:32:31'),
(66, '{\"en\":\"Equatorial Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(67, '{\"en\":\"Eritrean\",\"ar\":\"\\u0625\\u0631\\u064a\\u062a\\u064a\\u0631\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(68, '{\"en\":\"Estonian\",\"ar\":\"\\u0627\\u0633\\u062a\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(69, '{\"en\":\"Ethiopian\",\"ar\":\"\\u0623\\u062b\\u064a\\u0648\\u0628\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(70, '{\"en\":\"Falkland Islander\",\"ar\":\"\\u0641\\u0648\\u0643\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(71, '{\"en\":\"Faroese\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0641\\u0627\\u0631\\u0648\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(72, '{\"en\":\"Fijian\",\"ar\":\"\\u0641\\u064a\\u062c\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(73, '{\"en\":\"Finnish\",\"ar\":\"\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(74, '{\"en\":\"French\",\"ar\":\"\\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(75, '{\"en\":\"French Guianese\",\"ar\":\"\\u063a\\u0648\\u064a\\u0627\\u0646\\u0627 \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(76, '{\"en\":\"French Polynesian\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(77, '{\"en\":\"French\",\"ar\":\"\\u0623\\u0631\\u0627\\u0636 \\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u062c\\u0646\\u0648\\u0628\\u064a\\u0629 \\u0648\\u0623\\u0646\\u062a\\u0627\\u0631\\u062a\\u064a\\u0643\\u064a\\u0629\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(78, '{\"en\":\"Gabonese\",\"ar\":\"\\u063a\\u0627\\u0628\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(79, '{\"en\":\"Gambian\",\"ar\":\"\\u063a\\u0627\\u0645\\u0628\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(80, '{\"en\":\"Georgian\",\"ar\":\"\\u062c\\u064a\\u0648\\u0631\\u062c\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(81, '{\"en\":\"German\",\"ar\":\"\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(82, '{\"en\":\"Ghanaian\",\"ar\":\"\\u063a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(83, '{\"en\":\"Gibraltar\",\"ar\":\"\\u062c\\u0628\\u0644 \\u0637\\u0627\\u0631\\u0642\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(84, '{\"en\":\"Guernsian\",\"ar\":\"\\u063a\\u064a\\u0631\\u0646\\u0632\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(85, '{\"en\":\"Greek\",\"ar\":\"\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(86, '{\"en\":\"Greenlandic\",\"ar\":\"\\u062c\\u0631\\u064a\\u0646\\u0644\\u0627\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(87, '{\"en\":\"Grenadian\",\"ar\":\"\\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(88, '{\"en\":\"Guadeloupe\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062c\\u0648\\u0627\\u062f\\u0644\\u0648\\u0628\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(89, '{\"en\":\"Guamanian\",\"ar\":\"\\u062c\\u0648\\u0627\\u0645\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(90, '{\"en\":\"Guatemalan\",\"ar\":\"\\u063a\\u0648\\u0627\\u062a\\u064a\\u0645\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(91, '{\"en\":\"Guinean\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(92, '{\"en\":\"Guinea-Bissauan\",\"ar\":\"\\u063a\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(93, '{\"en\":\"Guyanese\",\"ar\":\"\\u063a\\u064a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(94, '{\"en\":\"Haitian\",\"ar\":\"\\u0647\\u0627\\u064a\\u062a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(95, '{\"en\":\"Heard and Mc Donald Islanders\",\"ar\":\"\\u062c\\u0632\\u064a\\u0631\\u0629 \\u0647\\u064a\\u0631\\u062f \\u0648\\u062c\\u0632\\u0631 \\u0645\\u0627\\u0643\\u062f\\u0648\\u0646\\u0627\\u0644\\u062f\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(96, '{\"en\":\"Honduran\",\"ar\":\"\\u0647\\u0646\\u062f\\u0648\\u0631\\u0627\\u0633\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(97, '{\"en\":\"Hongkongese\",\"ar\":\"\\u0647\\u0648\\u0646\\u063a \\u0643\\u0648\\u0646\\u063a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(98, '{\"en\":\"Hungarian\",\"ar\":\"\\u0645\\u062c\\u0631\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(99, '{\"en\":\"Icelandic\",\"ar\":\"\\u0622\\u064a\\u0633\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(100, '{\"en\":\"Indian\",\"ar\":\"\\u0647\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(101, '{\"en\":\"Manx\",\"ar\":\"\\u0645\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(102, '{\"en\":\"Indonesian\",\"ar\":\"\\u0623\\u0646\\u062f\\u0648\\u0646\\u064a\\u0633\\u064a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(103, '{\"en\":\"Iranian\",\"ar\":\"\\u0625\\u064a\\u0631\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(104, '{\"en\":\"Iraqi\",\"ar\":\"\\u0639\\u0631\\u0627\\u0642\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(105, '{\"en\":\"Irish\",\"ar\":\"\\u0625\\u064a\\u0631\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(106, '{\"en\":\"Italian\",\"ar\":\"\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(107, '{\"en\":\"Ivory Coastian\",\"ar\":\"\\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0639\\u0627\\u062c\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(108, '{\"en\":\"Jersian\",\"ar\":\"\\u062c\\u064a\\u0631\\u0632\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(109, '{\"en\":\"Jamaican\",\"ar\":\"\\u062c\\u0645\\u0627\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(110, '{\"en\":\"Japanese\",\"ar\":\"\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(111, '{\"en\":\"Jordanian\",\"ar\":\"\\u0623\\u0631\\u062f\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(112, '{\"en\":\"Kazakh\",\"ar\":\"\\u0643\\u0627\\u0632\\u0627\\u062e\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(113, '{\"en\":\"Kenyan\",\"ar\":\"\\u0643\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(114, '{\"en\":\"I-Kiribati\",\"ar\":\"\\u0643\\u064a\\u0631\\u064a\\u0628\\u0627\\u062a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(115, '{\"en\":\"North Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(116, '{\"en\":\"South Korean\",\"ar\":\"\\u0643\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(117, '{\"en\":\"Kosovar\",\"ar\":\"\\u0643\\u0648\\u0633\\u064a\\u0641\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(118, '{\"en\":\"Kuwaiti\",\"ar\":\"\\u0643\\u0648\\u064a\\u062a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(119, '{\"en\":\"Kyrgyzstani\",\"ar\":\"\\u0642\\u064a\\u0631\\u063a\\u064a\\u0632\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(120, '{\"en\":\"Laotian\",\"ar\":\"\\u0644\\u0627\\u0648\\u0633\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(121, '{\"en\":\"Latvian\",\"ar\":\"\\u0644\\u0627\\u062a\\u064a\\u0641\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(122, '{\"en\":\"Lebanese\",\"ar\":\"\\u0644\\u0628\\u0646\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(123, '{\"en\":\"Basotho\",\"ar\":\"\\u0644\\u064a\\u0648\\u0633\\u064a\\u062a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(124, '{\"en\":\"Liberian\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\\u0631\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(125, '{\"en\":\"Libyan\",\"ar\":\"\\u0644\\u064a\\u0628\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(126, '{\"en\":\"Liechtenstein\",\"ar\":\"\\u0644\\u064a\\u062e\\u062a\\u0646\\u0634\\u062a\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(127, '{\"en\":\"Lithuanian\",\"ar\":\"\\u0644\\u062a\\u0648\\u0627\\u0646\\u064a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(128, '{\"en\":\"Luxembourger\",\"ar\":\"\\u0644\\u0648\\u0643\\u0633\\u0645\\u0628\\u0648\\u0631\\u063a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(129, '{\"en\":\"Sri Lankian\",\"ar\":\"\\u0633\\u0631\\u064a\\u0644\\u0627\\u0646\\u0643\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(130, '{\"en\":\"Macanese\",\"ar\":\"\\u0645\\u0627\\u0643\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(131, '{\"en\":\"Macedonian\",\"ar\":\"\\u0645\\u0642\\u062f\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(132, '{\"en\":\"Malagasy\",\"ar\":\"\\u0645\\u062f\\u063a\\u0634\\u0642\\u0631\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(133, '{\"en\":\"Malawian\",\"ar\":\"\\u0645\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(134, '{\"en\":\"Malaysian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\\u0632\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(135, '{\"en\":\"Maldivian\",\"ar\":\"\\u0645\\u0627\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(136, '{\"en\":\"Malian\",\"ar\":\"\\u0645\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(137, '{\"en\":\"Maltese\",\"ar\":\"\\u0645\\u0627\\u0644\\u0637\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(138, '{\"en\":\"Marshallese\",\"ar\":\"\\u0645\\u0627\\u0631\\u0634\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(139, '{\"en\":\"Martiniquais\",\"ar\":\"\\u0645\\u0627\\u0631\\u062a\\u064a\\u0646\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(140, '{\"en\":\"Mauritanian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u062a\\u0627\\u0646\\u064a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(141, '{\"en\":\"Mauritian\",\"ar\":\"\\u0645\\u0648\\u0631\\u064a\\u0634\\u064a\\u0648\\u0633\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(142, '{\"en\":\"Mahoran\",\"ar\":\"\\u0645\\u0627\\u064a\\u0648\\u062a\\u064a\"}', '2023-03-17 12:32:32', '2023-03-17 12:32:32'),
(143, '{\"en\":\"Mexican\",\"ar\":\"\\u0645\\u0643\\u0633\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(144, '{\"en\":\"Micronesian\",\"ar\":\"\\u0645\\u0627\\u064a\\u0643\\u0631\\u0648\\u0646\\u064a\\u0632\\u064a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(145, '{\"en\":\"Moldovan\",\"ar\":\"\\u0645\\u0648\\u0644\\u062f\\u064a\\u0641\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(146, '{\"en\":\"Monacan\",\"ar\":\"\\u0645\\u0648\\u0646\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(147, '{\"en\":\"Mongolian\",\"ar\":\"\\u0645\\u0646\\u063a\\u0648\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(148, '{\"en\":\"Montenegrin\",\"ar\":\"\\u0627\\u0644\\u062c\\u0628\\u0644 \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(149, '{\"en\":\"Montserratian\",\"ar\":\"\\u0645\\u0648\\u0646\\u062a\\u0633\\u064a\\u0631\\u0627\\u062a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(150, '{\"en\":\"Moroccan\",\"ar\":\"\\u0645\\u063a\\u0631\\u0628\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(151, '{\"en\":\"Mozambican\",\"ar\":\"\\u0645\\u0648\\u0632\\u0645\\u0628\\u064a\\u0642\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(152, '{\"en\":\"Myanmarian\",\"ar\":\"\\u0645\\u064a\\u0627\\u0646\\u0645\\u0627\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(153, '{\"en\":\"Namibian\",\"ar\":\"\\u0646\\u0627\\u0645\\u064a\\u0628\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(154, '{\"en\":\"Nauruan\",\"ar\":\"\\u0646\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(155, '{\"en\":\"Nepalese\",\"ar\":\"\\u0646\\u064a\\u0628\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(156, '{\"en\":\"Dutch\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(157, '{\"en\":\"Dutch Antilier\",\"ar\":\"\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(158, '{\"en\":\"New Caledonian\",\"ar\":\"\\u0643\\u0627\\u0644\\u064a\\u062f\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(159, '{\"en\":\"New Zealander\",\"ar\":\"\\u0646\\u064a\\u0648\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(160, '{\"en\":\"Nicaraguan\",\"ar\":\"\\u0646\\u064a\\u0643\\u0627\\u0631\\u0627\\u062c\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(161, '{\"en\":\"Nigerien\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(162, '{\"en\":\"Nigerian\",\"ar\":\"\\u0646\\u064a\\u062c\\u064a\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(163, '{\"en\":\"Niuean\",\"ar\":\"\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(164, '{\"en\":\"Norfolk Islander\",\"ar\":\"\\u0646\\u0648\\u0631\\u0641\\u0648\\u0644\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(165, '{\"en\":\"Northern Marianan\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(166, '{\"en\":\"Norwegian\",\"ar\":\"\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(167, '{\"en\":\"Omani\",\"ar\":\"\\u0639\\u0645\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(168, '{\"en\":\"Pakistani\",\"ar\":\"\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(169, '{\"en\":\"Palauan\",\"ar\":\"\\u0628\\u0627\\u0644\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(170, '{\"en\":\"Palestinian\",\"ar\":\"\\u0641\\u0644\\u0633\\u0637\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(171, '{\"en\":\"Panamanian\",\"ar\":\"\\u0628\\u0646\\u0645\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(172, '{\"en\":\"Papua New Guinean\",\"ar\":\"\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(173, '{\"en\":\"Paraguayan\",\"ar\":\"\\u0628\\u0627\\u0631\\u063a\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(174, '{\"en\":\"Peruvian\",\"ar\":\"\\u0628\\u064a\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(175, '{\"en\":\"Filipino\",\"ar\":\"\\u0641\\u0644\\u0628\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(176, '{\"en\":\"Pitcairn Islander\",\"ar\":\"\\u0628\\u064a\\u062a\\u0643\\u064a\\u0631\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(177, '{\"en\":\"Polish\",\"ar\":\"\\u0628\\u0648\\u0644\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(178, '{\"en\":\"Portuguese\",\"ar\":\"\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(179, '{\"en\":\"Puerto Rican\",\"ar\":\"\\u0628\\u0648\\u0631\\u062a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(180, '{\"en\":\"Qatari\",\"ar\":\"\\u0642\\u0637\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(181, '{\"en\":\"Reunionese\",\"ar\":\"\\u0631\\u064a\\u0648\\u0646\\u064a\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(182, '{\"en\":\"Romanian\",\"ar\":\"\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(183, '{\"en\":\"Russian\",\"ar\":\"\\u0631\\u0648\\u0633\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(184, '{\"en\":\"Rwandan\",\"ar\":\"\\u0631\\u0648\\u0627\\u0646\\u062f\\u0627\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(185, '{\"ar\":\"Kittitian\\/Nevisian\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(186, '{\"en\":\"St. Martian(French)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0641\\u0631\\u0646\\u0633\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(187, '{\"en\":\"St. Martian(Dutch)\",\"ar\":\"\\u0633\\u0627\\u064a\\u0646\\u062a \\u0645\\u0627\\u0631\\u062a\\u0646\\u064a \\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(188, '{\"en\":\"St. Pierre and Miquelon\",\"ar\":\"\\u0633\\u0627\\u0646 \\u0628\\u064a\\u064a\\u0631 \\u0648\\u0645\\u064a\\u0643\\u0644\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(189, '{\"en\":\"Saint Vincent and the Grenadines\",\"ar\":\"\\u0633\\u0627\\u0646\\u062a \\u0641\\u0646\\u0633\\u0646\\u062a \\u0648\\u062c\\u0632\\u0631 \\u063a\\u0631\\u064a\\u0646\\u0627\\u062f\\u064a\\u0646\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(190, '{\"en\":\"Samoan\",\"ar\":\"\\u0633\\u0627\\u0645\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(191, '{\"en\":\"Sammarinese\",\"ar\":\"\\u0645\\u0627\\u0631\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(192, '{\"en\":\"Sao Tomean\",\"ar\":\"\\u0633\\u0627\\u0648 \\u062a\\u0648\\u0645\\u064a \\u0648\\u0628\\u0631\\u064a\\u0646\\u0633\\u064a\\u0628\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(193, '{\"en\":\"Saudi Arabian\",\"ar\":\"\\u0633\\u0639\\u0648\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(194, '{\"en\":\"Senegalese\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(195, '{\"en\":\"Serbian\",\"ar\":\"\\u0635\\u0631\\u0628\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(196, '{\"en\":\"Seychellois\",\"ar\":\"\\u0633\\u064a\\u0634\\u064a\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(197, '{\"en\":\"Sierra Leonean\",\"ar\":\"\\u0633\\u064a\\u0631\\u0627\\u0644\\u064a\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(198, '{\"en\":\"Singaporean\",\"ar\":\"\\u0633\\u0646\\u063a\\u0627\\u0641\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(199, '{\"en\":\"Slovak\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u0627\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(200, '{\"en\":\"Slovenian\",\"ar\":\"\\u0633\\u0648\\u0644\\u0641\\u064a\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(201, '{\"en\":\"Solomon Island\",\"ar\":\"\\u062c\\u0632\\u0631 \\u0633\\u0644\\u064a\\u0645\\u0627\\u0646\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(202, '{\"en\":\"Somali\",\"ar\":\"\\u0635\\u0648\\u0645\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(203, '{\"en\":\"South African\",\"ar\":\"\\u0623\\u0641\\u0631\\u064a\\u0642\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(204, '{\"en\":\"South Georgia and the South Sandwich\",\"ar\":\"\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0628\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u0648\\u0628\\u064a\\u0629\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(205, '{\"en\":\"South Sudanese\",\"ar\":\"\\u0633\\u0648\\u0627\\u062f\\u0646\\u064a \\u062c\\u0646\\u0648\\u0628\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(206, '{\"en\":\"Spanish\",\"ar\":\"\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(207, '{\"en\":\"St. Helenian\",\"ar\":\"\\u0647\\u064a\\u0644\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(208, '{\"en\":\"Sudanese\",\"ar\":\"\\u0633\\u0648\\u062f\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(209, '{\"en\":\"Surinamese\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\\u0646\\u0627\\u0645\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(210, '{\"en\":\"Svalbardian\\/Jan Mayenian\",\"ar\":\"\\u0633\\u0641\\u0627\\u0644\\u0628\\u0627\\u0631\\u062f \\u0648\\u064a\\u0627\\u0646 \\u0645\\u0627\\u064a\\u0646\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(211, '{\"en\":\"Swazi\",\"ar\":\"\\u0633\\u0648\\u0627\\u0632\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(212, '{\"en\":\"Swedish\",\"ar\":\"\\u0633\\u0648\\u064a\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(213, '{\"en\":\"Swiss\",\"ar\":\"\\u0633\\u0648\\u064a\\u0633\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(214, '{\"en\":\"Syrian\",\"ar\":\"\\u0633\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(215, '{\"en\":\"Taiwanese\",\"ar\":\"\\u062a\\u0627\\u064a\\u0648\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(216, '{\"en\":\"Tajikistani\",\"ar\":\"\\u0637\\u0627\\u062c\\u064a\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(217, '{\"en\":\"Tanzanian\",\"ar\":\"\\u062a\\u0646\\u0632\\u0627\\u0646\\u064a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(218, '{\"en\":\"Thai\",\"ar\":\"\\u062a\\u0627\\u064a\\u0644\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(219, '{\"en\":\"Timor-Lestian\",\"ar\":\"\\u062a\\u064a\\u0645\\u0648\\u0631\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(220, '{\"en\":\"Togolese\",\"ar\":\"\\u062a\\u0648\\u063a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(221, '{\"en\":\"Tokelaian\",\"ar\":\"\\u062a\\u0648\\u0643\\u064a\\u0644\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(222, '{\"en\":\"Tongan\",\"ar\":\"\\u062a\\u0648\\u0646\\u063a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(223, '{\"en\":\"Trinidadian\\/Tobagonian\",\"ar\":\"\\u062a\\u0631\\u064a\\u0646\\u064a\\u062f\\u0627\\u062f \\u0648\\u062a\\u0648\\u0628\\u0627\\u063a\\u0648\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(224, '{\"en\":\"Tunisian\",\"ar\":\"\\u062a\\u0648\\u0646\\u0633\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(225, '{\"en\":\"Turkish\",\"ar\":\"\\u062a\\u0631\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(226, '{\"en\":\"Turkmen\",\"ar\":\"\\u062a\\u0631\\u0643\\u0645\\u0627\\u0646\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(227, '{\"en\":\"Turks and Caicos Islands\",\"ar\":\"\\u062c\\u0632\\u0631 \\u062a\\u0648\\u0631\\u0643\\u0633 \\u0648\\u0643\\u0627\\u064a\\u0643\\u0648\\u0633\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(228, '{\"en\":\"Tuvaluan\",\"ar\":\"\\u062a\\u0648\\u0641\\u0627\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(229, '{\"en\":\"Ugandan\",\"ar\":\"\\u0623\\u0648\\u063a\\u0646\\u062f\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(230, '{\"en\":\"Ukrainian\",\"ar\":\"\\u0623\\u0648\\u0643\\u0631\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(231, '{\"en\":\"Emirati\",\"ar\":\"\\u0625\\u0645\\u0627\\u0631\\u0627\\u062a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(232, '{\"en\":\"British\",\"ar\":\"\\u0628\\u0631\\u064a\\u0637\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(233, '{\"en\":\"American\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(234, '{\"en\":\"US Minor Outlying Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(235, '{\"en\":\"Uruguayan\",\"ar\":\"\\u0623\\u0648\\u0631\\u063a\\u0648\\u0627\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(236, '{\"en\":\"Uzbek\",\"ar\":\"\\u0623\\u0648\\u0632\\u0628\\u0627\\u0643\\u0633\\u062a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(237, '{\"en\":\"Vanuatuan\",\"ar\":\"\\u0641\\u0627\\u0646\\u0648\\u0627\\u062a\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(238, '{\"en\":\"Venezuelan\",\"ar\":\"\\u0641\\u0646\\u0632\\u0648\\u064a\\u0644\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(239, '{\"en\":\"Vietnamese\",\"ar\":\"\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(240, '{\"en\":\"American Virgin Islander\",\"ar\":\"\\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(241, '{\"en\":\"Vatican\",\"ar\":\"\\u0641\\u0627\\u062a\\u064a\\u0643\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(242, '{\"en\":\"Wallisian\\/Futunan\",\"ar\":\"\\u0641\\u0648\\u062a\\u0648\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(243, '{\"en\":\"Sahrawian\",\"ar\":\"\\u0635\\u062d\\u0631\\u0627\\u0648\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(244, '{\"en\":\"Yemeni\",\"ar\":\"\\u064a\\u0645\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(245, '{\"en\":\"Zambian\",\"ar\":\"\\u0632\\u0627\\u0645\\u0628\\u064a\\u0627\\u0646\\u064a\"}', '2023-03-17 12:32:33', '2023-03-17 12:32:33'),
(246, '{\"en\":\"Zimbabwean\",\"ar\":\"\\u0632\\u0645\\u0628\\u0627\\u0628\\u0648\\u064a\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `date`, `amount`, `description`, `student_id`, `created_at`, `updated_at`) VALUES
(5, '2023-04-13', '1000.00', NULL, 5, '2023-04-13 19:41:43', '2023-04-13 19:41:43');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `processings`
--

CREATE TABLE `processings` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `from_grade` bigint UNSIGNED NOT NULL,
  `from_classroom` bigint UNSIGNED NOT NULL,
  `from_section` bigint UNSIGNED NOT NULL,
  `to_grade` bigint UNSIGNED NOT NULL,
  `to_classroom` bigint UNSIGNED NOT NULL,
  `to_section` bigint UNSIGNED NOT NULL,
  `old_academic_year` int DEFAULT NULL,
  `new_academic_year` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `student_id`, `from_grade`, `from_classroom`, `from_section`, `to_grade`, `to_classroom`, `to_section`, `old_academic_year`, `new_academic_year`, `created_at`, `updated_at`) VALUES
(4, 6, 3, 9, 4, 1, 3, 3, 2023, 2024, '2023-04-13 19:57:34', '2023-04-13 19:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int NOT NULL,
  `exam_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `answers`, `right_answer`, `score`, `exam_id`, `created_at`, `updated_at`) VALUES
(7, 'ماهي عاصمه مصر1', 'القاهرة, الاسكندريه ,المنصوره,البحيره', 'القاهرة', 2, 1, '2023-04-14 14:19:43', '2023-04-14 14:19:43'),
(8, 'ماهي عاصمه مصر\n2', 'القاهرة,الاسكندريه,المنصوره,البحيره', 'القاهرة', 2, 1, '2023-04-14 14:19:43', '2023-04-14 14:19:43'),
(9, 'ماهي عاصمه مصر\n3', 'القاهرة,الاسكندريه,المنصوره,البحيره', 'القاهرة', 2, 1, '2023-04-14 14:19:43', '2023-04-14 14:19:43'),
(10, 'ماهي عاصمه مصر\n4', 'القاهرة,الاسكندريه,المنصوره,البحيره', 'القاهرة', 2, 1, '2023-04-14 14:19:43', '2023-04-14 14:19:43'),
(11, 'ماهي عاصمه مصر\n5', 'القاهرة,الاسكندريه,المنصوره,البحيره', 'القاهرة', 2, 1, '2023-04-14 14:19:43', '2023-04-14 14:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `date`, `debit`, `description`, `student_id`, `created_at`, `updated_at`) VALUES
(9, '2023-04-13', '2000.00', 'مصاريف ترم اول', 5, '2023-04-13 19:40:45', '2023-04-13 19:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Muslim\",\"ar\":\"\\u0645\\u0633\\u0644\\u0645\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(2, '{\"en\":\"Christian\",\"ar\":\"\\u0645\\u0633\\u064a\\u062d\\u064a\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(3, '{\"en\":\"Other\",\"ar\":\"\\u063a\\u064a\\u0631\\u0630\\u0644\\u0643\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `status`, `grade_id`, `classroom_id`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 1, 2, '2023-03-17 12:53:04', '2023-03-17 12:53:04'),
(2, '{\"ar\":\"\\u0628\",\"en\":\"B\"}', 1, 1, 2, '2023-03-21 18:21:14', '2023-04-03 02:21:46'),
(3, '{\"ar\":\"\\u062c\",\"en\":\"G\"}', 1, 1, 3, '2023-03-21 19:46:15', '2023-03-21 19:46:15'),
(4, '{\"ar\":\"\\u0623\",\"en\":\"A\"}', 1, 3, 9, '2023-04-01 22:24:33', '2023-04-01 22:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2022-2023', NULL, NULL),
(2, 'title', 'LMS', NULL, NULL),
(3, 'name', 'Mohamed Ayman', NULL, NULL),
(4, 'phone', '01021811237', NULL, NULL),
(5, 'email', 'mohamed@gmail.com', NULL, NULL),
(6, 'address', 'cairo', NULL, NULL),
(7, 'logo', 'download.jpg', NULL, '2023-04-06 20:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Sciences\",\"ar\":\"\\u0639\\u0644\\u0648\\u0645\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(2, '{\"en\":\"Physics\",\"ar\":\"\\u0641\\u064a\\u0632\\u064a\\u0627\\u0621\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(3, '{\"en\":\"Biology\",\"ar\":\"\\u0625\\u062d\\u064a\\u0627\\u0621\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(4, '{\"en\":\"Chemistry\",\"ar\":\"\\u0643\\u064a\\u0645\\u064a\\u0627\\u0621\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34'),
(5, '{\"en\":\"Mathematics\",\"ar\":\"\\u0631\\u064a\\u0627\\u0636\\u064a\\u0627\\u062a\"}', '2023-03-17 12:32:34', '2023-03-17 12:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_day` date NOT NULL,
  `academic_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `gender_id` bigint UNSIGNED NOT NULL,
  `nationalitie_id` bigint UNSIGNED NOT NULL,
  `blood_id` bigint UNSIGNED NOT NULL,
  `guardian_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `birth_day`, `academic_year`, `grade_id`, `gender_id`, `nationalitie_id`, `blood_id`, `guardian_id`, `classroom_id`, `section_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, '{\"ar\":\"\\u0645\\u062d\\u0645\\u062f\",\"en\":\"mohamed\"}', 'bdrango@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2000-02-22', '2023', 1, 1, 64, 2, 1, 3, 3, NULL, '2023-03-25 02:50:22', '2023-04-14 10:00:52'),
(6, '{\"ar\":\"\\u0627\\u062d\\u0645\\u062f\",\"en\":\"ahmed\"}', 'ahmed@gmail.com', '$2y$10$Brwq3UG8ZZsdEaj0XF8AMOHNKxnGcaNee0p6AQDzpSPV0qxZgD2J6', '2001-02-22', '2024', 1, 1, 64, 2, 1, 3, 3, NULL, '2023-04-01 22:29:15', '2023-04-13 20:02:38'),
(7, '{\"ar\":\"\\u0645\\u062d\\u0645\\u062f\",\"en\":\"salah\"}', 'salah@gmail.com', '$2y$10$2ITECVFPD5o82j9rbzVkZ.BM2tcajpVlbwIfHucV6Gw9sxcKUjvWy', '2000-02-22', '2023', 1, 1, 64, 2, 1, 3, 3, NULL, '2023-03-25 02:50:22', '2023-04-13 20:02:51'),
(8, '{\"ar\":\"\\u064a\\u0648\\u0633\\u0641\",\"en\":\"youssif\"}', 'hamo01099389305@gmail.com', '$2y$10$pluhX7KwBULeZWk8XUyRVeQAmJ.U6649.8e6SA.zju9CkgBmG11uS', '2001-02-22', '2023', 1, 1, 13, 5, 1, 2, 1, NULL, '2023-04-07 18:34:17', '2023-04-07 18:34:17'),
(9, '{\"ar\":\"Leo Osborn\",\"en\":\"Quinlan Morales\"}', 'cibazubi@mailinator.com', '$2y$10$YLaeiPjJKNSvTqbTpOzhpO733QokiOrPFC0VQPvzIocq.2fo9ZFM6', '2004-02-08', '2023', 1, 2, 232, 6, 1, 3, 3, NULL, '2023-04-07 21:36:17', '2023-04-13 20:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `student_accounts`
--

CREATE TABLE `student_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `debit` decimal(8,2) DEFAULT NULL,
  `credit` decimal(8,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `receipt_id` bigint UNSIGNED DEFAULT NULL,
  `processing_id` bigint UNSIGNED DEFAULT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_accounts`
--

INSERT INTO `student_accounts` (`id`, `debit`, `credit`, `description`, `student_id`, `grade_id`, `classroom_id`, `receipt_id`, `processing_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(10, '10000.00', '0.00', NULL, 5, 1, 3, NULL, NULL, NULL, '2023-04-13 19:39:53', '2023-04-13 19:39:53'),
(11, '0.00', '2000.00', 'مصاريف ترم اول', 5, 1, 3, 9, NULL, NULL, '2023-04-13 19:40:45', '2023-04-13 19:40:45'),
(12, NULL, '1000.00', NULL, 5, 1, 3, NULL, NULL, 5, '2023-04-13 19:41:43', '2023-04-13 19:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroom_id` bigint UNSIGNED NOT NULL,
  `grade_id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `classroom_id`, `grade_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(2, '{\"ar\":\"\\u0643\\u0648\\u0645\\u0628\\u0648\\u062a\\u0631\",\"en\":\"computer\"}', 2, 1, 1, '2023-04-03 18:20:41', '2023-04-03 18:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization_id` bigint UNSIGNED NOT NULL,
  `gender_id` bigint UNSIGNED NOT NULL,
  `joining_date` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `specialization_id`, `gender_id`, `joining_date`, `address`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0645\\u062d\\u0645\\u062f\",\"en\":\"Mohamed\"}', 'teacher@gmail.com', '$2y$10$gqEza.c2a3KBQDV.menXQuO1UrNajl25L2Oq4/hm9NV863tRXw6j.', 4, 2, '1996-05-02', '{\"ar\":\"Illo quia ea corpori\",\"en\":\"Ab iusto nulla aut a\"}', '2023-03-17 12:55:19', '2023-04-13 18:46:11'),
(2, '{\"ar\":\"Brennan Villarreal\",\"en\":\"Katell Burch\"}', 'byhysytyk@mailinator.com', '$2y$10$WpJD385rSRLKD.Lnt5UAaOtACgfHpzxbyXqRrsPUGT14XKW2pxfyy', 4, 1, '2002-09-24', '{\"ar\":\"Consequatur nihil m\",\"en\":\"Voluptatem irure eum\"}', '2023-03-17 12:55:23', '2023-04-07 21:37:44'),
(3, '{\"ar\":\"Prescott Flores\",\"en\":\"Lenore Castaneda\"}', 'sydelo@mailinator.com', '$2y$10$JPOIhEGLBVqCSwhQZqI0TO1a9/FmBZbofZCViUTSTy.T9CNyNbFsW', 3, 2, '2011-08-20', '{\"ar\":\"Dolor magna id et nu\",\"en\":\"Facilis velit maxim\"}', '2023-03-17 12:55:26', '2023-03-17 12:55:26'),
(4, '{\"ar\":\"Kristen Boyer\",\"en\":\"Ira Mccray\"}', 'dumivituty@mailinator.com', '$2y$10$xqSG4IEIxSZQirtVZHnytevTQ2qNsKtI5AoKVIPpznDoENw0xahQK', 2, 1, '1971-12-01', '{\"ar\":\"Quisquam dignissimos\",\"en\":\"Illo delectus conse\"}', '2023-03-17 12:55:30', '2023-03-17 12:55:30'),
(5, '{\"ar\":\"Quinn Mathis\",\"en\":\"Jessamine Giles\"}', 'siryxypek@mailinator.com', '$2y$10$wXCyZDSr0koW1H9Pq/tmrOOkKnRX.vTjsS5GevAGUmZFysMJUG/lu', 1, 1, '2021-02-04', '{\"ar\":\"Nulla mollitia eos q\",\"en\":\"Et ex velit eveniet\"}', '2023-03-17 12:55:34', '2023-04-07 21:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_section`
--

CREATE TABLE `teacher_section` (
  `id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `section_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_section`
--

INSERT INTO `teacher_section` (`id`, `teacher_id`, `section_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 1, 3),
(7, 2, 3),
(8, 1, 4),
(9, 2, 4),
(10, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'hamo01099389305@gmail.com', NULL, '$2y$10$u13c2yrFfehx.UzofonrFu/ifMSzmCMlTAg8FSPj1sXmJBtKwnGzm', NULL, '2023-03-17 12:33:28', '2023-03-17 12:33:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_grade_id_foreign` (`grade_id`),
  ADD KEY `attendances_classroom_id_foreign` (`classroom_id`),
  ADD KEY `attendances_section_id_foreign` (`section_id`),
  ADD KEY `attendances_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degrees_student_id_foreign` (`student_id`),
  ADD KEY `degrees_exam_id_foreign` (`exam_id`),
  ADD KEY `degrees_question_id_foreign` (`question_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_teacher_id_foreign` (`teacher_id`),
  ADD KEY `exams_grade_id_foreign` (`grade_id`),
  ADD KEY `exams_classroom_id_foreign` (`classroom_id`),
  ADD KEY `exams_section_id_foreign` (`section_id`),
  ADD KEY `exams_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_grade_id_foreign` (`grade_id`),
  ADD KEY `fees_classroom_id_foreign` (`classroom_id`),
  ADD KEY `fees_feetype_id_foreign` (`feetype_id`);

--
-- Indexes for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_invoices_student_id_foreign` (`student_id`),
  ADD KEY `fee_invoices_grade_id_foreign` (`grade_id`),
  ADD KEY `fee_invoices_classroom_id_foreign` (`classroom_id`),
  ADD KEY `fee_invoices_fees_id_foreign` (`fees_id`);

--
-- Indexes for table `fee_types`
--
ALTER TABLE `fee_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fund_accounts_receipt_id_foreign` (`receipt_id`),
  ADD KEY `fund_accounts_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guardians_nationalitie_id_foreign` (`nationalitie_id`),
  ADD KEY `guardians_blood_id_foreign` (`blood_id`),
  ADD KEY `guardians_religion_id_foreign` (`religion_id`);

--
-- Indexes for table `guardian_attachments`
--
ALTER TABLE `guardian_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guardian_attachments_guardian_id_foreign` (`guardian_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectures_grade_id_foreign` (`grade_id`),
  ADD KEY `lectures_classroom_id_foreign` (`classroom_id`),
  ADD KEY `lectures_section_id_foreign` (`section_id`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libraries_grade_id_foreign` (`grade_id`),
  ADD KEY `libraries_classroom_id_foreign` (`classroom_id`),
  ADD KEY `libraries_section_id_foreign` (`section_id`),
  ADD KEY `libraries_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_student_id_foreign` (`student_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `processings`
--
ALTER TABLE `processings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processings_student_id_foreign` (`student_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_from_grade_foreign` (`from_grade`),
  ADD KEY `promotions_from_classroom_foreign` (`from_classroom`),
  ADD KEY `promotions_from_section_foreign` (`from_section`),
  ADD KEY `promotions_to_grade_foreign` (`to_grade`),
  ADD KEY `promotions_to_classroom_foreign` (`to_classroom`),
  ADD KEY `promotions_to_section_foreign` (`to_section`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_student_id_foreign` (`student_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_grade_id_foreign` (`grade_id`),
  ADD KEY `sections_classroom_id_foreign` (`classroom_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD KEY `students_grade_id_foreign` (`grade_id`),
  ADD KEY `students_gender_id_foreign` (`gender_id`),
  ADD KEY `students_nationalitie_id_foreign` (`nationalitie_id`),
  ADD KEY `students_blood_id_foreign` (`blood_id`),
  ADD KEY `students_guardian_id_foreign` (`guardian_id`),
  ADD KEY `students_classroom_id_foreign` (`classroom_id`),
  ADD KEY `students_section_id_foreign` (`section_id`);

--
-- Indexes for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_accounts_student_id_foreign` (`student_id`),
  ADD KEY `student_accounts_grade_id_foreign` (`grade_id`),
  ADD KEY `student_accounts_classroom_id_foreign` (`classroom_id`),
  ADD KEY `student_accounts_receipt_id_foreign` (`receipt_id`),
  ADD KEY `student_accounts_processing_id_foreign` (`processing_id`),
  ADD KEY `student_accounts_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_classroom_id_foreign` (`classroom_id`),
  ADD KEY `subjects_grade_id_foreign` (`grade_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD KEY `teachers_specialization_id_foreign` (`specialization_id`),
  ADD KEY `teachers_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `teacher_section`
--
ALTER TABLE `teacher_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_section_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_section_section_id_foreign` (`section_id`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fee_types`
--
ALTER TABLE `fee_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guardian_attachments`
--
ALTER TABLE `guardian_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processings`
--
ALTER TABLE `processings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_section`
--
ALTER TABLE `teacher_section`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `degrees_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `degrees_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `degrees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exams_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_feetype_id_foreign` FOREIGN KEY (`feetype_id`) REFERENCES `fee_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fees_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fee_invoices`
--
ALTER TABLE `fee_invoices`
  ADD CONSTRAINT `fee_invoices_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fee_invoices_fees_id_foreign` FOREIGN KEY (`fees_id`) REFERENCES `fees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fee_invoices_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fee_invoices_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fund_accounts`
--
ALTER TABLE `fund_accounts`
  ADD CONSTRAINT `fund_accounts_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fund_accounts_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guardians`
--
ALTER TABLE `guardians`
  ADD CONSTRAINT `guardians_blood_id_foreign` FOREIGN KEY (`blood_id`) REFERENCES `bloods` (`id`),
  ADD CONSTRAINT `guardians_nationalitie_id_foreign` FOREIGN KEY (`nationalitie_id`) REFERENCES `nationalities` (`id`),
  ADD CONSTRAINT `guardians_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`);

--
-- Constraints for table `guardian_attachments`
--
ALTER TABLE `guardian_attachments`
  ADD CONSTRAINT `guardian_attachments_guardian_id_foreign` FOREIGN KEY (`guardian_id`) REFERENCES `guardians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lectures_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lectures_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `libraries`
--
ALTER TABLE `libraries`
  ADD CONSTRAINT `libraries_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libraries_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libraries_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libraries_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `processings`
--
ALTER TABLE `processings`
  ADD CONSTRAINT `processings_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_from_classroom_foreign` FOREIGN KEY (`from_classroom`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_from_grade_foreign` FOREIGN KEY (`from_grade`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_from_section_foreign` FOREIGN KEY (`from_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_to_classroom_foreign` FOREIGN KEY (`to_classroom`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_to_grade_foreign` FOREIGN KEY (`to_grade`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_to_section_foreign` FOREIGN KEY (`to_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_blood_id_foreign` FOREIGN KEY (`blood_id`) REFERENCES `bloods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_guardian_id_foreign` FOREIGN KEY (`guardian_id`) REFERENCES `guardians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_nationalitie_id_foreign` FOREIGN KEY (`nationalitie_id`) REFERENCES `nationalities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD CONSTRAINT `student_accounts_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_accounts_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_accounts_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_accounts_processing_id_foreign` FOREIGN KEY (`processing_id`) REFERENCES `processings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_accounts_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_accounts_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teachers_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_section`
--
ALTER TABLE `teacher_section`
  ADD CONSTRAINT `teacher_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_section_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
