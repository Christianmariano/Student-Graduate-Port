-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql105.infinityfree.com
-- Generation Time: Sep 21, 2025 at 07:51 AM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37740098_graduate_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `role` enum('Information Technology','Entrepreneurship','Education','Fisheries','Cashier','SASO','Library') NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `role`, `username`, `fullname`, `gmail`, `photo`, `phone`, `password`, `created_at`) VALUES
(116, 'Information Technology', 'qaz', 'Ryan', 'ryanaguilos@gmail.com', 'uploads_admin_image/67403fa06bc410.26660671.jpg', 2147483647, '$2y$10$lv5M6A1cIWcfaQX7V/ZPw..mi/7DS58GRNbay.vvhnDDPM8qkD6ZC', '2024-11-23 14:24:27'),
(117, 'Library', 'qaz', 'qa', 'a@gmail.com', 'uploads_admin_image/6740408f066b60.58866901.jpg', 2147483647, '$2y$10$Hg3sK5XVHIBt664Tgdmjxe4FzNHEjDS.ffFvJMRVLCp3ioVw49HsO', '2024-11-22 08:27:59'),
(118, 'Cashier', 'qaz', 'qazwsx', 'a@gmail.com', 'uploads_admin_image/67412b15439d74.09272599.jpg', 2147483647, '$2y$10$IbdkEM29qSO9eFRCbWnaCuX7PL391pg.2c.Njo7eRClhCoA44uuVe', '2024-11-23 01:08:37'),
(119, 'Education', 'qaz', 'qazwsx', 'a@gmail.com', 'uploads_admin_image/67418247aed545.05917249.jpg', 2147483647, '$2y$10$vnsqocT9vxpDaSt0t51.x.h01gbg3rzQr71Z2RdiqxMfIYWgGYyry', '2024-11-23 07:20:39'),
(120, 'Fisheries', 'qaz', 'wqwqw', 'a@gmail.com', 'uploads_admin_image/67429dd36f6a50.28642954.jpg', 2147483647, '$2y$10$CUsnGW8Bex9LPOP.9EOX8.LZ5iP3siuTyyqYilmvMvA5VG4GcCUjq', '2024-11-24 03:30:27'),
(121, 'Entrepreneurship', 'qaz', 'ghgh', 'a@gmail.com', 'uploads_admin_image/674327f544c4c7.42746802.jpg', 2147483647, '$2y$10$a4sZLVS5GFNJs0vvpKAGreuEBjJD5cD9t3iBkCxQU3XtB915/miyO', '2024-11-24 13:19:49'),
(122, 'SASO', 'qaz', 'ghgh', 'a@gmail.com', 'uploads_admin_image/674349203f6229.93474320.jpg', 2147483647, '$2y$10$BKbmFeYrrwiZs4ol4DqrIeaezB.lUtP1O4lrm290cemRM1pthC2eK', '2024-11-24 15:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `education_christmass_party_attendance_school_year_2025`
--

CREATE TABLE `education_christmass_party_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_christmass_party_attendance_school_year_2025`
--

INSERT INTO `education_christmass_party_attendance_school_year_2025` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'q', 12, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'dgfhgh', 13134, 'Third Year', 'nbnbv'),
('Not Attend', 'Not Attend', 'Not Attend', 'qwrr', 1245, 'First Year', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `education_christmass_party_attendance_school_year_2026`
--

CREATE TABLE `education_christmass_party_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_christmass_party_attendance_school_year_2026`
--

INSERT INTO `education_christmass_party_attendance_school_year_2026` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'fgfhghg', 131424, 'First Year', 'jgfjjfgjgjfgfhgfhfghgfhfghfghfghgfhgfhfghfghjgfjjfgjgjfgfhgfhfghgfhfghfghfghgfhgfhfghfghjgfjjfgjgjfgfhgfhfghgfhfghfghfghgfhgfhfghfghjgfjjfgjgjfgfhgfhfghgfhfghfghfghgfhgfhfghfghjgfjjfgjgjfgfhgfhfghgfhfghfghfghgfhgfhfghfgh');

-- --------------------------------------------------------

--
-- Table structure for table `education_christmass_party_attendance_school_year_2027`
--

CREATE TABLE `education_christmass_party_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_christmass_party_attendance_school_year_2027`
--

INSERT INTO `education_christmass_party_attendance_school_year_2027` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'fdfsdf', 32323, 'First Year', 'gfgfgfg');

-- --------------------------------------------------------

--
-- Table structure for table `education_christmass_party_attendance_school_year_2028`
--

CREATE TABLE `education_christmass_party_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_christmass_party_attendance_school_year_2028`
--

INSERT INTO `education_christmass_party_attendance_school_year_2028` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'hfhfh', 64646, 'Second Year', 'utttutu');

-- --------------------------------------------------------

--
-- Table structure for table `education_christmass_party_attendance_school_year_2029`
--

CREATE TABLE `education_christmass_party_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_christmass_party_attendance_school_year_2029`
--

INSERT INTO `education_christmass_party_attendance_school_year_2029` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'gjgjgj', 46464, 'Second Year', 'nghfdfg');

-- --------------------------------------------------------

--
-- Table structure for table `education_christmass_party_attendance_school_year_2030`
--

CREATE TABLE `education_christmass_party_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_christmass_party_attendance_school_year_2030`
--

INSERT INTO `education_christmass_party_attendance_school_year_2030` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'fhffdh', 7654654, 'Second Year', 'qaz');

-- --------------------------------------------------------

--
-- Table structure for table `education_event_attendance_school_year_2025`
--

CREATE TABLE `education_event_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_event_attendance_school_year_2025`
--

INSERT INTO `education_event_attendance_school_year_2025` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', ''),
('Not Attend', 'Not Attend', '', 'Third Year', 1121, '', 'qwqw'),
('Not Attend', 'Not Attend', '', 'Second Year', 3423, '', 'ssd'),
('Not Attend', 'Not Attend', 'Not Attend', 'fsfsf', 43442, 'Second Year', 'kjl');

-- --------------------------------------------------------

--
-- Table structure for table `education_event_attendance_school_year_2026`
--

CREATE TABLE `education_event_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_event_attendance_school_year_2026`
--

INSERT INTO `education_event_attendance_school_year_2026` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', '', 'Second Year', 113234, '', 'daadd'),
('Not Attend', 'Not Attend', 'Not Attend', 'dgdg', 53535, 'First Year', ''),
('Not Attend', 'Not Attend', 'Attend', 'fefsf', 4244, 'Second Year', 'sfsfg'),
('Not Attend', 'Not Attend', 'Not Attend', 'eet', 24, 'First Year', 'jjkjj');

-- --------------------------------------------------------

--
-- Table structure for table `education_event_attendance_school_year_2027`
--

CREATE TABLE `education_event_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_event_attendance_school_year_2027`
--

INSERT INTO `education_event_attendance_school_year_2027` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', '', 'Second Year', 31414, '', 'dadad'),
('Not Attend', 'Not Attend', '', 'Third Year', 656453, '', 'dsdsff'),
('Not Attend', 'Not Attend', '', 'Second Year', 3232, '', 'sdd'),
('Not Attend', 'Not Attend', 'Not Attend', 'fsfdf', 31313, 'Second Year', 'bnvnbc');

-- --------------------------------------------------------

--
-- Table structure for table `education_event_attendance_school_year_2028`
--

CREATE TABLE `education_event_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_event_attendance_school_year_2028`
--

INSERT INTO `education_event_attendance_school_year_2028` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'gfghjgj', 1213143, 'First Year', 'fgdfdfgd');

-- --------------------------------------------------------

--
-- Table structure for table `education_event_attendance_school_year_2029`
--

CREATE TABLE `education_event_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_event_attendance_school_year_2029`
--

INSERT INTO `education_event_attendance_school_year_2029` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'gfgdgfdg', 3535, 'Second Year', 'jklu'),
('Not Attend', 'Not Attend', 'Not Attend', 'ghgfh', 75757, 'Second Year', 'poiuyt');

-- --------------------------------------------------------

--
-- Table structure for table `education_event_attendance_school_year_2030`
--

CREATE TABLE `education_event_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_event_attendance_school_year_2030`
--

INSERT INTO `education_event_attendance_school_year_2030` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`, `major`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'efefe', 34343, 'Second Year', 'hbfghgfd');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_activity_attendance_school_year_2024`
--

