-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2017 at 08:10 AM
-- Server version: 10.2.8-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business ', '2017-09-26 09:23:15'),
(2, 'Technology', '2017-09-26 09:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `navId` int(11) NOT NULL,
  `navName` varchar(255) NOT NULL,
  `navLinkUrl` longtext NOT NULL,
  `navPlace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`navId`, `navName`, `navLinkUrl`, `navPlace`) VALUES
(1, 'home', '/home', 0),
(2, 'Blog', '/posts', 0),
(3, 'About', '/about', 0),
(4, 'Create post', '/posts/create', 1),
(7, 'Google', 'https://www.google.nl/?gfe_rd=cr&dcr=0&ei=GOTdWcGLI4iFkgWS06jAAQ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `url`, `created_at`) VALUES
(1, 1, 'Hurricane Maria forecast to become Category 4', 'post-one', '(CNN)Hurricane Maria is forecast to rapidly strengthen over the next two days as it takes aim at Caribbean islands devastated by Hurricane Irma just days ago.', '', '2017-09-13 10:10:55'),
(2, 0, 'Emmys cast President Trump in key role', 'Emmys-cast-President-Trump-in-key-role', '<p>(CNN)In terms of politics the Emmys join the award-show party late, after the Golden Globes, Grammys, Oscars and Tonys have all taken whacks at the Trump presidency. Yet the president&#39;s preferred medium provided fertile terrain for satirizing and commenting upon the political moment, a mood that permeated everything from host Stephen Colbert&#39;s monologue to the diverse winners and onstage banter.</p>\r\n', '', '2017-09-13 10:10:55'),
(6, 0, 'CodeIgniter tutorial 1', 'CodeIgniter-tutorial-1', '<p>This is a tutorial about how to start your MVC</p>\r\n', '', '2017-09-25 07:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`navId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `navId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
