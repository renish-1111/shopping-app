-- Active: 1738825498947@@bzsves964f5np0tzhr7x-mysql.services.clever-cloud.com@3306@bzsves964f5np0tzhr7x
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 07:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12



use bzsves964f5np0tzhr7x;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test anuj', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronics', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Furniture', 'test', '2017-01-24 19:19:54', ''),
(6, 'Fashion', 'Fashion', '2017-02-20 19:18:52', ''),
(8, 'food', 'nice', '2025-01-31 03:26:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '15', 1, '2025-01-29 18:19:19', 'Debit / Credit card', NULL),
(8, 5, '1', 1, '2025-01-31 03:18:50', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 8, 'Delivered', 'deleverd', '2025-01-31 03:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 23, 5, 4, 5, 'deep', 'ladva', 'goof', '2025-02-05 17:51:37'),
(6, 23, 5, 4, 5, 'deep', 'ladva', 'goof', '2025-02-05 17:52:05'),
(7, 23, 5, 4, 5, 'deep', 'ladva', 'goof', '2025-02-05 17:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 16:54:35', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'HP', 'HP Pavilion 14', 75690, 97867, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'hp.jpg', 'cust.jpg', 'hpp.jpg', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Lenovo ', 'Lenovo LOQ 2024 ', 65490, 82690, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'lenovo1.jpg', 'lenovo2.jpg', 'lenovo3.jpg', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 20:19:22', ''),
(22, 4, 4, 'Mobile', 'apple', 40000, 50000, 'this is good phone', 'img1.jfif', 'img2.jfif', 'img3.jpg', 300, 'In Stock', '2025-01-31 03:28:29', NULL),
(23, 4, 6, 'Apple', 'Mackbook', 109990, 114900, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Apple 2024 MacBook Air (13-inch, Apple M3 chip with 8?core CPU and 8?core GPU, 16GB Unified Memory, 256GB) - Midnight</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 483.25px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 115.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 367.513px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple</span></td></tr><tr class=\"a-spacing-small po-model_name\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Model Name</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 367.513px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">MacBook Air</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 367.513px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">13.6 Inches</span></td></tr><tr class=\"a-spacing-small po-color\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Colour</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 367.513px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Midnight</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Model</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 367.513px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple M3</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.738px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 367.513px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 GB</span></td></tr></tbody></table></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div>', 'apple1.webp', 'apple2.jpg', 'apple3.jpg', 0, 'In Stock', '2025-02-05 17:51:02', NULL),
(24, 4, 4, 'iphone', 'Apple', 137900, 144900, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">iPhone 16 Pro Max 256 GB: 5G Mobile Phone with Camera Control, 4K 120 fps Dolby Vision and a Huge Leap in Battery Life. Works with AirPods; Black Titanium</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 410.05px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">iOS 17</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">256 GB</span></td></tr><tr class=\"a-spacing-small po-memory_storage_capacity\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Memory Storage Capacity</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">256 GB</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">6.9 Inches</span></td></tr></tbody></table></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div>', 'iph1.jpg', 'iphone2.jpg', 'iphone3.jpg', 0, 'In Stock', '2025-02-05 18:01:01', NULL),
(25, 4, 4, 'Oneplus', 'Oneplus 13R', 42998, 44499, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">OnePlus 13R | Smarter with OnePlus AI (12GB RAM, 256GB Storage Nebula Noir)</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">OnePlus</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Android 15</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 GB</span></td></tr><tr class=\"a-spacing-small po-memory_storage_capacity\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Memory Storage Capacity</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">256 GB</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">6.78 Inches</span></td></tr></tbody></table></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div>', 'one1.jpg', 'one2.jpg', 'one3.jpg', 0, 'In Stock', '2025-02-05 18:03:54', NULL),
(26, 4, 4, 'Samsung ', 'Samsung Galaxy S23', 71999, 114999, '<div id=\"title_feature_div\" class=\"celwidget\" data-feature-name=\"title\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"title\" data-csa-c-slot-id=\"title_feature_div\" data-csa-c-asin=\"B0BT9CXXXX\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"7kz0lx-kgorvi-3howqj-qs4uk5\" data-cel-widget=\"title_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><div id=\"titleSection\" class=\"a-section a-spacing-none\" style=\"box-sizing: border-box; margin-bottom: 0px;\"><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Samsung Galaxy S23 Ultra 5G AI Smartphone (Green, 12GB, 256GB Storage)</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 440.05px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Samsung</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Android</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">12 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Model</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Snapdragon</span></td></tr><tr class=\"a-spacing-small po-cpu_model.speed\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Speed</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">2.99 GHz</span></td></tr></tbody></table></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><br></span></div></div></div><div id=\"qpeTitleTag_feature_div\" class=\"celwidget\" data-feature-name=\"qpeTitleTag\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"qpeTitleTag\" data-csa-c-slot-id=\"qpeTitleTag_feature_div\" data-csa-c-asin=\"B0BT9CXXXX\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"nq5d3g-9e4w60-jzki2x-okfxpe\" data-cel-widget=\"qpeTitleTag_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"></div><div id=\"bylineInfo_feature_div\" class=\"celwidget\" data-feature-name=\"bylineInfo\" data-csa-c-type=\"widget\" data-csa-c-content-id=\"bylineInfo\" data-csa-c-slot-id=\"bylineInfo_feature_div\" data-csa-c-asin=\"B0BT9CXXXX\" data-csa-c-is-in-initial-active-row=\"false\" data-csa-c-id=\"hew885-4g3y1f-1v38a7-y8al0b\" data-cel-widget=\"bylineInfo_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"></div>', 'smsg1.jpg', 'smg2.jpg', 'smg3.jpg', 0, 'In Stock', '2025-02-05 18:06:29', NULL),
(27, 4, 4, 'OPPO', 'OPPO Reno13 Pro 5G', 49999, 54999, '<h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">AI Livephoto in 2K | One Click AI Clarity</h3><div><h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\"></h3><h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">Underwater Photography with IP68 and IP69</h3></div><div><h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\"></h3><h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">50MP 3.5x Periscope Telephoto Camera</h3></div><div><h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\"></h3><h3 data-v-55d533f2=\"\" class=\"label font-body-3-2\" style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; font-size: 16px; font-weight: 400; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); font-family: OPPOSans, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">5800mAh 5 Years Durable Battery</h3></div>', 'op1.webp', 'op2.webp', 'op3.webp', 0, 'In Stock', '2025-02-05 18:10:38', NULL),
(28, 4, 4, 'Motorola', 'Motorola Edge 50 Fusion 5G', 23899, 29999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Motorola Edge 50 Fusion 5G (Marshmallow Blue, 12GB RAM, 256GB Storage)</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 440.05px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Motorola</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Android 14</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">12 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Model</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Snapdragon</span></td></tr><tr class=\"a-spacing-small po-cpu_model.speed\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 115.2px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Speed</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 324.85px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">2.2 GHz</span></td></tr></tbody></table></span></div>', 'edge1.jpg', 'edge2.jpg', 'edge3.jpg', 0, 'In Stock', '2025-02-05 18:13:34', NULL),
(29, 4, 4, 'iQOO ', 'iQOO Z9s 5G', 21999, 27999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><font size=\"2\">iQOO Z9s 5G (Titanium Matte, 8GB RAM, 256GB Storage) | 120 Hz 3D Curved AMOLED Display | 5500 mAh Ultra-Thin Battery | Dimesity 7300 5G Processor | Sony IMX882 OIS Camera with Aura Light</font></span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">iQOO</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Funtouch OS 14 Based On Android 14</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">8 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Model</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Others</span></td></tr><tr class=\"a-spacing-small po-cpu_model.speed\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Speed</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">2.5 GHz</span></td></tr></tbody></table></span></div>', 'iq1.webp', 'iq2.jpg', 'iq3.jpg', 0, 'In Stock', '2025-02-05 18:22:27', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(30, 4, 4, 'Apple', 'Apple iPhone 13 ', 43499, 59900, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Apple iPhone 13 (128GB) - (Product) RED</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 410.05px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Apple</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">iOS 14</span></td></tr><tr class=\"a-spacing-small po-memory_storage_capacity\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Memory Storage Capacity</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">128 GB</span></td></tr><tr class=\"a-spacing-small po-display.size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Screen Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">6.1 Inches</span></td></tr><tr class=\"a-spacing-small po-resolution\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 107.35px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Resolution</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 302.7px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">4K</span></td></tr></tbody></table></span></div>', 'iphone13.webp', 'iphone13.2.jpg', 'iphone13.3.jpg', 0, 'In Stock', '2025-02-05 18:25:08', NULL),
(31, 4, 4, 'Oneplus', 'Oneplus 12R', 42999, 45999, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">OnePlus 12R (Cool Blue, 16GB RAM, 256GB Storage)</span></h1><div><span class=\"a-size-large product-title-word-break\" style=\"box-sizing: border-box; text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\"><table class=\"a-normal a-spacing-micro\" style=\"width: 637.688px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"a-spacing-small po-brand\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 0px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Brand</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 0px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">OnePlus</span></td></tr><tr class=\"a-spacing-small po-operating_system\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">Operating System</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">OxygenOS</span></td></tr><tr class=\"a-spacing-small po-ram_memory.installed_size\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">RAM Memory Installed Size</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">16 GB</span></td></tr><tr class=\"a-spacing-small po-cpu_model.family\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 3px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Model</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 3px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">Snapdragon</span></td></tr><tr class=\"a-spacing-small po-cpu_model.speed\" style=\"box-sizing: border-box; margin-bottom: 8px !important;\"><td class=\"a-span3\" style=\"vertical-align: top; padding: 3px 3px 0px 0px; margin-right: 0px; width: 166.938px;\"><span class=\"a-size-base a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;\">CPU Speed</span></td><td class=\"a-span9\" style=\"vertical-align: top; padding: 3px 0px 0px 3px; margin-right: 0px; width: 470.75px;\"><span class=\"a-size-base po-break-word\" style=\"box-sizing: border-box; word-break: break-word; line-height: 20px !important;\">3.2 GHz</span></td></tr></tbody></table></span></div>', '1.webp', '2.jpg', '3.jpg', 0, 'In Stock', '2025-02-05 18:28:59', NULL),
(32, 4, 2, 'Sony ', 'Sony BRAVIA 3 ', 96, 1, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"box-sizing: border-box; padding: 0px; font-weight: 400; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;\"><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; font-size: 14px;\"><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Resolution: 4K Ultra HD (3840 x 2160) | Refresh Rate: 60 hertz | BRAVIA 3 LED</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Connectivity: 4 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Sound : 20 Watts Output | 2ch | Bass Reflex Speaker | Dolby Atmos | Ambient Optimization |2 Full Range (Bass Reflex)</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Smart TV Features: Google TV | Watchlist | Google Assistant | Chromecast Built In | Built In Mic |Game menu | ALLM/eARC (HDMI 2.1 Compatible) | Additional Features: Apple Airplay | Apple Homekit | Alexa</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Display : 4K LED | 4K HDR Processor X1 | Triluminos PRO | 4K X-Reality PRO | MotionFlow XR 100 | HDR10/HLG, Dolby Vision</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Warranty Information: 1 Year comprehensive warranty on product provided by the brand from the date of purchase</span></li></ul></h1>', 'sony1.jpg', 'sony2.jpg', 'sony3.jpg', 0, 'In Stock', '2025-02-05 18:35:20', NULL),
(33, 4, 2, 'LG ', 'LG ', 64, 1, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Resolution: 4K Ultra HD (3840x2160) | Refresh Rate: 60 hertz</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Connectivity: Wi-Fi (Built-in) | 3 HDMI ports to connect set top box, Blu Ray players, gaming console | 2 USB ports to connect hard drives and other USB devices | eARC | Bluetooth 5.0 | Optical | Ethernet</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Sound: 20 Watts Output | 2.0 Ch Speaker | AI Sound (Virtual Surround 5.1 up-mix) | Auto Volume Levelling | Bluetooth Surround Ready</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Smart TV Features: WebOS Smart TV | AI ThinQ | Apple Airplay 2 &amp; Homekit | Game Optimizer| Filmmaker Mode | ?5 AI Processor 4K Gen6 | HDR 10 |1.5 GB RAM + 8 GB Storage | Unlimited OTT App Support: Netflix, Prime Video, Disney+ Hotstar, Apple TV, Jio Cinema, SonyLIV, Discovery+, Zee5, Voot, MxPlayer, Google Play Movies &amp; TV, YuppTV, Youtube</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Display: 4K Ultra HD LED Display | Slim Design | 4K Upscaler</span></li><li class=\"a-spacing-mini\" style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: var(--__N4QdCheV6mGo,#0f1111);\">Warranty Information: 1-Year LG India Standard Warranty on Product from the date of purchase (T&amp;C Apply)</span></li></ul>', 'lg1.jpg', 'lg2.jpg', 'lg3.jpg', 0, 'In Stock', '2025-02-05 18:40:05', NULL),
(34, 6, 12, 'Air Jordan', 'Air Jordan', 11495, 11495, '<ul class=\"css-1vql4bw eru6lik0 nds-list\" style=\"box-sizing: inherit; margin-bottom: 0px; margin-left: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Helvetica Now Text&quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; list-style: none; color: rgb(17, 17, 17);\"><li data-testid=\"product-description-color-description\" style=\"box-sizing: inherit; margin: 0px 0px 0px 27px; padding-top: 0px; padding-right: 0px; padding-bottom: var(--podium-cds-size-spacing-xs); padding-left: 0px; border: 0px; font: var(--podium-cds-typography-body1); vertical-align: baseline; list-style: disc;\">Colour Shown:&nbsp;Black/Summit White/Off-Noir</li><li data-testid=\"product-description-style-color\" style=\"box-sizing: inherit; margin: 0px 0px 0px 27px; padding-top: 0px; padding-right: 0px; padding-bottom: var(--podium-cds-size-spacing-xs); padding-left: 0px; border: 0px; font: var(--podium-cds-typography-body1); vertical-align: baseline; list-style: disc;\">Style:&nbsp;DQ8426-010</li><li data-testid=\"product-description-country-of-origin\" style=\"box-sizing: inherit; margin: 0px 0px 0px 27px; padding-top: 0px; padding-right: 0px; padding-bottom: var(--podium-cds-size-spacing-xs); padding-left: 0px; border: 0px; font: var(--podium-cds-typography-body1); vertical-align: baseline; list-style: disc;\">Country/Region of Origin: Indonesia</li></ul>', 'airjordan.png', 'jordan2.png', 'jordan3.png', 0, 'In Stock', '2025-02-06 06:56:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 8, 'apple', '2025-01-31 03:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'deeppprajapati642@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-29 18:17:46', NULL, 1),
(25, 'deepladva@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-31 03:16:53', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'LADVA DIP', 'deeppprajapati642@gmail.com', 9313560787, '25f9e794323b453885f5181f1b624d0b', 'rajkot', 'gujrat', 'gujrat', 360570, NULL, NULL, NULL, NULL, '2025-01-29 18:17:29', NULL),
(5, 'deepladva', 'deepladva@gmail.com', 9313560722, 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-31 03:16:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
