-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 07:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  `exam_time` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `exam_time`) VALUES
(4, 'math', '3'),
(5, 'english', '5'),
(6, 'Chemistry', '2');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `total_question` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  `wrong_answer` varchar(100) NOT NULL,
  `exam_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `username`, `exam_type`, `total_question`, `correct_answer`, `wrong_answer`, `exam_time`) VALUES
(1, 'H', 'english', '3', '2', '1', '2021-01-08'),
(2, 'H', 'math', '3', '0', '3', '2021-01-08'),
(3, 'sifat', 'math', '3', '1', '2', '2021-01-08'),
(4, 'sifat', 'english', '3', '0', '3', '2021-01-08'),
(5, 'sifat', 'Chemistry', '0', '0', '0', '2021-01-09'),
(6, 'sifat', 'math', '3', '0', '3', '2021-01-09'),
(7, 'durjoy', 'Chemistry', '2', '1', '1', '2021-01-09'),
(8, 'sifat', 'Chemistry', '2', '0', '2', '2021-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question_no` varchar(10) NOT NULL,
  `question` varchar(600) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `category`) VALUES
(3, '1', '5 + 3 = ?', '20', '13', '56', '8', '8', 'phy '),
(7, '2', 'what is small', '3', '2', '4', '5', '2', 'phy '),
(8, '1', '5 + 3 = ?', '8', '9', '10', '11', '8', 'math'),
(9, '2', '1 + 2 =?', '1', '2', '3', '4', '3', 'math'),
(10, '3', '2 +2 =?', '1', '2', '3', '4', '4', 'math'),
(11, '1', 'after A ', 'B', 'C', 'D', 'E', 'B', 'english'),
(12, '2', 'after B', 'C', 'D', 'E', 'F', 'C', 'english'),
(13, '3', 'after G', 'H', 'I', 'J', 'K', 'H', 'english'),
(14, '1', '1', '2', '3', '4', '6', '2', 'Chemistry'),
(15, '2', '2', '3', '4', '5', '6', '3', 'Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`) VALUES
(1, 'sifat', '12345'),
(2, 'durjoy', 'durjoy'),
(3, 'hello', 'hello'),
(4, 'H', 'H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
