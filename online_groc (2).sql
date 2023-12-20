-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2021 at 06:20 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_groc`
--
CREATE DATABASE IF NOT EXISTS `online_groc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_groc`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE IF NOT EXISTS `admin_cred` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`id`, `Firstname`, `Email`, `Password`) VALUES
(1, 'Sunaina Joshi', 'sunainajoshi0027@gmail.com', 'mamta536');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `Username` varchar(30) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `tabName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Username`, `id`, `Name`, `Quantity`, `Price`, `tabName`) VALUES
('zainahmeds123@gmail.com', 1, 'apple', 1, 20, 'cat_fruit'),
('laval_kaur@yahoo.co.in', 2, 'Lakme face cream', 1, 20, 'cat_fruit'),
('zainahmeds123@gmail.com', 3, 'brinjal', 1, 20, 'cat_fruit'),
('laval_kaur@yahoo.co.in', 4, 'beetroot', 2, 40, 'cat_fruit'),
('zainahmeds123@gmail.com', 5, 'banana', 1, 20, 'cat_fruit'),
('zainahmeds123@gmail.com', 6, 'cauliflower', 2, 40, 'cat_fruit'),
('tjoshi52@gmail.com', 7, 'beetroot', 1, 20, 'cat_fruit'),
('tjoshi52@gmail.com', 8, 'cauliflower', 2, 40, 'cat_fruit'),
('devganamar@gmail.com', 23, 'pomegranate', 1, 18, 'cat_fruit'),
('devganamar@gmail.com', 24, 'cauliflower', 1, 20, 'cat_fruit'),
('devganamar@gmail.com', 25, 'tomato', 1, 15, 'cat_fruit');

-- --------------------------------------------------------

--
-- Table structure for table `cat_bakery`
--

CREATE TABLE IF NOT EXISTS `cat_bakery` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_bakery`
--

INSERT INTO `cat_bakery` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'BA0001', 'Almond Cookies', 'images/Bakery/almond_cookies.jpg', 'freshly baked almond cookies', 350, 250, 'Bonbon'),
(2, 'BA0002', 'Bread Crumbs', 'images/Bakery/bread_crumbs.jpg', 'Fine bread crumbs', 55, 45, 'DREAM BAKE PRIVATE LIMITED'),
(3, 'BA0003', 'Bread Sticks.', 'images/Bakery/bread_sticks.jpg', 'Fresh bread sticks', 125, 25, 'Milky Mist Dairy Foods Private Limited'),
(4, 'BA0004', 'Chocolate Cake', 'images/Bakery/chocolate_cake.jpg', 'Fresh Chocolate Cake', 145, 550, 'Milky Mist Dairy Foods Private Limited'),
(5, 'BA0005', 'Chocolate Cookies', 'images/Bakery/chocolate_cookies.jpg', 'Fresh Chocolate Cookies', 155, 150, 'DREAM BAKE PRIVATE LIMITED'),
(6, 'BA0006', 'Cookies', 'images/Bakery/cookies.jpg', 'Fresh Cookies', 65, 225, 'Bliss Chocolates India Pvt. Ltd'),
(7, 'BA0007', 'Garlic Bread', 'images/Bakery/garlic_bread.jpg', 'Fresh Garlic Bread', 20, 55, 'Bonbon'),
(8, 'BA0008', 'Ladi Pav', 'images/Bakery/ladi_pav.jpg', 'Fresh Ladi Pav', 300, 35, 'Bonbon'),
(9, 'BA0009', 'Naan Khataai', 'images/Bakery/nankhatai.jpg', 'Fresh Naan Khataai', 350, 120, 'Milky Mist Dairy Foods Private Limited'),
(10, 'BA0010', 'Veg Cake', 'images/Bakery/veg_cakes.jpg', 'Fresh Cake', 5, 350, 'DREAM BAKE PRIVATE LIMITED');

-- --------------------------------------------------------

--
-- Table structure for table `cat_beverages`
--

