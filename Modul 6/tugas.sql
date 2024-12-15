-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 06:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `ID_Course` int(5) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `ID_Department` int(11) NOT NULL,
  `ID_Student` int(11) NOT NULL,
  `ID_Faculty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ID_Department` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ID_Student` int(5) NOT NULL,
  `ID_Faculty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `ID_Faculty` int(5) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Grade` varchar(10) NOT NULL,
  `ID_Course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `research_project`
--

CREATE TABLE `research_project` (
  `ID_Project` int(5) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ID_Faculty` int(11) NOT NULL,
  `Area` varchar(100) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `NewAttribute` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID_Student` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `House_Number` varchar(10) NOT NULL,
  `Street_Number` varchar(10) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Town` varchar(50) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`ID_Course`),
  ADD KEY `ID_Student` (`ID_Student`),
  ADD KEY `ID_Department` (`ID_Department`),
  ADD KEY `ID_Faculty` (`ID_Faculty`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID_Department`),
  ADD KEY `ID_Student` (`ID_Student`),
  ADD KEY `ID_Faculty` (`ID_Faculty`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`ID_Faculty`),
  ADD KEY `ID_Course` (`ID_Course`);

--
-- Indexes for table `research_project`
--
ALTER TABLE `research_project`
  ADD PRIMARY KEY (`ID_Project`),
  ADD KEY `ID_Faculty` (`ID_Faculty`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID_Student`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`ID_Student`) REFERENCES `student` (`ID_Student`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`ID_Department`) REFERENCES `department` (`ID_Department`),
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`ID_Faculty`) REFERENCES `faculty` (`ID_Faculty`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`ID_Student`) REFERENCES `student` (`ID_Student`),
  ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`ID_Faculty`) REFERENCES `faculty` (`ID_Faculty`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`ID_Course`) REFERENCES `course` (`ID_Course`);

--
-- Constraints for table `research_project`
--
ALTER TABLE `research_project`
  ADD CONSTRAINT `research_project_ibfk_1` FOREIGN KEY (`ID_Faculty`) REFERENCES `faculty` (`ID_Faculty`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
