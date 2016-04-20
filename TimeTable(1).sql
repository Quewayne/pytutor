-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2016 at 12:46 PM
-- Server version: 5.6.28-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TimeTable`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment_type`
--

CREATE TABLE IF NOT EXISTS `assignment_type` (
  `AssignmentCode` varchar(3) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CourseCode` varchar(14) NOT NULL,
  `CourseName` varchar(50) DEFAULT NULL,
  `OtherCode` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseCode`, `CourseName`, `OtherCode`) VALUES
('CS--1', 'Web Design and Programming', 'COMP6550'),
('CS--2', 'Advanced Comp Networks', 'COMP6770'),
('CS--3', 'Object Oriented Design', 'COMP6105'),
('CS--4', 'Topics in Advanced Algorithms', 'COMP6430'),
('CS--5', 'Introduction to Computing 1', 'COMP1126'),
('CS--6', 'Introduction to Computing 2', 'COMP1127'),
('CS--7', 'Introduction to Object-Oriented Programming', 'COMP1161'),
('CS--8', 'Mathematics For Computing', 'COMP1210'),
('CS--9', 'Computing and Society', 'COMP1220'),
('CS-10', 'Net-Centric Computing', 'COMP2190'),
('CS-18', 'Internship in Computing I', 'COMP3911'),
('CS-19', 'Internship in Computing II', 'COMP3912'),
('CS-20', 'Principles of Computer Networking', 'COMP3191'),
('CS-22', 'Implementation of Computer Networking', 'COMP3192'),
('CS-23', 'Systems Programming', 'COMP2130'),
('CS11Q', 'Introduction To Computer Science', 'COMP1125'),
('CS11R', 'Introduction to Computer Science', 'COMP1160'),
('CS20R', 'Analysis of Algorithms', 'COMP2211'),
('CS20S', 'Discrete Mathematics for Computer Science', 'COMP2201'),
('CS21R', 'Computer Architecture and Organization', 'COMP2230'),
('CS21S', 'Digital Logic Design', 'COMP2120'),
('CS22Q', 'Software Engineering', 'COMP2140'),
('CS23Q', 'Computer Organization', 'COMP2340'),
('CS24W', 'Web Design and Programming I', 'COMP2180'),
('CS28Q', 'Object Technology', 'COMP2170'),
('CS31A', 'Operating Systems', 'COMP3101'),
('CS32Q', 'Computer Communications and Networks', 'COMP3150'),
('CS32R', 'Information Assurance and Security', 'INFO3155'),
('CS33Q', 'Principles of Artificial Intelligence', 'COMP3220'),
('CS34Q', 'Implementation of Interpreters', 'COMP3651'),
('CS34W', 'Web Design & Programming 2', 'COMP3180'),
('CS35A', 'Database Management Systems', 'COMP3161'),
('CS35Q', 'Information Systems in Organisation', 'INFO3110'),
('CS35R', 'User Interface Design', 'COMP3170'),
('CS37R', 'Theory of Computation', 'COMP3702'),
('CS38Q', 'Real-time Embedded Systems', 'COMP3801'),
('CS39Q', 'Group Project', 'COMP3901'),
('CS50Q', 'Systems Design & Software Engineering', 'COMP5120'),
('CS51Q', 'Introduction to Program Design', 'COMP5710'),
('CS51T', 'Datababse Management Systems', 'COMP5730'),
('CS52Q', 'Introduction to Software Engineering', 'COMP5110'),
('CS52T', 'Data Communication Systems and Networks', 'COMP5770'),
('CS54U', 'Data Warehousing and Data Mining', 'COMP5740'),
('CS60R', 'Research Methodologies in Computer Science', 'COMP6010'),
('CS61Q', 'Database Systems', 'COMP6900'),
('CS61V', 'Parallel Computing', 'COMP6420'),
('CS62Z', 'Advance Software Engineering', 'COMP6110'),
('CS_21', 'Language Processors', 'COMP3652'),
('IN-11', 'Dynamic Web Development 1', 'INFO2180'),
('IN-12', 'Data Structures for IT', 'INFO2110'),
('IN-13', 'Dynamic Web Development 2', 'INFO3180'),
('IN-14', 'User Interface Design for IT', 'INFO3170'),
('IN-15', 'Computer System Administration', 'INFO3105'),
('IN-20', 'Mathematics and Statistics for IT', 'INFO2100'),
('IN-21', 'Information Systems', 'INFO3110'),
('IN-24', 'Computer Network & Security for IT', 'INFO3155'),
('IN-25', 'E-Commerce', 'INFO3435'),
('SW-16', 'Software Modeling', 'SWEN3145'),
('SW-17', 'Software Project Management', 'SWEN3130'),
('SW-22', 'Software Testing', 'SWEN3165'),
('SW-23', 'Formal Methods and Software Reliability', 'SWEN3185'),
('SW-24', 'Group Project', 'SWEN3920');

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE IF NOT EXISTS `course_type` (
  `CourseType` varchar(8) NOT NULL,
  `CourseTypeDesc` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`CourseType`, `CourseTypeDesc`) VALUES
('INTP', 'Internship'),
('LAB', 'Lab'),
('LEC', 'Lecture'),
('MARK', 'MARKERS ONLY'),
('RSCH', 'Research'),
('TUT', 'TutorialSession'),
('TUTA', 'Tutorial/Discussions'),
('TUTB', 'SecondaryTutorial');

-- --------------------------------------------------------

--
-- Table structure for table `entry_clone`
--

