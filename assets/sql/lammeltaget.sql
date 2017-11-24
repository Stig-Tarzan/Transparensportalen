-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 02 jun 2017 kl 12:17
-- Serverversion: 5.7.14
-- PHP-version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `lammeltaget`
--

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
(86, 43, 61, 'As discussed in Hazards of outdoor recreation, hiking may produce threats to personal safety, from such causes as hazardous terrain, inclement weather, becoming lost, or exacerbation of pre-existing medical conditions. These dangerous circumstances and/or specific accidents or ailments that hikers face may include, for example, diarrhea, one of the most common illnesses afflicting long-distance hikers in the United States.[32] (See Wilderness acquired diarrhea.)\n\nAdditional potential hazards involving physical ailments may include dehydration, frostbite, hypothermia, sunburn, or sunstroke, or such injuries as ankle sprains, or broken bones.[33]\nOther threats may be posed attacks by animals (such as mammals (e.g., bears), reptiles (e.g., snakes), or insects) or contact with noxious plants that can cause rashes (e.g., poison ivy, poison oak, poison sumac, or stinging nettles). Attacks by humans are also a reality in some places, and lightning is also a threat, especially on high ground.\nThe crossing of glaciers is potentially hazardous because of the potential for crevasses. These giant cracks in the ice are not always visible as snow can be blown and freeze over the top to make a snowbridge. To cross a glacier the use of a rope, crampons and ice axes are usually required. Deep, fast flowing rivers pose another danger that can be mitigated with ropes.\n\n\nIn various countries, borders may be poorly marked. In 2009, Iran imprisoned three Americans for hiking across the Iran-Iraq border.[34] It is illegal to cross into the US on the Pacific Crest Trail from Canada. Going south to north it is more straightforward and a crossing can be made, if advanced arrangements are made with Canada Border Services. Within the Schengen Area, which includes most of the E.U., and associated nations like Switzerland and Norway, there are no impediments to crossing by path, and borders are not always obvious.[35]', '2017-05-30'),
(91, 48, 62, 'Ett antal broar finns i omrÃ¥det samt en nÃ¶dtelefon i Mikkastugan, belÃ¤gen nÃ¤ra Ruotesvagges mynning mot Ã¶vre Rapadalen.', '2017-05-30'),
(106, 43, 61, 'Kjelle Ã¤r rapporterad', '2017-05-31'),
(108, 43, 60, 'Hej, fin led ', '2017-05-31');

-- --------------------------------------------------------

--
-- Tabellstruktur `trail`
--

