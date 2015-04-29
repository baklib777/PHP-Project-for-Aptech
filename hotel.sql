-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2015 at 07:47 PM
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
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Message` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `PostDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `Address` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CardNumber` varchar(19) COLLATE utf8_unicode_ci NOT NULL,
  `CardExpiration` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `CardCVV` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`ID`, `Name`, `Surname`, `Email`, `Mobile`, `Address`, `Zip`, `City`, `Country`, `CardNumber`, `CardExpiration`, `CardCVV`) VALUES
(1, 'Stefan', 'Kacer', 'skacer@guds.sk', '078 669 701', 'Dubravka 32', '432 12', 'Bratislava', 'Slovakia', '', '', ''),
(2, 'Milan', 'Gargulak', 'mgarg@yahoo.com', '778 665 123', 'Chickpeas 25', '323 88', 'Dallas', 'USA', '', '', ''),
(3, 'Michaela', 'Stastna', 'mstastna@centrum.sk', '465 123 145', 'Trnavska 11', '123 458', 'LA', 'USA', '', '', ''),
(4, 'Lydia', 'Raytikova', 'lydray@post.eu', '114 687 324', 'Nosferatu 666', '123 465', 'Transillvania', 'Latvia', '', '', ''),
(5, 'Miroslav', 'Mirec', 'mmorpg@hellya.uk', '445 123 453', 'Fireball 342', '456 12', 'Elfheim', 'Pandora', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `ID` int(11) NOT NULL,
  `Email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ExtraExpenses` float NOT NULL,
  `TotalExpenses` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupied`
--

CREATE TABLE IF NOT EXISTS `occupied` (
`ID` bigint(20) unsigned NOT NULL,
  `RoomID` int(10) unsigned NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `GuestID` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `occupied`
--

INSERT INTO `occupied` (`ID`, `RoomID`, `StartDate`, `EndDate`, `GuestID`) VALUES
(3, 7, '2015-06-01', '2015-04-08', 1),
(4, 1, '2015-06-07', '2015-06-16', 5),
(5, 6, '2015-06-01', '2015-06-30', 3),
(6, 20, '2015-06-24', '2015-06-30', 2),
(7, 13, '2015-06-14', '2015-06-22', 4);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `ID` int(11) NOT NULL,
  `Table` int(11) NOT NULL,
  `Seats` int(11) NOT NULL,
  `ReserveStart` datetime NOT NULL,
  `ReserveEnd` datetime NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CardNumber` varchar(19) COLLATE utf8_unicode_ci NOT NULL,
  `CardExpiration` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `CardCVV` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
`ID` int(10) unsigned NOT NULL,
  `SuiteID` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ID`, `SuiteID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 5),
(18, 5),
(19, 5),
(20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
`ID` int(11) NOT NULL,
  `ServiceName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ServicePrice` float NOT NULL,
  `Discount` int(11) NOT NULL,
  `DiscountStart` date NOT NULL,
  `DiscountEnd` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `ServiceName`, `ServicePrice`, `Discount`, `DiscountStart`, `DiscountEnd`) VALUES
(1, 'Dry Cleaning', 20, 0, '0000-00-00', '0000-00-00'),
(2, 'Breakfast to room', 25, 0, '0000-00-00', '0000-00-00'),
(3, 'Lunch to room', 70, 0, '0000-00-00', '0000-00-00'),
(4, 'Dinner to room', 45, 0, '0000-00-00', '0000-00-00'),
(5, 'Access to swimming pool', 40, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `suite`
--

CREATE TABLE IF NOT EXISTS `suite` (
`ID` int(10) unsigned NOT NULL,
  `Suite` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Price` int(10) NOT NULL,
  `Folder` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suite`
--

INSERT INTO `suite` (`ID`, `Suite`, `Capacity`, `Price`, `Folder`) VALUES
(1, 'Economic single', 1, 350, 'eco1'),
(2, 'Economic double', 2, 550, 'eco2'),
(3, 'Luxary single', 1, 600, 'lux1'),
(4, 'Luxary double', 2, 850, 'lux2'),
(5, 'Family Apartment', 5, 1400, 'family');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE IF NOT EXISTS `tables` (
`ID` int(11) NOT NULL,
  `TableID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`ID`, `TableID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`ID` int(11) NOT NULL,
  `User_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `User_Name`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'reception', 'reception');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `occupied`
--
ALTER TABLE `occupied`
 ADD PRIMARY KEY (`ID`), ADD KEY `RoomID` (`RoomID`), ADD KEY `GuestID` (`GuestID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`ID`), ADD KEY `SuiteID` (`SuiteID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suite`
--
ALTER TABLE `suite`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `occupied`
--
ALTER TABLE `occupied`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `suite`
--
ALTER TABLE `suite`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
