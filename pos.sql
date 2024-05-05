-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 28, 2024 at 10:45 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int NOT NULL AUTO_INCREMENT,
  `INID` int NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_Code` varchar(50) NOT NULL,
  `Qty` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Total_Price` varchar(20) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_Code`, `Qty`, `Price`, `Total_Price`) VALUES
(67, 10, 'Doujinshi', '69696969', '3', '250', '750.0'),
(66, 9, 'Book', '777777', '2', '130', '260.0'),
(65, 8, 'Intel Arc A750', '888888', '1', '13000', '13000.0'),
(64, 7, 'LT84', '100800', '1', '3500', '3500.0'),
(63, 6, 'Ryzen 7', '999999', '1', '10000', '10000.0'),
(62, 5, 'Ryzen 7', '999999', '2', '10000', '20000.0'),
(61, 4, 'LT84', '100800', '1', '3500', '3500.0'),
(60, 4, 'Milo', '3600-500', '5', '15', '75.0'),
(59, 4, 'Milo', '3600-500', '5', '15', '75.0'),
(58, 3, 'Book', '777777', '2', '130', '260.0'),
(57, 1, 'Intel Arc A750', '888888', '1', '13000', '13000.0'),
(56, 1, 'Manga', '202020', '1', '450', '450.0'),
(55, 1, 'Intel Arc A750', '888888', '2', '13000', '26000.0'),
(54, 1, 'Ryzen 7', '999999', '2', '10000', '20000.0'),
(53, 1, 'Book', '777777', '2', '130', '260.0'),
(52, 1, 'Book', '777777', '2', '130', '260.0'),
(51, 1, 'Intel Arc A750', '888888', '2', '13000', '26000.0'),
(50, 1, 'LT84', '100800', '23', '3500', '80500.0'),
(49, 1, 'LT84', '100800', '23', '3500', '80500.0'),
(48, 1, 'LT84', '100800', '23', '3500', '80500.0'),
(47, 1, 'LT84', '100800', '2', '3500', '7000.0'),
(46, 1, 'Intel Arc A750', '888888', '2', '13000', '26000.0'),
(45, 1, 'Intel Arc A750', '888888', '2', '13000', '26000.0'),
(44, 1, 'Intel Arc A750', '888888', '1', '13000', '13000.0'),
(43, 1, 'LT84', '100800', '1', '3500', '3500.0'),
(42, 1, 'Ryzen 7', '999999', '1', '10000', '10000.0'),
(41, 1, 'Intel Arc A750', '888888', '1', '13000', '13000.0'),
(68, 11, 'Manga', '202020', '3', '450', '1350.0');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `kagenou` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  PRIMARY KEY (`kagenou`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kagenou`, `customer_name`, `Tp_Number`) VALUES
(14, 'Jimbob', '0997654'),
(15, 'Casper', '9999-67'),
(16, 'John Smith', '96969'),
(17, 'Mj', '232323'),
(18, 'Skalag', '99969'),
(19, 'Matthew John', '099875892');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `cagenou` int NOT NULL AUTO_INCREMENT,
  `Employee_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  PRIMARY KEY (`cagenou`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`cagenou`, `Employee_Name`, `Tp_Number`) VALUES
(9, 'Kenjie', '500$');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
CREATE TABLE IF NOT EXISTS `extra` (
  `exid` int NOT NULL AUTO_INCREMENT,
  `val` varchar(10) NOT NULL,
  PRIMARY KEY (`exid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, '11');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pagenou` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_Code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `Sid` int NOT NULL,
  PRIMARY KEY (`pagenou`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pagenou`, `Product_Name`, `Bar_Code`, `Price`, `Qty`, `Sid`) VALUES
(19, 'Milo', '3600-500', '15', '50', 7),
(17, 'Manga', '202020', '450', '5', 5),
(15, 'Book', '777777', '130', '10', 3),
(16, 'LT84', '100800', '3500', '3', 4),
(14, 'Intel Arc A750', '888888', '13000', '5', 2),
(13, 'Ryzen 7', '999999', '10000', '5', 1),
(18, 'Doujinshi', '69696969', '250', '10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `saleid` int NOT NULL AUTO_INCREMENT,
  `INID` int NOT NULL,
  `kagenou` int NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Total_Qty` varchar(10) NOT NULL,
  `Total_Bill` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Balance` varchar(10) NOT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleid`, `INID`, `kagenou`, `Customer_Name`, `Total_Qty`, `Total_Bill`, `Status`, `Balance`) VALUES
(18, 9, 16, 'John Smith', '2.0', '260.0', 'Paid!', '0.0'),
(17, 8, 15, 'Casper', '1.0', '13000.0', 'Unpaid!', '-13000.0'),
(16, 7, 14, 'Jimbob', '1.0', '3500.0', 'Unpaid!', '-3500.0'),
(15, 6, 14, 'Jimbob', '1.0', '10000.0', 'Unpaid!', '-10000.0'),
(14, 4, 17, 'Mj', '6.0', '3575.0', 'Paid!', '0.0'),
(13, 4, 18, 'Skalag', '5.0', '75.0', 'Partial', '-25.0'),
(19, 10, 15, 'Casper', '3.0', '750.0', 'Paid!', '0.0'),
(20, 11, 17, 'Mj', '3.0', '1350.0', 'Paid!', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `kageno` int NOT NULL AUTO_INCREMENT,
  `supplier_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  PRIMARY KEY (`kageno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kageno`, `supplier_Name`, `Tp_Number`) VALUES
(5, 'John Doe', '456456'),
(6, 'Jane Doe', '356356');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `User_Name`, `Password`) VALUES
(1, 'Urmom', 'Admin', 'poop123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
