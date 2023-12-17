-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 09:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `Id` int(100) NOT NULL,
  `AboutUs` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `Id` int(100) NOT NULL,
  `Faq` varchar(10000) NOT NULL,
  `Answer` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`Id`, `Faq`, `Answer`) VALUES
(1, 'How are you??', 'fine'),
(2, 'hello', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `guestinfo`
--

CREATE TABLE `guestinfo` (
  `GuestId` varchar(100) NOT NULL,
  `GuestName` varchar(100) NOT NULL,
  `GuestEmail` varchar(100) NOT NULL,
  `GuestNumber` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `GuestUserName` varchar(100) NOT NULL,
  `GuestImg` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guestinfo`
--

INSERT INTO `guestinfo` (`GuestId`, `GuestName`, `GuestEmail`, `GuestNumber`, `Gender`, `GuestUserName`, `GuestImg`) VALUES
('G-1', 'asif rahm', 'bob@aiub.edu', '01556789468', 'Male', 'AR200', ''),
('G-2', 'asif rah', 'bob@aiub.edu', '01556789468', 'Male', 'AR300', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserName` varchar(100) NOT NULL,
  `UserType` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserName`, `UserType`, `Password`) VALUES
('AR', 'Admin', '123456789/'),
('AR200', 'Guest', '123456789/'),
('AR300', 'Guest', '123456789/'),
('AR400', 'Admin', '123456789/'),
('AR500', 'Receptionist', '123456789/');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `Id` int(100) NOT NULL,
  `Date` date NOT NULL,
  `Notice` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`Id`, `Date`, `Notice`) VALUES
(1, '2023-12-13', ' hello world'),
(2, '2023-12-13', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `reserveroom`
--

CREATE TABLE `reserveroom` (
  `UserName` varchar(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `RoomNo` int(250) NOT NULL,
  `CheckIn` varchar(250) NOT NULL,
  `CheckOut` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserveroom`
--

INSERT INTO `reserveroom` (`UserName`, `Name`, `RoomNo`, `CheckIn`, `CheckOut`, `status`) VALUES
('asha', 'Asha Akthar', 5040, '2023-11-23', '2023-11-28', 'Confirmed'),
('sadi', 'sadi islam', 1022, '2023-11-22', '2023-11-25', 'Confirmed'),
('tanvir', 'tanvir islam', 1111, '2023-12-13', '2023-12-20', 'Confirmed'),
('tazdik', 'tazdik hossain', 2222, '2023-12-13', '2023-12-20', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(11) NOT NULL,
  `roomType` varchar(200) NOT NULL,
  `bedding` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomType`, `bedding`) VALUES
(1, 'Superior Room', 'SINGLE'),
(2, 'Superior Room', 'TRIPLE'),
(3, 'Delux Room', 'SINGLE'),
(4, 'Superior Room', 'DOUBLE'),
(5, 'Superior Room', 'QUAD'),
(6, 'Gueast House', 'DOUBLE'),
(7, 'Single Room', 'SINGLE'),
(8, 'Superior Room', 'DOUBLE'),
(9, 'Delux Room', 'TRIPLE'),
(17, 'Superior Room', 'SINGLE');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `StaffType` varchar(100) NOT NULL,
  `StaffSalary` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`StaffType`, `StaffSalary`) VALUES
('Admin', 100000),
('Receptionist', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `salarysheet`
--

CREATE TABLE `salarysheet` (
  `StaffId` varchar(100) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `StaffType` varchar(100) NOT NULL,
  `StaffUserName` varchar(100) NOT NULL,
  `StaffSalary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salarysheet`
--

INSERT INTO `salarysheet` (`StaffId`, `StaffName`, `StaffType`, `StaffUserName`, `StaffSalary`) VALUES
('S-1', 'asif rahman', 'Admin', 'AR', 100000),
('S-3', 'asif rahm', 'Admin', 'AR400', 100000),
('S-2', 'asif rahm', 'Receptionist', 'AR500', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `staffinfo`
--

CREATE TABLE `staffinfo` (
  `StaffId` varchar(100) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `StaffEmail` varchar(100) NOT NULL,
  `StaffNumber` varchar(100) NOT NULL,
  `StaffAddress` varchar(100) NOT NULL,
  `StaffType` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `StaffUserName` varchar(100) NOT NULL,
  `StaffImg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffinfo`
--

INSERT INTO `staffinfo` (`StaffId`, `StaffName`, `StaffEmail`, `StaffNumber`, `StaffAddress`, `StaffType`, `Gender`, `StaffUserName`, `StaffImg`) VALUES
('S-1', 'asif rahman', 'ar2@aiub.edu', '01234567891', '300/B, Rampura', 'Admin', 'Male', 'AR', ''),
('S-3', 'asif rahm', 'bob@aiub.edu', '01556789468', '1161/B Rampura', 'Admin', 'Male', 'AR400', ''),
('S-2', 'asif rahm', 'bob@aiub.edu', '01556789468', '1161/B Rampura', 'Receptionist', 'Male', 'AR500', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `guestinfo`
--
ALTER TABLE `guestinfo`
  ADD PRIMARY KEY (`GuestUserName`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UserName`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reserveroom`
--
ALTER TABLE `reserveroom`
  ADD PRIMARY KEY (`UserName`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `salarysheet`
--
ALTER TABLE `salarysheet`
  ADD PRIMARY KEY (`StaffUserName`);

--
-- Indexes for table `staffinfo`
--
ALTER TABLE `staffinfo`
  ADD PRIMARY KEY (`StaffUserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
