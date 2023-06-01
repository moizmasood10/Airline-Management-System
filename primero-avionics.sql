-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 09:46 PM
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
-- Table structure for table `bookedflights`
--

CREATE TABLE `bookedflights` (
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
  `CITY_NAME` varchar(255) NOT NULL,
  `CITY_CODE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityId`, `CITY_NAME`, `CITY_CODE`) VALUES
(1, 'Karachi', 'KHI'),
(2, 'Lahore', 'LHR'),
(3, 'Quetta', 'UET'),
(4, 'Islamabad', 'ISB'),
(5, 'Multan', 'MUX'),
(6, 'Skardu', 'KDU');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faqId` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flightdate`
--

CREATE TABLE `flightdate` (
  `detailsId` int(11) NOT NULL,
  `flightsDetailsId` varchar(255) NOT NULL,
  `departureDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flightdate`
--

INSERT INTO `flightdate` (`detailsId`, `flightsDetailsId`, `departureDate`) VALUES
(302, 'F01', '2023-06-01'),
(303, 'F01', '2023-06-02'),
(304, 'F01', '2023-06-03'),
(305, 'F01', '2023-06-04'),
(306, 'F01', '2023-06-05'),
(307, 'F01', '2023-06-06'),
(308, 'F01', '2023-06-07'),
(309, 'F01', '2023-06-08'),
(310, 'F01', '2023-06-09'),
(311, 'F01', '2023-06-10'),
(312, 'F01', '2023-06-11'),
(313, 'F01', '2023-06-12'),
(314, 'F01', '2023-06-13'),
(315, 'F01', '2023-06-14'),
(316, 'F01', '2023-06-15'),
(317, 'F01', '2023-06-16'),
(318, 'F01', '2023-06-17'),
(319, 'F01', '2023-06-18'),
(320, 'F01', '2023-06-19'),
(321, 'F01', '2023-06-20'),
(322, 'F01', '2023-06-21'),
(323, 'F01', '2023-06-22'),
(324, 'F01', '2023-06-23'),
(325, 'F01', '2023-06-24'),
(326, 'F01', '2023-06-25'),
(327, 'F01', '2023-06-26'),
(328, 'F01', '2023-06-27'),
(329, 'F01', '2023-06-28'),
(330, 'F01', '2023-06-29'),
(331, 'F01', '2023-06-30'),
(332, 'F02', '2023-06-01'),
(333, 'F02', '2023-06-02'),
(334, 'F02', '2023-06-03'),
(335, 'F02', '2023-06-04'),
(336, 'F02', '2023-06-05'),
(337, 'F02', '2023-06-06'),
(338, 'F02', '2023-06-07'),
(339, 'F02', '2023-06-08'),
(340, 'F02', '2023-06-09'),
(341, 'F02', '2023-06-10'),
(342, 'F02', '2023-06-11'),
(343, 'F02', '2023-06-12'),
(344, 'F02', '2023-06-13'),
(345, 'F02', '2023-06-14'),
(346, 'F02', '2023-06-15'),
(347, 'F02', '2023-06-16'),
(348, 'F02', '2023-06-17'),
(349, 'F02', '2023-06-18'),
(350, 'F02', '2023-06-19'),
(351, 'F02', '2023-06-20'),
(352, 'F02', '2023-06-21'),
(353, 'F02', '2023-06-22'),
(354, 'F02', '2023-06-23'),
(355, 'F02', '2023-06-24'),
(356, 'F02', '2023-06-25'),
(357, 'F02', '2023-06-26'),
(358, 'F02', '2023-06-27'),
(359, 'F02', '2023-06-28'),
(360, 'F02', '2023-06-29'),
(361, 'F02', '2023-06-30'),
(362, 'F03', '2023-06-01'),
(363, 'F03', '2023-06-02'),
(364, 'F03', '2023-06-03'),
(365, 'F03', '2023-06-04'),
(366, 'F03', '2023-06-05'),
(367, 'F03', '2023-06-06'),
(368, 'F03', '2023-06-07'),
(369, 'F03', '2023-06-08'),
(370, 'F03', '2023-06-09'),
(371, 'F03', '2023-06-10'),
(372, 'F03', '2023-06-11'),
(373, 'F03', '2023-06-12'),
(374, 'F03', '2023-06-13'),
(375, 'F03', '2023-06-14'),
(376, 'F03', '2023-06-15'),
(377, 'F03', '2023-06-16'),
(378, 'F03', '2023-06-17'),
(379, 'F03', '2023-06-18'),
(380, 'F03', '2023-06-19'),
(381, 'F03', '2023-06-20'),
(382, 'F03', '2023-06-21'),
(383, 'F03', '2023-06-22'),
(384, 'F03', '2023-06-23'),
(385, 'F03', '2023-06-24'),
(386, 'F03', '2023-06-25'),
(387, 'F03', '2023-06-26'),
(388, 'F03', '2023-06-27'),
(389, 'F03', '2023-06-28'),
(390, 'F03', '2023-06-29'),
(391, 'F03', '2023-06-30'),
(392, 'F04', '2023-06-01'),
(393, 'F04', '2023-06-02'),
(394, 'F04', '2023-06-03'),
(395, 'F04', '2023-06-04'),
(396, 'F04', '2023-06-05'),
(397, 'F04', '2023-06-06'),
(398, 'F04', '2023-06-07'),
(399, 'F04', '2023-06-08'),
(400, 'F04', '2023-06-09'),
(401, 'F04', '2023-06-10'),
(402, 'F04', '2023-06-11'),
(403, 'F04', '2023-06-12'),
(404, 'F04', '2023-06-13'),
(405, 'F04', '2023-06-14'),
(406, 'F04', '2023-06-15'),
(407, 'F04', '2023-06-16'),
(408, 'F04', '2023-06-17'),
(409, 'F04', '2023-06-18'),
(410, 'F04', '2023-06-19'),
(411, 'F04', '2023-06-20'),
(412, 'F04', '2023-06-21'),
(413, 'F04', '2023-06-22'),
(414, 'F04', '2023-06-23'),
(415, 'F04', '2023-06-24'),
(416, 'F04', '2023-06-25'),
(417, 'F04', '2023-06-26'),
(418, 'F04', '2023-06-27'),
(419, 'F04', '2023-06-28'),
(420, 'F04', '2023-06-29'),
(421, 'F04', '2023-06-30'),
(422, 'F05', '2023-06-01'),
(423, 'F05', '2023-06-02'),
(424, 'F05', '2023-06-03'),
(425, 'F05', '2023-06-04'),
(426, 'F05', '2023-06-05'),
(427, 'F05', '2023-06-06'),
(428, 'F05', '2023-06-07'),
(429, 'F05', '2023-06-08'),
(430, 'F05', '2023-06-09'),
(431, 'F05', '2023-06-10'),
(432, 'F05', '2023-06-11'),
(433, 'F05', '2023-06-12'),
(434, 'F05', '2023-06-13'),
(435, 'F05', '2023-06-14'),
(436, 'F05', '2023-06-15'),
(437, 'F05', '2023-06-16'),
(438, 'F05', '2023-06-17'),
(439, 'F05', '2023-06-18'),
(440, 'F05', '2023-06-19'),
(441, 'F05', '2023-06-20'),
(442, 'F05', '2023-06-21'),
(443, 'F05', '2023-06-22'),
(444, 'F05', '2023-06-23'),
(445, 'F05', '2023-06-24'),
(446, 'F05', '2023-06-25'),
(447, 'F05', '2023-06-26'),
(448, 'F05', '2023-06-27'),
(449, 'F05', '2023-06-28'),
(450, 'F05', '2023-06-29'),
(451, 'F05', '2023-06-30'),
(452, 'F06', '2023-06-01'),
(453, 'F06', '2023-06-02'),
(454, 'F06', '2023-06-03'),
(455, 'F06', '2023-06-04'),
(456, 'F06', '2023-06-05'),
(457, 'F06', '2023-06-06'),
(458, 'F06', '2023-06-07'),
(459, 'F06', '2023-06-08'),
(460, 'F06', '2023-06-09'),
(461, 'F06', '2023-06-10'),
(462, 'F06', '2023-06-11'),
(463, 'F06', '2023-06-12'),
(464, 'F06', '2023-06-13'),
(465, 'F06', '2023-06-14'),
(466, 'F06', '2023-06-15'),
(467, 'F06', '2023-06-16'),
(468, 'F06', '2023-06-17'),
(469, 'F06', '2023-06-18'),
(470, 'F06', '2023-06-19'),
(471, 'F06', '2023-06-20'),
(472, 'F06', '2023-06-21'),
(473, 'F06', '2023-06-22'),
(474, 'F06', '2023-06-23'),
(475, 'F06', '2023-06-24'),
(476, 'F06', '2023-06-25'),
(477, 'F06', '2023-06-26'),
(478, 'F06', '2023-06-27'),
(479, 'F06', '2023-06-28'),
(480, 'F06', '2023-06-29'),
(481, 'F06', '2023-06-30'),
(482, 'F07', '2023-06-01'),
(483, 'F07', '2023-06-02'),
(484, 'F07', '2023-06-03'),
(485, 'F07', '2023-06-04'),
(486, 'F07', '2023-06-05'),
(487, 'F07', '2023-06-06'),
(488, 'F07', '2023-06-07'),
(489, 'F07', '2023-06-08'),
(490, 'F07', '2023-06-09'),
(491, 'F07', '2023-06-10'),
(492, 'F07', '2023-06-11'),
(493, 'F07', '2023-06-12'),
(494, 'F07', '2023-06-13'),
(495, 'F07', '2023-06-14'),
(496, 'F07', '2023-06-15'),
(497, 'F07', '2023-06-16'),
(498, 'F07', '2023-06-17'),
(499, 'F07', '2023-06-18'),
(500, 'F07', '2023-06-19'),
(501, 'F07', '2023-06-20'),
(502, 'F07', '2023-06-21'),
(503, 'F07', '2023-06-22'),
(504, 'F07', '2023-06-23'),
(505, 'F07', '2023-06-24'),
(506, 'F07', '2023-06-25'),
(507, 'F07', '2023-06-26'),
(508, 'F07', '2023-06-27'),
(509, 'F07', '2023-06-28'),
(510, 'F07', '2023-06-29'),
(511, 'F07', '2023-06-30'),
(512, 'F08', '2023-06-01'),
(513, 'F08', '2023-06-02'),
(514, 'F08', '2023-06-03'),
(515, 'F08', '2023-06-04'),
(516, 'F08', '2023-06-05'),
(517, 'F08', '2023-06-06'),
(518, 'F08', '2023-06-07'),
(519, 'F08', '2023-06-08'),
(520, 'F08', '2023-06-09'),
(521, 'F08', '2023-06-10'),
(522, 'F08', '2023-06-11'),
(523, 'F08', '2023-06-12'),
(524, 'F08', '2023-06-13'),
(525, 'F08', '2023-06-14'),
(526, 'F08', '2023-06-15'),
(527, 'F08', '2023-06-16'),
(528, 'F08', '2023-06-17'),
(529, 'F08', '2023-06-18'),
(530, 'F08', '2023-06-19'),
(531, 'F08', '2023-06-20'),
(532, 'F08', '2023-06-21'),
(533, 'F08', '2023-06-22'),
(534, 'F08', '2023-06-23'),
(535, 'F08', '2023-06-24'),
(536, 'F08', '2023-06-25'),
(537, 'F08', '2023-06-26'),
(538, 'F08', '2023-06-27'),
(539, 'F08', '2023-06-28'),
(540, 'F08', '2023-06-29'),
(541, 'F08', '2023-06-30'),
(542, 'F09', '2023-06-01'),
(543, 'F09', '2023-06-02'),
(544, 'F09', '2023-06-03'),
(545, 'F09', '2023-06-04'),
(546, 'F09', '2023-06-05'),
(547, 'F09', '2023-06-06'),
(548, 'F09', '2023-06-07'),
(549, 'F09', '2023-06-08'),
(550, 'F09', '2023-06-09'),
(551, 'F09', '2023-06-10'),
(552, 'F09', '2023-06-11'),
(553, 'F09', '2023-06-12'),
(554, 'F09', '2023-06-13'),
(555, 'F09', '2023-06-14'),
(556, 'F09', '2023-06-15'),
(557, 'F09', '2023-06-16'),
(558, 'F09', '2023-06-17'),
(559, 'F09', '2023-06-18'),
(560, 'F09', '2023-06-19'),
(561, 'F09', '2023-06-20'),
(562, 'F09', '2023-06-21'),
(563, 'F09', '2023-06-22'),
(564, 'F09', '2023-06-23'),
(565, 'F09', '2023-06-24'),
(566, 'F09', '2023-06-25'),
(567, 'F09', '2023-06-26'),
(568, 'F09', '2023-06-27'),
(569, 'F09', '2023-06-28'),
(570, 'F09', '2023-06-29'),
(571, 'F09', '2023-06-30'),
(572, 'F10', '2023-06-01'),
(573, 'F10', '2023-06-02'),
(574, 'F10', '2023-06-03'),
(575, 'F10', '2023-06-04'),
(576, 'F10', '2023-06-05'),
(577, 'F10', '2023-06-06'),
(578, 'F10', '2023-06-07'),
(579, 'F10', '2023-06-08'),
(580, 'F10', '2023-06-09'),
(581, 'F10', '2023-06-10'),
(582, 'F10', '2023-06-11'),
(583, 'F10', '2023-06-12'),
(584, 'F10', '2023-06-13'),
(585, 'F10', '2023-06-14'),
(586, 'F10', '2023-06-15'),
(587, 'F10', '2023-06-16'),
(588, 'F10', '2023-06-17'),
(589, 'F10', '2023-06-18'),
(590, 'F10', '2023-06-19'),
(591, 'F10', '2023-06-20'),
(592, 'F10', '2023-06-21'),
(593, 'F10', '2023-06-22'),
(594, 'F10', '2023-06-23'),
(595, 'F10', '2023-06-24'),
(596, 'F10', '2023-06-25'),
(597, 'F10', '2023-06-26'),
(598, 'F10', '2023-06-27'),
(599, 'F10', '2023-06-28'),
(600, 'F10', '2023-06-29'),
(601, 'F10', '2023-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `flightsdetails`
--

CREATE TABLE `flightsdetails` (
  `flightsDetailsId` varchar(255) NOT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `departureTime` varchar(255) DEFAULT NULL,
  `flightName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flightsdetails`
--

INSERT INTO `flightsdetails` (`flightsDetailsId`, `departure`, `destination`, `departureTime`, `flightName`) VALUES
('F01', 'Karachi', 'Lahore', '8:00 am', 'MTA 30'),
('F02', 'Lahore', 'Karachi', '12:00 am', 'MTA 30'),
('F03', 'Karachi', 'Islamabad', '9:00 am', 'MTA 32'),
('F04', 'Islamabad', 'Karachi', '1:00 pm', 'MTA 32'),
('F05', 'Karachi', 'Quetta', '10:00 am', 'MTA 34'),
('F06', 'Quetta', 'Karachi', '2:00 pm', 'MTA 34'),
('F07', 'Karachi', 'Multan', '11:00 am', 'MTA 36'),
('F08', 'Multan', 'Karachi', '3:00 pm', 'MTA 36'),
('F09', 'Karachi', 'Skardu', '7:00 am', 'MTA 38'),
('F10', 'Skardu', 'Karachi', '11:00 am', 'MTA 38');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seatId` int(11) NOT NULL,
  `seatNo` varchar(255) DEFAULT NULL,
  `trackingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seats2`
--

CREATE TABLE `seats2` (
  `trackingId` int(11) NOT NULL,
  `flightName` varchar(255) DEFAULT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `departureDate` date DEFAULT NULL
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
-- Indexes for table `bookedflights`
--
ALTER TABLE `bookedflights`
  ADD PRIMARY KEY (`trackingId`),
  ADD KEY `detailsId` (`detailsId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityId`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faqId`);

--
-- Indexes for table `flightdate`
--
ALTER TABLE `flightdate`
  ADD PRIMARY KEY (`detailsId`),
  ADD KEY `flightsDetailsId` (`flightsDetailsId`);

--
-- Indexes for table `flightsdetails`
--
ALTER TABLE `flightsdetails`
  ADD PRIMARY KEY (`flightsDetailsId`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seatId`),
  ADD KEY `trackingId` (`trackingId`);

--
-- Indexes for table `seats2`
--
ALTER TABLE `seats2`
  ADD PRIMARY KEY (`trackingId`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`passengerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookedflights`
--
ALTER TABLE `bookedflights`
  MODIFY `trackingId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faqId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flightdate`
--
ALTER TABLE `flightdate`
  MODIFY `detailsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seatId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats2`
--
ALTER TABLE `seats2`
  MODIFY `trackingId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `passengerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookedflights`
--
ALTER TABLE `bookedflights`
  ADD CONSTRAINT `bookedflights_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `flightdate` (`detailsId`);

--
-- Constraints for table `flightdate`
--
ALTER TABLE `flightdate`
  ADD CONSTRAINT `flightdate_ibfk_1` FOREIGN KEY (`flightsDetailsId`) REFERENCES `flightsdetails` (`flightsDetailsId`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`trackingId`) REFERENCES `seats2` (`trackingId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
