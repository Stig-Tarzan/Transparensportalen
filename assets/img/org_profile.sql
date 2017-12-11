-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 11 dec 2017 kl 15:04
-- Serverversion: 5.7.14
-- PHP-version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `transparensportalen`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `org_profile`
--

CREATE TABLE `org_profile` (
  `orgID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orgNumber` text NOT NULL,
  `orgName` text NOT NULL,
  `orgStreet` text NOT NULL,
  `orgPostNumber` text NOT NULL,
  `orgCity` text NOT NULL,
  `creationDate` date NOT NULL,
  `orgInfoText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `org_profile`
--

INSERT INTO `org_profile` (`orgID`, `userID`, `orgNumber`, `orgName`, `orgStreet`, `orgPostNumber`, `orgCity`, `creationDate`, `orgInfoText`) VALUES
(52, 77, '1231', 'Hej', 'Hej', '123', 'gsa', '2017-11-29', '123fsaasfgsagf'),
(53, 77, '1111', 'Henkes', 'VÃ¤ktargatan', '11111', 'UPPSALA', '2017-11-29', 'Bra fÃ¶retag'),
(54, 77, '11111', 'Johns', 'HJejk', '12313', 'UPPSALA', '2017-11-29', 'Bra skit'),
(55, 77, '11111', 'Henkes', 'hej', '123', '123', '2017-11-29', '123213154adsga'),
(56, 77, '12313311', 'hej', 'aaaaa', 'asdasd', '11111', '2017-11-29', 'asdasd'),
(57, 77, 'asdasd', 'asdaaaaaaa', 'asdasd', 'asdasd', 'asdasd', '2017-11-29', ''),
(58, 77, '11111', 'Hnerik ba', 'hejgatan', '15442', 'uppsala', '2017-11-29', 'asddd'),
(59, 77, '6546512165', 'Helena AB', 'Storgatan 1', '45612', 'Uppsala', '2017-11-29', 'vi sÃ¤ljer bÃ¶cker'),
(60, 77, '', '', '', '', '', '2017-11-29', ''),
(61, 77, '556555-1125', 'LindaAB', 'Stogg. 123', '123 45', 'Stad', '2017-12-04', '111 abbbb');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `org_profile`
--
ALTER TABLE `org_profile`
  ADD PRIMARY KEY (`orgID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `trailID` (`orgID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `org_profile`
--
ALTER TABLE `org_profile`
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `org_profile`
--
ALTER TABLE `org_profile`
  ADD CONSTRAINT `org_profile_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
