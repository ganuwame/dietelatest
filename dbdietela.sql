-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 02:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdietela`
--
CREATE DATABASE IF NOT EXISTS `dbdietela` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbdietela`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food_calories`
--

CREATE TABLE `tbl_food_calories` (
  `id` int(11) NOT NULL,
  `food_name` varchar(200) DEFAULT NULL,
  `calories` double DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_food_calories`
--

INSERT INTO `tbl_food_calories` (`id`, `food_name`, `calories`, `unit`, `createdAt`, `updatedAt`) VALUES
(6, 'Bakso', 325, '1 Bowl', '2022-01-31 05:28:22', '2022-01-31 08:02:16'),
(7, 'Nasi', 130, '100 gr', '2022-01-31 08:01:02', '2022-01-31 08:02:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_food_calories`
--
ALTER TABLE `tbl_food_calories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_food_calories`
--
ALTER TABLE `tbl_food_calories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