CREATE TABLE IF NOT EXISTS `cat_beverages` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_beverages`
--

INSERT INTO `cat_beverages` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'BE0001', 'Bisleri mineral water', 'images/Beverages/bisleri-mineral-water.jpg', 'Fresh Bisleri mineral water', 100, 200, 'Sproutlife Foods Private Ltd'),
(2, 'BE0002', 'cadbury bournvita health drink', 'images/Beverages/cadbury-bournvita-health-drink.jpg', 'Refreshing cadbury bournvita health drink', 80, 125, 'Milky Mist Dairy Foods Private Limited\n'),
(3, 'BE0003', 'hersheys syrup chocolate', 'images/Beverages/hersheys-syrup-chocolate.jpg', 'Refreshing hersheys syrup chocolate', 120, 225, 'Bliss Chocolates India Pvt. Ltd'),
(4, 'BE0004', 'Kinley Club Soda', 'images/Beverages/kinley-club-soda.jpg', 'Refreshing Kinley Club Soda', 10, 20, 'Bliss Chocolates India Pvt. Ltd\n'),
(5, 'BE0005', 'Nescafe Coffee Classic', 'images/Beverages/nescafe-coffee-classic.jpg', 'Refreshing Nescafe Coffee Classic', 190, 35, 'Milky Mist Dairy Foods Private Limited\n'),
(6, 'BE0006', 'Pepsi Soft Drink Mini Can', 'images/Beverages/pepsi-soft-drink-mini-can.jpg', 'Refreshing Pepsi Soft Drink Mini Can', 250, 75, 'Sproutlife Foods Private Ltd'),
(7, 'BE0007', 'Real Fruit juice Litchi', 'images/Beverages/real-fruit-juice-litchi.jpg', 'Refreshing Pepsi Soft Drink Mini Can', 350, 185, 'Bliss Chocolates India Pvt. Ltd\n'),
(8, 'BE0008', 'Taj Mahal Tea', 'images/Beverages/taj-mahal-tea.jpg', 'Refreshing Taj Mahal Tea', 25, 490, 'Sproutlife Foods Private Ltd'),
(9, 'BE0009', 'Tropicana 100 juice orange', 'images/Beverages/tropicana-100-juice-orange.jpg', 'Refreshing Tropicana 100 juice orange', 18, 185, 'Bliss Chocolates India Pvt. Ltd\n'),
(10, 'BE0010', 'Tropicana Delight Fruit Juice Mixed Fruit', 'images/Beverages/tropicana-delight-fruit-juice-mixed-fruit.jpg', 'Refreshing Tropicana Delight Fruit Juice Mixed Fruit', 600, 395, 'Sproutlife Foods Private Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `cat_brandedfood`
--

CREATE TABLE IF NOT EXISTS `cat_brandedfood` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_brandedfood`
--

