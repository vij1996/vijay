-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 01:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vijayfilpcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `filpcart`
--

CREATE TABLE `filpcart` (
  `salesid` varchar(10) NOT NULL,
  `salesphoto` varchar(25) NOT NULL,
  `salesname` varchar(30) NOT NULL,
  `salesammout` varchar(5) NOT NULL,
  `salespecation` varchar(100) NOT NULL,
  `salestype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filpcart`
--

INSERT INTO `filpcart` (`salesid`, `salesphoto`, `salesname`, `salesammout`, `salespecation`, `salestype`) VALUES
('1', 'oneplus.jpg', 'OnePlus 7T ', '35000', '(Grey color,8GB RAM, 128 Storage)', 'mobile'),
('2', 'samsung.jpg', 'Samsung Galaxy S20+', '20000', '5G SmartPhone (LightPink, 12RAM,250 Storage)', 'mobile'),
('3', 'apple.jpg', 'iPhone 14 Pro Max', '75000', '5G SmartPhone (White color,128 GBRAM,512 GB\r\nStorage)', 'mobile'),
('4', 'redme.jpg', 'Redmi Note 12 Pro', '25999', '5G SmartPhone (Glacier Blue,6GB RAM,128GBStorage)', 'mobile'),
('5', 'vivo.webp', 'Vivo t1 ', '15499', '5G SmartPhone (Pink color, 12GB,128GB,\r\nStorage)', 'mobile'),
('6', 'google.jpg', 'Google Pixel Phone', '32999', '5G SmartPhone (Light Blue,6GB RAM, 128GB\r\nStorage)', 'mobile'),
('7', 'asus.jpg', 'Asus ZenFone 5Z', '18999', '5G SmartPhone (White Color,8GBRAM,128GB\r\nStorage,Gameing mobile)', 'mobile'),
('8', 'realme.jpg', 'Realme m13', '25000', '5G SamartPhone (Blue Color,12GB RAM,128 Storage)', 'mobile'),
('9', 'elec1.webp', 'ASUS TUE Gaming  A', '', '', ''),
('9', 'elec1.webp', 'ASUS TUE Gaming  A15', '56990', ' Black Color 8GB Memory 512GB Display 15.6 inches  Windows 11', 'electric'),
('10', 'elec2.jpg', 'canon ', '36999', ' Black Color,EOS 1500D,Hand Held,24.10Effective,\r\nBuilt -in Monaural Microphone,  ', 'electric'),
('11', 'elec3.jpg', 'Fire-Boltt Hercules', '3999', 'Black Color 1.83 Large Display,BT Calling \r\nWith Voice Assist & Metal Body Smartwatch', 'electric'),
('12', 'elec4.jpg', 'Juke Cinema SB270', '10999', 'Black Color Digital,Wireless,Subwoofer With Remote,HDMI ARC 220 W Bluetooth Soundbar', 'electric'),
('13', 'elec5.jpg', 'BOAT Stone 1000', '3000', 'Black Color Stone 1000 14W Bluetooth Speaker \r\nStereo Channel', 'electric'),
('14', 'elec6.jpg', 'ZEBROINCS ', '1200', 'Black Color Buds T100 With Up To 28 Hours \r\nplayback & AI ENC for Calls Bluetooth Headset', 'electric'),
('15', 'elec7.jpg', 'PLAYSATION  PRO- 4 ', '35000', 'White Color Motion Controller Included \r\nTwo Games CD Avilable ', 'electric'),
('16', 'elec8.jpg', 'INSTA360 ACTIONCAMERA X3', '46999', 'Black Color Action Camera X3 Sports \r\n72MP ', 'electric'),
('17', 'fac1.webp', 'The Rock T-Shirt', '799', 'Black Color (Men Typography Round Neck\r\nGYM T-Shirt', 'fashaion'),
('18', 'fac2.webp', 'Cheey Vloys T-Shirt ', '600', ' Black Color Motor vloys T-shirt Printed the \r\nEngine Image', 'fashaion'),
('19', 'fac3.webp', 'TOM T-Shirt', '399', 'Light Green Color (Men Printed Round Neck \r\nlow price)\r\n', 'fashaion'),
('21', 'fac5.webp', 'Nick Hooded T-Shirt', '599', 'White Black Red Mixed Color (Men Full Sleeve\r\nSoild Sweet Shirt ', 'fashaion'),
('22', 'fac6.webp', 'Typography RAound Neck', '599', 'Pink Color (men Striped Hooded Neck T-Shirt)', 'fashaion'),
('23', 'fac7.webp', 'Vebnor Shirt', '799', 'Blue Color (Men Regular Fit Printed Spread Coller Usasual Shirt )', 'fashaion'),
('24', 'fac8.webp', 'Vebnor Shirt', '899', 'Mixed Color (Men slim Fit Printed Casual Shirt )', 'fashaion'),
('25', 'toy1.webp', 'Mirana Toy', '399', 'Black Color (Mirana USB Rechargeable Racing RC Car High Speed Remote Control Toy )', 'toys'),
('26', 'toy2.webp', 'FTAFAT TOY', '599', 'Multicolr (My Happy House Home Building Blocks Learning Toys Educational Non-Toxic Brain Building 72', 'toys'),
('27', 'toy3.webp', 'ALSTOY', '500', 'Red Color (Alstoy r1 Sparts Ride On Bike With Rechareable Battery Operated 3 to 8 Years Red \r\nEik ', 'toys'),
('28', 'toy4.webp', 'Macros Super Soft', '999', 'Black Color (Super soft to complete Pack Stuffed Soft toy Combo  of  teddy bean for kids gift -25cm ', 'toys'),
('29', 'toy5.webp', 'Vebnor Toy', '500', 'Mulicolor (Kiddle Castle 1.20 Off Rounder \r\nRock Climbing Recnagable Truck With Remote\r\nControl  For', 'toys'),
('30', 'toy6.webp', 'ELFIGO ', '499', 'Pink Color (Cute Soft Body Toy For Kids In Pink\r\nHead,Legs,Moveable 30cm ', 'toys'),
('31', 'toy7.webp', 'MACRAS', '799', 'Red Color (Miches Shope sofa $Plush Shope For\r\nKids Keddy Bear 45cm ', 'toys'),
('32', 'toy8.webp', 'AS TOY', '599', 'Multocolor (AS toys 6-inch Iron Man Action \r\nFigure Set For Kids With Weapon & LED LIGHT aVENGERS Ir', 'toys'),
('33', 'net1.webp', 'GARWARE NET', '520', 'Nylon Fishing Nets In Puducherry Get lates price ', 'fishingnet'),
('34', 'net2.webp', 'GARWARE NET', '550', 'Garware Square 5mm Braided Single Lager Safety \r\nnet', 'fishingnet'),
('33', 'net3.webp', 'GARWARE NET', '599', 'Blue HDFC garware protection net square feet nirmal enter prices', 'fishingnet'),
('36', 'net4.jpg', 'GARWARE NET', '500', 'Garware wall Ropes ltd is ladies swimming pool manufacting ', 'fishingnet'),
('37', 'net5.jpg', 'GARWARE NET', '699', 'europen bottom fishing alliance arckives fish focus  ', 'fishingnet'),
('38', 'net6.jpg', 'GARWARE NET', '420', 'Garware make HDFC fishing net filter cleaning fishing net', 'fishingnet'),
('40', 'net7.jpg', 'GARWARE NET', '600', 'Safety net garware safety net manfactuer from palampur', 'fishingnet'),
('41', 'net8.jpg', 'GARWARE NET', '500', 'Garware make fishing net ', 'fishingnet'),
('20', 'fac4.webp', 'OTTO ', '600', ' Man full Sleeve Printed Hooded ', 'fashaion'),
('20', 'fac4.webp', 'OTTO ', '600', ' Man full Sleeve Printed Hooded ', 'fashaion');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_Number` varchar(10) NOT NULL,
  `customer_Name` varchar(25) NOT NULL,
  `customer_phone_no` varchar(10) NOT NULL,
  `customer_Gmail` varchar(50) NOT NULL,
  `customer_Adderss` varchar(50) NOT NULL,
  `product_Qty` varchar(50) NOT NULL,
  `Ammount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_Number`, `customer_Name`, `customer_phone_no`, `customer_Gmail`, `customer_Adderss`, `product_Qty`, `Ammount`) VALUES
('001', 'vicky', '9898989898', 'smartvicky@gmail.com', 'jsdbfwruvviywgvwey', '5', '35000');

-- --------------------------------------------------------

--
-- Table structure for table `order2`
--

CREATE TABLE `order2` (
  `order_Number` varchar(10) NOT NULL,
  `customer_Name` varchar(25) NOT NULL,
  `customer_phone_no` varchar(10) NOT NULL,
  `customer_Gmail` varchar(50) NOT NULL,
  `customer_Adderss` varchar(50) NOT NULL,
  `Product_Qty` varchar(50) NOT NULL,
  `Ammount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order2`
--

INSERT INTO `order2` (`order_Number`, `customer_Name`, `customer_phone_no`, `customer_Gmail`, `customer_Adderss`, `Product_Qty`, `Ammount`) VALUES
('001', 'pravin', '9898989898', 'vijayvijay@gmail.com', 'no 42 thaneai salai road sanjai gandhi nager', '2', '35000'),
('002', 'vijay', '9840061866', 'vijayvij@gamil.com', 'no:42 thanain salail road sanjai gandhi nager', '1', '25000'),
('003', 'vicky', '9898989898', 'vbbnronow', 'rwnoiwrnw', '2', '60000'),
('004', 'albert', '9840061866', 'albert', 'uebuiwbiub', '8', '555555'),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('005', 'ram', '9840061866', 'ramkumar@gmail.com', 'ibsvbirwbw', '2', '550'),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('006', 'pravin', '9898989898', 'vijayvijay@gmail.com', 'no 42 thaneai salai road sanjai gandhi nager', '2', '550');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_Number`,`customer_Name`,`customer_phone_no`,`customer_Gmail`,`customer_Adderss`,`Ammount`),
  ADD KEY `order_Number` (`order_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
