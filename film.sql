-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Värd: localhost
-- Tid vid skapande: 31 jan 2019 kl 14:25
-- Serverversion: 5.6.37
-- PHP-version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `film`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `ID` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `productionYear` varchar(250) NOT NULL,
  `length` varchar(250) NOT NULL,
  `genre` varchar(250) NOT NULL,
  `ageRestricton` varchar(250) NOT NULL,
  `language` varchar(250) NOT NULL,
  `subtitles` varchar(250) NOT NULL,
  `director` varchar(250) NOT NULL,
  `actors` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `images` varchar(250) NOT NULL,
  `youtubeTrailers` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `movies`
--

INSERT INTO `movies` (`ID`, `title`, `productionYear`, `length`, `genre`, `ageRestricton`, `language`, `subtitles`, `director`, `actors`, `description`, `images`, `youtubeTrailers`) VALUES
(1, 'Glass', '2019', '2 tim 9 min', 'Drama, Sci-Fi', '15', 'eng', 'swe', 'M. Night Shyamalan', 'James McAvoy, Anya Taylor-Joy, Bruce Willis, Samuel L. Jackson, Spencer Treat Clark, Charlayne Woodard, Sarah Paulson', 'Glass tar vid där Split slutade och Dunn jagar nu Crumbs övernaturliga alter ego The Beast i en allt intensivare jakt. I skuggorna väntar Price, som sitter inne med avgörande hemligheter rörande de bägge männen. Från Unbreakable ser vi återigen Bruce', 'https://i.pinimg.com/originals/c2/17/a7/c217a73e2cc8edb088f4d6147c58cf1b.jpg', '95ghQs5AmNk'),
(2, 'Bohemian Rhapsody', '2019', '2 tim 14 min', 'Biografi, Drama, Musik', '15', 'eng', 'swe', 'Bryan Singer', 'Rami Malek, Gwilym Lee, Ben Hardy, Joseph Mazzello, Aidan Gillen, Lucy Boynton, Tom Hollander, Allen Leech', 'Bohemian Rhapsody är en hyllning till Queen, deras musik och enastående sångare Freddie Mercury, som trotsade stereotyperna, rev upp konventionerna och blev en av världens mest älskade underhållare. Filmen följer bandets explosionsartade uppgång geno', 'http://karlskogabio.nu/wp-content/uploads/2018/10/Bohemian-Rhapsody.jpg', 'mP0VHJYFOAU'),
(3, 'Bamse och dunderklockan', '2018', '1 tim 3 min', 'Animerat, Barn', '3', 'swe', 'swe', 'Christian Ryltenius', 'Bamse', 'Att bara vara sig själv räcker mycket längre än man tror. Det är något som även Reinard Räv skulle må bra av att förstå. Följ med Bamse och hans vänner på ett nytt äventyr både på land och till havs.', 'https://mz-prod.s3.amazonaws.com/uploads/photo/file/343026/small_12cd0573b79c8284bdc59b430898eb64-bamse-dunder.jpg', 'wUW3BA_2fLY'),
(4, 'Underdog', '2019', '1 tim 51 min', 'Action, Sport', '15', 'Pol', 'Swe', 'Maciej Kawalski', 'Eryk Lubos, Mamed Khalidov, Aleksandra Poplawska, Tomasz Wlosok, Janusz Chabior, Emma Giegzno, Jaroslaw Boberek', 'Boris \\"Kos\\" Kosinski är en topp MMA-kämpe. I Kos största match i sin karriär möter han rivalen, Denim Takaev, och gör ett misstag som förstör hela hans karriär. Han förlorar allting. Detta misslyckande ger honom genom en serie upp- och nedgångar, m', 'https://biletyna.pl/file/get/id/33604', 'vBGXu2JqeR4'),
(5, 'The Favourite', '2019', '1 tim 59 min', 'Biografi, Komedi, Drama', '11', 'Eng', 'Swe', 'Yorgos Lanthimos', 'Olivia Colman, Emma Stone, Rachel Weisz', 'Tidigt 1700-tal. England är i krig med Frankrike. Den bräckliga Queen Anne sitter på tronen medan vännen Lady Sarah styr landet samtidigt som hon tampas med Annes sviktande hälsa och kraftiga humörsvängningar. När den nya tjänaren Abigail anländer ta', 'https://m.media-amazon.com/images/M/MV5BOTA1MTY0MDYxMF5BMl5BanBnXkFtZTgwNzY5MTk2NjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', 'SYb-wkehT1g');

-- --------------------------------------------------------

--
-- Tabellstruktur `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `plats` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pris` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumpning av Data i tabell `orders`
--

INSERT INTO `orders` (`ID`, `created`, `plats`, `titel`, `pris`) VALUES
(1, '2019-01-31 12:31:11', '21', 'Glass', '85'),
(2, '2019-01-31 12:33:36', '45', 'Glass', '75'),
(3, '2019-01-31 12:33:37', '45', 'Glass', '75');

-- --------------------------------------------------------

