-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 07:01 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudnodejsmysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `architecture` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `expert` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eventName`, `architecture`, `phone`, `expert`, `createdBy`, `createdDate`) VALUES
(1, 'es', 'sd', '12312', '0', '0', '2018'),
(2, 'an event', 'security', 'juan', 'expert', 'alex', '2018-26-11');

-- --------------------------------------------------------

--
-- Table structure for table `ics_lists`
--

CREATE TABLE `ics_lists` (
  `id` int(255) NOT NULL,
  `ics_file_path` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `eventID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ics_lists`
--

INSERT INTO `ics_lists` (`id`, `ics_file_path`, `createdBy`, `eventID`) VALUES
(1, 'E:\\Nodejs\\crud-nodejs-mysql\\src\\controllers/uploads/wdcwe76234e127eugb15.ics', 'alex', '15'),
(2, 'E:\\Nodejs\\crud-nodejs-mysql\\src\\controllers/uploads/wdcwe76234e127eugb17.ics', 'alex', '17'),
(3, 'E:\\Nodejs\\crud-nodejs-mysql\\src\\controllers/uploads/wdcwe76234e127eugb1.ics', 'alex', '1'),
(4, 'E:\\Nodejs\\crud-nodejs-mysql\\src\\controllers/uploads/wdcwe76234e127eugb1.ics', 'alex', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`) VALUES
(1, 'alex');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ics_lists`
--
ALTER TABLE `ics_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ics_lists`
--
ALTER TABLE `ics_lists`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
