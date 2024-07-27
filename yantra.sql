-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 08:58 AM
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
-- Database: `yantra`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` varchar(50) NOT NULL,
  `UserID` varchar(50) DEFAULT NULL,
  `ProductID` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`firstname`, `lastname`, `email`, `phonenumber`, `feedback`) VALUES
('Kritika', 'Siwakoti', 'np01cp4a220193@islingtoncollege.edu.np', '12345678', 'new form'),
('john', 'wick', 'tiodycozma4@hotmail.com', '9807985252', 'Which is worth buying, Apple Airpods or Boat\'s headset '),
('hari', 'bahadur', 'siwakotikritika5@gmail.com', '9807985252', 'qwertyui');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(50) NOT NULL,
  `UserID` varchar(50) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` varchar(50) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `imglink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `Name`, `Description`, `Price`, `imglink`) VALUES
('p1', 'Bluetooth wireless earphone', 'A quick 10-minute charge delivers up to 20 hours of immersive audio playback.; The flagship-level battery life delivers up to 30 hours of non-stop music on a single charge.', 3899.00, 'P1.png'),
('p2', 'Audio Technica Earphones', 'Earphones are among the many audio products that the Japanese business Audio-Technica sells. Their earbuds are renowned for having excellent sound quality and being reasonably priced.\r\n\r\n', 5300.00, 'P2.png'),
('p3', 'Bose Earbuds', 'Bose is a well-known manufacturer of audio equipment, and their earbuds are renowned for having excellent sound quality and noise-cancelling capabilities.\r\n\r\n', 7599.00, 'P3.png'),
('p4', 'Apple AirPods Max', 'High-end over-ear headphones from Apple, the AirPods Max are renowned for their superior sound quality, industry-best noise cancellation, and easy connectivity with Apple products. ', 73000.00, 'P4.png'),
('p5', 'Apple Airpods', 'Apple, the AirPods  are renowned for their superior sound quality, industry-best noise cancellation, and easy connectivity with Apple products. ', 32000.00, 'P5.jpg'),
('p6', 'Sony Headphones-Wired', 'A budget-friendly option that offers good sound quality and a comfortable on-ear design.\r\nFeatures 30mm drivers and comes in a variety of colors.', 3299.00, 'P6.png'),
('p7', 'Sony Audio Earpieces', 'Sony earpieces experience immersive audio on the go. These compact in-earpieces deliver clear, rich sound from Sony\'s expertise. Whether you choose wired or wireless, Sony offers options with features like noise cancellation and long battery life.\r\n', 6799.00, 'P7.png'),
('p8', 'Apple Earpods-Wired', 'Apple EarPods Wired are a convenient and complimentary option for Apple users who need a basic headset for calls, listening to music or podcasts on the go, or using with Apple devices that don\'t have a Lightning connector.', 5150.00, 'p8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` varchar(50) NOT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Email`, `Password`, `FirstName`, `LastName`, `Gender`, `Role`) VALUES
('ap1', 'siwakotikritika5@gmail.com', 'astrorock', 'astro', 'rock', 'male', 'user'),
('jvcvjb', 'siwakotikritika5@gmail.com', 'asdfghjkl', 'spider', 'man', 'female', 'user'),
('kritika123', 'siwakotikritika5@gmail.com', 'kritika', 'kritika', 'siwakoti', 'male', 'admin'),
('mihgs', 'kritikasiwakoti67@gmail.com', 'mirajmiraj', 'jskjadcadc', 'kdcdbc', 'male', 'user'),
('mirajdeep', 'siwakotikritika5@gmail.com', 'miraj12345', 'miraj ', 'deep ', 'male', 'user'),
('sp1', 'siwakotikritika5@gmail.com', 'spiderman', 'spider', 'man', 'male', 'user'),
('w1', 'np01cp4a220193@islingtoncollege.edu.np', 'mirajhome', 'miraj', 'bhandari', 'male', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
