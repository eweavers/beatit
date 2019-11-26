-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 26, 2019 at 12:14 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_58DF0651F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `username`, `roles`, `password`) VALUES
(2, 'admin', '{\"roles\": \"ROLE_ADMIN\"}', '$argon2i$v=19$m=65536,t=4,p=1$ZWxOMUF1UVNYWDdzcGVsNw$LIo2r/m2SMbuuLx0PIHJLHx1FJOuAtKe070tDOSfv9w');

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
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameRID`),
  KEY `fk_gamerequid` (`userID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `gameID` int(10) NOT NULL AUTO_INCREMENT,
  `gametitle` varchar(60) NOT NULL,
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
(1, 'Hollow Knight', 'Multi-Platform', 'Hollow Knight is a challenging, beautiful action adventure game set in the vast, inter-connected underground kingdom of Hallownest. A 2D action game with an emphasis on skill and exploration, Hollow Knight has you fighting a fearsome host of deadly creatures, avoiding intricate traps and solving ancient mysteries as you make your own way through fungal wastes, forests of bone, and ruined underground cities.', '24.02.2017', 'Uploads/hollowknight.jpg'),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`logid`, `referrer`, `sourceip`, `sessionid`, `requestedurl`, `timestamp`) VALUES
(1, 'https://localhost/beatitethanweavers/test.html', '::1', 't7t2cg1dtbumpo9r6mbqsbakn7', '/beatitethanweavers/ws.php', '2019-11-26 10:11:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginID`, `username`, `password`, `accessrights`) VALUES
(13, 'Admin', '$2y$10$qlNw6QS6qnRfXYTGUuxepOxjitBdxbhYVyQtgiLT7D6pCFVsB.M8m', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191028020217', '2019-10-28 02:03:02'),
('20191028025145', '2019-10-29 00:27:43'),
('20191028231701', '2019-10-29 01:23:49'),
('20191029002655', '2019-10-29 01:25:29'),
('20191029010829', '2019-10-29 01:34:34'),
('20191029010926', '2019-10-29 01:34:34'),
('20191029011113', '2019-10-29 01:34:34'),
('20191029011803', '2019-10-29 02:21:01'),
('20191029013423', '2019-10-29 02:22:59'),
('20191029013612', '2019-10-29 02:35:10'),
('20191029021748', '2019-10-29 02:40:50'),
('20191029023636', '2019-10-29 02:41:42'),
('20191029023811', '2019-10-29 02:41:43'),
('20191119013636', '2019-11-25 01:52:50'),
('20191124235514', '2019-11-25 01:55:09');

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
  `gameID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`subID`),
  KEY `fk_subuser` (`userID`) USING BTREE,
  KEY `fk_subgame` (`gameID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`subID`, `completehrs`, `speedrunhrs`, `mainhrs`, `gameID`, `userID`) VALUES
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
(32, 70, 4, 35, 5, 11),
(33, 1, 1, 11, 3, NULL),
(34, 1, 1, 11, 3, NULL),
(35, 1, 1, 1, 1, NULL),
(36, 1, 1, 1, 1, NULL),
(37, 11, 1, 7, 2, 11),
(38, 10, 1, 5, 2, 11),
(39, 30, 4, 20, 1, 11),
(40, 1, 1, 1, 1, 11),
(41, 1, 1, 1, 1, 11),
(42, 100, 15, 40, 5, 11);

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
  `loginID` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `fk_logIn` (`loginID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `email`, `loginID`) VALUES
(11, 'Ethan', 'Weavers', 'ethanweavers@outlook.com', 13);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gamereqs`
--
ALTER TABLE `gamereqs`
  ADD CONSTRAINT `FK_777DCCE5FD86D04` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `FK_3F6169F75FD86D04` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_3F6169F7D73B976C` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_1483A5E957A7C05B` FOREIGN KEY (`loginID`) REFERENCES `login` (`loginID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
