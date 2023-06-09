-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2023 at 07:09 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bullyproof`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@example.com', 'Hello BullyProof,\r\nI hope this email finds you well. I am writing to express my interest in volunteering for the BullyProof Foundation. I am impressed by the work the foundation does to prevent bullying and empower children, and I would like to contribute to this important cause.\r\n\r\nI would appreciate it if you could provide me with information on the volunteer opportunities available with the BullyProof Foundation. I am particularly interested in working with children and helping them to develop the skills and confidence needed to overcome bullying.\r\n\r\nAs a [Your Profession/Experience], I believe that I have the necessary skills and expertise to make a positive impact as a volunteer. I am also highly motivated to give back to the community and support a cause that I am passionate about.\r\n\r\nIf there are any requirements or qualifications necessary to become a volunteer, please let me know. I am available to provide any additional information or documentation that may be required.\r\n\r\nThank you for considering my request. I look forward to hearing from you soon.\r\n\r\nBest regards,\r\n\r\n[Your Name]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Maria', 'maria@example.com', 'Hello BullyProof,\r\nI hope this email finds you well. I am writing to express my interest in volunteering for the BullyProof Foundation. I am impressed by the work the foundation does to prevent bullying and empower children, and I would like to contribute to this important cause.\r\n\r\nI would appreciate it if you could provide me with information on the volunteer opportunities available with the BullyProof Foundation. I am particularly interested in working with children and helping them to develop the skills and confidence needed to overcome bullying.\r\n\r\nAs a [Your Profession/Experience], I believe that I have the necessary skills and expertise to make a positive impact as a volunteer. I am also highly motivated to give back to the community and support a cause that I am passionate about.\r\n\r\nIf there are any requirements or qualifications necessary to become a volunteer, please let me know. I am available to provide any additional information or documentation that may be required.\r\n\r\nThank you for considering my request. I look forward to hearing from you soon.\r\n\r\nBest regards,\r\n\r\n[Your Name]', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `card` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link_name` varchar(1000) NOT NULL,
  `live_link` varchar(1000) NOT NULL,
  `images` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `card`, `date`, `name`, `text`, `link_name`, `live_link`, `images`, `created_at`, `updated_at`) VALUES
(1, 'event 1', 'MARCH 27, 2023\r\n\r\n', 'Bully Proof Hockey Camp', 'Join our charity hockey event by playing, celebrating, saying words of encouragement and being kind.', 'Register', 'form.html', 'register1.jpg', '2023-03-28 17:10:10', '2023-03-28 17:10:10'),
(2, 'event 2', 'MARCH TO DECEMBER,2023', 'Bully Proof Hockey Fans', 'Let’s cheer for officials and players! Be a fan and celebrate the wins and the fails of both teams.', 'Register', 'form.html', 'register2.jpg', '2023-03-28 17:10:10', '2023-03-28 17:10:10'),
(3, 'event 3', 'JANUARY TO DECEMBER, 2023', 'Bully Proof Tims Contest', 'Take a picture with a official or members of the other team and post on Instagram or twitter using the hashtag #bullyproofhockey.', 'Participate', 'https://www.timhortons.ca/tims-nhl-hockey-challenge', 'register3.jpg', '2023-03-28 17:14:09', '2023-03-28 17:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

DROP TABLE IF EXISTS `registers`;
CREATE TABLE IF NOT EXISTS `registers` (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `event` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comments` text NOT NULL,
  `'created_at'` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `email`, `event`, `comments`, `'created_at'`, `updated_at`) VALUES
(1, 'Mike Teeve', 'mike@example.com', 'Hockey Camp', 'Where can I find more information about the camp?', '2023-03-28 17:03:57', '2023-03-28 17:03:57'),
(2, 'Julia Smith', 'julia@example.com', 'Hockey Camp\r\nHockey Fans', 'Hockey Coach', '2023-03-28 17:08:09', '2023-03-28 17:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `card` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `occupation` varchar(1000) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `card`, `image`, `name`, `occupation`, `text`, `created_at`, `updated_at`) VALUES
(1, 'testimonial1\r\n', 'testimonial_official.jpg', 'John Carter', 'hockey Official', '“Children imitate coaches by complaining and paying more attention to the referee than the game.”', '2023-03-28 16:54:28', '2023-03-28 16:54:28'),
(2, 'testimonial2', 'testemonial_player.jpg', 'Sophie Moore', 'Hockey College Player', '“I think that a lot parents think that physical play - being tough - helps you get to the NHL level.”', '2023-03-28 16:54:28', '2023-03-28 16:54:28'),
(3, 'testimonial3', 'testimonial_coach.jpg', 'Matt Cannon', 'Hockey Coach', '“When I was a kid I could hear parents complaining that girls should do ice skating and not hockey..”', '2023-03-28 17:01:31', '2023-03-28 17:01:31');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
