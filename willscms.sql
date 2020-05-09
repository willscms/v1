-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 09 mai 2020 à 08:54
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `willscms`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT 'defaultuser@meth0d.org',
  `auth_ticket` varchar(60) DEFAULT NULL,
  `rank` int(1) UNSIGNED DEFAULT 1,
  `rank_vip` int(1) DEFAULT 0,
  `credits` int(11) DEFAULT 50000,
  `seasonal_currency` int(11) NOT NULL DEFAULT 0,
  `vip_points` int(11) DEFAULT 0,
  `activity_points` int(11) DEFAULT 5000,
  `look` char(255) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT 'M',
  `motto` char(50) DEFAULT NULL,
  `account_created` char(12) DEFAULT '0',
  `last_online` int(11) DEFAULT 0,
  `online` enum('0','1') DEFAULT '0',
  `ip_last` varchar(45) DEFAULT '',
  `ip_reg` varchar(45) DEFAULT NULL,
  `home_room` int(10) DEFAULT 0,
  `is_muted` enum('0','1') DEFAULT '0',
  `block_newfriends` enum('0','1') DEFAULT '0',
  `hide_online` enum('0','1') DEFAULT '0',
  `hide_inroom` enum('0','1') DEFAULT '0',
  `vip` enum('0','1') DEFAULT '0',
  `volume` varchar(15) DEFAULT '100,100,100',
  `last_change` int(20) DEFAULT 0,
  `machine_id` varchar(125) DEFAULT '',
  `focus_preference` enum('0','1') DEFAULT '0',
  `chat_preference` enum('0','1') DEFAULT '0',
  `pets_muted` enum('0','1') DEFAULT '0',
  `bots_muted` enum('0','1') DEFAULT '0',
  `advertising_report_blocked` enum('0','1') DEFAULT '0',
  `gotw_points` int(11) DEFAULT 0,
  `ignore_invites` enum('0','1') DEFAULT '0',
  `time_muted` double DEFAULT 0,
  `allow_gifts` enum('0','1') DEFAULT '1',
  `trading_locked` double DEFAULT 0,
  `friend_bar_state` enum('0','1') NOT NULL DEFAULT '1',
  `disable_forced_effects` enum('0','1') NOT NULL DEFAULT '0',
  `allow_mimic` enum('1','0') NOT NULL DEFAULT '1',
  `rangovandeweek` enum('1','0') CHARACTER SET utf8 DEFAULT '0',
  `staff_sinds` text DEFAULT NULL,
  `rank_lijst` text CHARACTER SET utf8 DEFAULT NULL,
  `bcrypt_on` enum('1','0') CHARACTER SET utf8 DEFAULT '1',
  `rank_name` text CHARACTER SET utf8 DEFAULT NULL,
  `team` int(10) DEFAULT NULL,
  `staff_mail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rankup` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `last_offline` double NOT NULL,
  `disabled` int(6) NOT NULL,
  `hote_id` int(11) NOT NULL,
  `avatars` int(11) NOT NULL DEFAULT 49
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mail`, `auth_ticket`, `rank`, `rank_vip`, `credits`, `seasonal_currency`, `vip_points`, `activity_points`, `look`, `gender`, `motto`, `account_created`, `last_online`, `online`, `ip_last`, `ip_reg`, `home_room`, `is_muted`, `block_newfriends`, `hide_online`, `hide_inroom`, `vip`, `volume`, `last_change`, `machine_id`, `focus_preference`, `chat_preference`, `pets_muted`, `bots_muted`, `advertising_report_blocked`, `gotw_points`, `ignore_invites`, `time_muted`, `allow_gifts`, `trading_locked`, `friend_bar_state`, `disable_forced_effects`, `allow_mimic`, `rangovandeweek`, `staff_sinds`, `rank_lijst`, `bcrypt_on`, `rank_name`, `team`, `staff_mail`, `rankup`, `last_offline`, `disabled`, `hote_id`, `avatars`) VALUES
(113, 'Tig3r', 'ca6ab93fae0fd0b38878285d4d3f96eb645be563', 'contact@hybbox-hotel.16mb.com', '', 8, 1, 9012112, 1, 99090, 34104, 'lg-3058-81.ch-225-91.hr-831-37.hd-180-8.sh-290-1408', 'M', '', '1477933239', 1499373296, '0', '::1', '25.111.254.20', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '~9ca37079093534538e255909ab8c74e4', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '0', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1499371167, 0, 0, 49),
(114, 'ShInX', '2bd0f5ee3907069fef04addcd679868ad22daa8e', 'christiangaming670@gmail.com', '', 1, 0, 9001700, 0, 0, 1732, 'hd-180-30.fa-1205-110.lg-3290-110.ch-215-92.sh-305-110.cc-3153-110-92', 'M', 'Hummm... Charal !', '1477996115', 1478086810, '0', '25.51.224.150', '25.51.224.150', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '~27bb947e63be68e88a1c46c448514d4c', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '1', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1478108488, 0, 0, 49),
(115, 'Zoubir-dev', 'a27a8165cd9bc8513766d6673d8e849540e658c9', 'mimi36.mm@gmail.com', '545818a2577aa54965818a2577aa5e785818a2577aa62', 1, 0, 9000600, 0, 0, 607, 'sh-295-62.hr-831-45.ch-215-92.hd-180-3.lg-280-64', 'M', '', '1478006976', 1478012784, '0', '25.50.43.84', '25.50.43.84', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '~126f4c084fb4f2f7f1ec43e1fbf66447', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '0', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1478006976, 0, 0, 49),
(116, 'Warner', 'f3d310e15d5ef9ddfa1987c2b6ead48ed85babf8', 'zaki-zar@hotmail.fr', '', 1, 0, 9000100, 0, 0, 102, 'sh-295-62.hr-831-45.ch-215-92.hd-180-3.lg-280-64', 'M', '', '1478093656', 1478095360, '0', '25.50.116.185', '25.50.116.185', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '~70c9eaf2e5aac1240f2b9897d451ab8d', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '0', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1478093656, 0, 0, 49),
(117, 'Next', '1d070e1f0d125eada04b38fc341684aaf76e4560', 'mathys.pluchart@gmail.com', '1058b08cabb3c3d3258b08cabb3c48758b08cabb3c4e', 1, 0, 9000000, 0, 0, 2, 'sh-295-62.hr-831-45.ch-215-92.hd-180-3.lg-280-64', 'M', '', '1487964679', 0, '0', '25.74.109.32', '25.74.109.32', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '1', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1487964679, 0, 0, 49),
(118, 'Wolfz', '5ba360598fd8f58951dd98fd70bf274eadd29bd9', 'sigmazik@gmail.com', '', 5, 0, 9000700, 0, 0, 712, 'sh-300-1408.hr-828-53.ch-255-110.hd-180-10.lg-285-81', 'M', '', '1492524505', 1492533120, '0', '25.96.57.202', '25.96.57.202', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '~5d23ec059f02f3ffa06198a681a98b0b', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '0', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1492526826, 0, 0, 49),
(119, 'Aiden', '10446ee18d1dba93386e889c517b91f6dfc414a3', 'aiden@gmail.fr', '', 1, 0, 8939900, 0, 0, 2532, 'lg-275-92.fa-1201-92.he-3218-92.ch-3030-92.ha-1012-106.hr-3163-61.sh-290-106.ca-1807-63.hd-209-3.cc-3158-106', 'M', 'Sauvagerie.', '1492605112', 1493667029, '0', '25.45.178.151', '25.45.178.151', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '~62cccd6f0cff4b78c80240cf6547ae02', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '1', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1492712641, 0, 0, 49),
(120, 'Winston', 'ea97676be1d6cf1d85dd1d58b906bca8d4c8e61e', 'adors@gmail.com', NULL, 1, 0, 9000000, 0, 0, 2, 'sh-295-62.hr-831-45.ch-215-92.hd-180-3.lg-280-64', 'M', '', '1492977201', 0, '0', '25.88.153.119', '25.88.153.119', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '1', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1492977201, 0, 0, 49),
(121, 'Steen', '9402aa0f5005d731395fbcf138996d194a87740d', 'sqsdfssd@outlook.fr', NULL, 1, 0, 9000000, 0, 0, 2, 'sh-295-62.hr-831-45.ch-215-92.hd-180-3.lg-280-64', 'M', '', '1493383365', 0, '0', '25.37.112.184', '25.37.112.184', 0, '0', '0', '0', '0', '0', '100,100,100', 0, '', '0', '0', '0', '0', '0', 0, '0', 0, '1', 0, '1', '0', '1', '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 1493383365, 0, 0, 49);

-- --------------------------------------------------------

--
-- Structure de la table `user_achievements`
--

DROP TABLE IF EXISTS `user_achievements`;
CREATE TABLE IF NOT EXISTS `user_achievements` (
  `userid` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `progress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_achievements`
--

INSERT INTO `user_achievements` (`userid`, `group`, `level`, `progress`) VALUES
(113, 'ACH_AllTimeHotelPresence', 4, 1390),
(113, 'ACH_AvatarLooks', 1, 0),
(113, 'ACH_FriendListSize', 0, 4),
(113, 'ACH_Motto', 1, 0),
(113, 'ACH_PetLover', 1, 1),
(113, 'ACH_RoomDecoFloor', 1, 0),
(113, 'ACH_RoomDecoFurniCount', 8, 64),
(113, 'ACH_SelfModChatFloodFilterSeen', 1, 0),
(113, 'ACH_SelfModChatHearRangeSeen', 1, 0),
(113, 'ACH_SelfModChatScrollSpeedSeen', 1, 0),
(113, 'ACH_SelfModDoorModeSeen', 1, 0),
(113, 'ACH_SelfModWalkthroughSeen', 1, 0),
(114, 'ACH_AllTimeHotelPresence', 2, 189),
(114, 'ACH_AvatarLooks', 1, 0),
(114, 'ACH_FriendListSize', 0, 1),
(114, 'ACH_Motto', 1, 0),
(114, 'ACH_PetRespectGiver', 1, 0),
(114, 'ACH_RoomEntry', 1, 3),
(115, 'ACH_AllTimeHotelPresence', 1, 33),
(115, 'ACH_FriendListSize', 0, 1),
(115, 'ACH_RoomEntry', 0, 3),
(116, 'ACH_AllTimeHotelPresence', 0, 20),
(116, 'ACH_RoomEntry', 0, 2),
(118, 'ACH_AllTimeHotelPresence', 1, 64),
(118, 'ACH_AvatarLooks', 1, 0),
(118, 'ACH_FriendListSize', 0, 1),
(118, 'ACH_RoomEntry', 0, 3),
(119, 'ACH_AllTimeHotelPresence', 2, 205),
(119, 'ACH_AvatarLooks', 1, 0),
(119, 'ACH_FriendListSize', 0, 1),
(119, 'ACH_Motto', 1, 0),
(119, 'ACH_RoomEntry', 2, 8);

-- --------------------------------------------------------

--
-- Structure de la table `user_badges`
--

DROP TABLE IF EXISTS `user_badges`;
CREATE TABLE IF NOT EXISTS `user_badges` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `badge_id` varchar(100) NOT NULL,
  `badge_slot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_badges`
--

INSERT INTO `user_badges` (`id`, `user_id`, `badge_id`, `badge_slot`) VALUES
(1005, 113, 'ACH_Motto1', 0),
(1007, 113, 'ACH_AvatarLooks1', 0),
(1008, 113, 'ANON', 0),
(1009, 113, 'ADM', 1),
(1010, 113, '0404T', 0),
(1012, 113, 'MRG04', 0),
(1013, 114, 'ACH_AvatarLooks1', 0),
(1015, 114, 'ACH_Motto1', 0),
(1016, 113, 'ACH_PetLover1', 0),
(1017, 114, 'ACH_PetRespectGiver1', 0),
(1018, 114, 'ACH_RoomEntry1', 0),
(1019, 115, 'ACH_AllTimeHotelPresence1', 0),
(1024, 113, 'ACH_SelfModDoorModeSeen1', 0),
(1025, 113, 'ACH_SelfModWalkthroughSeen1', 0),
(1026, 113, 'ACH_SelfModChatScrollSpeedSeen1', 0),
(1027, 113, 'ACH_SelfModChatFloodFilterSeen1', 0),
(1028, 113, 'ACH_SelfModChatHearRangeSeen1', 0),
(1030, 114, 'ACH_AllTimeHotelPresence2', 0),
(1031, 113, 'ACH_RoomDecoFloor1', 0),
(1033, 113, 'WOUTO', 0),
(1034, 113, 'ACH_AllTimeHotelPresence4', 0),
(1035, 118, 'ACH_AvatarLooks1', 0),
(1036, 118, 'ACH_AllTimeHotelPresence1', 0),
(1039, 119, 'ACH_AvatarLooks1', 0),
(1040, 119, 'ACH_Motto1', 0),
(1042, 119, 'ACH_AllTimeHotelPresence2', 0),
(1043, 119, 'ACH_RoomEntry2', 0),
(1045, 119, 'WOUTO', 1),
(1046, 119, 'MRG01', 2),
(1047, 119, 'CAA', 3),
(1048, 119, 'KO1', 5),
(1049, 119, 'CY3', 4),
(1050, 113, 'ACH_RoomDecoFurniCount8', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_clothing`
--

