-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2015 at 11:45 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `occupied`
--

CREATE TABLE IF NOT EXISTS `occupied` (
`Room_ID` int(10) unsigned NOT NULL,
  `Room_Type` int(10) unsigned DEFAULT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Room_Number` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupied`
--

INSERT INTO `occupied` (`Room_ID`, `Room_Type`, `Start_Date`, `End_Date`, `Room_Number`) VALUES
(1, 1, '2015-06-01', '2015-06-05', 1),
(2, 1, '2015-06-06', '2015-06-10', 1),
(3, 1, '2015-06-12', '2015-06-15', 1),
(4, 1, '2015-06-17', '2015-06-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suite`
--

CREATE TABLE IF NOT EXISTS `suite` (
`Room_ID` int(10) unsigned NOT NULL,
  `Type` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suite`
--

INSERT INTO `suite` (`Room_ID`, `Type`) VALUES
(1, 'Single'),
(2, 'Double'),
(3, 'VIP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `occupied`
--
ALTER TABLE `occupied`
 ADD PRIMARY KEY (`Room_ID`), ADD KEY `Room_Type` (`Room_Type`);

--
-- Indexes for table `suite`
--
ALTER TABLE `suite`
 ADD PRIMARY KEY (`Room_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `occupied`
--
ALTER TABLE `occupied`
MODIFY `Room_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `suite`
--
ALTER TABLE `suite`
MODIFY `Room_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `occupied`
--
ALTER TABLE `occupied`
ADD CONSTRAINT `occupied_ibfk_1` FOREIGN KEY (`Room_Type`) REFERENCES `suite` (`Room_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