INSERT INTO `cat_brandedfood` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'BR0001', 'Britannia 50 50 maska chaska ', 'images/Branded Food/britannia-50-50-maska-chaska-biscuits.jpg', 'Branded Britannia 50 50 maska chaska Biscuits', 350, 10, 'Milky Mist Dairy Foods Private Limited\n'),
(2, 'BR0002', 'Britannia Biscuits little hearts', 'images/Branded Food/britannia-biscuits-little-hearts.jpg', 'Branded Britannia Biscuits little hearts', 55, 25, 'Bliss Chocolates India Pvt. Ltd\n'),
(3, 'BR0003', 'Cadbury Biscuits Oreo Vanila', 'images/Branded Food/cadbury-biscuits-oreo-vanila.jpg', 'Branded Cadbury Biscuits Oreo Vanila', 180, 55, 'Sproutlife Foods Private Ltd\n'),
(4, 'BR0004', 'Cadbury Dairy Milk', 'images/Branded Food/cadbury-dairy-milk.jpg', 'Branded Cadbury Dairy Milk', 2, 5, 'Sproutlife Foods Private Ltd\n'),
(5, 'BR0005', 'Chings Hakka Noodles veg', 'images/Branded Food/chings-hakka-noodles-veg.jpg', 'Branded Chings Hakka Noodles veg', 600, 85, 'Sproutlife Foods Private Ltd\n'),
(6, 'BR0006', 'Kelloggs Corn Flakes', 'images/Branded Food/kelloggs-corn-flakes.jpg', 'Branded Kelloggs Corn Flakes', 150, 75, 'Bliss Chocolates India Pvt. Ltd\n'),
(7, 'BR0007', 'Kissan fresh tomato ketchup', 'images/Branded Food/kissan-fresh-tomato-ketchup.jpg', 'Branded Kissan fresh tomato ketchup', 12, 95, 'Bonbon\n'),
(8, 'BR0008', 'Kissan Mixed Fruit Jam', 'images/Branded Food/kissan-mixed-fruit-jam.jpg', 'Branded Kissan Mixed Fruit Jam', 550, 105, 'Bliss Chocolates India Pvt. Ltd\n'),
(9, 'BR0009', 'Maggi Noodles Masala', 'images/Branded Food/maggi-noodles-masala.jpg', 'Branded Maggi Noodles Masala', 450, 46, 'Bliss Chocolates India Pvt. Ltd\n'),
(10, 'BR0010', 'Patanjali Honey', 'images/Branded Food/patanjali-honey.jpg', 'Branded Patanjali Honey', 195, 118, 'Bonbon\n');

-- --------------------------------------------------------

--
-- Table structure for table `cat_fruit`
--

CREATE TABLE IF NOT EXISTS `cat_fruit` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_fruit`
--

INSERT INTO `cat_fruit` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'FV0001', 'apple', 'images/Fruits&veggies/apple.jpg', 'Fresh Apple', 97, 20, 'Milky Mist Dairy Foods Private Limited'),
(2, 'FV0002', 'water-melon', 'images/Fruits&veggies/water-melon.jpg', 'Fresh water-melon', 53, 35, 'Sproutlife Foods Private Ltd'),
(3, 'FV0003', 'banana', 'images/Fruits&veggies/banana.jpg', 'Fresh Banana', 98, 12, 'Bonbon'),
(4, 'FV0004', 'beetroot', 'images/Fruits&veggies/beetroot.jpg', 'Fresh Beetroot', 100, 18, 'Milky Mist Dairy Foods Private Limited'),
(5, 'FV0005', 'brinjal', 'images/Fruits&veggies/brinjal.jpg', 'Fresh Brijanl', 158, 20, 'Bliss Chocolates India Pvt. Ltd'),
(6, 'FV0006', 'pomegranate', 'images/Fruits&veggies/pomegranate.jpg', 'Fresh Pomegranate', 100, 18, 'Bonbon'),
(7, 'FV0007', 'carrot', 'images/Fruits&veggies/carrot.jpg', 'Fresh Carrot', 120, 25, 'Bliss Chocolates India Pvt. Ltd'),
(8, 'FV0008', 'cauliflower', 'images/Fruits&veggies/cauliflower.jpg', 'Fresh Cauliflower', 100, 20, 'Milky Mist Dairy Foods Private Limited'),
(9, 'FV0009', 'chilli-green', 'images/Fruits&veggies/chilli-green.jpg', 'Fresh Chilli-Green', 65, 10, 'Sproutlife Foods Private Ltd'),
(10, 'FV0010', 'coconut', 'images/Fruits&veggies/coconut.jpg', 'Fresh Coconut', 100, 50, 'Bonbon'),
(11, 'FV0011', 'coriander', 'images/Fruits&veggies/coriander.jpg', 'Fresh Coriander', 108, 19, 'Bliss Chocolates India Pvt. Ltd'),
(12, 'FV0012', 'cucumber', 'images/Fruits&veggies/cucumber.jpg', 'Fresh Cucumber', 99, 28, 'Sproutlife Foods Private Ltd'),
(13, 'FV0013', 'ginger', 'images/Fruits&veggies/ginger.jpg', 'Fresh Ginger', 100, 25, 'Bliss Chocolates India Pvt. Ltd'),
(14, 'FV0014', 'kiwi', 'images/Fruits&veggies/kiwi.jpg', 'Fresh Kiwi', 160, 15, 'Sproutlife Foods Private Ltd'),
(15, 'FV0015', 'ladies Finger', 'images/Fruits&veggies/ladies finger.jpg', 'Fresh Lady finger', 120, 25, 'Bliss Chocolates India Pvt. Ltd'),
(16, 'FV0016', 'lemon', 'images/Fruits&veggies/lemon.jpg', 'Fresh Lemon', 100, 18, 'Bonbon'),
(17, 'FV0017', 'onion', 'images/Fruits&veggies/onion.jpg', 'Fresh Onion', 125, 25, 'Sproutlife Foods Private Ltd'),
(18, 'FV0018', 'palak', 'images/Fruits&veggies/palak.jpg', 'Fresh Palak', 91, 20, 'Bliss Chocolates India Pvt. Ltd'),
(19, 'FV0019', 'potato', 'images/Fruits&veggies/potato.jpg', 'Fresh Potato', 10, 30, 'Bonbon'),
(20, 'FV0020', 'tomato', 'images/Fruits&veggies/tomato.jpg', 'Fresh Tomato', 50, 15, 'Bonbon'),
(0, 'FV0021', 'Cabbage', 'images/Fruits&veggies/cabbage.jpg', 'Fresh vegetables', 8, 40, 'Sproutlife Foods Private Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `cat_grocery`
--

CREATE TABLE IF NOT EXISTS `cat_grocery` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_grocery`
--

