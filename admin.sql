-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 12:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(35) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `description` varchar(400) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`description`, `quantity`, `size`, `unitPrice`, `orderId`, `itemId`) VALUES
('PVC Pipe 12inchi', '4', '12cm * 10cm', 30, 3, 21),
('Soffa', '12', '12feet', 40, 3, 22),
('Bed', '7', '10Feet', 50, 3, 23),
('XYXX', '400', '12', 40, 4, 30),
('ABAC', '450', '13', 20, 4, 31),
('Plastic Cover', '500', '12*13', 30, 4, 32),
('Bulb', '200', 'normal', 42, 4, 33),
('pipe 20x10', '5', '10m', 11, 5, 34),
('sdf', '7', '52m', 6, 5, 35);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `orderTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `id`, `orderTime`) VALUES
(1, 8, '2023-05-11 14:17:49'),
(2, 8, '2023-05-11 14:17:49'),
(3, 8, '2023-05-11 18:13:24'),
(4, 10, '2023-05-11 20:46:31'),
(5, 11, '2023-05-15 12:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projectId` varchar(30) NOT NULL,
  `toName` varchar(35) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `requisitionTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectId`, `toName`, `name`, `subject`, `remarks`, `status`, `requisitionTime`) VALUES
('202351120252911_', 'Aman Sehgal', 'Meta Verse', 'Testing', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Approved', '2023-05-11 20:25:29'),
('20235151218977_', 'Project manager', 'Emirates Flyover', 'Test Project', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Approved', '2023-05-15 12:18:09'),
('20235714271143_', 'Rohit Sharma', 'DSA', 'Learning', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Pending', '2023-05-07 16:16:07'),
('2023571451084_', 'Abc', '1234', 'asdf', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Approved', '2023-05-07 16:16:07'),
('2023571454529_', 'aman', 'Aman', '123', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Approved', '2023-05-07 16:16:07'),
('20235810413435_', 'Purchase and Sales Officer', 'Android Development', 'Learning', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Approved', '2023-05-08 10:41:34'),
('20235820235545_', 'Aman', 'gfhdhjd', 'asdf', 'If specified sizes are not available, please arrange for nearest alternative size under intimation to the undersigned.', 'Pending', '2023-05-08 20:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `description` varchar(400) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `itemId` int(11) NOT NULL,
  `projectId` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`description`, `size`, `quantity`, `itemId`, `projectId`) VALUES
('12345', '23234', '1223', 17, '2023571454529_'),
('PVC Pipe 12inchi', '12cm * 10cm', '4', 21, '20235810413435_'),
('Soffa', '12feet', '12', 22, '20235810413435_'),
('Bed', '10Feet', '7', 23, '20235810413435_'),
('123', '321', '13', 28, '20235820235545_'),
('13344', '12', '987', 29, '20235820235545_'),
('XYXX', '12', '400', 30, '202351120252911_'),
('ABAC', '13', '450', 31, '202351120252911_'),
('Plastic Cover', '12*13', '500', 32, '202351120252911_'),
('Bulb', 'normal', '200', 33, '202351120252911_'),
('pipe 20x10', '10m', '5', 34, '20235151218977_'),
('sdf', '52m', '7', 35, '20235151218977_');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `company_name` varchar(30) DEFAULT NULL,
  `country_name` varchar(35) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `supplierId` varchar(40) NOT NULL,
  `company_detail` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`name`, `email`, `phone`, `company_name`, `country_name`, `address`, `supplierId`, `company_detail`) VALUES
('Rohit Sharma', 'qwerty@gmail.com', '9876543210', 'ertyuv123', 'UAE', 'asdfghjkl', '2023561222599_', '2023561222599_dbms.pdf'),
('Aman Sehgal', 'aman123@gmail.com', '987654321', 'ELGC', 'India', '12biharRoad', '20235714372226_', '20235714372226_Aman Sehgal(Software Engineer)1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `supplierquote`
--

CREATE TABLE `supplierquote` (
  `id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplierquote`
--

INSERT INTO `supplierquote` (`id`, `name`, `email`, `company`, `country`, `address`, `message`, `mobile`) VALUES
(2, 'asd', 'abc123@gmail.com', 'asd', '123', 'asdfg', 'qwer', 'qwe'),
(3, 'Aman', 'qwe123@gmail.com', 'ELGC', 'India', '12 burj Khalifa', 'Not known', '98721'),
(4, 'Aman', 'sde123@gmail.com', 'Kuwait', 'INdia', 'UAE', '123', '97654'),
(5, 'Aman', 'abc123@gmail.com', '123', '123', 'xsaqwe', 'qwe', '9876543210'),
(6, 'asdf', 'asd123@gmail.com', 'asdf', '123', '123', 'asdf', '1234'),
(7, 'Aman ', 'a123@gmail.com', '123', 'asd', 'asd', 'asdf', '1234'),
(8, 'asd', 'ab123@gmail.com', '123', 'amanansnsns', 'amamam', 'dmkfmlm', '123'),
(9, 'Rohit', 'rohit123@gmail.com', 'Amana', 'India', '12PunjabiBagh', 'Optional Message', '9876543210'),
(10, 'Not Known', 'aman123@gmail.com', 'Mossque', 'India', '123', 'd j ejnjec', '987654321'),
(11, 'rohit sharma', 'rohitsharmatech9@gmail.com', 'Slick IT Solutions', 'India', 'Jaipur Rajasthan', 'This is the quotation form', '7691094380'),
(12, 'Ritik Singh', 'singhritik2251@gmail.com', 'Techiz', 'India', 'Jaipur', 'test\n', '8696684944');

-- --------------------------------------------------------

--
-- Table structure for table `supplierquotedetails`
--

CREATE TABLE `supplierquotedetails` (
  `itemId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  `projectId` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplierquotedetails`
--

INSERT INTO `supplierquotedetails` (`itemId`, `id`, `unitPrice`, `projectId`) VALUES
(21, 5, 1, '20235810413435_'),
(21, 6, 4, '20235810413435_'),
(21, 7, 10, '20235810413435_'),
(21, 8, 30, '20235810413435_'),
(22, 5, 2, '20235810413435_'),
(22, 6, 3, '20235810413435_'),
(22, 7, 20, '20235810413435_'),
(22, 8, 40, '20235810413435_'),
(23, 5, 3, '20235810413435_'),
(23, 6, 8, '20235810413435_'),
(23, 7, 30, '20235810413435_'),
(23, 8, 50, '20235810413435_'),
(30, 9, 100, '202351120252911_'),
(30, 10, 40, '202351120252911_'),
(31, 9, 30, '202351120252911_'),
(31, 10, 20, '202351120252911_'),
(32, 9, 90, '202351120252911_'),
(32, 10, 30, '202351120252911_'),
(33, 9, 412, '202351120252911_'),
(33, 10, 42, '202351120252911_'),
(34, 11, 11, '20235151218977_'),
(34, 12, 41, '20235151218977_'),
(35, 11, 6, '20235151218977_'),
(35, 12, 3, '20235151218977_');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderId`,`itemId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectId`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `projectId` (`projectId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierId`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `supplierquote`
--
ALTER TABLE `supplierquote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplierquotedetails`
--
ALTER TABLE `supplierquotedetails`
  ADD PRIMARY KEY (`itemId`,`id`),
  ADD KEY `id` (`id`),
  ADD KEY `projectId` (`projectId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `supplierquote`
--
ALTER TABLE `supplierquote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `supplierquote` (`id`);

--
-- Constraints for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD CONSTRAINT `projectId` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`) ON DELETE CASCADE,
  ADD CONSTRAINT `requisitions_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`);

--
-- Constraints for table `supplierquotedetails`
--
ALTER TABLE `supplierquotedetails`
  ADD CONSTRAINT `supplierquotedetails_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `requisitions` (`itemId`) ON DELETE CASCADE,
  ADD CONSTRAINT `supplierquotedetails_ibfk_2` FOREIGN KEY (`id`) REFERENCES `supplierquote` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supplierquotedetails_ibfk_3` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
