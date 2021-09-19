-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 05:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `name`, `email`, `subject`, `message`) VALUES
(1, 'a', 'A@com', 'a', 'a'),
(2, 'asdas', 'A@com', 'A', 'asdas');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `ID` int(255) NOT NULL,
  `button` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`ID`, `button`, `name`, `email`, `comment`) VALUES
(37, '2000', '', '', ''),
(38, NULL, 'a', 'A@com', 'a'),
(39, NULL, 'uuu', 'uuu@aaa', 'aaaaa'),
(40, '5000', '', '', ''),
(41, NULL, 'aaaa', 'aaa@22', 'asdas'),
(42, NULL, 'asdas', 'A@com', 'asdas'),
(43, NULL, 'a', 'A@coma', 'asd'),
(44, '2000', '', '', ''),
(45, NULL, 'asdas', 'asdas@sfdasfd', 'asdasdas'),
(46, NULL, 'sad', 'asdas@fasf', 'asdasdaghyt'),
(47, NULL, 'asdas', 'asdas@sfdasfd', 'asdasdas'),
(48, NULL, 'Ama', 'ama@gmail.com', 'Am'),
(49, '5000', '', '', ''),
(50, NULL, 'asdas', 'asdas@sfdasfd', 'Oh my god'),
(51, '1200', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `ID` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cc` int(255) NOT NULL,
  `cvv` int(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`ID`, `amount`, `fname`, `lname`, `phone`, `cc`, `cvv`, `email`) VALUES
(1, 123, '123', '123', '123', 123, 123, 'A@com'),
(2, 666, 'a', 'b', '123', 123, 123, 'A@com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `check_box` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Password`, `check_box`) VALUES
(0, '1234', 'YES'),
(67, 'wow', 'NO'),
(76, '678', 'YES'),
(98, 'frank sad', 'NO'),
(123, '123456', 'NO'),
(5656, '56', 'NO'),
(6969, '696969', 'YES'),
(9999, '999', 'NO'),
(11111, '123', 'NO'),
(88888, '888', 'NO'),
(676767, '6767', 'NO'),
(789789, '7898', 'NO'),
(123456789, '1234', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `epass` varchar(255) NOT NULL,
  `repass` varchar(255) NOT NULL,
  `gender` enum('m','f','o') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `firstName`, `lastName`, `age`, `email`, `epass`, `repass`, `gender`) VALUES
(1, 'Zayn', 'Hassan', 25, 'ahnaf.abid22@gmail.com', '123', '123', 'm'),
(2, 'A', 'B', 23, 'A@gmail.com', '123', '123', 'm'),
(3, 'A', '2', 12, 'asdas@sfdasfd', '1234', '1234', 'm'),
(4, 'A', 'Z', 23, 'A@coma', '1234', '1234', 'm'),
(5, 'Z', 'A', 222, 'asdas@sfdasfd', '123', '123', 'm'),
(6, 'ADsa', 'asdas', 123, 'A@com', '123', '123', ''),
(7, 'Z', 'A', 777, 'A@coma', '123', '123', ''),
(8, 'A', 'asdas', 888, 'b@com', '777', '777', ''),
(9, 'A', 'B', 778, 'A@com', '123', '123', ''),
(10, 'A', 'B', 22, 'A@com', '123', '123', 'f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
