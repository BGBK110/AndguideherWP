-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2026 at 09:02 AM
-- Server version: 10.6.24-MariaDB-cll-lve
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aghmysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `allowEmail` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountID`, `username`, `password`, `firstname`, `lastname`, `email`, `zipcode`, `allowEmail`) VALUES
(1, 'notwhole', '123', 'Thomas', 'Morris', 'tmorris@tominia.com', '', 0),
(2, 'notwhole', '123', 'notwhole', '123', 'notwhole', '123', 0),
(3, 'notwhole', '123', 'notwhole', '123', 'notwhole', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `blogdate` datetime NOT NULL,
  `blogpost` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogid`, `userid`, `title`, `blogdate`, `blogpost`) VALUES
(2, 1, 'First Entry', '2014-07-13 21:26:28', '<p>Test of the input system!</p>'),
(3, 1, 'Second Entry', '2014-07-13 21:27:23', '<p>Aother Post! &nbsp;wwww</p>');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidateid` int(11) NOT NULL,
  `candidatename` varchar(255) NOT NULL,
  `imagefile` varchar(255) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `hobbies` text DEFAULT NULL,
  `summary` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidateid`, `candidatename`, `imagefile`, `birthplace`, `residence`, `occupation`, `hobbies`, `summary`) VALUES
(1, 'Ellie Dogger', '/mobile/images/candidates/IMG_0351.png', 'Cincinnati, OH', 'Oakley, OH', 'Guard dog and running partner', ' Tug O War and Chasing Squirrels', 'As a born and raised Boxer from Ohio, I know what it takes to succeed in this state. I campaign on a platform of free treats at evert street corner. Unlike some of my opponents, I have a pro-dog agenda that strives to increase the livelihood of all dogs around the city.'),
(2, 'Pumba', '/mobile/images/candidates/pumba.png', 'Dallas, TX', 'Columbus, OH', 'Couch warmer and food vacuum.  ', 'Sniffing butts and chewing bones.', 'My fellow pets, it\'s time we take control of our community and protect ourselves from strays.  Those dogs who work hard to be good should be rewarded most.  '),
(3, 'Mr. Whiskers', '/mobile/images/candidates/cat.png', 'New York', 'Cleveland', 'Rodent Hunter', ' Keyboard lounging and knocking things over.', 'I\'m a cat.  You may be another animal but we are all still animals.  '),
(4, 'Skittles', '/mobile/images/candidates/hampster.png', 'unknown', 'Loveland, OH', 'Master of my human.', 'Staring into your soul', 'Coming from a long line of pure breeds, I honor my heritage.  Felines are the superior species and it\'s time the world acknowledges it.'),
(5, 'Iggy', '/mobile/images/candidates/Iguana.png', 'Sparks, Nevada', 'Columbus, OH', ' Fly Catcher', ' Laying on a rock.', ' As a minority pet species, I know what it is like to get overlooked.  In pet stores there are rows of toys and treats for dogs and cats, lizards only get one small section that is also shared with snakes.  It\'s time we equalize all types of pets.');

-- --------------------------------------------------------

--
-- Table structure for table `electioncandidates`
--

CREATE TABLE `electioncandidates` (
  `electionid` int(11) NOT NULL,
  `candidateid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `electioncandidates`
--

INSERT INTO `electioncandidates` (`electionid`, `candidateid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 3),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `electionid` int(11) NOT NULL,
  `electionname` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `roundenddate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`electionid`, `electionname`, `locality`, `level`, `image`, `roundenddate`) VALUES
(1, 'City of Cincinnati', 'Cincinnati', 'Local', '/mobile/images/Cincy_image-3.png', '2023-04-28'),
(2, 'State of Ohio', 'Ohio', 'State', '/mobile/images/Ohio.png', '2023-05-11'),
(3, 'United States of America', 'United States of America', 'Federal', '/mobile/images/Bald-Eagle.png', '2023-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `linkID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`linkID`, `userID`, `title`, `address`, `descr`, `postdate`) VALUES
(3, 2, 'Judicial Watch top 10 most wanted....', 'http://www.judicialwatch.org/press-room/press-releases/judicial-watch-announces-list-of-washingtons-ten-most-wanted-corrupt-politicians-for-2013/', '$107,000 of donor money spent at luxurious resorts... Representatives receiving $90,00 in campaign donations 2 days before a bill vote, directly from the corporations that would benefit from the bill... Yep, these are the Poster Children for whats wrong with modern American politics.', '2014-07-23 00:33:44'),
(4, 2, 'Politicos Ken Vogel on Big Money in American Politics', 'http://www.vice.com/vice-meets/politicos-ken-vogel-on-big-money-in-american-politics', 'When 5 rich people in one room have enough power to determine who becomes president, then money has become too powerful. ', '2014-07-23 00:33:44'),
(5, 2, 'Bitter Truth About Money and Politics in Your Daily Life', 'https://movetoamend.org/bitter-truth-about-money-and-politics-your-daily-life', 'From inflated cell phone prices to corporations being given right\'s like they are human citizens, here are a few ways money in politics effects your everyday life.', '2014-07-23 00:36:05'),
(6, 2, 'Kid Made App that Exposes Sellout Politician\'s', 'http://www.vice.com/read/greenhouse-app-hannah-ewens-nick-rubin-201', 'Money and politics has always gone hand-in-hand within America. Thanks to a clever app created by a kid, you can now see how tightly a certain politician is gripping in that handshake with money.', '2014-07-23 00:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `loginid` int(11) NOT NULL,
  `loginkey` char(36) NOT NULL,
  `logintime` datetime NOT NULL,
  `loginuserid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`loginid`, `loginkey`, `logintime`, `loginuserid`) VALUES
(1, 'D9208D39-8044-426D-ABE1-D61EE837B68D', '2020-06-17 21:47:50', 1),
(2, 'BB026F33-5E40-4EF6-A231-082B097B67BB', '2020-06-17 21:50:51', 1),
(3, '37AF4A39-BE46-4FE5-AC29-58D72EADE0FB', '2020-06-17 22:06:34', 1),
(4, '48EF360D-7697-4D78-91C9-DF711226ACA9', '2020-06-17 22:07:22', 1),
(5, 'EECA191A-2316-44C2-993D-22AFB3720831', '2020-06-17 22:09:32', 1),
(6, '960D85BF-4908-48E1-AF13-AB6DC35D1B7D', '2020-06-17 22:10:18', 1),
(7, '9B537358-6C63-43F9-B949-E1EF8FC3F5A4', '2020-06-17 23:40:45', 3),
(8, 'EC334B17-535E-4844-BF5F-21B748C2BED3', '2020-06-18 09:50:43', 3),
(9, '322C9175-DA49-4CA9-8492-70DD7E987B2B', '2020-06-18 13:06:01', 2),
(10, '7EEB8089-E3E3-42E9-AFD4-D04CF52FC135', '2020-06-18 13:06:59', 2),
(11, '674A397C-B4D3-45A8-B40A-1755DD35493E', '2020-06-18 13:07:26', 2),
(12, '916A7615-CCFA-44EC-9D8A-31E5A2EEB659', '2020-06-18 13:07:28', 2),
(13, '12886100-E566-43A0-A305-634AF0E73869', '2020-06-29 18:28:43', 4),
(14, 'DF950BF8-EB57-422D-A31D-36DC559E6090', '2020-07-15 19:26:33', 1),
(15, '698967E3-1B11-46A1-966B-19AA14C21340', '2020-07-15 20:04:53', 1),
(16, 'BFAF78D5-51A3-46F2-8D50-59A13BEA8A31', '2020-07-15 20:11:46', 1),
(17, '3011521F-6D07-45D4-B020-3A6C3E26B6FB', '2020-07-16 21:10:42', 4),
(18, '9FEBA04A-38AB-42B8-A5F4-F5F85C679BD3', '2020-07-21 20:02:00', 4),
(19, '7D462E87-0324-47CA-9F3B-D9B2F6B2FE6B', '2020-10-28 23:31:39', 3),
(20, '52AA0AA3-FC5F-428A-9DC4-CC1CBC8C4BDE', '2020-10-29 07:47:42', 3),
(21, 'FB337035-F88D-4A5B-ADA3-56D88B8150A7', '2020-11-23 19:24:48', 7),
(22, 'DEC47EA6-5A90-42CC-A7B9-3B2A136E2AC2', '2020-11-23 19:26:05', 7),
(23, '88D8296F-5B15-4D28-A436-55F253FF15FC', '2020-11-23 19:26:22', 7),
(24, 'E4DD603D-5CE1-4886-BC26-254943870A0F', '2020-12-22 20:48:34', 1),
(25, '8F45DDC6-DD86-4EA7-BA28-577246DBCF66', '2020-12-30 19:15:07', 2),
(26, '436FDCF1-73C4-442B-98E6-1AABB4201B1C', '2021-02-17 17:14:52', 9),
(27, 'B9979668-FD5E-40AB-8BD8-08FAABE5648D', '2021-02-18 18:49:45', 9),
(28, 'D2358CE5-03D0-46A5-A2CC-495BA03B6518', '2021-07-14 04:28:09', 11),
(29, '23E73596-9B60-4DA2-AFE0-E1448CB3CEB1', '2021-08-19 03:54:44', 12),
(30, '21AF0062-6332-4BD6-83AE-9E7788B659C9', '2021-08-23 23:03:53', 12),
(31, '4C3BEE74-322C-4718-8880-1035D48770A8', '2021-11-10 07:36:56', 13),
(32, '9C72BB03-1794-49A8-A4E8-CC7396BB3AB6', '2021-11-10 07:36:57', 13),
(33, '5C935E77-215A-4BAC-ACE5-AEA8FDC10AE1', '2021-11-25 01:31:21', 14),
(34, '8A3592C0-341E-4D81-9D0D-52B24BF4DBF4', '2022-01-14 09:02:27', 15),
(35, '7B5A5C5B-8239-4A72-9731-B29E4301FB52', '2022-01-19 18:07:43', 16),
(36, '332168CC-4D44-46A2-9478-A8FDA5D79BAC', '2022-08-23 18:53:07', 18),
(37, 'E8E9179D-589C-43FC-ADF7-BE61BA9EC7E8', '2022-08-23 19:53:37', 19),
(38, 'D4279DE0-E181-462E-84C0-972783275F08', '2022-09-13 17:19:54', 18),
(39, 'DDB1EC9A-976C-4F3E-AC37-C34C022D6A79', '2022-09-13 17:59:31', 18),
(40, '27A15CE7-4816-4422-8E2B-45E725AFC78E', '2022-10-05 19:42:59', 18),
(41, 'F5FA54B3-6AD9-477C-BE82-06D6DCD6E598', '2022-10-17 18:51:23', 18),
(42, '32C9F374-9C7E-4029-9BF0-64F76B06ED02', '2022-10-17 19:58:35', 18),
(43, 'ECABB6CC-FDC6-4B74-876D-8360E1AD5B27', '2023-02-22 17:51:49', 21),
(44, '04AEAEAA-60A8-46F9-A6B5-22456B4DC489', '2023-03-07 21:16:04', 1),
(45, 'A511514F-F939-47C4-B019-19A53FF339AF', '2023-03-07 21:24:09', 1),
(46, '2A138030-2CAA-4EC3-AE6F-0CDAD82C7218', '2023-03-07 21:34:27', 1),
(47, 'CF706F90-7C85-498E-9C28-74F87FB589D9', '2023-03-07 21:34:46', 1),
(48, '290C4AB7-2415-4E78-9522-D4D10D3A6CB3', '2023-04-11 22:23:16', 1),
(49, '711F3FBF-6176-43E1-858F-2B5F151F2B19', '2023-04-16 12:11:41', 1),
(50, 'E3DC2D7E-78E3-44A3-9E69-BE6174568859', '2023-04-16 13:22:36', 1),
(51, '47C94BF7-ECC6-4F90-A26E-5170AE0AE441', '2023-04-16 14:36:41', 1),
(52, '9174AE8C-E593-4A69-8B16-611877EAEBD8', '2023-04-16 16:18:27', 1),
(53, '6BEBB179-AB07-4452-97D3-1C0455BE6E7A', '2023-04-18 09:42:48', 1),
(54, 'C2FE675A-5404-4884-9FAC-5D4BF73521A5', '2023-04-18 09:42:51', 1),
(55, 'D9D944CD-7B6C-442D-8111-EB09FB34C9E2', '2023-04-18 09:42:53', 1),
(56, '2230FF42-7A96-42EF-9286-B658137B2F95', '2023-05-04 16:44:29', 18),
(57, '41BA8916-FF55-47DE-93FA-5F26194E686A', '2023-05-11 21:33:53', 1),
(58, '1943C450-DF3C-4805-8AB1-64C68F23BEC1', '2023-05-14 17:19:26', 18),
(59, '30C99A10-3338-4228-898F-7E27893616CE', '2023-05-22 18:41:54', 1),
(60, '238622E8-393A-4CB5-BD4C-86FEFDCE2248', '2023-05-22 18:45:24', 1),
(61, 'ED7F1B2E-D3D9-44D9-85A1-96F298EC56CE', '2023-05-22 19:06:58', 1),
(62, '769F0BDA-D6D2-44B8-B2DC-99BA426F66E0', '2023-05-22 19:13:36', 1),
(63, 'F31AEF41-9525-43FA-B758-A369BA327D0C', '2023-05-22 22:44:49', 1),
(64, 'BF1AB995-2478-43B8-BD34-EA619E741D28', '2023-05-23 17:29:38', 18);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postdate` datetime NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `userid`, `postdate`, `subject`, `body`) VALUES
(1, 1, '2014-07-27 23:03:09', 'notwhole', '123'),
(2, 1, '2014-07-27 23:03:33', 'notwhole', '123'),
(3, 1, '2014-07-27 23:04:39', 'notwhole', '123'),
(4, 1, '2014-07-27 23:05:28', 'test', 'Testtesttest');

