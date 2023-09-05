-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 12:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Khadija', 'Lorem ipsum dolor sit amet, ', '07:00:00'),
(2, 'Hamza', ' Nullam varius, turpis et commodo pharetra, ', '07:15:00'),
(3, 'Aisha', ' Aliquam faucibus, elit ut dictum aliquet', '07:30:00'),
(4, 'Hafsa', 'Excepteur sint occaecat cupidatat non proident', '07:54:00'),
(5, 'Omar', ', turpis et commodo pharetra, est eros bgcmh', '08:00:00'),
(7, 'Salma', 'Hello! this is a new message', '04:18:33'),
(8, 'Muhammed', 'The Weather Is Good Today', '04:33:41'),
(9, 'Ahmed', 'How Are You?', '08:13:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
