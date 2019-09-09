-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 08:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `firstname`, `lastname`) VALUES
(1, 'kiran', 'gundeti');

-- --------------------------------------------------------

--
-- Table structure for table `videos1`
--

CREATE TABLE `videos1` (
  `Vid_id` int(11) NOT NULL,
  `Vid_name` text NOT NULL,
  `Vid_is_active` text NOT NULL COMMENT 'Yes/No',
  `Vid_status` text NOT NULL COMMENT 'Started/Stop/Pause'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos1`
--

INSERT INTO `videos1` (`Vid_id`, `Vid_name`, `Vid_is_active`, `Vid_status`) VALUES
(1, 'Xyz', 'Yes', 'Started'),
(2, 'abc', 'No', 'Stopped');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videos1`
--
ALTER TABLE `videos1`
  ADD PRIMARY KEY (`Vid_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