INSERT INTO `cat_grocery` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'G0001', 'Ghee', 'images/Grocery/ghee.jpg', 'Fresh Ghee', 94, 130, 'Sproutlife Foods Private Ltd\n'),
(2, 'G0002', 'Oil', 'images/Grocery/oil.jpg', 'Fresh oil', 85, 190, 'Bliss Chocolates India Pvt. Ltd'),
(3, 'G0003', 'Rice', 'images/Grocery/rice.jpg', 'Fresh rice', 11, 70, 'Milky Mist Dairy Foods Private Limited\n'),
(4, 'G0004', 'Sugar', 'images/Grocery/sugar.jpg', 'Gleeful sugar', 100, 48, 'Sproutlife Foods Private Ltd\n'),
(5, 'G0005', 'Toor Daal', 'images/Grocery/toordaal.jpg', 'nutricious toordaal', 153, 130, 'Bonbon'),
(6, 'G0006', 'turmeric powder', 'images/Grocery/turmericpow.jpg', 'rich turmeric powder', 99, 120, 'Milky Mist Dairy Foods Private Limited\n'),
(7, 'G0007', 'wheat flour', 'images/Grocery/wheat-flour.jpg', 'fresh wheat flour', 9, 34, 'Bliss Chocolates India Pvt. Ltd');

-- --------------------------------------------------------

--
-- Table structure for table `cat_meat`
--

