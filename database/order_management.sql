-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 06, 2026 at 08:02 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`) VALUES
(2, 1, 11),
(3, 1, 11),
(4, 1, 9),
(5, 1, 5),
(6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Placed','Cancelled','Returned') NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `shipping_method` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `status`, `email`, `country`, `first_name`, `last_name`, `address`, `city`, `postal_code`, `phone`, `shipping_method`, `payment_method`) VALUES
(5, 0, '2024-12-27 11:33:48', 'Placed', 'binash.ahsan@gmail.com', 'Pakistan', 'Binah Ahan', '', '6th floor, Ferozpur road', 'Lahore', '', '03458883421', 'Flat Shipping', 'Cash on Delivery'),
(3, 0, '2024-12-27 10:40:37', 'Placed', 'Asslim@gmail.com', 'Pakistan', 'Assim Al Hakeem', '', 'Chowk Nag Shah Shershah Town', 'Multan', '', '03127771234', 'Flat Shipping', 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`) VALUES
(1, 'Product A', 'Description of Product A', 20.50),
(11, 'Banarsi Dupatta', 'A stunning banarsi dupatta with golden zari work, great for formal wear.', 3500.00),
(3, 'Embroidered Kurta', 'A traditional kurta with elegant floral embroidery, perfect for festive occasions.', 2500.00),
(4, 'Shalwar Kameez', 'A classic cotton shalwar kameez for men, designed for comfort and style.', 3500.00),
(5, 'Chiffon Dupatta', 'Lightweight chiffon dupatta with intricate borders, suitable for casual and formal wear.', 1500.00),
(6, 'Formal Waistcoat', 'Men\'s traditional waistcoat with a sleek design, ideal for weddings and events.', 4000.00),
(7, 'Printed Lawn Suit', 'Ladies\' 3-piece lawn suit with vibrant prints and soft fabric, ideal for summer.', 2800.00),
(8, 'Jamawar Sherwani', 'Richly designed sherwani with golden patterns, perfect for weddings.', 12000.00),
(9, 'Silk Saree', 'Luxurious silk saree with delicate embroidery, ideal for formal occasions.', 8000.00),
(10, 'Khussa Shoes', 'Handmade leather khussa shoes with intricate embroidery for a traditional touch.', 1800.00);

-- --------------------------------------------------------

--
-- Table structure for table `return_orders`
--

DROP TABLE IF EXISTS `return_orders`;
CREATE TABLE IF NOT EXISTS `return_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `return_reason` text NOT NULL,
  `return_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `return_orders`
--

INSERT INTO `return_orders` (`id`, `order_id`, `return_reason`, `return_date`) VALUES
(4, '4', 'product is damaged', '2024-12-27 16:35:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