DROP TABLE IF EXISTS `user_clothing`;
CREATE TABLE IF NOT EXISTS `user_clothing` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `part_id` varchar(25) NOT NULL,
  `part` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_clothing`
--

INSERT INTO `user_clothing` (`id`, `user_id`, `part_id`, `part`) VALUES
(1, 113, '3391', 'clothing_cshorts');

-- --------------------------------------------------------

--
-- Structure de la table `user_effects`
--

DROP TABLE IF EXISTS `user_effects`;
CREATE TABLE IF NOT EXISTS `user_effects` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `effect_id` int(11) DEFAULT 1,
  `total_duration` int(11) DEFAULT 3600,
  `is_activated` enum('0','1') DEFAULT '0',
  `activated_stamp` double DEFAULT 0,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_fastfood`
--

DROP TABLE IF EXISTS `user_fastfood`;
CREATE TABLE IF NOT EXISTS `user_fastfood` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `auth_ticket` varchar(95) NOT NULL DEFAULT '',
  `powerup_sheilds` int(11) NOT NULL DEFAULT 0,
  `powerup_rockets` int(11) NOT NULL DEFAULT 0,
  `powerup_parachutes` int(11) NOT NULL DEFAULT 0,
  `games_played` int(11) NOT NULL DEFAULT 0,
  `games_won` int(11) NOT NULL DEFAULT 0,
  `games_lost` int(11) NOT NULL DEFAULT 0,
  `weekly_score` int(11) NOT NULL DEFAULT 0,
  `previous_score` int(11) NOT NULL DEFAULT 0,
  `total_score` int(11) NOT NULL DEFAULT 0,
  `last_login` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_favorites`
--

DROP TABLE IF EXISTS `user_favorites`;
CREATE TABLE IF NOT EXISTS `user_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_ignores`
--

DROP TABLE IF EXISTS `user_ignores`;
CREATE TABLE IF NOT EXISTS `user_ignores` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ignore_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL,
  `bans` int(11) NOT NULL DEFAULT 0,
  `cautions` int(11) NOT NULL DEFAULT 0,
  `reg_timestamp` double NOT NULL DEFAULT 0,
  `login_timestamp` double NOT NULL DEFAULT 0,
  `cfhs` int(11) NOT NULL DEFAULT 0,
  `cfhs_abusive` int(11) NOT NULL DEFAULT 0,
  `trading_locked` double NOT NULL DEFAULT 0,
  `trading_locks_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_info`
--

INSERT INTO `user_info` (`user_id`, `bans`, `cautions`, `reg_timestamp`, `login_timestamp`, `cfhs`, `cfhs_abusive`, `trading_locked`, `trading_locks_count`) VALUES
(113, 1, 0, 0, 0, 0, 0, 0, 0),
(114, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_presents`
--

DROP TABLE IF EXISTS `user_presents`;
CREATE TABLE IF NOT EXISTS `user_presents` (
  `id` int(11) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `base_id` int(10) UNSIGNED NOT NULL,
  `extra_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_quests`
--

DROP TABLE IF EXISTS `user_quests`;
CREATE TABLE IF NOT EXISTS `user_quests` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `quest_id` int(10) UNSIGNED NOT NULL,
  `progress` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_relationships`
--

DROP TABLE IF EXISTS `user_relationships`;
CREATE TABLE IF NOT EXISTS `user_relationships` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wills_news`
--

DROP TABLE IF EXISTS `wills_news`;
CREATE TABLE IF NOT EXISTS `wills_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `news_image` text NOT NULL,
  `contenu` text NOT NULL,
  `date_publi` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wills_news`
--

INSERT INTO `wills_news` (`id`, `user_id`, `titre`, `description`, `news_image`, `contenu`, `date_publi`) VALUES
(1, 1, 'WillsCMS', 'WillsCMS', '', '<a href=\"https://discord.gg/sZexUeZ\" target=\"_BLANK\">Discord du DEV</a>', '2020-05-09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