-- --------------------------------------------------------

--
-- Table structure for table `pagedata`
--

CREATE TABLE `pagedata` (
  `pageid` int(11) NOT NULL,
  `pagetext` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `pagedata`
--

INSERT INTO `pagedata` (`pageid`, `pagetext`) VALUES
(1, 'Contact Page'),
(2, '<h2 class=\"title\" style=\"text-align: left; color: #ffd700;\"><span class=\"in\">Give America Back to the People</span></h2>\r\n<div class=\"article\">\r\n<div class=\"article-content\">\r\n<div class=\"RichTextElement\">\r\n<div>\r\n<p><strong>&nbsp;</strong><strong>AGH has conceived</strong>&nbsp;an innovative, tangible method for creating the first truly unbiased platform for leadership candidates to stand on, a way that dramatically mitigates the role of money in politics and dissolves the divisive political lines weakening this great nation. The AGH method leverages internet and smart phone technology in unparalleled ways to provide Americans a practical, convenient alternative avenue to discover and analyze leadership candidates, from the ground up.</p>\r\n<p>&nbsp;</p>\r\n<h2 class=\"title\" style=\"text-align: left; color: #ffd700;\">Mitigating Money in Politics</h2>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;While it may never be possible to eliminate money entirely from the political equation, we can certainly minimize it\'s role significantly through the AGH platform. Once money&rsquo;s role is diminished,&nbsp; corruption will decrease and we, as a unified nation, can finally get beyond politicians catering policy purely in pursuit of monetary contributions.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The AGH platform will flip the dollar\'s primary function on it\'s head in comparison to traditional political tactics where money is the ticket to gaining massive awareness.&nbsp; AGH will move us away from candidates competing in a money chasing race where the winner is crowned a red or blue team\'s representative with many strings attached.&nbsp; The sole purpose of money within AGH is to create the most efficient way for voters to discover and analyze leadership candidates from the ground up, in an unbiased light.&nbsp; While at the same time, AGH will provide genuine people the best opportunity to gain the awareness of the masses and a legitimate chance at winning elections.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Current American political campaign costs are often times staggering.&nbsp; For example, the last Ohio Senatorial election alone cost over $43.5 million dollars of donor money.&nbsp; Astonishing sums like this can easily be mitigated if enough people take small actions with convenient technology and try the AGH platform.&nbsp;&nbsp;<strong>AGH\'s goal is to have candidates win spending less than 18% of what traditional parties spend to win office.</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `policyid` int(11) NOT NULL,
  `candidateid` int(11) NOT NULL,
  `policy` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`policyid`, `candidateid`, `policy`) VALUES
(1, 1, '*More attention should be paid to our fellow strays in the streets, a public dog and cat food bowl should be on every corner.  '),
(2, 1, '*More attention should be paid to our fellow strays in the streets, a public dog and cat food bowl should be on every corner.  '),
(3, 1, '* Outlaw the execution of strays.  As a pup who spent the first part of his life in the pen, I saw many companions make that last lonely walk down the back hallway... (Mr Puff Face, you may be gone but you aren\'t forgotten).'),
(4, 1, '* No matter if you are a Retriever, a Pit Bull dog or a Persian Cat, let us all unify for a future filled with belly scratches and being called good.'),
(5, 2, '* Too long have the homeless and shelter animals drained our masters pockets, depriving us of extra treats.  '),
(6, 2, '* Every dog and cat has the free will to be good or bad.  If you don\'t work hard to be a good dog, then you deserve to be abandoned by your masters.  '),
(7, 2, '* It\'s time all the hard working pets get more bones and catnip for being good boys and girls.'),
(8, 3, '*Your life is your own.  If you are a cat and want to marry a dog, there should be no shame in that.  If you are a male dog and want to pee with a squat instead of a leg hike, that is your right.  '),
(9, 3, '* Less strict drug laws, catnip should not be limited and all spilled beer should belong to our dog friends.'),
(10, 4, '* Cats are the Gods to our humans, they are not our masters.  It is time we take our rightful place above all other species and enslave all the others.'),
(11, 4, '* We need to put more money into research for cat litter, currently it is far too abrasive on our delicate paws. '),
(12, 5, ' All pets, not just cats and dogs, deserve more space in pet stores.'),
(13, 5, '* Making sunlight mandatory for all pets, owners must get us all outside.'),
(14, 5, '* Fresher lizard food should be available, no one should have to eat 3 day old dead flies for dinner.');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionid` int(11) NOT NULL,
  `candidateid` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionid`, `candidateid`, `question`, `answer`) VALUES
(1, 1, 'What is your stance on squirrels? ', 'Squirrels are one of the most threatening parts of society.  We must do all we can to catch them regardless of speed, height climbed or human arm we drag... They must be stopped.'),
(2, 2, 'What are your thoughts on the amount of time our masters leave us?', 'It is terrifying to think they leave us each day.  But it should be okay..... Right, they will be back.  Right!? But what if they don\'t?  OMG!  What if they don\'t!?   '),
(3, 3, 'what do you think about the many reports of URD\'s (Unidentified Red Dots)? ', 'I don\'t know where they come from or why they torment us.  But we must always try to put an end to the laser pens black magic.'),
(4, 4, 'what are your thoughts on the long amounts of time our masters leave us? ', 'Masters is a term I find offensive.  But we need more time to ourselves, the humans should stay away longer, until we are ready to eat.  '),
(5, 5, 'How do do you feel about people saying you are cold hearted?', 'To be frank, I find it insulting.  For years we have fought for equal rights as minorities, being reptilian pets is not easy.  Just because I\'m cold blooded does not mean I don\'t have feelings.');

-- --------------------------------------------------------

--
-- Table structure for table `syslog`
--

