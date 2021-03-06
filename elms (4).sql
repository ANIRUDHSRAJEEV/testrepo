-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 04:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `dept_code` int(11) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phonenumber` varchar(100) DEFAULT NULL,
  `EmpId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`, `dept_code`, `Department`, `FirstName`, `LastName`, `EmailId`, `Gender`, `Dob`, `Address`, `City`, `Country`, `Phonenumber`, `EmpId`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-10-30 11:42:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'hodcse', '4b531bac026784325edc7cef32aa84de', '2021-05-16 03:28:12', 2, 'Computer Science Engineering', 'Hema', 'Menon', 'TS323@simat.ac.in', 'Female', '27 June, 2021', 'Pattambi', 'Pattambi', 'India', '9486234070', 'TS323'),
(3, 'hodcivil', '084813880418133c344a57eb4a832182', '2021-05-16 03:28:12', 1, 'Civil Engineering', 'Sudheer', 'K.V', 'sudheerkvasu@gmail.com', 'Male', '1 June, 2014', 'Karukayil House,Chittilappilly,Thrissur', 'Thrissur', 'India', '9961407507', 'TS168'),
(4, 'hodme', '0f5037c2f888703a596cfc666b6419d2', '2021-05-16 03:30:23', 5, 'Mechanical Engineering', 'PRAVEEN ', 'KUMAR.K', 'praveenkumar.k@simat.ac.in', 'Male', '9 November, 1986', 'KRISHNA KRIPA, SOWPARNIKA NAGAR, INDUSTRIAL ESTATE, PALAKKAD- 678009', 'PALAKKAD', 'INDIA', '8891441031', 'TS140'),
(5, 'hodeee', '49576cc3668a776add828926b3e159aa', '2021-05-16 03:30:23', 4, 'Electrical And Electronics Engineering', 'Renjith', 'PC', 'renjith.pc@simat.ac.in', 'Male', '26 March, 1978', 'VADAKKATH VALAPPIL HOUSE, VATTAMKULAM PO, MALAPPURAM DT, 679578.', 'Vattamkulam', 'India', '9567392624', 'TS200'),
(6, 'hodece', 'd084c9c8d1a5ae7e4a057626dbbcf04d', '2021-05-16 03:31:56', 6, 'Electronics And Communication Engineering', 'Sushma', 'M', 'sushma.m@simat.ac.in', 'Female', '17 November, 1974', '7/502F, THRIPTHI, PALAKKAD MAIN RD - MELE PATTAMBI- 679306', 'Pattambi', 'India', '9846277017', 'TS100'),
(7, 'hodash', '034f89e51697aa8fed923fd77788a5ce', '2021-05-16 03:31:56', 3, 'Applied Science & Humanities', 'Dr.George', 'C.T', 'george.ct@simat.ac.in', 'Male', '12 August, 1965', 'Chakkalakkal House, Cheerachi, Ollur, Thrissur, 680306', 'Thrissur', 'India', '9446239225', 'TS091');

-- --------------------------------------------------------

--
-- Table structure for table `bonafide_cert`
--

CREATE TABLE `bonafide_cert` (
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Quota` varchar(255) NOT NULL,
  `AdmssnYear` varchar(20) NOT NULL,
  `CurrYear` varchar(20) NOT NULL,
  `LoanYear` varchar(20) NOT NULL,
  `AdmssnNo` varchar(20) NOT NULL,
  `BankName` varchar(255) NOT NULL,
  `BankBranch` varchar(255) NOT NULL,
  `DocumentNumber` varchar(255) DEFAULT NULL,
  `DateTime` timestamp NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bonafide_cert`
--

INSERT INTO `bonafide_cert` (`FirstName`, `LastName`, `Department`, `Quota`, `AdmssnYear`, `CurrYear`, `LoanYear`, `AdmssnNo`, `BankName`, `BankBranch`, `DocumentNumber`, `DateTime`, `id`) VALUES
('dfdf', 'dfdf', 'cse', 'MGT', '2020', '1', '1', 'fddf', 'dffd', 'dfddfdf', '0', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(5, 'Computer Science Engineering', 'CSE', 'CS001', '2021-05-06 16:03:26'),
(6, 'Applied Science & Humanities', 'AS&H', 'ASH001', '2021-05-08 03:57:06'),
(7, 'Civil Engineering', 'CE', 'CE001', '2021-05-08 03:57:38'),
(8, 'Electrical And Electronics Engineering', 'EEE', 'EE001', '2021-05-08 06:17:32'),
(9, 'Mechanical Engineering', 'ME', 'ME001', '2021-05-08 06:17:57'),
(10, 'Electronics And Communication Engineering', 'ECE', 'EC001', '2021-05-08 06:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `nofleaves` int(11) NOT NULL DEFAULT 0,
  `lv_casual` int(11) DEFAULT 0,
  `lv_lop` int(11) DEFAULT 0,
  `lv_commuted_half` int(11) DEFAULT 0,
  `lv_commuted_full` int(11) DEFAULT 0,
  `lv_earned` int(11) DEFAULT 0,
  `dept_code` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`, `nofleaves`, `lv_casual`, `lv_lop`, `lv_commuted_half`, `lv_commuted_full`, `lv_earned`, `dept_code`) VALUES
