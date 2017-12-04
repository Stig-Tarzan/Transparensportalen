-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 04 dec 2017 kl 16:39
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
-- Tabellstruktur `attribute-orgs-sites`
--

CREATE TABLE `attribute-orgs-sites` (
  `orgID` int(11) NOT NULL,
  `attributeID` int(11) NOT NULL,
  `siteID` int(11) NOT NULL,
  `attributeData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `attributes`
--

CREATE TABLE `attributes` (
  `attributeID` int(11) NOT NULL,
  `subCatID` int(11) NOT NULL,
  `griCatID` int(11) NOT NULL,
  `griDesc` text NOT NULL,
  `griNo` text NOT NULL,
  `griKat` text NOT NULL,
  `griName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `attributes`
--

INSERT INTO `attributes` (`attributeID`, `subCatID`, `griCatID`, `griDesc`, `griNo`, `griKat`, `griName`) VALUES
(1, 1, 1, 'Surface water withdrawn, including water from wetlands, rivers, lakes, and oceans', '301-1-a-i', 'environmental', 'Surface water withdrawn'),
(2, 1, 1, 'Ground water withdrawn', '301-1-a-ii', 'environmental', 'Ground water withdrawn'),
(3, 1, 1, 'Rainwater collected directly and stored by the organization', '301-1-a-iii', 'environmental', 'Rainwater collected'),
(4, 1, 1, 'Waste water withdrawn from another organization', '301-1-a-iv', 'environmental', 'Waste water withdrawn'),
(5, 1, 1, 'Withdrawn municipal water supplies or other public or private water utilities.', '301-1-a-v', 'environmental', 'Withdrawn municipal water'),
(6, 1, 1, 'Standards, methodologies, and assumptions used in: 301-1-a-i, 301-1-a-ii, 301-1-a-iii, 301-1-a-iv, 301-1-a-v', '301-1-b', 'environmental', 'Water specs'),
(7, 1, 1, 'Total volume of water recycled and reused by the organization', '303-3-a', 'environmental', 'Total volume of water recycled '),
(8, 1, 1, 'Total volume of water recycled and reused as a percentage of the total water withdrawal\nas specified in Disclosure 303-1', '303-3-b', 'environmental', 'Precentage of water recycled'),
(9, 1, 1, 'Standards, methodologies, and assumptions used in: 303-3-a, 303-3-b', '303-3-c', 'environmental', 'Water recycle specs'),
(10, 1, 1, 'Geographic location (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-i', 'environmental', 'Sites in/adjecent to protected areas'),
(11, 1, 1, 'Subsurface and underground land that may be owned, leased, or managed\nby the organization (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-ii', 'environmental', 'Subsurface Sites in/adjecent to protected areas'),
(12, 1, 1, 'Position in relation to the protected area (in the area, adjacent to, or containing\nportions of the protected area) or the high biodiversity value area outside\nprotected areas (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-iii', 'environmental', 'Position in relation to the protected area');

-- --------------------------------------------------------

--
-- Tabellstruktur `cat`
--

CREATE TABLE `cat` (
  `griCatID` int(11) NOT NULL,
  `griCatName` text NOT NULL,
  `griCatDesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `cat`
--

INSERT INTO `cat` (`griCatID`, `griCatName`, `griCatDesc`) VALUES
(1, 'Environmental', ''),
(2, 'Social', ''),
(3, 'Economic', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `comment`
--

CREATE TABLE `comment` (
  `commentID` int(11) NOT NULL,
  `trailID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `comment`
--

INSERT INTO `comment` (`commentID`, `trailID`, `userID`, `content`, `date`) VALUES
(69, 43, 60, 'Det hÃ¤r Ã¤r min favorit!', '2017-05-28'),
(72, 44, 60, 'Det hÃ¤r var en riktigt snurrig en!', '2017-05-28'),
(73, 43, 62, 'Det hÃ¤r var inte mycket fÃ¶r vÃ¤rlden...', '2017-05-28'),
(91, 48, 62, 'Ett antal broar finns i omrÃ¥det samt en nÃ¶dtelefon i Mikkastugan, belÃ¤gen nÃ¤ra Ruotesvagges mynning mot Ã¶vre Rapadalen.', '2017-05-30'),
(108, 43, 60, 'Hej, fin led ', '2017-05-31');

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

-- --------------------------------------------------------

--
-- Tabellstruktur `site`
--

CREATE TABLE `site` (
  `siteID` int(11) NOT NULL,
  `orgID` int(11) NOT NULL,
  `siteName` text NOT NULL,
  `street` text NOT NULL,
  `zipcode` text NOT NULL,
  `city` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `site`
--

INSERT INTO `site` (`siteID`, `orgID`, `siteName`, `street`, `zipcode`, `city`) VALUES
(1, 54, 'Hej', '123', '123', '123'),
(2, 54, 'ehj', '123', '123', 'USDSGS'),
(3, 54, 'SAGAG', '123', '123', '12421Â§512'),
(4, 56, 'hem', 'bot', '123132', 'aaa'),
(5, 57, 'Site1', 'asdasd', 'asdasd', 'asdasd'),
(6, 54, 'site3', 'aaa123', 'aasda', 'aaaaaaa'),
(7, 54, 'site56', '1112asd', 'aaad', 'ddddd'),
(8, 60, 'asd', 'asd', 'asd', 'asd'),
(9, 60, '', '', '', ''),
(10, 61, 'kontoret', 'storg 1', '123 45', 'orten');

-- --------------------------------------------------------

--
-- Tabellstruktur `sub_cat`
--

CREATE TABLE `sub_cat` (
  `subCatID` int(11) NOT NULL,
  `subCatName` text NOT NULL,
  `subCatDesc` text NOT NULL,
  `griCatID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `sub_cat`
--

INSERT INTO `sub_cat` (`subCatID`, `subCatName`, `subCatDesc`, `griCatID`) VALUES
(1, 'water', 'Water use, water recyled', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `salt` text,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `dateOfBirth` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `postalCity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `user`
--

INSERT INTO `user` (`userID`, `admin`, `userName`, `email`, `password`, `salt`, `firstName`, `lastName`, `dateOfBirth`, `adress`, `postalCode`, `postalCity`) VALUES
(60, 0, 'Stig', 'john.f.almqvist@gmail.com', 'e7ff7e59cdc77960721b4b6aa62e54f7e4ce0e9a', '07e13001f2ab40711cdbca', '0', 'hanke', '1911-01-28', 'VÃ¤ktargatan 26', '75422', 'Uppsala'),
(62, 0, 'Jan-Emanuel', 'Janne61@gmail.com', '1f831c9452f8c7852558b2cec79b14f045ece615', '3ed2347ddacbb088c9419a', '0', 'Evert', '1961-01-21', 'Hans', '74249', 'StrÃ¤ngnÃ¤s'),
(63, 0, 'Hanky', 'hank@gmail.se', '21db5d60ddc66919711035e197867513176617e2', 'a15c8eee9f0fc3bc818be2', '0', 'henkeland@gmail.se', '1991-01-28', 'VÃ¤ktargatan 25', '75422', 'Uppsala'),
(76, 0, 'henk', 'henk@gag.se', '3e3796873726f456713d2268c9661c1f9984939e', '12864b4a55ae90afdf9401', 'ralf', 'raffe', '2015-11-01', 'asd 1', '85212', 'uppsala'),
(77, 1, 'admin', 'asdasd@asds.se', 'c8f3d8f139d56d11dd489807babef8b721196fcb', '0cde2d058064f2a9853a9c', 'admin', 'admin', '2015-11-11', 'asd 1', '85252', 'uppsala'),
(78, 0, 'transparent rock', 'john.f.almqvist@gmail.com', '767e67927a232baa7184dabdceaedc40ace905e0', 'fc0f9b8b11ba9eea1f8d1d', 'John', 'Almqvist', '1991-01-28', 'VÃ¤ktargatan 26A', '75422', 'UPPSALA');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `attribute-orgs-sites`
--
ALTER TABLE `attribute-orgs-sites`
  ADD KEY `orgID` (`orgID`),
  ADD KEY `attributeID` (`attributeID`),
  ADD KEY `siteID` (`siteID`);

--
-- Index för tabell `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attributeID`),
  ADD KEY `subCatID` (`subCatID`),
  ADD KEY `griCatID` (`griCatID`);

--
-- Index för tabell `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`griCatID`);

--
-- Index för tabell `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `trailID` (`trailID`),
  ADD KEY `userID` (`userID`);

--
-- Index för tabell `org_profile`
--
ALTER TABLE `org_profile`
  ADD PRIMARY KEY (`orgID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `trailID` (`orgID`);

--
-- Index för tabell `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`siteID`),
  ADD KEY `orgID` (`orgID`);

--
-- Index för tabell `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`subCatID`),
  ADD KEY `griCatID` (`griCatID`);

--
-- Index för tabell `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attributeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT för tabell `cat`
--
ALTER TABLE `cat`
  MODIFY `griCatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT för tabell `comment`
--
ALTER TABLE `comment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT för tabell `org_profile`
--
ALTER TABLE `org_profile`
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT för tabell `site`
--
ALTER TABLE `site`
  MODIFY `siteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT för tabell `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `subCatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `attribute-orgs-sites`
--
ALTER TABLE `attribute-orgs-sites`
  ADD CONSTRAINT `attribute-orgs-sites_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `org_profile` (`orgID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attribute-orgs-sites_ibfk_2` FOREIGN KEY (`attributeID`) REFERENCES `attributes` (`attributeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`subCatID`) REFERENCES `sub_cat` (`subCatID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attributes_ibfk_2` FOREIGN KEY (`griCatID`) REFERENCES `cat` (`griCatID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `org_profile`
--
ALTER TABLE `org_profile`
  ADD CONSTRAINT `org_profile_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `site_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `org_profile` (`orgID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD CONSTRAINT `sub_cat_ibfk_1` FOREIGN KEY (`griCatID`) REFERENCES `cat` (`griCatID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
