-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 05:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socmed_cantorne`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `aid` int(123) NOT NULL,
  `email` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`aid`, `email`, `firstname`, `lastname`, `password`) VALUES
(1, 'joshuacantorne14@gmail.com', 'Joshua', 'Cantorne', '123'),
(3, 'tonton@cabahug', 'John Anthony', 'Cabahug', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `post_text` text NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `aid`, `post_text`, `post_date`, `post_time`) VALUES
(1, 1, 'jeraldyn', '2026-03-06', '19:27:43'),
(2, 1, 'hi Jeraldyn', '2026-03-06', '19:29:16'),
(4, 1, 'hahaha', '2026-03-06', '22:42:22'),
(6, 3, 'hahaha\r\n', '2026-03-07', '20:22:26'),
(7, 3, 'hahaha\r\n', '2026-03-07', '20:22:44'),
(9, 1, 'Pilosopo Tasyo\r\n', '2026-03-26', '23:10:50'),
(10, 1, '\"ikaw ba ang doctor na mag papagaling sa bayang ito mula sa sakit o ikaw ba ay katulad lng din sa ibang mayayaman na mag bulag bulgan sa katutuhanan\"', '2026-03-26', '23:12:47'),
(11, 1, 'Elias', '2026-03-27', '13:22:30'),
(12, 1, 'Maria Clara Delos Santos', '2026-03-27', '13:22:48'),
(13, 1, 'Crisostomo Ibarra', '2026-03-27', '13:23:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `aid` (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `aid` int(123) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
