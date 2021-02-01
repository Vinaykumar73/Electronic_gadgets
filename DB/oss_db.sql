-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--

-- --------------------------------------------------------

--

--

CREATE TABLE `admin` (
  `id` int(225) NOT NULL,
  `admin_name` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `contact_num` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_id`, `email`, `password`, `contact_num`) VALUES


-- --------------------------------------------------------

--

--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--

--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Television'),
(2, 'Mobile Phone'),
(3, 'Watch'),
(4, 'Computer & Laptop'),
(5, 'Gadget');

-- --------------------------------------------------------

--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `cus_id` varchar(225) NOT NULL,
  `cus_name` varchar(225) NOT NULL,
  `ship_address` text NOT NULL,
  `payment_type` varchar(225) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `total_amount` int(225) NOT NULL,
  `approve_status` int(225) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--

--

INSERT INTO `order_details` (`order_id`, `order_date`, `cus_id`, `cus_name`, `ship_address`, `payment_type`, `transaction_id`, `total_amount`, `approve_status`) VALUES


-- --------------------------------------------------------

--

--

CREATE TABLE `order_item` (
  `oitem_id` int(11) NOT NULL,
  `order_id` varchar(225) NOT NULL,
  `product_id` varchar(225) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `quantity` int(225) NOT NULL,
  `unit_price` int(255) NOT NULL,
  `sub_total` int(225) NOT NULL,
  `approve_status` int(225) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-

INSERT INTO `order_item` (`oitem_id`, `order_id`, `product_id`, `product_name`, `quantity`, `unit_price`, `sub_total`, `approve_status`) VALUES
(1, '1', '6', 'Headphone', 1, 850, 850, 0),
(2, '2', '3', 'C1 Smart Watch', 2, 1200, 2400, 0),
(3, '2', '5', 'Digital Watch', 1, 2300, 2300, 0),
(4, '3', '1', 'Samsung 32\" LED TV', 1, 14000, 14000, 1),
(5, '4', '6', 'Head Phone', 1, 400, 400, 1);

-- --------------------------------------------------------

--
-

CREATE TABLE `product_info` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `product_category` varchar(225) NOT NULL,
  `product_sub_category` varchar(225) NOT NULL,
  `product_details` text NOT NULL,
  `quantity` int(225) NOT NULL,
  `product_price` int(225) NOT NULL,
  `product_image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--


INSERT INTO `product_info` (`p_id`, `product_name`, `product_category`, `product_sub_category`, `product_details`, `quantity`, `product_price`, `product_image`) VALUES
(1, 'Samsung LED Television', 'Television', 'LED TV', 'This is 32 inch Samsung LED Television, brand new 5 year warranty.', 4, 14000, '91hQL+d6bML._SX425_.jpg'),
(2, 'Smart Watch V8', 'Watch', 'Smart Watch', 'Display: 1.54\" Full touch screen\r\nSD Card up to 64GB\r\nCalculator, Super soft rubber band\r\nDeluxe rubber material is refined, comfortable for extended wear\r\nResolution: High Quality\r\nRound Shape Smartwatch Mobile', 4, 1300, 'v8 Smart Watch.jpg'),
(3, 'Smart Watch C1', 'Watch', 'Smart Watch', 'Display: 1.54\" Full touch screen\r\nSD Card up to 64GB\r\nCalculator, Super soft rubber band\r\nDeluxe rubber material is refined, comfortable for extended wear\r\nResolution: High Quality\r\nRound Shape Smartwatch Mobile', 5, 1400, 'c1 Smart Watch.jpg'),
(4, 'LCD Television', 'Television', 'LCD TV', ': DEIL\n (1366 x 766 ,VGA,HDMI,Audio,DVD\n/ tv', 5, 11000, 'item_XL_12124511_18306164.jpg'),
(5, 'Digital Watch', 'Watch', 'Digital Watch', 'Black ion-plated stainless steel watch featuring round dial with world time for 39 cities, LCD display, and scrolling display mode\r\nQuartz movement with digital display\r\nMineral crystal dial window\r\nFeatures buckle closure, 14-character message display, calendar, 1/100-second stopwatch with memory recall, and countdown timer\r\nWater-resistant to 330 feet (100 M): suitable for snorkeling, as well as swimming, but not diving', 5, 850, 'sswww.jpg'),
(6, 'Head Phone', 'Gadget', 'Head Phone', ' Headphones Over Ear Kids Headphones with Microphone Volume Control Lightweight with Detachable 3.5mm Cable for Smartphone Tablets Laptop (Black/Blue)', 1, 400, '715SbGPU6mL._SX355_.jpg');

-- --------------------------------------------------------
`sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `category_id` varchar(225) NOT NULL,
  `sub_category_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `sub_category_name`) VALUES
(1, '2', 'Smart Phone'),
(2, '2', 'Features Phone'),
(3, '1', 'LED TV'),
(4, '1', 'CRT TV'),
(5, '1', 'LCD TV'),
(6, '4', 'Acer Brand Computer'),
(7, '4', 'hp brand'),
(8, '3', 'Smart Watch'),
(9, '3', 'Digital Watch'),
(10, '5', 'Head Phone'),
(11, '5', 'Speaker');

-- --------------------------------------------------------

--

--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user_id` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `contact_num` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-

INSERT INTO `user_info` (`id`, `name`, `user_id`, `password`, `email`, `contact_num`, `address`) VALUES


--
-
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--

--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--

--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oitem_id`);

--
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`p_id`);

--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--

ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
\
--
-
--
ALTER TABLE `admin`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
ALTER TABLE `order_item`
  MODIFY `oitem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
ALTER TABLE `product_info`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
