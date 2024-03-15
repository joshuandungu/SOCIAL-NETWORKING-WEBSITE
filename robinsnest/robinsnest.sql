-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 10:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robinsnest`
--
CREATE DATABASE IF NOT EXISTS `robinsnest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `robinsnest`;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--
-- Creation: Mar 14, 2024 at 09:07 AM
-- Last update: Mar 14, 2024 at 09:38 AM
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `user` varchar(16) DEFAULT NULL,
  `friend` varchar(16) DEFAULT NULL,
  KEY `user` (`user`(6)),
  KEY `friend` (`friend`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `friends`
--

TRUNCATE TABLE `friends`;
--
-- Dumping data for table `friends`
--

INSERT DELAYED IGNORE INTO `friends` (`user`, `friend`) VALUES
('joshua', 'BELMI MUHUNE');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--
-- Creation: Mar 14, 2024 at 09:07 AM
-- Last update: Mar 14, 2024 at 09:11 AM
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL,
  KEY `user` (`user`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `members`
--

TRUNCATE TABLE `members`;
--
-- Dumping data for table `members`
--

INSERT DELAYED IGNORE INTO `members` (`user`, `pass`) VALUES
('joshua', '1234'),
('BELMI MUHUNE', '2233');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--
-- Creation: Mar 14, 2024 at 09:07 AM
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth` varchar(16) DEFAULT NULL,
  `recip` varchar(16) DEFAULT NULL,
  `pm` char(1) DEFAULT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL,
  `message` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth` (`auth`(6)),
  KEY `recip` (`recip`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `messages`
--

TRUNCATE TABLE `messages`;
-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--
-- Creation: Mar 14, 2024 at 09:07 AM
-- Last update: Mar 14, 2024 at 09:12 AM
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `user` varchar(16) DEFAULT NULL,
  `text` varchar(4096) DEFAULT NULL,
  KEY `user` (`user`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `profiles`
--

TRUNCATE TABLE `profiles`;
--
-- Dumping data for table `profiles`
--

INSERT DELAYED IGNORE INTO `profiles` (`user`, `text`) VALUES
('joshua', 'Flossin Baby'),
('BELMI MUHUNE', 'BELMI MUHUNE');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
