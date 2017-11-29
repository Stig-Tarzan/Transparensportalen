-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 12:52 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transparensportalen`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute-org-site`
--

CREATE TABLE `attribute-org-site` (
  `orgID` int(11) NOT NULL,
  `attributeID` int(11) NOT NULL,
  `siteID` int(11) NOT NULL,
  `attributeData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attributeID` int(11) NOT NULL,
  `griName` text NOT NULL,
  `griNo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attributeID`, `griName`, `griNo`) VALUES
(1, 'Surface water withdrawn, including water from wetlands, rivers, lakes, and oceans', '301-1-a-i'),
(2, 'Ground water withdrawn', '301-1-a-ii'),
(3, 'Rainwater collected directly and stored by the organization', '301-1-a-iii'),
(4, 'Waste water withdrawn from another organization', '301-1-a-iv'),
(5, 'Withdrawn municipal water supplies or other public or private water utilities.', '301-1-a-v'),
(6, 'Standards, methodologies, and assumptions used in: 301-1-a-i, 301-1-a-ii, 301-1-a-iii, 301-1-a-iv, 301-1-a-v', '301-1-b'),
(7, 'Total volume of water recycled and reused by the organization', '303-3-a'),
(8, 'Total volume of water recycled and reused as a percentage of the total water withdrawal\r\nas specified in Disclosure 303-1', '303-3-b'),
(9, 'Standards, methodologies, and assumptions used in: 303-3-a, 303-3-b', '303-3-c'),
(10, 'Geographic location (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-i'),
(11, 'Subsurface and underground land that may be owned, leased, or managed\nby the organization (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-ii'),
(12, 'Position in relation to the protected area (in the area, adjacent to, or containing\nportions of the protected area) or the high biodiversity value area outside\nprotected areas (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-iii');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentID` int(11) NOT NULL,
  `trailID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentID`, `trailID`, `userID`, `content`, `date`) VALUES
(69, 43, 60, 'Det hÃ¤r Ã¤r min favorit!', '2017-05-28'),
(72, 44, 60, 'Det hÃ¤r var en riktigt snurrig en!', '2017-05-28'),
(73, 43, 62, 'Det hÃ¤r var inte mycket fÃ¶r vÃ¤rlden...', '2017-05-28'),
(91, 48, 62, 'Ett antal broar finns i omrÃ¥det samt en nÃ¶dtelefon i Mikkastugan, belÃ¤gen nÃ¤ra Ruotesvagges mynning mot Ã¶vre Rapadalen.', '2017-05-30'),
(108, 43, 60, 'Hej, fin led ', '2017-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `org_profile`
--

CREATE TABLE `org_profile` (
  `orgID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orgName` text NOT NULL,
  `creationDate` date NOT NULL,
  `orgInfoText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_profile`
--

INSERT INTO `org_profile` (`orgID`, `userID`, `orgName`, `creationDate`, `orgInfoText`) VALUES
(43, 60, 'Led runt Ã–ningby', '2017-05-28', 'HÃ¤r tar vi en tur runt byn, Ã–ningeby'),
(44, 62, 'Henriksfaran', '2017-05-28', 'En krÃ¤vande tur fÃ¶r de erfarna. Ta med rikligt med nÃ¤ring och dryck!'),
(48, 60, 'Sarek', '2017-05-30', 'Sarek Ã¤r en av fÃ¥ nationalparker i Sverige dÃ¤r det inte finns nÃ¥gra bekvÃ¤mligheter fÃ¶r besÃ¶karna. Det finns inga stugor, spÃ¤nger eller markerade leder. Om du som vandrare mÃ¶ter renar Ã¤r det viktigt att inte skrÃ¤mma djuren. SÃ¤tt dig och vÃ¤nta pÃ¥ att renarna passerar eller gÃ¥ runt de betande djuren fÃ¶r att inte stÃ¶ra.'),
(51, 60, 'Muddus nationalpark', '2017-05-30', 'En tur runt muddus nationalpark.\n\nMuddus Ã¤r en nationalpark i Lappland, Sverige. Den ligger sydvÃ¤st om GÃ¤llivare tÃ¤tort; stÃ¶rre delen av Muddus ligger i GÃ¤llivare kommun och resterande del i Jokkmokks kommun.');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `siteID` int(11) NOT NULL,
  `orgID` int(11) NOT NULL,
  `siteName` text NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `admin`, `userName`, `email`, `password`, `salt`, `firstName`, `lastName`, `dateOfBirth`, `adress`, `postalCode`, `postalCity`) VALUES
(60, 0, 'Stig', 'john.f.almqvist@gmail.com', 'e7ff7e59cdc77960721b4b6aa62e54f7e4ce0e9a', '07e13001f2ab40711cdbca', '0', 'hanke', '1911-01-28', 'VÃ¤ktargatan 26', '75422', 'Uppsala'),
(62, 0, 'Jan-Emanuel', 'Janne61@gmail.com', '1f831c9452f8c7852558b2cec79b14f045ece615', '3ed2347ddacbb088c9419a', '0', 'Evert', '1961-01-21', 'Hans', '74249', 'StrÃ¤ngnÃ¤s'),
(63, 0, 'Hanky', 'hank@gmail.se', '21db5d60ddc66919711035e197867513176617e2', 'a15c8eee9f0fc3bc818be2', '0', 'henkeland@gmail.se', '1991-01-28', 'VÃ¤ktargatan 25', '75422', 'Uppsala'),
(76, 0, 'henk', 'henk@gag.se', '3e3796873726f456713d2268c9661c1f9984939e', '12864b4a55ae90afdf9401', 'ralf', 'raffe', '2015-11-01', 'asd 1', '85212', 'uppsala'),
(77, 0, 'admin', 'asdasd@asds.se', 'c8f3d8f139d56d11dd489807babef8b721196fcb', '0cde2d058064f2a9853a9c', 'admin', 'admin', '2015-11-11', 'asd 1', '85252', 'uppsala'),
(78, 0, 'john.f.almqvist@gmail.com', 'john.f.almqvist@gmail.com', '767e67927a232baa7184dabdceaedc40ace905e0', 'fc0f9b8b11ba9eea1f8d1d', 'John', 'Almqvist', '1991-01-28', 'VÃ¤ktargatan 26A', '75422', 'UPPSALA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute-org-site`
--
ALTER TABLE `attribute-org-site`
  ADD KEY `orgID` (`orgID`),
  ADD KEY `attributeID` (`attributeID`),
  ADD KEY `siteID` (`siteID`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attributeID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `trailID` (`trailID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `org_profile`
--
ALTER TABLE `org_profile`
  ADD PRIMARY KEY (`orgID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `trailID` (`orgID`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`siteID`),
  ADD KEY `orgID` (`orgID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attributeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `org_profile`
--
ALTER TABLE `org_profile`
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `siteID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute-org-site`
--
ALTER TABLE `attribute-org-site`
  ADD CONSTRAINT `attribute-org-site_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `org_profile` (`orgID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attribute-org-site_ibfk_2` FOREIGN KEY (`attributeID`) REFERENCES `attributes` (`attributeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `org_profile`
--
ALTER TABLE `org_profile`
  ADD CONSTRAINT `org_profile_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `site_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `org_profile` (`orgID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