CREATE TABLE `education_student_activity_attendance_school_year_2024` (
  `id` int(10) NOT NULL,
  `uswag` enum('','Absent','Attend') NOT NULL,
  `christmass_party` enum('','Absent','Attend') NOT NULL,
  `Intramural` enum('','Absent','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_activity_attendance_school_year_2024`
--

INSERT INTO `education_student_activity_attendance_school_year_2024` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `major`, `status`) VALUES
(4, '', '', '', 'fgdfg', 0, 'First Year', '', ''),
(5, 'Absent', 'Absent', '', 'tyrty', 56456, 'First Year', 'math', ''),
(7, 'Absent', 'Attend', 'Attend', 'ghfgh', 56546, 'First Year', 'math', 'Incomplete'),
(9, '', 'Absent', '', 'hjgy', 67567, 'First Year', 'math', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_activity_attendance_school_year_2025`
--

CREATE TABLE `education_student_activity_attendance_school_year_2025` (
  `id` int(10) NOT NULL,
  `uswag` enum('','Absent','Attend') NOT NULL,
  `christmass_party` enum('','Absent','Attend') NOT NULL,
  `Intramural` enum('','Absent','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_activity_attendance_school_year_2025`
--

INSERT INTO `education_student_activity_attendance_school_year_2025` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `major`, `status`) VALUES
(7, '', '', 'Absent', 'qazws', 1333, 'Second Year', 'qaz', 'Complete'),
(9, '', '', '', 'ghgh', 12345, 'Third Year', 'math', 'Complete'),
(12, '', '', '', 'qaz', 1231, 'Fourth Year', 'math', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_activity_attendance_school_year_2026`
--

CREATE TABLE `education_student_activity_attendance_school_year_2026` (
  `id` int(10) NOT NULL,
  `uswag` enum('','Absent','Attend') NOT NULL,
  `christmass_party` enum('','Absent','Attend') NOT NULL,
  `Intramural` enum('','Absent','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_activity_attendance_school_year_2026`
--

INSERT INTO `education_student_activity_attendance_school_year_2026` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `major`, `status`) VALUES
(1, '', '', '', 'qazwsx', 1234, 'First Year', '', 'Complete'),
(2, '', '', '', 'qazwsx', 1234, 'Second Year', '', 'Complete'),
(3, '', '', '', 'qwqw', 1213, 'First Year', 'asad', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_activity_attendance_school_year_2027`
--

CREATE TABLE `education_student_activity_attendance_school_year_2027` (
  `id` int(10) NOT NULL,
  `uswag` enum('','Absent','Attend') NOT NULL,
  `christmass_party` enum('','Absent','Attend') NOT NULL,
  `Intramural` enum('','Absent','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_activity_attendance_school_year_2027`
--

INSERT INTO `education_student_activity_attendance_school_year_2027` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `major`, `status`) VALUES
(1, '', '', '', 'qazwsx', 1234, 'First Year', '', 'Complete'),
(2, '', '', '', 'qazwsx', 1234, 'Second Year', '', 'Complete'),
(3, '', '', '', 'qwqw', 121344, 'Second Year', 'asas', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_activity_attendance_school_year_2028`
--

CREATE TABLE `education_student_activity_attendance_school_year_2028` (
  `id` int(10) NOT NULL,
  `uswag` enum('','Not Attend','Attend') NOT NULL,
  `christmass_party` enum('','Not Attend','Attend') NOT NULL,
  `Intramural` enum('','Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_activity_attendance_school_year_2028`
--

INSERT INTO `education_student_activity_attendance_school_year_2028` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `major`, `status`) VALUES
(1, 'Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', '', ''),
(2, 'Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', '', 'Complete'),
(3, 'Not Attend', 'Not Attend', 'Not Attend', 'qeqe', 21344, 'First Year', 'asdd', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_activity_attendance_school_year_2029`
--

CREATE TABLE `education_student_activity_attendance_school_year_2029` (
  `id` int(10) NOT NULL,
  `uswag` enum('','Not Attend','Attend') NOT NULL,
  `christmass_party` enum('','Not Attend','Attend') NOT NULL,
  `Intramural` enum('','Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `major` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_activity_attendance_school_year_2029`
--

INSERT INTO `education_student_activity_attendance_school_year_2029` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `major`, `status`) VALUES
(1, 'Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'First Year', '', 'Complete'),
(2, 'Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', '', 'Complete'),
(3, 'Attend', 'Not Attend', 'Not Attend', 'eqeqeq', 11314, 'Second Year', 'adadad', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_library_borrow_year_2025`
--

CREATE TABLE `education_student_library_borrow_year_2025` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_library_borrow_year_2025`
--

INSERT INTO `education_student_library_borrow_year_2025` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(2, 1233333, 'qw', '2024-09-27 04:36:00', '2024-09-30 00:37:00', '', 'Borrow'),
(3, 9786543, 'qazxcv', '2024-10-23 10:28:00', '0000-00-00 00:00:00', '', 'Return');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_library_borrow_year_2026`
--

CREATE TABLE `education_student_library_borrow_year_2026` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_library_borrow_year_2026`
--

INSERT INTO `education_student_library_borrow_year_2026` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(2, 12321, 'qazwsx', '2024-10-23 13:31:00', '2024-10-27 14:31:00', '', 'Borrow'),
(3, 1212, 'sdsdsd', '2024-10-27 22:31:00', '0000-00-00 00:00:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_library_borrow_year_2027`
--

CREATE TABLE `education_student_library_borrow_year_2027` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_library_borrow_year_2027`
--

INSERT INTO `education_student_library_borrow_year_2027` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(2, 12342, 'qwe', '2024-09-03 04:24:00', '2024-09-30 15:24:00', '', 'Borrow'),
(3, 2323, 'qw', '2024-10-24 22:32:00', '2024-10-23 13:32:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_library_borrow_year_2028`
--

CREATE TABLE `education_student_library_borrow_year_2028` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_library_borrow_year_2028`
--

INSERT INTO `education_student_library_borrow_year_2028` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(2, 34, 'rt', '2024-09-10 17:24:00', '2024-09-30 17:25:00', '', 'Borrow'),
(3, 2323, 'sdsd', '2024-10-27 22:33:00', '0000-00-00 00:00:00', '', 'Return');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_library_borrow_year_2029`
--

CREATE TABLE `education_student_library_borrow_year_2029` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_library_borrow_year_2029`
--

INSERT INTO `education_student_library_borrow_year_2029` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(2, 345, 'fgd', '2024-08-14 16:25:00', '2024-09-30 14:25:00', '', 'Borrow'),
(3, 12131131, 'qazwsx', '2024-10-28 11:01:00', '2024-10-30 11:02:00', '', 'Return');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_library_borrow_year_2030`
--

CREATE TABLE `education_student_library_borrow_year_2030` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_library_borrow_year_2030`
--

INSERT INTO `education_student_library_borrow_year_2030` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(1, 12, 'as', '2024-11-27 12:43:00', '2024-11-29 12:43:00', '', 'Return');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_record_school_year_2025`
--

CREATE TABLE `education_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` varchar(255) NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `fourth_major` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_record_school_year_2025`
--

INSERT INTO `education_student_record_school_year_2025` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `christmass_party`, `uswag`, `intramural`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`, `fourth_year_id`, `fourth_year_name`, `fourth_major`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(329, 'wq', 'Receive', 'Unpaid', '0.00', 21, 'Completed', 'Absent', 'Submit', 'Paid', '80.00', '0.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 'aaa', 30, 'dfs', 'Sciencep', 10, 70, 0, 0, 'Paid'),
(342, 'hh', '', '', '0.00', 0, '', '', '', '', '0.00', '55.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 0, '', '', 0, 0, 20, 35, 'Unpaid'),
(343, 'hh', '', '', '0.00', 0, '', '', '', '', '0.00', '54.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 0, '', '', 0, 0, 0, 54, ''),
(344, 'g', '', '', '0.00', 0, '', '', '', '', '0.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 0, '', '', 0, 0, 2, -2, ''),
(345, 'tt', '', '', '0.00', 0, '', '', '', '', '0.00', '444.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 0, '', '', 0, 0, 4, 440, '');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_record_school_year_2026`
--

CREATE TABLE `education_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` varchar(255) NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `fourth_major` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_record_school_year_2026`
--

INSERT INTO `education_student_record_school_year_2026` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`, `fourth_year_id`, `fourth_year_name`, `fourth_major`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(326, 'q', 'Receive', 'Unpaid', '0.00', 14, 'Not Completed', 'Participate', 'Submit', 'Unpaid', '0.00', '0.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 'Science', 60, 'gd', 'Science', 0, 0, 0, 0, ''),
(328, 'oijl', '', 'Paid', '0.00', 797, 'Completed', '', '', '', '0.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 'math', 0, 'f', 'Mathemat', 0, 0, 0, 0, ''),
(329, 'gg', '', '', '0.00', 0, '', '', '', '', '0.00', '444.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 0, '', '', 0, 0, 4, 440, '');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_record_school_year_2027`
--

CREATE TABLE `education_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` varchar(255) NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `fourth_major` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_record_school_year_2027`
--

INSERT INTO `education_student_record_school_year_2027` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`, `fourth_year_id`, `fourth_year_name`, `fourth_major`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(324, '', '', 'Unpaid', '0.00', 0, 'Not Completed', 'Absent', 'Submit', 'Unpaid', '0.00', '0.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 54, 'ert', 'Science', 0, 0, 0, 0, ''),
(325, 'trhtr', '', 'Paid', '0.00', 5645, 'Completed', '', '', 'Paid', '0.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 'math', 0, '', 'Mathematics', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_record_school_year_2028`
--

CREATE TABLE `education_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` varchar(255) NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `fourth_major` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_record_school_year_2028`
--

INSERT INTO `education_student_record_school_year_2028` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`, `fourth_year_id`, `fourth_year_name`, `fourth_major`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(326, 'h', 'Return', 'Paid', '0.00', 0, 'Not Completed', '', 'Pending', 'Unpaid', '0.00', '0.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 8, 'r', 'Science', 0, 0, 0, 0, ''),
(327, '', '', '', '0.00', 0, '', 'Absent', '', '', '0.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 0, 'y', 'h', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_record_school_year_2029`
--

CREATE TABLE `education_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` varchar(255) NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `fourth_major` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_record_school_year_2029`
--

INSERT INTO `education_student_record_school_year_2029` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`, `fourth_year_id`, `fourth_year_name`, `fourth_major`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(323, 'tty', 'Receive', 'Unpaid', '0.00', 7689, 'Not Completed', 'Absent', 'Pending', 'Unpaid', '0.00', '60.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 'Science', 60, 'ty', 'Mathematics', 0, 0, 0, 60, ''),
(324, 'f', 'Return', 'Paid', '0.00', 0, 'Completed', 'Absent', 'Pending', 'Paid', '0.00', '0.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '', 55, 'ytr', 'Mathematics', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `education_student_record_school_year_2030`
--

CREATE TABLE `education_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` varchar(255) NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `fourth_major` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_student_record_school_year_2030`
--

INSERT INTO `education_student_record_school_year_2030` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`, `fourth_year_id`, `fourth_year_name`, `fourth_major`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(350, 'd', '', '', '20.00', 0, 'Not Completed', 'Participate', 'Submit', 'Unpaid', '0.00', '60.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', '22', 0, 'r', 'f', 0, 0, 68, -8, 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_library_borrow_year_2025`
--

CREATE TABLE `entrepreneurship_student_library_borrow_year_2025` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrepreneurship_student_library_borrow_year_2025`
--

INSERT INTO `entrepreneurship_student_library_borrow_year_2025` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(1, 353, 'dhhf', '2024-09-10 16:11:00', '2024-10-01 15:15:00', '', 'Borrow'),
(2, 12434, 'qazwsx', '2024-11-12 13:32:00', '0000-00-00 00:00:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_library_borrow_year_2026`
--

CREATE TABLE `entrepreneurship_student_library_borrow_year_2026` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_library_borrow_year_2027`
--

CREATE TABLE `entrepreneurship_student_library_borrow_year_2027` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_library_borrow_year_2028`
--

CREATE TABLE `entrepreneurship_student_library_borrow_year_2028` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_library_borrow_year_2029`
--

CREATE TABLE `entrepreneurship_student_library_borrow_year_2029` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_library_borrow_year_2030`
--

CREATE TABLE `entrepreneurship_student_library_borrow_year_2030` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_record_school_year_2025`
--

CREATE TABLE `entrepreneurship_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `business_plan_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrepreneurship_student_record_school_year_2025`
--

INSERT INTO `entrepreneurship_student_record_school_year_2025` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `business_plan_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(323, 'qap', 'Return', 'Unpaid', '120.00', '', 'Not Completed', 'Absent', 'Pending', '', 'Not Completed', '60.00', '30.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 40, 20, 2, 28, 'Unpaid'),
(330, 'kk', '', '', '0.00', '', 'Not Completed', '', '', '', '', '6666.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 6600, 66, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_record_school_year_2026`
--

CREATE TABLE `entrepreneurship_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `business_plan_status` enum('Not Completed','Completed') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrepreneurship_student_record_school_year_2026`
--

INSERT INTO `entrepreneurship_student_record_school_year_2026` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `business_plan_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(309, 'c', 'Return', '', '0.00', '', 'Not Completed', 'Absent', 'Pending', '', 'Completed', '0.00', '660.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 5, 'gh', 0, 0, 60, 600, 'Unpaid'),
(311, 'erere', 'Receive', '', '0.00', '333', '', '', '', '', 'Not Completed', '222.00', '0.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 222, 0, 0, 'Paid'),
(314, 'yhy', '', '', '0.00', '', '', '', '', '', 'Not Completed', '0.00', '666.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 6, 660, '');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_record_school_year_2027`
--

CREATE TABLE `entrepreneurship_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `business_plan_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrepreneurship_student_record_school_year_2027`
--

INSERT INTO `entrepreneurship_student_record_school_year_2027` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `business_plan_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(313, 'xz', 'Receive', '', '0.00', '12', 'Not Completed', 'Absent', 'Pending', 'Unpaid', 'Completed', '0.00', '0.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 0, 0, 'Unpaid'),
(314, 'a', 'Return', '', '0.00', '222', '', '', '', 'Paid', 'Not Completed', '222.00', '0.00', 'Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 220, 2, 0, 0, 'Paid'),
(315, 'ssss', '', '', '0.00', '', '', '', '', '', '', '0.00', '543.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 90, 453, ''),
(317, 'jljkl', '', '', '0.00', '', '', '', '', '', '', '0.00', '88887.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 77, 88810, '');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_record_school_year_2028`
--

CREATE TABLE `entrepreneurship_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `business_plan_status` enum('Not Completed','Completed') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `first_year_student_student_name` varchar(255) NOT NULL,
  `second_year_student_student_name` varchar(255) NOT NULL,
  `third_year_student_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_grade_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_grade_status` enum('Not Completed','Completed') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrepreneurship_student_record_school_year_2028`
--

INSERT INTO `entrepreneurship_student_record_school_year_2028` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `business_plan_status`, `graduation_fee`, `ojt_fee`, `first_year_student_student_name`, `second_year_student_student_name`, `third_year_student_student_name`, `first_year_student_grade_status`, `second_year_student_grade_status`, `third_year_student_grade_status`, `fourth_year_student_grade_first_sem_status`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(316, 'sc', 'Receive', '', '0.00', '25', 'Not Completed', 'Absent', 'Pending', 'Paid', 'Completed', '0.00', '0.00', '', '', '', 'Not Completed', 'Not Completed', 'Not Completed', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 7, 'j;gffk', 0, 0, 0, 0, ''),
(318, 'ssss', '', '', '0.00', '', '', '', '', '', 'Not Completed', '0.00', '33333.00', '', '', '', 'Not Completed', 'Not Completed', 'Not Completed', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 90, 33243, 'Unpaid'),
(319, 'ww', '', '', '0.00', '', '', '', '', '', 'Not Completed', '333.00', '0.00', '', '', '', 'Not Completed', 'Not Completed', 'Not Completed', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 330, 3, 0, 0, 'Paid'),
(320, 'nhgg', '', '', '0.00', '', '', '', '', '', 'Not Completed', '0.00', '334.00', '', '', '', 'Not Completed', 'Not Completed', 'Not Completed', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 4, 330, '');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_record_school_year_2029`
--

CREATE TABLE `entrepreneurship_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `business_plan_status` enum('Not Completed','Completed') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrepreneurship_student_record_school_year_2029`
--

INSERT INTO `entrepreneurship_student_record_school_year_2029` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `business_plan_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(312, 'ssss', '', '', '0.00', '12345', 'Completed', '', '', '', 'Not Completed', '0.00', '54321.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 0, 54321, 'Paid'),
(313, 'wwww', '', '', '0.00', '', '', '', '', '', 'Not Completed', '222.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 220, 2, 0, 0, 'Unpaid'),
(314, 'yhyyyyy', '', '', '0.00', '', '', '', '', '', 'Not Completed', '0.00', '555.00', '', 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, '', 0, 0, 55, 500, '');

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurship_student_record_school_year_2030`
--

CREATE TABLE `entrepreneurship_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `business_plan_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrep_christmass_party_attendance_school_year_2025`
--

CREATE TABLE `entrep_christmass_party_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_christmass_party_attendance_school_year_2025`
--

INSERT INTO `entrep_christmass_party_attendance_school_year_2025` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwss', 12345, 'Second Year');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_christmass_party_attendance_school_year_2026`
--

CREATE TABLE `entrep_christmass_party_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_christmass_party_attendance_school_year_2026`
--

INSERT INTO `entrep_christmass_party_attendance_school_year_2026` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 12321, 'Fourth Year');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_christmass_party_attendance_school_year_2027`
--

CREATE TABLE `entrep_christmass_party_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_christmass_party_attendance_school_year_2027`
--

INSERT INTO `entrep_christmass_party_attendance_school_year_2027` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_christmass_party_attendance_school_year_2028`
--

CREATE TABLE `entrep_christmass_party_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_christmass_party_attendance_school_year_2028`
--

INSERT INTO `entrep_christmass_party_attendance_school_year_2028` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_christmass_party_attendance_school_year_2029`
--

CREATE TABLE `entrep_christmass_party_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_christmass_party_attendance_school_year_2029`
--

INSERT INTO `entrep_christmass_party_attendance_school_year_2029` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_christmass_party_attendance_school_year_2030`
--

CREATE TABLE `entrep_christmass_party_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_christmass_party_attendance_school_year_2030`
--

INSERT INTO `entrep_christmass_party_attendance_school_year_2030` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year'),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_event_attendance_school_year_2025`
--

CREATE TABLE `entrep_event_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `Intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_event_attendance_school_year_2025`
--

INSERT INTO `entrep_event_attendance_school_year_2025` (`uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Third Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1212, 'Third Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano', 12345, 'Fourth Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Fourth Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123546, 'Second Year', ''),
('Not Attend', 'Not Attend', 'Not Attend', 'qazxcv', 1234567, 'Second Year', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_event_attendance_school_year_2026`
--

CREATE TABLE `entrep_event_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `Intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrep_event_attendance_school_year_2027`
--

CREATE TABLE `entrep_event_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `Intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrep_event_attendance_school_year_2028`
--

CREATE TABLE `entrep_event_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `Intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrep_event_attendance_school_year_2029`
--

CREATE TABLE `entrep_event_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `Intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrep_event_attendance_school_year_2030`
--

CREATE TABLE `entrep_event_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `Intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_event_attendance_school_year_2030`
--

INSERT INTO `entrep_event_attendance_school_year_2030` (`uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 1234, 'Second Year', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_student_activity_attendance_school_year_2025`
--

CREATE TABLE `entrep_student_activity_attendance_school_year_2025` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Absent','Attend') NOT NULL,
  `christmass_party` enum('','Absent','Attend') NOT NULL,
  `Intramural` enum('','Absent','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_student_activity_attendance_school_year_2025`
--

INSERT INTO `entrep_student_activity_attendance_school_year_2025` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(2, 'Attend', 'Absent', 'Absent', 'qaz', 121, '1', 'Complete'),
(7, '', '', '', 'fgfg', 44, '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_student_activity_attendance_school_year_2026`
--

CREATE TABLE `entrep_student_activity_attendance_school_year_2026` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_student_activity_attendance_school_year_2026`
--

INSERT INTO `entrep_student_activity_attendance_school_year_2026` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(1, 'Absent', 'Attend', 'Attend', 'qa', 12, 'Fourth Year', 'Complete'),
(7, '', '', '', 'JHS', 62, '1', ''),
(8, '', '', '', 'AA', 1, '12', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_student_activity_attendance_school_year_2027`
--

CREATE TABLE `entrep_student_activity_attendance_school_year_2027` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_student_activity_attendance_school_year_2027`
--

INSERT INTO `entrep_student_activity_attendance_school_year_2027` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(3, 'Absent', 'Attend', 'Attend', 'christian mariano', 12345, 'Fourth Year', 'Incomplete'),
(7, '', '', '', 'QA', 12, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_student_activity_attendance_school_year_2028`
--

CREATE TABLE `entrep_student_activity_attendance_school_year_2028` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_student_activity_attendance_school_year_2028`
--

INSERT INTO `entrep_student_activity_attendance_school_year_2028` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(2, 'Attend', 'Absent', 'Absent', 'qazwsx', 1212, 'Third Year', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_student_activity_attendance_school_year_2029`
--

CREATE TABLE `entrep_student_activity_attendance_school_year_2029` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_student_activity_attendance_school_year_2029`
--

INSERT INTO `entrep_student_activity_attendance_school_year_2029` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(5, 'Absent', 'Attend', 'Attend', 'qazwsx', 123546, 'Second Year', 'Incomplete'),
(6, '', '', '', 'qaz', 1234, '2', ''),
(7, '', '', '', 'SD', 11, '344', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrep_student_activity_attendance_school_year_2030`
--

CREATE TABLE `entrep_student_activity_attendance_school_year_2030` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Absent','Attend') NOT NULL,
  `christmass_party` enum('','Absent','Attend') NOT NULL,
  `Intramural` enum('','Absent','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrep_student_activity_attendance_school_year_2030`
--

INSERT INTO `entrep_student_activity_attendance_school_year_2030` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(2, 'Attend', 'Absent', 'Absent', 'qaz', 121, '34', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `start_date`, `end_date`) VALUES
(12, 'fggfg', '2024-07-27', '2024-07-31'),
(20, 'asdfg', '2024-09-19', '2024-09-17'),
(25, 'as', '2024-09-16', '2024-09-25'),
(35, 'wer', '2024-11-27', '2024-11-28'),
(37, 'qaz', '2024-11-27', '2024-11-30'),
(38, 'USWAG', '2024-11-25', '2024-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_education_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_education_first_sem_student_record_school_year_2025` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(327, 'we', 'Completed', 14, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_education_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_budget_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_education_first_sem_student_record_school_year_2026` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `Mathinik_contribution`, `Mathinik_budget_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(325, 't', 'Not Completed', 5, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_education_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_education_first_sem_student_record_school_year_2027` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(324, 'rol', 'Not Completed', 59, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics'),
(325, 'jhjhk', 'Not Completed', 5788, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_education_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_education_first_sem_student_record_school_year_2028` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(327, 'jy', 'Completed', 5, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_education_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_education_first_sem_student_record_school_year_2029` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(325, 'tu', 'Completed', 56, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Science'),
(326, 'tjk', 'Not Completed', 7, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_education_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_education_first_sem_student_record_school_year_2030` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(322, 'dj', 'Completed', 428, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_s_student_record_school_year_2025`
--

CREATE TABLE `first_year_education_first_sem_s_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_s_student_record_school_year_2025`
--

INSERT INTO `first_year_education_first_sem_s_student_record_school_year_2025` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(326, 'ds', 'Not Completed', 23, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_s_student_record_school_year_2026`
--

CREATE TABLE `first_year_education_first_sem_s_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_s_student_record_school_year_2026`
--

INSERT INTO `first_year_education_first_sem_s_student_record_school_year_2026` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(326, 'ds', 'Not Completed', 23, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_s_student_record_school_year_2027`
--

CREATE TABLE `first_year_education_first_sem_s_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_s_student_record_school_year_2027`
--

INSERT INTO `first_year_education_first_sem_s_student_record_school_year_2027` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(326, 'ds', 'Not Completed', 23, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_s_student_record_school_year_2028`
--

CREATE TABLE `first_year_education_first_sem_s_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_s_student_record_school_year_2028`
--

INSERT INTO `first_year_education_first_sem_s_student_record_school_year_2028` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(326, 'ds', 'Not Completed', 23, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_s_student_record_school_year_2029`
--

CREATE TABLE `first_year_education_first_sem_s_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_s_student_record_school_year_2029`
--

INSERT INTO `first_year_education_first_sem_s_student_record_school_year_2029` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(326, 'ds', 'Not Completed', 23, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_first_sem_s_student_record_school_year_2030`
--

CREATE TABLE `first_year_education_first_sem_s_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_first_sem_s_student_record_school_year_2030`
--

INSERT INTO `first_year_education_first_sem_s_student_record_school_year_2030` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(326, 'ds', 'Not Completed', 23, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_education_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_education_second_sem_student_record_school_year_2025` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(326, 'Not Completed', 'fh', 57, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics'),
(327, 'Not Completed', 'jkh', 78, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_education_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_education_second_sem_student_record_school_year_2026` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(320, 'Not Completed', 'dj', 37, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics'),
(325, 'Not Completed', 'y', 6, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_education_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_education_second_sem_student_record_school_year_2027` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(320, 'Completed', 'dj', 38, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics'),
(324, 'Not Completed', 'tyt', 67, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_education_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_education_second_sem_student_record_school_year_2028` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(326, 'Completed', 'ty', 890, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_education_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_education_second_sem_student_record_school_year_2029` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(323, 'Not Completed', 'pk', 94, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics'),
(324, 'Not Completed', 'hjg', 78, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_education_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_education_second_sem_student_record_school_year_2030` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `christmass_party`, `uswag`, `intramural`, `major`) VALUES
(321, 'Not Completed', 'au', 19, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics'),
(324, 'Not Completed', 'u', 8, 0, 'Not Yet', 'Participate', 'Participate', 'Participate', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_sschool_year_2025`
--

CREATE TABLE `first_year_education_second_sem_student_record_sschool_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_sschool_year_2025`
--

INSERT INTO `first_year_education_second_sem_student_record_sschool_year_2025` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(324, 'Completed', 'dsd', 13, 0, 'Not Yet', 'Participate', 'Participate', 'Participate'),
(325, 'Not Completed', '', 0, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_sschool_year_2026`
--

CREATE TABLE `first_year_education_second_sem_student_record_sschool_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_sschool_year_2026`
--

INSERT INTO `first_year_education_second_sem_student_record_sschool_year_2026` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(324, 'Completed', 'dsd', 13, 0, 'Not Yet', 'Participate', 'Participate', 'Participate'),
(325, 'Not Completed', '', 0, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_sschool_year_2027`
--

CREATE TABLE `first_year_education_second_sem_student_record_sschool_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_sschool_year_2027`
--

INSERT INTO `first_year_education_second_sem_student_record_sschool_year_2027` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(324, 'Completed', 'dsd', 13, 0, 'Not Yet', 'Participate', 'Participate', 'Participate'),
(325, 'Not Completed', '', 0, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_sschool_year_2028`
--

CREATE TABLE `first_year_education_second_sem_student_record_sschool_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_sschool_year_2028`
--

INSERT INTO `first_year_education_second_sem_student_record_sschool_year_2028` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(324, 'Completed', 'dsd', 13, 0, 'Not Yet', 'Participate', 'Participate', 'Participate'),
(325, 'Not Completed', '', 0, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_sschool_year_2029`
--

CREATE TABLE `first_year_education_second_sem_student_record_sschool_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_sschool_year_2029`
--

INSERT INTO `first_year_education_second_sem_student_record_sschool_year_2029` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(324, 'Completed', 'dsd', 13, 0, 'Not Yet', 'Participate', 'Participate', 'Participate'),
(325, 'Not Completed', '', 0, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_education_second_sem_student_record_sschool_year_2030`
--

CREATE TABLE `first_year_education_second_sem_student_record_sschool_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `SCIRE_contribution` int(10) NOT NULL,
  `SCIRE_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_education_second_sem_student_record_sschool_year_2030`
--

INSERT INTO `first_year_education_second_sem_student_record_sschool_year_2030` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `SCIRE_contribution`, `SCIRE_contribution_status`, `christmass_party`, `uswag`, `intramural`) VALUES
(324, 'Completed', 'dsd', 13, 0, 'Not Yet', 'Participate', 'Participate', 'Participate'),
(325, 'Not Completed', '', 0, 0, 'Not Yet', 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_first_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_entrep_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_first_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_entrep_first_sem_student_record_school_year_2025` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(323, 'qad', 'Not Completed', 1234, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_first_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_entrep_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_first_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_entrep_first_sem_student_record_school_year_2026` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(323, 'za', 'Completed', 12, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_first_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_entrep_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_first_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_entrep_first_sem_student_record_school_year_2027` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(324, 'a', 'Not Completed', 1, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_first_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_entrep_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_first_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_entrep_first_sem_student_record_school_year_2028` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(322, 'dda', 'Not Completed', 122, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_first_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_entrep_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_first_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_entrep_first_sem_student_record_school_year_2029` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(323, 'ab', 'Not Completed', 12345, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_first_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_entrep_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_first_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_entrep_first_sem_student_record_school_year_2030` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(323, 'a', 'Completed', 1, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_second_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_entrep_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_second_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_entrep_second_sem_student_record_school_year_2025` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(319, 'Completed', 'as', 30, 'Participate', 'Participate', 'Participate', 0, 'Not Yet'),
(321, 'Not Completed', 'scdc', 123, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_second_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_entrep_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_second_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_entrep_second_sem_student_record_school_year_2026` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(319, 'Completed', 's', 30, 'Participate', 'Participate', 'Participate', 0, 'Not Yet'),
(321, 'Not Completed', 'cdc', 123, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_second_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_entrep_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_second_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_entrep_second_sem_student_record_school_year_2027` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(319, 'Completed', 'q', 30, 'Participate', 'Participate', 'Participate', 0, 'Not Yet'),
(321, 'Not Completed', 'a', 1, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_second_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_entrep_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_second_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_entrep_second_sem_student_record_school_year_2028` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(319, 'Not Completed', 'd', 30, 'Participate', 'Participate', 'Participate', 0, 'Not Yet'),
(321, 'Completed', 'f', 2, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_second_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_entrep_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_second_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_entrep_second_sem_student_record_school_year_2029` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(320, 'Not Completed', 'dsd', 323, 'Participate', 'Participate', 'Participate', 0, 'Not Yet'),
(321, 'Completed', 'vg', 57, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_entrep_second_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_entrep_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_entrep_second_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_entrep_second_sem_student_record_school_year_2030` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(319, 'Not Completed', 's', 20, 'Participate', 'Participate', 'Participate', 0, 'Not Yet'),
(321, 'Completed', 'a', 1, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_first_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_fisheries_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_first_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_fisheries_first_sem_student_record_school_year_2025` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`) VALUES
(322, 'qe', 'Completed', 2, 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_first_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_fisheries_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_first_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_fisheries_first_sem_student_record_school_year_2026` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`) VALUES
(322, 'sd', 'Not Completed', 23, 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_first_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_fisheries_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_first_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_fisheries_first_sem_student_record_school_year_2027` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`) VALUES
(321, 'e', 'Not Completed', 5, 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_first_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_fisheries_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_first_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_fisheries_first_sem_student_record_school_year_2028` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`) VALUES
(321, 'z', 'Completed', 8, 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_first_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_fisheries_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_first_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_fisheries_first_sem_student_record_school_year_2029` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`) VALUES
(321, 'qaz', 'Completed', 98, 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_first_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_fisheries_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_first_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_fisheries_first_sem_student_record_school_year_2030` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`) VALUES
(321, 'qwerty', 'Not Completed', 5, 'Participate', 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_second_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_fisheries_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_second_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_fisheries_second_sem_student_record_school_year_2025` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`) VALUES
(322, 'Completed', 'hh', 90, 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_second_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_fisheries_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_second_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_fisheries_second_sem_student_record_school_year_2026` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`) VALUES
(319, 'Completed', 'i', 1, 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_second_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_fisheries_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_second_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_fisheries_second_sem_student_record_school_year_2027` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`) VALUES
(320, 'Completed', 'd', 32, 'Participate', 'Participate'),
(321, 'Not Completed', 'fdgfg', 353, 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_second_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_fisheries_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_second_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_fisheries_second_sem_student_record_school_year_2028` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`) VALUES
(321, 'Completed', 'h', 5, 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_second_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_fisheries_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_second_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_fisheries_second_sem_student_record_school_year_2029` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`) VALUES
(320, 'Completed', 'd', 3, 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_fisheries_second_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_fisheries_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_fisheries_second_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_fisheries_second_sem_student_record_school_year_2030` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`) VALUES
(319, 'Not Completed', '', 0, 'Participate', 'Participate'),
(320, 'Not Completed', 'dsd', 323, 'Participate', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_first_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_it_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_first_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_it_first_sem_student_record_school_year_2025` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(322, 'ti', 'Completed', 699, 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_first_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_it_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_first_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_it_first_sem_student_record_school_year_2026` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(321, 'sj', 'Completed', 17, 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(323, 't', 'Not Completed', 5, 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_first_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_it_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_first_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_it_first_sem_student_record_school_year_2027` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`, `intramural`, `uswag`, `christmass_party`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(323, 'y', 'Not Completed', 8, 'Participate', 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_first_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_it_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_first_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_it_first_sem_student_record_school_year_2028` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`) VALUES
(321, 'ej', 'Not Completed', 17);

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_first_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_it_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_first_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_it_first_sem_student_record_school_year_2029` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`) VALUES
(321, 'et', 'Completed', 6),
(324, 'r', 'Not Completed', 7);

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_first_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_it_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_name` varchar(255) NOT NULL,
  `first_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_first_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_it_first_sem_student_record_school_year_2030` (`id`, `first_year_student_name`, `first_year_student_grade_first_sem_status`, `first_year_student_id`) VALUES
(322, 'r', 'Not Completed', 5);

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_second_sem_student_record_school_year_2025`
--

CREATE TABLE `first_year_it_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_second_sem_student_record_school_year_2025`
--

INSERT INTO `first_year_it_second_sem_student_record_school_year_2025` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(320, 'Not Completed', 'd', 3, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(323, 'Not Completed', 't', 8, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_second_sem_student_record_school_year_2026`
--

CREATE TABLE `first_year_it_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_second_sem_student_record_school_year_2026`
--

INSERT INTO `first_year_it_second_sem_student_record_school_year_2026` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(320, 'Completed', 'd', 3, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(324, 'Not Completed', 'y', 8, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_second_sem_student_record_school_year_2027`
--

CREATE TABLE `first_year_it_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_second_sem_student_record_school_year_2027`
--

INSERT INTO `first_year_it_second_sem_student_record_school_year_2027` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(322, 'Completed', 'h', 3, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(323, 'Not Completed', 'ly', 8, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_second_sem_student_record_school_year_2028`
--

CREATE TABLE `first_year_it_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_second_sem_student_record_school_year_2028`
--

INSERT INTO `first_year_it_second_sem_student_record_school_year_2028` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(320, 'Not Completed', 'd', 32, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(321, 'Not Completed', 'dfd', 32, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_second_sem_student_record_school_year_2029`
--

CREATE TABLE `first_year_it_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_second_sem_student_record_school_year_2029`
--

INSERT INTO `first_year_it_second_sem_student_record_school_year_2029` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(321, 'Not Completed', 'dff', 222, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(322, 'Completed', 'r', 79, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_it_second_sem_student_record_school_year_2030`
--

CREATE TABLE `first_year_it_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `first_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `first_year_student_name_second_sem` varchar(255) NOT NULL,
  `first_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `robotic_guild_contribution` int(10) NOT NULL,
  `robotic_guild_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `multimedia_guild_contribution` int(10) NOT NULL,
  `multimedia_guild_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_year_it_second_sem_student_record_school_year_2030`
--

INSERT INTO `first_year_it_second_sem_student_record_school_year_2030` (`id`, `first_year_student_grade_second_sem_status`, `first_year_student_name_second_sem`, `first_year_student_id_second_sem`, `intramural`, `uswag`, `jpg_contribution`, `jpg_contribution_status`, `robotic_guild_contribution`, `robotic_guild_contribution_status`, `multimedia_guild_contribution`, `multimedia_guild_contribution_status`) VALUES
(319, 'Completed', 'i', 60, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet'),
(322, 'Not Completed', 'r', 6, 'Participate', 'Participate', 0, 'Not Yet', 0, 'Not Yet', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_christmass_party_attendance_school_year_2025`
--

CREATE TABLE `fisheries_christmass_party_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_christmass_party_attendance_school_year_2026`
--

CREATE TABLE `fisheries_christmass_party_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_christmass_party_attendance_school_year_2027`
--

CREATE TABLE `fisheries_christmass_party_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_christmass_party_attendance_school_year_2028`
--

CREATE TABLE `fisheries_christmass_party_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_christmass_party_attendance_school_year_2029`
--

CREATE TABLE `fisheries_christmass_party_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_christmass_party_attendance_school_year_2030`
--

CREATE TABLE `fisheries_christmass_party_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_event_attendance_school_year_2025`
--

CREATE TABLE `fisheries_event_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_event_attendance_school_year_2025`
--

INSERT INTO `fisheries_event_attendance_school_year_2025` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'christian mariano p', 12, 'Second Year');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_event_attendance_school_year_2026`
--

CREATE TABLE `fisheries_event_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_event_attendance_school_year_2027`
--

CREATE TABLE `fisheries_event_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_event_attendance_school_year_2028`
--

CREATE TABLE `fisheries_event_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_event_attendance_school_year_2029`
--

CREATE TABLE `fisheries_event_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_event_attendance_school_year_2030`
--

CREATE TABLE `fisheries_event_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_activity_attendance_school_year_2024`
--

CREATE TABLE `fisheries_student_activity_attendance_school_year_2024` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_activity_attendance_school_year_2024`
--

INSERT INTO `fisheries_student_activity_attendance_school_year_2024` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(2, 'Absent', 'Attend', 'Attend', 'ghf', 0, '32', 'Incomplete'),
(3, 'Absent', 'Attend', 'Attend', 'gfddf', 0, '3', 'Incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_activity_attendance_school_year_2025`
--

CREATE TABLE `fisheries_student_activity_attendance_school_year_2025` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_activity_attendance_school_year_2025`
--

INSERT INTO `fisheries_student_activity_attendance_school_year_2025` (`id`, `uswag`, `christmass_party`, `Intramural`, `fullname`, `student_id`, `year_level`, `status`) VALUES
(1, '', '', '', 'yty', 0, '44', '');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_activity_attendance_school_year_2026`
--

CREATE TABLE `fisheries_student_activity_attendance_school_year_2026` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_activity_attendance_school_year_2027`
--

CREATE TABLE `fisheries_student_activity_attendance_school_year_2027` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_activity_attendance_school_year_2028`
--

CREATE TABLE `fisheries_student_activity_attendance_school_year_2028` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_activity_attendance_school_year_2029`
--

CREATE TABLE `fisheries_student_activity_attendance_school_year_2029` (
  `id` int(50) NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_library_borrow_year_2025`
--

CREATE TABLE `fisheries_student_library_borrow_year_2025` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_library_borrow_year_2025`
--

INSERT INTO `fisheries_student_library_borrow_year_2025` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(2, 3454, 'dfg', '2024-10-08 15:08:00', '0000-00-00 00:00:00', '', 'Borrow'),
(3, 453534, 'vdfvdfvd', '2024-10-28 11:32:00', '2024-10-30 11:32:00', '', 'Return'),
(4, 12, 'qwerty', '2024-11-04 09:39:00', '0000-00-00 00:00:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_library_borrow_year_2026`
--

CREATE TABLE `fisheries_student_library_borrow_year_2026` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_library_borrow_year_2026`
--

INSERT INTO `fisheries_student_library_borrow_year_2026` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(1, 12113, 'dcsdcdc', '2024-10-28 12:40:00', '2024-10-30 12:40:00', '', 'Return');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_library_borrow_year_2027`
--

CREATE TABLE `fisheries_student_library_borrow_year_2027` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_library_borrow_year_2027`
--

INSERT INTO `fisheries_student_library_borrow_year_2027` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(1, 13243546, 'sdxsx', '2024-10-28 12:41:00', '2024-10-31 12:41:00', '', 'Return'),
(2, 4324342, 'dvdvd', '2024-10-28 12:42:00', '0000-00-00 00:00:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_library_borrow_year_2028`
--

CREATE TABLE `fisheries_student_library_borrow_year_2028` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_library_borrow_year_2029`
--

CREATE TABLE `fisheries_student_library_borrow_year_2029` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_library_borrow_year_2029`
--

INSERT INTO `fisheries_student_library_borrow_year_2029` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(1, 123, 'qwerty', '2024-10-31 12:45:00', '0000-00-00 00:00:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_library_borrow_year_2030`
--

CREATE TABLE `fisheries_student_library_borrow_year_2030` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_library_borrow_year_2030`
--

INSERT INTO `fisheries_student_library_borrow_year_2030` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(1, 12321, 'qwerty', '2024-10-28 12:47:00', '2024-10-30 12:48:00', '', 'Return');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_record_school_year_2025`
--

CREATE TABLE `fisheries_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_record_school_year_2025`
--

INSERT INTO `fisheries_student_record_school_year_2025` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(329, 'xc', '', '', '0.00', '', 'Not Completed', 'Absent', 'Pending', 'Unpaid', '1220.00', '20.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, '', 890, 330, 10, 10, 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_record_school_year_2026`
--

CREATE TABLE `fisheries_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `third_year_student_grade_status` enum('Not Completed','Completed') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_record_school_year_2026`
--

INSERT INTO `fisheries_student_record_school_year_2026` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `third_year_student_grade_status`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(305, 'sph', '', '', '2320.00', '', 'Completed', 'Participate', 'Pending', 'Paid', '220.00', '70.00', 'Not Completed', 'Completed', 'Participate', 'Participate', 'Participate', 40, 'hr', 220, 0, 10, 60, 'Unpaid'),
(313, 'w', '', '', '0.00', '3', 'Not Completed', 'Absent', 'Pending', '', '302.00', '0.00', 'Not Completed', 'Not Completed', 'Participate', 'Participate', 'Participate', 54, 'hfff', 272, 30, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_record_school_year_2027`
--

CREATE TABLE `fisheries_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_record_school_year_2027`
--

INSERT INTO `fisheries_student_record_school_year_2027` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(309, 'efgr', '', '', '0.00', '', 'Not Completed', 'Participate', 'Pending', '', '0.00', '440.00', 'Completed', 'Participate', 'Participate', 'Participate', 40, 'tty', 0, 0, 40, 400, 'Unpaid'),
(312, 'q', '', '', '0.00', '12', '', '', '', 'Paid', '132.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, '', 130, 2, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_record_school_year_2028`
--

CREATE TABLE `fisheries_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_record_school_year_2028`
--

INSERT INTO `fisheries_student_record_school_year_2028` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(307, 'q', '', '', '0.00', '2', '', '', '', 'Unpaid', '2122.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'hkhk', 2110, 12, 0, 0, ''),
(309, 'gjghh', '', '', '0.00', '', '', '', '', '', '0.00', '5555.00', '', 'Participate', 'Participate', 'Participate', 0, '', 0, 0, 55, 5500, '');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_record_school_year_2029`
--

CREATE TABLE `fisheries_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_record_school_year_2029`
--

INSERT INTO `fisheries_student_record_school_year_2029` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(304, 'hi', 'Return', 'Paid', '60.00', '67', 'Completed', 'Absent', '', 'Paid', '360.00', '90.00', 'Completed', 'Participate', 'Participate', 'Participate', 9, 'h', 360, 0, 0, 90, 'Unpaid'),
(309, 'rru', '', '', '0.00', '78', 'Not Completed', 'Absent', 'Pending', '', '120.00', '0.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'hkhhh', 110, 10, 0, 0, ''),
(311, '', '', '', '0.00', '', '', '', '', '', '0.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, 'h', 0, 0, 0, 0, ''),
(312, 'ppopo', '', '', '0.00', '', '', '', '', '', '0.00', '90.00', '', 'Participate', 'Participate', 'Participate', 0, '', 0, 0, 90, 0, ''),
(313, 'oo', '', '', '0.00', '', '', '', '', '', '0.00', '90.00', '', 'Participate', 'Participate', 'Participate', 0, '', 0, 0, 80, 10, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `fisheries_student_record_school_year_2030`
--

CREATE TABLE `fisheries_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Unpaid','Paid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `tree_planting_status` enum('','Absent','Participate') NOT NULL,
  `thesis_status` enum('','Pending','Submit') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `amount_paid` int(50) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fisheries_student_record_school_year_2030`
--

INSERT INTO `fisheries_student_record_school_year_2030` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `tree_planting_status`, `thesis_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `balance`, `amount_paid`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(312, 'ww', 'Return', 'Unpaid', '0.00', '', 'Not Completed', 'Absent', 'Submit', 'Unpaid', '111.00', '100.00', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'q', 98, 13, 50, 50, 'Unpaid'),
(322, 'sdsd', '', '', '0.00', '', '', '', '', '', '1111.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, '', 1100, 11, 0, 0, ''),
(323, 'asa', '', '', '0.00', '', '', '', '', '', '11.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, '', 10, 1, 0, 0, ''),
(324, 'ss', '', '', '0.00', '', '', '', '', '', '111.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, '', 110, 1, 0, 0, ''),
(325, 'bbbb', '', '', '0.00', '', '', '', '', '', '1345.00', '0.00', '', 'Participate', 'Participate', 'Participate', 0, '', 1343, 2, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fish_2025`
--

CREATE TABLE `fish_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_2025`
--

INSERT INTO `fish_2025` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'Q', '2', 'B', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `fish_2026`
--

CREATE TABLE `fish_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_2026`
--

INSERT INTO `fish_2026` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'D', '2', '1', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `fish_2027`
--

CREATE TABLE `fish_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_2027`
--

INSERT INTO `fish_2027` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'FA', '3', 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `fish_2028`
--

CREATE TABLE `fish_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_2028`
--

INSERT INTO `fish_2028` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(6, 'WE', '2', 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `fish_2029`
--

CREATE TABLE `fish_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_2029`
--

INSERT INTO `fish_2029` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'KA', '1', 'A', 'Paid'),
(6, 'ss', '2', 'q', '');

-- --------------------------------------------------------

--
-- Table structure for table `fish_2030`
--

CREATE TABLE `fish_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fish_2030`
--

INSERT INTO `fish_2030` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(4, 'QWa', '22', 'Ax', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `guild_math_2025`
--

CREATE TABLE `guild_math_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guild_math_2025`
--

INSERT INTO `guild_math_2025` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(4, 'q', '2', 'A', 'Paid'),
(5, 'R', '4', 'A', ''),
(6, '354656', 'fghfg', 'h', '');

-- --------------------------------------------------------

--
-- Table structure for table `guild_math_2026`
--

CREATE TABLE `guild_math_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guild_math_2026`
--

INSERT INTO `guild_math_2026` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'Qa', '2', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `guild_math_2027`
--

CREATE TABLE `guild_math_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guild_math_2027`
--

INSERT INTO `guild_math_2027` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'dfq', '2', 'A', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `guild_math_2028`
--

CREATE TABLE `guild_math_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guild_math_2028`
--

INSERT INTO `guild_math_2028` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'gfh', '4', 'A', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `guild_math_2029`
--

CREATE TABLE `guild_math_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guild_math_2029`
--

INSERT INTO `guild_math_2029` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'asde', '2', 'A', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `guild_math_2030`
--

CREATE TABLE `guild_math_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guild_math_2030`
--

INSERT INTO `guild_math_2030` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(6, '342', 'dfs', 'gjh', 'Unpaid'),
(7, '67567', 'fghfg', '546', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `it_christmass_party_attendance_school_year_2025`
--

CREATE TABLE `it_christmass_party_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_christmass_party_attendance_school_year_2025`
--

INSERT INTO `it_christmass_party_attendance_school_year_2025` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_christmass_party_attendance_school_year_2026`
--

CREATE TABLE `it_christmass_party_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_christmass_party_attendance_school_year_2026`
--

INSERT INTO `it_christmass_party_attendance_school_year_2026` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_christmass_party_attendance_school_year_2027`
--

CREATE TABLE `it_christmass_party_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_christmass_party_attendance_school_year_2027`
--

INSERT INTO `it_christmass_party_attendance_school_year_2027` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_christmass_party_attendance_school_year_2028`
--

CREATE TABLE `it_christmass_party_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_christmass_party_attendance_school_year_2028`
--

INSERT INTO `it_christmass_party_attendance_school_year_2028` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_christmass_party_attendance_school_year_2029`
--

CREATE TABLE `it_christmass_party_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_christmass_party_attendance_school_year_2029`
--

INSERT INTO `it_christmass_party_attendance_school_year_2029` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_christmass_party_attendance_school_year_2030`
--

CREATE TABLE `it_christmass_party_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_christmass_party_attendance_school_year_2030`
--

INSERT INTO `it_christmass_party_attendance_school_year_2030` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_event_attendance_school_year_2025`
--

CREATE TABLE `it_event_attendance_school_year_2025` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_event_attendance_school_year_2025`
--

INSERT INTO `it_event_attendance_school_year_2025` (`uswag`, `christmass_party`, `intramural`, `fullname`, `student_id`, `year_level`) VALUES
('Not Attend', 'Not Attend', 'Not Attend', 'qazwsx', 123, 'First Year');

-- --------------------------------------------------------

--
-- Table structure for table `it_event_attendance_school_year_2026`
--

CREATE TABLE `it_event_attendance_school_year_2026` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_event_attendance_school_year_2027`
--

CREATE TABLE `it_event_attendance_school_year_2027` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_event_attendance_school_year_2028`
--

CREATE TABLE `it_event_attendance_school_year_2028` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_event_attendance_school_year_2029`
--

CREATE TABLE `it_event_attendance_school_year_2029` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_event_attendance_school_year_2030`
--

CREATE TABLE `it_event_attendance_school_year_2030` (
  `uswag` enum('Not Attend','Attend') NOT NULL,
  `christmass_party` enum('Not Attend','Attend') NOT NULL,
  `intramural` enum('Not Attend','Attend') NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` enum('First Year','Second Year','Third Year','Fourth Year') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_activity_attendance_school_year_2024`
--

CREATE TABLE `it_student_activity_attendance_school_year_2024` (
  `id` int(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_activity_attendance_school_year_2024`
--

INSERT INTO `it_student_activity_attendance_school_year_2024` (`id`, `fullname`, `student_id`, `year_level`, `Intramural`, `uswag`, `christmass_party`, `status`) VALUES
(2, 'ghgh', 0, '3', 'Attend', 'Attend', 'Attend', 'Complete'),
(3, 'gfhg', 0, '5', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_activity_attendance_school_year_2025`
--

CREATE TABLE `it_student_activity_attendance_school_year_2025` (
  `id` int(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_activity_attendance_school_year_2025`
--

INSERT INTO `it_student_activity_attendance_school_year_2025` (`id`, `fullname`, `student_id`, `year_level`, `Intramural`, `uswag`, `christmass_party`, `status`) VALUES
(15, 'Christian Mariano', 44, '4', 'Absent', 'Absent', 'Absent', 'Complete'),
(16, 'tt', 0, '3', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_activity_attendance_school_year_2026`
--

CREATE TABLE `it_student_activity_attendance_school_year_2026` (
  `id` int(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_activity_attendance_school_year_2026`
--

INSERT INTO `it_student_activity_attendance_school_year_2026` (`id`, `fullname`, `student_id`, `year_level`, `Intramural`, `uswag`, `christmass_party`, `status`) VALUES
(6, 'fghg', 0, '3', 'Absent', 'Attend', 'Absent', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_activity_attendance_school_year_2027`
--

CREATE TABLE `it_student_activity_attendance_school_year_2027` (
  `id` int(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_activity_attendance_school_year_2027`
--

INSERT INTO `it_student_activity_attendance_school_year_2027` (`id`, `fullname`, `student_id`, `year_level`, `Intramural`, `uswag`, `christmass_party`, `status`) VALUES
(3, 'dfg', 44, '3', 'Absent', 'Attend', 'Absent', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_activity_attendance_school_year_2028`
--

CREATE TABLE `it_student_activity_attendance_school_year_2028` (
  `id` int(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(2) NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_activity_attendance_school_year_2029`
--

CREATE TABLE `it_student_activity_attendance_school_year_2029` (
  `id` int(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `student_id` int(10) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `Intramural` enum('','Attend','Absent') NOT NULL,
  `uswag` enum('','Attend','Absent') NOT NULL,
  `christmass_party` enum('','Attend','Absent') NOT NULL,
  `status` enum('','Complete','Incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_activity_attendance_school_year_2029`
--

INSERT INTO `it_student_activity_attendance_school_year_2029` (`id`, `fullname`, `student_id`, `year_level`, `Intramural`, `uswag`, `christmass_party`, `status`) VALUES
(1, 'qazwsx', 123, 'First Year', 'Absent', 'Attend', 'Absent', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_library_borrow_year_2024`
--

CREATE TABLE `it_student_library_borrow_year_2024` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_library_borrow_year_2024`
--

INSERT INTO `it_student_library_borrow_year_2024` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(3, 3434, 'asdasd', '2024-11-25 10:11:00', '0000-00-00 00:00:00', '', 'Borrow');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_library_borrow_year_2025`
--

CREATE TABLE `it_student_library_borrow_year_2025` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_library_borrow_year_2025`
--

INSERT INTO `it_student_library_borrow_year_2025` (`id`, `student_id`, `student_name`, `date_time_borrow`, `date_time_return`, `year_section`, `borrow_book_status`) VALUES
(8, 3434, 'dddd', '2024-11-25 10:05:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_library_borrow_year_2026`
--

CREATE TABLE `it_student_library_borrow_year_2026` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_library_borrow_year_2027`
--

CREATE TABLE `it_student_library_borrow_year_2027` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_library_borrow_year_2028`
--

CREATE TABLE `it_student_library_borrow_year_2028` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_library_borrow_year_2029`
--

CREATE TABLE `it_student_library_borrow_year_2029` (
  `id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `date_time_borrow` datetime NOT NULL,
  `date_time_return` datetime NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `borrow_book_status` enum('','Borrow','Return') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_record_school_year_2024`
--

CREATE TABLE `it_student_record_school_year_2024` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Paid','Unpaid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `tree_planting_status` enum('','Participate','Absent') NOT NULL,
  `caption_project_status` enum('','Submit','Pending') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `balance` int(10) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_student_record_school_year_2025`
--

CREATE TABLE `it_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Paid','Unpaid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `caption_project_status` enum('','Submit','Pending') NOT NULL,
  `tree_planting_status` enum('','Participate','Absent') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `amount_paid` int(10) NOT NULL,
  `balance` int(10) NOT NULL,
  `ojt_amount_paid` int(50) NOT NULL,
  `ojt_balance` int(50) NOT NULL,
  `ojt_fee_status` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_record_school_year_2025`
--

INSERT INTO `it_student_record_school_year_2025` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `caption_project_status`, `tree_planting_status`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `amount_paid`, `balance`, `ojt_amount_paid`, `ojt_balance`, `ojt_fee_status`) VALUES
(356, 'jh', '', '', '0.00', '', 'Completed', '', '0.00', '444.00', 'Submit', '', '', 'Participate', 'Participate', 'Participate', 0, 'tt', 0, 0, 456, -12, 'Unpaid'),
(358, 'Christian Mariano', '', '', '0.00', '', '', '', '0.00', '0.00', '', '', '', 'Participate', 'Participate', 'Participate', 0, '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `it_student_record_school_year_2026`
--

CREATE TABLE `it_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Paid','Unpaid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `tree_planting_status` enum('','Participate','Absent') NOT NULL,
  `caption_project_status` enum('','Submit','Pending') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `amount_paid` int(10) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_record_school_year_2026`
--

INSERT INTO `it_student_record_school_year_2026` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `tree_planting_status`, `caption_project_status`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `amount_paid`, `balance`) VALUES
(338, '', '', '', '0.00', '', '', '', '0.00', '0.00', '', '', 'Not Completed', 'Participate', 'Participate', 'Participate', 0, 'tutut', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_student_record_school_year_2027`
--

CREATE TABLE `it_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Paid','Upaid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `tree_planting_status` enum('','Participate','Absent') NOT NULL,
  `caption_project_status` enum('','Submit','Pending') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `amount_paid` int(10) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_record_school_year_2027`
--

INSERT INTO `it_student_record_school_year_2027` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `tree_planting_status`, `caption_project_status`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `amount_paid`, `balance`) VALUES
(329, '', '', '', '0.00', '', '', '', '0.00', '0.00', '', '', '', 'Participate', 'Participate', 'Participate', 0, 'eeee', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_student_record_school_year_2028`
--

CREATE TABLE `it_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Paid','Unpaid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `tree_planting_status` enum('','Participate','Absent') NOT NULL,
  `caption_project_status` enum('','Submit','Pending') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `amount_paid` int(10) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_record_school_year_2028`
--

INSERT INTO `it_student_record_school_year_2028` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `tree_planting_status`, `caption_project_status`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `amount_paid`, `balance`) VALUES
(336, '', '', '', '0.00', '', '', '', '0.00', '0.00', '', '', '', 'Participate', 'Participate', 'Participate', 0, 'fsfsfs', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `it_student_record_school_year_2029`
--

CREATE TABLE `it_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `rent_status` enum('','Receive','Return') NOT NULL,
  `payment_status` enum('','Paid','Unpaid') NOT NULL,
  `toga_amount` decimal(10,2) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `ojt_status` enum('','Not Completed','Completed') NOT NULL,
  `graduation_fee_status` enum('','Unpaid','Paid') NOT NULL,
  `graduation_fee` decimal(10,2) NOT NULL,
  `ojt_fee` decimal(10,2) NOT NULL,
  `tree_planting_status` enum('','Participate','Absent') NOT NULL,
  `caption_project_status` enum('','Submit','Pending') NOT NULL,
  `fourth_year_student_grade_first_sem_status` enum('','Not Completed','Completed') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `fourth_year_id` int(10) NOT NULL,
  `fourth_year_name` varchar(255) NOT NULL,
  `amount_paid` int(10) NOT NULL,
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_student_record_school_year_2029`
--

INSERT INTO `it_student_record_school_year_2029` (`id`, `student_name`, `rent_status`, `payment_status`, `toga_amount`, `student_id`, `ojt_status`, `graduation_fee_status`, `graduation_fee`, `ojt_fee`, `tree_planting_status`, `caption_project_status`, `fourth_year_student_grade_first_sem_status`, `intramural`, `uswag`, `christmass_party`, `fourth_year_id`, `fourth_year_name`, `amount_paid`, `balance`) VALUES
(335, 'gjgj', '', '', '0.00', '', '', '', '0.00', '0.00', 'Absent', '', '', 'Participate', 'Participate', 'Participate', 0, 'wrwr', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jpel_2025`
--

CREATE TABLE `jpel_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpel_2025`
--

INSERT INTO `jpel_2025` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, 'qa', '4', 'A', ''),
(5, 'a', '4', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `jpel_2026`
--

CREATE TABLE `jpel_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpel_2026`
--

INSERT INTO `jpel_2026` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, '127', '.2', 'B', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `jpel_2027`
--

CREATE TABLE `jpel_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpel_2027`
--

INSERT INTO `jpel_2027` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, '123', '4', 'B', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `jpel_2028`
--

CREATE TABLE `jpel_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpel_2028`
--

INSERT INTO `jpel_2028` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(4, 'qa', '4', 'B', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `jpel_2029`
--

CREATE TABLE `jpel_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpel_2029`
--

INSERT INTO `jpel_2029` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, '12', '3', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `jpel_2030`
--

CREATE TABLE `jpel_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpel_2030`
--

INSERT INTO `jpel_2030` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, 'rte', '32', 'B', 'Unpaid'),
(5, 'fdd', '2', 'a', 'Paid'),
(6, 'iii', '4', 'r', '');

-- --------------------------------------------------------

--
-- Table structure for table `jpg_2024`
--

CREATE TABLE `jpg_2024` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpg_2024`
--

INSERT INTO `jpg_2024` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(9, 'Christian', '4', 'a', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `jpg_2025`
--

CREATE TABLE `jpg_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpg_2025`
--

INSERT INTO `jpg_2025` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(7, 'Q', '1', 'B', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `jpg_2026`
--

CREATE TABLE `jpg_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpg_2026`
--

INSERT INTO `jpg_2026` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(8, 'ER', '3', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `jpg_2027`
--

CREATE TABLE `jpg_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpg_2027`
--

INSERT INTO `jpg_2027` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(5, 'QA', '2', 'C', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `jpg_2028`
--

CREATE TABLE `jpg_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpg_2028`
--

INSERT INTO `jpg_2028` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(4, 'G', '2', 'A', 'Paid'),
(5, 'QWS', '2', 'C', '');

-- --------------------------------------------------------

--
-- Table structure for table `jpg_2029`
--

CREATE TABLE `jpg_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jpg_2029`
--

INSERT INTO `jpg_2029` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(4, 'D', '1', 'C', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `scire_2025`
--

CREATE TABLE `scire_2025` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scire_2025`
--

INSERT INTO `scire_2025` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, '12', '3', 'A', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `scire_2026`
--

CREATE TABLE `scire_2026` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scire_2026`
--

INSERT INTO `scire_2026` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, 'qwA', '1', 'A', 'Unpaid'),
(4, 'RTY', '2', 'C', '');

-- --------------------------------------------------------

--
-- Table structure for table `scire_2027`
--

CREATE TABLE `scire_2027` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scire_2027`
--

INSERT INTO `scire_2027` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, 'qaz', '2', 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `scire_2028`
--

CREATE TABLE `scire_2028` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scire_2028`
--

INSERT INTO `scire_2028` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(2, 'q', '2', 'A', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `scire_2029`
--

CREATE TABLE `scire_2029` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scire_2029`
--

INSERT INTO `scire_2029` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(1, 'SD', '2', 'b', 'Unpaid'),
(2, 'A', '3', 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `scire_2030`
--

CREATE TABLE `scire_2030` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contribution` enum('','Unpaid','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scire_2030`
--

INSERT INTO `scire_2030` (`id`, `student_name`, `year`, `section`, `contribution`) VALUES
(3, 'iuyiyu', '7', 'gjhjg', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_first_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_education_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_first_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_education_first_sem_student_record_school_year_2025` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(323, 'ggh', 'Completed', 2424, 0, 'Not Yet', 'Science'),
(324, 'kwrty', 'Completed', 93, 0, 'Not Yet', 'Science'),
(325, 'r', 'Not Completed', 4, 0, 'Not Yet', '');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_first_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_education_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_first_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_education_first_sem_student_record_school_year_2026` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'd', 'Not Completed', 2, 0, 'Not Yet', 'Mathematics'),
(322, 'fsf', 'Not Completed', 424, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_first_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_education_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_first_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_education_first_sem_student_record_school_year_2027` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'sa', 'Not Completed', 12, 0, 'Not Yet', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_first_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_education_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_first_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_education_first_sem_student_record_school_year_2028` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'e', 'Not Completed', 1, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_first_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_education_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_first_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_education_first_sem_student_record_school_year_2029` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(321, 's', 'Completed', 1, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_first_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_education_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_first_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_education_first_sem_student_record_school_year_2030` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(322, 'sas', 'Completed', 123, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_second_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_education_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_second_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_education_second_sem_student_record_school_year_2025` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(324, 'Completed', 'q', 1, 0, 'Not Yet', 'Mathematics'),
(325, 'Not Completed', 'fdfdg', 114324, 0, 'Not Yet', 'Mathematics'),
(327, 'Not Completed', 'gg', 44, 0, 'Not Yet', '');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_second_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_education_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_second_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_education_second_sem_student_record_school_year_2026` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(323, 'Not Completed', 'gfgr', 375, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_second_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_education_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_second_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_education_second_sem_student_record_school_year_2027` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(319, 'Not Completed', 'qerq', 121, 0, 'Not Yet', 'Science'),
(322, 'Not Completed', 'dd', 323, 0, 'Not Yet', 'Mathematics'),
(323, 'Not Completed', 'as', 43, 0, 'Not Yet', 'Mathematics'),
(324, 'Not Completed', 'ww', 12, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_second_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_education_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_second_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_education_second_sem_student_record_school_year_2028` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'Not Completed', 'u', 5, 0, 'Not Yet', 'Mathematics'),
(322, 'Not Completed', 'hgh', 56, 0, 'Not Yet', '');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_second_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_education_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_second_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_education_second_sem_student_record_school_year_2029` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(319, 'Not Completed', 'jat', 71, 0, 'Not Yet', 'Science'),
(322, 'Not Completed', 'dadad', 1213, 0, 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_education_second_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_education_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `Mathinik_contribution` int(10) NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_education_second_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_education_second_sem_student_record_school_year_2030` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `Mathinik_contribution`, `Mathinik_contribution_status`, `major`) VALUES
(319, 'Not Completed', 'kd', 63, 0, 'Not Yet', 'Mathematics'),
(322, 'Not Completed', 'dd', 343, 0, 'Not Yet', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_first_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_entrep_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(11) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_first_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_entrep_first_sem_student_record_school_year_2025` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(322, 'sg', 'Completed', 21, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_first_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_entrep_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Paid') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_first_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_entrep_first_sem_student_record_school_year_2026` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(322, 'ja', 'Completed', 15, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_first_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_entrep_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_first_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_entrep_first_sem_student_record_school_year_2027` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(322, 'sa', 'Not Completed', 76, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_first_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_entrep_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_first_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_entrep_first_sem_student_record_school_year_2028` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(321, 'f', 'Completed', 8, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_first_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_entrep_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_first_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_entrep_first_sem_student_record_school_year_2029` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(322, 'dfa', 'Not Completed', 121, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_first_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_entrep_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_first_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_entrep_first_sem_student_record_school_year_2030` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `uswag`, `intramural`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(321, 'h', 'Not Completed', 9, 'Participate', 'Participate', 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_second_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_entrep_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_second_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_entrep_second_sem_student_record_school_year_2025` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(323, 'Completed', 'xca', 31, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_second_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_entrep_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_second_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_entrep_second_sem_student_record_school_year_2026` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(322, 'Completed', 'qab', 13, 0, 'Not Yet'),
(323, 'Not Completed', 'a', 1, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_second_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_entrep_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_second_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_entrep_second_sem_student_record_school_year_2027` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(319, 'Not Completed', 'fx', 31, 0, 'Not Yet'),
(323, 'Completed', 'vb', 15, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_second_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_entrep_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_second_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_entrep_second_sem_student_record_school_year_2028` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(323, 'Not Completed', 's', 1, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_second_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_entrep_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_second_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_entrep_second_sem_student_record_school_year_2029` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(321, 'Completed', 'p', 7, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_entrep_second_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_entrep_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_entrep_second_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_entrep_second_sem_student_record_school_year_2030` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpl_contribution`, `jpl_contribution_status`) VALUES
(321, 'Not Completed', 'kq', 74, 0, 'Not Yet'),
(322, 'Not Completed', 's', 4, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_first_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_fisheries_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_first_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_fisheries_first_sem_student_record_school_year_2025` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`) VALUES
(321, 'sfgb', 'Not Completed', 151),
(324, 'ffvfv', 'Not Completed', 54);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_first_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_fisheries_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_first_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_fisheries_first_sem_student_record_school_year_2026` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`) VALUES
(321, 'fvb', 'Not Completed', 21);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_first_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_fisheries_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_first_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_fisheries_first_sem_student_record_school_year_2027` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`) VALUES
(321, 'qvf', 'Completed', 25);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_first_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_fisheries_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_first_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_fisheries_first_sem_student_record_school_year_2028` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`) VALUES
(322, 'er', 'Not Completed', 3);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_first_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_fisheries_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_first_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_fisheries_first_sem_student_record_school_year_2029` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`) VALUES
(321, 'qag', 'Completed', 15);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_first_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_fisheries_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_first_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_fisheries_first_sem_student_record_school_year_2030` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`) VALUES
(322, 'f', 'Not Completed', 5);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_second_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_fisheries_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_second_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_fisheries_second_sem_student_record_school_year_2025` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`) VALUES
(322, 'Completed', 'vc', 345);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_second_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_fisheries_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_second_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_fisheries_second_sem_student_record_school_year_2026` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`) VALUES
(322, 'Completed', 'cvfg', 346);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_second_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_fisheries_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_second_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_fisheries_second_sem_student_record_school_year_2027` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`) VALUES
(321, 'Completed', 'gfs', 725);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_second_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_fisheries_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_second_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_fisheries_second_sem_student_record_school_year_2028` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'gfgf', 754);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_second_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_fisheries_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_second_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_fisheries_second_sem_student_record_school_year_2029` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'ls', 85);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_fisheries_second_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_fisheries_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_fisheries_second_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_fisheries_second_sem_student_record_school_year_2030` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'jb', 82);

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_first_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_it_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_first_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_it_first_sem_student_record_school_year_2025` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(321, 'c', 'Completed', 21, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_first_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_it_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_first_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_it_first_sem_student_record_school_year_2026` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(320, 'eqr', 'Completed', 301, 0, 'Not Yet'),
(323, 'hj', 'Completed', 7, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_first_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_it_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_first_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_it_first_sem_student_record_school_year_2027` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'jgg', 'Completed', 60, 0, 'Not Yet'),
(321, 'p', 'Not Completed', 98, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_first_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_it_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_first_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_it_first_sem_student_record_school_year_2028` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'j', 'Completed', 80, 0, 'Not Yet'),
(321, 'uiop', 'Not Completed', 21, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_first_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_it_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_first_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_it_first_sem_student_record_school_year_2029` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `christmass_party`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'uio', 'Completed', 90, 'Participate', 0, 'Not Yet'),
(320, '', 'Not Completed', 0, 'Participate', 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_first_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_it_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_name` varchar(255) NOT NULL,
  `second_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_id` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_first_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_it_first_sem_student_record_school_year_2030` (`id`, `second_year_student_name`, `second_year_student_grade_first_sem_status`, `second_year_student_id`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(320, 'j', 'Completed', 70, 0, 'Not Yet'),
(321, 'jjhh', 'Not Completed', 998, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_second_sem_student_record_school_year_2025`
--

CREATE TABLE `second_year_it_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_second_sem_student_record_school_year_2025`
--

INSERT INTO `second_year_it_second_sem_student_record_school_year_2025` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(322, 'Not Completed', 'fds', 34, 0, 'Not Yet'),
(323, 'Completed', 'ad', 12, 0, 'Not Yet'),
(324, 'Not Completed', 'sds', 113, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_second_sem_student_record_school_year_2026`
--

CREATE TABLE `second_year_it_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_second_sem_student_record_school_year_2026`
--

INSERT INTO `second_year_it_second_sem_student_record_school_year_2026` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'Not Completed', 'f', 20, 0, 'Not Yet'),
(322, 'Completed', 'nj', 890, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_second_sem_student_record_school_year_2027`
--

CREATE TABLE `second_year_it_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_second_sem_student_record_school_year_2027`
--

INSERT INTO `second_year_it_second_sem_student_record_school_year_2027` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'Completed', 'sa', 309, 0, 'Not Yet'),
(322, 'Not Completed', 'jk', 987, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_second_sem_student_record_school_year_2028`
--

CREATE TABLE `second_year_it_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_second_sem_student_record_school_year_2028`
--

INSERT INTO `second_year_it_second_sem_student_record_school_year_2028` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'Completed', 'a', 20, 0, 'Not Yet'),
(322, 'Completed', 'mp', 55, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_second_sem_student_record_school_year_2029`
--

CREATE TABLE `second_year_it_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_second_sem_student_record_school_year_2029`
--

INSERT INTO `second_year_it_second_sem_student_record_school_year_2029` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'Not Completed', 'f', 10, 0, 'Not Yet'),
(321, 'Not Completed', 'sf', 23, 0, 'Not Yet'),
(322, 'Not Completed', 'fs', 34, 0, 'Not Yet'),
(323, 'Completed', 'mp', 10, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_it_second_sem_student_record_school_year_2030`
--

CREATE TABLE `second_year_it_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `second_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `second_year_student_name_second_sem` varchar(255) NOT NULL,
  `second_year_student_id_second_sem` int(10) NOT NULL,
  `jpg_contribution` int(10) NOT NULL,
  `jpg_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `second_year_it_second_sem_student_record_school_year_2030`
--

INSERT INTO `second_year_it_second_sem_student_record_school_year_2030` (`id`, `second_year_student_grade_second_sem_status`, `second_year_student_name_second_sem`, `second_year_student_id_second_sem`, `jpg_contribution`, `jpg_contribution_status`) VALUES
(319, 'Completed', 'h', 40, 0, 'Not Yet'),
(322, 'Completed', 'yup', 886, 0, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fullname`, `course`, `phone`, `student_id`, `password`, `address`, `img`, `gmail`, `status`, `reg_date`) VALUES
(25, 'christian mariano', 'Bachelor of Science in Information Technology', 1243566567, 1121223489, '$2y$10$cm.Ug86UdxcnF/Gw8mKBf.BUFmisyuG3/vLSrhUKBwnpO72fYXGBi', 'asd', 'uploads_image/WIN_20240624_13_34_55_Pro.jpg', 'christian@gmail.com', 'active', '2024-07-24 19:18:59'),
(26, 'christian mariano', 'Bachelor of Science in Education Major in Science', 1243566567, 2147483647, '$2y$10$zZMgHXL7Q.sdCx88NxO29OivQUNaVwMHpJsG0M2xHNVPPSNHbPKQi', 'asd', 'uploads_image/WIN_20240303_13_14_58_Pro.jpg', 'qwertyui@gmail.com', 'active', '2024-09-12 04:45:33'),
(27, 'christian mariano', 'Bachelor of Science in Education Major in Science', 1243566567, 2147483647, '$2y$10$zZMgHXL7Q.sdCx88NxO29OivQUNaVwMHpJsG0M2xHNVPPSNHbPKQi', 'asd', 'uploads_image/Screenshot 2024-05-31 000922.png', 'christian@gmail.com', 'active', '2024-09-12 04:45:33'),
(29, 'christian mariano', 'Bachelor of Science in Education Major in Science', 1243566567, 1121223423, '$2y$10$PwhFUaFgxDeDPvHj/uAW6ufNoxATAt.SUCctgohn4g1t84TVkXl9q', 'asd', 'uploads/WIN_20230822_11_48_47_Pro.jpg', 'qwertyuio', 'active', '2024-07-18 02:06:22'),
(30, 'christian marianodfdf', 'Bachelor of Science in Education Major in Science', 1243566567, 134567890, '$2y$10$IMAZSaOhvxMVKOsDO/7aqeCXmPeHoU1.IXhuq0Q16N0e8gNVTJgsi', 'asd', 'uploads_image/Screenshot 2024-05-30 233010.png', 'qwertyui@gmail.com', 'active', '2024-07-25 03:39:58'),
(31, 'christian mariano', 'Bachelor of Science in Education Major in Science', 1243566567, 2147483647, '$2y$10$zZMgHXL7Q.sdCx88NxO29OivQUNaVwMHpJsG0M2xHNVPPSNHbPKQi', 'asd', 'uploads/WIN_20240303_13_14_53_Pro.jpg', 'qwertyuio', 'active', '2024-09-12 04:45:33'),
(32, 'christian mariano', 'Bachelor of Science in Education Major in Math', 1243566567, 2147483647, '$2y$10$zZMgHXL7Q.sdCx88NxO29OivQUNaVwMHpJsG0M2xHNVPPSNHbPKQi', 'asd', 'uploads/WIN_20240128_12_52_01_Pro.jpg', 'qwertyuio', 'active', '2024-09-12 04:45:33'),
(41, 'christian mariano', 'Bachelor of Science in Information Technology', 1243566567, 1234512345, '$2y$10$tiHc9/Pb1.GQiC8MswmkK.vUMXajKDPPjjMGx2DJypovJ/4oZgpv.', 'asd', 'uploads/WIN_20240303_13_14_53_Pro.jpg', 'christian@gmail.com', 'active', '2024-07-18 02:53:13'),
(42, 'christian mariano', 'Bachelor of Science in Information Technology', 1243566567, 123456123, '$2y$10$NprE943mia90QDwlfx5PcuVPDtLNvnOnN.8sLTidrdmLvok6KX7WS', 'asda', 'uploads/WIN_20240128_12_52_08_Pro.jpg', 'christian@gmail.com', 'active', '2024-07-19 12:37:14'),
(43, 'christian mariano', 'Bachelor of Science in Education Major in Math', 1243566567, 1231234, '$2y$10$DtEbNoc1X5ykwsnkr.P2iOvaz9TeoYNcmui9gvWCRUiYWDaKsUJjG', 'asd', 'uploads_image/WIN_20240303_13_14_58_Pro.jpg', 'qwertyuio@gmail.com', 'active', '2024-07-19 12:39:47'),
(45, 'christian mariano', 'Bachelor of Science in Education Major in Science', 2147483647, 4343443, '$2y$10$WubKkGi63tmxBzGBt/L6IuGobsC2Ila/O2O3t045cLCgfDzt/O6y6', 'asd', 'student_image/Screenshot 2024-06-11 211048.png', 'qwerty@gmail.com', 'active', '2024-08-03 01:48:58'),
(46, 'christian mariano', 'Bachelor of Science in Fisheries', 2147483647, 32323213, '$2y$10$YnPIGSp1Ht5s1WSoSJfeqObwvmxrqLd4Pm.1OKtgsbOLAs0IH7aDy', 'asd', 'student_image/Screenshot 2024-06-11 211048.png', 'qwerty@gmail.com', 'active', '2024-08-03 01:49:59'),
(48, 'qazwsx', 'Bachelor of Science in Education Major in Math', 2147483647, 2147483647, '$2y$10$zZMgHXL7Q.sdCx88NxO29OivQUNaVwMHpJsG0M2xHNVPPSNHbPKQi', 'qazwsx', 'student_image/20240704_183257.jpg', 'qwerty@gmail.com', 'active', '2024-09-12 04:45:33'),
(49, 'christian mariano', 'Bachelor of Science in Education Major in Math', 2147483647, 12341234, '$2y$10$mE28UC0CPkSSk5u0TD/jOOtEoNBMJH9a7lGu4RxzQxBB8ukRx5NDe', 'asd', 'student_image/20240704_183257.jpg', 'qwerty@gmail.com', 'active', '2024-09-12 04:30:43'),
(50, 'christian mariano', 'Bachelor of Science in Education Major in Math', 2147483647, 2147483647, '$2y$10$zZMgHXL7Q.sdCx88NxO29OivQUNaVwMHpJsG0M2xHNVPPSNHbPKQi', 'asd', 'student_image/20240704_183257.jpg', 'qwerty@gmail.com', 'active', '2024-09-12 04:45:33'),
(51, 'christian mariano qe', 'Bachelor of Science in Information Technology', 2147483647, 123123, '$2y$10$/FdU2Z0RskL2fVfL8PQPjOhEaGvwfKZNVnK6l0WYP3wkceiIUETRO', 'qazwsx qw', 'student_image/20240704_183257.jpg', 'qwerty_q@gmail.com', 'active', '2024-09-12 13:47:32'),
(52, 'christian mariano', 'Bachelor of Science in Information Technology', 945612345, 1234123, '$2y$10$DT6KSY0QRo23B5qQnpxPd.Ofy8ybGqgCMOew3eE4ZeOGBAg2ZFHpq', 'asd', 'student_image/20240704_183257.jpg', 'qwerty@gmail.com', 'active', '2024-09-12 13:48:27'),
(53, 'christian marianod', 'Bachelor of Science in Information Technology', 2147483647, 121212, '$2y$10$XSOTLi.SLBwrpVE3Yi9MNO5Tk9Z7g/6.sgeufIicGLzuhB5GnZ6um', 'asds', 'student_image/0418745db4f34f20e8e09ff6d8d6b2dc.png', 'qwerty@gmail.com', 'active', '2024-09-12 15:06:58'),
(54, 'christian mariano', 'Bachelor of Science in Entrepreneurship', 2147483647, 1231, '$2y$10$/Fn.O.s8ssepMd1YcSP8beGMQewD5q0hFuApmbpIiNI9BhaUqWzkG', 'asd', 'student_image/20240711_180723.jpg', 'qwerty@gmail.com', 'active', '2024-09-12 15:23:24'),
(55, 'christian mariano', 'Bachelor of Science in Education Major in Math', 2147483647, 12321, '$2y$10$K4qgUc8L1qGSezeYYTmdROeQPY/MFG8fTpU9iW0bj7mhLBbB1xma.', 'asd', 'student_image/IMG-20240707-WA0018.jpg', 'qwerty@gmail.com', 'active', '2024-09-13 15:42:32'),
(56, 'MINOR HUNTER', 'Bachelor of Science in Education Major in Science', 2147483647, 6969911, '$2y$10$nyosu3vuZpBHdLmjed0ExuYkirc1zXGwr6v.Yjdtk/CJrZ9syNCWW', 'OHIO SIGMA', 'student_image/Screenshot 2024-06-26 235025.png', 'christian@gmail.com', 'active', '2024-10-17 12:19:08'),
(57, 'ghgh', 'Bachelor of Science in Information Technology', 2147483647, 123451, '$2y$10$k0c7/fb1k7bCuD0rQXz1FeAcWuXeR.b6eRGDLQ/zh9/er2XkciI76', 'qwerty', 'student_image/Database ER diagram (crow\'s foot).png', 'a@gmail.com', 'active', '2024-10-21 12:58:46'),
(58, 'qwerrgr', 'Bachelor of Science in Education Major in Science', 2147483647, 123211, '$2y$10$.TDCIDmoYPdrVKpMVF6xzeZ1hv5NwSHmAqpynKjVCUvfxuzbegpBO', 'qwerty', 'student_image/Screenshot 2024-10-21 210240.png', 'a@gmail.com', 'active', '2024-10-25 06:59:22'),
(59, 'ghgh', 'Bachelor of Science in Education Major in Science', 2147483647, 12345, '$2y$10$mz.6ITfVG6kWjdkxI9v3Q.NlU0zHvp1VKgTra9hvQlEpwIqcFwrbq', 'qwerty', 'student_image/Screenshot (3).png', 'a@gmail.com', 'active', '2024-10-25 07:09:47'),
(60, 'ghgh', 'Bachelor of Science in Education Major in Science', 2147483647, 123212, '$2y$10$1nG1YF5pq3rWUvc8vCLw2OmQ7IEA8o9olp4cy4BMij.RIwEbHREKe', 'qwerty', 'student_image/Screenshot (3).png', 'a@gmail.com', 'active', '2024-10-25 07:21:17'),
(61, 'qazwsx', 'Bachelor of Science in Information Technology', 2147483647, 123456, '$2y$10$6i7lf5x.xnj.1aY0LFZ2fehDh2OjsoMQ6I35ICY0PWn1JKeP3UclC', 'qasd', 'student_image/Screenshot 2024-05-30 171413.png', 'christian@gmail.com', 'active', '2024-10-28 04:33:54'),
(62, 'Gerson Samson', 'Bachelor of Science in Information Technology', 2147483647, 2021, '$2y$10$ouWsR2VHBTnF4n9.uUiwHulbVbGpPBbfXrHxCQv3OO38OrcmJ5Lsy', 'Brgy. Cabarasan Barugo, Leyte', 'student_image/Screenshot 2024-06-11 211048.png', 'gerson.abogado@evsu.edu.ph', 'active', '2024-10-28 05:50:58'),
(63, 'sdsd', 'Bachelor of Science in Information Technology', 2147483647, 12311, '$2y$10$GtNYU9xvbQj7saO2a49ZsuumNFCxRGJQSzFPw5E7.h0UKRvFXwXcW', 'qwerty', 'student_image/Screenshot (4).png', 'a@gmail.com', 'active', '2024-10-30 04:18:08'),
(64, 'Eva Mae Arpon', 'Bachelor of Science in Information Technology', 2147483647, 205160, '$2y$10$7t61V08HmyUtliGZCd7vKe642j6V223K1bQiuPvnoHKFluU7XbmWO', 'Brgy. Domogdog Barugo, Leyte', 'student_image/Screenshot (3).png', 'evaarpon045@gmail.com', 'active', '2024-10-30 05:06:24'),
(65, 'qazwsx', 'Bachelor of Science in Information Technology', 2147483647, 123112, '$2y$10$u/SPASRLe0uIN8bH.py.ZuhKESLtZQuRWotXXVCHs7am6tsp0KwL6', 'qasd', 'student_image/Screenshot 2024-05-30 171413.png', 'christian@gmail.com', 'active', '2024-10-30 05:10:34'),
(66, 'asd', 'Bachelor of Science in Entrepreneurship', 2147483647, 12121, '$2y$10$yRljFvNeGCCHYNwEzR35h.5pjsVta5qhqHbHlt/F.rjJ.exRHhNPK', 'qasd', 'student_image/Screenshot (3).png', 'christian@gmail.com', 'active', '2024-10-31 01:39:47'),
(67, 'mkl', 'Bachelor of Science in Information Technology', 2147483647, 1234561, '$2y$10$u9DJwY0CKtAoSncJGA62DOvtGJuxiELRBoea0w/Ln6z0Ma.ltB5DK', 'qaz', 'student_image/Screenshot 2024-05-30 171413.png', 'christian@gmail.com', 'active', '2024-11-04 01:13:12'),
(68, 'Christian ', 'Bachelor of Science in Information Technology', 2147483647, 987654, '$2y$10$qBpfl4F8m//mEI1nRAT8aOJlwELpOWKDUEAc2pmMv4MvyLZeGP3Ri', 'qwerty', 'student_image/Screenshot 2024-06-11 210806.png', 'avc@gmail.com', 'active', '2024-11-10 08:41:11'),
(69, 'christian ', 'Bachelor of Science in Information Technology', 2147483647, 2147483647, '$2y$10$uV2rcU1mHEK2ZkHFXv0xIuRN6/Z8W9qJLR9zwVfLTbShNyOfNERqG', 'qwerty', 'student_image/Screenshot 2024-06-11 210806.png', 'a@gmail.com', 'active', '2024-11-11 05:27:37'),
(70, 'Christian ', 'Bachelor of Science in Information Technology', 2147483647, 1212121212, '$2y$10$R5z1e8iZ7n3HbZ/F44r/X.o2WYfXmG8yJsP9s1d7gybvqkRhqVnEK', 'qwerty', 'student_image/Screenshot 2024-06-11 210806.png', 'avc@gmail.com', 'active', '2024-11-11 05:29:09'),
(71, 'ghgh', 'Bachelor of Science in Education Major in Math', 2147483647, 1212123, '$2y$10$I6UVdM5qztucvqPu4xZMNuWKt3bXxG3g3uSeZYz6BCDCOg3yRpgTu', 'qas', 'student_image/Screenshot (4).png', 'a@gmail.com', 'active', '2024-11-12 00:08:51'),
(72, 'aaaa', 'Bachelor of Science in Information Technology', 2147483647, 23456, '$2y$10$JEAdbbA6lQdsu8XQs008/O5hVdkVxZOeJvVAzzsgFqNnz.MpRM9He', 'qasd', 'student_image/Screenshot 2024-06-11 210806.png', 'christian@gmail.com', 'active', '2024-11-15 02:42:07'),
(73, 'qa', 'Bachelor of Science in Information Technology', 2147483647, 121212123, '$2y$10$zCLlURZC3oaodR2sdblsMeRgy4JJVjPXNnSQL5gOXVh2SwychxxTq', 'qwerty', 'student_image/_storage_emulated_0_MIUI_Gallery_cloud_.cache_.share_.securityshare_temp_files_1731627692764.jpg', 'a@gmail.com', 'active', '2024-11-19 11:25:18'),
(74, 'christian', 'Bachelor of Science in Information Technology', 2147483647, 42333, '$2y$10$5v.DOZ/zN0PemDfLZJ2FL.TFKHdl4CScmusPMeGntfwLpQR/47XfC', 'qwerty', 'student_image/Screenshot 2024-05-30 233030.png', 'a@gmail.com', 'active', '2024-11-25 07:28:57'),
(75, 'Christian', 'Bachelor of Science in Information Technology', 2147483647, 1222222, '$2y$10$yWEi361LU3tofHPp9kWLuu5g8rHGhO4Wi4mBM.2AhRiVLFk4v.Sha', 'San Roque', 'student_image/Screenshot 2024-05-31 000208.png', 'a@gmail.com', 'active', '2024-11-25 07:41:51'),
(76, 'qazx', 'Bachelor of Science in Information Technology', 2147483647, 12312314, '$2y$10$GFTwmwTq2Yfdu25QkkF5zeH0CMa9/NOFxQVSfqH564SQMOZtBhpq6', 'san roque', 'student_image/1739144718903.jpg', 'qazx@gmail.com', 'active', '2025-03-26 15:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_first_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_education_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_first_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_education_first_sem_student_record_school_year_2025` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution_status`, `major`) VALUES
(323, 'rgr', 'Not Completed', 23, 'Participate', 'Participate', 'Participate', 'Not Yet', ''),
(324, '', 'Not Completed', 0, 'Participate', 'Participate', 'Participate', 'Not Yet', '');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_first_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_education_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_first_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_education_first_sem_student_record_school_year_2026` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution_status`, `major`) VALUES
(319, 'srkj', 'Completed', 139, 'Participate', 'Participate', 'Participate', 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_first_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_education_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_first_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_education_first_sem_student_record_school_year_2027` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution_status`, `major`) VALUES
(320, 'siy', 'Completed', 178, 'Participate', 'Participate', 'Participate', 'Not Yet', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_first_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_education_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_first_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_education_first_sem_student_record_school_year_2028` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'sasi', 'Completed', 2117, 'Participate', 'Participate', 'Participate', 'Not Yet', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_first_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_education_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_first_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_education_first_sem_student_record_school_year_2029` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution_status`, `major`) VALUES
(322, 'kkl', 'Not Completed', 776, 'Participate', 'Participate', 'Participate', 'Not Yet', '');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_first_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_education_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_first_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_education_first_sem_student_record_school_year_2030` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'dfeffu', 'Completed', 0, 'Participate', 'Participate', 'Participate', 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_second_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_education_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_second_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_education_second_sem_student_record_school_year_2025` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`, `intramural`, `uswag`, `Mathinik_contribution_status`, `major`) VALUES
(321, 'Completed', 'p', 6, 'Participate', 'Participate', 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_second_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_education_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_second_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_education_second_sem_student_record_school_year_2026` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`, `intramural`, `uswag`, `Mathinik_contribution_status`, `major`) VALUES
(322, 'Not Completed', 'wewerr', 133312, 'Participate', 'Participate', 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_second_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_education_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_second_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_education_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_second_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_education_second_sem_student_record_school_year_2028` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`, `intramural`, `uswag`, `Mathinik_contribution_status`, `major`) VALUES
(319, 'Not Completed', 'u', 97, 'Participate', 'Participate', 'Not Yet', 'Mathematics'),
(322, 'Not Completed', 'fdfdf', 2323, 'Participate', 'Participate', 'Not Yet', 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_second_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_education_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_second_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_education_second_sem_student_record_school_year_2029` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`, `intramural`, `uswag`, `Mathinik_contribution_status`, `major`) VALUES
(322, 'Completed', 'ds', 12, 'Participate', 'Participate', 'Not Yet', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_education_second_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_education_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Done') NOT NULL,
  `major` enum('Mathematics','Science') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_education_second_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_education_second_sem_student_record_school_year_2030` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`, `intramural`, `uswag`, `Mathinik_contribution_status`, `major`) VALUES
(320, 'Not Completed', 'dad', 120, 'Participate', 'Participate', 'Not Yet', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_first_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_entrep_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_first_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_entrep_first_sem_student_record_school_year_2025` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `jpl_contribution_status`) VALUES
(321, 'ya', 'Not Completed', 61, 'Participate', 'Participate', 'Participate', 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_first_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_entrep_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_first_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_entrep_first_sem_student_record_school_year_2026` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `christmass_party`, `jpl_contribution_status`) VALUES
(321, 'fa', 'Completed', 52, 'Participate', 'Participate', 'Participate', 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_first_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_entrep_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_first_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_entrep_first_sem_student_record_school_year_2027` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `Mathinik_contribution_status`, `jpl_contribution_status`) VALUES
(322, 'ab', 'Completed', 15, 'Participate', 'Participate', 'Not Yet', 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_first_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_entrep_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `Mathinik_contribution_status` enum('Not Yet','Paid') NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_first_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_entrep_first_sem_student_record_school_year_2028` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `Mathinik_contribution_status`, `jpl_contribution_status`) VALUES
(322, 'ba', 'Completed', 15, 'Participate', 'Participate', 'Not Yet', 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_first_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_entrep_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_first_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_entrep_first_sem_student_record_school_year_2029` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `jpl_contribution_status`, `christmass_party`) VALUES
(322, 'q', 'Not Completed', 1, 'Participate', 'Participate', 'Not Yet', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_first_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_entrep_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL,
  `intramural` enum('Participate','Absent') NOT NULL,
  `uswag` enum('Participate','Absent') NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL,
  `christmass_party` enum('Participate','Absent') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_first_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_entrep_first_sem_student_record_school_year_2030` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`, `intramural`, `uswag`, `jpl_contribution_status`, `christmass_party`) VALUES
(322, 'sa', 'Completed', 51, 'Participate', 'Participate', 'Not Yet', 'Participate');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_second_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_entrep_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL,
  `jpl_contribution_status` enum('Not Yet','Done') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_second_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_entrep_second_sem_student_record_school_year_2025` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`, `jpl_contribution_status`) VALUES
(321, 'Not Completed', 'sdvsv', 4243225, 'Not Yet');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_second_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_entrep_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_second_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_entrep_second_sem_student_record_school_year_2026` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'wq', 61);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_second_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_entrep_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_second_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_entrep_second_sem_student_record_school_year_2027` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'ha', 71);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_second_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_entrep_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_second_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_entrep_second_sem_student_record_school_year_2028` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(321, 'Completed', 'ga', 81);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_second_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_entrep_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_second_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_entrep_second_sem_student_record_school_year_2029` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(322, 'Not Completed', 'fa', 21);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_entrep_second_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_entrep_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_entrep_second_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_entrep_second_sem_student_record_school_year_2030` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(321, 'Completed', 'fe', 92),
(322, 'Completed', 'xsa', 125);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_first_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_fisheries_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_first_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_fisheries_first_sem_student_record_school_year_2025` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'rfrgn', 'Not Completed', 3406),
(322, 'gh', 'Not Completed', 3);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_first_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_fisheries_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_first_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_fisheries_first_sem_student_record_school_year_2026` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'sd', 'Not Completed', 53),
(322, 'fg', 'Not Completed', 6);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_first_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_fisheries_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_first_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_fisheries_first_sem_student_record_school_year_2027` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(320, 'mm', 'Completed', 809);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_first_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_fisheries_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_first_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_fisheries_first_sem_student_record_school_year_2028` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'k', 'Completed', 90),
(321, 'm', 'Not Completed', 8);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_first_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_fisheries_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_first_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_fisheries_first_sem_student_record_school_year_2029` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'jb', 'Completed', 80);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_first_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_fisheries_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_first_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_fisheries_first_sem_student_record_school_year_2030` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'efefa', 'Not Completed', 102);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_second_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_fisheries_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_second_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_fisheries_second_sem_student_record_school_year_2025` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(319, 'Completed', 'qaz', 20),
(322, 'Completed', 'sf', 21);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_second_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_fisheries_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_second_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_fisheries_second_sem_student_record_school_year_2026` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(322, 'Completed', 'sda', 32);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_second_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_fisheries_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_second_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_fisheries_second_sem_student_record_school_year_2027` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(319, 'Completed', 'wqwe', 70),
(322, 'Completed', 'sd', 24);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_second_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_fisheries_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_second_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_fisheries_second_sem_student_record_school_year_2028` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(319, 'Not Completed', 'sded', 120),
(322, 'Completed', 'dd', 33);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_second_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_fisheries_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_second_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_fisheries_second_sem_student_record_school_year_2029` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(319, 'Completed', 'cfcvt', 560),
(322, 'Not Completed', 'ca', 32);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_fisheries_second_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_fisheries_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_fisheries_second_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_fisheries_second_sem_student_record_school_year_2030` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'd', 23);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_first_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_it_first_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_first_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_it_first_sem_student_record_school_year_2025` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'fj', 'Completed', 70),
(322, 'ab', 'Completed', 12);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_first_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_it_first_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_first_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_it_first_sem_student_record_school_year_2026` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'd', 'Not Completed', 40),
(322, 'ab', 'Not Completed', 12);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_first_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_it_first_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_first_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_it_first_sem_student_record_school_year_2027` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'h', 'Completed', 20),
(322, 'wa', 'Completed', 14);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_first_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_it_first_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_first_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_it_first_sem_student_record_school_year_2028` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'fs', 'Not Completed', 90),
(321, 'gj', 'Not Completed', 54),
(323, 'dq', 'Completed', 123);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_first_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_it_first_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_first_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_it_first_sem_student_record_school_year_2029` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 's', 'Not Completed', 20),
(322, 'ra', 'Completed', 11);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_first_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_it_first_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_name` varchar(255) NOT NULL,
  `third_year_student_grade_first_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_first_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_it_first_sem_student_record_school_year_2030` (`id`, `third_year_student_name`, `third_year_student_grade_first_sem_status`, `third_year_student_id`) VALUES
(319, 'aa', 'Completed', 101),
(322, 'f', 'Not Completed', 12);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_second_sem_student_record_school_year_2025`
--

CREATE TABLE `third_year_it_second_sem_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_second_sem_student_record_school_year_2025`
--

INSERT INTO `third_year_it_second_sem_student_record_school_year_2025` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(323, 'Completed', 'vq', 13);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_second_sem_student_record_school_year_2026`
--

CREATE TABLE `third_year_it_second_sem_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_second_sem_student_record_school_year_2026`
--

INSERT INTO `third_year_it_second_sem_student_record_school_year_2026` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(322, 'Completed', 'dfa', 121);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_second_sem_student_record_school_year_2027`
--

CREATE TABLE `third_year_it_second_sem_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_second_sem_student_record_school_year_2027`
--

INSERT INTO `third_year_it_second_sem_student_record_school_year_2027` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(320, 'Completed', '1', 10),
(321, 'Not Completed', 's', 1);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_second_sem_student_record_school_year_2028`
--

CREATE TABLE `third_year_it_second_sem_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_second_sem_student_record_school_year_2028`
--

INSERT INTO `third_year_it_second_sem_student_record_school_year_2028` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(319, 'Completed', 's', 10),
(321, 'Not Completed', 'dd', 12);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_second_sem_student_record_school_year_2029`
--

CREATE TABLE `third_year_it_second_sem_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_second_sem_student_record_school_year_2029`
--

INSERT INTO `third_year_it_second_sem_student_record_school_year_2029` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(320, 'Not Completed', 'b', 30),
(321, 'Not Completed', 'q', 1);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_second_sem_student_record_school_year_2030`
--

CREATE TABLE `third_year_it_second_sem_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_second_sem_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_second_sem` varchar(255) NOT NULL,
  `third_year_student_id_second_sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_second_sem_student_record_school_year_2030`
--

INSERT INTO `third_year_it_second_sem_student_record_school_year_2030` (`id`, `third_year_student_grade_second_sem_status`, `third_year_student_name_second_sem`, `third_year_student_id_second_sem`) VALUES
(321, 'Not Completed', 'wc', 214);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_summer_class_student_record_school_year_2025`
--

CREATE TABLE `third_year_it_summer_class_student_record_school_year_2025` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_summer_class_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_summer_class` varchar(255) NOT NULL,
  `third_year_student_id_summer_class` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_summer_class_student_record_school_year_2025`
--

INSERT INTO `third_year_it_summer_class_student_record_school_year_2025` (`id`, `third_year_student_grade_summer_class_status`, `third_year_student_name_summer_class`, `third_year_student_id_summer_class`) VALUES
(322, 'Completed', 'da', 13);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_summer_class_student_record_school_year_2026`
--

CREATE TABLE `third_year_it_summer_class_student_record_school_year_2026` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_summer_class_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_summer_class` varchar(255) NOT NULL,
  `third_year_student_id_summer_class` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_summer_class_student_record_school_year_2026`
--

INSERT INTO `third_year_it_summer_class_student_record_school_year_2026` (`id`, `third_year_student_grade_summer_class_status`, `third_year_student_name_summer_class`, `third_year_student_id_summer_class`) VALUES
(322, 'Completed', 'qd', 12);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_summer_class_student_record_school_year_2027`
--

CREATE TABLE `third_year_it_summer_class_student_record_school_year_2027` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_summer_class_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_summer_class` varchar(255) NOT NULL,
  `third_year_student_id_summer_class` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_summer_class_student_record_school_year_2027`
--

INSERT INTO `third_year_it_summer_class_student_record_school_year_2027` (`id`, `third_year_student_grade_summer_class_status`, `third_year_student_name_summer_class`, `third_year_student_id_summer_class`) VALUES
(322, 'Completed', 'ca', 15);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_summer_class_student_record_school_year_2028`
--

CREATE TABLE `third_year_it_summer_class_student_record_school_year_2028` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_summer_class_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_summer_class` varchar(255) NOT NULL,
  `third_year_student_id_summer_class` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_summer_class_student_record_school_year_2028`
--

INSERT INTO `third_year_it_summer_class_student_record_school_year_2028` (`id`, `third_year_student_grade_summer_class_status`, `third_year_student_name_summer_class`, `third_year_student_id_summer_class`) VALUES
(322, 'Completed', 'xa', 21);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_summer_class_student_record_school_year_2029`
--

CREATE TABLE `third_year_it_summer_class_student_record_school_year_2029` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_summer_class_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_summer_class` varchar(255) NOT NULL,
  `third_year_student_id_summer_class` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_summer_class_student_record_school_year_2029`
--

INSERT INTO `third_year_it_summer_class_student_record_school_year_2029` (`id`, `third_year_student_grade_summer_class_status`, `third_year_student_name_summer_class`, `third_year_student_id_summer_class`) VALUES
(323, 'Not Completed', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `third_year_it_summer_class_student_record_school_year_2030`
--

CREATE TABLE `third_year_it_summer_class_student_record_school_year_2030` (
  `id` int(11) NOT NULL,
  `third_year_student_grade_summer_class_status` enum('Not Completed','Completed') NOT NULL,
  `third_year_student_name_summer_class` varchar(255) NOT NULL,
  `third_year_student_id_summer_class` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `third_year_it_summer_class_student_record_school_year_2030`
--

INSERT INTO `third_year_it_summer_class_student_record_school_year_2030` (`id`, `third_year_student_grade_summer_class_status`, `third_year_student_name_summer_class`, `third_year_student_id_summer_class`) VALUES
(321, 'Not Completed', 'fa', 31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `education_student_activity_attendance_school_year_2024`
--
ALTER TABLE `education_student_activity_attendance_school_year_2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_activity_attendance_school_year_2025`
--
ALTER TABLE `education_student_activity_attendance_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_activity_attendance_school_year_2026`
--
ALTER TABLE `education_student_activity_attendance_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_activity_attendance_school_year_2027`
--
ALTER TABLE `education_student_activity_attendance_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_activity_attendance_school_year_2028`
--
ALTER TABLE `education_student_activity_attendance_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_activity_attendance_school_year_2029`
--
ALTER TABLE `education_student_activity_attendance_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_library_borrow_year_2025`
--
ALTER TABLE `education_student_library_borrow_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_library_borrow_year_2026`
--
ALTER TABLE `education_student_library_borrow_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_library_borrow_year_2027`
--
ALTER TABLE `education_student_library_borrow_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_library_borrow_year_2028`
--
ALTER TABLE `education_student_library_borrow_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_library_borrow_year_2029`
--
ALTER TABLE `education_student_library_borrow_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_library_borrow_year_2030`
--
ALTER TABLE `education_student_library_borrow_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_record_school_year_2025`
--
ALTER TABLE `education_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_record_school_year_2026`
--
ALTER TABLE `education_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_record_school_year_2027`
--
ALTER TABLE `education_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_record_school_year_2028`
--
ALTER TABLE `education_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_record_school_year_2029`
--
ALTER TABLE `education_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_student_record_school_year_2030`
--
ALTER TABLE `education_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_library_borrow_year_2025`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_library_borrow_year_2026`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_library_borrow_year_2027`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_library_borrow_year_2028`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_library_borrow_year_2029`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_library_borrow_year_2030`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_record_school_year_2025`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_record_school_year_2026`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_record_school_year_2027`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_record_school_year_2028`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_record_school_year_2029`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurship_student_record_school_year_2030`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrep_student_activity_attendance_school_year_2025`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrep_student_activity_attendance_school_year_2026`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrep_student_activity_attendance_school_year_2027`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrep_student_activity_attendance_school_year_2028`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrep_student_activity_attendance_school_year_2029`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrep_student_activity_attendance_school_year_2030`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_s_student_record_school_year_2025`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_s_student_record_school_year_2026`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_s_student_record_school_year_2027`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_s_student_record_school_year_2028`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_s_student_record_school_year_2029`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_first_sem_s_student_record_school_year_2030`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_sschool_year_2025`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_sschool_year_2026`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_sschool_year_2027`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_sschool_year_2028`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_sschool_year_2029`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_education_second_sem_student_record_sschool_year_2030`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_entrep_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_fisheries_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_year_it_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_activity_attendance_school_year_2024`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_activity_attendance_school_year_2025`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_activity_attendance_school_year_2026`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_activity_attendance_school_year_2027`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_activity_attendance_school_year_2028`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_activity_attendance_school_year_2029`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_library_borrow_year_2025`
--
ALTER TABLE `fisheries_student_library_borrow_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_library_borrow_year_2026`
--
ALTER TABLE `fisheries_student_library_borrow_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_library_borrow_year_2027`
--
ALTER TABLE `fisheries_student_library_borrow_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_library_borrow_year_2028`
--
ALTER TABLE `fisheries_student_library_borrow_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_library_borrow_year_2029`
--
ALTER TABLE `fisheries_student_library_borrow_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_library_borrow_year_2030`
--
ALTER TABLE `fisheries_student_library_borrow_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_record_school_year_2025`
--
ALTER TABLE `fisheries_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_record_school_year_2026`
--
ALTER TABLE `fisheries_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_record_school_year_2027`
--
ALTER TABLE `fisheries_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_record_school_year_2028`
--
ALTER TABLE `fisheries_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_record_school_year_2029`
--
ALTER TABLE `fisheries_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fisheries_student_record_school_year_2030`
--
ALTER TABLE `fisheries_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_2025`
--
ALTER TABLE `fish_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_2026`
--
ALTER TABLE `fish_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_2027`
--
ALTER TABLE `fish_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_2028`
--
ALTER TABLE `fish_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_2029`
--
ALTER TABLE `fish_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fish_2030`
--
ALTER TABLE `fish_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_math_2025`
--
ALTER TABLE `guild_math_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_math_2026`
--
ALTER TABLE `guild_math_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_math_2027`
--
ALTER TABLE `guild_math_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_math_2028`
--
ALTER TABLE `guild_math_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_math_2029`
--
ALTER TABLE `guild_math_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_math_2030`
--
ALTER TABLE `guild_math_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_activity_attendance_school_year_2024`
--
ALTER TABLE `it_student_activity_attendance_school_year_2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_activity_attendance_school_year_2025`
--
ALTER TABLE `it_student_activity_attendance_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_activity_attendance_school_year_2026`
--
ALTER TABLE `it_student_activity_attendance_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_activity_attendance_school_year_2027`
--
ALTER TABLE `it_student_activity_attendance_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_activity_attendance_school_year_2028`
--
ALTER TABLE `it_student_activity_attendance_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_activity_attendance_school_year_2029`
--
ALTER TABLE `it_student_activity_attendance_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_library_borrow_year_2024`
--
ALTER TABLE `it_student_library_borrow_year_2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_library_borrow_year_2025`
--
ALTER TABLE `it_student_library_borrow_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_library_borrow_year_2026`
--
ALTER TABLE `it_student_library_borrow_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_library_borrow_year_2027`
--
ALTER TABLE `it_student_library_borrow_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_library_borrow_year_2028`
--
ALTER TABLE `it_student_library_borrow_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_library_borrow_year_2029`
--
ALTER TABLE `it_student_library_borrow_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_record_school_year_2024`
--
ALTER TABLE `it_student_record_school_year_2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_record_school_year_2025`
--
ALTER TABLE `it_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_record_school_year_2026`
--
ALTER TABLE `it_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_record_school_year_2027`
--
ALTER TABLE `it_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_record_school_year_2028`
--
ALTER TABLE `it_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_student_record_school_year_2029`
--
ALTER TABLE `it_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpel_2025`
--
ALTER TABLE `jpel_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpel_2026`
--
ALTER TABLE `jpel_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpel_2027`
--
ALTER TABLE `jpel_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpel_2028`
--
ALTER TABLE `jpel_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpel_2029`
--
ALTER TABLE `jpel_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpel_2030`
--
ALTER TABLE `jpel_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpg_2024`
--
ALTER TABLE `jpg_2024`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpg_2025`
--
ALTER TABLE `jpg_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpg_2026`
--
ALTER TABLE `jpg_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpg_2027`
--
ALTER TABLE `jpg_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpg_2028`
--
ALTER TABLE `jpg_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jpg_2029`
--
ALTER TABLE `jpg_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scire_2025`
--
ALTER TABLE `scire_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scire_2026`
--
ALTER TABLE `scire_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scire_2027`
--
ALTER TABLE `scire_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scire_2028`
--
ALTER TABLE `scire_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scire_2029`
--
ALTER TABLE `scire_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scire_2030`
--
ALTER TABLE `scire_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_education_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_entrep_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_fisheries_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_year_it_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_education_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_entrep_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_fisheries_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_summer_class_student_record_school_year_2025`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2025`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_summer_class_student_record_school_year_2026`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2026`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_summer_class_student_record_school_year_2027`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2027`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_summer_class_student_record_school_year_2028`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2028`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_summer_class_student_record_school_year_2029`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2029`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_year_it_summer_class_student_record_school_year_2030`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2030`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `education_student_activity_attendance_school_year_2024`
--
ALTER TABLE `education_student_activity_attendance_school_year_2024`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `education_student_activity_attendance_school_year_2025`
--
ALTER TABLE `education_student_activity_attendance_school_year_2025`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `education_student_activity_attendance_school_year_2026`
--
ALTER TABLE `education_student_activity_attendance_school_year_2026`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_activity_attendance_school_year_2027`
--
ALTER TABLE `education_student_activity_attendance_school_year_2027`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_activity_attendance_school_year_2028`
--
ALTER TABLE `education_student_activity_attendance_school_year_2028`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_activity_attendance_school_year_2029`
--
ALTER TABLE `education_student_activity_attendance_school_year_2029`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_library_borrow_year_2025`
--
ALTER TABLE `education_student_library_borrow_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_library_borrow_year_2026`
--
ALTER TABLE `education_student_library_borrow_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_library_borrow_year_2027`
--
ALTER TABLE `education_student_library_borrow_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_library_borrow_year_2028`
--
ALTER TABLE `education_student_library_borrow_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_library_borrow_year_2029`
--
ALTER TABLE `education_student_library_borrow_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education_student_library_borrow_year_2030`
--
ALTER TABLE `education_student_library_borrow_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `education_student_record_school_year_2025`
--
ALTER TABLE `education_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `education_student_record_school_year_2026`
--
ALTER TABLE `education_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `education_student_record_school_year_2027`
--
ALTER TABLE `education_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `education_student_record_school_year_2028`
--
ALTER TABLE `education_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `education_student_record_school_year_2029`
--
ALTER TABLE `education_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `education_student_record_school_year_2030`
--
ALTER TABLE `education_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_library_borrow_year_2025`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_library_borrow_year_2026`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_library_borrow_year_2027`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_library_borrow_year_2028`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_library_borrow_year_2029`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_library_borrow_year_2030`
--
ALTER TABLE `entrepreneurship_student_library_borrow_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_record_school_year_2025`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_record_school_year_2026`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_record_school_year_2027`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_record_school_year_2028`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_record_school_year_2029`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `entrepreneurship_student_record_school_year_2030`
--
ALTER TABLE `entrepreneurship_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `entrep_student_activity_attendance_school_year_2025`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2025`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `entrep_student_activity_attendance_school_year_2026`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2026`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `entrep_student_activity_attendance_school_year_2027`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2027`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `entrep_student_activity_attendance_school_year_2028`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2028`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `entrep_student_activity_attendance_school_year_2029`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2029`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `entrep_student_activity_attendance_school_year_2030`
--
ALTER TABLE `entrep_student_activity_attendance_school_year_2030`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_education_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_s_student_record_school_year_2025`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_s_student_record_school_year_2026`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_s_student_record_school_year_2027`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_s_student_record_school_year_2028`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_s_student_record_school_year_2029`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_first_sem_s_student_record_school_year_2030`
--
ALTER TABLE `first_year_education_first_sem_s_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_education_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_sschool_year_2025`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_sschool_year_2026`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_sschool_year_2027`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_sschool_year_2028`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_sschool_year_2029`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_education_second_sem_student_record_sschool_year_2030`
--
ALTER TABLE `first_year_education_second_sem_student_record_sschool_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `first_year_entrep_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_entrep_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_entrep_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_entrep_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_entrep_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_entrep_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_entrep_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_entrep_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_entrep_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_entrep_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_entrep_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_entrep_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_entrep_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_entrep_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_fisheries_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_fisheries_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_fisheries_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_fisheries_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_fisheries_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_fisheries_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_fisheries_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_fisheries_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `first_year_it_first_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_it_first_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_it_first_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_it_first_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_it_first_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_it_first_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_it_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_it_second_sem_student_record_school_year_2025`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_it_second_sem_student_record_school_year_2026`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `first_year_it_second_sem_student_record_school_year_2027`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `first_year_it_second_sem_student_record_school_year_2028`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `first_year_it_second_sem_student_record_school_year_2029`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `first_year_it_second_sem_student_record_school_year_2030`
--
ALTER TABLE `first_year_it_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `fisheries_student_activity_attendance_school_year_2024`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2024`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fisheries_student_activity_attendance_school_year_2025`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2025`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fisheries_student_activity_attendance_school_year_2026`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2026`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fisheries_student_activity_attendance_school_year_2027`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2027`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fisheries_student_activity_attendance_school_year_2029`
--
ALTER TABLE `fisheries_student_activity_attendance_school_year_2029`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fisheries_student_library_borrow_year_2025`
--
ALTER TABLE `fisheries_student_library_borrow_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fisheries_student_library_borrow_year_2026`
--
ALTER TABLE `fisheries_student_library_borrow_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fisheries_student_library_borrow_year_2027`
--
ALTER TABLE `fisheries_student_library_borrow_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fisheries_student_library_borrow_year_2028`
--
ALTER TABLE `fisheries_student_library_borrow_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fisheries_student_library_borrow_year_2029`
--
ALTER TABLE `fisheries_student_library_borrow_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fisheries_student_library_borrow_year_2030`
--
ALTER TABLE `fisheries_student_library_borrow_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fisheries_student_record_school_year_2025`
--
ALTER TABLE `fisheries_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `fisheries_student_record_school_year_2026`
--
ALTER TABLE `fisheries_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `fisheries_student_record_school_year_2027`
--
ALTER TABLE `fisheries_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `fisheries_student_record_school_year_2028`
--
ALTER TABLE `fisheries_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `fisheries_student_record_school_year_2029`
--
ALTER TABLE `fisheries_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `fisheries_student_record_school_year_2030`
--
ALTER TABLE `fisheries_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `fish_2025`
--
ALTER TABLE `fish_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fish_2026`
--
ALTER TABLE `fish_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fish_2027`
--
ALTER TABLE `fish_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fish_2028`
--
ALTER TABLE `fish_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fish_2029`
--
ALTER TABLE `fish_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fish_2030`
--
ALTER TABLE `fish_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guild_math_2025`
--
ALTER TABLE `guild_math_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guild_math_2026`
--
ALTER TABLE `guild_math_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guild_math_2027`
--
ALTER TABLE `guild_math_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guild_math_2028`
--
ALTER TABLE `guild_math_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guild_math_2029`
--
ALTER TABLE `guild_math_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guild_math_2030`
--
ALTER TABLE `guild_math_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `it_student_activity_attendance_school_year_2024`
--
ALTER TABLE `it_student_activity_attendance_school_year_2024`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `it_student_activity_attendance_school_year_2025`
--
ALTER TABLE `it_student_activity_attendance_school_year_2025`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `it_student_activity_attendance_school_year_2026`
--
ALTER TABLE `it_student_activity_attendance_school_year_2026`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `it_student_activity_attendance_school_year_2027`
--
ALTER TABLE `it_student_activity_attendance_school_year_2027`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `it_student_activity_attendance_school_year_2028`
--
ALTER TABLE `it_student_activity_attendance_school_year_2028`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `it_student_activity_attendance_school_year_2029`
--
ALTER TABLE `it_student_activity_attendance_school_year_2029`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `it_student_library_borrow_year_2024`
--
ALTER TABLE `it_student_library_borrow_year_2024`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `it_student_library_borrow_year_2025`
--
ALTER TABLE `it_student_library_borrow_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `it_student_library_borrow_year_2026`
--
ALTER TABLE `it_student_library_borrow_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `it_student_library_borrow_year_2027`
--
ALTER TABLE `it_student_library_borrow_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `it_student_library_borrow_year_2028`
--
ALTER TABLE `it_student_library_borrow_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `it_student_library_borrow_year_2029`
--
ALTER TABLE `it_student_library_borrow_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `it_student_record_school_year_2024`
--
ALTER TABLE `it_student_record_school_year_2024`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `it_student_record_school_year_2025`
--
ALTER TABLE `it_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `it_student_record_school_year_2026`
--
ALTER TABLE `it_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `it_student_record_school_year_2027`
--
ALTER TABLE `it_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `it_student_record_school_year_2028`
--
ALTER TABLE `it_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `it_student_record_school_year_2029`
--
ALTER TABLE `it_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `jpel_2025`
--
ALTER TABLE `jpel_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jpel_2026`
--
ALTER TABLE `jpel_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jpel_2027`
--
ALTER TABLE `jpel_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jpel_2028`
--
ALTER TABLE `jpel_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jpel_2029`
--
ALTER TABLE `jpel_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jpel_2030`
--
ALTER TABLE `jpel_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jpg_2024`
--
ALTER TABLE `jpg_2024`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jpg_2025`
--
ALTER TABLE `jpg_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jpg_2026`
--
ALTER TABLE `jpg_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jpg_2027`
--
ALTER TABLE `jpg_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jpg_2028`
--
ALTER TABLE `jpg_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jpg_2029`
--
ALTER TABLE `jpg_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scire_2025`
--
ALTER TABLE `scire_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scire_2026`
--
ALTER TABLE `scire_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scire_2027`
--
ALTER TABLE `scire_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scire_2028`
--
ALTER TABLE `scire_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scire_2029`
--
ALTER TABLE `scire_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scire_2030`
--
ALTER TABLE `scire_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `second_year_education_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `second_year_education_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_education_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_education_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_education_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_education_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_education_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_education_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `second_year_education_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_education_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `second_year_education_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_education_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_education_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_education_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `second_year_entrep_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_entrep_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_entrep_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_entrep_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_entrep_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_entrep_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_entrep_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_entrep_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `second_year_fisheries_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_fisheries_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_fisheries_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_fisheries_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_it_first_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_it_first_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_it_first_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_it_first_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_it_first_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_it_first_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_it_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `second_year_it_second_sem_student_record_school_year_2025`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `second_year_it_second_sem_student_record_school_year_2026`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_it_second_sem_student_record_school_year_2027`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_it_second_sem_student_record_school_year_2028`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `second_year_it_second_sem_student_record_school_year_2029`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `second_year_it_second_sem_student_record_school_year_2030`
--
ALTER TABLE `second_year_it_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `third_year_education_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `third_year_education_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_education_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_education_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_education_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `third_year_education_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_education_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_education_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `third_year_entrep_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_entrep_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_entrep_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_entrep_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_entrep_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_fisheries_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_fisheries_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `third_year_fisheries_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_fisheries_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `third_year_fisheries_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_fisheries_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_fisheries_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_it_first_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_first_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_first_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_first_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `third_year_it_first_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_first_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_it_first_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_second_sem_student_record_school_year_2025`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `third_year_it_second_sem_student_record_school_year_2026`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_second_sem_student_record_school_year_2027`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_it_second_sem_student_record_school_year_2028`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_it_second_sem_student_record_school_year_2029`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_it_second_sem_student_record_school_year_2030`
--
ALTER TABLE `third_year_it_second_sem_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `third_year_it_summer_class_student_record_school_year_2025`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2025`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_summer_class_student_record_school_year_2026`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2026`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_summer_class_student_record_school_year_2027`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2027`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_summer_class_student_record_school_year_2028`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2028`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `third_year_it_summer_class_student_record_school_year_2029`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2029`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `third_year_it_summer_class_student_record_school_year_2030`
--
ALTER TABLE `third_year_it_summer_class_student_record_school_year_2030`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
