-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 09:03 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartmaintainanceportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddept`
--

CREATE TABLE IF NOT EXISTS `adddept` (
  `deptname` varchar(40) NOT NULL,
  `taluka` varchar(40) NOT NULL,
  `district` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobno` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adddept`
--

INSERT INTO `adddept` (`deptname`, `taluka`, `district`, `address`, `mobno`, `email`, `password`) VALUES
('civil', 'shirpur', 'dhule', 'main road', '9876543', 'rcpit@gmail.com', '12345'),
('cs', 'shirpur', 'jalgaon', 'nimzari naka', '8765432223', 'cs@gmail.com', 'cs');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(40) NOT NULL,
  `comment` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `email`, `department`) VALUES
(2, 'prbm', 'admin@gmail.com', 'civil'),
(4, 'do as soon as possible', 'mayur@gmail.com', 'civil'),
(5, 'do fast', 'admin@gmail.com', 'comp'),
(6, 'insufficient capacity of roads', 'admin@gmail.com', 'civil');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
  `title` varchar(40) NOT NULL,
  `description` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `image` blob NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`title`, `description`, `department`, `date`, `image`, `email`, `status`) VALUES
('Road Problem', 'stones in path', 'civil', '2022-02-09', 0x646f776e6c6f61642e6a7067, 'mayur@gmail.com', 'approve'),
('worst condition of road', 'due to rain road has become muddy', 'comp', '2022-06-14', 0x68312e6a7067, 'admin@gmail.com', 'pending'),
('rural area road problems', 'roads are not maintain properly', 'civil', '2022-02-09', 0x68312e6a7067, 'admin@gmail.com', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `helplineno`
--

CREATE TABLE IF NOT EXISTS `helplineno` (
  `name` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `helplineno`
--

INSERT INTO `helplineno` (`name`, `contact`) VALUES
('users', '76543'),
('kamini', '76543'),
('komal', '6789345543'),
('srushti', '2345678765'),
('shivani', '8655447585'),
('priya', '3568929495'),
('krushna', '9287463543'),
('shantanu', '8763452923');

-- --------------------------------------------------------

--
-- Table structure for table `road`
--

CREATE TABLE IF NOT EXISTS `road` (
  `rname` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL,
  `deadline` date NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `road`
--

INSERT INTO `road` (`rname`, `location`, `department`, `deadline`, `status`) VALUES
('main road', 'paras colony', 'civil', '0022-12-22', 'approve'),
('balaji road', 'lalbag', 'electrical', '2022-02-14', 'approve'),
('gangapur road', 'nashik', 'entc', '2022-02-09', 'approve'),
('kelkar road', 'amravati', 'civil', '2022-02-04', 'approve'),
('karas road', 'Pachora', 'electrical', '2022-02-10', 'pending'),
('paras road', 'vasmat', 'comp', '2022-02-15', 'pending'),
('vyankatesh road', 'amravati', 'comp', '2022-02-08', 'pending'),
('college road', 'nashik', 'civil', '2022-02-09', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(40) NOT NULL,
  `mobno` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `mobno`, `address`, `email`, `password`) VALUES
('kamini', '87654', 'main road', 'admin@gmail.com', 'suru'),
('mayur', '4567', 'snk', 'mayur@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
