-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 02:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `ffc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(11) NOT NULL,
  `ad_uname` varchar(30) NOT NULL,
  `ad_email` varchar(45) NOT NULL,
  `ad_ph` bigint(10) NOT NULL,
  `ad_pwd` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_uname`, `ad_email`, `ad_ph`, `ad_pwd`) VALUES
(1, 'Julie', 'Julie@gmail.com', 712345678, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `textarea` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `textarea`) VALUES
(1, 'Brian Makori', 'brian@gmail.com', 'perfect 5 star');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `ordereduser` varchar(30) NOT NULL,
  `usercontact` bigint(10) NOT NULL,
  `useraddress` varchar(150) NOT NULL,
  `payment_type` varchar(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `res_status` varchar(11) NOT NULL,
  `delivery_status` varchar(11) NOT NULL,
  `deliveryboy` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `orderid`, `ordereduser`, `usercontact`, `useraddress`, `payment_type`, `totalprice`, `res_status`, `delivery_status`, `deliveryboy`) VALUES
(15, 42, 'bhagyanath', 9658743210, 'bhagyanath home kollam', 'online', 240, 'shipped', 'delivered', 'mammootty'),
(16, 43, '', 0, '', 'cod', 120, 'shipped', 'delivering', 'binoy'),
(26, 44, 'joel', 9633518952, 'joel home', 'online', 150, 'shipped', 'delivered', 'surya'),
(30, 45, '', 0, '', 'cod', 120, 'shipped', 'delivered', 'mammootty'),
(31, 46, 'bhagyanath', 9658743210, 'bhagyanath home kollam', 'online', 120, 'shipped', 'delivered', 'binoy'),
(32, 47, 'midhun', 9852364175, 'midhun home ', 'cod', 120, 'shipped', 'delivered', 'gokul');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

