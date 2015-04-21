-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2015 at 07:44 PM
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
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
`ID` bigint(20) unsigned NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Surname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupied`
--

CREATE TABLE IF NOT EXISTS `occupied` (
`ID` bigint(20) unsigned NOT NULL,
  `RoomID` int(10) unsigned NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Room_Number` int(11) NOT NULL,
  `GuestID` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
`ID` int(10) unsigned NOT NULL,
  `SuiteID` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suite`
--

CREATE TABLE IF NOT EXISTS `suite` (
`ID` int(10) unsigned NOT NULL,
  `Suite` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suite`
--

INSERT INTO `suite` (`ID`, `Suite`) VALUES
(1, 'Single'),
(2, 'Double'),
(3, 'VIP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `occupied`
--
ALTER TABLE `occupied`
 ADD PRIMARY KEY (`ID`), ADD KEY `RoomID` (`RoomID`), ADD KEY `GuestID` (`GuestID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`ID`), ADD KEY `SuiteID` (`SuiteID`);

--
-- Indexes for table `suite`
--
ALTER TABLE `suite`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `occupied`
--
ALTER TABLE `occupied`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suite`
--
ALTER TABLE `suite`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `occupied`
--
ALTER TABLE `occupied`
ADD CONSTRAINT `occupied_ibfk_1` FOREIGN KEY (`RoomID`) REFERENCES `room` (`ID`),
ADD CONSTRAINT `occupied_ibfk_2` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`SuiteID`) REFERENCES `suite` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
