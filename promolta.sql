-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2016 at 08:40 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `promolta`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
`ID` bigint(20) NOT NULL,
  `mail_id` bigint(20) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`ID`, `mail_id`, `url`) VALUES
(3, 78, 'http://localhost/promoltafiles/1280x720-V8d.jpg'),
(4, 79, 'http://localhost/promoltafiles/271.2.jpg'),
(5, 82, 'http://localhost/promoltafiles/10985890_705129276281512_4428164574544702475_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `forwards`
--

CREATE TABLE IF NOT EXISTS `forwards` (
  `new_mail_id` bigint(20) NOT NULL,
  `forwarded_mail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forwards`
--

INSERT INTO `forwards` (`new_mail_id`, `forwarded_mail_id`) VALUES
(41, 40),
(42, 40),
(43, 40),
(44, 40),
(49, 47),
(50, 47),
(51, 48),
(52, 48),
(53, 48),
(54, 53),
(55, 53),
(63, 51),
(64, 51),
(65, 3),
(79, 78),
(80, 75),
(81, 75),
(82, 81);

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE IF NOT EXISTS `mails` (
`ID` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `body` text NOT NULL,
  `attachments` tinyint(1) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `sent_status` varchar(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `thread_id` bigint(20) NOT NULL,
  `trashed` tinyint(1) NOT NULL,
  `read_status` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`ID`, `sender_id`, `subject`, `body`, `attachments`, `type`, `sent_status`, `timestamp`, `thread_id`, `trashed`, `read_status`) VALUES
(1, 3, 'wadwadaw', 'wdawfhdi fusadlifahseuifs', 0, 1, 'sent', '2016-12-30 11:06:37', 1, 0, 0),
(2, 3, 'hahakjsbdbd', 'udshfnihsadf', 0, 1, 'sent', '2016-12-30 11:07:01', 2, 0, 0),
(3, 3, 'ajkdjkjksa', 'fiawjdawndawodn', 0, 1, 'sent', '2016-12-30 11:08:08', 3, 0, 0),
(4, 3, 'poipoip', 'lkdshakghns;klgh;aslh skdhgksdhsflhoas oifsdklj ghsahdgkhsdgilyui', 0, 1, 'sent', '2016-12-30 11:08:44', 4, 0, 0),
(5, 3, 'ijdsaofiasef n', 'ihdsaofidhsvodsav', 0, 1, 'sent', '2016-12-30 11:09:09', 5, 0, 0),
(6, 3, 'awdwadawd', 'awfwafawfwafwa', 0, 1, 'sent', '2016-12-30 17:48:25', 6, 1, 0),
(7, 3, 'jsadfk', 'dkhfiaseu fh', 0, 1, 'sent', '2016-12-30 11:17:49', 7, 0, 0),
(8, 3, 'egseg', 'segseg', 0, 1, 'draft', '2016-12-30 12:02:35', 8, 0, 0),
(9, 5, 'FWD: ajkdjkjksa', 'Virat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'draft', '2016-12-30 12:29:22', 9, 0, 0),
(10, 3, '', '', 0, 1, 'draft', '2016-12-30 12:30:29', 10, 0, 0),
(11, 3, '', '', 0, 1, 'draft', '2016-12-30 12:30:32', 11, 0, 0),
(12, 3, '', '', 0, 1, 'draft', '2016-12-30 12:30:34', 12, 0, 0),
(13, 5, 'FWD: ajkdjkjksa', 'Virat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'draft', '2016-12-30 12:33:07', 13, 0, 0),
(14, 5, 'FWD: ajkdjkjksa', 'Virat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'draft', '2016-12-30 12:36:38', 14, 0, 0),
(15, 5, 'FWD: ajkdjkjksa', 'Virat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'draft', '2016-12-30 13:02:53', 15, 0, 0),
(16, 5, 'egwegse', '', 0, 1, 'draft', '2016-12-30 14:38:38', 16, 0, 0),
(17, 5, 'egwegse', 'egwaegfwa', 0, 1, 'draft', '2016-12-30 14:38:42', 17, 0, 0),
(18, 5, 'egwegse', 'egwaegfwa', 0, 1, 'draft', '2016-12-30 20:11:20', 18, 0, 1),
(19, 5, 'egwegse', 'egwaegfwa\n\n\ndwuawgduiawd', 0, 1, 'draft', '2016-12-30 20:15:48', 19, 0, 1),
(20, 5, '', '', 0, 1, 'sent', '2016-12-30 20:06:15', 20, 0, 0),
(21, 5, '', '', 0, 1, 'sent', '2016-12-30 20:07:49', 21, 0, 1),
(22, 5, 'kjfsad', 'sdfasdf', 0, 1, 'draft', '2016-12-30 20:33:01', 22, 0, 1),
(23, 5, 'kjsad fh', '', 0, 1, 'sent', '2016-12-30 19:38:28', 23, 0, 1),
(24, 5, 'FWD: ajkdjkjksa', 'hey new messaghe\nVirat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'draft', '2016-12-30 15:37:00', 24, 0, 0),
(25, 5, 'FWD: ajkdjkjksa', 'hey new messaghe\nVirat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'sent', '2016-12-30 20:07:42', 25, 0, 1),
(26, 5, 'FWD: FWD: ajkdjkjksa', 'looks good right hawhdhawd\nMahendra wrote on 2016-12-30 21:07:00 : hey new messaghe\nVirat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'sent', '2016-12-30 20:58:58', 26, 0, 1),
(27, 5, 'FWD: FWD: ajkdjkjksa', 'looks good right\nMahendra wrote on 2016-12-30 21:07:00 : hey new messaghe\nVirat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 1, 'sent', '2016-12-30 19:39:50', 27, 1, 1),
(28, 5, '', '', 0, 1, 'draft', '2016-12-30 15:37:50', 28, 0, 0),
(29, 5, '', '', 0, 1, 'sent', '2016-12-30 20:09:34', 29, 0, 1),
(30, 5, 'FWD: jsadfk', 'Lets seee\nVirat wrote on 2016-12-30 16:47:49 : dkhfiaseu fh', 0, 1, 'draft', '2016-12-30 17:23:36', 30, 0, 0),
(31, 5, 'FWD: jsadfk', 'Lets seee\nVirat wrote on 2016-12-30 16:47:49 : dkhfiaseu fh', 0, 1, 'sent', '2016-12-30 20:58:53', 31, 0, 1),
(32, 5, 'FWD: jsadfk', 'Virat wrote on 2016-12-30 16:47:49 : dkhfiaseu fh', 0, 1, 'sent', '2016-12-30 17:24:50', 32, 0, 0),
(33, 3, 'FWD: poipoip', 'Forwarding message\n\nVirat wrote on 2016-12-30 16:38:44 : lkdshakghns;klgh;aslh skdhgksdhsflhoas oifsdklj ghsahdgkhsdgilyui', 0, 1, 'draft', '2016-12-30 17:27:55', 33, 0, 0),
(34, 3, 'FWD: poipoip', 'Forwarding message\n\nVirat wrote on 2016-12-30 16:38:44 : lkdshakghns;klgh;aslh skdhgksdhsflhoas oifsdklj ghsahdgkhsdgilyui', 0, 1, 'sent', '2016-12-30 17:27:56', 34, 0, 0),
(35, 3, 'FWD: wadwadaw', 'Forwarding to yuvi\nVirat wrote on 2016-12-30 16:36:37 : wdawfhdi fusadlifahseuifs', 0, 1, 'sent', '2016-12-30 17:29:23', 1, 0, 0),
(36, 3, 'FWD: poipoip', 'Forwarding Rahul Rastogi \n\n\nVirat wrote on 2016-12-30 16:38:44 : lkdshakghns;klgh;aslh skdhgksdhsflhoas oifsdklj ghsahdgkhsdgilyui', 0, 1, 'draft', '2016-12-30 17:29:51', 36, 0, 0),
(37, 3, 'FWD: poipoip', 'Forwarding Rahul Rastogi \n\n\nVirat wrote on 2016-12-30 16:38:44 : lkdshakghns;klgh;aslh skdhgksdhsflhoas oifsdklj ghsahdgkhsdgilyui', 0, 1, 'sent', '2016-12-30 17:29:51', 37, 0, 0),
(38, 3, 'FWD: awdwadawd', 'Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'draft', '2016-12-30 17:48:25', 6, 1, 0),
(39, 3, 'FWD: awdwadawd', 'Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'sent', '2016-12-30 17:48:24', 6, 1, 0),
(40, 3, 'FWD: awdwadawd', 'Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'sent', '2016-12-30 17:48:23', 6, 1, 0),
(41, 3, 'FWD: FWD: awdwadawd', 'awkdnhkwajd\n\nVirat wrote on 2016-12-30 23:18:23 : Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'draft', '2016-12-30 13:22:45', 6, 0, 0),
(42, 3, 'FWD: FWD: awdwadawd', 'awkdnhkwajd\n\nVirat wrote on 2016-12-30 23:18:23 : Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'sent', '2016-12-30 13:22:47', 6, 0, 0),
(43, 3, 'FWD: FWD: awdwadawd', 'awkdnhkwajd\n\nVirat wrote on 2016-12-30 23:18:23 : Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'sent', '2016-12-30 13:23:26', 6, 0, 0),
(44, 3, 'FWD: FWD: awdwadawd', 'awkdnhkwajd\n\nVirat wrote on 2016-12-30 23:18:23 : Forwarding to dravid\n\nVirat wrote on 2016-12-30 16:41:21 : awfwafawfwafwa', 0, 2, 'sent', '2016-12-30 13:25:25', 6, 0, 0),
(45, 3, 'new maiulk', '', 0, 1, 'draft', '2016-12-30 17:55:42', 45, 0, 0),
(46, 3, 'new maiulk', 'hwiudh waid dwadhbw iaduwaidowa', 0, 1, 'draft', '2016-12-30 17:55:46', 46, 0, 0),
(47, 3, 'new maiulk', 'hwiudh waid dwadhbw iaduwaidowa', 0, 1, 'sent', '2016-12-30 19:33:12', 47, 0, 1),
(48, 3, 'new maiulk', 'hwiudh waid dwadhbw iaduwaidowa', 0, 1, 'sent', '2016-12-30 19:33:30', 48, 0, 1),
(49, 3, 'FWD: new maiulk', 'Lets seee what''s happening\n\n\nVirat wrote on 2016-12-30 23:25:46 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'draft', '2016-12-30 19:33:12', 47, 0, 1),
(50, 3, 'FWD: new maiulk', 'Lets seee what''s happeningVirat wrote on 2016-12-30 23:25:46 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'sent', '2016-12-30 19:33:12', 47, 0, 1),
(51, 3, 'FWD: new maiulk', 'New forwars wjdaowdj mawodujwaoduawdwa\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'draft', '2016-12-30 19:33:30', 48, 0, 1),
(52, 3, 'FWD: new maiulk', 'New forwars wjdaowdj mawodujwaoduawdwa adawdwafawfaw\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'draft', '2016-12-30 19:33:30', 48, 0, 1),
(53, 3, 'FWD: new maiulk', 'New forwars wjdaowdj mawodujwaoduawdwa adawdwafawfaw sadefwfawfwa\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'draft', '2016-12-30 19:33:30', 48, 0, 1),
(54, 3, 'FWD: FWD: new maiulk', 'fawyf n89awf\nVirat wrote on 2016-12-30 19:06:47 : New forwars wjdaowdj mawodujwaoduawdwa adawdwafawfaw sadefwfawfwa\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'draft', '2016-12-30 19:33:30', 48, 0, 1),
(55, 3, 'FWD: FWD: new maiulk', 'fawyf n89awf\nVirat wrote on 2016-12-30 19:06:47 : New forwars wjdaowdj mawodujwaoduawdwa adawdwafawfaw sadefwfawfwa\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'sent', '2016-12-30 19:33:30', 48, 0, 1),
(56, 3, 'Sachin Mail', 'awdwadwad', 0, 1, 'sent', '2016-12-31 04:43:21', 56, 0, 1),
(57, 3, 'wdawdaw', 'awdawdaw gweuif we8nf o wdiawuyd awiud', 0, 1, 'sent', '2016-12-30 18:19:08', 57, 0, 0),
(58, 3, '', '', 0, 1, 'draft', '2016-12-30 18:30:04', 58, 0, 0),
(59, 3, '', '', 0, 1, 'draft', '2016-12-30 18:30:07', 59, 0, 0),
(60, 3, '', '', 0, 1, 'draft', '2016-12-30 18:30:09', 60, 0, 0),
(61, 3, '', '', 0, 1, 'draft', '2016-12-30 18:30:13', 61, 0, 0),
(62, 3, '', '', 0, 1, 'draft', '2016-12-31 04:45:16', 62, 0, 1),
(63, 3, 'FWD: FWD: new maiulk', 'dwaudgiawkd\n\nVirat wrote on 2016-12-30 19:02:44 : New forwars wjdaowdj mawodujwaoduawdwa\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'draft', '2016-12-30 19:33:30', 48, 0, 1),
(64, 3, 'FWD: FWD: new maiulk', 'dwaudgiawkd\n\nVirat wrote on 2016-12-30 19:02:44 : New forwars wjdaowdj mawodujwaoduawdwa\n\nVirat wrote on 2016-12-30 23:27:57 : hwiudh waid dwadhbw iaduwaidowa', 0, 2, 'sent', '2016-12-30 19:33:30', 48, 0, 1),
(65, 5, 'FWD: ajkdjkjksa', 'Virat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 2, 'sent', '2016-12-30 19:34:39', 3, 0, 1),
(66, 5, 'RE: jsadfk', 'akwhdadaw\nVirat wrote on 2016-12-30 16:47:49 : dkhfiaseu fh', 0, 3, 'draft', '2016-12-30 15:05:26', 7, 0, 0),
(67, 5, 'RE: FWD: ajkdjkjksa', 'awdgwaid\nMahendra wrote on 2016-12-31 01:04:39 : Virat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 3, 'draft', '2016-12-30 19:39:20', 3, 0, 1),
(68, 5, 'RE: ajkdjkjksa', 'Go to hell\nVirat wrote on 2016-12-30 16:38:08 : fiawjdawndawodn', 0, 3, 'sent', '2016-12-30 19:39:20', 3, 0, 1),
(69, 3, 'new mail', 'Lets see', 0, 1, 'sent', '2016-12-31 07:21:02', 69, 0, 1),
(70, 3, 'new mail again', 'dawdhbiuwa', 0, 1, 'sent', '2016-12-31 04:20:21', 70, 0, 0),
(71, 3, 'new mail once again', 'new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again new mail once again', 0, 1, 'sent', '2016-12-31 04:43:31', 71, 0, 1),
(72, 3, 'awdawd', 'awdawdaw', 0, 1, 'sent', '2016-12-31 04:43:37', 72, 0, 1),
(73, 3, 'pojapwodjp', 'oawidnoawdknad', 0, 1, 'sent', '2016-12-31 07:00:11', 73, 0, 1),
(74, 3, 'opipoi', 'pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj', 0, 1, 'sent', '2016-12-31 04:25:31', 74, 0, 0),
(75, 3, 'awddw', 'awdawd', 0, 1, 'sent', '2016-12-31 06:45:17', 75, 0, 1),
(76, 3, 'wijoijwaoifjaw', 'awfawfawfawfafaw', 0, 1, 'sent', '2016-12-31 07:01:29', 76, 1, 1),
(77, 3, 'kawndkalwnd', 'dawodinawdoiawdnd', 0, 1, 'draft', '2016-12-31 05:43:21', 77, 0, 0),
(78, 3, '', 'awdaawdawd', 1, 1, 'draft', '2016-12-31 06:34:55', 78, 0, 1),
(79, 3, 'FWD: ', 'Virat wrote on 2016-12-31 12:04:55 : awdaawdawd', 1, 2, 'draft', '2016-12-31 06:44:29', 78, 0, 1),
(80, 3, 'FWD: awddw', 'Forwarding with attachment\n\nVirat wrote on 2016-12-31 09:59:23 : awdawd', 0, 2, 'draft', '2016-12-31 06:45:17', 75, 0, 1),
(81, 3, 'FWD: awddw', 'Forwarding with attachment\n\nVirat wrote on 2016-12-31 09:59:23 : awdawd', 0, 2, 'sent', '2016-12-31 06:45:17', 75, 0, 1),
(82, 3, 'FWD: FWD: awddw', 'Forwarding with attachment surely\n\nVirat wrote on 2016-12-31 12:15:17 : Forwarding with attachment\n\nVirat wrote on 2016-12-31 09:59:23 : awdawd', 1, 2, 'sent', '2016-12-31 06:48:54', 75, 0, 1),
(83, 3, 'RE: opipoi', 'qeqw2edqw3\nVirat wrote on 2016-12-31 09:55:31 : pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj', 0, 3, 'draft', '2016-12-31 02:24:09', 74, 0, 0),
(84, 3, 'RE: opipoi', 'qeqw2edqw3\nVirat wrote on 2016-12-31 09:55:31 : pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj pojpojpoj', 0, 3, 'sent', '2016-12-31 02:24:10', 74, 0, 0),
(85, 3, 'RE: FWD: FWD: awddw', 'Reply hawkdha\n\nVirat wrote on 2016-12-31 12:18:54 : Forwarding with attachment surely\n\nVirat wrote on 2016-12-31 12:15:17 : Forwarding with attachment\n\nVirat wrote on 2016-12-31 09:59:23 : awdawd', 0, 3, 'draft', '2016-12-31 06:59:01', 75, 0, 1),
(86, 3, 'RE: FWD: FWD: awddw', 'Reply hawkdha\n\nVirat wrote on 2016-12-31 12:18:54 : Forwarding with attachment surely\n\nVirat wrote on 2016-12-31 12:15:17 : Forwarding with attachment\n\nVirat wrote on 2016-12-31 09:59:23 : awdawd', 0, 3, 'sent', '2016-12-31 06:59:01', 75, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipients`
--

CREATE TABLE IF NOT EXISTS `recipients` (
  `mail_id` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `read_status` tinyint(1) NOT NULL,
  `trashed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipients`
--

INSERT INTO `recipients` (`mail_id`, `to`, `read_status`, `trashed`) VALUES
(2, 4, 0, 0),
(3, 5, 1, 1),
(4, 6, 0, 0),
(5, 10, 0, 0),
(6, 2, 0, 0),
(7, 5, 1, 1),
(8, 4, 0, 0),
(15, 4, 0, 0),
(22, 3, 0, 0),
(23, 4, 0, 0),
(35, 4, 0, 0),
(1, 4, 0, 0),
(54, 4, 0, 0),
(55, 4, 0, 0),
(56, 7, 0, 0),
(57, 4, 0, 0),
(57, 4, 0, 0),
(63, 3, 0, 0),
(64, 3, 0, 0),
(65, 8, 0, 0),
(67, 5, 1, 1),
(68, 3, 0, 0),
(19, 4, 0, 0),
(69, 3, 1, 1),
(69, 3, 1, 1),
(70, 3, 1, 0),
(71, 3, 1, 1),
(71, 3, 1, 1),
(72, 3, 1, 0),
(73, 3, 1, 0),
(74, 3, 1, 0),
(74, 3, 1, 0),
(75, 3, 1, 0),
(76, 3, 1, 1),
(77, 4, 0, 0),
(79, 3, 0, 0),
(80, 5, 0, 0),
(81, 5, 0, 0),
(82, 2, 0, 0),
(83, 3, 1, 0),
(84, 3, 1, 0),
(85, 3, 0, 0),
(86, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `new_mail_id` bigint(20) NOT NULL,
  `replied_mail_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`new_mail_id`, `replied_mail_id`) VALUES
(66, 7),
(67, 65),
(68, 3),
(83, 74),
(84, 74),
(85, 82),
(86, 82);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`ID` bigint(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `username`, `email`, `password`) VALUES
(1, 'Mahendra', 'Sengar', 'msengar', 'sengar.mahi@gmail.com', 'promolta'),
(2, 'Rahul', 'Rastogi', 'rahul', 'rahul.rastogi@gmail.com', 'pramolta'),
(3, 'Virat', 'Kolhi', 'virat', 'virat.kohli@bcci.com', 'promolta'),
(4, 'Yuvraj', 'Singh', 'yuvraj', 'yuvi@bcci.com', 'promolta'),
(5, 'Mahendra', 'Dhoni', 'mdhoni', 'dhoni@bcci.com', 'promolta'),
(6, 'Irfan', 'Pathan', 'irfan', 'pathan@bcci.com', 'promolta'),
(7, 'Sachin', 'Tendulkar', 'sachin', 'sachin@god.com', 'promolta'),
(8, 'Sourav', 'Ganguly', 'sourav', 'dada@bcci.com', 'promolta'),
(9, 'Rahul', 'Dravid', 'rdravid', 'dravid@bcci.com', 'promolta'),
(10, 'Narendra', 'Modi', 'modi', 'modi@india.com', 'promolta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
