-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 06:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter33`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id_auto` int(11) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `data` text,
  `user_id` int(11) DEFAULT NULL,
  `id_res_auto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id_auto`, `id`, `ip_address`, `timestamp`, `data`, `user_id`, `id_res_auto`) VALUES
(1, '8sdrqe2ci3h0ufga8jaj0semg6eb9asv', '::1', 1729687746, '__ci_last_regenerate|i:1729687746;', NULL, NULL),
(2, 'cn1gh3berar9r1kclcqm3mm1e3vvj4v6', '::1', 1729688400, '__ci_last_regenerate|i:1729688400;', NULL, NULL),
(3, 'vhafhfb3ckmb2kladk2uao7rdtog1b4c', '::1', 1729688744, '__ci_last_regenerate|i:1729688744;logged_in|a:5:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:6:\"savage\";s:5:\"email\";s:12:\"sa@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"1\";}', NULL, NULL),
(4, 'o60vehb5hc26f2n5q2hdg6kjvg79f24h', '::1', 1729689102, '__ci_last_regenerate|i:1729689102;logged_in|a:5:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:6:\"savage\";s:5:\"email\";s:12:\"sa@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"1\";}', NULL, NULL),
(5, 'qoh7f4tsqq39ra52urgse52mldin2hug', '::1', 1729689886, '__ci_last_regenerate|i:1729689886;logged_in|a:5:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:6:\"savage\";s:5:\"email\";s:12:\"sa@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"1\";}', NULL, NULL),
(6, '5ll1e96ngg8h2o2pgqrpfulo9uuqvlia', '::1', 1729690214, '__ci_last_regenerate|i:1729690214;logged_in|a:5:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:6:\"savage\";s:5:\"email\";s:12:\"sa@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"1\";}', NULL, NULL),
(7, '43j16getkdibttjg3cotj1c2jec4idqp', '::1', 1729690527, '__ci_last_regenerate|i:1729690527;logged_in|a:5:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:6:\"savage\";s:5:\"email\";s:12:\"sa@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"1\";}', NULL, NULL),
(8, 'hfnjhnhph455anf78ej2q1spqs3asdhm', '::1', 1729690897, '__ci_last_regenerate|i:1729690897;logged_in|a:5:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:6:\"savage\";s:5:\"email\";s:12:\"sa@gmail.com\";s:8:\"password\";s:6:\"123456\";s:4:\"role\";s:1:\"1\";}', NULL, NULL),
(11, 'kkhj8c8fhjif1cika9ashedagkpjhc2c', '::1', 1729690990, '__ci_last_regenerate|i:1729690990;', NULL, NULL),
(12, 'rcm6q04k6l2ffi463pp52upvh70nnb0a', '::1', 1729700092, '__ci_last_regenerate|i:1729700092;', NULL, NULL),
(13, 'l5cpere5mhrc4va8baftp95746psd1q0', '::1', 1729702427, '__ci_last_regenerate|i:1729702427;', NULL, NULL),
(14, '0idg95f1cqfoh83tlv4opqpgr9vgj6t5', '::1', 1729701075, '__ci_last_regenerate|i:1729701075;', NULL, NULL),
(15, 'msfgtvrvh93m6frode983g8lv5ouhnvj', '::1', 1729701382, '__ci_last_regenerate|i:1729701382;', NULL, NULL),
(16, '0plebgs5ib5bafcs628509a6ntvl1idh', '::1', 1729701884, '__ci_last_regenerate|i:1729701884;', NULL, NULL),
(17, 'gtghpnu1vdshsttqu6q5ukc19fja88pa', '::1', 1729702298, '__ci_last_regenerate|i:1729702298;', NULL, NULL),
(18, '62p08h5iq2elrovu3821gucb8qqclhpu', '::1', 1729702416, '__ci_last_regenerate|i:1729702298;', NULL, NULL),
(19, 'v8fobn6291ebn4fanqv3cgf4habr2u7q', '::1', 1729702427, '__ci_last_regenerate|i:1729702427;', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'savage', 'sa@gmail.com', '123456', 1),
(2, 'B10', 'b10@gmail.com', '12345678910', 1),
(3, 'Boom', 'boom@gmail.com', '123', 0),
(5, 'B1', 'b1@gmail.com', '2255', 1),
(6, 'B2', 'b2@gmail.com', '2255', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id_auto`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  MODIFY `id_auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