--
-- Tabellstruktur `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `ID` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `Salon` varchar(250) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `schedule`
--

INSERT INTO `schedule` (`ID`, `Date`, `Salon`, `movieID`) VALUES
(9, '2019-02-01 20:00:00', 'lilla', 1),
(10, '2019-02-01 16:00:00', 'stora', 2),
(11, '2019-02-02 23:00:00', 'lilla', 3),
(12, '2019-02-02 20:00:00', 'stora', 4),
(13, '2019-02-03 23:00:00', 'lilla', 5),
(14, '2019-02-02 18:00:00', 'lilla', 1),
(15, '2019-02-02 18:00:00', 'lilla', 2),
(16, '2019-02-03 18:00:00', 'stora', 3),
(17, '2019-02-03 15:00:00', 'lilla', 1),
(18, '2019-02-01 18:00:00', 'lilla', 5),
(19, '2019-02-04 16:30:00', 'lilla', 1),
(20, '2019-02-04 17:00:00', 'stora', 3),
(21, '2019-02-04 22:00:00', 'lilla', 4),
(22, '2019-02-05 15:30:00', 'stora', 2),
(23, '2019-02-05 18:00:00', 'lilla', 3),
(24, '2019-02-05 21:00:00', 'stora', 4),
(25, '2019-02-06 16:30:00', 'stora', 1),
(26, '2019-02-06 19:00:00', 'stora', 3),
(27, '2019-02-06 22:00:00', 'lilla', 5),
(28, '2019-02-07 12:00:00', 'lilla', 3),
(29, '2019-02-07 15:00:00', 'lilla', 5),
(30, '2019-02-07 20:30:00', 'stora', 1),
(31, '2019-02-08 16:30:00', 'lilla', 2),
(32, '2019-02-08 18:00:00', 'stora', 4),
(33, '2019-02-08 21:00:00', 'lilla', 5),
(34, '2019-02-09 15:30:00', 'lilla', 2),
(35, '2019-02-09 17:30:00', 'stora', 3),
(36, '2019-02-09 22:00:00', 'stora', 5),
(37, '2019-02-10 17:00:00', 'lilla', 1),
(38, '2019-02-10 19:30:00', 'stora', 2),
(39, '2019-02-10 22:00:00', 'lilla', 3),
(40, '2019-02-11 18:00:00', 'stora', 4),
(41, '2019-02-11 20:00:00', 'lilla', 5),
(42, '2019-02-11 22:00:00', 'stora', 2),
(43, '2019-02-12 18:00:00', 'lilla', 1),
(44, '2019-02-12 20:00:00', 'stora', 3),
(45, '2019-02-12 22:00:00', 'lilla', 5),
(46, '2019-02-13 18:00:00', 'stora', 2),
(47, '2019-02-13 20:00:00', 'lilla', 3),
(48, '2019-02-13 22:00:00', 'stora', 1),
(49, '2019-02-14 17:00:00', 'stora', 5),
(50, '2019-02-14 21:00:00', 'lilla', 3),
(51, '2019-02-14 22:30:00', 'stora', 2),
(52, '2019-02-15 15:00:00', 'lilla', 1),
(53, '2019-02-15 17:30:00', 'stora', 4),
(54, '2019-02-15 21:00:00', 'lilla', 5),
(55, '2019-02-16 18:00:00', 'stora', 1),
(56, '2019-02-16 19:30:00', 'lilla', 5),
(57, '2019-02-16 22:00:00', 'stora', 3),
(58, '2019-02-09 17:30:00', 'lilla', 2),
(59, '2019-02-09 19:00:00', 'stora', 4),
(60, '2019-02-09 21:00:00', 'lilla', 1),
(61, '2019-02-10 17:00:00', 'lilla', 5),
(62, '2019-02-10 19:30:00', 'stora', 1),
(63, '2019-02-10 21:30:00', 'lilla', 4),
(64, '2019-02-11 14:30:00', 'lilla', 2),
(65, '2019-02-11 17:00:00', 'lilla', 1),
(66, '2019-02-11 20:30:00', 'stora', 5),
(67, '2019-02-12 18:00:00', 'lilla', 2),
(68, '2019-02-12 20:30:00', 'stora', 3),
(69, '2019-02-13 18:30:00', 'lilla', 1),
(70, '2019-02-13 20:00:00', 'stora', 3),
(71, '2019-02-13 21:30:00', 'lilla', 5),
(72, '2019-02-14 18:30:00', 'stora', 1),
(73, '2019-02-14 20:00:00', 'llla', 3),
(74, '2019-02-14 22:00:00', 'lilla', 4),
(75, '2019-02-15 18:30:00', 'lilla', 1),
(76, '2019-02-15 19:30:00', 'stora', 2),
(77, '2019-02-15 21:30:00', 'lilla', 5),
(78, '2019-02-16 18:30:00', 'lilla', 2),
(79, '2019-02-16 20:00:00', 'stora', 4),
(80, '2019-02-16 21:30:00', 'lilla', 5),
(81, '2019-02-17 18:30:00', 'lilla', 3),
(82, '2019-02-17 20:30:00', 'stora', 2),
(83, '2019-02-17 22:00:00', 'lilla', 4),
(84, '2019-02-18 19:00:00', 'lilla', 1),
(85, '2019-02-18 21:30:00', 'stora', 3),
(86, '2019-02-18 22:30:00', 'lilla', 4),
(87, '2019-02-19 16:30:00', 'lilla', 1),
(88, '2019-02-19 20:00:00', 'lilla', 1),
(89, '2019-02-19 21:30:00', 'stora', 5),
(90, '2019-02-20 18:00:00', 'lilla', 1),
(91, '2019-02-20 19:30:00', 'stora', 2),
(92, '2019-02-20 21:00:00', 'lilla', 4),
(93, '2019-02-12 23:00:00', 'stora', 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '0',
  `lastname` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'k', 'k', 'k@k.com', '$2y$10$pNk6Lsaa.1eWu2yDC4OP7ujW/shUlG3b0GKwd5ILzGAuNk1dx95Be');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `movies`
--
ALTER TABLE `movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT för tabell `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT för tabell `schedule`
--
ALTER TABLE `schedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
