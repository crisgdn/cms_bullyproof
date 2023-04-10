-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2023 at 02:31 AM
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
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `name`, `email`, `message`) VALUES
(1, 'John', 'john@example.com', 'Dear [Recipient\'s Name],\r\n\r\nI hope this email finds you well. I am writing to express my interest in volunteering for the BullyProof Foundation. I am impressed by the work the foundation does to prevent bullying and empower children, and I would like to contribute to this important cause.\r\n\r\nI would appreciate it if you could provide me with information on the volunteer opportunities available with the BullyProof Foundation. I am particularly interested in working with children and helping them to develop the skills and confidence needed to overcome bullying.\r\n\r\nAs a [Your Profession/Experience], I believe that I have the necessary skills and expertise to make a positive impact as a volunteer. I am also highly motivated to give back to the community and support a cause that I am passionate about.\r\n\r\nIf there are any requirements or qualifications necessary to become a volunteer, please let me know. I am available to provide any additional information or documentation that may be required.\r\n\r\nThank you for considering my request. I look forward to hearing from you soon.\r\n\r\nBest regards,\r\n\r\n[Your Name]'),
(2, 'Maria', 'maria@example.com', 'Dear [Recipient\'s Name],\r\n\r\nI hope this email finds you well. I am writing to express my interest in volunteering for the BullyProof Foundation. I am impressed by the work the foundation does to prevent bullying and empower children, and I would like to contribute to this important cause.\r\n\r\nI would appreciate it if you could provide me with information on the volunteer opportunities available with the BullyProof Foundation. I am particularly interested in working with children and helping them to develop the skills and confidence needed to overcome bullying.\r\n\r\nAs a [Your Profession/Experience], I believe that I have the necessary skills and expertise to make a positive impact as a volunteer. I am also highly motivated to give back to the community and support a cause that I am passionate about.\r\n\r\nIf there are any requirements or qualifications necessary to become a volunteer, please let me know. I am available to provide any additional information or documentation that may be required.\r\n\r\nThank you for considering my request. I look forward to hearing from you soon.\r\n\r\nBest regards,\r\n\r\n[Your Name]');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `card` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `card`, `name`, `date`, `text`, `image`) VALUES
(1, 'event 1', 'Bully Proof Hockey Camp', 'MARCH 27, 2023', 'Join our charity hockey event by playing, celebrating, saying words of encouragement and being kind.', 'register1.jpg'),
(2, 'event 2', 'Bully Proof Hockey Fans', 'MARCH TO DECEMBER,2023', 'Let’s cheer for officials and players! Be a fan and celebrate the wins and the fails of both teams.', 'register2.jpg'),
(3, 'event 3', 'Bully Proof Tims Contest', 'JANUARY TO DECEMBER, 2023', 'Take a picture with a official or members of the other team and post on Instagram or twitter using the hashtag #bullyproofhockey.', 'register3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

DROP TABLE IF EXISTS `registers`;
CREATE TABLE IF NOT EXISTS `registers` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `event` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `email`, `event`, `comments`) VALUES
(1, 'Mike Teeve', 'mike@example.com', 'Hockey Camp', 'Where can I find more information about the camp?'),
(2, 'Julia Smith', 'julia@example.com', 'Hockey Camp\r\nHockey Fans', 'Hockey Coach');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `card` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `occupation` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `card`, `name`, `occupation`, `image`, `text`) VALUES
(1, 'testimonial1', 'John Carter', 'HOCKEY OFFICIAL', 'testimonial_official.jpg', '“Children imitate coaches by complaining and paying more attention to the referee than the game.”'),
(2, 'testimonial2', 'Sophie Moore', 'HOCKEY COLLEGE PLAYER', 'testemonial_player.jpg', '“I think that a lot parents think that physical play - being tough - helps you get to the NHL level.”'),
(3, 'testimonial3', 'Matt Cannon', 'HOCKEY COACH', 'testimonial_coach.jpg', '“When I was a kid I could hear parents complaining that girls should do ice skating and not hockey..”');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
