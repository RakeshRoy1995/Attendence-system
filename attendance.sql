-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2018 at 05:45 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `status` varchar(200) NOT NULL,
  `dates` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `email`, `status`, `dates`) VALUES
(1, '', '', 'Absent', '2018-03-09'),
(2, 'Array', 'Array', 'Absent', '2018-03-09'),
(3, 'Array', 'Array', 'Absent', '2018-03-09'),
(4, 'Array', 'Array', 'Absent', '2018-03-09'),
(5, 'Array', 'Array', 'Absent', '2018-03-09'),
(6, 'Array', 'Array', 'Absent', '2018-03-09'),
(7, 'Johir', 'Dex@yahoo.com', 'Absent', '2018-03-09'),
(8, 'Johir', 'Dex@yahoo.com', 'Present', '2018-03-09'),
(9, 'Rakesh', 'Rakesh@gmail.com', 'Present', '2018-03-09'),
(10, 'Rajib', 'Rajib@gmail.com', 'Present', '2018-03-09'),
(11, 'Johir', 'Dex@yahoo.com', 'Absent', '2018-03-09'),
(12, 'Rakesh', 'Rakesh@gmail.com', 'Present', '2018-03-10'),
(13, 'Rajib', 'Rajib@gmail.com', 'Present', '2018-03-10'),
(14, 'Johir', 'Dex@yahoo.com', 'Absent', '2018-03-10'),
(15, 'Rakesh', 'Rakesh@gmail.com', 'Present', '2018-03-10'),
(16, 'Rajib', 'Rajib@gmail.com', 'Present', '2018-03-10'),
(17, 'Johir', 'Dex@yahoo.com', 'Absent', '2018-03-10'),
(18, 'Rakesh', 'Rakesh@gmail.com', 'Present', '2018-03-10'),
(19, 'Rajib', 'Rajib@gmail.com', 'Present', '2018-03-10'),
(20, 'Johir', 'Dex@yahoo.com', 'Absent', '2018-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
CREATE TABLE IF NOT EXISTS `emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `email` varchar(33) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`emp_id`, `name`, `fname`, `email`) VALUES
(1, 'Rakesh', 'Dulal Roy', 'Rakesh@gmail.com'),
(2, 'Rajib', 'Dulal Roy', 'Rajib@gmail.com'),
(11, 'Johir', 'Fahad', 'Dex@yahoo.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