CREATE TABLE IF NOT EXISTS `cat_meat` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_meat`
--

INSERT INTO `cat_meat` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'M0001', 'chicken breast boneless', 'images/Meat/chicken_breast_boneless.jpg', 'fresh chicken breast boneless', 30, 450, 'Milky Mist Dairy Foods Private Limited\n'),
(2, 'M0002', 'chicken burger patty', 'images/Meat/chicken_burger_patty.jpg', 'fresh chicken burger patty', 120, 350, 'Sproutlife Foods Private Ltd\n'),
(3, 'M0003', 'chicken liver', 'images/Meat/chicken_liver.jpg', 'fresh chicken liver', 25, 280, 'Milky Mist Dairy Foods Private Limited\n'),
(4, 'M0004', 'chicken mince', 'images/Meat/chicken_mince.jpg', 'fresh chicken mince', 500, 490, 'Bliss Chocolates India Pvt. Ltd\n'),
(5, 'M0005', 'chicken salami masala', 'images/Meat/chicken-salami-masala.jpg', 'fresh chicken salami masala', 80, 500, 'Milky Mist Dairy Foods Private Limited\n'),
(6, 'M0006', 'chicken sheek kabab', 'images/Meat/chicken_sheek_kabab.jpg', 'fresh chicken sheek kabab', 20, 800, 'Sproutlife Foods Private Ltd\n'),
(7, 'M0007', 'chicken spicy salami', 'images/Meat/chicken_spicy_salami.jpg', 'fresh chicken spicy salami', 8, 360, 'Bliss Chocolates India Pvt. Ltd\n'),
(8, 'M0008', 'chicken without skin', 'images/Meat/chicken_without_skin.jpg', 'fresh chicken without skin', 12, 580, 'Sproutlife Foods Private Ltd\n'),
(9, 'M0009', 'nuggets chicken', 'images/Meat/nuggets_chicken.jpg', 'fresh nuggets chicken', 300, 800, 'Milky Mist Dairy Foods Private Limited\n'),
(10, 'M0010', 'popcorn chicken', 'images/Meat/popcorn_chicken.jpg', 'fresh popcorn chicken', 250, 700, 'Bliss Chocolates India Pvt. Ltd\n');

-- --------------------------------------------------------

--
-- Table structure for table `cat_personalcare`
--

CREATE TABLE IF NOT EXISTS `cat_personalcare` (
  `id` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `shopname` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_personalcare`
--

