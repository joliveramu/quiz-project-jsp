-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 05:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `question_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`question_id`, `question`, `answer`) VALUES
(1, '1+1', '2'),
(2, '2+2', '4'),
(3, '3+3', '6'),
(4, '4+4', '8'),
(5, '5+5', '10'),
(6, '6+6', '12'),
(7, '7+7', '14'),
(8, '8+8', '16'),
(9, '9+9', '18'),
(10, 'How many months do we have in a year?', '12 months'),
(11, 'We use our eyes to — see, hear, feel, eat?', 'See'),
(12, 'What is a baby frog called?', 'Tadpole'),
(13, 'How many consonants are there in the English alphabet?', '21'),
(14, 'What grows quicker—hair or toenails?', 'Hair'),
(15, 'Which is the tallest mountain in the world?', 'Mount Everest'),
(16, 'Which Saint’s Day is celebrated on 14th February?', 'Saint Valentine'),
(17, 'Which planet is known as the Red Planet?', 'Mars'),
(18, 'Which is the largest plateau in the world?', 'Tibetan Plateau'),
(19, 'What is the next number in the following sequence– 7, 14, 21, 28?', '35'),
(20, 'Which country does volleyball originate from?', 'USA'),
(21, 'What is the square root of 144?', '12'),
(22, 'What is three-fifths of 50?', '30'),
(23, 'What type of whale is the biggest animal in the world?', 'Blue Whale');

-- --------------------------------------------------------

--
-- Table structure for table `registrants`
--

CREATE TABLE `registrants` (
  `registrant_id` int(11) NOT NULL,
  `registrant_name` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `date_taken` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrants`
--

INSERT INTO `registrants` (`registrant_id`, `registrant_name`, `score`, `date_taken`) VALUES
(1, 'John', 0, '2020-05-30 00:00:00'),
(2, 'johnnu', 5, '2020-05-30 00:00:00'),
(3, 'qweqwe', 3, '2020-05-30 00:00:00'),
(4, 'query', 4, '2020-05-30 22:55:49'),
(5, 'jari', 5, '2020-05-30 23:11:47'),
(6, 'jedo', 4, '2020-05-30 23:15:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `registrants`
--
ALTER TABLE `registrants`
  ADD PRIMARY KEY (`registrant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `registrants`
--
ALTER TABLE `registrants`
  MODIFY `registrant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