(3, 'TS327', 'ADITHYAN ', 'K', 'adithyan.k@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Male', '30 November, 2021', 'Computer Science Engineering', '------', '------', 'INDIA', '8593976106', 1, '2021-05-06 15:29:46', 0, 0, 0, 0, 0, 0, 2),
(4, 'TS323', 'HEMA ', 'MENON', 'TS323@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '30 May, 2021', 'Computer Science Engineering', '---------', '--------', 'INDIA', '9486234070', 1, '2021-05-06 15:33:51', 0, 0, 0, 0, 0, 0, 2),
(5, 'TS329', 'ASWATHY', 'T.K', 'aswathy.tk@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '24 September, 1996', 'Computer Science Engineering', 'THEKKUMMURI HOUSE, SN COLLEGE ROAD SHORANUR 2', 'SHORANUR', 'INDIA', '9961100606', 1, '2021-05-06 15:38:05', 0, 0, 0, 0, 0, 0, 2),
(6, 'TS006', 'JAYASREE N', 'VETTATH', 'jayasree.N.VETTATH@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '18 May, 1987', 'Computer Science Engineering', 'SREEVIHAR, KUDALLUR PO, PALAKKAD DIST', 'KUDALLUR', 'INDIA', '9562983812', 1, '2021-05-06 15:41:25', 0, 0, 0, 0, 0, 0, 2),
(7, 'JYO', 'JYOTHIS', 'K.P', 'Jyothish.kp@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Male', '27 May, 1985', 'Computer Science Engineering', 'PATTAMBI', 'PATTAMBI', 'INDIA', '9496701234', 1, '2021-05-06 15:43:30', 0, 0, 0, 0, 0, 0, 2),
(8, 'TS182', 'SREESHMA', 'K', 'reha.1990@gmail.com', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '28 September, 1990', 'Computer Science Engineering', 'KOOTTUPARAMBIL HOUSE, NAGALASSERY PO, KOOTTANAD, PALAKKAD - 679533', 'KOOTTANAD', 'INDIA', '9995488594', 1, '2021-05-06 15:47:03', 0, 0, 0, 0, 0, 0, 2),
(9, 'TS328', 'SUSMITHA', 'A', 'susmitha@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '30 November, 2000', 'Computer Science Engineering', '---------', '----------', 'INDIA', '9656776147', 1, '2021-05-06 15:50:55', 0, 0, 0, 0, 0, 0, 2),
(10, 'TS251', 'YADU P', 'DEV', 'yadu@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Male', '19 May, 1991', 'Computer Science Engineering', '-----------', '------------', 'INDIA', '9961449500', 1, '2021-05-06 15:52:59', 0, 0, 0, 0, 0, 0, 2),
(11, 'NT027', 'DHANYA', 'T.N', 'dhanya.tn@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '6 May, 2021', 'Computer Science Engineering', '---------', '----------', 'INDIA', '9400751420', 1, '2021-05-06 15:55:00', 0, 0, 0, 0, 0, 0, 2),
(12, 'NT103', 'RAJITHA', 'M.R', 'rajitha.mr@simat.ac.in', 'a0443287c35fdbc5c24f698f66995e6c', 'Female', '23 January, 1984', 'Computer Science Engineering', '----------', '-----------', 'INDIA', '9745856340', 1, '2021-05-06 15:57:10', 0, 0, 0, 0, 0, 0, 2),
(13, 'ts091', 'Dr.George ', 'C.T', 'george.ct@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Male', '12 August, 1955', 'Applied Science & Humanities', 'Chakkalakkal House, Cheerachi, Ollur, Thrissur, 680306', 'Thrissur', 'India', '9446239225', 1, '2021-05-08 04:15:43', 0, 0, 0, 0, 0, 0, 3),
(14, 'TS051', 'Bagyasree', 'P.G', 'bagyasree@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Female', '20 October, 1980', 'Applied Science & Humanities', 'Pulluttiparambil (H),Mulagunnathukavu(PO),Thrissur-680581', 'Thrissur', 'India', '9947830100', 1, '2021-05-08 04:21:12', 0, 0, 0, 0, 0, 0, 3),
(15, 'KTM', 'Dr. K.T', 'Madhavan', 'ktm@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Male', '1 January, 1960', 'Applied Science & Humanities', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '4662370300', 1, '2021-05-08 04:25:27', 0, 0, 0, 0, 0, 0, 3),
(16, 'TS012', 'HITHES', 'P', 'hithes@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Male', '30 January, 1978', 'Applied Science & Humanities', 'Pathiyil Mana, Mezhathur, Pin : 679 534 ', 'Mezhathur', 'India', '9745065741', 1, '2021-05-08 04:28:49', 0, 0, 0, 0, 0, 0, 3),
(17, 'TS322', 'Jishnu ', 'B.H', 'jishnubh777@gmail.com', 'e069f4eebcca7138e29805831bd8e03a', 'Male', '30 November, 1971', 'Applied Science & Humanities', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9645381675', 1, '2021-05-08 04:32:30', 0, 0, 0, 0, 0, 0, 3),
(18, 'TS239', 'Jishnu', 'Namboothirippad', 'jishnamboodiripad@gmail.com', '33382c25ff4280d9d3a82480c455e6b7', 'Male', '10 December, 1986', 'Applied Science & Humanities', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9746330927', 1, '2021-05-08 04:35:02', 0, 0, 0, 0, 0, 0, 3),
(19, 'TS315', 'Jyothi', 'K.K', 'jyothikk453348@gmail.com', '33382c25ff4280d9d3a82480c455e6b7', 'Female', '13 October, 1988', 'Applied Science & Humanities', 'Kakkassery House, Perumpilavu Post, Anakkallu, Kunnamkulam Via, Thrissur, 680519', 'Thrissur', 'India', '9946942933', 1, '2021-05-08 04:38:31', 0, 0, 0, 0, 0, 0, 3),
(20, 'TS320', 'Sini', 'M', 'sini.m@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Female', '30 November, 1975', 'Applied Science & Humanities', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9961497142', 1, '2021-05-08 04:41:10', 0, 0, 0, 0, 0, 0, 3),
(21, 'TS281', 'Suraj', 'Kumar E.S', 'suraj.es@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Male', '1 May, 1993', 'Applied Science & Humanities', 'Elavanaparambil House, Kallur P.O, Thrissur, 680317', 'Thrissur', 'India', '9744641138', 1, '2021-05-08 04:44:23', 0, 0, 0, 0, 0, 0, 3),
(22, 'NT029', 'Mini', 'O.P', '-------@simat.ac.in', '33382c25ff4280d9d3a82480c455e6b7', 'Female', '1 January, 1980', 'Applied Science & Humanities', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9495192049', 1, '2021-05-08 04:56:39', 0, 0, 0, 0, 0, 0, 3),
(23, 'TS168', 'Sudheer', 'K.V', 'sudheerkvasu@gmail.com', 'd225af16000fe27f65ee5b729c11cd01', 'Male', '15 May, 1970', 'Civil Engineering', 'Karukayil House,Chittilappilly,Thrissur', 'Thrissur', 'India', '9961407507', 1, '2021-05-08 04:59:25', 0, 0, 0, 0, 0, 0, 1),
(24, 'TS233', 'Aswathy', 'P.G', 'aswathy4921@gmail.com', 'd225af16000fe27f65ee5b729c11cd01', 'Female', '24 October, 1988', 'Civil Engineering', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9400774570', 1, '2021-05-08 05:01:43', 0, 0, 0, 0, 0, 0, 1),
(25, 'TS303', 'Durgalakshmi ', 'K.M', 'durgalakshmi.km@simat.ac.in', 'd225af16000fe27f65ee5b729c11cd01', 'Female', '5 February, 1992', 'Civil Engineering', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9947052104', 1, '2021-05-08 05:04:14', 0, 0, 0, 0, 0, 0, 1),
(26, 'TS100', 'Sankaranarayanan', 'K.M', 'sankaranarayanan.km@simat.ac.in', 'd225af16000fe27f65ee5b729c11cd01', 'Male', '24 March, 1985', 'Civil Engineering', 'Kavapra Marath Mana, (P.O) Mudur, Vattamkulam, Malappuram, 679578', 'Vattamkulam', 'India', '9048166144', 1, '2021-05-08 05:07:14', 0, 0, 0, 0, 0, 0, 1),
(27, 'TS244', 'Sreekanth', 'E.M', 'srk.edassery@gmail.com', 'd225af16000fe27f65ee5b729c11cd01', 'Male', '18 December, 1989', 'Civil Engineering', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9746407681', 1, '2021-05-08 05:09:43', 0, 0, 0, 0, 0, 0, 1),
(28, 'TS325', 'Swathy', 'Narayanan N.M', 'Swathy.nm048@gmail.com', 'd225af16000fe27f65ee5b729c11cd01', 'Female', '30 November, 1991', 'Civil Engineering', 'UNAVAILABLE', 'UNAVAILABLE', 'India', '9048043622', 1, '2021-05-08 05:12:34', 0, 0, 0, 0, 0, 0, 1),
(29, 'NT228', 'Aswathi ', 'P.P', 'aswathi.p.p@simat.ac.in', 'd225af16000fe27f65ee5b729c11cd01', 'Female', '7 July, 1992', 'Civil Engineering', 'PUTHANPURAKKAL HO CHATTIPARAMBA PO PARAYARANGADI MALAPPURAM PIN 676504', 'Parayarangadi', 'India', '9495305100', 1, '2021-05-08 05:25:25', 0, 0, 0, 0, 0, 0, 1),
(30, 'TS002', 'THANKACHEN', 'P.V', 'thankachenpv@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Male', '4 May, 1958', 'Electrical And Electronics Engineering', 'HOD, SIMAT, VAVANOOR', '----------', 'INDIA', '9447754798', 1, '2021-05-08 06:23:40', 0, 0, 0, 0, 0, 0, 4),
(31, 'TS200', 'RENJITH', 'P.C', 'renjith.pc@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Male', '26 March, 1978', 'Electrical And Electronics Engineering', 'VADAKKATH VALAPPIL HOUSE, VATTAMKULAM PO, MALAPPURAM DT, 679578.', 'VATTAMKULAM', 'INDIA', '9567392624', 1, '2021-05-08 06:28:09', 0, 0, 0, 0, 0, 0, 4),
(32, 'TS317', 'GANGA', 'V', 'gangapwarrier@gmail.com', '532fbe80d3e335d1eabb893a9936e647', 'Female', '8 May, 2021', 'Electrical And Electronics Engineering', '--------', '---------', 'INDIA', '9895992832', 1, '2021-05-08 06:56:36', 0, 0, 0, 0, 0, 0, 4),
(33, 'TS106', 'REJANEESH', 'R', 'rejaneeshpanicker@gmail.com', '532fbe80d3e335d1eabb893a9936e647', 'Male', '26 May, 1982', 'Electrical And Electronics Engineering', 'KARIDAYIL HOUSE, C.M.C 19, CHERTHALA PO, ALAPPUZHA-688524.', 'CHERTHALA', 'INDIA', '9895506981', 1, '2021-05-08 07:00:41', 0, 0, 0, 0, 0, 0, 4),
(34, 'TS321', 'RESHMA', 'C', 'reshma.c@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Female', '8 May, 2021', 'Electrical And Electronics Engineering', '---------', '----------', 'INDIA', '9400071938', 1, '2021-05-08 07:07:57', 0, 0, 0, 0, 0, 0, 4),
(35, 'TS160', 'SEBIN', 'SUNNY P', 'sebinsunny@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Male', '4 October, 1986', 'Electrical And Electronics Engineering', 'PUTHIRY HOUSE, MUNDATHICODE PO, THRISSUR-680601', 'THRISSUR', 'INDIA', '9446870895', 1, '2021-05-08 07:11:11', 0, 0, 0, 0, 0, 0, 4),
(36, 'TS324', 'SUJITH', 'M.S', 'sujith.ms@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Male', '8 May, 2021', 'Electrical And Electronics Engineering', '-------', '---------', 'INDIA', '9400622414', 1, '2021-05-08 07:12:46', 0, 0, 0, 0, 0, 0, 4),
(37, 'NT049', 'BABU', 'M', 'test@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Male', '8 May, 2021', 'Electrical And Electronics Engineering', '---------', '---------', 'INDIA', '9745369331', 1, '2021-05-08 07:14:29', 0, 0, 0, 0, 0, 0, 4),
(38, 'NT147', 'PRADEEP', 'M', 'pradeepmmlp@gmail.com', '532fbe80d3e335d1eabb893a9936e647', 'Male', '24 December, 1983', 'Electrical And Electronics Engineering', '---------', '---------', 'INDIA', '9947665351', 1, '2021-05-08 07:16:39', 0, 0, 0, 0, 0, 0, 4),
(39, 'NT024', 'SHIBU', 'K', 'kshibu39@gmail.com', '532fbe80d3e335d1eabb893a9936e647', 'Male', '12 January, 1988', 'Electrical And Electronics Engineering', 'KOZHIYAMPATTA MANA, KOODALLUR PO, PALAKKAD DT - 679554', 'KOODALLUR', 'INDIA', '9995920448', 1, '2021-05-08 07:22:15', 0, 0, 0, 0, 0, 0, 4),
(40, 'NT069', 'SUHAS', 'K.N', 'suhas.kn@simat.ac.in', '532fbe80d3e335d1eabb893a9936e647', 'Male', '15 October, 1980', 'Electrical And Electronics Engineering', 'KARIPPALA MANA, NEDUMPURA PO, CHERUTHURUTHY (VIA) THRISSUR DT-679531', 'CHERUTHURUTHY', 'INDIA', '9447861425', 1, '2021-05-08 07:25:52', 0, 0, 0, 0, 0, 0, 4),
(41, 'TS140', 'PRAVEEN ', 'KUMAR', 'praveenkumar.k@simat.ac.in', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '9 November, 1986', 'Mechanical Engineering', 'KRISHNA KRIPA, SOWPARNIKA NAGAR, INDUSTRIAL ESTATE, PALAKKAD- 678009', 'PALAKKAD', 'INDIA', '8891441031', 1, '2021-05-08 07:30:30', 0, 0, 0, 0, 0, 0, 5),
(42, 'TS085', 'ARAVIND', 'P', 'aravindpakaravoor@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '14 August, 1988', 'Mechanical Engineering', 'PAKARAVOOR MANA, MOOKUTHALA, PIDAVANOOR PO, MALAPPURAM DT- 679574', 'MOOKKUTHALA', 'INDIA', '9746167477', 1, '2021-05-08 07:34:48', 0, 0, 0, 0, 0, 0, 5),
(43, 'TS149', 'CRECENTINE J', 'KANNAMPADAM', 'crecentinejk@yahoo.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '25 November, 1987', 'Mechanical Engineering', 'KANNAMPADAM HOUSE, PERUMBAIKADU PO, KOTTAYAM', 'KOTTAYAM', 'INDIA', '9447780766', 1, '2021-05-08 07:37:56', 0, 0, 0, 0, 0, 0, 5),
(44, 'TS207', 'HAFIS', 'P.V', 'hafis5092@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '31 October, 1987', 'Mechanical Engineering', '--------', '----------', 'INDIA', '9496522144', 1, '2021-05-08 07:40:01', 0, 0, 0, 0, 0, 0, 5),
(45, 'TS248', 'KRISHNAN', 'K.N', 'kitchu1987@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '5 August, 1987', 'Mechanical Engineering', 'KILLIMANGALATH MANA,KILLIMANGALAM, THRISSUR. 680591', 'THRISSUR', 'INDIA', '9447768985', 1, '2021-05-08 07:42:55', 0, 0, 0, 0, 0, 0, 5),
(46, 'TS312', 'PRASIDH E', 'PRAKASH', 'prasidh@simat.ac.in', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '7 August, 1990', 'Mechanical Engineering', '--------', '----------', 'INDIA', '9746789862', 1, '2021-05-08 07:47:14', 0, 0, 0, 0, 0, 0, 5),
(47, 'TS269', 'SARATH', 'S', 'saraths4507@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '28 September, 1988', 'Mechanical Engineering', 'KEERTHI, PERUMBALAM, KUMBIDI, PALAKKAD-679553', 'KUMBIDI', 'INDIA', '9567854303', 1, '2021-05-08 07:50:00', 0, 0, 0, 0, 0, 0, 5),
(48, 'TS123', 'SARATH', 'SANKAR K.S', 'sarathsankarks@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '30 April, 1981', 'Mechanical Engineering', 'KATTILAKOTTU MANA, VIYYUR PO, THRISSUR- 680010', 'VIYYUR', 'INDIA', '9895695452', 1, '2021-05-08 07:52:48', 0, 0, 0, 0, 0, 0, 5),
(49, 'TS176', 'SREEDATH', 'M.K', 'sri.sreedath@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '18 May, 1990', 'Mechanical Engineering', 'MYALPAZHOOR MANA, ANJUMOORTHY PO, VADAKKENCHERRY PALAKKAD', 'VADAKKENCHERRY', 'INDIA', '9496352378', 1, '2021-05-08 07:58:25', 0, 0, 0, 0, 0, 0, 5),
(50, 'TS293', 'SYAM', 'PRASAD G', 'syam.prasad@simat.ac.in', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '11 August, 1988', 'Mechanical Engineering', '-------', '----------', 'INDIA', '8907578344', 1, '2021-05-08 08:00:39', 0, 0, 0, 0, 0, 0, 5),
(51, 'TS214', 'VINAY ', 'KRISHNAN U', 'vinaykrishnanu@gmail.com', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '17 August, 1988', 'Mechanical Engineering', 'POURNAMI, THRIKKALUR PO, THACHAMPARA VIA PALAKKAD-678593', 'PALAKKAD', 'INDIA', '9496346642', 1, '2021-05-08 08:04:12', 0, 0, 0, 0, 0, 0, 5),
(52, 'NT229', 'A.K', 'AJITHAKUMAR', 'ajithakumar@simat.ac.in', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '10 May, 1963', 'Mechanical Engineering', '------', '-------', 'INDIA', '8129635819', 1, '2021-05-08 08:07:21', 0, 0, 0, 0, 0, 0, 5),
(53, 'NT025', 'DILIPKUMAR', 'K.N', 'test1@simat.ac.in', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '8 May, 2021', 'Mechanical Engineering', '--------', '--------', 'INDIA', '9447840223', 1, '2021-05-08 08:10:15', 0, 0, 0, 0, 0, 0, 5),
(54, 'NT031', 'HARI', 'C.N', 'test2@simat.ac.in', '963ddbf0187ab31d88d924f9d514e93b', 'Male', '8 May, 2021', 'Mechanical Engineering', '------', '-------', 'INDIA', '9744527220', 1, '2021-05-08 08:12:12', 0, 0, 0, 0, 0, 0, 5),
(55, 'sushma', 'SUSHMA', 'M', 'sushma.m@simat.ac.in', 'b17b3cb809e5da6281da192db0b2fdda', 'Female', '17 September, 1974', 'Electronics And Communication Engineering', '7/502F, THRIPTHI, PALAKKAD MAIN RD - MELE PATTAMBI- 679306', 'PATTAMBI', 'INDIA', '9846277017', 1, '2021-05-08 08:18:34', 0, 0, 0, 0, 0, 0, 6),
(56, 'TS271', 'ANJALI', 'ANANTHAN', 'anjali.sagi@gmail.com', 'b17b3cb809e5da6281da192db0b2fdda', 'Female', '17 December, 1991', 'Electronics And Communication Engineering', '------', '------', 'INDIA', '9497261557', 1, '2021-05-08 08:25:52', 0, 0, 0, 0, 0, 0, 6),
(57, 'TS169', 'NISANTH', 'P', 'nisanth07@gmail.com', 'b17b3cb809e5da6281da192db0b2fdda', 'Male', '7 January, 1987', 'Electronics And Communication Engineering', 'SOWPARNIKA GREEN GARDEN PO OLLUKKARA, THRISSUR DT.', 'OLLUKKARA', 'INDIA', '9567699360', 1, '2021-05-08 08:28:24', 0, 0, 0, 0, 0, 0, 6),
(58, 'TS260', 'RAGESH ', 'M.N', 'ragesh021186@gmail.com', 'b17b3cb809e5da6281da192db0b2fdda', 'Male', '2 November, 1986', 'Electronics And Communication Engineering', '-------', '--------', 'INDIA', '9495426436', 1, '2021-05-08 08:30:40', 0, 0, 0, 0, 0, 0, 6),
(59, 'TS107', 'SREEBALA', 'P', 'sreebala.p@simat.ac.in', 'b17b3cb809e5da6281da192db0b2fdda', 'Female', '19 July, 1985', 'Electronics And Communication Engineering', 'WADAKANCHERY', 'WADAKANCHERY', 'INDIA', '9847709386', 1, '2021-05-08 08:33:28', 0, 0, 0, 0, 0, 0, 6),
(60, 'TS057', 'SREEJA', 'P', 'sreeja.p@simat.ac.in', 'b17b3cb809e5da6281da192db0b2fdda', 'Female', '19 April, 1987', 'Electronics And Communication Engineering', 'SREEKOVIL, PLOT NO:20, ROSE GARDENS, THIRUVAMBADY PO, THRISSUR.', 'THRISSUR', 'INDIA', '8086864942', 1, '2021-05-08 08:36:11', 0, 0, 0, 0, 0, 0, 6),
(61, 'TS092', 'SUGESH', 'M.S', 'sugesh.ms@simat.ac.in', 'b17b3cb809e5da6281da192db0b2fdda', 'Male', '31 May, 1986', 'Electronics And Communication Engineering', '-------', '--------', 'INDIA', '9946776774', 1, '2021-05-08 08:40:01', 0, 0, 0, 0, 0, 0, 6),
(62, 'NT068', 'HAREESH', 'P.K', 'test3@simat.ac.in', 'b17b3cb809e5da6281da192db0b2fdda', 'Male', '8 May, 2021', 'Electronics And Communication Engineering', '------', '-------', 'INDIA', '9656594080', 1, '2021-05-08 08:41:44', 0, 0, 0, 0, 0, 0, 6),
(63, 'SPT18CS011', 'Aswin', 'Haridas', 'aswinvharidas@gmail.com', '610f0d0ae9d74f056c4a1bb2e7a0b91b', 'Male', '9 March, 2014', '', 'Vattapparambil', 'Palakkad', 'India', '9846231880', 1, '2021-05-11 15:27:21', 0, 0, 0, 0, 0, 0, 0),
(64, 'SPT18CS010', 'Aswathy', 'S', 'aswathys@gmail.com', '05fcf5534370bf8d03595beff5f7c60f', 'Female', '9 May, 2000', 'Civil Engineering', 'Vattapparambil House, Kizhakkekkara , Amayur (PO)', 'Pattambi', 'India', '9846123456', 1, '2021-05-16 03:54:59', 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`, `DayCount`, `dept_code`, `MailSent`, `AltArrangement`) VALUES
(96, 'Casual Leave', '2021-09-14', '2021-09-14', 'I need leave for a marriage function.', '2021-09-13 15:24:26', NULL, NULL, 0, 0, 0, 2, 1, 0, '2021-09-13   CD   7   S7   CSE   Jothis K P\r\n'),
(97, 'Casual Leave', '2021-09-18', '2021-09-16', 'Baby Shower', '2021-09-13 15:27:34', NULL, NULL, 0, 0, 0, 3, 1, 0, '2021-09-01   aaaa   ss   q   q   q\r\n2021-09-14   CD   8   S8   CSE   Jothis KP\r\n'),
(98, 'Casual Leave', '2021-09-20', '2021-09-14', 'Honeymoon', '2021-09-13 15:30:06', NULL, NULL, 0, 0, 0, 7, 1, 0, '2021-09-14   CN   2   S6   CIVIL   Leksha\r\n'),
(99, 'Casual Leave', '2021-09-15', '2021-09-15', 'Marriage', '2021-09-14 05:57:21', NULL, NULL, 0, 0, 0, 2, 1, 0, '2021-09-15   CD   7   7   CSE   Jothis KP\r\n'),
(100, 'Casual Leave', '2021-09-16', '2021-09-15', 'Sick', '2021-09-14 06:58:33', NULL, NULL, 0, 0, 0, 2, 2, 0, '2021-09-14   CD   5   6   CSE   Jothis KP\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves_ash`
--

CREATE TABLE `tblleaves_ash` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves_civil`
--

CREATE TABLE `tblleaves_civil` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` varchar(50) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves_civil`
--

INSERT INTO `tblleaves_civil` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`, `DayCount`, `dept_code`, `MailSent`, `AltArrangement`, `FacultyCode`) VALUES
(73, 'Casual Leave', '2021-09-14', '2021-09-14', 'I need leave for a marriage function.', '2021-09-13 15:24:26', 'Please check details.', '2021-09-13 21:41:04 ', 4, 1, 'SPT18CS010', 2, 1, 0, '2021-09-13   CD   7   S7   CSE   Jothis K P\r\n', NULL),
(74, 'Casual Leave', '2021-09-18', '2021-09-16', 'Baby Shower', '2021-09-13 15:27:34', NULL, NULL, 0, 1, 'SPT18CS010', 3, 1, 0, '2021-09-01   aaaa   ss   q   q   q\r\n2021-09-14   CD   8   S8   CSE   Jothis KP\r\n', NULL),
(75, 'Casual Leave', '2021-09-20', '2021-09-14', 'Honeymoon', '2021-09-13 15:30:06', NULL, NULL, 0, 0, 'SPT18CS010', 7, 1, 0, '2021-09-14   CN   2   S6   CIVIL   Leksha\r\n', NULL),
(76, 'Casual Leave', '2021-09-15', '2021-09-15', 'Marriage', '2021-09-14 05:57:21', NULL, NULL, 0, 0, 'SPT18CS010', 2, 1, 0, '2021-09-15   CD   7   7   CSE   Jothis KP\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves_cse`
--

CREATE TABLE `tblleaves_cse` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves_cse`
--

INSERT INTO `tblleaves_cse` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`, `DayCount`, `dept_code`, `MailSent`, `AltArrangement`, `FacultyCode`) VALUES
(6, 'Casual Leave', '2021-09-16', '2021-09-15', 'Sick', '2021-09-14 06:58:32', NULL, NULL, 0, 0, 0, 2, 2, 0, '2021-09-14   CD   5   6   CSE   Jothis KP\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves_ece`
--

CREATE TABLE `tblleaves_ece` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves_eee`
--

CREATE TABLE `tblleaves_eee` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves_me`
--

CREATE TABLE `tblleaves_me` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT 0,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Casual Leave ', '2017-11-01 12:07:56'),
(5, 'Earned Leave', 'Earned Leave', '2021-05-16 03:07:11'),
(7, 'Commuted Half Day', 'Upto 10 Leaves Possible/Year.', '2021-05-19 06:09:12'),
(8, 'Commuted Full Day', 'Upto 5 Leaves Possible/Year.', '2021-05-19 06:09:38'),
(9, 'Loss of Pay', 'Loss of Pay', '2021-05-19 06:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblprincipal`
--

CREATE TABLE `tblprincipal` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` varchar(50) DEFAULT NULL,
  `DayCount` int(11) DEFAULT NULL,
  `dept_code` int(11) DEFAULT NULL,
  `MailSent` int(11) DEFAULT NULL,
  `AltArrangement` varchar(500) DEFAULT NULL,
  `FacultyCode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprincipal`
--

INSERT INTO `tblprincipal` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`, `DayCount`, `dept_code`, `MailSent`, `AltArrangement`, `FacultyCode`) VALUES
(73, 'Casual Leave', '2021-09-14', '2021-09-14', 'I need leave for a marriage function.', '2021-09-13 15:24:26', 'Please check details.', '2021-09-13 21:41:04 ', 4, 1, 'SPT18CS010', 2, 1, 0, '2021-09-13   CD   7   S7   CSE   Jothis K P\r\n', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonafide_cert`
--
ALTER TABLE `bonafide_cert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleaves_ash`
--
ALTER TABLE `tblleaves_ash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleaves_civil`
--
ALTER TABLE `tblleaves_civil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleaves_cse`
--
ALTER TABLE `tblleaves_cse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleaves_ece`
--
ALTER TABLE `tblleaves_ece`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleaves_eee`
--
ALTER TABLE `tblleaves_eee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleaves_me`
--
ALTER TABLE `tblleaves_me`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprincipal`
--
ALTER TABLE `tblprincipal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bonafide_cert`
--
ALTER TABLE `bonafide_cert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tblleaves_ash`
--
ALTER TABLE `tblleaves_ash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleaves_civil`
--
ALTER TABLE `tblleaves_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblleaves_cse`
--
ALTER TABLE `tblleaves_cse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblleaves_ece`
--
ALTER TABLE `tblleaves_ece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleaves_eee`
--
ALTER TABLE `tblleaves_eee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleaves_me`
--
ALTER TABLE `tblleaves_me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblprincipal`
--
ALTER TABLE `tblprincipal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
