-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2018 at 11:16 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `password`) VALUES
(1, 'saimanaz@gmail.com', 'saima');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Woodland'),
(5, 'Mochi'),
(6, 'Red Tape'),
(7, 'Roadstar'),
(8, 'Metro'),
(9, 'Mast & Harbour'),
(10, 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(34, 120, '127.0.0.1', -1, 1),
(35, 123, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Men Shoes'),
(2, 'Women shoes'),
(3, 'Upcomings...');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `supplier_username` varchar(512) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_images` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `supplier_username`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_images`, `product_keywords`, `product_quantity`) VALUES
(120, 'saimanaz0011@gmail.com', 1, 1, 'Men ZOOM OUNK skate shoes', 5716, 'Men ZOOM OUNK skate shoes', 'b37bc957bd4baaf5895cca5325fc20c65716.png', 'Men ZOOM OUNK skate shoes', 5),
(121, 'saimanaz0011@gmail.com', 1, 1, 'Men RUNALLDAY Running shoes', 3116, 'Men RUNALLDAY Running shoes', '4f9c36c0066e095200c9efa2fcbe01eb3116.png', 'Men RUNALLDAY Running shoes', 5),
(122, 'saimanaz0011@gmail.com', 1, 1, 'Men NIKE INCRUSION MID SE', 4797, 'Men NIKE INCRUSION MID SE', '41629d2213f4a9f8769ba12096ac0ca64797.png', 'Men NIKE INCRUSION MID SE', 5),
(123, 'saimanaz0011@gmail.com', 1, 1, 'Men cortez Leather sneakers', 4197, 'Men cortez Leather sneakers', '4a846b9814dc0aa5d4f2727132a545164197.png', 'Men cortez Leather sneakers', 5),
(124, 'saimanaz0011@gmail.com', 1, 1, 'Men cortez Basic sneakers', 4871, 'Men cortez Basic sneakers', '66bed9a0dcd4641e2c3b168a8856c7e74871.png', 'Men cortez Basic sneakers', 5),
(125, 'saimanaz0011@gmail.com', 2, 1, 'Momen AIR PEGASUS 34', 6496, 'Momen AIR PEGASUS 34', '5dfbdfc442cc087b82071c3d7e0015c36496.jpg', 'Momen AIR PEGASUS 34', 5),
(126, 'saimanaz0011@gmail.com', 2, 1, 'Momen CITY TRAINER shoes', 3441, 'Momen CITY TRAINER shoes', 'd97acc193b50873143241f133387d5633441.png', 'Momen CITY TRAINER shoes', 5),
(127, 'saimanaz0011@gmail.com', 2, 1, 'Women FLEX BIJOUX Training', 3051, 'Women FLEX BIJOUX Training', 'dd66c0b86bc133dfc3472e4537aab92c3051.jpg', 'Women FLEX BIJOUX Training', 5),
(128, 'saimanaz0011@gmail.com', 2, 1, 'Women Solid Sneakers', 4737, 'Women Solid Sneakers', '865b04d9ffd2ec4a02128aa68a0c71e44737.jpg', 'Women Solid Sneakers', 5),
(129, 'saimanaz0011@gmail.com', 3, 1, 'Women FREE TR 7 training shoes', 58466, 'Women FREE TR 7 training shoes', '2e20b68f4567470b1249a77df9eaddce5846.jpg', 'Women FREE TR 7 training shoes', 5),
(130, 'ariba@gmail.com', 1, 2, 'Men Future G Basketball Shoes', 3849, 'Men Future G Basketball Shoes', '908a846bc0dad1f5ce667b7e282153943849.jpg', 'Men Future G Basketball Shoes', 5),
(131, 'ariba@gmail.com', 1, 2, 'Adidas(Men Sneakers)', 16999, 'Adidas(Men Sneakers)', 'b18742479df07741c29454dfa208d2ac16999.jpg', 'Adidas(Men Sneakers)', 3),
(132, 'ariba@gmail.com', 1, 2, 'Adidas Men Running shoes', 5999, 'Adidas Men Running shoes', 'c1f1c86fa7725eddfa6bf7ca6d97de7f59999.jpg', 'Adidas Men Running shoes', 5),
(133, 'ariba@gmail.com', 1, 2, 'Adidas Men Mud flat shoes', 3464, 'Adidas Men Mud flat shoes', '67520c7fd5c250437ba3431eb3e0b0553464.jpg', 'Adidas Men Mud flat shoes', 5),
(134, 'ariba@gmail.com', 2, 2, 'Adidas NEO Women Navy Blue ', 4999, 'Adidas NEO Women Navy Blue ', 'bcffb5189f5bf631d884e3bcdf795e2b4999.jpg', 'Adidas NEO Women Navy Blue ', 5),
(135, 'ariba@gmail.com', 2, 2, 'Adidas Women mid white sneakers', 2799, 'Adidas Women mid white sneakers', 'fb998c0f0b6a34a6a60c2fae2acdc6fb5999.jpg', 'Adidas Women mid white sneakers', 5),
(136, 'ariba@gmail.com', 2, 2, 'Adidas Women Neo Navy Blue', 2799, 'Adidas Women Neo Navy Blue', '46ff9bbeb36694ce88d2eeb72c560dca2799.jpg', 'Adidas Women Neo Navy Blue', 5),
(137, 'ariba@gmail.com', 2, 2, 'Adidas Women Cream sneakers', 5499, 'Adidas Women Cream sneakers', '0efe2c7184ac927657324cfe8d2cb4cc5499.jpg', 'Adidas Women Cream sneakers', 5),
(138, 'ariba@gmail.com', 3, 2, 'Adidas Men PW Tennis sneakers', 9999, 'Adidas Men PW Tennis sneakers', '7399485f1c89cf0222fee08294d333469999.jpg', 'Adidas Men PW Tennis sneakers', 0),
(139, 'naz99@gmail.com', 1, 3, '', 1649, 'Puma Men Unix Blue Sneakers', 'c3ee8e93e1aa7f0eea8ce01481cd2ba31649.jpg', 'Puma Men Unix Blue Sneakers', 5),
(140, 'naz99@gmail.com', 1, 3, 'Puma Men Viz Running shoes', 5499, 'Puma Men Viz Running shoes', '0a3212a2a611b07489391cc8ec973daa5499.jpg', 'Puma Men Viz Running shoes', 5),
(141, 'naz99@gmail.com', 1, 3, 'Puma Men White Sports Shoes', 6499, 'Puma Men White Sports Shoes', '9d938a24d4197abe9768abdf80a2eb1a6499.jpg', 'Puma Men White Sports Shoes', 5),
(142, 'naz99@gmail.com', 1, 3, '', 5999, 'Puma Men Olive Green training', 'bdc2cb67e3f0611d67d91f8a110503895999.jpg', 'Puma Men Olive Green training', 5),
(143, 'naz99@gmail.com', 1, 3, 'Puma Men Unix Lazy Slip-On', 1799, 'Puma Men Unix Lazy Slip-On', '7e90e39c4cd44c9cd6d309936a9e62f11799.jpg', 'Puma Men Unix Lazy Slip-On', 5),
(144, 'naz99@gmail.com', 2, 3, 'Puma Women pink sport shoes', 4999, 'Puma Women pink sport shoes', 'd5e15fe30c633b4b9e3d5d0454ea7d254999.jpg', 'Puma Women pink sport shoes', 5),
(145, 'naz99@gmail.com', 2, 3, 'Puma Women Black Smash', 3999, 'Puma Women Black Smash', 'bf84b79b476ec3344bc2ad833d03fb613999.jpg', 'Puma Women Black Smash', 5),
(146, 'naz99@gmail.com', 2, 3, 'Puma Women Blue Enzo', 5999, 'Puma Women Blue Enzo', '4d896bc5f92da56ba5b248647c28010f5999.jpg', 'Puma Women Blue Enzo', 5),
(147, 'naz99@gmail.com', 2, 3, 'Puma Women Olive Green', 4399, 'Puma Women Olive Green', '77961a94c1545766220bd5bf3abea66f4399.jpg', 'Puma Women Olive Green', 5),
(148, 'rajeshkumar12@gmail.com', 1, 5, 'Mochi Men Blue Sneakers ', 2290, 'Mochi Men Blue Sneakers ', 'ba30161e37895e384ab34d17841bfbfe2290.jpg', 'Mochi Men Blue Sneakers ', 5),
(149, 'rajeshkumar12@gmail.com', 1, 5, 'Mochi Men Formal Leather', 3290, 'Mochi Men Formal Leather', '07e756555e652aeed0dddc3d2998f8453290.jpg', 'Mochi Men Formal Leather', 5),
(150, 'rajeshkumar12@gmail.com', 1, 5, 'Mochi Men Black Formal', 3299, 'Mochi Men Black Formal', '327e4a715c27060291eafc96c033223b3299.jpg', 'Mochi Men Black Formal', 5),
(151, 'rajeshkumar12@gmail.com', 1, 5, 'Mochi Men Tan Brown', 3490, 'Mochi Men Tan Brown', '0ffb8a8c054087dd53be5cce6a0bf5543490.jpg', 'Mochi Men Tan Brown', 5),
(152, 'rajeshkumar12@gmail.com', 1, 5, 'Mochi Men Formal Leather', 3291, 'Mochi Men Formal Leather', '767d3638e3191e0627d3e49df058aff73291.jpg', 'Mochi Men Formal Leather', 5),
(153, 'rajeshkumar12@gmail.com', 2, 5, 'Mochi Women Black Ballerinas', 1290, 'Mochi Women Black Ballerinas', '2a18b77032e03d21030a31b5024c20c81290.jpg', 'Mochi Women Black Ballerinas', 5),
(154, 'rajeshkumar12@gmail.com', 2, 5, 'Mochi Women Blue Sneakers', 1990, 'Mochi Women Blue Sneakers', '788151c412a02f32969ee6766a00a4a01990.jpg', 'Mochi Women Blue Sneakers', 5),
(155, 'rajeshkumar12@gmail.com', 2, 5, 'Mochi Women Beige Sneakers', 1991, 'Mochi Women Beige Sneakers', '3e59d54ae0b4f3ec3870e853ce4e01d31991.jpg', 'Mochi Women Beige Sneakers', 5),
(156, 'rajeshkumar12@gmail.com', 2, 5, 'Mochi Women Navy Sneakers', 1999, 'Mochi Women Navy Sneakers', '4f96a3519b5c3ac59fd8371b46b0dd941999.jpg', 'Mochi Women Navy Sneakers', 5),
(157, 'rajeshkumar12@gmail.com', 3, 5, 'Mochi Women Blue Ballerinas', 1299, 'Mochi Women Blue Ballerinas', '86c074c2f29c5536c0220a5cf22c26861299.jpg', 'Mochi Women Blue Ballerinas', 5),
(158, 'dharmendra10@gmail.com', 1, 4, 'Woodland Men Olive Brown', 2446, 'Woodland Men Olive Brown', '3e435773871c864b46e3323fcc6f18da2446.jpg', 'Woodland Men Olive Brown', 5),
(159, 'dharmendra10@gmail.com', 1, 4, 'Woodland Men Pro Planet', 2586, 'Woodland Men Pro Planet', 'fe5eca6a91b8849bd21d7f3a13648ab32586.jpg', 'Woodland Men Pro Planet', 5),
(160, 'dharmendra10@gmail.com', 1, 4, 'Woodland Men Olive Nubuck', 1946, 'Woodland Men Olive Nubuck', '7178f7d91e03792a831af7c09f994ffc1946.jpg', 'Woodland Men Olive Nubuck', 5),
(161, 'dharmendra10@gmail.com', 1, 4, 'Woodland Men Khaki Leather', 2401, 'Woodland Men Khaki Leather', 'dfd5b43eade202392abf289bc89879e72401.jpg', 'Woodland Men Khaki Leather', 5),
(162, 'dharmendra10@gmail.com', 1, 4, 'Woodland Men Grey Leather', 2726, 'Woodland Men Grey Leather', '9ad10b99e0a440a4f7e72ffe02a6f42f2726.jpg', 'Woodland Men Grey Leather', 5),
(163, 'dharmendra10@gmail.com', 1, 4, 'Woodland Men Tan Brown', 1536, 'Woodland Men Tan Brown', '61b0949f58d9525f8ba356974a72de8a1536.jpg', 'Woodland Men Tan Brown', 5);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_login`
--

CREATE TABLE `supplier_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `owner_name` varchar(500) NOT NULL,
  `owner_address` varchar(500) NOT NULL,
  `owner_city` varchar(500) NOT NULL,
  `owner_pincode` varchar(500) NOT NULL,
  `store_name` varchar(500) NOT NULL,
  `store_address` varchar(500) NOT NULL,
  `store_city` varchar(500) NOT NULL,
  `store_pincode` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_login`
--

INSERT INTO `supplier_login` (`id`, `username`, `password`, `owner_name`, `owner_address`, `owner_city`, `owner_pincode`, `store_name`, `store_address`, `store_city`, `store_pincode`) VALUES
(10, 'saimanaz0011@gmail.com', '123123', 'Saima  Naz', 'IH Girls Hostel MNNIT', 'Allahabad', '211004', 'Nike Shoe Store', 'Civil lines', 'Allahabad', '211004'),
(11, 'ariba@gmail.com', '123123', 'Ariba  Tariq', 'IH Girls Hostel MNNIT', 'Allahabad', '211004', 'Adidas shoe store', 'Civil lines', 'Allahabad', '211004'),
(12, 'naz99@gmail.com', '123123', 'Naaz ', 'Kalyanpur Kanpur', 'Kanpur', '208001', 'Puma shoe store', 'Kalyanpur', 'Kanpur', '208001'),
(13, 'rajeshkumar12@gmail.com', '123456', 'Rajesh  Kumar', '12/B Raja Singh Agra ', 'Agra', '233332', 'Mochi Shoe Store', '12/B Raja Singh Agra ', 'Agra', '233330'),
(14, 'dharmendra10@gmail.com', '123456', 'Dharmendra  Singh', '10/3 Sector C New Delhi ', 'New Delhi', '234441', 'New Delhi', '10/3 Sector C New Delhi ', 'New Delhi', '234441');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(9, 'Saima', 'Naz', 'saim@gmail.com', '3b8d9b57b37e0f5b196d44238a6fafec', '1234567890', 'hhh', 'dd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `supplier_login`
--
ALTER TABLE `supplier_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `supplier_login`
--
ALTER TABLE `supplier_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
