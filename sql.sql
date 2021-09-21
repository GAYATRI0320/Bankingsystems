-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 08:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_systems`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `S.no` int(3) NOT NULL,
  `Sender` text NOT NULL,
  `Receiver` text NOT NULL,
  `Balance` int(8) NOT NULL,
  `D&T` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`S.no`, `Sender`, `Receiver`, `Balance`, `D&T`) VALUES
(1, 'Riya Jacob', 'John', 1000, '2021-09-01 09:19:20'),
(2, 'Issac J', 'Pooja Menon', 2000, '2021-09-10 03:20:08'),
(3, 'Ankur Kapoor', 'Priyal Yadaav', 500, '2021-09-13 13:43:36'),
(4, 'Devika Suresh', 'Sidharth PS', 1200, '2021-09-08 19:20:41'),
(5, 'Pooja', 'Priyal', 2000, '2021-09-16 20:48:20'),
(6, 'Ankur', 'Riya', 200, '2021-09-18 16:23:20'),
(7, 'Pooja', 'Gagan', 100, '2021-09-18 23:15:52'),
(8, 'Ayushi', 'Issac', 10, '2021-09-19 00:18:23'),
(9, 'Gagan', 'Ayushi', 10, '2021-09-20 23:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Devika', 'devikaas@gmail.com', 49100),
(2, 'Sidharth', 'ss2933@gmail.com', 29450),
(3, 'Ankur', 'menonAnkur@gmail.com', 39800),
(4, 'Issac', 'Issac@gmail.com', 50010),
(5, 'Riya', 'sharma@gmail.com', 41200),
(6, 'Priyal', 'priyalYaadav@gmail.com', 32000),
(7, 'Manav', 'manavk@gmail.com', 50000),
(8, 'Gagan', 'mangal@gmail.com', 40090),
(9, 'Dheeraj', 'dheerajP@gmail.com', 30450),
(10, 'Ayushi', 'ayushi2021@gmail.com', 60000),
(11, 'Pooja', 'poojamenon2001@gmail.com', 22900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`S.no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `S.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
