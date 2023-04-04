-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2023 at 01:23 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `link_name` varchar(255) NOT NULL,
  `live_link` varchar(255) NOT NULL,
  `button_class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `Description`, `images`, `link_name`, `live_link`, `button_class`) VALUES
(1, 'Bully Proof Hockey Camp', 'MARCH 27, 2023', 'Join our charity hockey event by playing, celebrating, saying words of encouragement and being kind.', 'register1.jpg', 'Register', 'https://brandbuild.hiralshahh.com/', ''),
(2, 'Bully Proof Hockey Fans', 'MARCH TO DECEMBER,2023', 'Let’s cheer for officials and players! Be a fan and celebrate the wins and the fails of both teams.', 't2.png', 'Register', 'https://music-mixer.hiralshahh.com/', ''),
(3, 'Bully Proof Tims Contest', 'JANUARY TO DECEMBER, 2023', 'Take a picture with a official or members of the other team and post on Instagram or twitter using the hashtag #bullyproofhockey', 't3.png', 'Participate', 'https://music-mixer.hiralshahh.com/', 'btn_learnmore1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