CREATE TABLE `deliveryboy` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL,
  `bgroup` varchar(11) NOT NULL,
  `license` varchar(30) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `status` varchar(3) NOT NULL,
  `dstatus` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryboy`
--

INSERT INTO `deliveryboy` (`id`, `name`, `uname`, `email`, `bgroup`, `license`, `contact`, `address`, `profile`, `pwd`, `status`, `dstatus`) VALUES
(4, 'Brian Makori', 'brian', 'brianm@gmail.com', 'AB+', 'bri123', 740999999, 'Nyali', 'br.jpg', '1234', 'yes', 'Ready'),
(8, 'Friday', 'friday', 'friday@gmail.com', 'A+', 'fri123', 74099923, 'Nyali', '602a8581934254.87167643.jpg', '1234', 'yes', 'Ready'),
(10, 'Michael', 'mike', 'mike@gmail.com', 'A+', '2135211', 71112233, 'Nyali', 'mk.jpg', '1234', 'yes', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `foodlist`
--

CREATE TABLE `foodlist` (
  `fid` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `fprice` varchar(15) NOT NULL,
  `fdescription` varchar(100) NOT NULL,
  `frestaurents` varchar(50) NOT NULL,
  `fimage` varchar(125) NOT NULL,
  `manager` varchar(45) NOT NULL,
  `foodstatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodlist`
--

INSERT INTO `foodlist` (`fid`, `fname`, `fprice`, `fdescription`, `frestaurents`, `fimage`, `manager`, `foodstatus`) VALUES
(20, 'chiken biriyani', '120', 'kerala style Chicken Biriyani', 'Mambuzi Hotel', '5ff97a10830dd7.14302264.jpg', 'mambuzi', 'available'),
(21, 'Masala Dosa', '60', 'kerala masala dosa', 'Mambuzi hotel', '6066042262ca32.13043927.jfif', 'mambuzi', 'available'),
(22, 'Chicken curry', '150', 'cheesy chicken curry', 'Mambuzi hotel', '606604842a2a88.02566841.jpg', 'mambuzi', 'available'),
(23, 'shavarma', '120', 'chicken and cheesy shavarma', 'Mambuzi hotel', '60660556ccbba2.75595776.jfif', 'mambuzi', 'available'),
(25, 'falooda', '120', 'sweet falooda', 'Mama Esha Cafe', '60f041fe4caab1.81001290.jpg', 'mama esha', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `foodorders`
--

CREATE TABLE `foodorders` (
  `orderid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `fprice` int(10) NOT NULL,
  `frestaurent` varchar(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `ordereduser` varchar(50) NOT NULL,
  `totalprice` int(10) NOT NULL,
  `ordered_date` date DEFAULT NULL,
  `payment_type` varchar(20) NOT NULL,
  `res_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorders`
--

INSERT INTO `foodorders` (`orderid`, `fid`, `fname`, `fprice`, `frestaurent`, `qty`, `ordereduser`, `totalprice`, `ordered_date`, `payment_type`, `res_status`) VALUES
(42, 20, 'chiken biriyani', 120, 'ravis hotel', 2, 'bhagyanath123', 240, '2021-01-09', 'online', 'delivered'),
(43, 23, 'shavarma', 120, 'ravis hotel', 1, 'ravis', 120, '2021-07-15', 'cod', 'shipped'),
(44, 22, 'Chicken curry', 150, 'ravis hotel', 1, 'joel', 150, '2021-07-15', 'online', 'shipped'),
(45, 25, 'falooda', 120, 'qwe', 1, 'mammootty', 120, '2021-07-15', 'cod', 'delivered'),
(46, 25, 'falooda', 120, 'qwe', 1, 'bhagyanath123', 120, '2021-07-15', 'online', 'delivered'),
(47, 23, 'shavarma', 120, 'ravis hotel', 1, 'midhun123', 120, '2021-07-15', 'cod', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `restaurents`
--

CREATE TABLE `restaurents` (
  `rid` int(11) NOT NULL,
  `rname` varchar(30) NOT NULL,
  `runame` varchar(40) NOT NULL,
  `remail` varchar(45) NOT NULL,
  `rplace` varchar(100) NOT NULL,
  `rcontactno` bigint(10) NOT NULL,
  `raddress` text NOT NULL,
  `rpwd` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurents`
--

INSERT INTO `restaurents` (`rid`, `rname`, `runame`, `remail`, `rplace`, `rcontactno`, `raddress`, `rpwd`, `status`) VALUES
(9, 'Mambuzi Hotel', 'mambuzi', 'mambuzi@gmail.com', 'Nyali', 25470087766, 'Mambuzi hotel Nyali', '1234', 'enable'),
(10, 'Mama Esha Cafe', 'mama esha', 'mamaesha@gmail.com', 'Nyali', 2347227723, 'mama esha', '1234', 'enable'),
(11, 'Mama Njeri Hotel', 'mama njeri hotel', 'mamanjeri@gmail.com', 'Nyali', 2547119921, 'Nyali Mombasa', '1234', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactno` bigint(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `profile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `contactno`, `address`, `pwd`, `profile`) VALUES
(7, 'Julie ', 'Julie123', 'julie@gmail.com', 71234567, 'Nyali', '1234', '../uploads/defaultprofile.png'),
(13, 'Brian Makori', 'brianmakori', 'brianmakori@gmail.com', 7123456789, 'Nyali', '1234', '../uploads/defaultprofile.png'),
(14, 'Jonar', 'jonar', 'jonar123@gmail.com', 7123456799, 'Nyali', '1234', '../uploads/pubg_screentshot.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`),
  ADD UNIQUE KEY `ad_uname` (`ad_uname`),
  ADD UNIQUE KEY `ad_ph` (`ad_ph`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`orderid`);

--
-- Indexes for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodlist`
--
ALTER TABLE `foodlist`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `foodorders`
--
ALTER TABLE `foodorders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `restaurents`
--
ALTER TABLE `restaurents`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `contactno` (`contactno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `foodlist`
--
ALTER TABLE `foodlist`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `foodorders`
--
ALTER TABLE `foodorders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `restaurents`
--
ALTER TABLE `restaurents`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;


