-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 08:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `primero-avionics`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aMail` varchar(255) NOT NULL,
  `aPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aMail`, `aPassword`) VALUES
('airways.primero@gmail.com', 'neduet123@');

-- --------------------------------------------------------

--
-- Table structure for table `bookedflight`
--

CREATE TABLE `bookedflight` (
  `trackingId` int(11) NOT NULL,
  `detailsId` int(11) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `noOfPassengers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityId` int(11) NOT NULL,
  `cityName` varchar(255) NOT NULL,
  `cityCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityId`, `cityName`, `cityCode`) VALUES
(1, 'Karachi', 'KH'),
(2, 'Lahore', 'LHR'),
(3, 'Quetta', 'UET'),
(4, 'Islamabad', 'ISB'),
(5, 'Multan', 'MUX'),
(6, 'Skardu', 'KDU');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `detailsId` int(11) NOT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `departureDate` date DEFAULT NULL,
  `departureTime` time DEFAULT NULL,
  `flightName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flightsdetails`
--

CREATE TABLE `flightsdetails` (
  `flightsDetailsId` int(11) NOT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `departureTime` time DEFAULT NULL,
  `flightName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `passengerId` int(11) NOT NULL,
  `fName` varchar(255) DEFAULT NULL,
  `mName` varchar(255) DEFAULT NULL,
  `lName` varchar(255) DEFAULT NULL,
  `pUsername` varchar(255) DEFAULT NULL,
  `pPassword` varchar(255) DEFAULT NULL,
  `pEmail` varchar(255) DEFAULT NULL,
  `pNum` int(11) DEFAULT NULL,
  `pCity` varchar(255) DEFAULT NULL,
  `pGender` varchar(255) DEFAULT NULL,
  `pDob` date DEFAULT NULL,
  `pAge` int(2) DEFAULT NULL,
  `cardNumber` int(23) DEFAULT NULL,
  `cvvNum` int(3) DEFAULT NULL,
  `expiryDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aMail`);

--
-- Indexes for table `bookedflight`
--
ALTER TABLE `bookedflight`
  ADD PRIMARY KEY (`trackingId`),
  ADD KEY `detailsId` (`detailsId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityId`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`detailsId`);

--
-- Indexes for table `flightsdetails`
--
ALTER TABLE `flightsdetails`
  ADD PRIMARY KEY (`flightsDetailsId`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`passengerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookedflight`
--
ALTER TABLE `bookedflight`
  MODIFY `trackingId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `detailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flightsdetails`
--
ALTER TABLE `flightsdetails`
  MODIFY `flightsDetailsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `passengerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookedflight`
--
ALTER TABLE `bookedflight`
  ADD CONSTRAINT `bookedflight_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `flights` (`detailsId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
