-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 08:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `cat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `date`, `uid`, `cat`) VALUES
(3, 'title', 'desc', 'img', '2023-06-06 00:00:00', 3, NULL),
(4, 'art', '<p>new</p>', '', '2023-06-06 00:38:17', 3, ''),
(5, '5g ', '<p>5g is future</p>', NULL, '2023-06-06 00:58:16', 3, 'technology'),
(6, 'QWXEW', '<p>	qsqQDW</p>', '', '2023-06-06 01:23:47', 3, 'technology'),
(7, '5g war', '<p>war is here</p>', '', '2023-06-06 10:10:54', 3, 'technology'),
(8, 'cinema is art', '<p>Cinema</p>', '', '2023-06-06 10:14:13', 3, 'cinema'),
(9, 'science ', '<p>Science is the way for future</p>', '', '2023-06-06 10:15:08', 3, 'science'),
(10, 'food', '<p>Indian food is op!!!</p>', '', '2023-06-06 10:15:30', 3, 'food'),
(11, 'Design', '<p>!!Design is op!!</p>', '', '2023-06-06 10:15:55', 3, 'design'),
(12, 'Art', '<p><strong>art is nesseary</strong></p>', '', '2023-06-06 10:16:33', 3, 'art');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(1, 'shivam', 'shivamgulati', '$2a$10$RhWRs4hdnJPAQBikGyLpwOilp1kRMKQC2AOjC6/C9SwqI8pSE7xhC', NULL),
(2, 'admin', 'shivamgulati9466@gmail.com', '$2a$10$20rxqKgKPYAgLeJTMhd4zu2d5Z8VS55UTXW.hDI5nLDMhADMpGjgy', NULL),
(3, 'shivam123', 'shivam@gmail.com', '$2a$10$uY6jCRZG6MMo.ifZfMMMpu2G4lA4rtngORgLZiLFYSDm4uWFDYoTK', NULL),
(5, 'Shivam1103', 'shivam1103@gmail.com', '$2a$10$95vMWXWXvyWtVz34Am7gFOIgB1PpONfoqsGU/JADl7erNkBCPUsOu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
