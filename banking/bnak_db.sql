-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 08:39 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnak_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `dob`, `relationship`, `department`, `address`, `mobile`, `login_id`, `pwd`, `lastlogin`) VALUES
(1, 'admin', 'M', '1994-01-01', 'unmarried', 'developer', 'globsyn kolkata', '18003004000', 'admin', 'admin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Rashid feroz', 34, 'PENDING'),
(16, 'Sumona', 42, 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE `beneficiary1` (
  `id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `reciever_name` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`id`, `sender_id`, `sender_name`, `reciever_id`, `reciever_name`, `status`) VALUES
(21, 34, 'Rashid feroz', 35, 'Deepak rajwar', 'ACTIVE'),
(22, 34, 'Rashid feroz', 36, 'Shailesh kumar', 'ACTIVE'),
(23, 36, 'Shailesh kumar', 34, 'Rashid feroz', 'ACTIVE'),
(24, 35, 'Deepak rajwar', 34, 'Rashid feroz', 'ACTIVE'),
(25, 34, 'Rashid feroz', 38, 'isha dey', 'PENDING'),
(27, 42, 'Sumona', 41, 'Sharique hassan', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Rashid feroz', 34, 'PENDING'),
(9, 'Sumona', 42, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `nominee` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `accstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `dob`, `nominee`, `account`, `address`, `mobile`, `email`, `password`, `branch`, `ifsc`, `lastlogin`, `accstatus`) VALUES
(42, 'Sumona', 'F', '2021-08-11', 'Ontor', 'savings', 'Mirpur', '0192812', 'sumona@gmail.com', '1c15485bd1cd4ddb777018539cbcb96365497519', 'DHAKA', 'K421A', '2021-08-18 08:13:36', 'ACTIVE'),
(45, 'Ontor', 'M', '2021-08-08', 'Sumona', 'savings', 'Uttara', '019211', 'ontor@gmail.com', '790979d19c1220c9063be78fb4da5dae72587dbb', 'DHAKA', 'K421A', '0000-00-00 00:00:00', 'ACTIVE'),
(46, 'Tonmoy', 'M', '2021-08-09', 'Sumona', 'savings', 'Uttara', '019212', 'tonmoy@gmail.com', '790979d19c1220c9063be78fb4da5dae72587dbb', 'DHAKA', 'K421A', '0000-00-00 00:00:00', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `passbook42`
--

CREATE TABLE `passbook42` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook42`
--

INSERT INTO `passbook42` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2021-08-16', 'Sumona', 'DHAKA', 'K421A', 1000, 0, 1000.00, 'Account Open'),
(2, '2021-08-17', 'Sumona', 'DHAKA', 'K421A', 0, 200, 800.00, 'TO Sharique hassan');

-- --------------------------------------------------------

--
-- Table structure for table `passbook45`
--

CREATE TABLE `passbook45` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook45`
--

INSERT INTO `passbook45` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2021-08-18', 'Ontor', 'DHAKA', 'K421A', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook46`
--

CREATE TABLE `passbook46` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook46`
--

INSERT INTO `passbook46` (`transactionid`, `transactiondate`, `name`, `branch`, `ifsc`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2021-08-18', 'Tonmoy', 'DHAKA', 'K421A', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(26, 'Sadek', '1995-06-18', 'married', 'revenue', '2021-08-01', 'MD.pur', '0192111', 'aa@ss.com', '12345', 'M', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`login_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `passbook42`
--
ALTER TABLE `passbook42`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook45`
--
ALTER TABLE `passbook45`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook46`
--
ALTER TABLE `passbook46`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `passbook42`
--
ALTER TABLE `passbook42`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook45`
--
ALTER TABLE `passbook45`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook46`
--
ALTER TABLE `passbook46`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
