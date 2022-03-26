-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 12:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Mobile', 1),
(2, 'Man', 1),
(4, 'Woman', 1),
(5, 'Kids', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(5, 'Muntasir Ahmed', 'muntasir2179@gmail.com', '01622792511', 'A quick and simplified answer is that Lorem Ipsum refers to text that the DTP (Desktop Publishing) industry use as replacement text when the real text is not available. ... Lorem Ipsum is dummy text which has no meaning however looks very similar to real text.', '2020-12-09 05:59:27'),
(6, 'Anisur Rahman', 'anisur@gmail.com', '01622792511', 'A quick and simplified answer is that Lorem Ipsum refers to text that the DTP (Desktop Publishing) industry use as replacement text when the real text is not available. ... Lorem Ipsum is dummy text which has no meaning however looks very similar to real text.', '2020-12-09 05:59:44'),
(7, 'Johura Begum', 'johura@gmail.com', '01622792511', 'A quick and simplified answer is that Lorem Ipsum refers to text that the DTP (Desktop Publishing) industry use as replacement text when the real text is not available. ... Lorem Ipsum is dummy text which has no meaning however looks very similar to real text.', '2020-12-09 06:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(1, 3, 'Latifpur Colony, Bogura', 'Bogura', 5800, 'COD', 283695, 'Success', 5, 'c6c2c2aadec28486e43b', '', '', '2020-12-08 06:05:35'),
(2, 5, 'Latifpur Colony, Bogura', 'Bogura', 5800, 'COD', 29450, 'Success', 5, '4f1629a529912d72e82b', '', '', '2020-12-09 06:03:50'),
(3, 6, 'Latifpur Colony, Bogura', 'Bogura', 5800, 'COD', 5350, 'pending', 2, '612ff6a452cb842d57b2', '', '', '2020-12-09 06:05:48'),
(4, 9, 'Latifpur Colony, Bogura', 'Bogura', 5800, 'COD', 101500, 'pending', 4, 'd0c5359751e31fba6c4a', '', '', '2020-12-09 06:08:47'),
(5, 3, 'Latifpur Colony, Bogura', 'Bogura', 5800, 'COD', 93000, 'pending', 1, 'a53ba7ec3e29f905f541', '', '', '2020-12-10 06:18:27'),
(6, 3, 'Latifpur', 'Bogura', 5800, 'COD', 18000, 'pending', 1, '1dfb71d8cd66f9930f88', '', '', '2022-03-23 03:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 3, 1, 115900),
(2, 1, 2, 1, 155800),
(3, 1, 5, 5, 2399),
(4, 2, 11, 1, 17500),
(5, 2, 12, 1, 1750),
(6, 2, 14, 1, 9000),
(7, 2, 4, 1, 1200),
(8, 3, 27, 1, 3700),
(9, 3, 25, 1, 1650),
(10, 4, 11, 1, 17500),
(11, 4, 16, 1, 84000),
(12, 5, 16, 1, 84000),
(13, 5, 14, 1, 9000),
(14, 6, 14, 2, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 1, 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', 9999, 8499, 10, '799153645_303b4a46-a701-4b43-b9c1-d98a2b53422f.jpg', 'Mauris dapibus tellus quis risus maximus molestie. Curabitur eget tortor tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque quis nisi porta congue. Aenean sed maximus ligula. Vestibulum quis eros id ex condimentum lacinia. Nam interdum finibus odio, sit amet commodo erat varius sed. In at velit velit. Nullam vitae gravida mi. Donec aliquet nunc non ipsum bibendum, et elementum nibh lobortis. Fusce tempor elit at mauris luctus euismod. Donec eu massa eros. Aenean maximus vitae nisl ut sollicitudin. Aenean urna arcu, laoreet at ante eget, maximus mattis lacus. Mauris dapibus tellus quis risus maximus molestie. Curabitur eget tortor tellus.', 1, 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', '', 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', 1),
(2, 1, 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', 165800, 155800, 4, '942626953_iphone.jpg', 'Aenean tempus ut leo nec laoreet. Vestibulum ut est neque.', 'Curabitur eget augue dolor. Curabitur id dapibus massa. Vestibulum at enim quis metus ultrices posuere vitae sit amet eros. Morbi et libero pellentesque, efficitur odio nec, congue lorem. Vestibulum faucibus, risus eget pretium efficitur, neque nulla eleifend purus, non venenatis lorem ligula vel nulla. Fusce finibus efficitur sapien vitae laoreet. Integer imperdiet justo sed tellus dictum, at egestas arcu finibus. Fusce et augue elit. Praesent tincidunt purus in purus dictum volutpat. Aenean tempus ut leo nec laoreet. Vestibulum ut est neque.', 0, 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', '', 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', 1),
(3, 1, 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 115900, 115900, 5, '567328558_samsung-galaxy-s10-plus-1tb-ceramic-white-12gb-ram-.jpg', 'Nullam purus lorem, tincidunt vitae tristique non, imperdiet ut urna.', 'Nullam a nunc et lorem ornare faucibus. Etiam tortor lacus, auctor eget enim at, tincidunt dignissim magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin tincidunt eros eget felis tempor, id volutpat ipsum lacinia. Donec scelerisque risus non purus scelerisque tristique. Mauris enim ligula, condimentum sed iaculis nec, porttitor eu nunc. Sed hendrerit vel arcu vitae iaculis. Phasellus vehicula molestie leo. Nullam purus lorem, tincidunt vitae tristique non, imperdiet ut urna.', 0, 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 1),
(4, 2, 'SHEEN-SOLID TROUSER-OLIVE', 1999, 1200, 3, '697347005_2__1538219531_49.204.69.38_600x.jpg', 'per inceptos himenaeos. Ut commodo ullamcorper quam non pulvinar.', 'Duis a felis congue, feugiat est non, suscipit quam. In elit lacus, auctor sed lacus eget, egestas consectetur leo. Duis pellentesque pharetra ante, ac ornare nibh faucibus id. Integer pulvinar malesuada nisl. Nulla vel orci nunc. Nullam a tellus eu ex ullamcorper mollis. Donec commodo ligula a accumsan fermentum. Mauris sed orci lacinia, posuere leo molestie, pretium mi. Cras sodales, neque id cursus fermentum, mi purus vehicula sem, vel laoreet lorem justo id tortor. Sed ut urna ut ipsum vestibulum commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut commodo ullamcorper quam non pulvinar.', 0, 'SHEEN-SOLID TROUSER-OLIVE', 'SHEEN-SOLID TROUSER-OLIVE', 'SHEEN-SOLID TROUSER-OLIVE', 1),
(5, 2, 'NATURE-LINEN SHIRT-GREEN', 2799, 2399, 8, '812581380_nature_green-0224_600x.jpg', 'a nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 'Nunc auctor turpis ante, eget bibendum mi mollis in. Aliquam quis neque ut libero malesuada auctor. Aliquam interdum enim at commodo gravida. Donec nisl sem, molestie ut quam quis, vulputate venenatis ipsum. Aenean quis ex ut magna accumsan fringilla. Quisque id ex massa. Sed libero ante, fringilla ac condimentum in, porttitor ac risus. Integer mattis odio nec nunc semper imperdiet. In porttitor tellus eget sapien vulputate, eu euismod lacus aliquet. Maecenas molestie elit augue, sit amet fringilla dolor congue et. Nunc eu libero auctor, sollicitudin lectus quis, porta ligula. In vel ullamcorper risus. Nullam viverra, mi sit amet laoreet luctus, urna nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 0, 'NATURE-LINEN SHIRT-GREEN', 'NATURE-LINEN SHIRT-GREEN', 'T-Shirt, NATURE-LINEN SHIRT-GREEN', 1),
(6, 2, 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 1999, 1500, 8, '931830512__8-(1)-E5x-104831-NJD.jpg', 'lacus quis urna tristique suscipit. Praesent vitae mi mollis dui facilisis convallis eu faucibus augue.', 'Duis in risus quis lectus dictum fringilla. Aenean tempor pellentesque velit id ullamcorper. Ut id aliquam odio. Morbi id pharetra libero, ut tempor nisi. Maecenas a lectus nec risus maximus rutrum. Mauris vel elit ut magna semper laoreet nec sed magna. Quisque eleifend vel sem non malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eget posuere orci, eu ultrices sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet ex dictum nisl bibendum elementum non in turpis. In bibendum ipsum nunc, bibendum lacinia lacus maximus eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus aliquam lacus quis urna tristique suscipit. Praesent vitae mi mollis dui facilisis convallis eu faucibus augue.', 0, 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 1),
(7, 4, 'Floral Print Polo T-shirt', 1900, 1350, 7, '309027777_Floral-Print-Polo-T-shirt.jpg', 'isl pharetra orci, at condimentum nisl lorem elementum ipsum.', 'Nunc auctor turpis ante, eget bibendum mi mollis in. Aliquam quis neque ut libero malesuada auctor. Aliquam interdum enim at commodo gravida. Donec nisl sem, molestie ut quam quis, vulputate venenatis ipsum. Aenean quis ex ut magna accumsan fringilla. Quisque id ex massa. Sed libero ante, fringilla ac condimentum in, porttitor ac risus. Integer mattis odio nec nunc semper imperdiet. In porttitor tellus eget sapien vulputate, eu euismod lacus aliquet. Maecenas molestie elit augue, sit amet fringilla dolor congue et. Nunc eu libero auctor, sollicitudin lectus quis, porta ligula. In vel ullamcorper risus. Nullam viverra, mi sit amet laoreet luctus, urna nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 0, 'Floral Print Polo T-shirt', 'Floral Print Polo T-shirt', 'Floral Print Polo T-shirt', 1),
(8, 4, 'Floral Embroidered Polo T-shirt', 2120, 1900, 10, '651584201_Floral-Embroidered-Polo-T-shirt.jpg', 'rius, lacus velit aliquam ex, in dignissim sem eros ac erat. Vestibulum ac arcu tortor.', 'Vestibulum in auctor turpis. Quisque hendrerit eget turpis et molestie. Phasellus nec nibh a lacus rhoncus eleifend. Donec suscipit id diam non mattis. Fusce eu luctus leo. Etiam eget dui libero. Etiam eros lorem, rhoncus et convallis eget, tempus vel tellus. Nam at diam quis nisl tincidunt aliquam. Quisque placerat magna non libero interdum varius vel id risus. Vivamus mollis maximus fermentum. Donec eget nulla dui. Sed ultricies malesuada metus, non feugiat purus fringilla ac. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer accumsan, tortor id eleifend varius, lacus velit aliquam ex, in dignissim sem eros ac erat. Vestibulum ac arcu tortor.', 1, 'Floral Embroidered Polo T-shirt', '', 'Floral Embroidered Polo T-shirt', 1),
(9, 4, 'Floral Print Polo T-shirt Latest', 1650, 1560, 10, '526258680_Floral-Print-Polo-T-shirt1.jpg', 's mus. Vestibulum eget posuere orci, eu ultrices sapien. Orc', 'aximus rutrum. Mauris vel elit ut magna semper laoreet nec sed magna. Quisque eleifend vel sem non malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eget posuere orci, eu ultrices sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet ex d', 1, 'Floral Print Polo T-shirt Latest', '', 'Floral Print Polo T-shirt Latest', 1),
(10, 2, 'Jacket Columbia mens Ascender Softshell Front-zip', 6000, 5000, 40, '801964596_71gNdyqItmL._AC._SR360,460.jpg', '100% Polyester\r\nImported\r\nZipper closure\r\nMachine Wash', 'There\'s nothing more necessary than a wind and water resistant layer in a men\'s outdoor winter wardrobe—that\'s why the Ascender Softshell Jacket exists. Columbia\'s lightweight, winter-ready jacket is the ultimate warmth provider and an everyday style piece.', 1, '', '', '', 1),
(11, 2, 'Jacket BIYLACLESEN Men\'s Winter Coats Windproof', 19000, 17500, 20, '370730492_51qVOLBYnrL._AC_UX679_.jpg', 'Material: 100% Polyester and Soft and Thick Fleece Lining.\r\nMulti Pockets: 2 Zippered Hand Pockets, 1 Zippered Pocket on Left Chest, 1 Internal Pocket On Left Chest. Zippered pockets keep your things secure all day.', 'Detachable Hood The Detachable Storm Hood with zipper is enough to keep your ears and head warm and comfortable. Water-resistant The surface is made of Water resistant material,it has Lotus leaf water repellent function. Even if it touches the water, it can bounce the water away quickly in light rain.', 1, '', '', '', 1),
(12, 2, 'Pocket Pant Wrangler Authentics Men\'s Fleece Lined 5', 2000, 1750, 40, '578408529_91IT2l9WZDL._AC_UY550_.jpg', '100% Cotton\r\nImported\r\nZipper closure\r\nMachine Wash\r\nRELAXED FIT. Built with a relaxed fit through the seat and thigh, these versatile pants sit at the natural waist for a comfortable fit during any task.\r\nFUNCTIONAL DESIGN. Featuring classic Authentics styling and a relaxed fit, these pants provide the cold-weather comfort you are looking for.', 'The Wrangler Authentic Men\'s Big & Tall Fleece Lined 5 Pocket Pant is the perfect style for warmth and durability in the colder months. Made with a 100% cotton body and polyester lining, this pant features 5 pocket styling for everyday wear and versatility. Keep warm and stylish this fall and winter with the Wrangler Authentic Fleece Lined 5 Pocket pant.', 0, '', '', '', 1),
(13, 2, 'Slim Fit Pant Haggar Men\'s Premium Comfort', 2800, 2300, 20, '948914389_61KqgyJBfxL._AC_UX569_.jpg', '58% Cotton, 40% Polyester, 2% Spandex\r\nImported\r\nButton closure\r\nMachine Wash\r\nSlim fit\r\nFlat front\r\nPremium flex waistband', 'Item model number : HC80453\r\nDepartment : Mens\r\nDate First Available : February 23, 2019\r\nManufacturer : Haggar\r\nASIN : B07GC8TCYB', 0, '', '', '', 1),
(14, 2, 'COOFANDY Men Floral Blazer Suit Jacket', 12000, 9000, 10, '427137991_3623d5cd2d86184159631f0e0d55dcf9.jpg', 'Recommended Garment Care: dry clean only\r\nButton closure\r\nDo Not Bleach\r\nFloral Embroidered Material --- The men floral suit jacket is made of high quality jacquard fabric, finished by great stitching. Dry Clean Only(Recommended); Hand washes max temperature 40°C, Do not bleach, Iron max 110°C.', 'Recommended Garment Care: dry clean only\r\nButton closure\r\nDo Not Bleach\r\nFloral Embroidered Material --- The men floral suit jacket is made of high quality jacquard fabric, finished by great stitching. Dry Clean Only(Recommended); Hand washes max temperature 40°C, Do not bleach, Iron max 110°C.\r\nLuxury Design --- The men\'s party blazer is decorated with classic embroidered floral, made by excellent craftsmanship, one button closure, notch lapel, two fake flap pockets, adding the maximum charm in your big day.\r\nElegant Looking --- Designed with fashion and delicate embroidery, paisley pattern, great tailoring, this men\'s dinner tuxedo makes you look gentle, attractive and graceful in the crowd.\r\nNotice --- Please check the size information under the product description appropriatly before ordering. Please feel free to contact us if you have any problems with the men floral dinner blazer.\r\nRecommended Pairing --- Match a white dress shirt, a pair of leather shoes and your suit pant with the men prom blazer to maximum help improve your public image and leave an unforgettable impression.', 1, '', '', '', 1),
(15, 1, 'Mi 10 (Twilight Grey, 8GB RAM, 256GB Storage)', 60000, 49000, 5, '733083025_download.jpg', 'Mi 10 comes with Octa-core Snapdragon 865 with 7nm process and upto 2.84GHz clock speed. It also comes with 108 MP Quad Rear camera setup with OIS + Ultra-wide and Macro mode along with 20 MP in-display front camera. Mi 10 also features 16.9 centimeters (6.67-inch) FHD + Full screen AMOLED display with 1080x2340 pixels and 19.5:9 aspect ratio along with 3D Curved glass. It also comes with 4780 mAH large battery with 30W wired fast charger in-box & support for up to 30W wireless charging.', 'Mi 10 comes with Octa-core Snapdragon 865 with 7nm process and upto 2.84GHz clock speed. It also comes with 108 MP Quad Rear camera setup with OIS + Ultra-wide and Macro mode along with 20 MP in-display front camera. Mi 10 also features 16.9 centimeters (6.67-inch) FHD + Full screen AMOLED display with 1080x2340 pixels and 19.5:9 aspect ratio along with 3D Curved glass. It also comes with 4780 mAH large battery with 30W wired fast charger in-box & support for up to 30W wireless charging.', 0, '', '', '', 1),
(16, 1, 'Apple iPhone 12 (64GB) - Blue', 85000, 84000, 10, '820568148_71ZOtNdaZCL._AC_SX466_.jpg', '6.1-inch Super Retina XDR display\r\nCeramic Shield, tougher than any smartphone glass\r\nA14 Bionic chip, the fastest chip ever in a smartphone\r\nAdvanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\nIndustry-leading IP68 water resistance\r\nSupports MagSafe accessories for easy attach and faster wireless charging\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', '6.1-inch Super Retina XDR display\r\nCeramic Shield, tougher than any smartphone glass\r\nA14 Bionic chip, the fastest chip ever in a smartphone\r\nAdvanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\nIndustry-leading IP68 water resistance\r\nSupports MagSafe accessories for easy attach and faster wireless charging\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', 1, '', '', '', 1),
(17, 1, 'OPPO F17 Pro (Matte Black, 8GB RAM, 128GB Storage)', 25000, 24499, 10, '670283763_untitled-design-1-132075_l.png', '48MP + 8MP + 2MP + 2MP Quad camera with photo, video, panorama, portrait, night scenes, time-lapse photography, beauty selfies, etc. | 16MP main + 2MP depth Front Camera\r\n16.34 centimeters (6.43 inch) dual punch-hole display with brilliant FHD+ view with 2400 x 1080 pixels resolution, 409 ppi pixel density and 16.7M color support | In-display fingerprint 3.0\r\nMemory, Storage & SIM: 8GB RAM | 128GB internal memory 3-card slot can be expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v10 based ColorOS 7.2 operating system with 2.2GHz MediaTek Helio P95 octa core processor, IMG 9XM-HP8 GPU\r\n4015mAH lithium-polymer massive battery with 30W VOOC Flash Charge 4.0 | 5 min charge, 4 hours of talktime\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nBox also includes: Adapter, data cable, sim card ejector tool, earphones, quick start guide and warranty card', '48MP + 8MP + 2MP + 2MP Quad camera with photo, video, panorama, portrait, night scenes, time-lapse photography, beauty selfies, etc. | 16MP main + 2MP depth Front Camera\r\n16.34 centimeters (6.43 inch) dual punch-hole display with brilliant FHD+ view with 2400 x 1080 pixels resolution, 409 ppi pixel density and 16.7M color support | In-display fingerprint 3.0\r\nMemory, Storage & SIM: 8GB RAM | 128GB internal memory 3-card slot can be expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v10 based ColorOS 7.2 operating system with 2.2GHz MediaTek Helio P95 octa core processor, IMG 9XM-HP8 GPU\r\n4015mAH lithium-polymer massive battery with 30W VOOC Flash Charge 4.0 | 5 min charge, 4 hours of talktime\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nBox also includes: Adapter, data cable, sim card ejector tool, earphones, quick start guide and warranty card', 0, '', '', '', 1),
(18, 1, 'Nokia 105 Single SIM (Black)', 1500, 1350, 20, '570031121_download (1).jpg', '1.8-inch (4.57 cm) display\r\n14.4 hours talk time, 25.8 days standby time on a single charge\r\nWireless FM radio, 3.5 mm headphone jack\r\nStore up to 2,000 contacts and up to 500 messages\r\nOne-year manufacturer warranty for device. The box does not include earphones\r\nCustomer care number - 1800 1028 169\r\nCountry of Origin: India', '1.8-inch (4.57 cm) display\r\n14.4 hours talk time, 25.8 days standby time on a single charge\r\nWireless FM radio, 3.5 mm headphone jack\r\nStore up to 2,000 contacts and up to 500 messages\r\nOne-year manufacturer warranty for device. The box does not include earphones\r\nCustomer care number - 1800 1028 169\r\nCountry of Origin: India', 0, '', '', '', 1),
(19, 1, 'Nokia 110 Dual SIM (Black', 2120, 1900, 10, '711384231_download (2).jpg', 'Dual SIM\r\n1.77-inch (4.49 cm) display\r\n14 hours\' talk time, 18.5 days standby time on a single charge\r\nRear camera, FM radio, music player\r\nExpandable storage up to 32GB. The box does not include earphones\r\nCustomer care number - 1800 1028 169\r\nCountry of Origin: India', 'Dual SIM\r\n1.77-inch (4.49 cm) display\r\n14 hours\' talk time, 18.5 days standby time on a single charge\r\nRear camera, FM radio, music player\r\nExpandable storage up to 32GB. The box does not include earphones\r\nCustomer care number - 1800 1028 169\r\nCountry of Origin: India', 0, '', '', '', 1),
(20, 4, 'Calvin Klein Elaine Bubble Flap Backpack', 12000, 9050, 20, '296293016_aWPC8IEjmFRvL2FkHwNPUA.jpg', '100% Man Made Material\r\nImported\r\nHigh quality vegan leather\r\n1 exterior zip pocket, 3 interior zip pockets, & 1 Interior slip pocket\r\nFlap closure with organization', '100% Man Made Material\r\nImported\r\nHigh quality vegan leather\r\n1 exterior zip pocket, 3 interior zip pockets, & 1 Interior slip pocket\r\nFlap closure with organization', 1, '', '', '', 1),
(21, 4, 'Calvin Klein Women\'s Hayden Key Item Signature', 8000, 7500, 20, '155379206_41nLRzt-UwL.jpg', 'Key Item Monogram Logo Faux Leather Top Zip Crossbody with a Chain Crossbody Strap and Interior Organization', 'Key Item Monogram Logo Faux Leather Top Zip Crossbody with a Chain Crossbody Strap and Interior Organization', 0, '', '', '', 1),
(22, 4, 'Saree - Banarasi Silk Saree and Party Wear', 4500, 4200, 30, '722961522_61rKptm-ZvL._AC_UY445_.jpg', 'Fabric : Banarasi Silk\r\nFabric : Banarasi Silk\r\nPoly Silk Jacquard Banarasi Saree\r\nSaree Length: 5.5mtr | Blouse Length: 0.8mtr\r\nAlso Provide the Stitching Service. First Send Order than Send your Measurement. You can Fit According Your measurement.\r\nOccasion: Casual, Party, Festival, Ceremony, Wedding', 'Fabric : Banarasi Silk\r\nFabric : Banarasi Silk\r\nPoly Silk Jacquard Banarasi Saree\r\nSaree Length: 5.5mtr | Blouse Length: 0.8mtr\r\nAlso Provide the Stitching Service. First Send Order than Send your Measurement. You can Fit According Your measurement.\r\nOccasion: Casual, Party, Festival, Ceremony, Wedding', 0, '', '', '', 1),
(23, 4, 'Pakistani Shalwar Kameez Suit Embroidery', 8500, 6700, 30, '452109926_partywear-garara-suits-500x500.jpg', 'STYLE :- This Suit is Ready to wear. Just select your size & color order.\r\nSIZE CHART GUIDE :- The measurements in above Size Chart are considered as body measurements. The ready garment size will be 1-2 inches bigger than body measurements mentioned in the chart. The Ready Garment Size at Bust for all the above sizes in inches will be as following, (XS-36); (S-38); (M-40);( L-42);(XL-44);(XXL-46);(OX-48);(1X-50) unstitched;customize stitch\r\nTop:- Foux Georgatte With Embriodery Work + Stone Sleeves :- Foux Georgatte With Emb. Work + Stone Inner :- Santoon (Attched) Length :- Max Up to 46” Size :- Max Up to 60” Bottom :- Santoon Lehenga :- ButterFly Net With Emb. Work + Stone Inner Attched Santoon Length :- Max Up to 48” Size :- Max Up to 40\" Flair :- 2.10 Mtr Type :- Ready To Wear Dupatta :- ButterFly Net With Emb. Work + Stone Wash :- First Time Dry Clean\r\nSuit Length = 43-44 inches.... If you want the length shorter, then please inform us soon after you place an order.', 'STYLE :- This Suit is Ready to wear. Just select your size & color order.\r\nSIZE CHART GUIDE :- The measurements in above Size Chart are considered as body measurements. The ready garment size will be 1-2 inches bigger than body measurements mentioned in the chart. The Ready Garment Size at Bust for all the above sizes in inches will be as following, (XS-36); (S-38); (M-40);( L-42);(XL-44);(XXL-46);(OX-48);(1X-50) unstitched;customize stitch\r\nTop:- Foux Georgatte With Embriodery Work + Stone Sleeves :- Foux Georgatte With Emb. Work + Stone Inner :- Santoon (Attched) Length :- Max Up to 46” Size :- Max Up to 60” Bottom :- Santoon Lehenga :- ButterFly Net With Emb. Work + Stone Inner Attched Santoon Length :- Max Up to 48” Size :- Max Up to 40\" Flair :- 2.10 Mtr Type :- Ready To Wear Dupatta :- ButterFly Net With Emb. Work + Stone Wash :- First Time Dry Clean\r\nSuit Length = 43-44 inches.... If you want the length shorter, then please inform us soon after you place an order.', 1, '', '', '', 1),
(24, 4, 'STELLACOUTURE Embroidered Anarkali Salwar Kameez', 9000, 8300, 20, '944722455_81h5qHavmGL._AC_UY445_.jpg', 'This Salwar kameez is Readymade. Select color and size.\r\nTop Fabric :Georgette || Bottom Fabric : SANTOON || Dupatta Fabric : Georgette & NET || Inner Fabric : Santoon\r\nwe are provide 2 inches margin in both side of this readymade salwar kameez. So that you can easily remove thread if its small on you. This is size in inches : XS-36 || S-38 || M-40 || L-42 || XL-44 || customize size (we stitch your dress as per your body measurement.) || Unstitch\r\nFull length of salwar kameez : 54 inches . If you want to any changes in length size you can contact us after place order.\r\nWash Care : Dry Clean Only', 'This Salwar kameez is Readymade. Select color and size.\r\nTop Fabric :Georgette || Bottom Fabric : SANTOON || Dupatta Fabric : Georgette & NET || Inner Fabric : Santoon\r\nwe are provide 2 inches margin in both side of this readymade salwar kameez. So that you can easily remove thread if its small on you. This is size in inches : XS-36 || S-38 || M-40 || L-42 || XL-44 || customize size (we stitch your dress as per your body measurement.) || Unstitch\r\nFull length of salwar kameez : 54 inches . If you want to any changes in length size you can contact us after place order.\r\nWash Care : Dry Clean Only', 0, '', '', '', 1),
(25, 5, 'Dreamingbox Compact Shock Proof Binoculars for Kids - Festival Gifts', 1800, 1650, 20, '155846860_41B5hVUtFtL.jpg', 'Super Safety: Soft rubber surrounded eyepieces are included for eye protection so children don\'t hurt their eyes or face. There is extra coating surrounding the eyepieces provides better protection of the lens during falls.\r\nAdvanced Design: Non-slip scratch, the grip has been ergonomically patented designed to fit the hands of children. It is easy to focus, and they can adjust to adult eyes just as well as kid-sized eyes. The leaves of a tree 100 yards away came into sharp focus.\r\nShock Proof: Durable binoculars that can withstand drops and falls on floors due to rubber coating that absorbs shock. If accidentally dropped on the ground, the binoculars are protected from damage with shock proof rubber armor.\r\nCrystal Clear View: The FMC prism green coated optics system can control optical reflection to create crisp and colorful images. The product ensures the user can see the entire visual field for capturing objects easily with 7.11° viewing angle. Multi-layer broadband coating technology, make you see the scene more realistic.\r\nReal Binoculars for Kids: This product has a superb maginifcation of 8X with an amazing view. The binoculars can be adjusted to easily match the eye distance gap for each child. Great for bird watching, learning, hunting, theaters, boat rides, hiking, traveling and enjoying the wilderness!', 'Super Safety: Soft rubber surrounded eyepieces are included for eye protection so children don\'t hurt their eyes or face. There is extra coating surrounding the eyepieces provides better protection of the lens during falls.\r\nAdvanced Design: Non-slip scratch, the grip has been ergonomically patented designed to fit the hands of children. It is easy to focus, and they can adjust to adult eyes just as well as kid-sized eyes. The leaves of a tree 100 yards away came into sharp focus.\r\nShock Proof: Durable binoculars that can withstand drops and falls on floors due to rubber coating that absorbs shock. If accidentally dropped on the ground, the binoculars are protected from damage with shock proof rubber armor.\r\nCrystal Clear View: The FMC prism green coated optics system can control optical reflection to create crisp and colorful images. The product ensures the user can see the entire visual field for capturing objects easily with 7.11° viewing angle. Multi-layer broadband coating technology, make you see the scene more realistic.\r\nReal Binoculars for Kids: This product has a superb maginifcation of 8X with an amazing view. The binoculars can be adjusted to easily match the eye distance gap for each child. Great for bird watching, learning, hunting, theaters, boat rides, hiking, traveling and enjoying the wilderness!', 0, '', '', '', 1),
(26, 5, 'Kid\'s Awesome Activity Wall Calendar 2021', 1200, 1199, 10, '196396530_images.jpg', 'The family favorite that inspired an equally awesome book, The Kid’s Awesome Activity Calendar sparks creativity and keeps kids’ minds engaged, all year long. Each seasonal, colorfully illustrated spread is jam-packed with interactive entertainment, including offbeat prompts to get the mental wheels turning, lively games, and cool crafts. Plant a verdant garden in May. In October', 'The family favorite that inspired an equally awesome book, The Kid’s Awesome Activity Calendar sparks creativity and keeps kids’ minds engaged, all year long. Each seasonal, colorfully illustrated spread is jam-packed with interactive entertainment, including offbeat prompts to get the mental wheels turning, lively games, and cool crafts. Plant a verdant garden in May. In October', 0, '', '', '', 1),
(27, 5, 'Hurtle 3-Wheeled Scooter for Kids - Wheel LED Lights', 4000, 3700, 10, '322462584_e1bcb7f87d38eb469b9cf9e4b2ef9662.jpg', 'MULTI-COLOR WHEEL LIGHTS: The Hurtle ScootKid 3-Wheel Kick Scooters for Kids feature colorful LED turning wheel lights that light up in a variety of flashing colors as you scoot, adding a fun twist to the ride! It also makes the scooter stand out\r\nSIT OR STAND DESIGN WITH FOOT REST: This scooter for toddlers is equipped w/ a unique 45lb capacity removable flip-out seat which kids can use while cruising along with the built-in foot pad. Can be detached when they feel more confident standing up\r\nADJUSTABLE HANDLEBAR: The lightweight and compact kids scooter features an adjustable handlebar w/ 4 height options — 25. 5/27. 5/31/34 inches, works w/ kids of all ages. Ideal for little ones ages 1 year old and up with a weight capacity of 132 lbs\r\nSMOOTH RIDE: The mini toddler trike 3 wheel scooter is equipped w/ anti-slip and wide deck that is large enough to fit both feet. Also has smooth 120mm/80mm gliding roller wheels that run smoothly even on surfaces that are uneven or bumpy', 'MULTI-COLOR WHEEL LIGHTS: The Hurtle ScootKid 3-Wheel Kick Scooters for Kids feature colorful LED turning wheel lights that light up in a variety of flashing colors as you scoot, adding a fun twist to the ride! It also makes the scooter stand out\r\nSIT OR STAND DESIGN WITH FOOT REST: This scooter for toddlers is equipped w/ a unique 45lb capacity removable flip-out seat which kids can use while cruising along with the built-in foot pad. Can be detached when they feel more confident standing up\r\nADJUSTABLE HANDLEBAR: The lightweight and compact kids scooter features an adjustable handlebar w/ 4 height options — 25. 5/27. 5/31/34 inches, works w/ kids of all ages. Ideal for little ones ages 1 year old and up with a weight capacity of 132 lbs\r\nSMOOTH RIDE: The mini toddler trike 3 wheel scooter is equipped w/ anti-slip and wide deck that is large enough to fit both feet. Also has smooth 120mm/80mm gliding roller wheels that run smoothly even on surfaces that are uneven or bumpy', 0, '', '', '', 1),
(28, 5, 'Washable Makeup Girls Unicorn Toys - Real Make Up Set', 2500, 2150, 10, '535177799_81TnIKrRLGL._AC_SX425_.jpg', 'ENJOY MAKEUP PRETEND PLAY: Buy a set back as a gift for your sweet princess and teach her how to make up! The most special birthday gifts, Halloween gifts, Christmas gifts for girl aged 4 5 6 7. ?If the packaging is damaged, the cosmetics are broken, or you are not satisfied with our makeup toys, you can log in to your buyer account to find the contact seller to contact us, we could refund and exchange.', 'ENJOY MAKEUP PRETEND PLAY: Buy a set back as a gift for your sweet princess and teach her how to make up! The most special birthday gifts, Halloween gifts, Christmas gifts for girl aged 4 5 6 7. ?If the packaging is damaged, the cosmetics are broken, or you are not satisfied with our makeup toys, you can log in to your buyer account to find the contact seller to contact us, we could refund and exchange.', 0, '', '', '', 1),
(29, 5, 'Navy Blue School Backpack for Class 1-5 Kids', 350, 320, 20, '788427682_c371a239546f855baf44ac24d72b2cc5.jpg', 'Product Type: School Bag\r\nColor: Navy Blue\r\nGender: Kids\r\nQuality: 100% Export\r\nSize: Length 12\", Width 6.5\" and Height 16\"\r\nWeight: 0.2 kg\r\nClosure Type: Zippers\r\nMain Material: All Chinese Material\r\n3 Layer Thickness', 'A Backpack also called book bag, kit bag, knapsack, rucksack, a pack is, in its simplest form, a cloth sack carried on one\'s back and secured with two straps that go over the shoulders, but there can be variations to this basic design. Lightweight types of backpacks are sometimes worn on only one shoulder strap.Baggage or luggage consists of bags, cases, and containers which hold a traveler\'s articles while the traveler is in transit.The modern traveler can be expected to have packages containing clothing, toiletries, small possessions, trip necessities, and on the return-trip, souvenirs. For some people, luggage, and the style thereof is representative of the owner\'s wealth.', 0, '', '', '', 1),
(30, 5, 'Musical car with blinking light toy', 300, 290, 20, '972261654_4fedab92a71a78b46f9107bbdf08e86c.jpg', 'Good quality\r\nBest gift for kids\r\ncar with blinking light and music', 'Good quality\r\nBest gift for kids\r\ncar with blinking light and music', 0, '', '', '', 1),
(31, 5, 'Kids T-shirt (Girls) 100% Cotton Red', 200, 180, 15, '307100902_925f468b386cbd041b6bb379f8d91a96.jpg', 'Fabrics: 100% Knitted Cotton\r\nSoft & comfortable\r\nSmooth and long lastingSame as picture\r\nType: Girls T Shirt\r\nMain Materials: 100 % Cotton (Knit Cotton)', 'Fabrics: 100% Knitted Cotton\r\nSoft & comfortable\r\nSmooth and long lastingSame as picture\r\nType: Girls T Shirt\r\nMain Materials: 100 % Cotton (Knit Cotton)\r\nAge: 1 Year - 5 Years\r\nGender: Girls\r\nDesign: Half Sleeve\r\nBrand Fariha\r\nMade in Bangladesh', 0, '', '', '', 1),
(32, 5, 'Mini Aircraft Helicopter (Hand Sensored Rechargeable)', 350, 320, 10, '952989698_e7d6d1ca7884bb9f17fe277f953cba5a.jpg', 'When you put your hand under the sensor it could fly higher\r\nlatest intelligent Infrared Sensor system\r\nInduction levitation and collision protection\r\nEco-friendly Material,\r\ngood quality', 'When you put your hand under the sensor it could fly higher\r\nlatest intelligent Infrared Sensor system\r\nInduction levitation and collision protection\r\nEco-friendly Material,\r\ngood quality\r\nLight weight, Low noisy,\r\nSpecially designed for beginners\r\nFlashing light on the bottom\r\n100% Brand New And High Quality', 0, '', '', '', 1),
(33, 5, 'Apollo 11 Lunar Lander Model Kits Building Blocks', 2500, 2450, 5, '291803229_7649f7f1efa13a1283f86d9e5b8155bb.jpg', 'AgeRange?6yearsold>>6yearsold\r\nCertification?CE\r\nCertificateNumber?(8819)125-0038\r\nPlasticBlockShape?Self-LockingBricks\r\nType?BLOCKS\r\nModelNumber?10266\r\nMaterial?Plastic', 'AgeRange?6yearsold>>6yearsold\r\nCertification?CE\r\nCertificateNumber?(8819)125-0038\r\nPlasticBlockShape?Self-LockingBricks\r\nType?BLOCKS\r\nModelNumber?10266\r\nMaterial?Plastic\r\nCE?Certificate\r\nBarcode?No\r\nGender?Unisex\r\nWarning?donoteat,keepawayfromfire\r\nPlasticType?ABS\r\nBlockSize?Smallbuildingblock?CompatiblewithLego?', 1, '', '', '', 1),
(34, 1, 'Realme GT Master Edition 8GB RAM/128GB ROM', 32900, 32000, 5, '844333940_7bc0a591c01aa9590f6b754e3f330abc.jpg', 'To avail EMI please call customer care 16492\r\nNO RETURN applicable if the seal is broken\r\n65W SuperDart Charge\r\n4300mAh(typ) Massive Battery\r\nIncludes a 10V/6.5A Charging Adaptor\r\nUSB Type-C Port\r\n4200mAh(min) Battery Capacity.\r\nCamera: 64MP Street Photography Camera\r\nRear Camera: 64MP Main Camera\r\n25.3mm Focal Length\r\nf/1.8 Aperture\r\n1/2-inch large size', 'To avail EMI please call customer care 16492\r\nNO RETURN applicable if the seal is broken\r\n65W SuperDart Charge\r\n4300mAh(typ) Massive Battery\r\nIncludes a 10V/6.5A Charging Adaptor\r\nUSB Type-C Port\r\n4200mAh(min) Battery Capacity.\r\nCamera: 64MP Street Photography Camera\r\nRear Camera: 64MP Main Camera\r\n25.3mm Focal Length\r\nf/1.8 Aperture\r\n1/2-inch large size\r\n6P Lens\r\n8MP Ultra Wide-angle camera\r\n15.8mm Focal Length\r\n119 FOV\r\nf/2.3 Aperture\r\n5P Lens\r\n2MP Macro Lens\r\n4cm Focus Distance\r\nf/2.4 Aperture\r\n32MP Sony Selfie Camera\r\n85 FOV\r\nf/2.5 Aperture\r\nPortrait Mode, Timelapse, Panoramic View, Beauty Mode, HDR, Face-Recognition, Filter, NightScape, Bokeh Effect Control, Face Distortion Correction', 0, '', '', '', 1),
(35, 1, 'TECNO CAMON 16 Premier', 28000, 27500, 5, '623060668_127a5735178065e0bc74d6f19396da72.jpg', 'Color: Glacial Silver\r\n48MP Dual Front Camera with Dual Flash(Ultra Wide Angle Selfie Camera)\r\n64MP Quad Rear Camera with Five Flash\r\n6.9\" FHD Dual Dot-in Display\r\n33W Flash Charge', 'Color: Glacial Silver\r\n48MP Dual Front Camera with Dual Flash(Ultra Wide Angle Selfie Camera)\r\n64MP Quad Rear Camera with Five Flash\r\n6.9\" FHD Dual Dot-in Display\r\n33W Flash Charge\r\n128GB ROM + 8GB RAM\r\nHelio G90T Extreme Performance\r\nSuper Video Mode\r\nUltra Night Portrait Powered By TAIVO', 0, '', '', '', 1),
(36, 1, 'Nokia 3.4 4GB RAM 64GB ROM- Black', 14500, 14200, 5, '190071097_c79ae11d55cc1c41fad87f7b11095e65.jpg', 'Nokia 3.4 4GB RAM 64GB ROM- Black OS: Android 10, ready for Android 11 CPU: Qualcomm Snapdragon 4', 'OS: Android 10, ready for Android 11\r\nCPU: Qualcomm Snapdragon 4\r\nBattery: 4000 mAh battery\r\nStorage: 4GB RAM/ 64GB ROM\r\nDisplay: 6.39\" HD+ full display\r\nCamera:\r\nRear camera 13MP+ 5MP ultra wide+2MP depth sensor\r\nFront facing camera: 8MP', 1, '', '', '', 1),
(37, 1, 'Nokia 3.4 DS Smartphone 3GB RAM 64GB ROM', 14000, 13500, 5, '142010214_a9973739e5d07f68964727d890f7a4dd.jpg', 'Model Name: Nokia 3.4 \r\nDisplay: Size:6.39 inch Aspect ratio:19.5:9 Resolution:HD+ \r\nCamera: Front camera:8 MP Rear camera:13 MP Main + 2 MPDepth + 5 MP Ultrawide Rear flash LED', 'NO RETURN applicable if the seal is broken\r\nModel Name: Nokia 3.4\r\nDisplay:Size:6.39 inch Aspect ratio:19.5:9 Resolution:HD+\r\nCamera: Front camera:8 MPRear camera:13 MP Main + 2 MPDepth + 5 MP Ultrawide Rear flash LED\r\nConnectivity: Bluetooth:4.2 Headphone jack:3.5 mm Location:GPS/AGPS, GLONASS, BDS,Galileo USB connection:USB Type-C WiFi:802.11 b/g/n NFC Supported\r\nBattery:4000 mAh, NonRemovable1 Charging:5V2A charging\r\nMemory & storage: Cloud storage: Google-Drive Storage MicroSD card support up to:512 GB\r\nRAM:3GB', 0, '', '', '', 1),
(38, 4, 'Exclusive Unstiched Three Piece (Skin Print)', 11500, 11200, 5, '374104989_35675a86d39c686b9f2186dd940b94c8.jpg', 'Main Material: Butics/Butix Work Unstitched Three Piece, Color: Same as picture, Kameez- Cotton ??? ????????? ??? ???', 'Main Material: Butics/Butix Work Unstitched Three Piece, Color: Same as picture, Kameez- Cotton ??? ????????? ??? ???, Selower- Cotton, Selower- 2.5 Goj, Orna- 5 Hath ???? ??????? ???, Long: 48\'\' (Free Size), Stylish designand comfortable', 0, '', '', '', 1),
(39, 4, 'NADIA EXPORT Les Batik Three Piece', 11000, 10800, 2, '397209347_e81e6e78c6f4af6411bf2bade0d71222.jpg', 'Product Type : ???? ????? ???? ????\r\nBody : ? ??\r\nGender : Women\r\n???????? 2.5 ??\r\n????? 2.5 ??\r\nSize: Free Size.\r\nLength: Upto 45 Inch.\r\nComfortable to wear.\r\nFashionable and elegant design.', 'Product Type : ???? ????? ???? ????\r\nBody : ? ??\r\nGender : Women\r\n???????? 2.5 ??\r\n????? 2.5 ??\r\nSize: Free Size.\r\nLength: Upto 45 Inch.\r\nComfortable to wear.\r\nFashionable and elegant design.\r\nColor: As same as picture.\r\nHigh quality fabric, stylish design, and comfortable\r\nEasy to wash\r\nDesigned according to latest patterns\r\nColour Declaration : There Might Be Slight Variation In The Actual Color Of The Georgette Long Dress Due To Different Screen Resolutions.\r\n{Wash Note} : Machine Wash Cold Gentle Cycle/Hand Wash In Cold Water', 0, '', '', '', 1),
(40, 4, 'Soft Narayan Weightless Georgette Saree for Women', 950, 900, 5, '695273615_71b5528acdf6f272e809e4f6b29ab158.jpg', 'soft Weightless Georgette saree\r\nNarayan Fabric\'s\r\n12 hat saree\r\n46 Inch long', 'soft Weightless Georgette saree\r\nNarayan Fabric\'s\r\n12 hat saree\r\n46 Inch long\r\nsoft and comfortable\r\nyou get actual color\r\nOnly saree no blouse piece\r\nParty or program saree', 0, '', '', '', 1),
(41, 2, 'IELGY Ins popular shirt', 1500, 1450, 5, '389236941_7d50b9abd0cec601a4a16ce43535c1b9.jpg', 'IELGY Ins popular shirt new men\'s Harajuku plaid shirt', 'We use China size, it\'s smaller 1-2 size than US. thank you for your understand!\r\n \r\nThickness: General\r\nColor: black, navy blue, brown, khaki\r\nThe content of the main fabric component: 60%\r\nMain fabric composition: cotton\r\nSize: M-3XL\r\nApplicable gender: male\r\nSleeve length: long sleeve\r\n \r\nsize:\r\nM: shoulder width 50cm, bust 104cm, length 68cm, sleeve length 61cm\r\n\r\nL: shoulder width 51cm, bust 108cm, length 70cm, sleeve length 62cm', 1, '', '', '', 1),
(42, 2, 'BlingStar Summer Men\'s Thin Cotton Shirt', 4000, 3750, 5, '434222310_95f5500fdf09370dae3e7a8cc4aa9dee.jpg', 'BlingBlingStar Summer Men\'s Cool And Thin Breathable Collar Hanging Dyed Gradient Cotton Shirt', 'It is made of high quality materials,durable enought for your daily wearing\r\nPerfect Match with your favorite shorts, etc\r\nGreat for party,Daily,Beach,I am sure you will like it\r\nPut on this checked shirt to make you look more gentleman\r\nEvery day with it is super happy', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(3, 'Tanvir Ahmed', 'tanvir', 'tanvir@gmail.com', '01738372627', '2020-12-08 06:03:12'),
(5, 'Muntasir', 'muntasir', 'muntasir@gmail.com', '01622792511', '2020-12-09 06:03:04'),
(6, 'Utsho', 'utsho', 'utsho@gmail.com', '01788996633', '2020-12-09 06:05:05'),
(7, 'Sifat', 'sifat', 'sifat@gmail.com', '01733665544', '2020-12-09 06:07:15'),
(8, 'Orco', 'orco', 'orco@gmail.com', '01733665533', '2020-12-09 06:07:30'),
(9, 'Nayem', 'nayem', 'nayem@gmail.com', '01733665533', '2020-12-09 06:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(16, 1, 4, '2020-05-13 08:54:24'),
(20, 4, 26, '2020-12-09 06:01:50'),
(21, 5, 4, '2020-12-09 06:03:33'),
(22, 5, 6, '2020-12-09 06:03:34'),
(23, 6, 26, '2020-12-09 06:05:31'),
(24, 9, 16, '2020-12-09 06:08:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