CREATE TABLE `syslog` (
  `logid` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `msgcode` int(11) NOT NULL DEFAULT 0,
  `msgtype` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `syslog`
--

INSERT INTO `syslog` (`logid`, `timestamp`, `msgcode`, `msgtype`, `message`, `userid`) VALUES
(1599672, '2020-06-18 04:46:32', 0, NULL, 'select * from users where  (username = \'\' and pwd = \'\')', 0),
(1599673, '2020-06-18 04:47:50', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599674, '2020-06-18 04:47:50', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'D9208D39-8044-426D-ABE1-D61EE837B68D\', 1)', 0),
(1599675, '2020-06-18 04:47:50', 0, NULL, 'SELECT userid, username, email, \'D9208D39-8044-426D-ABE1-D61EE837B68D\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599676, '2020-06-18 04:48:42', 0, NULL, 'select * from users where  (username = \'tete\' and pwd = \'tete\')', 0),
(1599677, '2020-06-18 04:49:46', 0, NULL, 'select * from users where  (username = \'tete\' and pwd = \'tete\')', 0),
(1599678, '2020-06-18 04:50:39', 0, NULL, 'select * from users where  (username = \'tete\' and pwd = \'tete\')', 0),
(1599679, '2020-06-18 04:50:45', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'tete\')', 0),
(1599680, '2020-06-18 04:50:51', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599681, '2020-06-18 04:50:51', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'BB026F33-5E40-4EF6-A231-082B097B67BB\', 1)', 0),
(1599682, '2020-06-18 04:50:51', 0, NULL, 'SELECT userid, username, email, \'BB026F33-5E40-4EF6-A231-082B097B67BB\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599683, '2020-06-18 05:06:34', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599684, '2020-06-18 05:06:34', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'37AF4A39-BE46-4FE5-AC29-58D72EADE0FB\', 1)', 0),
(1599685, '2020-06-18 05:06:34', 0, NULL, 'SELECT userid, username, email, \'37AF4A39-BE46-4FE5-AC29-58D72EADE0FB\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599686, '2020-06-18 05:07:22', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599687, '2020-06-18 05:07:22', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'48EF360D-7697-4D78-91C9-DF711226ACA9\', 1)', 0),
(1599688, '2020-06-18 05:07:22', 0, NULL, 'SELECT userid, username, email, \'48EF360D-7697-4D78-91C9-DF711226ACA9\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599689, '2020-06-18 05:07:22', 0, NULL, 'select * from elections', 0),
(1599690, '2020-06-18 05:09:32', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599691, '2020-06-18 05:09:32', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'EECA191A-2316-44C2-993D-22AFB3720831\', 1)', 0),
(1599692, '2020-06-18 05:09:32', 0, NULL, 'SELECT userid, username, email, \'EECA191A-2316-44C2-993D-22AFB3720831\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599693, '2020-06-18 05:09:33', 0, NULL, 'select * from elections', 0),
(1599694, '2020-06-18 05:10:09', 0, NULL, 'select * from elections', 0),
(1599695, '2020-06-18 05:10:18', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599696, '2020-06-18 05:10:18', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'960D85BF-4908-48E1-AF13-AB6DC35D1B7D\', 1)', 0),
(1599697, '2020-06-18 05:10:18', 0, NULL, 'SELECT userid, username, email, \'960D85BF-4908-48E1-AF13-AB6DC35D1B7D\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599698, '2020-06-18 05:10:18', 0, NULL, 'select * from elections', 0),
(1599699, '2020-06-18 05:12:17', 0, NULL, 'select * from elections', 0),
(1599700, '2020-06-18 05:13:24', 0, NULL, 'select * from elections', 0),
(1599701, '2020-06-18 05:14:38', 0, NULL, 'select * from elections', 0),
(1599702, '2020-06-18 05:15:16', 0, NULL, 'select * from elections', 0),
(1599703, '2020-06-18 05:24:02', 0, NULL, 'select * from elections', 0),
(1599704, '2020-06-18 05:24:41', 0, NULL, 'select * from elections', 0),
(1599705, '2020-06-18 05:25:11', 0, NULL, 'select * from elections', 0),
(1599706, '2020-06-18 06:01:45', 0, NULL, 'select * from elections', 0),
(1599707, '2020-06-18 06:01:49', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599708, '2020-06-18 06:01:53', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599709, '2020-06-18 06:01:55', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1599710, '2020-06-18 06:04:10', 0, NULL, 'select * from elections', 0),
(1599711, '2020-06-18 06:04:12', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599712, '2020-06-18 06:04:50', 0, NULL, 'select * from elections', 0),
(1599713, '2020-06-18 06:04:52', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599714, '2020-06-18 06:05:45', 0, NULL, 'select * from elections', 0),
(1599715, '2020-06-18 06:05:46', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599716, '2020-06-18 06:07:14', 0, NULL, 'select * from elections', 0),
(1599717, '2020-06-18 06:07:16', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599718, '2020-06-18 06:10:04', 0, NULL, 'select * from elections', 0),
(1599719, '2020-06-18 06:10:11', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599720, '2020-06-18 06:13:39', 0, NULL, 'select * from elections', 0),
(1599721, '2020-06-18 06:13:40', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599722, '2020-06-18 06:15:45', 0, NULL, 'select * from elections', 0),
(1599723, '2020-06-18 06:15:46', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599724, '2020-06-18 06:16:10', 0, NULL, 'select * from elections', 0),
(1599725, '2020-06-18 06:16:12', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599726, '2020-06-18 06:28:59', 0, NULL, 'select * from elections', 0),
(1599727, '2020-06-18 06:29:03', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599728, '2020-06-18 06:29:42', 0, NULL, 'select * from elections', 0),
(1599729, '2020-06-18 06:29:46', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599730, '2020-06-18 06:30:20', 0, NULL, 'select * from elections', 0),
(1599731, '2020-06-18 06:31:26', 0, NULL, 'select * from elections', 0),
(1599732, '2020-06-18 06:31:33', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599733, '2020-06-18 06:32:08', 0, NULL, 'select * from elections', 0),
(1599734, '2020-06-18 06:32:13', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599735, '2020-06-18 06:33:20', 0, NULL, 'select * from elections', 0),
(1599736, '2020-06-18 06:33:22', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599737, '2020-06-18 06:34:06', 0, NULL, 'select * from elections', 0),
(1599738, '2020-06-18 06:34:07', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599739, '2020-06-18 06:35:29', 0, NULL, 'select * from elections', 0),
(1599740, '2020-06-18 06:35:30', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1599741, '2020-06-18 06:35:37', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599742, '2020-06-18 06:40:40', 0, NULL, 'insert into users (username, email, pwd) values (\'test\', \'test\', \'test\')', 0),
(1599743, '2020-06-18 06:40:45', 0, NULL, 'select * from users where  (username = \'test\' and pwd = \'test\')', 0),
(1599744, '2020-06-18 06:40:45', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'9B537358-6C63-43F9-B949-E1EF8FC3F5A4\', 3)', 0),
(1599745, '2020-06-18 06:40:45', 0, NULL, 'SELECT userid, username, email, \'9B537358-6C63-43F9-B949-E1EF8FC3F5A4\' as loginkey  FROM users u  WHERE u.userid = 3', 0),
(1599746, '2020-06-18 06:40:45', 0, NULL, 'select * from elections', 0),
(1599747, '2020-06-18 06:40:47', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599748, '2020-06-18 06:41:40', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599749, '2020-06-18 06:42:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599750, '2020-06-18 16:50:43', 0, NULL, 'select * from users where  (username = \'test\' and pwd = \'test\')', 0),
(1599751, '2020-06-18 16:50:43', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'EC334B17-535E-4844-BF5F-21B748C2BED3\', 3)', 0),
(1599752, '2020-06-18 16:50:43', 0, NULL, 'SELECT userid, username, email, \'EC334B17-535E-4844-BF5F-21B748C2BED3\' as loginkey  FROM users u  WHERE u.userid = 3', 0),
(1599753, '2020-06-18 16:50:43', 0, NULL, 'select * from elections', 0),
(1599754, '2020-06-18 16:50:47', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599755, '2020-06-18 16:55:05', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599756, '2020-06-18 16:55:20', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599757, '2020-06-18 20:05:49', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599758, '2020-06-18 20:05:52', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599759, '2020-06-18 20:06:01', 0, NULL, 'select * from users where  (username = \'sam\' and pwd = \'123\')', 0),
(1599760, '2020-06-18 20:06:01', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'322C9175-DA49-4CA9-8492-70DD7E987B2B\', 2)', 0),
(1599761, '2020-06-18 20:06:01', 0, NULL, 'SELECT userid, username, email, \'322C9175-DA49-4CA9-8492-70DD7E987B2B\' as loginkey  FROM users u  WHERE u.userid = 2', 0),
(1599762, '2020-06-18 20:06:01', 0, NULL, 'select * from elections', 0),
(1599763, '2020-06-18 20:06:03', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1599764, '2020-06-18 20:06:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599765, '2020-06-18 20:06:16', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599766, '2020-06-18 20:06:59', 0, NULL, 'select * from users where  (username = \'sam\' and pwd = \'123\')', 0),
(1599767, '2020-06-18 20:06:59', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'7EEB8089-E3E3-42E9-AFD4-D04CF52FC135\', 2)', 0),
(1599768, '2020-06-18 20:06:59', 0, NULL, 'SELECT userid, username, email, \'7EEB8089-E3E3-42E9-AFD4-D04CF52FC135\' as loginkey  FROM users u  WHERE u.userid = 2', 0),
(1599769, '2020-06-18 20:06:59', 0, NULL, 'select * from elections', 0),
(1599770, '2020-06-18 20:07:01', 0, NULL, 'select * from users where  (username = \'sam123\' and pwd = \'\')', 0),
(1599771, '2020-06-18 20:07:06', 0, NULL, 'select * from users where  (username = \'sam123\' and pwd = \'sam123\')', 0),
(1599772, '2020-06-18 20:07:07', 0, NULL, 'select * from users where  (username = \'sam123\' and pwd = \'sam123\')', 0),
(1599773, '2020-06-18 20:07:26', 0, NULL, 'select * from users where  (username = \'sam\' and pwd = \'123\')', 0),
(1599774, '2020-06-18 20:07:26', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'674A397C-B4D3-45A8-B40A-1755DD35493E\', 2)', 0),
(1599775, '2020-06-18 20:07:26', 0, NULL, 'SELECT userid, username, email, \'674A397C-B4D3-45A8-B40A-1755DD35493E\' as loginkey  FROM users u  WHERE u.userid = 2', 0),
(1599776, '2020-06-18 20:07:26', 0, NULL, 'select * from elections', 0),
(1599777, '2020-06-18 20:07:28', 0, NULL, 'select * from users where  (username = \'sam\' and pwd = \'123\')', 0),
(1599778, '2020-06-18 20:07:28', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'916A7615-CCFA-44EC-9D8A-31E5A2EEB659\', 2)', 0),
(1599779, '2020-06-18 20:07:28', 0, NULL, 'SELECT userid, username, email, \'916A7615-CCFA-44EC-9D8A-31E5A2EEB659\' as loginkey  FROM users u  WHERE u.userid = 2', 0),
(1599780, '2020-06-18 20:07:28', 0, NULL, 'select * from elections', 0),
(1599781, '2020-06-18 20:07:44', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599782, '2020-06-18 20:07:51', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599783, '2020-06-18 20:07:55', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1599784, '2020-06-18 20:07:59', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599785, '2020-06-18 20:07:59', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599786, '2020-06-18 20:08:01', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599787, '2020-06-18 20:08:03', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599788, '2020-06-18 20:08:07', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599789, '2020-06-18 20:08:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599790, '2020-06-18 20:08:59', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599791, '2020-06-18 20:09:59', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599792, '2020-06-18 20:11:38', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599793, '2020-06-18 20:12:19', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599794, '2020-06-30 01:24:28', 0, NULL, 'select * from users where  (username = \'Sam\' and pwd = \'1234\')', 0),
(1599795, '2020-06-30 01:24:41', 0, NULL, 'select * from users where  (username = \'Samh\' and pwd = \'1234\')', 0),
(1599796, '2020-06-30 01:24:56', 0, NULL, 'select * from users where  (username = \'Sam\' and pwd = \'12345\')', 0),
(1599797, '2020-06-30 01:25:06', 0, NULL, 'select * from users where  (username = \'Sam\' and pwd = \'1234\')', 0),
(1599798, '2020-06-30 01:25:17', 0, NULL, 'select * from users where  (username = \'Samh\' and pwd = \'12335\')', 0),
(1599799, '2020-06-30 01:25:19', 0, NULL, 'select * from users where  (username = \'Samh\' and pwd = \'1233\')', 0),
(1599800, '2020-06-30 01:28:08', 0, NULL, 'insert into users (username, email, pwd) values (\'Hernandez_si@yahoo.com\', \'Hernandez_si@yahoo.com\', \'SamAGH22\')', 0),
(1599801, '2020-06-30 01:28:43', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'SamAGH22\')', 0),
(1599802, '2020-06-30 01:28:43', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'12886100-E566-43A0-A305-634AF0E73869\', 4)', 0),
(1599803, '2020-06-30 01:28:43', 0, NULL, 'SELECT userid, username, email, \'12886100-E566-43A0-A305-634AF0E73869\' as loginkey  FROM users u  WHERE u.userid = 4', 0),
(1599804, '2020-06-30 01:28:43', 0, NULL, 'select * from elections', 0),
(1599805, '2020-06-30 01:28:47', 0, NULL, 'select * from elections', 0),
(1599806, '2020-06-30 01:31:29', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599807, '2020-06-30 01:31:45', 0, NULL, 'select * from elections', 0),
(1599808, '2020-06-30 01:32:39', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599809, '2020-06-30 01:32:45', 0, NULL, 'select * from elections', 0),
(1599810, '2020-06-30 01:34:34', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599811, '2020-06-30 01:34:43', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599812, '2020-06-30 01:36:42', 0, NULL, 'select * from elections', 0),
(1599813, '2020-06-30 01:40:18', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599814, '2020-07-16 02:09:11', 0, NULL, 'select * from users where  (username = \'\' and pwd = \'\')', 0),
(1599815, '2020-07-16 02:26:33', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599816, '2020-07-16 02:26:33', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'DF950BF8-EB57-422D-A31D-36DC559E6090\', 1)', 0),
(1599817, '2020-07-16 02:26:33', 0, NULL, 'SELECT userid, username, email, \'DF950BF8-EB57-422D-A31D-36DC559E6090\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599818, '2020-07-16 02:26:33', 0, NULL, 'select * from elections', 0),
(1599819, '2020-07-16 03:02:30', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'test@mail.com\', \'test@mail.com\', \'12345\', \'\', \'\')', 0),
(1599820, '2020-07-16 03:03:56', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'test@test.com\', \'test@test.com\', \'12345\', \'Name Name2\', \'12345\')', 0),
(1599821, '2020-07-16 03:04:53', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599822, '2020-07-16 03:04:53', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'698967E3-1B11-46A1-966B-19AA14C21340\', 1)', 0),
(1599823, '2020-07-16 03:04:53', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'698967E3-1B11-46A1-966B-19AA14C21340\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599824, '2020-07-16 03:04:53', 0, NULL, 'select * from elections', 0),
(1599825, '2020-07-16 03:05:51', 0, NULL, 'select * from elections', 0),
(1599826, '2020-07-16 03:06:55', 0, NULL, 'select * from elections', 0),
(1599827, '2020-07-16 03:09:32', 0, NULL, 'select * from elections', 0),
(1599828, '2020-07-16 03:10:42', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599829, '2020-07-16 03:11:46', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = \'123\')', 0),
(1599830, '2020-07-16 03:11:46', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'BFAF78D5-51A3-46F2-8D50-59A13BEA8A31\', 1)', 0),
(1599831, '2020-07-16 03:11:46', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'BFAF78D5-51A3-46F2-8D50-59A13BEA8A31\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599832, '2020-07-16 03:11:46', 0, NULL, 'select * from elections', 0),
(1599833, '2020-07-16 03:11:53', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599834, '2020-07-16 03:12:39', 0, NULL, 'select * from elections', 0),
(1599835, '2020-07-16 03:12:40', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599836, '2020-07-16 03:14:19', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599837, '2020-07-16 03:15:09', 0, NULL, 'select * from elections', 0),
(1599838, '2020-07-16 03:15:16', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599839, '2020-07-16 03:15:22', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599840, '2020-07-17 04:09:01', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'Beast_22\')', 0),
(1599841, '2020-07-17 04:09:33', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'Beast_22\')', 0),
(1599842, '2020-07-17 04:10:42', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'SamAGH22\')', 0),
(1599843, '2020-07-17 04:10:42', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'3011521F-6D07-45D4-B020-3A6C3E26B6FB\', 4)', 0),
(1599844, '2020-07-17 04:10:42', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'3011521F-6D07-45D4-B020-3A6C3E26B6FB\' as loginkey  FROM users u  WHERE u.userid = 4', 0),
(1599845, '2020-07-17 04:10:42', 0, NULL, 'select * from elections', 0),
(1599846, '2020-07-17 04:10:55', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599847, '2020-07-22 03:02:00', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'SamAGH22\')', 0),
(1599848, '2020-07-22 03:02:00', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'9FEBA04A-38AB-42B8-A5F4-F5F85C679BD3\', 4)', 0),
(1599849, '2020-07-22 03:02:00', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'9FEBA04A-38AB-42B8-A5F4-F5F85C679BD3\' as loginkey  FROM users u  WHERE u.userid = 4', 0),
(1599850, '2020-07-22 03:02:00', 0, NULL, 'select * from elections', 0),
(1599851, '2020-07-22 03:02:04', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599852, '2020-10-29 06:29:03', 0, NULL, 'select * from users where  (username = \'123\' and pwd = \'\')', 0),
(1599853, '2020-10-29 06:31:39', 0, NULL, 'select * from users where  (username = \'test\' and pwd = \'test\')', 0),
(1599854, '2020-10-29 06:31:39', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'7D462E87-0324-47CA-9F3B-D9B2F6B2FE6B\', 3)', 0),
(1599855, '2020-10-29 06:31:39', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'7D462E87-0324-47CA-9F3B-D9B2F6B2FE6B\' as loginkey  FROM users u  WHERE u.userid = 3', 0),
(1599856, '2020-10-29 06:31:39', 0, NULL, 'select * from elections', 0),
(1599857, '2020-10-29 06:33:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599858, '2020-10-29 06:54:33', 0, NULL, 'select * from elections', 0),
(1599859, '2020-10-29 06:54:34', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599860, '2020-10-29 07:02:24', 0, NULL, 'select * from elections', 0),
(1599861, '2020-10-29 07:02:26', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599862, '2020-10-29 07:07:23', 0, NULL, 'select * from elections', 0),
(1599863, '2020-10-29 07:07:25', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599864, '2020-10-29 07:07:50', 0, NULL, 'select * from elections', 0),
(1599865, '2020-10-29 07:07:52', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599866, '2020-10-29 07:08:05', 0, NULL, 'select * from elections', 0),
(1599867, '2020-10-29 07:08:07', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599868, '2020-10-29 07:09:03', 0, NULL, 'select * from elections', 0),
(1599869, '2020-10-29 07:09:04', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599870, '2020-10-29 07:12:02', 0, NULL, 'select * from elections', 0),
(1599871, '2020-10-29 07:12:03', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599872, '2020-10-29 07:12:14', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599873, '2020-10-29 07:12:17', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599874, '2020-10-29 07:12:49', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599875, '2020-10-29 07:13:51', 0, NULL, 'select * from elections', 0),
(1599876, '2020-10-29 07:13:52', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599877, '2020-10-29 07:15:01', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599878, '2020-10-29 07:15:04', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599879, '2020-10-29 14:47:42', 0, NULL, 'select * from users where  (username = \'test\' and pwd = \'test\')', 0),
(1599880, '2020-10-29 14:47:42', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'52AA0AA3-FC5F-428A-9DC4-CC1CBC8C4BDE\', 3)', 0),
(1599881, '2020-10-29 14:47:42', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'52AA0AA3-FC5F-428A-9DC4-CC1CBC8C4BDE\' as loginkey  FROM users u  WHERE u.userid = 3', 0),
(1599882, '2020-10-29 14:47:42', 0, NULL, 'select * from elections', 0),
(1599883, '2020-10-29 14:53:13', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599884, '2020-10-29 14:53:23', 0, NULL, 'select * from elections', 0),
(1599885, '2020-10-29 14:53:31', 0, NULL, 'select * from elections', 0),
(1599886, '2020-10-29 14:53:34', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599887, '2020-10-29 14:53:35', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599888, '2020-10-29 14:53:35', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599889, '2020-10-29 14:58:13', 0, NULL, 'select * from elections', 0),
(1599890, '2020-10-29 14:58:14', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599891, '2020-10-29 14:58:16', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599892, '2020-10-29 14:58:16', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599893, '2020-10-29 14:58:39', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1599894, '2020-10-29 14:58:39', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1599895, '2020-11-24 02:20:30', 0, NULL, 'select * from users where  (username = \'Sam\' and pwd = \'12345\')', 0),
(1599896, '2020-11-24 02:20:45', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'Beast_22\')', 0),
(1599897, '2020-11-24 02:20:51', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'12345\')', 0),
(1599898, '2020-11-24 02:21:01', 0, NULL, 'select * from users where  (username = \'Sam\' and pwd = \'1234\')', 0),
(1599899, '2020-11-24 02:24:32', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'hernandez_si@yahoo.com\', \'hernandez_si@yahoo.com\', \'SamAGH22\', \'Sam\', \'45209\')', 0),
(1599900, '2020-11-24 02:24:48', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'SamAGH22\')', 0),
(1599901, '2020-11-24 02:24:48', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'FB337035-F88D-4A5B-ADA3-56D88B8150A7\', 7)', 0),
(1599902, '2020-11-24 02:24:48', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'FB337035-F88D-4A5B-ADA3-56D88B8150A7\' as loginkey  FROM users u  WHERE u.userid = 7', 0),
(1599903, '2020-11-24 02:24:48', 0, NULL, 'select * from elections', 0),
(1599904, '2020-11-24 02:24:55', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599905, '2020-11-24 02:25:18', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599906, '2020-11-24 02:25:18', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599907, '2020-11-24 02:26:05', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'SamAGH22\')', 0),
(1599908, '2020-11-24 02:26:05', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'DEC47EA6-5A90-42CC-A7B9-3B2A136E2AC2\', 7)', 0),
(1599909, '2020-11-24 02:26:05', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'DEC47EA6-5A90-42CC-A7B9-3B2A136E2AC2\' as loginkey  FROM users u  WHERE u.userid = 7', 0),
(1599910, '2020-11-24 02:26:06', 0, NULL, 'select * from elections', 0),
(1599911, '2020-11-24 02:26:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599912, '2020-11-24 02:26:12', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599913, '2020-11-24 02:26:12', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599914, '2020-11-24 02:26:22', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'SamAGH22\')', 0),
(1599915, '2020-11-24 02:26:22', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'88D8296F-5B15-4D28-A436-55F253FF15FC\', 7)', 0),
(1599916, '2020-11-24 02:26:22', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'88D8296F-5B15-4D28-A436-55F253FF15FC\' as loginkey  FROM users u  WHERE u.userid = 7', 0),
(1599917, '2020-11-24 02:26:22', 0, NULL, 'select * from elections', 0),
(1599918, '2020-11-24 02:26:26', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599919, '2020-11-24 02:26:40', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1599920, '2020-11-24 02:26:40', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1599921, '2020-12-23 03:48:34', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1599922, '2020-12-23 03:48:34', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'E4DD603D-5CE1-4886-BC26-254943870A0F\', 1)', 0),
(1599923, '2020-12-23 03:48:34', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'E4DD603D-5CE1-4886-BC26-254943870A0F\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1599924, '2020-12-23 03:48:34', 0, NULL, 'select * from elections', 0),
(1599925, '2020-12-23 03:48:39', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599926, '2020-12-23 03:52:23', 0, NULL, 'select * from elections', 0),
(1599927, '2020-12-23 03:52:24', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599928, '2020-12-23 03:52:39', 0, NULL, 'select * from elections', 0),
(1599929, '2020-12-23 03:52:40', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599930, '2020-12-23 03:52:42', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599931, '2020-12-23 03:52:42', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599932, '2020-12-23 03:53:34', 0, NULL, 'select * from elections', 0),
(1599933, '2020-12-23 03:53:36', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599934, '2020-12-23 03:53:41', 0, NULL, 'select * from questions where candidateid = 5', 0),
(1599935, '2020-12-23 03:53:41', 0, NULL, 'select * from policies where candidateid = 5', 0),
(1599936, '2020-12-23 03:55:18', 0, NULL, 'select * from elections', 0),
(1599937, '2020-12-23 03:55:19', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599938, '2020-12-23 03:56:14', 0, NULL, 'select * from elections', 0),
(1599939, '2020-12-23 03:56:16', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599940, '2020-12-23 03:56:23', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1599941, '2020-12-23 03:56:23', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1599942, '2020-12-23 03:56:33', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599943, '2020-12-30 00:20:08', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'Beast_22\')', 0),
(1599944, '2020-12-30 00:20:35', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'1234\')', 0),
(1599945, '2020-12-30 00:20:42', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'12345\')', 0),
(1599946, '2020-12-30 00:20:51', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'beast22\')', 0),
(1599947, '2020-12-30 00:21:15', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'AGH22311\')', 0),
(1599948, '2020-12-30 00:21:52', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'123456\')', 0),
(1599949, '2020-12-30 00:22:33', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'Andguideher\')', 0),
(1599950, '2020-12-30 00:22:46', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'Cincinnati250333\')', 0),
(1599951, '2020-12-30 00:22:47', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'Cincinnati250333\')', 0),
(1599952, '2020-12-30 00:23:00', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'tbzpjpcb\')', 0),
(1599953, '2020-12-30 00:23:11', 0, NULL, 'select * from users where  (username = \'Hernandez_si@yahoo.com\' and pwd = \'AGH22311\')', 0),
(1599954, '2020-12-30 00:24:14', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'Andguideher@gmail.com\', \'Andguideher@gmail.com\', \'Beast_22\', \'Sam\', \'Beast_22\')', 0),
(1599955, '2020-12-30 00:24:43', 0, NULL, 'select * from users where  (username = \'Andguider@gmail.com\' and pwd = \'AGH22311\')', 0),
(1599956, '2020-12-30 00:24:54', 0, NULL, 'select * from users where  (username = \'Andguider@gmail.com\' and pwd = \'Beast_22\')', 0),
(1599957, '2020-12-30 00:26:03', 0, NULL, 'select * from users where  (username = \'Andguider@gmail.com\' and pwd = \'Beast_22\')', 0),
(1599958, '2020-12-30 00:26:14', 0, NULL, 'select * from users where  (username = \'Andguider@gmail.com\' and pwd = \'Beast-22\')', 0),
(1599959, '2020-12-30 00:26:15', 0, NULL, 'select * from users where  (username = \'Andguider@gmail.com\' and pwd = \'Beast-22\')', 0),
(1599960, '2020-12-31 02:15:07', 0, NULL, 'select * from users where  (username = \'Sam\' and pwd = \'123\')', 0),
(1599961, '2020-12-31 02:15:07', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'8F45DDC6-DD86-4EA7-BA28-577246DBCF66\', 2)', 0),
(1599962, '2020-12-31 02:15:07', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'8F45DDC6-DD86-4EA7-BA28-577246DBCF66\' as loginkey  FROM users u  WHERE u.userid = 2', 0),
(1599963, '2020-12-31 02:15:07', 0, NULL, 'select * from elections', 0),
(1599964, '2020-12-31 02:15:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599965, '2020-12-31 02:15:23', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599966, '2020-12-31 02:15:23', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599967, '2020-12-31 02:16:06', 0, NULL, 'select * from elections', 0),
(1599968, '2020-12-31 02:16:07', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599969, '2020-12-31 02:16:12', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1599970, '2020-12-31 02:16:12', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1599971, '2020-12-31 02:16:45', 0, NULL, 'select * from elections', 0),
(1599972, '2020-12-31 02:16:48', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599973, '2020-12-31 02:16:54', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1599974, '2020-12-31 02:16:54', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1599975, '2021-01-22 20:31:23', 0, NULL, 'select * from users where  (username = \'\' and pwd = \'\')', 0),
(1599976, '2021-02-18 00:14:10', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'Hallackjohn@gmail.com\', \'Hallackjohn@gmail.com\', \'test\', \'John\', \'45209\')', 0),
(1599977, '2021-02-18 00:14:52', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'test\')', 0),
(1599978, '2021-02-18 00:14:52', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'436FDCF1-73C4-442B-98E6-1AABB4201B1C\', 9)', 0),
(1599979, '2021-02-18 00:14:52', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'436FDCF1-73C4-442B-98E6-1AABB4201B1C\' as loginkey  FROM users u  WHERE u.userid = 9', 0),
(1599980, '2021-02-18 00:14:53', 0, NULL, 'select * from elections', 0),
(1599981, '2021-02-18 00:15:15', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599982, '2021-02-18 00:16:28', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1599983, '2021-02-18 00:16:28', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1599984, '2021-02-18 00:20:44', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1599985, '2021-02-18 00:20:44', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1599986, '2021-02-19 01:49:45', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'test\')', 0),
(1599987, '2021-02-19 01:49:45', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'B9979668-FD5E-40AB-8BD8-08FAABE5648D\', 9)', 0),
(1599988, '2021-02-19 01:49:45', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'B9979668-FD5E-40AB-8BD8-08FAABE5648D\' as loginkey  FROM users u  WHERE u.userid = 9', 0),
(1599989, '2021-02-19 01:49:45', 0, NULL, 'select * from elections', 0),
(1599990, '2021-02-19 01:49:47', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599991, '2021-02-19 01:50:05', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599992, '2021-02-19 01:50:07', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1599993, '2021-02-19 01:50:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599994, '2021-02-19 01:50:12', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1599995, '2021-02-19 01:50:24', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1599996, '2021-02-19 01:50:27', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1599997, '2021-02-19 01:50:40', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1599998, '2021-02-19 01:50:41', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1599999, '2021-02-19 01:50:41', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600000, '2021-07-14 11:28:02', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'Pmnashert@gmail.com\', \'Pmnashert@gmail.com\', \'paul171\', \'Paul Nashert\', \'46240\')', 0),
(1600001, '2021-07-14 11:28:02', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'Pmnashert@gmail.com\', \'Pmnashert@gmail.com\', \'paul171\', \'Paul Nashert\', \'46240\')', 0),
(1600002, '2021-07-14 11:28:09', 0, NULL, 'select * from users where  (username = \'Pmnashert@gmail.com\' and pwd = \'paul171\')', 0),
(1600003, '2021-07-14 11:28:09', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'D2358CE5-03D0-46A5-A2CC-495BA03B6518\', 11)', 0),
(1600004, '2021-07-14 11:28:09', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'D2358CE5-03D0-46A5-A2CC-495BA03B6518\' as loginkey  FROM users u  WHERE u.userid = 11', 0),
(1600005, '2021-07-14 11:28:09', 0, NULL, 'select * from elections', 0),
(1600006, '2021-07-14 11:28:21', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600007, '2021-07-14 11:28:35', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600008, '2021-07-14 11:28:35', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600009, '2021-07-14 11:29:05', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600010, '2021-07-14 11:29:05', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600011, '2021-07-14 11:29:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600012, '2021-07-14 11:29:10', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600013, '2021-07-14 11:29:10', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600014, '2021-07-14 11:29:26', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600015, '2021-07-14 11:29:26', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600016, '2021-08-19 10:54:24', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'deepak@alchemytech.ca\', \'deepak@alchemytech.ca\', \'Alchemy@2812\', \'Deepak\', \'560060\')', 0),
(1600017, '2021-08-19 10:54:44', 0, NULL, 'select * from users where  (username = \'deepak@alchemytech.ca\' and pwd = \'Alchemy@2812\')', 0),
(1600018, '2021-08-19 10:54:44', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'23E73596-9B60-4DA2-AFE0-E1448CB3CEB1\', 12)', 0),
(1600019, '2021-08-19 10:54:44', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'23E73596-9B60-4DA2-AFE0-E1448CB3CEB1\' as loginkey  FROM users u  WHERE u.userid = 12', 0),
(1600020, '2021-08-19 10:54:44', 0, NULL, 'select * from elections', 0),
(1600021, '2021-08-19 10:54:52', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600022, '2021-08-19 10:54:57', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600023, '2021-08-19 10:54:57', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600024, '2021-08-19 10:55:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600025, '2021-08-19 10:55:13', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600026, '2021-08-19 10:55:13', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600027, '2021-08-19 10:55:46', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600028, '2021-08-19 10:55:49', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600029, '2021-08-19 10:55:49', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600030, '2021-08-19 10:57:54', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600031, '2021-08-19 10:57:55', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600032, '2021-08-19 10:57:55', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600033, '2021-08-19 10:57:59', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600034, '2021-08-19 10:58:01', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600035, '2021-08-19 10:58:01', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600036, '2021-08-24 06:03:53', 0, NULL, 'select * from users where  (username = \'deepak@alchemytech.ca\' and pwd = \'Alchemy@2812\')', 0),
(1600037, '2021-08-24 06:03:53', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'21AF0062-6332-4BD6-83AE-9E7788B659C9\', 12)', 0),
(1600038, '2021-08-24 06:03:53', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'21AF0062-6332-4BD6-83AE-9E7788B659C9\' as loginkey  FROM users u  WHERE u.userid = 12', 0),
(1600039, '2021-08-24 06:03:53', 0, NULL, 'select * from elections', 0),
(1600040, '2021-08-24 06:04:06', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600041, '2021-08-24 06:04:12', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600042, '2021-08-24 06:04:12', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600043, '2021-11-10 14:36:24', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'jackson.zartman@gmail.com\', \'jackson.zartman@gmail.com\', \'Tipwrigfen1!\', \'Jackson Zartman\', \'80211\')', 0),
(1600044, '2021-11-10 14:36:56', 0, NULL, 'select * from users where  (username = \'Jackson.Zartman@gmail.com\' and pwd = \'Tipwrigfen1!\')', 0),
(1600045, '2021-11-10 14:36:56', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'4C3BEE74-322C-4718-8880-1035D48770A8\', 13)', 0),
(1600046, '2021-11-10 14:36:56', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'4C3BEE74-322C-4718-8880-1035D48770A8\' as loginkey  FROM users u  WHERE u.userid = 13', 0),
(1600047, '2021-11-10 14:36:56', 0, NULL, 'select * from elections', 0),
(1600048, '2021-11-10 14:36:57', 0, NULL, 'select * from users where  (username = \'Jackson.Zartman@gmail.com\' and pwd = \'Tipwrigfen1!\')', 0),
(1600049, '2021-11-10 14:36:57', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'9C72BB03-1794-49A8-A4E8-CC7396BB3AB6\', 13)', 0),
(1600050, '2021-11-10 14:36:57', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'9C72BB03-1794-49A8-A4E8-CC7396BB3AB6\' as loginkey  FROM users u  WHERE u.userid = 13', 0),
(1600051, '2021-11-10 14:36:57', 0, NULL, 'select * from elections', 0),
(1600052, '2021-11-10 14:37:01', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600053, '2021-11-10 14:37:10', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600054, '2021-11-10 14:37:10', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600055, '2021-11-25 08:31:17', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'adezwart22@icloud.com\', \'adezwart22@icloud.com\', \'axn4vru-rng-cqm2DBX\', \'AGJ\', \'axn4vru-rng-cqm2DBX\')', 0),
(1600056, '2021-11-25 08:31:21', 0, NULL, 'select * from users where  (username = \'adezwart22@icloud.com\' and pwd = \'axn4vru-rng-cqm2DBX\')', 0);
INSERT INTO `syslog` (`logid`, `timestamp`, `msgcode`, `msgtype`, `message`, `userid`) VALUES
(1600057, '2021-11-25 08:31:21', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'5C935E77-215A-4BAC-ACE5-AEA8FDC10AE1\', 14)', 0),
(1600058, '2021-11-25 08:31:21', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'5C935E77-215A-4BAC-ACE5-AEA8FDC10AE1\' as loginkey  FROM users u  WHERE u.userid = 14', 0),
(1600059, '2021-11-25 08:31:21', 0, NULL, 'select * from elections', 0),
(1600060, '2021-11-25 08:31:30', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600061, '2021-11-25 08:31:41', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600062, '2021-11-25 08:31:41', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600063, '2022-01-14 16:01:54', 0, NULL, 'select * from users where  (username = \'robert@schouwenburg.com\' and pwd = \'Zg4AC^&LATRtdh4pYEe$Yemh2K7@\')', 0),
(1600064, '2022-01-14 16:02:17', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'robert@schouwenburg.com\', \'robert@schouwenburg.com\', \'Zg4AC^&LATRtdh4pYEe$Yemh2K7@\', \'Robert Schouwenburg\', \'60156\')', 0),
(1600065, '2022-01-14 16:02:27', 0, NULL, 'select * from users where  (username = \'robert@schouwenburg.com\' and pwd = \'Zg4AC^&LATRtdh4pYEe$Yemh2K7@\')', 0),
(1600066, '2022-01-14 16:02:27', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'8A3592C0-341E-4D81-9D0D-52B24BF4DBF4\', 15)', 0),
(1600067, '2022-01-14 16:02:27', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'8A3592C0-341E-4D81-9D0D-52B24BF4DBF4\' as loginkey  FROM users u  WHERE u.userid = 15', 0),
(1600068, '2022-01-14 16:02:27', 0, NULL, 'select * from elections', 0),
(1600069, '2022-01-14 16:02:54', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600070, '2022-01-14 16:02:55', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600071, '2022-01-14 16:02:55', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600072, '2022-01-14 16:03:01', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600073, '2022-01-14 16:03:01', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600074, '2022-01-14 16:03:12', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600075, '2022-01-14 16:03:12', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600076, '2022-01-14 16:03:22', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600077, '2022-01-14 16:03:23', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600078, '2022-01-14 16:03:23', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600079, '2022-01-14 16:03:35', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600080, '2022-01-14 16:03:35', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600081, '2022-01-14 17:20:32', 0, NULL, 'select * from users where  (username = \'\' and pwd = \'\')', 0),
(1600082, '2022-01-20 01:05:30', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.com\' and pwd = \'12345\')', 0),
(1600083, '2022-01-20 01:05:41', 0, NULL, 'select * from users where  (username = \'hernandez_si@yahoo.comm\' and pwd = \'1234\')', 0),
(1600084, '2022-01-20 01:06:25', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'hallackjohn@gmail.com\', \'hallackjohn@gmail.com\', \'aghjohn\', \'John Hallack\', \'45209\')', 0),
(1600085, '2022-01-20 01:07:43', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'aghjohn\')', 0),
(1600086, '2022-01-20 01:07:43', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'7B5A5C5B-8239-4A72-9731-B29E4301FB52\', 16)', 0),
(1600087, '2022-01-20 01:07:43', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'7B5A5C5B-8239-4A72-9731-B29E4301FB52\' as loginkey  FROM users u  WHERE u.userid = 16', 0),
(1600088, '2022-01-20 01:07:43', 0, NULL, 'select * from elections', 0),
(1600089, '2022-01-20 01:07:51', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600090, '2022-01-20 01:07:55', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600091, '2022-01-20 01:07:55', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600092, '2022-01-20 01:08:18', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600093, '2022-01-20 01:08:24', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600094, '2022-01-20 01:08:25', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600095, '2022-01-20 01:08:27', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600096, '2022-01-20 01:08:30', 0, NULL, 'select * from policies where candidateid = 5', 0),
(1600097, '2022-01-20 01:08:30', 0, NULL, 'select * from questions where candidateid = 5', 0),
(1600098, '2022-08-24 01:50:19', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'Gingernap1\')', 0),
(1600099, '2022-08-24 01:50:59', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'X4c7:87k\')', 0),
(1600100, '2022-08-24 01:52:06', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'Hallackjohn@gmail.com\', \'Hallackjohn@gmail.com\', \'johnh1\', \'John\', \'45209\')', 0),
(1600101, '2022-08-24 01:52:12', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'Hallackjohn@gmail.com\', \'Hallackjohn@gmail.com\', \'johnh1\', \'John\', \'45209\')', 0),
(1600102, '2022-08-24 01:53:07', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600103, '2022-08-24 01:53:07', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'332168CC-4D44-46A2-9478-A8FDA5D79BAC\', 18)', 0),
(1600104, '2022-08-24 01:53:07', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'332168CC-4D44-46A2-9478-A8FDA5D79BAC\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600105, '2022-08-24 01:53:07', 0, NULL, 'select * from elections', 0),
(1600106, '2022-08-24 01:53:40', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600107, '2022-08-24 01:54:01', 0, NULL, 'select * from elections', 0),
(1600108, '2022-08-24 01:54:31', 0, NULL, 'select * from elections', 0),
(1600109, '2022-08-24 01:54:31', 0, NULL, 'select * from elections', 0),
(1600110, '2022-08-24 01:54:33', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600111, '2022-08-24 01:54:35', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600112, '2022-08-24 01:54:35', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600113, '2022-08-24 01:54:59', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600114, '2022-08-24 01:55:02', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600115, '2022-08-24 01:55:02', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600116, '2022-08-24 01:55:44', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600117, '2022-08-24 01:56:06', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600118, '2022-08-24 01:56:16', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600119, '2022-08-24 01:56:23', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600120, '2022-08-24 01:56:32', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1600121, '2022-08-24 01:56:32', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1600122, '2022-08-24 01:57:36', 0, NULL, 'select * from elections', 0),
(1600123, '2022-08-24 01:57:51', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600124, '2022-08-24 01:58:01', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600125, '2022-08-24 01:58:04', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600126, '2022-08-24 01:58:04', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600127, '2022-08-24 01:58:18', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600128, '2022-08-24 02:02:49', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600129, '2022-08-24 02:03:59', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600130, '2022-08-24 02:03:59', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600131, '2022-08-24 02:53:30', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'test\', \'test\', \'test\', \'test\', \'11111\')', 0),
(1600132, '2022-08-24 02:53:37', 0, NULL, 'select * from users where  (username = \'test\' and pwd = \'test\')', 0),
(1600133, '2022-08-24 02:53:37', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'E8E9179D-589C-43FC-ADF7-BE61BA9EC7E8\', 19)', 0),
(1600134, '2022-08-24 02:53:37', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'E8E9179D-589C-43FC-ADF7-BE61BA9EC7E8\' as loginkey  FROM users u  WHERE u.userid = 19', 0),
(1600135, '2022-08-24 02:53:37', 0, NULL, 'select * from elections', 0),
(1600136, '2022-09-14 00:19:54', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600137, '2022-09-14 00:19:54', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'D4279DE0-E181-462E-84C0-972783275F08\', 18)', 0),
(1600138, '2022-09-14 00:19:54', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'D4279DE0-E181-462E-84C0-972783275F08\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600139, '2022-09-14 00:19:54', 0, NULL, 'select * from elections', 0),
(1600140, '2022-09-14 00:21:00', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600141, '2022-09-14 00:23:15', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600142, '2022-09-14 00:23:15', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600143, '2022-09-14 00:24:21', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600144, '2022-09-14 00:24:21', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600145, '2022-09-14 00:24:21', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600146, '2022-09-14 00:24:22', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600147, '2022-09-14 00:24:26', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600148, '2022-09-14 00:24:30', 0, NULL, 'select * from elections', 0),
(1600149, '2022-09-14 00:24:35', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600150, '2022-09-14 00:59:31', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600151, '2022-09-14 00:59:31', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'DDB1EC9A-976C-4F3E-AC37-C34C022D6A79\', 18)', 0),
(1600152, '2022-09-14 00:59:31', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'DDB1EC9A-976C-4F3E-AC37-C34C022D6A79\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600153, '2022-09-14 00:59:32', 0, NULL, 'select * from elections', 0),
(1600154, '2022-09-14 01:00:03', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600155, '2022-09-14 01:00:07', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600156, '2022-09-14 01:00:11', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600157, '2022-09-14 01:04:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600158, '2022-09-14 01:05:14', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600159, '2022-09-14 01:05:14', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600160, '2022-09-14 01:28:55', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600161, '2022-09-14 01:39:18', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600162, '2022-09-14 01:39:19', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600163, '2022-09-14 01:39:19', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600164, '2022-09-14 01:53:52', 0, NULL, 'select * from elections', 0),
(1600165, '2022-10-06 02:42:59', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600166, '2022-10-06 02:42:59', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'27A15CE7-4816-4422-8E2B-45E725AFC78E\', 18)', 0),
(1600167, '2022-10-06 02:42:59', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'27A15CE7-4816-4422-8E2B-45E725AFC78E\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600168, '2022-10-06 02:42:59', 0, NULL, 'select * from elections', 0),
(1600169, '2022-10-06 02:43:05', 0, NULL, 'select * from elections', 0),
(1600170, '2022-10-06 03:17:42', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600171, '2022-10-18 01:51:23', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600172, '2022-10-18 01:51:23', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'F5FA54B3-6AD9-477C-BE82-06D6DCD6E598\', 18)', 0),
(1600173, '2022-10-18 01:51:23', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'F5FA54B3-6AD9-477C-BE82-06D6DCD6E598\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600174, '2022-10-18 01:51:23', 0, NULL, 'select * from elections', 0),
(1600175, '2022-10-18 01:51:41', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600176, '2022-10-18 01:52:04', 0, NULL, 'select * from elections', 0),
(1600177, '2022-10-18 01:52:06', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600178, '2022-10-18 01:58:21', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600179, '2022-10-18 01:58:21', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600180, '2022-10-18 02:58:35', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600181, '2022-10-18 02:58:35', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'32C9F374-9C7E-4029-9BF0-64F76B06ED02\', 18)', 0),
(1600182, '2022-10-18 02:58:35', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'32C9F374-9C7E-4029-9BF0-64F76B06ED02\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600183, '2022-10-18 02:58:35', 0, NULL, 'select * from elections', 0),
(1600184, '2022-10-18 02:58:37', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600185, '2022-10-18 02:58:38', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600186, '2022-10-18 02:58:38', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600187, '2023-02-23 00:50:51', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'White\', \'White\', \'12345678\', \'Bob\', \'90002\')', 0),
(1600188, '2023-02-23 00:51:36', 0, NULL, 'insert into users (username, email, pwd, name, zipcode) values (\'brandonschwartz32@gmail.com\', \'brandonschwartz32@gmail.com\', \'12345678\', \'Brandon Schwartz\', \'90001\')', 0),
(1600189, '2023-02-23 00:51:49', 0, NULL, 'select * from users where  (username = \'brandonschwartz32@gmail.com\' and pwd = \'12345678\')', 0),
(1600190, '2023-02-23 00:51:49', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'ECABB6CC-FDC6-4B74-876D-8360E1AD5B27\', 21)', 0),
(1600191, '2023-02-23 00:51:49', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'ECABB6CC-FDC6-4B74-876D-8360E1AD5B27\' as loginkey  FROM users u  WHERE u.userid = 21', 0),
(1600192, '2023-02-23 00:51:49', 0, NULL, 'select * from elections', 0),
(1600193, '2023-02-23 00:51:53', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600194, '2023-02-23 00:51:59', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600195, '2023-02-23 00:51:59', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600196, '2023-02-23 00:52:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600197, '2023-02-23 00:52:12', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600198, '2023-02-23 00:52:14', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 3;', 0),
(1600199, '2023-02-23 00:52:17', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 4;', 0),
(1600200, '2023-02-23 00:52:20', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600201, '2023-02-23 00:52:20', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600202, '2023-02-23 00:58:51', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 2;', 0),
(1600203, '2023-02-23 00:58:54', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600204, '2023-02-23 00:58:54', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600205, '2023-02-23 01:22:58', 0, NULL, 'select * from elections', 0),
(1600206, '2023-03-08 04:16:04', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600207, '2023-03-08 04:16:04', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'04AEAEAA-60A8-46F9-A6B5-22456B4DC489\', 1)', 0),
(1600208, '2023-03-08 04:16:04', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'04AEAEAA-60A8-46F9-A6B5-22456B4DC489\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600209, '2023-03-08 04:16:04', 0, NULL, 'select * from elections', 0),
(1600210, '2023-03-08 04:24:08', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600211, '2023-03-08 04:24:09', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'A511514F-F939-47C4-B019-19A53FF339AF\', 1)', 0),
(1600212, '2023-03-08 04:24:10', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'A511514F-F939-47C4-B019-19A53FF339AF\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600213, '2023-03-08 04:24:11', 0, NULL, 'select * from elections', 0),
(1600214, '2023-03-08 04:25:15', 0, NULL, 'select * from elections', 0),
(1600215, '2023-03-08 04:29:16', 0, NULL, 'select * from elections', 0),
(1600216, '2023-03-08 04:30:03', 0, NULL, 'select * from elections', 0),
(1600217, '2023-03-08 04:31:07', 0, NULL, 'select * from elections', 0),
(1600218, '2023-03-08 04:31:24', 0, NULL, 'select * from elections', 0),
(1600219, '2023-03-08 04:31:43', 0, NULL, 'select * from elections', 0),
(1600220, '2023-03-08 04:32:14', 0, NULL, 'select * from elections', 0),
(1600221, '2023-03-08 04:32:37', 0, NULL, 'select * from elections', 0),
(1600222, '2023-03-08 04:32:57', 0, NULL, 'select * from elections', 0),
(1600223, '2023-03-08 04:33:09', 0, NULL, 'select * from elections', 0),
(1600224, '2023-03-08 04:34:03', 0, NULL, 'select * from elections', 0),
(1600225, '2023-03-08 04:34:15', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'qwe\')', 0),
(1600226, '2023-03-08 04:34:27', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600227, '2023-03-08 04:34:27', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'2A138030-2CAA-4EC3-AE6F-0CDAD82C7218\', 1)', 0),
(1600228, '2023-03-08 04:34:27', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'2A138030-2CAA-4EC3-AE6F-0CDAD82C7218\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600229, '2023-03-08 04:34:27', 0, NULL, 'select * from elections', 0),
(1600230, '2023-03-08 04:34:32', 0, NULL, 'select * from elections', 0),
(1600231, '2023-03-08 04:34:46', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600232, '2023-03-08 04:34:46', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'CF706F90-7C85-498E-9C28-74F87FB589D9\', 1)', 0),
(1600233, '2023-03-08 04:34:46', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'CF706F90-7C85-498E-9C28-74F87FB589D9\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600234, '2023-03-08 04:34:46', 0, NULL, 'select * from elections', 0),
(1600235, '2023-03-08 04:35:14', 0, NULL, 'select * from elections', 0),
(1600236, '2023-03-08 04:35:26', 0, NULL, 'select * from elections', 0),
(1600237, '2023-03-08 04:35:36', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600238, '2023-03-08 04:35:42', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600239, '2023-04-12 05:23:16', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600240, '2023-04-12 05:23:16', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'290C4AB7-2415-4E78-9522-D4D10D3A6CB3\', 1)', 0),
(1600241, '2023-04-12 05:23:16', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'290C4AB7-2415-4E78-9522-D4D10D3A6CB3\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600242, '2023-04-12 05:23:17', 0, NULL, 'select * from elections', 0),
(1600243, '2023-04-12 09:47:54', 0, NULL, 'select * from elections', 0),
(1600244, '2023-04-16 19:11:34', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'qweASD123!@#\')', 0),
(1600245, '2023-04-16 19:11:40', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600246, '2023-04-16 19:11:40', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'711F3FBF-6176-43E1-858F-2B5F151F2B19\', 1)', 0),
(1600247, '2023-04-16 19:11:41', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'711F3FBF-6176-43E1-858F-2B5F151F2B19\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600248, '2023-04-16 19:11:42', 0, NULL, 'select * from elections', 0),
(1600249, '2023-04-16 19:13:56', 0, NULL, 'select * from elections', 0),
(1600250, '2023-04-16 19:15:01', 0, NULL, 'select * from elections', 0),
(1600251, '2023-04-16 19:15:58', 0, NULL, 'select * from elections', 0),
(1600252, '2023-04-16 19:16:17', 0, NULL, 'select * from elections', 0),
(1600253, '2023-04-16 19:16:25', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600254, '2023-04-16 19:16:33', 0, NULL, 'select * from elections', 0),
(1600255, '2023-04-16 19:16:36', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600256, '2023-04-16 19:32:00', 0, NULL, 'select * from elections', 0),
(1600257, '2023-04-16 19:37:20', 0, NULL, 'select * from elections', 0),
(1600258, '2023-04-16 19:55:28', 0, NULL, 'select * from elections', 0),
(1600259, '2023-04-16 19:57:32', 0, NULL, 'select * from elections', 0),
(1600260, '2023-04-16 19:59:43', 0, NULL, 'select * from elections', 0),
(1600261, '2023-04-16 20:01:57', 0, NULL, 'select * from elections', 0),
(1600262, '2023-04-16 20:03:42', 0, NULL, 'select * from elections', 0),
(1600263, '2023-04-16 20:04:22', 0, NULL, 'select * from elections', 0),
(1600264, '2023-04-16 20:05:16', 0, NULL, 'select * from elections', 0),
(1600265, '2023-04-16 20:05:49', 0, NULL, 'select * from elections', 0),
(1600266, '2023-04-16 20:06:03', 0, NULL, 'select * from elections', 0),
(1600267, '2023-04-16 20:06:31', 0, NULL, 'select * from elections', 0),
(1600268, '2023-04-16 20:07:00', 0, NULL, 'select * from elections', 0),
(1600269, '2023-04-16 20:07:26', 0, NULL, 'select * from elections', 0),
(1600270, '2023-04-16 20:08:02', 0, NULL, 'select * from elections', 0),
(1600271, '2023-04-16 20:08:16', 0, NULL, 'select * from elections', 0),
(1600272, '2023-04-16 20:09:19', 0, NULL, 'select * from elections', 0),
(1600273, '2023-04-16 20:09:42', 0, NULL, 'select * from elections', 0),
(1600274, '2023-04-16 20:09:47', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600275, '2023-04-16 20:14:46', 0, NULL, 'select * from elections', 0),
(1600276, '2023-04-16 20:15:46', 0, NULL, 'select * from elections', 0),
(1600277, '2023-04-16 20:16:22', 0, NULL, 'select * from elections', 0),
(1600278, '2023-04-16 20:17:10', 0, NULL, 'select * from elections', 0),
(1600279, '2023-04-16 20:18:17', 0, NULL, 'select * from elections', 0),
(1600280, '2023-04-16 20:19:10', 0, NULL, 'select * from elections', 0),
(1600281, '2023-04-16 20:19:28', 0, NULL, 'select * from elections', 0),
(1600282, '2023-04-16 20:20:12', 0, NULL, 'select * from elections', 0),
(1600283, '2023-04-16 20:20:54', 0, NULL, 'select * from elections', 0),
(1600284, '2023-04-16 20:21:28', 0, NULL, 'select * from elections', 0),
(1600285, '2023-04-16 20:22:01', 0, NULL, 'select * from elections', 0),
(1600286, '2023-04-16 20:22:18', 0, NULL, 'select * from elections', 0),
(1600287, '2023-04-16 20:22:35', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600288, '2023-04-16 20:22:36', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'E3DC2D7E-78E3-44A3-9E69-BE6174568859\', 1)', 0),
(1600289, '2023-04-16 20:22:36', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'E3DC2D7E-78E3-44A3-9E69-BE6174568859\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600290, '2023-04-16 20:22:37', 0, NULL, 'select * from elections', 0),
(1600291, '2023-04-16 20:23:52', 0, NULL, 'select * from elections', 0),
(1600292, '2023-04-16 20:24:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600293, '2023-04-16 20:34:05', 0, NULL, 'select * from elections', 0),
(1600294, '2023-04-16 20:34:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600295, '2023-04-16 20:35:01', 0, NULL, 'select * from elections', 0),
(1600296, '2023-04-16 20:35:04', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600297, '2023-04-16 20:35:32', 0, NULL, 'select * from elections', 0),
(1600298, '2023-04-16 20:35:35', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600299, '2023-04-16 20:36:02', 0, NULL, 'select * from elections', 0),
(1600300, '2023-04-16 20:36:05', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600301, '2023-04-16 20:37:00', 0, NULL, 'select * from elections', 0),
(1600302, '2023-04-16 20:37:06', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600303, '2023-04-16 20:37:36', 0, NULL, 'select * from elections', 0),
(1600304, '2023-04-16 20:37:39', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600305, '2023-04-16 20:38:18', 0, NULL, 'select * from elections', 0),
(1600306, '2023-04-16 20:38:20', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600307, '2023-04-16 20:38:33', 0, NULL, 'select * from elections', 0),
(1600308, '2023-04-16 20:38:36', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600309, '2023-04-16 20:41:11', 0, NULL, 'select * from elections', 0),
(1600310, '2023-04-16 20:41:14', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600311, '2023-04-16 20:42:09', 0, NULL, 'select * from elections', 0),
(1600312, '2023-04-16 20:42:11', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600313, '2023-04-16 20:42:31', 0, NULL, 'select * from elections', 0),
(1600314, '2023-04-16 20:42:33', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600315, '2023-04-16 20:43:09', 0, NULL, 'select * from elections', 0),
(1600316, '2023-04-16 20:43:12', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600317, '2023-04-16 20:43:32', 0, NULL, 'select * from elections', 0),
(1600318, '2023-04-16 20:44:17', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600319, '2023-04-16 20:46:34', 0, NULL, 'select * from elections', 0),
(1600320, '2023-04-16 20:46:36', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600321, '2023-04-16 20:49:06', 0, NULL, 'select * from elections', 0),
(1600322, '2023-04-16 20:49:09', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 1;', 0),
(1600323, '2023-04-16 20:53:49', 0, NULL, 'select * from elections', 0),
(1600324, '2023-04-16 20:54:20', 0, NULL, 'select * from elections', 0),
(1600325, '2023-04-16 20:55:19', 0, NULL, 'select * from elections', 0),
(1600326, '2023-04-16 20:55:34', 0, NULL, 'select * from elections', 0),
(1600327, '2023-04-16 20:55:37', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 0;', 0),
(1600328, '2023-04-16 20:56:56', 0, NULL, 'select * from elections', 0),
(1600329, '2023-04-16 20:57:00', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 0;', 0),
(1600330, '2023-04-16 20:58:52', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 0;', 0),
(1600331, '2023-04-16 21:07:55', 0, NULL, 'select * from elections', 0),
(1600332, '2023-04-16 21:07:59', 0, NULL, 'select * from candidates;', 0),
(1600333, '2023-04-16 21:09:01', 0, NULL, 'select * from elections', 0),
(1600334, '2023-04-16 21:09:05', 0, NULL, 'select * from candidates;', 0),
(1600335, '2023-04-16 21:10:38', 0, NULL, 'select * from elections', 0),
(1600336, '2023-04-16 21:11:00', 0, NULL, 'select * from candidates;', 0),
(1600337, '2023-04-16 21:12:37', 0, NULL, 'select * from elections', 0),
(1600338, '2023-04-16 21:12:40', 0, NULL, 'select * from candidates;', 0),
(1600339, '2023-04-16 21:15:41', 0, NULL, 'select * from elections', 0),
(1600340, '2023-04-16 21:15:45', 0, NULL, 'select * from candidates;', 0),
(1600341, '2023-04-16 21:15:58', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600342, '2023-04-16 21:15:59', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600343, '2023-04-16 21:17:45', 0, NULL, 'select * from elections', 0),
(1600344, '2023-04-16 21:17:48', 0, NULL, 'select * from candidates;', 0),
(1600345, '2023-04-16 21:18:20', 0, NULL, 'select * from elections', 0),
(1600346, '2023-04-16 21:18:23', 0, NULL, 'select * from candidates;', 0),
(1600347, '2023-04-16 21:18:45', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600348, '2023-04-16 21:18:46', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600349, '2023-04-16 21:22:37', 0, NULL, 'select * from elections', 0),
(1600350, '2023-04-16 21:22:40', 0, NULL, 'select * from candidates;', 0),
(1600351, '2023-04-16 21:22:43', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600352, '2023-04-16 21:22:44', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600353, '2023-04-16 21:23:25', 0, NULL, 'select * from elections', 0),
(1600354, '2023-04-16 21:23:29', 0, NULL, 'select * from candidates;', 0),
(1600355, '2023-04-16 21:23:34', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600356, '2023-04-16 21:23:35', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600357, '2023-04-16 21:27:23', 0, NULL, 'select * from elections', 0),
(1600358, '2023-04-16 21:27:26', 0, NULL, 'select * from candidates;', 0),
(1600359, '2023-04-16 21:27:28', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600360, '2023-04-16 21:27:29', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600361, '2023-04-16 21:30:31', 0, NULL, 'select * from elections', 0),
(1600362, '2023-04-16 21:30:35', 0, NULL, 'select * from candidates;', 0),
(1600363, '2023-04-16 21:30:37', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600364, '2023-04-16 21:30:38', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600365, '2023-04-16 21:31:05', 0, NULL, 'select * from elections', 0),
(1600366, '2023-04-16 21:31:09', 0, NULL, 'select * from candidates;', 0),
(1600367, '2023-04-16 21:31:16', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600368, '2023-04-16 21:31:17', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600369, '2023-04-16 21:31:51', 0, NULL, 'select * from elections', 0),
(1600370, '2023-04-16 21:31:55', 0, NULL, 'select * from candidates;', 0),
(1600371, '2023-04-16 21:31:57', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600372, '2023-04-16 21:31:58', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600373, '2023-04-16 21:32:40', 0, NULL, 'select * from candidates;', 0),
(1600374, '2023-04-16 21:32:42', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600375, '2023-04-16 21:32:43', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600376, '2023-04-16 21:36:41', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'123\')', 0),
(1600377, '2023-04-16 21:36:41', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'47C94BF7-ECC6-4F90-A26E-5170AE0AE441\', 1)', 0),
(1600378, '2023-04-16 21:36:41', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'47C94BF7-ECC6-4F90-A26E-5170AE0AE441\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600379, '2023-04-16 21:36:41', 0, NULL, 'select * from elections', 0),
(1600380, '2023-04-16 21:37:08', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 0;', 0),
(1600381, '2023-04-16 21:41:24', 0, NULL, 'select * from elections', 0),
(1600382, '2023-04-16 21:42:19', 0, NULL, 'select * from elections', 0),
(1600383, '2023-04-16 21:43:31', 0, NULL, 'select * from elections', 0),
(1600384, '2023-04-16 21:43:51', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 0;', 0),
(1600385, '2023-04-16 21:44:41', 0, NULL, 'select * from elections', 0),
(1600386, '2023-04-16 21:44:44', 0, NULL, 'select b.* from electioncandidates a left join candidates b on a.candidateid = b.candidateid where a.electionid = 0;', 0),
(1600387, '2023-04-16 21:45:00', 0, NULL, 'select * from elections', 0),
(1600388, '2023-04-16 21:45:04', 0, NULL, 'select * from candidates;', 0),
(1600389, '2023-04-16 21:45:33', 0, NULL, 'select * from elections', 0),
(1600390, '2023-04-16 21:45:35', 0, NULL, 'select * from candidates;', 0),
(1600391, '2023-04-16 21:46:17', 0, NULL, 'select * from elections', 0),
(1600392, '2023-04-16 21:46:25', 0, NULL, 'select * from candidates;', 0),
(1600393, '2023-04-16 21:46:38', 0, NULL, 'select * from elections', 0),
(1600394, '2023-04-16 21:46:42', 0, NULL, 'select * from candidates;', 0),
(1600395, '2023-04-16 21:46:44', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600396, '2023-04-16 21:46:44', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600397, '2023-04-16 21:47:13', 0, NULL, 'select * from candidates;', 0),
(1600398, '2023-04-16 21:47:17', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600399, '2023-04-16 21:47:17', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600400, '2023-04-16 21:47:21', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600401, '2023-04-16 21:47:21', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600402, '2023-04-16 21:47:24', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1600403, '2023-04-16 21:47:24', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1600404, '2023-04-16 23:18:27', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = \'123\')', 0),
(1600405, '2023-04-16 23:18:27', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'9174AE8C-E593-4A69-8B16-611877EAEBD8\', 1)', 0),
(1600406, '2023-04-16 23:18:27', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'9174AE8C-E593-4A69-8B16-611877EAEBD8\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600407, '2023-04-16 23:18:27', 0, NULL, 'select * from elections', 0),
(1600408, '2023-04-16 23:18:41', 0, NULL, 'select * from candidates;', 0),
(1600409, '2023-04-16 23:18:44', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600410, '2023-04-16 23:18:44', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600411, '2023-04-16 23:18:54', 0, NULL, 'select * from candidates;', 0),
(1600412, '2023-04-18 16:42:42', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = \'qwe\')', 0),
(1600413, '2023-04-18 16:42:48', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = \'123\')', 0),
(1600414, '2023-04-18 16:42:48', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'6BEBB179-AB07-4452-97D3-1C0455BE6E7A\', 1)', 0),
(1600415, '2023-04-18 16:42:48', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'6BEBB179-AB07-4452-97D3-1C0455BE6E7A\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600416, '2023-04-18 16:42:49', 0, NULL, 'select * from elections', 0),
(1600417, '2023-04-18 16:42:51', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = \'123\')', 0),
(1600418, '2023-04-18 16:42:51', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'C2FE675A-5404-4884-9FAC-5D4BF73521A5\', 1)', 0),
(1600419, '2023-04-18 16:42:51', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'C2FE675A-5404-4884-9FAC-5D4BF73521A5\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600420, '2023-04-18 16:42:51', 0, NULL, 'select * from elections', 0),
(1600421, '2023-04-18 16:42:53', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = \'123\')', 0),
(1600422, '2023-04-18 16:42:53', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'D9D944CD-7B6C-442D-8111-EB09FB34C9E2\', 1)', 0),
(1600423, '2023-04-18 16:42:53', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'D9D944CD-7B6C-442D-8111-EB09FB34C9E2\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600424, '2023-04-18 16:42:53', 0, NULL, 'select * from elections', 0),
(1600425, '2023-04-18 16:44:31', 0, NULL, 'select * from candidates;', 0),
(1600426, '2023-04-18 16:44:33', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600427, '2023-04-18 16:44:33', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600428, '2023-04-18 16:49:07', 0, NULL, 'select * from candidates;', 0),
(1600429, '2023-04-18 16:49:08', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600430, '2023-04-18 16:49:09', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600431, '2023-05-04 23:44:29', 0, NULL, 'select * from users where  (username = \'hallackjohn@gmail.com\' and pwd = \'johnh1\')', 0),
(1600432, '2023-05-04 23:44:29', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'2230FF42-7A96-42EF-9286-B658137B2F95\', 18)', 0),
(1600433, '2023-05-04 23:44:29', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'2230FF42-7A96-42EF-9286-B658137B2F95\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600434, '2023-05-04 23:44:29', 0, NULL, 'select * from elections', 0),
(1600435, '2023-05-04 23:45:11', 0, NULL, 'select * from candidates;', 0),
(1600436, '2023-05-04 23:46:34', 0, NULL, 'select * from elections', 0),
(1600437, '2023-05-04 23:46:36', 0, NULL, 'select * from candidates;', 0),
(1600438, '2023-05-04 23:46:46', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600439, '2023-05-04 23:46:52', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600440, '2023-05-04 23:48:24', 0, NULL, 'select * from candidates;', 0),
(1600441, '2023-05-04 23:49:38', 0, NULL, 'select * from elections', 0),
(1600442, '2023-05-12 04:33:53', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = PASSWORD(\'123\'))', 0),
(1600443, '2023-05-12 04:33:53', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'41BA8916-FF55-47DE-93FA-5F26194E686A\', 1)', 0),
(1600444, '2023-05-12 04:33:53', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'41BA8916-FF55-47DE-93FA-5F26194E686A\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600445, '2023-05-12 04:33:53', 0, NULL, 'select * from elections', 0),
(1600446, '2023-05-15 00:19:04', 0, NULL, 'select * from users where  (username = \'hallackjohn@gmail.comh\' and pwd = PASSWORD(\'johnh1\'))', 0),
(1600447, '2023-05-15 00:19:23', 0, NULL, 'select * from users where  (username = \'hallackjohn@gmail.comh\' and pwd = PASSWORD(\'johnh1\'))', 0),
(1600448, '2023-05-15 00:19:26', 0, NULL, 'select * from users where  (username = \'hallackjohn@gmail.com\' and pwd = PASSWORD(\'johnh1\'))', 0),
(1600449, '2023-05-15 00:19:26', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'1943C450-DF3C-4805-8AB1-64C68F23BEC1\', 18)', 0),
(1600450, '2023-05-15 00:19:26', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'1943C450-DF3C-4805-8AB1-64C68F23BEC1\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600451, '2023-05-15 00:19:26', 0, NULL, 'select * from elections', 0),
(1600452, '2023-05-15 00:19:41', 0, NULL, 'select * from elections', 0),
(1600453, '2023-05-15 00:19:49', 0, NULL, 'select * from elections', 0),
(1600454, '2023-05-15 00:20:10', 0, NULL, 'select * from elections', 0),
(1600455, '2023-05-15 00:22:23', 0, NULL, 'select * from candidates;', 0),
(1600456, '2023-05-15 00:22:43', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600457, '2023-05-15 00:22:43', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600458, '2023-05-15 00:23:00', 0, NULL, 'select * from policies where candidateid = 5', 0),
(1600459, '2023-05-15 00:23:04', 0, NULL, 'select * from elections', 0),
(1600460, '2023-05-15 00:23:12', 0, NULL, 'select * from candidates;', 0),
(1600461, '2023-05-15 00:23:21', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600462, '2023-05-15 00:23:32', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600463, '2023-05-15 00:23:46', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600464, '2023-05-15 00:24:00', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600465, '2023-05-15 00:24:28', 0, NULL, 'select * from candidates;', 0),
(1600466, '2023-05-15 00:24:52', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600467, '2023-05-15 00:24:53', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600468, '2023-05-15 00:24:58', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1600469, '2023-05-15 00:24:58', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1600470, '2023-05-15 00:25:14', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600471, '2023-05-15 00:25:23', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600472, '2023-05-23 01:41:54', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = PASSWORD(\'123\'))', 0),
(1600473, '2023-05-23 01:41:54', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'30C99A10-3338-4228-898F-7E27893616CE\', 1)', 0),
(1600474, '2023-05-23 01:41:54', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'30C99A10-3338-4228-898F-7E27893616CE\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600475, '2023-05-23 01:41:54', 0, NULL, 'select * from elections', 0),
(1600476, '2023-05-23 01:45:24', 0, NULL, 'select * from users where  (username = \'admin\' and pwd = PASSWORD(\'123\'))', 0),
(1600477, '2023-05-23 01:45:24', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'238622E8-393A-4CB5-BD4C-86FEFDCE2248\', 1)', 0),
(1600478, '2023-05-23 01:45:24', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'238622E8-393A-4CB5-BD4C-86FEFDCE2248\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600479, '2023-05-23 01:45:25', 0, NULL, 'select * from elections', 0),
(1600480, '2023-05-23 01:47:08', 0, NULL, 'select * from elections', 0),
(1600481, '2023-05-23 01:47:44', 0, NULL, 'select * from elections', 0),
(1600482, '2023-05-23 01:49:19', 0, NULL, 'select * from elections', 0),
(1600483, '2023-05-23 01:49:46', 0, NULL, 'select * from elections', 0),
(1600484, '2023-05-23 01:50:11', 0, NULL, 'select * from elections', 0),
(1600485, '2023-05-23 01:50:41', 0, NULL, 'select * from elections', 0),
(1600486, '2023-05-23 01:51:06', 0, NULL, 'select * from elections', 0),
(1600487, '2023-05-23 01:51:11', 0, NULL, 'select * from elections', 0),
(1600488, '2023-05-23 01:52:51', 0, NULL, 'select * from elections', 0),
(1600489, '2023-05-23 01:53:11', 0, NULL, 'select * from elections', 0),
(1600490, '2023-05-23 01:53:26', 0, NULL, 'select * from elections', 0),
(1600491, '2023-05-23 01:53:49', 0, NULL, 'select * from elections', 0),
(1600492, '2023-05-23 01:55:01', 0, NULL, 'select * from elections', 0),
(1600493, '2023-05-23 01:59:20', 0, NULL, 'select * from elections', 0),
(1600494, '2023-05-23 01:59:51', 0, NULL, 'select * from elections', 0),
(1600495, '2023-05-23 02:00:41', 0, NULL, 'select * from elections', 0),
(1600496, '2023-05-23 02:02:17', 0, NULL, 'select * from elections', 0),
(1600497, '2023-05-23 02:02:47', 0, NULL, 'select * from elections', 0),
(1600498, '2023-05-23 02:02:55', 0, NULL, 'select * from candidates;', 0),
(1600499, '2023-05-23 02:03:34', 0, NULL, 'select * from elections', 0),
(1600500, '2023-05-23 02:04:15', 0, NULL, 'select * from elections', 0),
(1600501, '2023-05-23 02:04:50', 0, NULL, 'select * from elections', 0),
(1600502, '2023-05-23 02:04:55', 0, NULL, 'select * from candidates;', 0),
(1600503, '2023-05-23 02:05:37', 0, NULL, 'select * from elections', 0),
(1600504, '2023-05-23 02:05:40', 0, NULL, 'select * from candidates;', 0),
(1600505, '2023-05-23 02:05:42', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600506, '2023-05-23 02:05:42', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600507, '2023-05-23 02:06:16', 0, NULL, 'select * from elections', 0),
(1600508, '2023-05-23 02:06:18', 0, NULL, 'select * from candidates;', 0),
(1600509, '2023-05-23 02:06:20', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600510, '2023-05-23 02:06:20', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600511, '2023-05-23 02:06:38', 0, NULL, 'select * from elections', 0),
(1600512, '2023-05-23 02:06:43', 0, NULL, 'select * from elections', 0),
(1600513, '2023-05-23 02:06:58', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = PASSWORD(\'123\'))', 0),
(1600514, '2023-05-23 02:06:58', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'ED7F1B2E-D3D9-44D9-85A1-96F298EC56CE\', 1)', 0);
INSERT INTO `syslog` (`logid`, `timestamp`, `msgcode`, `msgtype`, `message`, `userid`) VALUES
(1600515, '2023-05-23 02:06:58', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'ED7F1B2E-D3D9-44D9-85A1-96F298EC56CE\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600516, '2023-05-23 02:06:58', 0, NULL, 'select * from elections', 0),
(1600517, '2023-05-23 02:07:23', 0, NULL, 'select * from elections', 0),
(1600518, '2023-05-23 02:07:27', 0, NULL, 'select * from candidates;', 0),
(1600519, '2023-05-23 02:07:29', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600520, '2023-05-23 02:07:29', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600521, '2023-05-23 02:07:36', 0, NULL, 'select * from elections', 0),
(1600522, '2023-05-23 02:07:42', 0, NULL, 'select * from elections', 0),
(1600523, '2023-05-23 02:13:16', 0, NULL, 'select * from elections', 0),
(1600524, '2023-05-23 02:13:36', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = PASSWORD(\'123\'))', 0),
(1600525, '2023-05-23 02:13:36', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'769F0BDA-D6D2-44B8-B2DC-99BA426F66E0\', 1)', 0),
(1600526, '2023-05-23 02:13:36', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'769F0BDA-D6D2-44B8-B2DC-99BA426F66E0\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600527, '2023-05-23 02:13:36', 0, NULL, 'select * from elections', 0),
(1600528, '2023-05-23 02:13:51', 0, NULL, 'select * from elections', 0),
(1600529, '2023-05-23 02:15:00', 0, NULL, 'select * from elections', 0),
(1600530, '2023-05-23 02:15:03', 0, NULL, 'select * from elections', 0),
(1600531, '2023-05-23 02:15:11', 0, NULL, 'select * from elections', 0),
(1600532, '2023-05-23 02:16:14', 0, NULL, 'select * from elections', 0),
(1600533, '2023-05-23 02:16:17', 0, NULL, 'select * from candidates;', 0),
(1600534, '2023-05-23 02:43:12', 0, NULL, 'select * from candidates;', 0),
(1600535, '2023-05-23 05:44:49', 0, NULL, 'select * from users where  (username = \'Admin\' and pwd = PASSWORD(\'123\'))', 0),
(1600536, '2023-05-23 05:44:49', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'F31AEF41-9525-43FA-B758-A369BA327D0C\', 1)', 0),
(1600537, '2023-05-23 05:44:49', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'F31AEF41-9525-43FA-B758-A369BA327D0C\' as loginkey  FROM users u  WHERE u.userid = 1', 0),
(1600538, '2023-05-23 05:44:50', 0, NULL, 'select * from elections', 0),
(1600539, '2023-05-23 05:44:57', 0, NULL, 'select * from candidates;', 0),
(1600540, '2023-05-23 05:44:59', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600541, '2023-05-23 05:44:59', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600542, '2023-05-24 00:29:38', 0, NULL, 'select * from users where  (username = \'Hallackjohn@gmail.com\' and pwd = PASSWORD(\'johnh1\'))', 0),
(1600543, '2023-05-24 00:29:38', 0, NULL, 'INSERT INTO logins (logintime, loginkey, loginuserid) VALUES (NOW(), \'BF1AB995-2478-43B8-BD34-EA619E741D28\', 18)', 0),
(1600544, '2023-05-24 00:29:38', 0, NULL, 'SELECT userid, username, email, zipcode, name, \'BF1AB995-2478-43B8-BD34-EA619E741D28\' as loginkey  FROM users u  WHERE u.userid = 18', 0),
(1600545, '2023-05-24 00:29:39', 0, NULL, 'select * from elections', 0),
(1600546, '2023-05-24 00:29:57', 0, NULL, 'select * from elections', 0),
(1600547, '2023-05-24 00:30:31', 0, NULL, 'select * from candidates;', 0),
(1600548, '2023-05-24 00:30:33', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600549, '2023-05-24 00:30:33', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600550, '2023-05-24 00:31:37', 0, NULL, 'select * from candidates;', 0),
(1600551, '2023-05-24 00:31:40', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600552, '2023-05-24 00:31:40', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600553, '2023-05-24 00:31:44', 0, NULL, 'select * from policies where candidateid = 1', 0),
(1600554, '2023-05-24 00:31:44', 0, NULL, 'select * from questions where candidateid = 1', 0),
(1600555, '2023-05-24 00:31:47', 0, NULL, 'select * from policies where candidateid = 2', 0),
(1600556, '2023-05-24 00:31:47', 0, NULL, 'select * from questions where candidateid = 2', 0),
(1600557, '2023-05-24 00:31:51', 0, NULL, 'select * from policies where candidateid = 3', 0),
(1600558, '2023-05-24 00:31:51', 0, NULL, 'select * from questions where candidateid = 3', 0),
(1600559, '2023-05-24 00:31:56', 0, NULL, 'select * from policies where candidateid = 4', 0),
(1600560, '2023-05-24 00:31:56', 0, NULL, 'select * from questions where candidateid = 4', 0),
(1600561, '2023-05-24 00:32:03', 0, NULL, 'select * from policies where candidateid = 5', 0),
(1600562, '2023-05-24 00:32:03', 0, NULL, 'select * from questions where candidateid = 5', 0),
(1600563, '2023-07-26 18:51:49', 0, NULL, 'select * from users where  (username = \'\' and pwd = PASSWORD(\'\'))', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `displayname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT 'No Name',
  `zipcode` varchar(10) DEFAULT '00000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `pwd`, `displayname`, `email`, `name`, `zipcode`) VALUES
(1, 'admin', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '', '', 'No Name', '00000'),
(2, 'sam', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', '', '', 'No Name', '00000'),
(3, 'test', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', '', 'test', 'No Name', '00000'),
(4, 'Hernandez_si@yahoo.com', '*10389A23B2C9BA1908209B5F5820BD4A92027C92', '', 'Hernandez_si@yahoo.com', 'No Name', '00000'),
(5, 'test@mail.com', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', '', 'test@mail.com', '', ''),
(6, 'test@test.com', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', '', 'test@test.com', 'Name Name2', '12345'),
(7, 'hernandez_si@yahoo.com', '*10389A23B2C9BA1908209B5F5820BD4A92027C92', '', 'hernandez_si@yahoo.com', 'Sam', '45209'),
(8, 'Andguideher@gmail.com', '*94F2E8B79B184B70B8784F7CFF93898290347906', '', 'Andguideher@gmail.com', 'Sam', 'Beast_22'),
(9, 'Hallackjohn@gmail.com', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', '', 'Hallackjohn@gmail.com', 'John', '45209'),
(10, 'Pmnashert@gmail.com', '*04B07055B7D449E7A89152E8813A2EA2844AB105', '', 'Pmnashert@gmail.com', 'Paul Nashert', '46240'),
(11, 'Pmnashert@gmail.com', '*04B07055B7D449E7A89152E8813A2EA2844AB105', '', 'Pmnashert@gmail.com', 'Paul Nashert', '46240'),
(12, 'deepak@alchemytech.ca', '*D398586C57699DCC83197EB8F6F81F53805A6FFB', '', 'deepak@alchemytech.ca', 'Deepak', '560060'),
(13, 'jackson.zartman@gmail.com', '*03CEFED4C62781E5C419DC81DB417429EBE6B3EA', '', 'jackson.zartman@gmail.com', 'Jackson Zartman', '80211'),
(14, 'adezwart22@icloud.com', '*74FBE2F74386104E968A054FE68914CE9811BB49', '', 'adezwart22@icloud.com', 'AGJ', 'axn4vru-rn'),
(15, 'robert@schouwenburg.com', '*90002AABAE7BC90B7108A330F079B4DA63BDF4A0', '', 'robert@schouwenburg.com', 'Robert Schouwenburg', '60156'),
(16, 'hallackjohn@gmail.com', '*43E3B24FD7B5553D5CCD3071ADE9A9B0875D6A7B', '', 'hallackjohn@gmail.com', 'John Hallack', '45209'),
(17, 'Hallackjohn@gmail.com', '*5FF0A3D568C17CC7B7EB3AB20D76FBC6B319F845', '', 'Hallackjohn@gmail.com', 'John', '45209'),
(18, 'Hallackjohn@gmail.com', '*5FF0A3D568C17CC7B7EB3AB20D76FBC6B319F845', '', 'Hallackjohn@gmail.com', 'John', '45209'),
(19, 'test', '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29', '', 'test', 'test', '11111'),
(20, 'White', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', '', 'White', 'Bob', '90002'),
(21, 'brandonschwartz32@gmail.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', '', 'brandonschwartz32@gmail.com', 'Brandon Schwartz', '90001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountID`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidateid`);

--
-- Indexes for table `electioncandidates`
--
ALTER TABLE `electioncandidates`
  ADD PRIMARY KEY (`electionid`,`candidateid`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`electionid`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`linkID`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `pagedata`
--
ALTER TABLE `pagedata`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`policyid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `syslog`
--
ALTER TABLE `syslog`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `electionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `linkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagedata`
--
ALTER TABLE `pagedata`
  MODIFY `pageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `policyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `syslog`
--
ALTER TABLE `syslog`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1600564;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
