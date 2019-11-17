-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 18, 2019 at 10:18 AM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetobeat`
--

-- --------------------------------------------------------

--
-- Table structure for table `gamereqs`
--

DROP TABLE IF EXISTS `gamereqs`;
CREATE TABLE IF NOT EXISTS `gamereqs` (
  `gameRID` int(10) NOT NULL AUTO_INCREMENT,
  `gametitle` varchar(255) NOT NULL,
  `platforms` varchar(255) NOT NULL,
  `gamedescription` text NOT NULL,
  `releasedate` varchar(255) NOT NULL,
  `thumbnailurl` varchar(255) NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`gameRID`),
  KEY `fk_gamerequid` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gamereqs`
--

INSERT INTO `gamereqs` (`gameRID`, `gametitle`, `platforms`, `gamedescription`, `releasedate`, `thumbnailurl`, `userID`) VALUES
(30, 'Destiny 2', 'Multi-Platform', 'Humanity\'s last safe city has fallen to an overwhelming invasion force, led by Ghaul, the imposing commander of the brutal Red Legion. He has stripped the city\'s Guardians of their power, and forced the survivors to flee. You will venture to mysterious, unexplored worlds of our solar system to discover an arsenal of weapons and devastating new combat abilities. To defeat the Red Legion and confront Ghaul, you must reunite humanity\'s scattered heroes, stand together, and fight back to reclaim our home.\r\n\r\n', '7/9/2017', 'uploads/d2.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `gameID` int(10) NOT NULL AUTO_INCREMENT,
  `gametitle` varchar(255) NOT NULL,
  `platforms` varchar(255) NOT NULL,
  `gamedesc` text NOT NULL,
  `releasedate` varchar(255) NOT NULL,
  `thumbnailurl` varchar(255) NOT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameID`, `gametitle`, `platforms`, `gamedesc`, `releasedate`, `thumbnailurl`) VALUES
(1, 'Hollow Knight', 'Multi-Platform', 'Hollow Knight is a challenging, beautiful action adventure game set in the vast, inter-connected underground kingdom of Hallownest. A 2D action game with an emphasis on skill and exploration, Hollow Knight has you fighting a fearsome host of deadly creatures, avoiding intricate traps and solving ancient mysteries as you make your own way through fungal wastes, forests of bone, and ruined underground cities.', '24/02/2017', 'Uploads/hollowknight.jpg'),
(2, 'Portal\r\n', 'Multi-Platform', 'Portal is a new single player game from Valve, creators of Half-Life 2 and Counter-Strike. Set in the mysterious Aperture Science Laboratories, Portal has earned over 15 Game of the Year Awards and offers gamers hours of unique gameplay. The game is designed to change the way players approach, manipulate and surmise the possibilities in a given environment; similar to how Half-Life 2\'s Gravity Gun innovated new ways to leverage an object in any given situation. Players must solve physical puzzles and challenges by opening portals to maneuvering objects, and themselves, through space.', '09/10/2007', 'Uploads/portal.jpg'),
(3, 'The Witcher 3: Wild Hunt\r\n', 'Multi-Platform', 'In The Witcher 3 an ancient evil stirs, awakening. An evil that sows terror and abducts the young. An evil whose name is spoken only in whispers: the Wild Hunt. Led by four wraith commanders, this ravenous band of phantoms is the ultimate predator and has been for centuries. Its quarry: humans.', '19/5/2015', 'Uploads/witcher.jpg'),
(4, 'Assassin\'s Creed Odyssey\r\n', 'Multi-Platform', 'Choose your fate in Assassin\'s Creed Odyssey. From outcast to living legend, embark on an odyssey to uncover the secrets of your past and change the fate of Ancient Greece.\r\n\r\n', '04/10/2018', 'Uploads/assassod.jpg'),
(5, 'Marvel\'s Spider-Man\r\n', 'PS4', 'After eight years behind the mask, Peter Parker is a crime-fighting master. Feel the full power of a more experienced Spider-Man with improvisational combat, dynamic acrobatics, fluid urban traversal, and environmental interactions. A rookie no longer, this is the most masterful Spider-Man you\'ve ever played.', '07/09/2018', 'Uploads/spidermon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `logid` int(10) NOT NULL AUTO_INCREMENT,
  `referrer` varchar(255) DEFAULT NULL,
  `sourceip` varchar(255) NOT NULL,
  `sessionid` varchar(255) NOT NULL,
  `requestedurl` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`logid`, `referrer`, `sourceip`, `sessionid`, `requestedurl`, `timestamp`) VALUES
(1, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-22 18:13:33'),
(2, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-22 18:14:24'),
(3, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-22 18:15:27'),
(4, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-22 18:17:59'),
(5, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-22 18:18:32'),
(6, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 15:21:03'),
(7, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:23:44'),
(8, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:27:11'),
(9, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:27:30'),
(10, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:28:02'),
(11, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:28:07'),
(12, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:28:53'),
(13, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:31:57'),
(14, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:31:57'),
(15, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:31:58'),
(16, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:34:27'),
(17, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:34:27'),
(18, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:34:27'),
(19, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:34:28'),
(20, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:36:01'),
(21, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:36:01'),
(22, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:36:01'),
(23, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:39:25'),
(24, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:39:26'),
(25, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:39:59'),
(26, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:40:00'),
(27, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:40:00'),
(28, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:40:01'),
(29, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:40:01'),
(30, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:40:01'),
(31, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:55'),
(32, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:55'),
(33, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:55'),
(34, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:55'),
(35, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:55'),
(36, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:55'),
(37, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:43:56'),
(38, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:44:40'),
(39, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:44:49'),
(40, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:48:10'),
(41, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:48:10'),
(42, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:48:11'),
(43, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:48:11'),
(44, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:50:40'),
(45, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:51:26'),
(46, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:51:44'),
(47, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:16'),
(48, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:16'),
(49, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:16'),
(50, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:17'),
(51, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:17'),
(52, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:17'),
(53, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:17'),
(54, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:17'),
(55, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:18'),
(56, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:18'),
(57, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:18'),
(58, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:19'),
(59, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:19'),
(60, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:19'),
(61, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:53:19'),
(62, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:54:56'),
(63, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:08'),
(64, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:08'),
(65, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:08'),
(66, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:09'),
(67, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:09'),
(68, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:09'),
(69, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:10'),
(70, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:51'),
(71, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:52'),
(72, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:52'),
(73, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:52'),
(74, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:52'),
(75, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:55:53'),
(76, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:58:14'),
(77, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:58:14'),
(78, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:58:14'),
(79, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:58:14'),
(80, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:24'),
(81, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:24'),
(82, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:38'),
(83, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:39'),
(84, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:39'),
(85, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:39'),
(86, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:39'),
(87, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:40'),
(88, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:40'),
(89, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-23 17:59:40'),
(90, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-23 18:07:49'),
(91, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-23 18:09:11'),
(92, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-23 18:09:12'),
(93, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-23 18:09:12'),
(94, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-23 18:09:12'),
(95, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-23 18:09:12'),
(96, 'http://192.168.0.25/beatit/test.html', '192.168.0.25', '8t23hb5d8pn0p9p3q492i4f014', '/beatit/ws.php?page=log', '2019-08-25 14:59:21'),
(97, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 14:59:24'),
(98, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 14:59:24'),
(99, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 14:59:44'),
(100, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 14:59:44'),
(101, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 14:59:45'),
(102, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:10'),
(103, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:53'),
(104, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:53'),
(105, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:53'),
(106, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:53'),
(107, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:53'),
(108, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:00:54'),
(109, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:01:25'),
(110, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:01:25'),
(111, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:01:25'),
(112, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:01:26'),
(113, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:01:26'),
(114, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:04:41'),
(115, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:04:41'),
(116, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:04:42'),
(117, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:04:42'),
(118, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:05:57'),
(119, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:06:13'),
(120, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:06:13'),
(121, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:06:13'),
(122, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:06:29'),
(123, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:06:29'),
(124, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:06:29'),
(125, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:09:01'),
(126, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:09:01'),
(127, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:09:01'),
(128, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:09:40'),
(129, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:09:40'),
(130, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:10:45'),
(131, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:10:45'),
(132, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:10:45'),
(133, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:10:45'),
(134, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:10:45'),
(135, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:12:49'),
(136, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 15:14:08'),
(137, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:20'),
(138, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:20'),
(139, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:21'),
(140, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:21'),
(141, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:45'),
(142, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:45'),
(143, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:46'),
(144, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:22:46'),
(145, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:24:04'),
(146, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:24:04'),
(147, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:24:04'),
(148, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:24:54'),
(149, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:24:54'),
(150, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:24:54'),
(151, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:25:10'),
(152, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:25:10'),
(153, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:27:48'),
(154, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:27:48'),
(155, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:27:48'),
(156, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-25 19:27:49'),
(157, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:13:38'),
(158, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:00'),
(159, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:01'),
(160, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:54'),
(161, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:54'),
(162, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:54'),
(163, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:54'),
(164, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:54'),
(165, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:55'),
(166, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:55'),
(167, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:55'),
(168, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:55'),
(169, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:55'),
(170, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:14:56'),
(171, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:17:14'),
(172, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:19:47'),
(173, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:20:50'),
(174, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:21:23'),
(175, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:22:44'),
(176, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:23:40'),
(177, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:24:28'),
(178, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:25:15'),
(179, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:27:33'),
(180, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:28:16'),
(181, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:35:37'),
(182, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:39:28'),
(183, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:52:20'),
(184, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:53:08'),
(185, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:53:22'),
(186, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:53:57'),
(187, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:54:04'),
(188, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:54:57'),
(189, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:55:43'),
(190, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:56:35'),
(191, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:57:12'),
(192, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:57:24'),
(193, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 09:59:47'),
(194, 'http://localhost/beatit/test.html', '::1', 'r55sr853r2285rm25ou66os16c', '/beatit/ws.php?page=log', '2019-08-26 10:00:42'),
(195, 'http://localhost/beatit/test.html', '::1', 'sanku853s23bqaekokb4649q3r', '/beatit/ws.php?page=viewrequestedgames', '2019-09-09 13:03:50'),
(196, 'http://localhost/beatit/test.html', '::1', 'laekg8d9s3bf940fc2smq02sue', '/beatit/ws.php?page=showallgames', '2019-09-09 13:03:50'),
(197, 'http://localhost/beatit/test.html', '::1', 'q6cb7ut8b24q69diuiuk13hlrn', '/beatit/ws.php?page=gamefieldsel', '2019-09-09 13:03:50'),
(198, 'http://localhost/beatit/test.html', '::1', 'laekg8d9s3bf940fc2smq02sue', '/beatit/ws.php', '2019-09-09 13:04:52'),
(199, 'http://localhost/beatit/test.html', '::1', 'laekg8d9s3bf940fc2smq02sue', '/beatit/ws.php?page=logout', '2019-09-10 10:52:20'),
(200, 'http://localhost/beatit/test.html', '::1', 'laekg8d9s3bf940fc2smq02sue', '/beatit/ws.php?page=logout', '2019-09-10 10:52:20'),
(201, 'http://localhost/beatit/test.html', '::1', 'laekg8d9s3bf940fc2smq02sue', '/beatit/ws.php', '2019-09-10 11:12:06'),
(202, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php?page=viewrequestedgames', '2019-09-16 11:41:02'),
(203, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php?page=logout', '2019-09-16 11:50:48'),
(204, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php', '2019-09-16 11:50:54'),
(205, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php?page=viewrequestedgames', '2019-09-16 13:17:26'),
(206, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php', '2019-09-17 09:23:55'),
(207, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php?page=logout', '2019-09-17 10:32:12'),
(208, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php', '2019-09-17 10:32:18'),
(209, 'http://localhost/beatit/test.html', '::1', 'enmq99i7ig08c9nhljnch9fdk7', '/beatit/ws.php', '2019-09-17 10:38:49'),
(210, 'http://localhost/beatit/test.html', '::1', '9ljv4m5nnkm0ufe0bbjm1vs7i3', '/beatit/ws.php?page=viewrequestedgames', '2019-10-03 18:15:42'),
(211, 'http://localhost/beatit/test.html', '::1', 'ea6pqtgkndfq7ur3i759rd2vbo', '/beatit/ws.php?page=gamefieldsel', '2019-10-03 18:15:42'),
(212, 'http://localhost/beatit/test.html', '::1', 'gu3hks9sa3rmr71kkcl4j20p8f', '/beatit/ws.php?page=showallgames', '2019-10-03 18:15:42'),
(213, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php?page=showallgames', '2019-10-12 18:18:20'),
(214, 'http://localhost/beatit/test.html', '::1', 've3k5bfh1aogcqu1r4t8i91k0o', '/beatit/ws.php?page=viewrequestedgames', '2019-10-12 18:18:20'),
(215, 'http://localhost/beatit/test.html', '::1', 'd0i0l7gf3o2c5893rv1tnpa6f1', '/beatit/ws.php?page=gamefieldsel', '2019-10-12 18:18:20'),
(216, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php?page=logout', '2019-10-13 15:31:53'),
(217, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php?page=logout', '2019-10-13 15:31:58'),
(218, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php?page=showallgames', '2019-10-13 18:09:19'),
(219, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php', '2019-10-13 18:43:13'),
(220, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php?page=showallgames', '2019-10-13 18:44:17'),
(221, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php', '2019-10-13 18:51:50'),
(222, 'http://localhost/beatit/test.html', '::1', '5kusu0nr3mvcduhjf5eoklfvv7', '/beatit/ws.php', '2019-10-13 18:52:38'),
(223, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=showallgames', '2019-10-14 08:59:43'),
(224, 'http://localhost/beatit/test.html', '::1', 'hmg2v3e6v9ufsmgjfhqg4eincc', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 08:59:43'),
(225, 'http://localhost/beatit/test.html', '::1', 'hkf360rqhfkthadhkvmik98egd', '/beatit/ws.php?page=gamefieldsel', '2019-10-14 08:59:43'),
(226, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=logout', '2019-10-14 09:27:04'),
(227, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 09:29:46'),
(228, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=logout', '2019-10-14 09:29:49'),
(229, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=logout', '2019-10-14 09:29:49'),
(230, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 09:31:01'),
(231, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=logout', '2019-10-14 09:31:02'),
(232, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=viewgame&gameid=1', '2019-10-14 09:31:07'),
(233, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=logout', '2019-10-14 09:40:44'),
(234, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=showallgames', '2019-10-14 09:40:51'),
(235, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=showallgames', '2019-10-14 09:45:56'),
(236, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 09:51:07'),
(237, 'http://localhost/beatit/test.html', '::1', '98f7g5jbncmgaqa8dpnabumt8e', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 10:01:38'),
(238, 'http://localhost/beatit/test.html', '::1', 'hcoto9c6jqgqvfpvpn9schpj2v', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 11:54:47'),
(239, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-14 11:54:47'),
(240, 'http://localhost/beatit/test.html', '::1', 'slepopmei3glnthuf0ek15cg4k', '/beatit/ws.php?page=gamefieldsel', '2019-10-14 11:54:47'),
(241, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 11:57:14'),
(242, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 12:03:59'),
(243, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:04:03'),
(244, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:05:51'),
(245, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:08:08'),
(246, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:08:25'),
(247, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:08:51'),
(248, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:10:54'),
(249, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 12:11:01'),
(250, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 12:11:04'),
(251, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 12:11:13'),
(252, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:01:17'),
(253, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:01:17'),
(254, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:01:19'),
(255, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:01:36'),
(256, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:01:42'),
(257, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:06:42'),
(258, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:06:47'),
(259, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:08:45'),
(260, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:06'),
(261, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:06'),
(262, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:07'),
(263, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:07'),
(264, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:07'),
(265, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:07'),
(266, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 13:14:37'),
(267, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-14 13:14:45'),
(268, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-14 13:14:51'),
(269, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:14:59'),
(270, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:23:35'),
(271, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:28:21'),
(272, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-14 13:32:57'),
(273, 'http://localhost/beatit/test.html?username=hey&password=hey&firstName=hey&lastName=hey&email=ethanweavers%40outlook.com&form_id=register&submit=Submit', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 13:46:45'),
(274, 'http://localhost/beatit/test.html?username=hey&password=hey&firstName=hey&lastName=hey&email=ethanweavers%40outlook.com&form_id=register&submit=Submit', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-14 18:16:18'),
(275, 'http://localhost/beatit/test.html?username=hey&password=hey&firstName=hey&lastName=hey&email=ethanweavers%40outlook.com&form_id=register&submit=Submit', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-15 08:36:39'),
(276, 'http://localhost/beatit/test.html?username=hey&password=hey&firstName=hey&lastName=hey&email=ethanweavers%40outlook.com&form_id=register&submit=Submit', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 08:58:18'),
(277, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 09:43:31'),
(278, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-15 09:53:58'),
(279, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-15 09:54:09'),
(280, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-15 09:54:11'),
(281, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 09:54:32'),
(282, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-15 09:54:45'),
(283, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-15 09:54:46'),
(284, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-15 09:54:48'),
(285, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 09:55:14'),
(286, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 09:56:31'),
(287, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 09:57:22'),
(288, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 09:57:55'),
(289, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 09:58:11'),
(290, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 09:59:23'),
(291, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 10:00:56'),
(292, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 10:03:17'),
(293, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 10:08:26'),
(294, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 10:29:59'),
(295, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=logout', '2019-10-15 10:34:54'),
(296, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 10:35:00'),
(297, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-15 10:41:39'),
(298, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-15 10:42:39'),
(299, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php', '2019-10-15 10:56:39'),
(300, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=viewrequestedgames', '2019-10-15 11:03:45'),
(301, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 11:03:54'),
(302, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 11:05:07'),
(303, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 11:06:23'),
(304, 'http://localhost/beatit/test.html', '::1', '56la6fhrv6i3dn6jboj43dgvpg', '/beatit/ws.php?page=showallgames', '2019-10-15 11:08:44'),
(305, 'http://localhost/beatit/test.html', '::1', '5o3nlh7udlpktl67iat6pot2l0', '/beatit/ws.php?page=gamefieldsel', '2019-10-18 17:31:46'),
(306, 'http://localhost/beatit/test.html', '::1', 'bvntjgs8r0ter0eoauh7cl8e0e', '/beatit/ws.php?page=viewrequestedgames', '2019-10-18 17:31:46'),
(307, 'http://localhost/beatit/test.html', '::1', '3n42lct3f2i39h482b1e5jsk02', '/beatit/ws.php?page=showallgames', '2019-10-18 17:31:46'),
(308, 'http://localhost/beatitethanweavers/test.html', '::1', '3n42lct3f2i39h482b1e5jsk02', '/beatitethanweavers/ws.php?page=viewrequestedgames', '2019-10-18 17:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `loginID` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `accessrights` varchar(255) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`loginID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginID`, `username`, `password`, `accessrights`) VALUES
(1, 'test', 'test', 'test'),
(4, 'test', '$2y$10$/KbT6TxTMPt6N/QDgO0pb.x1uswAJwUhvkxij2eKeucP4jUUZSHCO', 'user'),
(5, 'test', '$2y$10$vpt4e0BSNiTb6uoMYHctl.DQkfA7dmml.dd12nGM1AMycITB.SeBG', 'user'),
(7, 'help', '$2y$10$w7KbpvL4D0V0GQKhDuU6kOPAvEx1wlFhGfhf6LR8HJ/maqdRMODBW', 'user'),
(8, 'beep', '$2y$10$3cIDZcCaSKWkMaX309X8iuxwrNDFSr.tVu.yRNo8EQ7C2iSzM91Q2', 'user'),
(9, 'lol', '$2y$10$yW.4vsES53cF1W4prlkpiOJtdxU/kB6OfEQ9ylEu8VxKcWMiEH3nW', 'user'),
(10, 'lol', '$2y$10$.qtuKkwjmp/BFEhq6..bBuudh4mtDu2azeT0GSmLVoU4ogMdjHEV2', 'user'),
(11, 'ethan', '$2y$10$qE/.g3umWq504.BQVX9Jq.7KMHvU7KOd67qrcqMXAK1uRaldeFji.', 'user'),
(12, 'eth', '$2y$10$SDi2ofOJob9RHH8EI2ynRuEE9tnj2FJY33ldHcRxCnsj/Rj8CR6ZW', 'user'),
(13, 'Admin', '$2y$10$qlNw6QS6qnRfXYTGUuxepOxjitBdxbhYVyQtgiLT7D6pCFVsB.M8m', 'user'),
(14, 'ethan', '$2y$10$0BTtIuRBVObCrX7p4/y7xeTSAc6.rGEjVA81mYC3s3OVZQUi.D516', 'user'),
(15, 'Deadt1', '$2y$10$MGhuvFbgfx2xP2hUZe7Se.YibKq2eOpp9QzzUoCz00PWXXPNp3oB6', 'user'),
(16, 'Deadt1', '$2y$10$gKobOdzJ/.dmSrOfOhbsde6.h0xVCbSEsMVB/TJORHz3uRukFFpku', 'user'),
(17, 'Dead', '$2y$10$HOHS4thhZ4mVkOImv2zt1.wq8rfwSDiEYlSsagp.e8iSEqd73ymna', 'user'),
(18, 'Dead', '$2y$10$FLLH0ffnjA6jw6IVQSv3F.ie25pcoG2SSzC1zvRcx24vZuKLK9Q2G', 'user'),
(19, 'Dead', '$2y$10$ngkZfImMjIRYtV8IPP5r1.Szj9nn.0uMzadVULPWRgG3xRFcd5C7S', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
CREATE TABLE IF NOT EXISTS `submissions` (
  `subID` int(10) NOT NULL AUTO_INCREMENT,
  `completehrs` int(10) DEFAULT NULL,
  `speedrunhrs` int(10) DEFAULT NULL,
  `mainhrs` int(10) DEFAULT NULL,
  `gameID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`subID`),
  KEY `fk_subgame` (`gameID`),
  KEY `fk_subuser` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`subID`, `completehrs`, `speedrunhrs`, `mainhrs`, `gameID`, `userID`) VALUES
