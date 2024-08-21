-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 05:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhr_insurence`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(108) NOT NULL,
  `apassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `apassword`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `claim`
--

CREATE TABLE `claim` (
  `vehicleNo` varchar(10) NOT NULL,
  `id` int(11) NOT NULL,
  `agentFname` varchar(50) NOT NULL,
  `agentLname` varchar(50) NOT NULL,
  `policyholderFnme` varchar(50) NOT NULL,
  `policyholderLname` varchar(50) NOT NULL,
  `streetAddress` varchar(100) NOT NULL,
  `streetAddressLine2` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `postalID` varchar(5) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phoneNo` int(10) NOT NULL,
  `Date` date NOT NULL,
  `discription` varchar(800) NOT NULL,
  `verification` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `claim`
--

INSERT INTO `claim` (`vehicleNo`, `id`, `agentFname`, `agentLname`, `policyholderFnme`, `policyholderLname`, `streetAddress`, `streetAddressLine2`, `city`, `region`, `postalID`, `Email`, `phoneNo`, `Date`, `discription`, `verification`) VALUES
('df-1234', 2, 'cncjc', 'ncmcmc', 'kxkcxkc', 'nxmxm', 'ncncnc cjcjck', 'jcjcjc', 'kcickc', '12345', 'jxcjc', 'hjffkdikdjn@fhfg.fgh', 753391060, '0000-00-00', 'jvjv jkfnvf vf jkff kfkfjnffd ', 'verify'),
('QJ-3474', 4, 'Buddika', 'Perera', 'Kavee', 'Perera', '62/95', 'Nagoda', 'Kalutara', '14856', 'Kalut', 'himashakavi@gmail.com', 784516325, '0000-00-00', 'I want to claim an insurance quotation', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `reply` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `description`, `reply`) VALUES
(2, 'nimesh', 'bnperera9@gmail.com', 'I want to join with you company. how can I do.', 'yes'),
(3, 'w.b.n.perera', 'wbnp2001@gmail.com', 'I have a claim.', ''),
(4, 'jskasjsd', 'dsjsdkdskdsnd', 'dnsdlkndlkdsds sdjdsjcdsn jbdjcd sdjbdsjocd sdn d  ', ''),
(5, 'priyanthi', 'priyanthi95@gmail.com', 'orem ipsum dolor sit amet consectetur adipisicing elit. \r\n                Nisi possimus dolore quam ', ''),
(6, 'huhuhujh', 'vhbkbkbkjbk', 'fjfjjhgvjkgkjgb', ''),
(7, 'shashikala', 'warunishashikala2001@gmail.com', 'I want to request a claim', ''),
(8, 'perera', '0765443223', 'jsdjsfnjsfd adfnsdfjnfdkj dfnjfdskfsd njdf fsd', ''),
(9, 'Himasha', 'himashakavishanee@gmail.com', 'I want to get a vehicle insurance for my car. How can I do that?? Can you explain me about that proc', ''),
(10, 'Himasha', 'himashakavishanee@gmail.com', '\'\r\n;;plplp', ''),
(11, 'ramesh', 'ramesh@gmail.com', 'hxjzcxzxc xibxckjbczx xjkxbkxczzcx bkxnxzckzxc xcbxckjxcbxck jicxbzxck ', ''),
(12, 'nfbfnfnfnfn', 'dbfhjfbfn@jhfffjf.cjckc', 'hfhfhf fbfhf fhfnfn', ''),
(14, 'nihara', 'shniharard@gmail.com', 'hiiiiiii', ''),
(15, 'nimesh', 'nimesh2001@gmail.com', 'djdsks ks mmlml mlll,mnk ', ''),
(16, 'fyfhjgjhgjh', 'dytftfhf@gmail.com', 'dutfhgnf jgjhbv jygjhv', ''),
(17, 'buddika', 'bnperera9@gmail.com', 'gdbdjd qjsna', ''),
(18, 'hdddjdd', 'bdjdjd@fhf.dgjk', 'jdhdndn djdf ', ''),
(19, 'Kavee', 'himashakavi@gmail.com', 'I want to Join with your company', ''),
(20, 'bnperera', 'wbnp2001@gmail.com', 'wwwwwwwww', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zipid` varchar(10) NOT NULL,
  `card` varchar(20) NOT NULL,
  `cardname` varchar(20) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expmonth` varchar(2) NOT NULL,
  `expyear` varchar(4) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `accept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `fullname`, `email`, `address`, `city`, `state`, `zipid`, `card`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `cvv`, `accept`) VALUES
(2, 'himasha kavishanee', 'himashakavishanee@gm', '41/a1,second lane,', 'colombo 10', 'colombo', '10301', 'visa', 'boc', '1234 4563 6758 1045', '25', '27', '321', 'yes'),
(3, 'nihara randini', 'shniharard@gmail.com', '25,asgiriya', 'gampaha', 'gampaha', '12345', 'visa', 'HNB', '1234 6745 9100 2657', '05', '2023', '564', ''),
(4, 'buddika', 'wbnimeshperera9@gmai', '123/3,pasdw road,', 'malabe', 'colombo', '12567', 'visa', 'boc', '1234123412341234', '23', '1234', '456', '');

-- --------------------------------------------------------

--
-- Table structure for table `singup`
--

CREATE TABLE `singup` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `contactno` int(10) NOT NULL,
  `upassword` varchar(140) NOT NULL,
  `repassword` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `singup`
--

INSERT INTO `singup` (`userid`, `firstname`, `lastname`, `useremail`, `contactno`, `upassword`, `repassword`) VALUES
(5, 'Himasha', 'Sendanayaka', 'himashakavishanee@gmail.com', 766329975, '$2y$10$BdEeVrkRBfgVwoxfnS/BBuWzGPKhWpSRyY1XqZORYwhRVNypTHIda', ''),
(7, 'Kavishanee', 'Sendanayake', 'bandulasendanayaka@gmail.com', 766329975, '$2y$10$qGwmeQBmTBH8a8HqZDKCEuhKPxCZXyESKW2KSuVsiPb5JY4lQFJDC', ''),
(9, 'wbn', 'perera', 'WBNimeshperera2001@gmail.com', 753391069, '$2y$10$sV3t.38YVo9MssHmW2Yop.yVPBq04.wO096Z2pTmrxvwN8QXjRpUG', ''),
(10, 'Kavee', 'Perera', 'himashakavi@gmail.com', 762549315, '$2y$10$livUo3GHu0VH34.peVcxku4P8JmxgWXRoJiPwFYkHpXpYzTu//AJi', ''),
(11, 'nimesh113', 'perera', 'bnperera2001@gmail.com', 753391069, '$2y$10$U3u.75SqN3qfajOHTmlUbu4xUiKk7YUlIf4qW9p2mi.Z9Lq8HDqyu', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `claim`
--
ALTER TABLE `claim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singup`
--
ALTER TABLE `singup`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `claim`
--
ALTER TABLE `claim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `singup`
--
ALTER TABLE `singup`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
