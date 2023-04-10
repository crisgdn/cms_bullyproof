-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2023 at 12:47 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `link` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `live` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `card`, `date`, `name`, `text`, `link`, `live`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Card 1', 'March 27, 2023', 'Bully-Proof Hockey Camp', 'Join our charity hockey event\r\nby playing, celebrating, saying words of encouragement and being kind.', 'Register', 'form.html', '1681078475events_camp.png', '2023-03-28 17:10:10', '2023-04-09 22:14:35'),
(14, 'Card 2', 'March to December 2023', 'Bully-Proof Hockey Fans', 'Let’s cheer for officials and players! Be a fan and celebrate the wins and the fails\r\nof both teams.', 'Register', 'form.html', '1681078655events_fans.png', '2023-04-09 21:46:19', '2023-04-09 22:17:35'),
(3, 'Card 3', 'JANUARY TO DECEMBER, 2023', 'Bully Proof Tims Contest', 'Take a picture with a official or members of the other team and post on Instagram or twitter using the hashtag #bullyproofhockey.', 'Participate', 'form.html', '1681078838events_tims_contest.png', '2023-03-28 17:14:09', '2023-04-09 22:20:38'),
(13, 'card 13', 'test', 'test', 'teste', 'test', 'test', '1681082961testimonial_coach.png', '2023-04-09 21:37:43', '2023-04-09 23:29:21');

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
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `email`, `event`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'Mike Teeve', 'mike@example.com', 'Hockey Camp', 'Where can I find more information about the camp?', '2023-03-28 17:03:57', '2023-03-28 17:03:57'),
(2, 'Julia Smith', 'julia@example.com', 'Hockey Camp\r\nHockey Fans', 'Hockey Coach', '2023-03-28 17:08:09', '2023-03-28 17:08:09'),
(3, 'Name update10', 'email10@update.com', 'update10', 'update', '2023-04-04 20:54:16', '2023-04-05 14:30:35'),
(9, 'Cris Test', 'cristest@email.com', 'Hockey Camp', 'Hi! Test', '2023-04-09 23:30:12', '2023-04-09 23:30:12'),
(8, 'Cristine', 'cris@email.com', 'Hockey FAN', 'Hockey Fan', '2023-04-09 23:17:37', '2023-04-09 23:17:37');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `card`, `image`, `name`, `occupation`, `text`, `created_at`, `updated_at`) VALUES
(1, 'testimonial1', '1680905356t1.png', 'John Carter', 'hockey Official', '“Children imitate coaches by complaining and paying more attention to the referee than the game.”', '2023-03-28 16:54:28', '2023-04-07 22:09:16'),
(2, 'testimonial2', '1681079161testimonial_player.png', 'Sophie Moore', 'Hockey College Player', '“When I was a kid I could hear parents complaining that girls should do ice skating and not hockey.”', '2023-03-28 16:54:28', '2023-04-09 22:26:01'),
(3, 'testimonial3', '1681079315testimonial_coach.png', 'Matt Cannon', 'Hockey Coach', '“I think that a lot parents think that physical play - being tough - helps you get to the NHL level.”', '2023-03-28 17:01:31', '2023-04-09 22:28:35'),
(10, 'testimonial4', '1680976891t1.png', 'Matt Cannon', 'Hockey Coach', '“I think that a lot parents think that physical play - being tough - helps you get to the NHL level.”', '2023-04-08 18:01:31', '2023-04-08 18:01:31');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
