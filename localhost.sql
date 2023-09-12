-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2023 at 01:14 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cerepashci`
--
CREATE DATABASE IF NOT EXISTS `cerepashci` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cerepashci`;

-- --------------------------------------------------------

--
-- Table structure for table `фракция`
--

CREATE TABLE `фракция` (
  `id` int(11) NOT NULL,
  `фракция` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `мир`
--

CREATE TABLE `мир` (
  `id` int(11) NOT NULL,
  `версия` varchar(50) NOT NULL,
  `описание` varchar(50) NOT NULL,
  `сезон` varchar(50) NOT NULL,
  `название` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `оружие`
--

CREATE TABLE `оружие` (
  `id` int(11) NOT NULL,
  `название` varchar(50) NOT NULL,
  `тип` varchar(50) NOT NULL,
  `вид_урона` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `пользователи`
--

CREATE TABLE `пользователи` (
  `id` int(11) NOT NULL,
  `логин` varchar(50) NOT NULL,
  `пароль` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `расса`
--

CREATE TABLE `расса` (
  `id` int(11) NOT NULL,
  `название` varchar(50) NOT NULL,
  `мир` varchar(50) NOT NULL,
  `особенности` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pers`
--

CREATE TABLE `pers` (
  `id` int(11) NOT NULL,
  `имя` varchar(50) NOT NULL,
  `возраст` int(11) NOT NULL,
  `статус` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `фракция`
--
ALTER TABLE `фракция`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `мир`
--
ALTER TABLE `мир`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `оружие`
--
ALTER TABLE `оружие`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `пользователи`
--
ALTER TABLE `пользователи`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `расса`
--
ALTER TABLE `расса`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pers`
--
ALTER TABLE `pers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `фракция`
--
ALTER TABLE `фракция`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `оружие`
--
ALTER TABLE `оружие`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `пользователи`
--
ALTER TABLE `пользователи`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `расса`
--
ALTER TABLE `расса`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pers`
--
ALTER TABLE `pers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