CREATE TABLE IF NOT EXISTS `entry_clone` (
  `EntryID` int(11) NOT NULL,
  `EntryDay` varchar(4) DEFAULT NULL,
  `EntryTime` varchar(9) DEFAULT NULL,
  `RoomId` varchar(10) DEFAULT NULL,
  `SemesterId` varchar(1) DEFAULT NULL,
  `CourseCode` varchar(14) DEFAULT NULL,
  `CourseType` varchar(8) DEFAULT NULL,
  `userInitial` varchar(9) DEFAULT NULL,
  `Delta` enum('VAL','ADD','MOD','DEL') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7018 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry_clone`
--

INSERT INTO `entry_clone` (`EntryID`, `EntryDay`, `EntryTime`, `RoomId`, `SemesterId`, `CourseCode`, `CourseType`, `userInitial`, `Delta`) VALUES
(2407, 'Mon', '08-09[am]', 'CLT', '1', 'COMP2130', 'LEC', 'DF', 'VAL'),
(2408, 'Mon', '09-10[am]', 'CR1', '1', 'COMP1126', 'TUTA', 'TUTOR_AA', 'VAL'),
(2409, 'Mon', '09-10[am]', 'CR1', '1', 'COMP1127', 'TUTA', 'TUTOR_AA', 'VAL'),
(2412, 'Mon', '10-11[am]', 'CPGR', '1', 'COMP3220', 'TUTA', 'TUTOR_NM', 'VAL'),
(2413, 'Mon', '10-11[am]', 'CR2', '1', 'COMP1126', 'TUTA', 'TUTOR_JW', 'VAL'),
(2414, 'Mon', '10-11[am]', 'CR2', '1', 'COMP1127', 'TUTA', 'TUTOR_JW', 'VAL'),
(2415, 'Mon', '11-12[am]', 'CR1', '1', 'COMP1210', 'TUTA', 'KM', 'VAL'),
(2416, 'Mon', '11-12[am]', 'C2', '1', 'COMP3101', 'LEC', 'SE', 'VAL'),
(2417, 'Mon', '12-01[pm]', 'PLT', '1', 'COMP1126', 'LEC', 'GM', 'VAL'),
(2418, 'Mon', '01-02[pm]', 'PLT', '1', 'COMP1126', 'LEC', 'GM', 'VAL'),
(2419, 'Mon', '12-01[pm]', 'PLT', '1', 'COMP1127', 'LEC', 'GM', 'VAL'),
(2420, 'Mon', '01-02[pm]', 'PLT', '1', 'COMP1127', 'LEC', 'GM', 'VAL'),
(2421, 'Mon', '12-01[pm]', 'LAW2', '1', 'COMP2190', 'LEC', 'DF', 'VAL'),
(2423, 'Mon', '12-01[pm]', 'CLT', '1', 'INFO3105', 'LEC', 'TBA', 'VAL'),
(2425, 'Mon', '01-02[pm]', 'LAW2', '1', 'INFO2110', 'LEC', 'PG', 'VAL'),
(2426, 'Mon', '01-02[pm]', 'CLT', '1', 'INFO3170', 'LEC', 'AHT', 'VAL'),
(2427, 'Mon', '02-03[pm]', 'CR1', '1', 'COMP1126', 'TUTA', 'TUTOR_JW', 'VAL'),
(2428, 'Mon', '02-03[pm]', 'CR1', '1', 'COMP1127', 'TUTA', 'TUTOR_JW', 'VAL'),
(2429, 'Mon', '02-03[pm]', 'CLT', '1', 'SWEN3130', 'LEC', 'PG', 'VAL'),
(2430, 'Mon', '03-04[pm]', 'CR1', '1', 'COMP1126', 'TUTA', 'TUTOR_JW', 'VAL'),
(2431, 'Mon', '03-04[pm]', 'CR1', '1', 'COMP1127', 'TUTA', 'TUTOR_JW', 'VAL'),
(2432, 'Mon', '03-04[pm]', 'CLT', '1', 'SWEN3145', 'LEC', 'CBE', 'VAL'),
(2433, 'Mon', '04-05[pm]', 'CSLAB', '1', 'COMP1126', 'LAB', 'TUTOR_GW', 'VAL'),
(2434, 'Mon', '05-06[pm]', 'CSLAB', '1', 'COMP1126', 'LAB', 'TUTOR_GW', 'VAL'),
(2435, 'Mon', '04-05[pm]', 'CR1', '1', 'COMP1126', 'TUTA', 'TUTOR_AA', 'VAL'),
(2436, 'Mon', '04-05[pm]', 'CSLAB', '1', 'COMP1127', 'LAB', 'TUTOR_GW', 'VAL'),
(2437, 'Mon', '05-06[pm]', 'CSLAB', '1', 'COMP1127', 'LAB', 'TUTOR_GW', 'VAL'),
(2438, 'Mon', '04-05[pm]', 'CR1', '1', 'COMP1127', 'TUTA', 'TUTOR_AA', 'VAL'),
(2439, 'Mon', '04-05[pm]', 'CLT', '1', 'COMP3652', 'LEC', 'DC', 'VAL'),
(2440, 'Mon', '05-06[pm]', 'B', '1', 'COMP1161', 'LEC', 'AS', 'VAL'),
(2441, 'Mon', '06-07[pm]', 'B', '1', 'COMP1161', 'LEC', 'AS', 'VAL'),
(2442, 'Mon', '06-07[pm]', 'S', '1', 'COMP1126', 'LEC', 'CBE', 'VAL'),
(2443, 'Mon', '06-07[pm]', 'S', '1', 'COMP1127', 'LEC', 'CBE', 'VAL'),
(2444, 'Mon', '07-08[pm]', 'CR2', '1', 'COMP1126', 'TUTA', 'TUTOR_JS', 'VAL'),
(2445, 'Mon', '07-08[pm]', 'CR2', '1', 'COMP1127', 'TUTA', 'TUTOR_JS', 'VAL'),
(2446, 'Mon', '07-08[pm]', 'CR2', '1', 'COMP1220', 'TUTA', 'TUTOR_RT', 'VAL'),
(2447, 'Tues', '08-09[am]', 'CR1', '1', 'COMP2140', 'TUTA', 'TUTOR', 'VAL'),
(2448, 'Tues', '09-10[am]', 'LAW2', '1', 'COMP2190', 'LEC', 'DF', 'VAL'),
(2449, 'Tues', '08-09[am]', 'LAW2', '1', 'COMP2190', 'LEC', 'DF', 'VAL'),
(2451, 'Tues', '09-10[am]', 'CR1', '1', 'COMP1126', 'TUTA', 'TUTOR_TG', 'VAL'),
(2453, 'Tues', '09-10[am]', 'CLT', '1', 'INFO3105', 'LEC', 'RB', 'VAL'),
(2454, 'Tues', '10-11[am]', 'CPGR', '1', 'COMP1126', 'TUTA', 'TUTOR_AA', 'VAL'),
(2455, 'Tues', '10-11[am]', 'CPGR', '1', 'COMP1127', 'TUTA', 'TUTOR_AA', 'VAL'),
(2456, 'Tues', '10-11[am]', '', '1', 'COMP3911', 'LEC', 'CB', 'VAL'),
(2457, 'Tues', '11-12[am]', '', '1', 'COMP3911', 'LEC', 'CB', 'VAL'),
(2460, 'Tues', '10-11[am]', 'CR1', '1', 'INFO2110', 'TUTA', 'TUTOR_AT', 'VAL'),
(2461, 'Wed', '05-06[pm]', 'CR2', '1', 'INFO3170', 'TUTA', 'TUTOR_DF', 'VAL'),
(2462, 'Tues', '11-12[am]', 'CSLAB', '1', 'COMP1126', 'LAB', 'TUTOR_GW', 'VAL'),
(2463, 'Tues', '12-01[pm]', 'CSLAB', '1', 'COMP1126', 'LAB', 'TUTOR_GW', 'VAL'),
(2464, 'Tues', '11-12[am]', 'CSLAB', '1', 'COMP1127', 'LAB', 'TUTOR_GW', 'VAL'),
(2465, 'Tues', '12-01[pm]', 'CSLAB', '1', 'COMP1127', 'LAB', 'TUTOR_GW', 'VAL'),
(2466, 'Tues', '11-12[am]', 'CR2', '1', 'COMP3220', 'TUTA', 'GM', 'VAL'),
(2467, 'Tues', '11-12[am]', 'CPGR', '1', 'INFO2180', 'TUTA', 'TUTOR_YL', 'VAL'),
(2468, 'Tues', '11-12[am]', 'CR1', '1', 'SWEN3145', 'TUTA', 'CBE', 'VAL'),
(2469, 'Tues', '12-01[pm]', 'CR2', '1', 'COMP1126', 'TUTA', 'TUTOR_JW', 'VAL'),
(2470, 'Tues', '12-01[pm]', 'CR2', '1', 'COMP1127', 'TUTA', 'TUTOR_JW', 'VAL'),
(2472, 'Tues', '12-01[pm]', 'C2', '1', 'COMP3101', 'LEC', 'SE', 'VAL'),
(2473, 'Tues', '01-02[pm]', 'C2', '1', 'COMP3101', 'LEC', 'SE', 'VAL'),
(2474, 'Tues', '01-02[pm]', 'CR2', '1', 'COMP1126', 'TUTA', 'TUTOR_JW', 'VAL'),
(2475, 'Tues', '01-02[pm]', 'CR1', '1', 'COMP1127', 'TUTA', 'TUTOR_JW', 'VAL'),
(2476, 'Tues', '01-02[pm]', 'PCLT', '1', 'COMP1210', 'LEC', 'KM', 'VAL'),
(2478, 'Tues', '02-03[pm]', 'CPGR', '1', 'COMP1126', 'TUTA', 'TUTOR_SC', 'VAL'),
(2479, 'Tues', '02-03[pm]', 'CPGR', '1', 'COMP1127', 'TUTA', 'TUTOR_SC', 'VAL'),
(2480, 'Tues', '02-03[pm]', 'PCLT', '1', 'COMP2201', 'LEC', 'CB', 'VAL'),
(2481, 'Tues', '02-03[pm]', 'B', '1', 'COMP3220', 'LEC', 'GM', 'VAL'),
(2482, 'Tues', '03-04[pm]', 'CPGR', '1', 'COMP1126', 'TUTA', 'TUTOR_AA', 'VAL'),
(2483, 'Tues', '03-04[pm]', 'CPGR', '1', 'COMP1127', 'TUTA', 'TUTOR_AA', 'VAL'),
(2484, 'Tues', '03-04[pm]', 'CR1', '1', 'COMP2201', 'TUTA', 'TUTOR_SH', 'VAL'),
(2485, 'Tues', '03-04[pm]', 'CR2', '1', 'INFO3105', 'TUTA', 'TUTOR_AT', 'VAL'),
(2486, 'Tues', '03-04[pm]', 'CLT', '1', 'SWEN3130', 'LEC', 'PG', 'VAL'),
(2493, 'Tues', '04-05[pm]', 'CR2', '1', 'COMP1220', 'TUTA', 'TUTOR_DS', 'VAL'),
(2494, 'Tues', '04-05[pm]', 'LAW2', '1', 'INFO2110', 'LEC', 'PG', 'VAL'),
(2495, 'Tues', '04-05[pm]', 'CPGR', '1', 'COMP2140', 'TUTA', 'TUTOR', 'VAL'),
(2496, 'Tues', '04-05[pm]', 'CLT', '1', 'COMP3652', 'LEC', 'DC', 'VAL'),
(2498, 'Tues', '06-07[pm]', 'PLT', '1', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(2499, 'Tues', '05-06[pm]', 'LAW2', '1', 'COMP2140', 'LEC', 'DJ', 'VAL'),
(2501, 'Tues', '05-06[pm]', 'CR1', '1', 'COMP1126', 'TUTA', 'TUTOR_TG', 'VAL'),
(2502, 'Tues', '05-06[pm]', 'CR1', '1', 'COMP1127', 'TUTA', 'TUTOR_TG', 'VAL'),
(2503, 'Tues', '05-06[pm]', 'CLT', '1', 'COMP3652', 'LEC', 'DC', 'VAL'),
(2508, 'Wed', '08-09[am]', 'CLT', '1', 'COMP3191', 'LEC', 'DF', 'VAL'),
(2509, 'Wed', '09-10[am]', 'CLT', '1', 'COMP3191', 'LEC', 'DF', 'VAL'),
(2512, 'Wed', '09-10[am]', 'CR2', '1', 'COMP1210', 'TUTA', 'TUTOR_SH', 'VAL'),
(2513, 'Wed', '09-10[am]', 'CPGR', '1', 'COMP3220', 'TUTA', 'TUTOR_NM', 'VAL'),
(2514, 'Wed', '10-11[am]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2515, 'Wed', '10-11[am]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2516, 'Wed', '11-12[am]', 'PCLT', '1', 'COMP1210', 'LEC', 'KM', 'VAL'),
(2517, 'Wed', '11-12[am]', 'CR1', '1', 'SWEN3145', 'TUTA', 'TUTOR', 'VAL'),
(2518, 'Wed', '12-01[pm]', 'C5', '1', 'COMP1126', 'LEC', 'GM', 'VAL'),
(2519, 'Wed', '12-01[pm]', '', '1', 'COMP1127', 'LEC', 'GM', 'VAL'),
(2520, 'Wed', '12-01[pm]', 'CR2', '1', 'INFO2180', 'TUTA', 'TUTOR_YL', 'VAL'),
(2521, 'Wed', '01-02[pm]', 'CLT', '1', 'COMP1126', 'TUTA', 'CBE', 'VAL'),
(2522, 'Wed', '01-02[pm]', 'CLT', '1', 'COMP1127', 'TUTA', 'CBE', 'VAL'),
(2524, 'Wed', '01-02[pm]', 'CR1', '1', 'INFO3105', 'TUTA', 'RB', 'VAL'),
(2525, 'Wed', '01-02[pm]', 'CR2', '1', 'SWEN3130', 'TUTA', 'TUTOR', 'VAL'),
(2526, 'Wed', '02-03[pm]', 'CPGR', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2527, 'Wed', '02-03[pm]', 'CPGR', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2528, 'Wed', '02-03[pm]', 'CR1', '1', 'COMP2201', 'TUTA', 'TUTOR_SH', 'VAL'),
(2529, 'Fri', '05-06[pm]', 'CLT', '1', 'INFO3170', 'TUTA', 'TUTOR_DF', 'VAL'),
(2530, 'Wed', '03-04[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2531, 'Wed', '03-04[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2532, 'Wed', '03-04[pm]', 'CR2', '1', 'COMP2190', 'TUTA', 'DF', 'VAL'),
(2533, 'Wed', '03-04[pm]', 'CLT', '1', 'SWEN3145', 'LEC', 'CBE', 'VAL'),
(2534, 'Wed', '04-05[pm]', 'CR2', '1', 'COMP3101', 'TUTA', 'SE', 'VAL'),
(2535, 'Wed', '04-05[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_AA', 'VAL'),
(2536, 'Wed', '04-05[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_AA', 'VAL'),
(2537, 'Wed', '05-06[pm]', 'CR2', '1', 'COMP1126', 'TUTB', 'TUTOR_TG', 'VAL'),
(2538, 'Wed', '05-06[pm]', 'CR2', '1', 'COMP1127', 'TUTB', 'TUTOR_TG', 'VAL'),
(2539, 'Wed', '05-06[pm]', 'CSLAB', '1', 'COMP1161', 'LAB', 'TUTOR', 'VAL'),
(2540, 'Wed', '06-07[pm]', 'CSLAB', '1', 'COMP1161', 'LAB', 'TUTOR', 'VAL'),
(2541, 'Thur', '08-09[am]', 'CSLAB', '1', 'COMP1126', 'LAB', 'GM', 'VAL'),
(2542, 'Thur', '09-10[am]', 'CSLAB', '1', 'COMP1126', 'LAB', 'GM', 'VAL'),
(2543, 'Thur', '08-09[am]', 'CSLAB', '1', 'COMP1127', 'LAB', 'GM', 'VAL'),
(2544, 'Thur', '09-10[am]', 'CSLAB', '1', 'COMP1127', 'LAB', 'GM', 'VAL'),
(2545, 'Thur', '09-10[am]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_TG', 'VAL'),
(2546, 'Thur', '09-10[am]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_TG', 'VAL'),
(2548, 'Thur', '09-10[am]', 'CLT', '1', 'SWEN3130', 'LEC', 'PG', 'VAL'),
(2551, 'Thur', '10-11[am]', 'CR2', '1', 'COMP2201', 'TUTA', 'TUTOR_SH', 'VAL'),
(2552, 'Thur', '10-11[am]', 'B', '1', 'COMP3220', 'LEC', 'GM', 'VAL'),
(2553, 'Thur', '11-12[am]', 'S', '1', 'COMP3220', 'LEC', 'GM', 'VAL'),
(2554, 'Thur', '11-12[am]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2555, 'Thur', '11-12[am]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2556, 'Thur', '11-12[am]', 'PCLT', '1', 'COMP2201', 'LEC', 'CB', 'VAL'),
(2558, 'Thur', '12-01[pm]', 'CR1', '1', 'COMP2201', 'TUTA', 'TUTOR_SH', 'VAL'),
(2559, 'Thur', '12-01[pm]', 'CR2', '1', 'SWEN3130', 'TUTA', 'PG', 'VAL'),
(2560, 'Thur', '01-02[pm]', 'CLT', '1', 'INFO3105', 'LEC', 'RB', 'VAL'),
(2561, 'Thur', '01-02[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2562, 'Thur', '01-02[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2564, 'Thur', '05-06[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_TG', 'VAL'),
(2565, 'Thur', '05-06[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_TG', 'VAL'),
(2566, 'Thur', '06-07[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_OH', 'VAL'),
(2567, 'Thur', '06-07[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_OH', 'VAL'),
(2573, 'Fri', '08-09[am]', 'LAW2', '1', 'INFO2180', 'LEC', 'DB', 'VAL'),
(2574, 'Fri', '09-10[am]', 'PCLT', '1', 'INFO2180', 'LEC', 'DB', 'VAL'),
(2575, 'Fri', '09-10[am]', 'CR2', '1', 'COMP1126', 'TUTB', 'TUTOR_TG', 'VAL'),
(2576, 'Fri', '09-10[am]', 'CR2', '1', 'COMP1127', 'TUTB', 'TUTOR_TG', 'VAL'),
(2578, 'Fri', '09-10[am]', 'CR1', '1', 'COMP3191', 'TUTA', 'TUTOR_AT', 'VAL'),
(2579, 'Fri', '10-11[am]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_SC', 'VAL'),
(2580, 'Fri', '10-11[am]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_SC', 'VAL'),
(2581, 'Wed', '06-07[pm]', 'CR1', '1', 'COMP1220', 'TUTA', 'TUTOR_RH', 'VAL'),
(2582, 'Fri', '10-11[am]', 'CR2', '1', 'INFO2110', 'TUTA', 'TUTOR', 'VAL'),
(2583, 'Fri', '10-11[am]', 'FLAB', '1', 'INFO2180', 'LAB', 'DB', 'VAL'),
(2584, 'Fri', '11-12[am]', 'FLAB', '1', 'INFO2180', 'LAB', 'DB', 'VAL'),
(2586, 'Wed', '07-08[pm]', 'CR1', '1', 'COMP1220', 'TUTA', 'TUTOR_RH', 'VAL'),
(2587, 'Fri', '11-12[am]', 'CR2', '1', 'COMP3101', 'TUTA', 'SE', 'VAL'),
(2588, 'Fri', '12-01[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_SC', 'VAL'),
(2589, 'Fri', '12-01[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_SC', 'VAL'),
(2590, 'Fri', '12-01[pm]', 'LAW2', '1', 'INFO2110', 'LEC', 'PG', 'VAL'),
(2591, 'Fri', '01-02[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2592, 'Fri', '01-02[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2593, 'Fri', '01-02[pm]', 'CPGR', '1', 'SWEN3145', 'LEC', 'CBE', 'VAL'),
(2594, 'Fri', '02-03[pm]', 'CR1', '1', 'COMP1126', 'TUTB', 'TUTOR_JW', 'VAL'),
(2595, 'Fri', '02-03[pm]', 'CR1', '1', 'COMP1127', 'TUTB', 'TUTOR_JW', 'VAL'),
(2596, 'Fri', '02-03[pm]', 'CR2', '1', 'COMP1220', 'TUTA', 'TUTOR_DS', 'VAL'),
(2597, 'Fri', '02-03[pm]', 'PCLT', '1', 'COMP2201', 'LEC', 'CB', 'VAL'),
(2598, 'Fri', '02-03[pm]', 'CLT', '1', 'INFO3170', 'LEC', 'AHT', 'VAL'),
(2600, 'Fri', '03-04[pm]', 'CR2', '1', 'COMP1220', 'TUTA', 'TUTOR_DS', 'VAL'),
(2601, 'Fri', '03-04[pm]', 'CPGR', '1', 'COMP2190', 'TUTA', 'TUTOR_AT', 'VAL'),
(2602, 'Fri', '03-04[pm]', 'CR1', '1', 'INFO2180', 'TUTA', 'TUTOR_YL', 'VAL'),
(2603, 'Fri', '04-05[pm]', 'CR1', '1', 'COMP1210', 'TUTA', 'KM', 'VAL'),
(2606, 'Fri', '04-05[pm]', 'CLT', '1', 'COMP3652', 'LEC', 'DC', 'VAL'),
(2607, 'Fri', '05-06[pm]', 'CR2', '1', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(2612, 'Sat', '12-01[pm]', 'CSLAB', '1', 'COMP1126', 'LAB', 'CB', 'VAL'),
(2613, 'Sat', '01-02[pm]', 'CSLAB', '1', 'COMP1126', 'LAB', 'CB', 'VAL'),
(2614, 'Sat', '12-01[pm]', 'CSLAB', '1', 'COMP1127', 'LAB', 'CB', 'VAL'),
(2615, 'Sat', '01-02[pm]', 'CSLAB', '1', 'COMP1127', 'LAB', 'CB', 'VAL'),
(2619, 'Mon', '09-10[am]', 'CR2', '1', 'COMP3101', 'TUTA', 'SE', 'VAL'),
(2620, 'Mon', '10-11[am]', 'CPGR', '1', 'COMP1210', 'TUTA', 'TUTOR_SH', 'VAL'),
(2622, 'Tues', '12-01[pm]', 'CR1', '1', 'INFO2110', 'TUTA', 'TUTOR', 'VAL'),
(2623, 'Wed', '04-05[pm]', 'LAW2', '1', 'COMP2140', 'LEC', 'DJ', 'VAL'),
(2624, 'Wed', '05-06[pm]', 'LAW2', '1', 'COMP2140', 'LEC', 'DJ', 'VAL'),
(2625, 'Wed', '06-07[pm]', 'PCLT', '1', 'COMP1126', 'LEC', 'CBE', 'VAL'),
(2626, 'Wed', '06-07[pm]', 'PCLT', '1', 'COMP1127', 'LEC', 'CBE', 'VAL'),
(2627, 'Wed', '07-08[pm]', 'PCLT', '1', 'COMP1126', 'LEC', 'CBE', 'VAL'),
(2628, 'Wed', '07-08[pm]', 'PCLT', '1', 'COMP1127', 'LEC', 'CBE', 'VAL'),
(2629, 'Mon', '08-09[am]', 'CPGR', '1', 'COMP2190', 'TUTA', 'TUTOR_AT', 'VAL'),
(2630, 'Mon', '01-02[pm]', 'CR1', '1', 'COMP3191', 'TUTA', 'DF', 'VAL'),
(2631, 'Wed', '11-12[am]', 'CPGR', '1', 'COMP2190', 'TUTA', 'TUTOR_AT', 'VAL'),
(2632, 'Tues', '05-06[pm]', 'PLT', '1', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(2633, 'Mon', '06-07[pm]', 'CR1', '1', 'COMP1220', 'TUTA', 'TUTOR_RT', 'VAL'),
(2634, 'Tues', '07-08[pm]', 'PLT', '1', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(2655, 'Fri', '03-04[pm]', 'CLT', '1', 'INFO3170', 'LEC', 'AHT', 'VAL'),
(6823, 'Mon', '04-05[pm]', 'FLAB', '2', 'COMP1126', 'LAB', 'TUTOR', 'VAL'),
(6824, 'Mon', '05-06[pm]', 'FLAB', '2', 'COMP1126', 'LAB', 'TUTOR', 'VAL'),
(6825, 'Thur', '11-12[am]', '_MIA', '2', 'COMP1126', 'LAB', 'TUTOR', 'VAL'),
(6826, 'Thur', '12-01[pm]', '_MIA', '2', 'COMP1126', 'LAB', 'TUTOR', 'VAL'),
(6827, 'Tues', '04-05[pm]', 'CLT', '2', 'COMP1126', 'LEC', 'CBE', 'VAL'),
(6828, 'Wed', '02-03[pm]', 'CLT', '2', 'COMP1126', 'LEC', 'CBE', 'VAL'),
(6829, 'Wed', '03-04[pm]', 'CLT', '2', 'COMP1126', 'LEC', 'CBE', 'VAL'),
(6830, 'Tues', '06-07[pm]', 'CR2', '2', 'COMP1126', '_MIA', 'TUTOR', 'VAL'),
(6831, 'Wed', '05-06[pm]', 'CR2', '2', 'COMP1126', '_MIA', 'TUTOR', 'VAL'),
(6832, 'Thur', '05-06[pm]', 'CR2', '2', 'COMP1126', '_MIA', 'TUTOR', 'VAL'),
(6833, 'Thur', '06-07[pm]', 'CR2', '2', 'COMP1126', 'TUTA', 'TUTOR', 'VAL'),
(6834, 'Fri', '02-03[pm]', 'CPGR', '2', 'COMP1126', 'TUTA', 'TUTOR', 'VAL'),
(6835, 'Fri', '05-06[pm]', 'CR1', '2', 'COMP1126', 'TUTA', 'TUTOR', 'VAL'),
(6836, 'Wed', '09-10[am]', 'CR1', '2', 'COMP1126', '_MIA', 'TUTOR', 'VAL'),
(6837, 'Tues', '02-03[pm]', 'CR1', '2', 'COMP1126', 'TUTA', 'TUTOR', 'VAL'),
(6838, 'Fri', '01-02[pm]', 'CR2', '2', 'COMP1126', 'TUTA', 'TUTOR', 'VAL'),
(6839, 'Mon', '02-03[pm]', 'CR1', '2', 'COMP1126', '_MIA', 'TUTOR', 'VAL'),
(6840, 'Mon', '04-05[pm]', 'CSLAB', '2', 'COMP1127', 'LAB', 'TUTOR', 'VAL'),
(6841, 'Mon', '05-06[pm]', 'CSLAB', '2', 'COMP1127', 'LAB', 'TUTOR', 'VAL'),
(6842, 'Thur', '11-12[am]', 'CSLAB', '2', 'COMP1127', 'LAB', 'TUTOR', 'VAL'),
(6843, 'Thur', '12-01[pm]', 'CSLAB', '2', 'COMP1127', 'LAB', 'TUTOR', 'VAL'),
(6844, 'Tues', '04-05[pm]', 'CLT', '2', 'COMP1127', 'LEC', 'CBE', 'VAL'),
(6845, 'Wed', '02-03[pm]', 'CLT', '2', 'COMP1127', 'LEC', 'CBE', 'VAL'),
(6846, 'Wed', '03-04[pm]', 'CLT', '2', 'COMP1127', 'LEC', 'CBE', 'VAL'),
(6847, 'Tues', '06-07[pm]', 'CR2', '2', 'COMP1127', '_MIA', 'TUTOR', 'VAL'),
(6848, 'Wed', '05-06[pm]', 'CR2', '2', 'COMP1127', '_MIA', 'TUTOR', 'VAL'),
(6849, 'Thur', '05-06[pm]', 'CR2', '2', 'COMP1127', '_MIA', 'TUTOR', 'VAL'),
(6850, 'Thur', '06-07[pm]', 'CR2', '2', 'COMP1127', 'TUTA', 'TUTOR', 'VAL'),
(6851, 'Fri', '02-03[pm]', 'CPGR', '2', 'COMP1127', 'TUTA', 'TUTOR', 'VAL'),
(6852, 'Fri', '05-06[pm]', 'CR1', '2', 'COMP1127', 'TUTA', 'TUTOR', 'VAL'),
(6853, 'Wed', '09-10[am]', 'CR1', '2', 'COMP1127', '_MIA', 'TUTOR', 'VAL'),
(6854, 'Tues', '02-03[pm]', 'CR1', '2', 'COMP1127', 'TUTA', 'TUTOR', 'VAL'),
(6855, 'Fri', '01-02[pm]', 'CR2', '2', 'COMP1127', 'TUTA', 'TUTOR', 'VAL'),
(6856, 'Mon', '02-03[pm]', 'CR1', '2', 'COMP1127', '_MIA', 'TUTOR', 'VAL'),
(6857, 'Tues', '05-06[pm]', 'CSLAB', '2', 'COMP1161', 'LAB', 'EF', 'VAL'),
(6858, 'Tues', '06-07[pm]', 'CSLAB', '2', 'COMP1161', 'LAB', 'EF', 'VAL'),
(6859, 'Wed', '05-06[pm]', 'CSLAB', '2', 'COMP1161', 'LAB', 'EF', 'VAL'),
(6860, 'Wed', '06-07[pm]', 'CSLAB', '2', 'COMP1161', 'LAB', 'EF', 'VAL'),
(6861, 'Thur', '08-09[am]', 'CSLAB', '2', 'COMP1161', 'LAB', 'TUTOR', 'VAL'),
(6862, 'Thur', '09-10[am]', 'CSLAB', '2', 'COMP1161', 'LAB', 'TUTOR', 'VAL'),
(6863, 'Fri', '08-09[am]', 'CSLAB', '2', 'COMP1161', 'LAB', 'TUTOR', 'VAL'),
(6864, 'Fri', '09-10[am]', 'CSLAB', '2', 'COMP1161', 'LAB', 'TUTOR', 'VAL'),
(6865, 'Mon', '06-07[pm]', '_MIA', '2', 'COMP1161', 'LEC', 'AS', 'VAL'),
(6866, 'Mon', '07-08[pm]', '_MIA', '2', 'COMP1161', 'LEC', 'AS', 'VAL'),
(6867, 'Mon', '11-12[am]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6868, 'Mon', '03-04[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6869, 'Mon', '12-01[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'PG', 'VAL'),
(6870, 'Mon', '05-06[pm]', 'CR2', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6871, 'Tues', '10-11[am]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6872, 'Tues', '11-12[am]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6873, 'Tues', '12-01[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6874, 'Wed', '07-08[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6875, 'Tues', '07-08[pm]', 'CR2', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6876, 'Mon', '09-10[am]', 'CR2', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6877, 'Tues', '04-05[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6878, 'Wed', '02-03[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6879, 'Wed', '03-04[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6880, 'Thur', '11-12[am]', 'CR2', '2', 'COMP1161', 'TUTA', 'PG', 'VAL'),
(6881, 'Thur', '12-01[pm]', 'CR2', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6882, 'Fri', '12-01[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6883, 'Tues', '01-02[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6884, 'Fri', '05-06[pm]', 'CR2', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6885, 'Thur', '10-11[am]', 'CR2', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6886, 'Thur', '05-06[pm]', 'CR1', '2', 'COMP1161', 'TUTA', 'TUTOR', 'VAL'),
(6887, 'Mon', '08-09[pm]', '_MIA', '2', 'COMP1210', 'LEC', 'KM', 'VAL'),
(6888, 'Tues', '07-08[pm]', '_MIA', '2', 'COMP1210', 'LEC', 'KM', 'VAL'),
(6889, 'Wed', '04-05[pm]', 'CR2', '2', 'COMP1210', 'TUTA', 'KM', 'VAL'),
(6890, 'Fri', '06-07[pm]', 'CR2', '2', 'COMP1210', 'TUTA', 'TUTOR', 'VAL'),
(6891, 'Wed', '07-08[pm]', 'CR2', '2', 'COMP1210', 'TUTA', 'TUTOR', 'VAL'),
(6892, 'Fri', '01-02[pm]', 'CR1', '2', 'COMP1210', 'TUTA', 'TUTOR', 'VAL'),
(6893, 'Tues', '04-05[pm]', 'CR2', '2', 'COMP1210', 'TUTA', 'TUTOR', 'VAL'),
(6894, 'Fri', '12-01[pm]', 'CR2', '2', 'COMP1210', 'TUTA', 'KM', 'VAL'),
(6895, 'Thur', '05-06[pm]', '_MIA', '2', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(6896, 'Thur', '06-07[pm]', '_MIA', '2', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(6897, 'Wed', '05-06[pm]', '_MIA', '2', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(6898, 'Wed', '02-03[pm]', '_MIA', '2', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(6899, 'Fri', '12-01[pm]', '_MIA', '2', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(6900, 'Fri', '01-02[pm]', '_MIA', '2', 'COMP1220', 'LEC', 'AHT', 'VAL'),
(6901, 'Fri', '02-03[pm]', 'CR2', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6902, 'Wed', '01-02[pm]', 'CR2', '2', 'COMP1220', 'TUTA', 'AHT', 'VAL'),
(6903, 'Fri', '03-04[pm]', 'CR1', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6904, 'Thur', '07-08[pm]', 'CR2', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6905, 'Fri', '04-05[pm]', 'CR1', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6906, 'Mon', '06-07[pm]', 'CR1', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6907, 'Tues', '12-01[pm]', 'CR2', '2', 'COMP1220', 'TUTA', 'AHT', 'VAL'),
(6908, 'Tues', '01-02[pm]', 'CR2', '2', 'COMP1220', 'TUTA', 'AHT', 'VAL'),
(6909, 'Mon', '07-08[pm]', 'CR1', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6910, 'Wed', '03-04[pm]', 'CR2', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6911, 'Tues', '03-04[pm]', 'CR1', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6912, 'Wed', '06-07[pm]', 'CLT', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6913, 'Wed', '07-08[pm]', 'CLT', '2', 'COMP1220', 'TUTA', 'TUTOR', 'VAL'),
(6918, 'Mon', '05-06[pm]', '_MIA', '2', 'COMP2170', 'LEC', 'CA', 'VAL'),
(6919, 'Mon', '06-07[pm]', '_MIA', '2', 'COMP2170', 'LEC', 'CA', 'VAL'),
(6920, 'Tues', '08-09[pm]', '_MIA', '2', 'COMP2170', 'LEC', 'CA', 'VAL'),
(6921, 'Fri', '09-10[am]', 'CR2', '2', 'COMP2170', 'TUTA', 'TUTOR', 'VAL'),
(6922, 'Thur', '09-10[am]', 'CR1', '2', 'COMP2170', 'TUTA', 'TUTOR', 'VAL'),
(6923, 'Mon', '03-04[pm]', 'CPGR', '2', 'COMP2170', 'TUTA', 'CA', 'VAL'),
(6924, 'Wed', '02-03[pm]', 'CPGR', '2', 'COMP2170', 'TUTA', 'TUTOR', 'VAL'),
(6925, 'Wed', '05-06[pm]', 'CPGR', '2', 'COMP2170', 'TUTA', 'TUTOR', 'VAL'),
(6926, 'Mon', '04-05[pm]', 'PCLT', '2', 'COMP2211', 'LEC', 'DC', 'VAL'),
(6927, 'Tues', '01-02[pm]', '_MIA', '2', 'COMP2211', 'LEC', 'DC', 'VAL'),
(6928, 'Fri', '11-12[am]', 'PCLT', '2', 'COMP2211', 'LEC', 'DC', 'VAL'),
(6929, 'Tues', '10-11[am]', 'CR2', '2', 'COMP2211', 'TUTA', 'DC', 'VAL'),
(6930, 'Thur', '12-01[pm]', 'CR1', '2', 'COMP2211', 'TUTA', 'DC', 'VAL'),
(6931, 'Wed', '05-06[pm]', 'CR1', '2', 'COMP2211', 'TUTA', 'TUTOR', 'VAL'),
(6932, 'Tues', '05-06[pm]', 'CR1', '2', 'COMP2211', 'TUTA', 'TUTOR', 'VAL'),
(6933, 'Mon', '02-03[pm]', 'CPGR', '2', 'COMP2211', 'TUTA', 'DC', 'VAL'),
(6934, 'Wed', '12-01[pm]', 'FLAB', '2', 'COMP2340', 'LAB', 'SE', 'VAL'),
(6935, 'Wed', '01-02[pm]', 'FLAB', '2', 'COMP2340', 'LAB', 'SE', 'VAL'),
(6936, 'Fri', '12-01[pm]', 'CSLAB', '2', 'COMP2340', 'LAB', '_MIA', 'VAL'),
(6937, 'Fri', '01-02[pm]', 'CSLAB', '2', 'COMP2340', 'LAB', '_MIA', 'VAL'),
(6938, 'Wed', '03-04[pm]', '_MIA', '2', 'COMP2340', 'LEC', 'SE', 'VAL'),
(6939, 'Thur', '10-11[am]', '_MIA', '2', 'COMP2340', 'LEC', 'SE', 'VAL'),
(6940, 'Tues', '09-10[am]', 'CR1', '2', 'COMP2340', 'TUTA', 'SE', 'VAL'),
(6941, 'Tues', '02-03[pm]', 'CR2', '2', 'COMP2340', 'TUTA', 'TUTOR', 'VAL'),
(6942, 'Mon', '09-10[am]', 'CPGR', '2', 'COMP2340', 'TUTA', 'SE', 'VAL'),
(6943, 'Tues', '04-05[pm]', 'CPGR', '2', 'COMP2340', 'TUTA', 'TUTOR', 'VAL'),
(6944, 'Fri', '10-11[am]', 'CR1', '2', 'COMP2340', 'TUTA', 'TUTOR', 'VAL'),
(6952, 'Tues', '08-09[am]', 'CR2', '2', 'COMP3161', 'TUTA', 'TUTOR', 'VAL'),
(6953, 'Thur', '05-06[pm]', 'CSLAB', '2', 'COMP3192', 'LAB', 'DF', 'VAL'),
(6954, 'Thur', '06-07[pm]', 'CSLAB', '2', 'COMP3192', 'LAB', 'DF', 'VAL'),
(6955, 'Fri', '10-11[am]', 'CSLAB', '2', 'COMP3192', 'LAB', 'DF', 'VAL'),
(6956, 'Fri', '11-12[am]', 'CSLAB', '2', 'COMP3192', 'LAB', 'DF', 'VAL'),
(6957, 'Tues', '11-12[am]', 'CLT', '2', 'COMP3192', 'LEC', 'DF', 'VAL'),
(6958, 'Mon', '03-04[pm]', '_MIA', '2', 'COMP3702', 'LEC', 'DC', 'VAL'),
(6959, 'Tues', '04-05[pm]', '_MIA', '2', 'COMP3702', 'LEC', 'DC', 'VAL'),
(6960, 'Fri', '01-02[pm]', '_MIA', '2', 'COMP3702', 'LEC', 'DC', 'VAL'),
(6961, 'Mon', '01-02[pm]', 'CR1', '2', 'COMP3702', 'TUTA', 'DC', 'VAL'),
(6962, 'Mon', '10-11[am]', 'CLT', '2', 'COMP3801', 'LEC', 'PG', 'VAL'),
(6963, 'Tues', '12-01[pm]', 'CLT', '2', 'COMP3801', 'LEC', 'PG', 'VAL'),
(6964, 'Thur', '08-09[am]', 'FLAB', '2', 'COMP3801', 'LEC', 'PG', 'VAL'),
(6965, 'Thur', '09-10[am]', 'FLAB', '2', 'COMP3801', 'LEC', 'PG', 'VAL'),
(6966, 'Mon', '11-12[am]', 'CPGR', '2', 'COMP3801', 'TUTA', 'PG', 'VAL'),
(6967, 'Tues', '10-11[am]', 'NRM', '2', 'COMP3911', 'INTP', 'CB', 'VAL'),
(6968, 'Tues', '11-12[am]', 'NRM', '2', 'COMP3911', 'INTP', 'CB', 'VAL'),
(6971, 'Tues', '10-11[am]', 'NRM', '2', 'COMP3912', 'INTP', 'CB', 'VAL'),
(6972, 'Tues', '11-12[am]', 'NRM', '2', 'COMP3912', 'INTP', 'CB', 'VAL'),
(6975, 'Mon', '12-01[pm]', 'PCLT', '2', 'INFO2100', 'LEC', 'RAB', 'VAL'),
(6976, 'Wed', '12-01[pm]', 'PCLT', '2', 'INFO2100', 'LEC', 'RAB', 'VAL'),
(6977, 'Wed', '01-02[pm]', 'PCLT', '2', 'INFO2100', 'LEC', 'RAB', 'VAL'),
(6978, 'Thur', '10-11[am]', 'CR1', '2', 'INFO2100', 'TUTA', 'RAB', 'VAL'),
(6979, 'Thur', '11-12[am]', 'CR1', '2', 'INFO2100', 'TUTA', 'TUTOR', 'VAL'),
(6980, 'Wed', '12-01[pm]', '_MIA', '2', 'INFO3110', 'LEC', 'CB', 'VAL'),
(6981, 'Wed', '01-02[pm]', '_MIA', '2', 'INFO3110', 'LEC', 'CB', 'VAL'),
(6982, 'Fri', '09-10[am]', '_MIA', '2', 'INFO3110', 'LEC', 'CB', 'VAL'),
(6983, 'Thur', '11-12[am]', 'CPGR', '2', 'INFO3110', 'TUTA', 'CB', 'VAL'),
(6984, 'Fri', '10-11[am]', 'CR2', '2', 'INFO3110', 'TUTA', 'TUTOR', 'VAL'),
(6985, 'Thur', '10-11[am]', 'CPGR', '2', 'INFO3110', 'TUTA', 'TUTOR', 'VAL'),
(6986, 'Fri', '03-04[pm]', 'CPGR', '2', 'INFO3110', 'TUTA', 'CB', 'VAL'),
(6987, 'Mon', '12-01[pm]', 'CLT', '2', 'INFO3155', 'LEC', 'CBE', 'VAL'),
(6988, 'Tues', '03-04[pm]', 'CLT', '2', 'INFO3155', 'LEC', 'CBE', 'VAL'),
(6989, 'Fri', '12-01[pm]', 'CLT', '2', 'INFO3155', 'LEC', 'CBE', 'VAL'),
(6990, 'Wed', '04-05[pm]', 'CR1', '2', 'INFO3155', 'TUTA', 'TUTOR', 'VAL'),
(6991, 'Mon', '01-02[pm]', 'CR2', '2', 'INFO3155', 'TUTA', 'CBE', 'VAL'),
(6992, 'Tues', '05-06[pm]', 'CR2', '2', 'INFO3155', 'TUTA', 'TUTOR', 'VAL'),
(6993, 'Wed', '10-11[am]', 'CSLAB', '2', 'INFO3180', 'LAB', 'DB', 'VAL'),
(6994, 'Wed', '11-12[am]', 'CSLAB', '2', 'INFO3180', 'LAB', 'DB', 'VAL'),
(6995, 'Wed', '08-09[am]', 'B', '2', 'INFO3180', 'LEC', 'DB', 'VAL'),
(6996, 'Wed', '09-10[am]', '_MIA', '2', 'INFO3180', 'LEC', 'DB', 'VAL'),
(6997, 'Tues', '11-12[am]', 'CPGR', '2', 'INFO3180', 'TUTA', 'TUTOR', 'VAL'),
(6998, 'Tues', '09-10[am]', 'CPGR', '2', 'INFO3180', 'TUTA', 'TUTOR', 'VAL'),
(6999, 'Fri', '03-04[pm]', 'CR2', '2', 'INFO3180', 'TUTA', 'TUTOR', 'VAL'),
(7000, 'Wed', '03-04[pm]', '_MIA', '2', 'INFO3435', 'LEC', '_MIA', 'VAL'),
(7001, 'Thur', '11-12[am]', 'CLT', '2', 'INFO3435', 'LEC', '_MIA', 'VAL'),
(7002, 'Fri', '10-11[am]', 'CLT', '2', 'INFO3435', 'LEC', '_MIA', 'VAL'),
(7003, 'Mon', '04-05[pm]', 'CPGR', '2', 'INFO3435', 'TUTA', '_MIA', 'VAL'),
(7004, 'Fri', '11-12[am]', 'CR2', '2', 'INFO3435', 'TUTA', 'TUTOR', 'VAL'),
(7005, 'Tues', '01-02[pm]', 'CLT', '2', 'SWEN3165', 'LEC', 'EF', 'VAL'),
(7006, 'Thur', '10-11[am]', 'CLT', '2', 'SWEN3165', 'LEC', 'EF', 'VAL'),
(7007, 'Fri', '04-05[pm]', 'FLAB', '2', 'SWEN3165', 'LEC', 'EF', 'VAL'),
(7008, 'Tues', '03-04[pm]', 'CR2', '2', 'SWEN3165', 'TUTA', 'TUTOR', 'VAL'),
(7009, 'Tues', '10-11[am]', 'CPGR', '2', 'SWEN3165', 'TUTA', 'EF', 'VAL'),
(7010, 'Mon', '02-03[pm]', 'CLT', '2', 'SWEN3185', 'LEC', 'EKM', 'VAL'),
(7011, 'Tues', '09-10[am]', 'CLT', '2', 'SWEN3185', 'LEC', 'EKM', 'VAL'),
(7012, 'Thur', '11-12[am]', '_MIA', '2', 'SWEN3185', 'LEC', 'EKM', 'VAL'),
(7013, 'Tues', '12-01[pm]', 'CPGR', '2', 'SWEN3185', 'TUTA', 'EKM', 'VAL'),
(7014, 'Thur', '09-10[am]', 'CR2', '2', 'SWEN3185', 'TUTA', 'TUTOR', 'VAL'),
(7015, 'Tues', '03-04[pm]', 'NRM', '2', 'SWEN3920', '_MIA', 'CBE', 'VAL'),
(7016, 'Tues', '04-05[pm]', 'NRM', '2', 'SWEN3920', '_MIA', 'CBE', 'VAL'),
(7017, 'Fri', '11-12[am]', 'NRM', '2', 'SWEN3920', 'TUTA', 'CBE', 'VAL');

-- --------------------------------------------------------

--
-- Table structure for table `hash_file`
--

CREATE TABLE IF NOT EXISTS `hash_file` (
  `FileHash` varchar(100) NOT NULL,
  `FileTime` int(11) DEFAULT NULL,
  `Filename` varchar(100) DEFAULT NULL,
  `FileSem` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marking`
--

CREATE TABLE IF NOT EXISTS `marking` (
  `Id` int(11) NOT NULL,
  `CourseCode` varchar(14) DEFAULT NULL,
  `userInitial` varchar(9) DEFAULT NULL,
  `SemesterId` varchar(1) DEFAULT NULL,
  `AssignmentCode` varchar(3) DEFAULT NULL,
  `AssignmentDue` datetime DEFAULT NULL,
  `MarkingDue` datetime DEFAULT NULL,
  `SubmissionNumber` int(11) DEFAULT NULL,
  `GradingRate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `RoomId` varchar(10) NOT NULL,
  `RoomName` varchar(50) DEFAULT NULL,
  `RoomNameSRU` varchar(50) DEFAULT NULL,
  `RoomType` enum('TUTROOM','LECROOM','LABROOM','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomId`, `RoomName`, `RoomNameSRU`, `RoomType`) VALUES
('A', 'Physics Lecture Theater A', 'Physics Lecture Theatre A', 'LECROOM'),
('B', 'Physics Lecture Theater B', 'Physics Lecture Theatre B', 'LECROOM'),
('BLT', 'Biology Lecture Theatre', 'Biology Lecture Theatre', 'LECROOM'),
('C', 'Physics Lecture Theater C', 'Physics Lecture Theatre C', 'LECROOM'),
('C2', 'Chemistry Lecture Theater 2', 'C2 - Chemistry Lecture Theatre 2', 'LECROOM'),
('C2*', 'Chemistry Lecture Theater 2', 'C2 - Chemistry Lecture Theatre', 'LECROOM'),
('C3', 'Chemistry Lecture Theater 2', 'C3 - Chemistry Lecture Theatre', 'LECROOM'),
('C5', 'Chemistry Lecture Theater 5', 'C5 - Chemistry Lecture Theatre', 'LECROOM'),
('C7', 'Chemistry Lecture Theater 7', 'C7 - Chemistry Lecture Theatre', 'LECROOM'),
('CHEM', 'PA Chem Lect Theatre', 'PA Chem Lect Theatre', 'LECROOM'),
('CLT', 'Computing Lecture Room', 'Computing Lecture Room', 'LECROOM'),
('CP', 'Chemisty Physics Lecture Theatre', 'Chemistry Physics Lecture Theatre', 'LECROOM'),
('CPGR', 'Computing Postgraduate Room 1', 'POST GRAD COMPUTER ROOM', 'TUTROOM'),
('CR1', 'Computer Science Tutorial Room 1', 'Computer Science Tutorial Room 1', 'TUTROOM'),
('CR2', 'Computer Science Tutorial Room 2', 'Computer Science Tutorial Room 2', 'TUTROOM'),
('CSLAB', 'Computer Science Lab 1', 'Computer Lab Lab 1', 'LABROOM'),
('CSLAB1', 'Computer Science Lab 1', 'PAS Computer Science Lab 1', 'LABROOM'),
('FLAB', 'FST Computer Science Lab 2', 'PAS Computer Science Lab 2', 'LABROOM'),
('FLAB1', 'FPAS Computer Science Lab', 'PAS Comp Sci Lab', 'LABROOM'),
('LAW2', 'LAW SEMINAR ROOM 2 ', 'LAW SEMINAR ROOM 2 ', 'LECROOM'),
('M1', 'Math Lecture Theatre 1', 'Math Lecture Theatre 1', 'LECROOM'),
('NRM', 'No Room', '', ''),
('PCLT', 'Pre-Clinical Lecture Theatre', 'PAS: PreClinical Lecture Theatre', 'LECROOM'),
('PLT', 'Physiology Lecture Theatre', 'PAS: Physiology Lect Theatre', 'LECROOM'),
('S', 'Science Lecture Theater', 'PAS: Science Lecture Theatre', 'LECROOM'),
('SEL', 'Software Engineering Lab', 'Software Engineering Lab', 'TUTROOM'),
('WJCL', '', 'West Jam Camp Comp Lab', 'LABROOM'),
('WJCR', 'Western Jamaica Conference Room', 'Western Jamaica Conference Room', 'LECROOM');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `SemesterId` varchar(1) NOT NULL,
  `SemesterDesc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `password` varchar(140) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `role` smallint(6) DEFAULT NULL,
  `uwiId` varchar(8) DEFAULT NULL,
  `userInitial` varchar(9) DEFAULT NULL,
  `salutation` enum('DR','MS','MR','MRS','NA','TBA1','TBA2') DEFAULT NULL,
  `marker` enum('YES','NO') DEFAULT NULL,
  `tutor` enum('YES','NO') DEFAULT NULL,
  `lecturer` enum('YES','NO') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `firstname`, `lastname`, `password`, `status`, `role`, `uwiId`, `userInitial`, `salutation`, `marker`, `tutor`, `lecturer`) VALUES
(23, 'test1@gmail.com', 'ALLY', 'TAYLOR', '', 0, 0, '10000000', 'AHT', 'DR', 'NO', 'NO', 'YES'),
(24, 'test2@gmail.com', 'ELLY', 'MADISON', '', 0, 0, '10000001', 'EKM', 'DR', 'NO', 'NO', 'YES'),
(25, 'test3@gmail.com', 'KARL', 'DAVIS', '', 0, 0, '10000002', 'KD', 'MR', 'NO', 'NO', 'YES'),
(26, 'test4@gmail.com', 'GINA', 'MALLET', '', 0, 0, '10000003', 'GM', 'DR', 'NO', 'NO', 'YES'),
(27, 'test5@gmail.com', 'DAVID', 'CAMMY', '', 0, 0, '10000004', 'DC', 'DR', 'NO', 'NO', 'YES'),
(28, 'test6@gmail.com', 'DALTON', 'DONALDSON', '', 0, 0, '10000005', 'DD', 'MR', 'NO', 'NO', 'YES'),
(29, 'test7@gmail.com', 'DAVE', 'BASON', '', 0, 0, '10000006', 'DB', 'MR', 'NO', 'NO', 'YES'),
(30, 'test8@gmail.com', 'RODNEY', 'ADDY', '', 0, 0, '10000007', 'RA', 'MR', 'NO', 'NO', 'YES'),
(31, 'test9@gmail.com', 'EVERTON', 'FREDDY', '', 0, 0, '10000008', 'EF', 'MR', 'NO', 'NO', 'YES'),
(32, 'test10@gmail.com', 'KIRN', 'MADDISON', '', 0, 0, '10000009', 'KM', 'MR', 'NO', 'NO', 'YES'),
(33, 'test11@gmail.com', 'CALITO', 'BRINE', '', 0, 0, '10000010', 'CB', 'MR', 'NO', 'NO', 'YES'),
(34, 'test12@gmail.com', 'PETER', 'GRADEY', '', 0, 0, '10000011', 'PG', 'MR', 'NO', 'NO', 'YES'),
(35, 'test13@gmail.com', 'COLE', 'BROWN', '', 0, 0, '10000012', 'CBE', 'DR', 'NO', 'NO', 'YES'),
(36, 'test14@gmail.com', 'ANDY', 'STAINS', '', 0, 0, '10000013', 'AS', 'MR', 'NO', 'NO', 'YES'),
(37, 'test15@gmail.com', 'DAVE', 'FOLD', '', 0, 0, '10000014', 'DF', 'DR', 'NO', 'NO', 'YES'),
(38, 'test16@gmail.com', 'RAYMOND', 'BATCH', '', 0, 0, '10000015', 'RAB', 'MR', 'NO', 'NO', 'YES'),
(39, 'test17@gmail.com', 'CYRENE', 'ANTY', '', 0, 0, '10000016', 'CA', 'MRS', 'NO', 'NO', 'YES'),
(40, 'test18@gmail.com', 'SONNY', 'EDGE', '', 0, 0, '10000017', 'SE', 'DR', 'NO', 'NO', 'YES'),
(41, 'test19@gmail.com', 'DAN', 'ROSS', '', 0, 0, '10000018', 'DR', 'MR', 'NO', 'NO', 'YES'),
(42, 'test20@gmail.com', 'DINO', 'JARED', '', 0, 0, '10000019', 'DJ', 'MR', 'NO', 'NO', 'YES'),
(43, 'test21@gmail.com', 'TUTOR', 'TUTOR', 'pbkdf2:sha1:1000$trCGt0oC$d3e295722d870d896e90200d326f0444bebb0650', 1, 0, 'TUTOR', 'TUTOR', 'MR', 'NO', 'YES', 'NO'),
(45, 'admin@gmail.com', 'Admin', 'Admin', 'pbkdf2:sha1:1000$d6umXyea$406a29a435f16fd13beed272f2539e9ad1268c12', 1, 1, '10000020', 'KJM', 'MR', 'NO', 'NO', 'YES'),
(46, 'quewayne_cooze@yahoo.com', 'Quewayne', 'Grant', 'pbkdf2:sha1:1000$Z9LlG9wj$9f14c1a20693f6e2b7de72330361395dea666082', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'quewayne.grant@yahoo.com', 'Quewayne', 'Grant', 'pbkdf2:sha1:1000$T2hZHn0W$b825c4ed6bbe19cbbadae63e82fc72da0f4ad7de', 1, 1, '10000021', 'QG', 'DR', 'NO', 'YES', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment_type`
--
ALTER TABLE `assignment_type`
  ADD PRIMARY KEY (`AssignmentCode`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseCode`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`CourseType`);

--
-- Indexes for table `entry_clone`
--
ALTER TABLE `entry_clone`
  ADD PRIMARY KEY (`EntryID`);

--
-- Indexes for table `hash_file`
--
ALTER TABLE `hash_file`
  ADD PRIMARY KEY (`FileHash`);

--
-- Indexes for table `marking`
--
ALTER TABLE `marking`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomId`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`SemesterId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_user_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entry_clone`
--
ALTER TABLE `entry_clone`
  MODIFY `EntryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7018;
--
-- AUTO_INCREMENT for table `marking`
--
ALTER TABLE `marking`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
