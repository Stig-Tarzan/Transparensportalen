-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 13 dec 2017 kl 22:10
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
(7, 1, 1, 'Total volume of water recycled and reused by the organization', '303-3-a', 'environmental', 'Total volume of water recycled '),
(8, 1, 1, 'Total volume of water recycled and reused as a percentage of the total water withdrawal\nas specified in Disclosure 303-1', '303-3-b', 'environmental', 'Precentage of water recycled'),
(10, 1, 1, 'Geographic location (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-i', 'environmental', 'Sites in/adjecent to protected areas'),
(11, 1, 1, 'Subsurface and underground land that may be owned, leased, or managed\nby the organization (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-ii', 'environmental', 'Subsurface Sites in/adjecent to protected areas'),
(12, 1, 1, 'Position in relation to the protected area (in the area, adjacent to, or containing\nportions of the protected area) or the high biodiversity value area outside\nprotected areas (For each operational site owned, leased, managed in, or adjacent to, protected areas and\nareas of high biodiversity value outside protected areas, the following information)', '304-1-a-iii', 'environmental', 'Position in relation to the protected area');

-- --------------------------------------------------------

--
-- Tabellstruktur `attribute_orgs_sites`
--

CREATE TABLE `attribute_orgs_sites` (
  `orgID` int(11) NOT NULL,
  `attributeID` int(11) NOT NULL,
  `siteID` int(11) NOT NULL,
  `attributeData` text NOT NULL,
  `griCatID` int(11) NOT NULL,
  `subCatID` int(11) NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `attribute_orgs_sites`
--

INSERT INTO `attribute_orgs_sites` (`orgID`, `attributeID`, `siteID`, `attributeData`, `griCatID`, `subCatID`, `source`) VALUES
(63, 1, 1, '250 Liter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(63, 2, 1, '652 Liter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(63, 3, 1, '345 Liter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(63, 4, 1, '25 Liter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(66, 1, 1, '956 000 LIter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(66, 2, 1, '679 000 Liter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(66, 3, 1, '2560 LIter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(66, 4, 1, '253 000 Liter', 1, 1, 'HÃ¥llbarhetsrapporten 2016'),
(65, 10, 1, 'Main site', 1, 1, 'HÃ¥llbarhetsrapporten'),
(65, 12, 1, 'Main site is adjacent to Natural reserve', 1, 1, ''),
(65, 1, 1, '265 000 LIter', 1, 1, 'HÃ¥llbarhetsrapporten 2016'),
(65, 2, 1, '2450 Liter', 1, 1, 'Uppsala Vattens utrÃ¤kningar 2016'),
(65, 3, 1, 'None', 1, 1, ''),
(65, 4, 1, 'None', 1, 1, 'HÃ¥llbarhetsrapporten 2014'),
(65, 5, 1, '301 022 Liter', 1, 1, 'HÃ¥llbarhetsrapporten 2017'),
(65, 7, 1, '2500 Liter', 1, 1, 'HÃ¥llbarhetsrapporten'),
(65, 8, 1, '5%', 1, 1, 'HÃ¥llbarhetsrapporten 2016'),
(69, 7, 1, '25 Liter', 1, 1, 'Uppsala Vatten AB rapport 2017'),
(69, 8, 1, '10%', 1, 1, 'Uppsala Vatten AB ');

-- --------------------------------------------------------

--
-- Tabellstruktur `cat`
--

CREATE TABLE `cat` (
  `griCatID` int(11) NOT NULL,
  `griCatName` text NOT NULL,
  `griCatDesc` text NOT NULL,
  `griNo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `cat`
--

INSERT INTO `cat` (`griCatID`, `griCatName`, `griCatDesc`, `griNo`) VALUES
(1, 'Environmental', '', '300'),
(2, 'Social', '', '400'),
(3, 'Economic', '', '200');

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
(63, 79, '545412-22', 'IKEA AB', 'Kungsgatan 1', '144 22', 'STOCKHOLM', '2017-12-13', 'Tillverkar mÃ¶bler och inredning som kunden sjÃ¤lv monterar. '),
(65, 80, '754545-22', 'Norrlands Nation', 'VÃ¤ktargatan 26A', '754 22', 'UPPSALA', '2017-12-13', 'Nationsverksamhet: pub, cafÃ©, restaurang och tillhandahÃ¥llande av studieutrymme.'),
(66, 81, '75454-2', 'Willys AB', 'Kungsgatan 23', '154 22', 'STOCKHOLM', '2017-12-13', 'Dagligvaruhandel.'),
(68, 82, '45448-22', 'ICA', 'Kungsgatan 12', '122 22', 'STOCKHOLM', '2017-12-13', 'Dagligvaruhandel, bankverksamhet och fÃ¶rsÃ¤kringsverksamhet.'),
(69, 83, '5487211-21', 'Myrorna', 'KungsÃ¤ngsgatan 12', '754 22', 'UPPSALA', '2017-12-13', 'Second Hand. FÃ¶rsÃ¤ljning av klÃ¤der, inredning och Ã¶vrigt.');

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

-- --------------------------------------------------------

--
-- Tabellstruktur `sub_cat`
--

CREATE TABLE `sub_cat` (
  `subCatID` int(11) NOT NULL,
  `subCatName` text NOT NULL,
  `subCatDesc` text NOT NULL,
  `griCatID` int(11) NOT NULL,
  `griNo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `sub_cat`
--

INSERT INTO `sub_cat` (`subCatID`, `subCatName`, `subCatDesc`, `griCatID`, `griNo`) VALUES
(1, 'Water', 'Water sets out reporting requirements on the topic of water. This Standard\ncan be used by an organization of any size, type, sector or geographic location that\nwants to report on its impacts related to this topic.', 1, '303'),
(2, 'Economic Performance', 'Economic Performance sets out reporting requirements on the topic of\neconomic performance. This Standard can be used by an organization of any size, type,\nsector or geographic location that wants to report on its impacts related to this topic', 3, '201'),
(3, 'Employment', 'Employment sets out reporting requirements on the topic of employment.\nThis Standard can be used by an organization of any size, type, sector or geographic\nlocation that wants to report on its impacts related to this topic.', 2, '401'),
(5, 'Biodiversity', 'Biodiversity sets out reporting requirements on the topic of biodiversity. This\nStandard can be used by an organization of any size, type, sector or geographic location\nthat wants to report on its impacts related to this topic.', 1, '304'),
(6, 'Environmental Compliance', 'Environmental Compliance sets out reporting requirements on the topic\nof environmental compliance. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 1, '307'),
(7, 'Materials', 'Materials sets out reporting requirements on the topic of materials. This\nStandard can be used by an organization of any size, type, sector or geographic location\nthat wants to report on its impacts related to this topic.', 1, '301'),
(8, 'Energy', 'Energy sets out reporting requirements on the topic of energy. This Standard\ncan be used by an organization of any size, type, sector or geographic location that\nwants to report on its impacts related to this topic.', 1, '302'),
(9, 'Effluents and Waste', 'Effluents and Waste sets out reporting requirements on the topic of effluents\nand waste. This Standard can be used by an organization of any size, type, sector or\ngeographic location that wants to report on its impacts related to this topic', 1, '306'),
(10, 'Supplier Environmental Assessment', 'Supplier Environmental Assessment sets out reporting requirements on\nthe topic of supplier environmental assessment. This Standard can be used by an\norganization of any size, type, sector or geographic location that wants to report\non its impacts related to this topic.', 1, '308'),
(11, 'Emissions', 'Emissions sets out reporting requirements on the topic of emissions.\nThis Standard can be used by an organization of any size, type, sector or geographic\nlocation that wants to report on its impacts related to this topic.', 1, '305'),
(12, 'Market Presence', 'Market Presence sets out reporting requirements on the topic of market\npresence. This Standard can be used by an organization of any size, type, sector\nor geographic location that wants to report on its impacts related to this topic.', 3, '202 '),
(13, 'Indirect Economic Impacts', 'Indirect Economic Impacts sets out reporting requirements on the topic of\nindirect economic impacts. This Standard can be used by an organization of any size,\ntype, sector or geographic location that wants to report on its impacts related to this\ntopic.', 3, '203'),
(14, 'Procurement Practices', 'Procurement Practices sets out reporting requirements on the topic of\nprocurement practices. This Standard can be used by an organization of any size, type,\nsector or geographic location that wants to report on its impacts related to this topic.', 3, '204'),
(15, 'Anti-corruption', 'Anti-corruption sets out reporting requirements on the topic of\nanti-corruption. This Standard can be used by an organization of any size, type,\nsector or geographic location that wants to report on its impacts related to this topic.', 3, '205'),
(16, 'Anti-competitive Behavior', 'Anti-competitive Behavior sets out reporting requirements on the topic of\nanti-competitive behavior. This Standard can be used by an organization of any size,\ntype, sector or geographic location that wants to report on its impacts related to\nthis topic.', 3, '206'),
(17, 'Labor/Management Relations', 'Labor/Management Relations sets out reporting requirements on the topic\nof labor/management relations. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '402'),
(18, 'Occupational Health', 'Occupational Health and Safety sets out reporting requirements on the topic\nof occupational health and safety. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related to\nthis topic.', 2, '403'),
(19, 'Training and Education', 'Training and Education sets out reporting requirements on the topic of training\nand education. This Standard can be used by an organization of any size, type, sector\nor geographic location that wants to report on its impacts related to this topic.', 2, '404'),
(20, 'Diversity and Equal Opportunity', 'Diversity and Equal Opportunity sets out reporting requirements on the topic\nof diversity and equal opportunity. This Standard can be used by an organization of\nany size, type, sector or geographic location that wants to report on its impacts\nrelated to this topic.', 2, '405'),
(21, 'Non-discrimination', 'Non-discrimination sets out reporting requirements on the topic of nondiscrimination.\nThis Standard can be used by an organization of any size, type, sector\nor geographic location that wants to report on its impacts related to this topic.', 2, '406'),
(22, 'Freedom of Association and Collective Bargaining', 'Freedom of Association and Collective Bargaining sets out reporting requirements\non the topic of freedom of association and collective bargaining. This Standard can be\nused by an organization of any size, type, sector or geographic location that wants\nto report on its impacts related to this topic.', 2, '407'),
(23, 'Child Labor', 'Child Labor sets out reporting requirements on the topic of child labor.\nThis Standard can be used by an organization of any size, type, sector or geographic\nlocation that wants to report on its impacts related to this topic.', 2, '408'),
(24, 'Forced or Compulsory Labor', 'Forced or Compulsory Labor sets out reporting requirements on the topic\nof forced or compulsory labor. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '409'),
(25, 'Security Practices', 'Security Practices sets out reporting requirements on the topic of security\npractices. This Standard can be used by an organization of any size, type, sector or\ngeographic location that wants to report on its impacts related to this topic.', 2, '410'),
(26, 'Rights of Indigenous Peoples', 'Rights of Indigenous Peoples sets out reporting requirements on the topic\nof rights of indigenous peoples. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '411'),
(27, 'Human Rights Assessment', 'Human Rights Assessment sets out reporting requirements on the topic\nof human rights assessment. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '412'),
(28, 'Local Communities', 'Local Communities sets out reporting requirements on the topic of local\ncommunities. This Standard can be used by an organization of any size, type, sector\nor geographic location that wants to report on its impacts related to this topic.', 2, '413'),
(29, 'Supplier Social Assessment', 'Supplier Social Assessment sets out reporting requirements on the topic\nof supplier social assessment. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '414'),
(30, 'Public Policy', 'Public Policy sets out reporting requirements on the topic of public policy.\nThis Standard can be used by an organization of any size, type, sector or geographic\nlocation that wants to report on its impacts related to this topic.', 2, '415'),
(31, 'Customer Health and Safety', 'Customer Health and Safety sets out reporting requirements on the topic\nof customer health and safety. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '416'),
(32, 'Marketing and Labeling', 'Marketing and Labeling sets out reporting requirements on the topic of\nmarketing and labeling. This Standard can be used by an organization of any size, type,\nsector or geographic location that wants to report on its impacts related to this topic.', 2, '417'),
(33, 'Customer Privacy', 'Customer Privacy sets out reporting requirements on the topic of customer\nprivacy. This Standard can be used by an organization of any size, type, sector or\ngeographic location that wants to report on its impacts related to this topic.', 2, '418'),
(34, 'Socioeconomic Compliance', 'Socioeconomic Compliance sets out reporting requirements on the topic\nof socioeconomic compliance. This Standard can be used by an organization of any\nsize, type, sector or geographic location that wants to report on its impacts related\nto this topic.', 2, '419');

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
(78, 0, 'transparent rock', 'john.f.almqvist@gmail.com', '767e67927a232baa7184dabdceaedc40ace905e0', 'fc0f9b8b11ba9eea1f8d1d', 'John', 'Almqvist', '1991-01-28', 'VÃ¤ktargatan 26A', '75422', 'UPPSALA'),
(79, 0, 'IKEA', 'jan@IKEA.se', '7d46e7190f7422b6c71e65f82aa142138b95b8a6', '4946a6f9ac051ef00ff83a', 'Jan', 'Emanuel', '1991-01-01', 'VÃ¤ktargatan 26', '75422', 'UPPSALA'),
(80, 0, 'Norrlands', 'hej@gmail.com', '28f190e5f3a43b9b30fe0560ccaec8b862368fa4', '400d8d40c4d87b5cb653b8', 'Henke', 'Andersson', '1991-01-01', 'VÃ¤ktargatan 26', '75422', 'UPPSALA'),
(81, 0, 'Willys', 'willys@gmail.com', '360127a7bb8dc7aaef241a2665114037cfd8bc91', 'd775c50a44c0668fbc56d3', 'Erik', 'Stortorsk', '1991-01-01', 'VÃ¤ktargatan 26', '75422', 'UPPSALA'),
(82, 0, 'ICA', 'ica-stig@gmail.com', '12572c175a7e6b141551515dc7652116db6f544b', 'b625d39e66378a3a83480f', 'Stig', 'Eriksson', '1991-01-11', 'VÃ¤ktargatan 26A', '75422', 'UPPSALA'),
(83, 0, 'Myrorna', 'myrorna@gmail.com', '45f0b2fdb7a1edf5d8b9a700f3e8c825c64bb300', 'cc9d7bb6706c528776f587', 'Janne', 'Eriksson', '1991-11-11', 'VÃ¤ktargatan 26A', '75422', 'UPPSALA');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attributeID`),
  ADD KEY `subCatID` (`subCatID`),
  ADD KEY `griCatID` (`griCatID`);

--
-- Index för tabell `attribute_orgs_sites`
--
ALTER TABLE `attribute_orgs_sites`
  ADD KEY `orgID` (`orgID`),
  ADD KEY `attributeID` (`attributeID`),
  ADD KEY `siteID` (`siteID`),
  ADD KEY `griCatID` (`griCatID`),
  ADD KEY `subCatID` (`subCatID`);

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
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT för tabell `site`
--
ALTER TABLE `site`
  MODIFY `siteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT för tabell `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `subCatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT för tabell `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`subCatID`) REFERENCES `sub_cat` (`subCatID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attributes_ibfk_2` FOREIGN KEY (`griCatID`) REFERENCES `cat` (`griCatID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `attribute_orgs_sites`
--
ALTER TABLE `attribute_orgs_sites`
  ADD CONSTRAINT `attribute_orgs_sites_ibfk_1` FOREIGN KEY (`orgID`) REFERENCES `org_profile` (`orgID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attribute_orgs_sites_ibfk_2` FOREIGN KEY (`attributeID`) REFERENCES `attributes` (`attributeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attribute_orgs_sites_ibfk_3` FOREIGN KEY (`griCatID`) REFERENCES `cat` (`griCatID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attribute_orgs_sites_ibfk_4` FOREIGN KEY (`subCatID`) REFERENCES `sub_cat` (`subCatID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