(8, 10, 10, 10, 1, 6),
(9, 10, 10, 10, 1, 6),
(10, 10, 10, 10, 1, 6),
(11, 10, 10, 10, 1, 6),
(12, 10, 1, 5, 2, 1),
(13, 250, 10, 50, 3, 1),
(15, 100, 5, 45, 4, 6),
(16, 50, 2, 20, 1, 6),
(17, 7, 1, 5, 5, 6),
(18, 50, 3, 15, 1, 6),
(19, 65, 6, 24, 1, 11),
(20, 150, 9, 67, 3, 11),
(21, 150, 9, 67, 3, 11),
(22, 150, 9, 67, 3, 11),
(23, 200, 20, 90, 3, 11),
(24, 200, 20, 90, 3, 11),
(25, 200, 20, 90, 3, 11),
(26, 200, 20, 90, 3, 11),
(27, 200, 20, 90, 3, 11),
(28, 200, 20, 90, 3, 11),
(29, 200, 20, 90, 3, 11),
(30, 10, 1, 2, 2, 11),
(31, 70, 4, 35, 5, 11),
(32, 70, 4, 35, 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loginID` int(10) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `fk_logIn` (`loginID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `email`, `loginID`) VALUES
(1, 'Ethan', 'Weavers', 'ethanweavers@outlook.com', 1),
(3, 'test', 'test', 'test', 4),
(4, 'test', 'test', 'test', 5),
(5, 'help', 'help', 'help', 7),
(6, 'Ethan', 'Weavers', 'ethan', 8),
(7, 'lol', 'lol', 'ethanw', 9),
(8, 'lol', 'lol', 'lol@lol.com', 10),
(9, 'ethan', 'ethan', 'ethanweavers@outlook.com', 11),
(10, 'eth', 'eth', 'ethanweavers@outlook.com', 12),
(11, 'Ethan', 'Weavers', 'ethanweavers@outlook.com', 13),
(12, 'Ethan', 'Weavers', 'ethanweavers@outlook.com', 14),
(13, 'Ethan', 'Weavers', 'ethan.cooldude@hotmail.com', 15),
(14, 'Ethan', 'Weavers', 'ethan.cooldude@hotmail.com', 16),
(15, 'hey', 'hey', 'ethanweavers@outlook.com', 17),
(16, 'hey', 'hey', 'ethanweavers@outlook.com', 18),
(17, 'Ethan', 'Weavers', 'hey@lol.com', 19);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gamereqs`
--
ALTER TABLE `gamereqs`
  ADD CONSTRAINT `fk_gamerequid` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `fk_subgame` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_subuser` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_logIn` FOREIGN KEY (`loginID`) REFERENCES `login` (`loginID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