CREATE TABLE `trail` (
  `trailID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `trailName` text NOT NULL,
  `creationDate` date NOT NULL,
  `trailInfoText` text NOT NULL,
  `trailShape` text NOT NULL,
  `difficultyLevel` int(5) NOT NULL,
  `trailLength` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `trail`
--

INSERT INTO `trail` (`trailID`, `userID`, `trailName`, `creationDate`, `trailInfoText`, `trailShape`, `difficultyLevel`, `trailLength`) VALUES
(43, 60, 'Led runt Ã–ningby', '2017-05-28', 'HÃ¤r tar vi en tur runt byn, Ã–ningeby', '60.1004994273968,20.03771308103751,60.101205370639285,20.037498504316318,60.10185781988198,20.03694060484122,60.10255303846153,20.036082297956455,60.103611881687655,20.036253959333408,60.104627911494916,20.035824805563607,60.105194735467244,20.035696059530892,60.10544057915991,20.034647048305487,60.106937791944965,20.03404623348615,60.10849909849994,20.03258711178205,60.10978230874711,20.033273757289862,60.109910627022,20.034647048305487,60.109568443844594,20.036406577419257,60.108028575548815,20.037221968959784,60.109504284103025,20.03833776790998,60.109910627022,20.039453566860175,60.10939735092266,20.040655196498847,60.10757943373389,20.041170180629706,60.107237226335336,20.04108434994123,60.10614641652351,20.04005438167951,60.10578280522512,20.039367736171698,60.10544057915991,20.037651122402167,60.10529085413829,20.03705030758283,60.10439248971661,20.03507620174787,60.10323741374427,20.035419524501776,60.10246734059465,20.03580576259992,60.101782816015984,20.036621154140448,60.101010268482376,20.037807829776284,60.10044872056522,20.03765226165342', 2, 3016),
(44, 62, 'Henriksfaran', '2017-05-28', 'En krÃ¤vande tur fÃ¶r de erfarna. Ta med rikligt med nÃ¤ring och dryck!', '62.53354050093505,17.24174595088698,62.540507108386834,17.223206511698663,62.54493955552997,17.206727019511163,62.55190349644235,17.179261199198663,62.564244660641805,17.15110873337835,62.57752942123305,17.1263894950971,62.58954387254077,17.10716342087835,62.59776147530665,17.07969760056585,62.60787232778227,17.04124545212835,62.61829553924582,17.0220193779096,62.628399400791494,16.987000457011163,62.64386427164418,16.954728118143976,62.6504896047815,16.937561980448663,62.65388351681584,16.964283225825056,62.65277952391722,16.97492623119615,62.645287056935274,16.98471092968248,62.64150066906257,16.986599204828963,62.63818718293279,16.989860770991072,62.63471551455369,16.994323966791853,62.632821705937424,17.004280326655135,62.63297952794121,17.008743522455916,62.630927776383196,17.022819755366072,62.6272964143239,17.042236800771207,62.641499677183134,17.052536483388394,62.64244631952323,17.094421859364957,62.632505067229985,17.134590626810677,62.63723745742057,17.245179175806697,62.64354874264874,17.25959873147076,62.64354874264874,17.234192847681697,62.65427484454721,17.217026709986385,62.67382421531778,17.227326392603572,62.68233361839322,17.24861240334576,62.69115560098859,17.306977271509822,62.67350900526031,17.36122226662701,62.64354874264874,17.370148658228572,62.63660625500274,17.368775367212947,62.63281875832609,17.36671543068951,62.62492658648017,17.37495517678326,62.62208489055044,17.37770175881451,62.61955871011462,17.381134986353572,62.62224473546194,17.390709399915067,62.629190585389004,17.391052722668974,62.62556000305872,17.396202563977567,62.62319199257696,17.397575854993192,62.62192897636977,17.397575854993192,62.61813960515352,17.39517259571585,62.61608682702456,17.392082690930692,62.61371806043458,17.383842944836942,62.61277050086391,17.375603198743192,62.61182291104378,17.363243579602567,62.61055941089435,17.360496997571317,62.6083481562244,17.353630542493192,62.606768587761024,17.345390796399442,62.604083128502765,17.33371782276663,62.60313525172072,17.330971242045052,62.60250332348488,17.306595323898364,62.60187138180144,17.29320573649602,62.60076545149648,17.282562731124926,62.59981747845521,17.267113207199145,62.59950148071724,17.25647020182805,62.59950148071724,17.24479722819524,62.598079449289386,17.23381090007024,62.5972894024098,17.217674730636645,62.592864751523145,17.208748339035083,62.575792066406144,17.19741869077552,62.56820105779143,17.209091664408334,62.54810518520025,17.28569126338698,62.53797398515425,17.270585062215105,62.53354050093505,17.256852152058855', 5, 82131),
(48, 60, 'Sarek', '2017-05-30', 'Sarek Ã¤r en av fÃ¥ nationalparker i Sverige dÃ¤r det inte finns nÃ¥gra bekvÃ¤mligheter fÃ¶r besÃ¶karna. Det finns inga stugor, spÃ¤nger eller markerade leder. Om du som vandrare mÃ¶ter renar Ã¤r det viktigt att inte skrÃ¤mma djuren. SÃ¤tt dig och vÃ¤nta pÃ¥ att renarna passerar eller gÃ¥ runt de betande djuren fÃ¶r att inte stÃ¶ra.', '67.15028199390676,18.176957122050226,67.16307708271671,18.15841769333929,67.17266894877942,18.133011809550226,67.17426722234558,18.105545989237726,67.17160337422078,18.080826750956476,67.17426722234558,18.042374602518976,67.18332210532554,18.020401946268976,67.1963658086719,18.009415618143976,67.20887048321009,17.998429290018976,67.2248244644161,17.979203215800226,67.23970530682605,17.946244231425226,67.2476733993695,17.89749240037054,67.25643525039509,17.852860442362726,67.26413242118258,17.8240213310346,67.2715618315748,17.800675383768976,67.27633666703443,17.78831576462835,67.27739761256817,17.762223235331476,67.280314970911,17.736130664125085,67.2935712205138,17.725144336000085,67.30893929273682,17.740937182679772,67.31714922190123,17.758789965882897,67.33197292993144,17.741623828187585,67.34414268175846,17.729950854554772,67.35551315680125,17.697678515687585,67.36397139675644,17.676392504945397,67.36872784126118,17.65235991217196,67.37084151263058,17.61665434576571,67.37242664341406,17.576828906312585,67.36132851835723,17.543869921937585,67.35614928089582,17.525291894562542,67.35234054492987,17.518464038148522,67.34863863218423,17.523957202211022,67.34599405783581,17.529450366273522,67.3417621304758,17.526703784242272,67.3359420075221,17.532883593812585,67.32985581932903,17.526703784242272,67.32535633738189,17.522583911195397,67.32244445713037,17.516404101625085,67.31820836263206,17.515717456117272,67.31661963396867,17.512970874086022,67.31503079990001,17.510910937562585,67.31211766366073,17.514344165101647,67.31158796445845,17.52601713873446,67.31211766366073,17.539063403382897,67.31105825354241,17.54524321295321,67.31151140540177,17.547922247322276,67.31184246983402,17.55135547486134,67.30998845007781,17.549123876960948,67.30892894578867,17.543630712898448,67.30826673181238,17.543630712898448,67.30786939464033,17.538652532966807,67.30773694745191,17.534704321296886,67.30780317113764,17.531700247200206,67.30780317113764,17.528524511726573,67.30707470052668,17.52560626831837,67.30674357019953,17.527494543464854,67.30647866264275,17.52964031067677,67.30601506737062,17.537536734016612,67.30579671916868,17.54122262878809,67.30495228275049,17.541565951541997,67.30424028382306,17.545299586490728,67.30390911432276,17.548904475406744,67.30364417542717,17.55422597809229,67.30405814116429,17.556800898746587,67.3038428798735,17.565383967594244,67.30361105785927,17.568388041690923,67.29831683321639,17.608376021962613,67.29659427613888,17.613525863271207,67.29341384553575,17.62039231834933,67.29227491687902,17.623806236078963,67.29134716773507,17.623291251948103,67.29081700924955,17.622261283686385,67.29002174954228,17.62088799267076,67.28916018842875,17.61814141063951,67.28862998158819,17.614708183100447,67.2881660409862,17.61264824657701,67.28750325312774,17.610588310053572,67.28650903699389,17.609215019037947,67.28571363441093,17.608528373530135,67.28379130259418,17.60664009838365,67.28279693257771,17.604236839106306,67.28060917343842,17.601490257075056,67.2798135751913,17.600803611567244,67.27848751947968,17.59943032055162,67.27802338266501,17.596340415766463,67.2794157661735,17.592563865473494,67.2816699300596,17.589817283442244,67.28385759246297,17.58569741039537,67.28743697333442,17.577629315201193,67.28995547670947,17.57368110353127,67.2895578358661,17.5669863098301,67.2924074495406,17.56046317750588,67.29353394758606,17.554283367935568,67.29346768446028,17.551880108658224,67.29260624715937,17.550850140396506,67.28962410979791,17.550163494888693,67.28796720655201,17.55376838380471,67.28611133899977,17.5505068176426,67.28405646097015,17.553940045181662,67.28286322519457,17.556858288589865,67.28041027635017,17.568016278091818,67.27921685919101,17.572822796646506,67.27371311201765,17.582264172378927,67.27304992473478,17.58295081788674,67.27212143174934,17.584324108902365,67.2710602529226,17.589817272964865,67.26754476291782,17.601833579828963,67.26681506839572,17.608013389399275,67.26575365495047,17.616939781000838,67.26867242900754,17.622432945063338,67.27501041914742,17.646866790018976,67.27527567458894,17.668152800761163,67.27235770346103,17.668839446268976,67.27076593329637,17.676392546854913,67.27076593329637,17.70248507615179,67.27103123565503,17.720337859354913,67.27235770346103,17.748490325175226,67.27447989946795,17.764283171854913', 5, 74067),
(51, 60, 'Muddus nationalpark', '2017-05-30', 'En tur runt muddus nationalpark.\n\nMuddus Ã¤r en nationalpark i Lappland, Sverige. Den ligger sydvÃ¤st om GÃ¤llivare tÃ¤tort; stÃ¶rre delen av Muddus ligger i GÃ¤llivare kommun och resterande del i Jokkmokks kommun.', '67.0605764205585,20.15732001629658,67.050939992952,20.17105292645283,67.03594238292865,20.17929267254658,67.02200773012277,20.194398873718455,67.01450114337904,20.21499823895283,66.99733452080125,20.25894355145283,66.98445159788272,20.28640937176533,66.99035711762406,20.30838202801533,66.99411442953833,20.320741647155955,66.9908939119951,20.33035468426533,66.98520664479068,20.333710667327978,66.98182553013444,20.33916520915227,66.97900617722003,20.33916520915227,66.97699215379093,20.343285082199145,66.97339167181943,20.352936741546728,66.96855662092608,20.36735629721079,66.96613873550554,20.377655979827978,66.95995860453108,20.372162815765478,66.95888363911439,20.352936741546728,66.95431450703593,20.32066440267954,66.9510887215623,20.32066440267954,66.94786250919086,20.32341098471079,66.94140880356942,20.316544529632665,66.94006406657614,20.30693149252329,66.93818131022687,20.29319858236704,66.93468437715318,20.28221225424204,66.92903442630553,20.26023959799204,66.9268817199467,20.25474643392954,66.92203743634565,20.23277377767954,66.918538189144,20.220414158538915,66.91719219128751,20.21354770346079,66.91530766963416,20.203248020843603,66.9155768959174,20.182648655609228,66.92042246149586,20.155182835296728,66.92957257322703,20.12016391963698,66.94463586987528,20.02952671260573,66.94893796075061,20.00206089229323,66.95485209644751,19.98558140010573,66.96640740129307,19.991761209676042,66.98359584973682,20.026093485066667,67.00881939454811,20.046692850301042,67.02597791075596,20.046692850301042,67.03026564699,20.052186014363542,67.04955109489033,20.13389682979323,67.0532992640254,20.144196512410417,67.05758217684951,20.155182840535417', 4, 51912);

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
(61, 1, 'admin', 'admin@admin.se', 'fe1933976eaa4165792777bad22912fe26431ff4', '5415d00498e0ae2ea2e0fb', '0', 'Adele', '9199-01-28', 'Vaksalatorg', '75244', 'Uppsala'),
(62, 0, 'Jan-Emanuel', 'Janne61@gmail.com', '1f831c9452f8c7852558b2cec79b14f045ece615', '3ed2347ddacbb088c9419a', '0', 'Evert', '1961-01-21', 'Hans', '74249', 'StrÃ¤ngnÃ¤s'),
(63, 0, 'Hanky', 'hank@gmail.se', '21db5d60ddc66919711035e197867513176617e2', 'a15c8eee9f0fc3bc818be2', '0', 'henkeland@gmail.se', '1991-01-28', 'VÃ¤ktargatan 25', '75422', 'Uppsala');

-- --------------------------------------------------------

--
-- Tabellstruktur `vote`
--

CREATE TABLE `vote` (
  `voteID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `trailID` int(255) NOT NULL,
  `vote` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `vote`
--

INSERT INTO `vote` (`voteID`, `userID`, `trailID`, `vote`) VALUES
(22, 62, 43, 1),
(23, 62, 44, 1),
(24, 60, 43, -1),
(25, 60, 44, -1),
(26, 61, 44, 1),
(27, 61, 43, 1),
(28, 60, 48, 1),
(29, 60, 51, 1),
(30, 61, 48, 1),
(31, 62, 51, 1);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `trailID` (`trailID`),
  ADD KEY `userID` (`userID`);

--
-- Index för tabell `trail`
--
ALTER TABLE `trail`
  ADD PRIMARY KEY (`trailID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `trailID` (`trailID`);

--
-- Index för tabell `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `userName` (`userName`),
  ADD KEY `userID` (`userID`);

--
-- Index för tabell `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`voteID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `trailID` (`trailID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `comment`
--
ALTER TABLE `comment`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT för tabell `trail`
--
ALTER TABLE `trail`
  MODIFY `trailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT för tabell `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT för tabell `vote`
--
ALTER TABLE `vote`
  MODIFY `voteID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`trailID`) REFERENCES `trail` (`trailID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `trail`
--
ALTER TABLE `trail`
  ADD CONSTRAINT `trail_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriktioner för tabell `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`trailID`) REFERENCES `trail` (`trailID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
