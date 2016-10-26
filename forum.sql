-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2016 at 11:16 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--
CREATE DATABASE IF NOT EXISTS `forum` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forum`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(6) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `position` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `position`) VALUES
(1, 'Computer Science', '', 1),
(3, 'Health', '', 3),
(2, 'Food', '', 2),
(4, 'Sports', '', 4),
(5, 'Places', '', 5),
(6, 'Governance', '', 6),
(7, 'Relationships', '', 7),
(8, 'Current Issues', '', 10),
(9, 'Security', '', 9),
(10, 'Religion', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`id`, `id2`, `title`, `user1`, `user2`, `message`, `timestamp`, `user1read`, `user2read`) VALUES
(1, 1, 'hello world', 2, 1, 'this is a very good forum', 1447088252, 'yes', 'yes'),
(2, 1, 'hello world', 3, 1, 'tell me', 1447180175, 'yes', 'yes'),
(3, 1, 'hello world', 3, 1, 'tell me', 1447180230, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `parent` smallint(6) NOT NULL,
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `message` longtext NOT NULL,
  `authorid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `timestamp2` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`parent`, `id`, `id2`, `title`, `message`, `authorid`, `timestamp`, `timestamp2`) VALUES
(1, 1, 1, 'C++', '<br />\r\n	<br />\r\n<br />\r\nI&#039;m trying to learn about strings, but different sources tell my to include different headers.<br />\r\n<br />\r\nSome say to use &lt;string.h&gt;, but others mention &quot;apstring.h&quot;. I was able to do some basic stuff with apstring, but I&#039;ve been told the other one is more powerful. When I include &lt;string.h&gt; and try to declare some string variables, however, I get errors. What is the proper usage?<br />\r\n', 2, 1447088410, 1449037875),
(1, 1, 2, '', 'That&#039;s very true', 2, 1447088501, 1447088501),
(1, 1, 3, '', '<br />\r\n<br />\r\nSources telling you to use apstring.h are materials for the Advanced Placement course in computer science. It describes a string class that you&#039;ll use through the course, and some of the exam questions may refer to it and expect you to be moderately familiar with it. Unless you&#039;re enrolled in that class or studying to take that exam, ignore those sources.<br />\r\n<br />\r\nSources telling you to use string.h are either not really talking about C++, or are severely outdated. You should probably ignore them, too. That header is for the C functions for manipulating null-terminated arrays of characters, also known as C-style strings.<br />\r\n<br />\r\nIn C++, you should use the string header. Write #include &lt;string&gt; at the top of your file. When you declare a variable, the type is string, and it&#039;s in the std namespace, so its full name is std::string. You can avoid having to write the namespace portion of that name all the time by following the example of lots of introductory texts and saying using namespace std at the top of the C++ source files (but generally not at the top of any header files you might write).<br />\r\n', 14, 1449037875, 1449037875),
(1, 2, 1, 'HTML', 'kpokonvfhnggh', 2, 1449045840, 1449045906),
(1, 2, 2, '', 'hfhjgjddfgd', 5, 1449045906, 1449045906);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `signup_date` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `avatar`, `signup_date`) VALUES
(1, 'hoslack', '361f210a5eafbf813d6ce82d56c1a3fb5f472eff', 'hoslackochieng@gmail.com', 'avatar', 1447071942),
(2, 'guest', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'test@gmail.com', 'avatar', 1447088117),
(3, 'wattson', '39456354df3571bbb479990edd35886331f1bbbc', 'wasongakelvin@gmail.com', '', 1447179981),
(4, 'twesh', '2b5c42f20a34c194ac4aa18185fc33c14668af55', 'fake@ymail.com', '', 1448036771),
(5, 'guest1', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest1@gmail.com', '', 1449033502),
(6, 'guest2', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest2@gmail.com', '', 1449033599),
(7, 'guest3', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest3@gmail.com', '', 1449033645),
(8, 'guest4', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest4@gmail.com', '', 1449033757),
(9, 'guest5', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest5@gmail.com', '', 1449033889),
(10, 'guest6', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest6@gmail.com', '', 1449033937),
(11, 'guest7', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest7@gmail.com', '', 1449034052),
(12, 'guest8', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest8@gmail.com', '', 1449034114),
(13, 'guest9', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest9@gmail.com', '', 1449034151),
(14, 'guest10', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest10@gmail.com', '', 1449034187),
(15, 'guest11', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest12@gmail.com', '', 1449034261),
(16, 'guest12', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest12@gmail.com', '', 1449034464),
(17, 'guest13', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest13@gmail.com', '', 1449034517),
(18, 'guest14', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest14@gmail.com', '', 1449034590),
(19, 'guest15', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest15@gmail.com', '', 1449034628),
(20, 'guest16', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest16@gmail.com', '', 1449034670),
(21, 'guest17', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest17@gmail.com', '', 1449035511),
(22, 'guest18', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest18@gmail.com', '', 1449035557),
(23, 'guest19', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest19@gmail.com', '', 1449035780),
(24, 'guest20', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'guest20@gmail.com', '', 1449035836),
(25, 'designer', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'des@gmail.com', '', 1449062731),
(26, 'students', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'students@gmail.com', '', 1449063053),
(27, 'student', 'f2693847f257a25f807707ad00f1392e75dcc66b', 'student@gmail.com', '', 1449063280),
(28, 'Olela', '741904d6424d9f5acd3512b3b571d9f4c527cc16', 'olelahenry2@gmail.com', '', 1450357532);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