INSERT INTO `cat_personalcare` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`, `shopname`) VALUES
(1, 'PE0001', 'Dove conditioner', 'images/Personalcare/dove-conditioner-oxygen-moisture.jpg', 'Dove conditioner', 200, 400, 'Bliss Chocolates India Pvt. Ltd'),
(2, 'PE0002', 'Dove bathing bar', 'images/Personalcare/dove-cream-beauty-bathing-bar.jpg', 'Dove bathing bar', 120, 78, 'DREAM BAKE PRIVATE LIMITED\n'),
(3, 'PE0003', 'Muscle Resource', 'images/Personalcare/four-fountains-labs-muscle-resource.jpg', 'Muscle Resource', 200, 400, 'Milky Mist Dairy Foods Private Limited\n'),
(4, 'PE0004', 'He icy collection arctic', 'images/Personalcare/he-icy-collection-arctic.jpg', 'He icy collection arctic', 50, 250, 'Bliss Chocolates India Pvt. Ltd'),
(5, 'PE0005', 'Lakme face cream', 'images/Personalcare/lakme-face-cream-complexion-care-color-transform-beige.jpg', 'Lakme face cream', 200, 770, 'DREAM BAKE PRIVATE LIMITED\n'),
(6, 'PE0006', 'Ogx thickening fiber cream', 'images/Personalcare/ogx-thickening-fiber-cream-strength-body-bamboo-fiber-full-6oz.jpg', 'Ogx thickening fiber cream', 160, 680, 'Milky Mist Dairy Foods Private Limited\n'),
(7, 'PE0007', 'Ogx thickening fiber cream', 'images/Personalcare/ogx-thickening-fiber-cream-strength-body-bamboo-fiber-full-6oz.jpg', 'Ogx thickening fiber cream', 80, 400, 'Bliss Chocolates India Pvt. Ltd'),
(8, 'PE0008', 'olay skin cream', 'images/Personalcare/olay-skin-cream-regenerist-advanced-anti-aging-micro-sculpting-wrinkle-revolutio', 'olay skin cream', 20, 685, 'Milky Mist Dairy Foods Private Limited\n'),
(9, 'PE0009', 'olay anti ageing cream', 'images/Personalcare/olay-total-effect-7-in-1-anti-ageing-day-cream-normal-spf-15.jpg', 'olay skin cream', 58, 490, 'DREAM BAKE PRIVATE LIMITED\n'),
(10, 'PE0010', 'Soap', 'images/Personalcare/soap.jpg', 'Soap', 360, 45, 'Bonbon');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orderNo` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `cat_select` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `cat_name`, `image`, `description`, `cat_select`) VALUES
(1, 'Fruit & Vegetables', 'Fruits&Vegetables.jpg', 'Buy Fruits and vegetables Online!!!', 'cat_fruit'),
(2, 'Grocery', 'Grocery & Staples.jpg', 'Buy Groceries Online!!!', 'cat_grocery'),
(3, 'Bread & Dairy', 'Bread Dairy & Eggs.jpg', 'Buy Bakery and Dairy Products Online!!!', 'cat_bakery'),
(4, 'Beverages', 'Beverages.jpg', 'Buy Beverages Online!!!', 'cat_beverages'),
(5, 'Branded Food', 'Branded food.jpg', 'Buy Branded Food Online!!!', 'cat_brandedfood'),
(6, 'Personal Care', 'Personal Care-1.jpg', 'Buy Personal care products  Online!!!', 'cat_personalcare'),
(7, 'Meat', 'Meat.jpg', 'Buy Meat and Seafood Online!!!', 'cat_meat');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `shop_name` text NOT NULL,
  `id` bigint(20) NOT NULL,
  `address` varchar(225) NOT NULL,
  `total_product` int(25) NOT NULL,
  `total_order` int(25) NOT NULL,
  `product_category` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_name`, `id`, `address`, `total_product`, `total_order`, `product_category`) VALUES
('DREAM BAKE PRIVATE LIMITED', 1, '296, Kalu Khan Road, Boral, Kolkata, West Bengal 700154', 7, 0, 'cat_personalcare, cat_bakery'),
('Milky Mist Dairy Foods Private Limited\r\n', 2, '9, Erode Main Rd, Kongampalyam, Erode, Tamil Nadu 638102', 19, 0, 'cat_grocery, cat_bakery, cat_brandedfood, cat_fruit, cat_groc, cat_meat, cat_personalcare'),
('Bliss Chocolates India Pvt. Ltd', 3, '2/a, #13, Floyr Mill Road, MES Colony, Konena Agrahara, HAL post, Bengaluru, Karnataka 560017', 23, 18, 'cat_meat, cat_brandedfood, cat_beverages, cat_personalcare, cat_fruit  cat_grocery\n'),
('Bonbon', 4, 'Shop no. 22, sector 125 Main Gate of Old Sunny Enclave, Kharar, Punjab, 160055', 12, 0, 'cat_grocery, cat_fruit, cat_brandedfood, cat_bakery'),
('Sproutlife Foods Private Ltd', 5, '100 Saket Nagar A, Near Saket Club, Sanvid Nagar, Indore, Madhya Pradesh 452018', 12, 0, 'cat_fruit, cat_grocery, cat_meat');

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE IF NOT EXISTS `shop_order` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `username` text NOT NULL,
  `product_name` text NOT NULL,
  `shop_name` text NOT NULL,
  `quantity` bigint(25) NOT NULL,
  `price` varchar(225) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`id`, `date`, `username`, `product_name`, `shop_name`, `quantity`, `price`, `user_id`) VALUES
(1, '2021-11-08', 'Neeta', 'Dove bathing bar', 'DREAM BAKE PRIVATE LIMITED', 2, '156', 16),
(2, '2021-11-08', 'Neeta', 'Ogx thickening fiber crea', 'Milky Mist Dairy Foods Private Limited', 1, '680', 16),
(3, '2021-11-08', 'Neeta', 'Sugar', 'Sproutlife Foods Private Ltd', 2, '96', 16),
(4, '2021-11-08', 'Neeta', 'water-melon', 'Sproutlife Foods Private Ltd', 3, '105', 16),
(5, '2021-11-08', 'Neeta', 'chicken salami masala', 'Milky Mist Dairy Foods Private Limited', 3, '1500', 16),
(6, '2021-08-05', 'Neha Handa', 'chicken sheek kabab', 'Sproutlife Foods Private Ltd', 2, '1600', 12),
(7, '2021-08-05', 'Neha Handa', 'chicken burger patty', 'Sproutlife Foods Private Ltd', 3, '1050', 12),
(8, '2021-08-05', 'Neha Handa', 'Muscle Resource', 'Milky Mist Dairy Foods Private Limited', 4, '1600', 12),
(9, '2021-08-05', 'Neha Handa', 'Nescafe Coffee Classic', 'Milky Mist Dairy Foods Private Limited', 9, '315', 12),
(10, '2021-06-17', 'Gauri  Yadav', 'He icy collection arctic', 'Bliss Chocolates India Pvt. Ltd', 3, '750', 5),
(11, '2021-06-17', 'Gauri  Yadav', 'beetroot', 'Milky Mist Dairy Foods Private Limited', 9, '162', 5),
(12, '2021-06-17', 'Gauri  Yadav', 'wheat flour', 'Bliss Chocolates India Pvt. Ltd', 1, '34', 5),
(13, '2021-06-17', 'Gauri  Yadav', 'potato', 'Bonbon', 10, '120', 5),
(14, '2021-06-17', 'Laval Kaur', 'nuggets chicken', 'Milky Mist Dairy Foods Private Limited', 2, '1600', 4),
(15, '2021-06-17', 'Laval Kaur', 'Chocolate Cookies', 'DREAM BAKE PRIVATE LIMITED', 5, '750', 14),
(16, '2021-06-17', 'Laval Kaur', 'Real Fruit juice Litchi', 'Bliss Chocolates India Pvt. Ltd', 7, '1,295', 14),
(17, '2021-06-17', 'Laval Kaur', 'Tropicana 100 juice orange', 'Bliss Chocolates India Pvt. Ltd', 7, '1295', 14),
(18, '2021-04-20', 'Vikram', 'Pepsi Soft Drink Mini Can', 'Sproutlife Foods Private Ltd', 5, '375', 13),
(19, '2021-04-20', 'Vikram', 'Maggi Noodles Masala', 'Bliss Chocolates India Pvt. Ltd', 15, '690', 13),
(20, '2021-04-20', 'Vikram', 'Cadbury Dairy Milk', 'Sproutlife Foods Private Ltd', 2, '10', 13),
(21, '2021-04-20', 'Vikram', 'Toor Daal', 'Bonbon', 3, '459', 13),
(22, '2021-04-20', 'Tarun Joshi', 'Oil', 'Bliss Chocolates India Pvt. Ltd', 2, '380', 11),
(23, '2021-04-20', 'Tarun Joshi', 'chicken without skin', 'Sproutlife Foods Private Ltd', 1, '580', 11),
(24, '2021-04-20', 'Tarun Joshi', 'chicken burger patty', 'Sproutlife Foods Private Ltd', 5, '1,750', 11),
(25, '2021-04-20', 'Tarun Joshi', 'popcorn chicken', 'Bliss Chocolates India Pvt. Ltd', 2, '1400', 11),
(26, '2020-10-13', 'Mandeep', 'wheat flour', 'Bliss Chocolates India Pvt. Ltd', 6, '204', 9),
(27, '2020-10-13', 'Mandeep', 'Rice', 'Milky Mist Dairy Foods Private Limited', 2, '140', 9),
(28, '2020-10-13', 'Mandeep', 'Ghee', 'Sproutlife Foods Private Ltd', 4, '520', 28),
(29, '2020-10-13', 'Mandeep', 'Kissan Mixed Fruit Jam', 'Bliss Chocolates India Pvt. Ltd', 3, '309', 28),
(30, '2021-09-22', 'Chetan', 'Lakme face cream', 'DREAM BAKE PRIVATE LIMITED', 3, '2310', 8),
(31, '2021-09-22', 'Chetan', 'nuggets chicken', 'Milky Mist Dairy Foods Private Limited', 2, '16', 8);

-- --------------------------------------------------------

--
-- Table structure for table `userorders`
--

CREATE TABLE IF NOT EXISTS `userorders` (
  `Username` varchar(100) NOT NULL,
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `totalAmount` int(11) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `userorders`
--

INSERT INTO `userorders` (`Username`, `orderId`, `totalAmount`) VALUES
('zainahmeds123@gmail.com', 12, 300),
('zainahmeds123@gmail.com', 13, 60),
('handa_neha@gmail.com', 14, 300),
('zainahmeds123@gmail.com', 15, 400),
('zainahmeds123@gmail.com', 16, 600);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(200) NOT NULL,
  `Pincode` int(30) NOT NULL,
  `OTP` int(7) NOT NULL,
  `Verified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Email_2` (`Email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Firstname`, `Email`, `Password`, `DOB`, `Address`, `City`, `Pincode`, `OTP`, `Verified`) VALUES
(13, 'Vikram', 'vikram123@gmail.com', 'crazy', '1996-12-12', '#76/1 mira road', 'Mumbai', 401107, 891553, 1),
(4, 'Laval Kaur', 'laval_kaur@yahoo.co.in', 'kaur562', '2016-09-05', 'Bildi', 'Rajasthan', 314001, 452185, 1),
(5, 'Gauri  Yadav', 'rhrohxcp9od@temporary-mail.net', 'violette', '1997-01-01', '48/1, Yusuf Sarai', 'Delhi', 110016, 816773, 1),
(7, 'Gurpreet Singh', 'preetguri153@gmail.com', 'preet123', '1997-06-12', 'Ranipur Patia, Cmi Church, Narol', 'Gujarat', 382405, 165424, 1),
(15, 'Madhava  Kurian', 'kurian786@gmail.com', 'crystal526', '1996-08-27', 'Scf 3 Main Market', 'Ludhiana', 141001, 252381, 0),
(11, 'Tarun Joshi', 'tjoshi52@gmail.com', 'badboytj', '2016-09-24', '#8896/1 Swaraj Nagar', 'Kharar', 140301, 204642, 1),
(12, 'Neha Handa', 'handa_neha@gmail.com', 'blackdiamond', '1996-07-02', '27-b, Nerkundram Rd', 'Chennai', 600026, 916967, 1),
(16, 'Neeta', 'netta234@gmail.com', 'netta123', '1991-05-25', 'flat No. 401 sunrise green', ' West Bengal', 700020, 767586, 0),
(1, 'Simran', 'simran152@gmail.com', 'crepe253', '1995-10-31', '#5632 sawraj nagar near mata gujri gurudwara kharar', 'kharar', 140301, 253262, 0),
(2, 'kavya', 'kavyagill@gmail.com', 'grep526', '1992-04-12', 'Habak Naseem Bagh Opp. Petrol Pump Srinagar Jammu and Kashmir\n', 'Srinagar', 190006, 562896, 1),
(3, 'Jagdeep', 'jagdeepsingh12@gmail.com', 'crepe526', '1999-12-06', 'Opposite State Bank India, 288, Sadar Bazar Rd, beside Central Book, Sadar Bazar, Raipur ', 'Chhattisgarh', 492001, 685932, 0),
(6, 'Miska ', 'miskagrewal@gmail.com', 'diamond8596', '1991-06-17', 'Satyanarayan Market, Boring Rd, opposite Karlo Maruti Showroom', 'Patna', 800001, 568925, 0),
(8, 'Chetan', 'malikchetan@gmail.com', 'malik8945', '1897-01-05', 'Amaravathi Hospital, 3/4, Old Club Rd, Near RTC Bus Stop, Kothapeta', 'Andhra Pradesh', 522001, 789456, 0),
(9, 'Mandeep', 'rayatmandeep@gmail.com', 'rollover523', '1993-05-19', '13-8-18, 7th Lane, Guntur Vari Thota Opp Bus Stand, Beside Indian Oil Petrol Pump line', 'Andhra Pradesh', 522001, 652385, 0),
(10, 'Kiran', 'tiwanakirru@gmail.com', 'choco6252', '1995-07-26', 'SCO 85, Inner Market, 35C', 'Chandigarh', 160022, 152632, 1),
(14, 'Amar', 'devganamar@gmail.com', 'krol485', '1993-05-24', 'Kuvadava Road, Near, Deluxe Cinema Chowk, Rajkot', 'Gujarat', 360003, 256328, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
