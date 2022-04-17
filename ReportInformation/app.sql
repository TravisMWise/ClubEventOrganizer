-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2022 at 02:25 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`) VALUES
(1, 'Social'),
(2, 'Fundraising'),
(3, 'Tech Talks'),
(4, 'Swimming'),
(5, 'Food'),
(6, 'Protest'),
(7, 'Culture'),
(8, 'Fitness'),
(9, 'Party'),
(10, 'Movies'),
(11, 'Beach'),
(12, 'Springs'),
(13, 'Concert'),
(14, 'Programming'),
(15, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `chatroomcomments`
--

DROP TABLE IF EXISTS `chatroomcomments`;
CREATE TABLE IF NOT EXISTS `chatroomcomments` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Comment` text NOT NULL,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chatroomcomments`
--

INSERT INTO `chatroomcomments` (`ID`, `UserID`, `Comment`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 23, 'cVIwVFFVV1liLzFKbXFEemt3NGNLUT09Ojr2Dg4fLolc3vJVQmyIA4Pg', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(2, 21, 'clBJYTY4NW1PRktJb3JFbkhubmt0cHlKTnNXbnRXYTF5YTg4RTZ0WGV4UT06OizHTmI6PV0McLFniwdotcc=', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(3, 23, 'cmZoenhCWk9IVnY5Z3BQaWxQdDRPZz09OjpH2q5Y9kRDNFx/cRb50i3m', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(4, 19, 'Y2ZpMmlINkpSdTdndjg4OENxQjVPN01qajRqMVNCVk5uQWNzSkt4clloTT06Oo87TgHt4LLNRMFo1jIfL4g=', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(5, 15, 'UmtzTVRrYTFkakxTWFR1MzNzRHZFb0J1bGprZkt0RlpMNWtRK21aSTBNL2NJeHlvWmsrdVIzUURna3QrbXNtWDo64B+jyaQD0QddsisFXfRnWQ==', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(6, 12, 'd3VGMUpuWEhMcHpldGtGR2YzMitTajMyQnhqVGNzVDBJeFlGWjZrZkdxZz06OoJ7eYLSQIiN3fetwozWSJc=', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(7, 21, 'cXpyZDFsRDlYNTFDL2ZxUks2TFNjOXlTUEMwYWFmeE5jTjU3U3ZBY05sTT06Ol9w5Ud1psDaddQWGmjLsh8=', '2022-04-15 22:25:15', '2022-04-16 02:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EventID` int NOT NULL,
  `UserID` int NOT NULL,
  `Text` text,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `EventID` (`EventID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LocationID` int NOT NULL,
  `EventCat` int NOT NULL,
  `ForeignID` int DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `Privacy` int NOT NULL DEFAULT '0',
  `ContactPhone` varchar(255) NOT NULL,
  `ContactEmail` varchar(255) NOT NULL,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `LocationID` (`LocationID`),
  KEY `EventCat` (`EventCat`),
  KEY `ForeignID` (`ForeignID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `LocationID`, `EventCat`, `ForeignID`, `Time`, `Name`, `Description`, `Privacy`, `ContactPhone`, `ContactEmail`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 1, 1, 1, '11:11:00', 'MFZsQzRWdnJpVzcrbit1d1lQckl5UT09OjqrHfZQe9lYKf3GL7FtCgFO', 'YzEvM2pzY1hIUGpPQ29SMEN1c3ZNYjVjYytLVXNyODNQV0JBcXZFZnpQdHBGNWNvaEVjRzdtWE5XckhEYmZBcTo60d9BtfbpzY+4rXLmUJNzLA==', 1, 'RU90YnBMRlRHUzlYRS9USkRwVzErdz09OjogPdJ8814PIcAetue1iA8v', 'RGFiVHArRDdXbzVxL01SM00vVFdPUjliVVBKWWRiVUcrTGFGUFRMOTRNQT06Oq/ExPSbU+gTfdq0Fs8UsLA=', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(2, 2, 7, 1, '22:22:00', 'c0NtektIKzBtank5OUtWUDQ0QzNYZz09Ojr1lXMXVnul0nkZfkc5VJ3E', 'QTBPcU90ZlhjMzlqdWVYd1JtMmJGSXVsdVFuRTlhTXg4eUZDdUs2dEZyUUpjeE85MXMvWi9qNnYvekgzWDNocDo6aWHjhhBRNy/7g5RK2e2WWg==', 0, 'RWphTCtRRjdKUEZJekpSeTVzZVRWUT09OjrhjddXlpPgD432n8BHmJoX', 'T3ZLMkkxdTd4TTFXUzVSeE1qeW5DUT09OjpeWiMQ46lT9JZa4/w4zzK3', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(3, 3, 12, 2, '03:33:00', 'SmZ3UXM2bWFuM29ucmxPNlBOR1FsQT09Ojpn3g+wU1YiLyhgkSsvLdtQ', 'L2lTd1VQaDc4SitaYjJoSks0OWNCKzhXT1htUjVNV05CalM1M2pqbkcvTWkvK1dVQ3FBNjB5Nnl3alNKWkN3Yjo6vmfvCk0fn1modnqHmmxnGg==', 2, 'R1BQQ1hVRmZpU1ZzRktET0luQUtydz09Ojo6Sx6RxUybAOzuUXbVv0Qb', 'WGNZbm9ubUwyUjhGTXMzV2tWUExqNk5KRUZ4NGlFc1Vud08zOVJSYUNxUT06OvG5ARMCbpQSTJy1gFEMT1M=', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(4, 4, 11, 1, '44:44:00', 'dmo3RmJtSXl2Zm5sUTVvZ2pIdEEzZz09OjokGfNOzgoUfq/GLwzzTCZJ', 'ZlE3TWE0bUUxRzdPR2VkSXVhbm9zVnlRQzY1S2RoTkl3UG05cC91RFBtUT06OiKuSlkmIuP7w0FeFlR7iQU=', 0, 'Q2Jpa2p0SXBycVNQWng4VXNha0VCZz09OjpuoWIKfEXzcDln1VWmnGwa', 'djRNREwxdkM1V2ZacVArdldXTTF4dz09Ojr5EuhfxlFx+mhoNfd4b8Hd', '2022-04-15 22:25:15', '2022-04-16 02:25:15'),
(5, 5, 5, 2, '55:55:00', 'YWRTemtodmR1ck1oa3QwYXhqRkJDUT09OjqXUTM7Cv36UKCZwDwuqidp', 'b2VNK3JJWmVpUUJ0eFN6eUZnTVhmdmZtdU9lZXhodi91WXI3SDV0UnUrZz06OlYEoIwJQn4xp04751KPI3g=', 2, 'bFo0M3hqK1NLMEhrVy9CRi9wQWVzdz09OjppMZZ3EKwfGr2gh6Kn9CmU', 'VU8wcG9odHhjS0QrWUwya2d6NFA5QT09OjrUBR2G3gAjhjjxwXVrZtTl', '2022-04-15 22:25:15', '2022-04-16 02:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Description` text,
  `Longitude` int NOT NULL DEFAULT '0',
  `Latitude` int NOT NULL DEFAULT '0',
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`ID`, `Name`, `Description`, `Longitude`, `Latitude`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 'S3ZnK3hOWTl4bURnd0FmLzdVdkx1M0dHRVN4cFdFWVRoNWdDSjhscDQrcz06Og6CM+Wymx9N8RKiqYc7kTw=', 'R2JKTGxRWUR3RmJVWDc0N1ZEclFNVVM3UjhTZXlOR0xVdjQwa04waWJ2Z0R5OXEvU29kUkUwT3JhUG1zdksvZDo6u2rNsi2gxQm+zpWQHSkZZg==', 543467, -19803, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(2, 'UUM0TkpxSDJ6dG53NjBna042MWI0L0M5OHgyZk9mbVdoNjJyZVdFUDRLUT06OpDgb8ogwMtfH8/V+LnFiYQ=', 'eThhb0ljdU1TelZZai9jWWRSYzArUWdGSUcwdWZ6SVRFNFEvSEJ5MmRaUFBUencxeC9EZzQrRmsrWjBxMktKdjo6xAkMkPRQK/WLsJb9OKwTiw==', 16432, 34526, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(3, 'Y25mREEyckxiVjZXbUVMcW5pMEZLb2psdytTQWxVRjJpNnFqM08wNlF5Zz06Og02xmuq7J3kRjZbt/3whuQ=', 'bE9FWVFYdWQyQVo2cEIxK3UxZkdLZ3kzdWNtdUxuZnhScG82TlQvdGNUST06OmHtxoMgQZnannkq3SeBCkE=', 234567, 2366543, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(4, 'c2VnT053TzVONE4zb0FORHZrZHd6ZmdBMmROaW56QmU0VmJlVHppQjhxWT06OjUiyalUhPM9EstrRXf1mUA=', 'SXNpV2ZGN2cxbUUyN2o4aitNU1YzK2RzS2hLNE9BbWF1eTBuN1BZT3dLQT06OrsF5LUOxiuohDrcOlLKlS0=', -45845, 345364, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(5, 'V3hpNDdMSk44TjYwR1Ywa0Q4MGdDYTdvenVsek4wcXRvS004Yk0yMFNYOD06Op4QHdbbMPGNuFve8PP6reM=', 'dFZ4NjcrM0ZtaWwxMDlVeWFxUk1VV2Z1Z21YeGRxYkpDYVFldDVITGhtaz06Otsy73xYl3YEWJLaYlaYz6o=', 225446, 65453, '2022-04-15 22:25:14', '2022-04-16 02:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `EventID` int NOT NULL,
  `UserID` int NOT NULL,
  `Rating` int DEFAULT NULL,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`),
  KEY `EventID` (`EventID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
CREATE TABLE IF NOT EXISTS `registered` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RSOID` int NOT NULL,
  `UserID` int NOT NULL,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UserID` (`UserID`),
  KEY `RSOID` (`RSOID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`ID`, `RSOID`, `UserID`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 1, 1, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(2, 1, 2, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(3, 1, 3, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(4, 1, 4, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(5, 1, 5, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(6, 2, 6, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(7, 2, 7, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(8, 2, 8, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(9, 2, 9, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(10, 2, 10, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(11, 3, 11, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(12, 3, 12, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(13, 3, 13, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(14, 3, 14, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(15, 4, 20, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(16, 4, 21, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(17, 4, 22, '2022-04-15 22:25:14', '2022-04-16 02:25:14'),
(18, 4, 23, '2022-04-15 22:25:14', '2022-04-16 02:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `rso`
--

DROP TABLE IF EXISTS `rso`;
CREATE TABLE IF NOT EXISTS `rso` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UniversityID` int NOT NULL,
  `OwnerID` int NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(255) NOT NULL,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UniversityID` (`UniversityID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rso`
--

INSERT INTO `rso` (`ID`, `UniversityID`, `OwnerID`, `Status`, `Name`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 1, 1, 1, 'S1hucEFNaDZNM2Z4bDFYM3FVQ2pIdz09OjotqKX3ol6wIZYx/dwBhyiU', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(2, 1, 2, 1, 'eVdOMk9Ldy8wQTQ1MjhmWHdSaCttY1lqSTUxS0pDaG9WS2lNNU5xZGVCbz06OgwvrfJ27UnNTOoHgecFizc=', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(3, 2, 5, 0, 'eEpXbXg4Wjc2QzE5MklIdlk0Zytxdz09OjpavDbxxT25yRRRLBPa9uoe', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(4, 1, 23, 0, 'S2JXamxmQVB6VkU1SzIrSDNGMmJWQT09OjrRAFwA0WzLN+lfZx6Xa9uY', '2022-04-15 22:25:14', '2022-04-16 02:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE IF NOT EXISTS `university` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Bio` varchar(255) DEFAULT NULL,
  `GmailAt` varchar(255) NOT NULL,
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`ID`, `Name`, `Bio`, `GmailAt`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 'University of Central Florida', NULL, '@knights.ucf.edu', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(2, 'Florida State University', NULL, '@fsu.edu', '2022-04-15 22:25:12', '2022-04-16 02:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UniversityID` int NOT NULL,
  `Super` tinyint(1) NOT NULL DEFAULT '0',
  `Username` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gmail` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `ColorPreferences` varchar(255) NOT NULL DEFAULT '0',
  `DataTimeCreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataTimeUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UniversityID` (`UniversityID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `UniversityID`, `Super`, `Username`, `Name`, `Gmail`, `Phone`, `Password`, `ColorPreferences`, `DataTimeCreated`, `DataTimeUpdated`) VALUES
(1, 1, 1, 'Yosefh123', 'YlNsUW9RbGsydmZORk9qNkpDM0dDZz09OjpmA7WdaWxehg3zMQUNmgHO', 'TWxSbEVTR3ZvMFh1ajQvbHdNQU1GSWMzbzVuQnFPdXFGenFldFJoTVNtMD06Ou3lWPSBvEf/5BqZsyakKJI=', 'NS9reC9SYURaNEt5Q2h2VVJnaWRPQT09OjpfBC40nD58TgwmcGxdvluO', '$2y$10$21Yl4ChhfIim/90EsZW1JekGkAlzwELLIz/f1abucGfvo6FYgwERW', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(2, 1, 0, 'KimG', 'MXhNU2VKTndlZVNweWJ4Mlp3dWVadz09OjpwMNsncqNSHg35E/dZYZR8', 'VEpTMHJBaGFQYnRDSzFzSXNHY1c5RVVaMUY3aFZzZDF0RzZPdU9JYTFTdz06OtgvpPe6N1PjKwYooO2qRoo=', 'cHh1YXNpejJPWGtmaUdYenVxc2tqdz09OjpK8rxzEO5w3qHQSPcPGPMd', '$2y$10$CZN2JwGY7KEZJV6CcFWoze4WJCdluLjfFAF0HxSxpg/oxs5p3LFVG', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(3, 1, 0, 'yann3Jac0b', 'cm4wMUF2UUVaMitZMWUyYUFnWCtDNkVWYTFCaC90RWZyd1dZbGplRnZDTT06OuVHmWsV3lw0n15zYX/vFW8=', 'RVJ3Q3F6NGIvVkhLazJ6ekRYcFFpK3pqckp5bmxsemlaYS92S3I3UEl1enJpUnFyNW41TVljcFZJZ0ZmcWlhcTo6Pu8xKNvkYijxUaejvIdkDA==', 'endUTjRkd3ROVFU1UE1LMTFsYWhUQT09OjrK2M4R2cTe/jeKgHIt/uXf', '$2y$10$6kL0bJpAo2Y1lD5fwz6OOu8iICxn4KScoiFXUvPR/FJjnU97c7A5u', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(4, 1, 0, 'Lamar Moss', 'L3haNUdPQjBsU3c4UStZVWZMUXQ3UT09OjqSCCN28sk72ROvNGR1gGYH', 'dHFFak9vdCtyMzMvOE8rNWI2THl5OEJER0J1VkRDRGx4Z0huWENLVGNKOD06OroViUPeE7fiBXH9k5XsqAw=', 'Z1dMK3pYVW9IRzAzQ2llejlxVWtYdz09Ojoon3XaQywlH6qQnQHq0z/F', '$2y$10$/5TGtoID5Ez2VI/.BgUJn.TqiUyqiVrycLHHAQy6dtqFpxU3n2fJy', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(5, 1, 1, 'Aubree Travis', 'RHpZWjJERWgyd0RtRlVaK0JlRi9Tdz09OjrKxa6+G/W2a5Qj1lJTYvOU', 'MGg0dmlVVDlpVHhMZGNuUXlkQzFRbGNIbU9RckhqQTFuV3RXRXFqdlh2ST06OjsIfTcRoj30180YyD6S+hk=', 'TEx5L09xUHJUVUI4WVh1b3dxYkQvdz09Ojr0ho4rxom+s0btKAvLV3Lx', '$2y$10$8ACWyvibG3Bw1bPZuk/E6eCFbDNz5AYtEGAzaC8anVmJVgBU7z5lO', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(6, 1, 0, 'Lainey Mitchell', 'cGYwN1hsV3IyWUVSZTBDYWk3NHJ5QT09OjrLe1ujyNAotjt4FqWej/4k', 'ekFVNDU3NTB2RDZHeFd5OCtXSnRvS2FuZi9Od2JBV25jdUJVd1A2c0hkYz06OhgtLv0t1N69AVp0sbO3gBI=', 'Y0tqbDZRSkZScUl2akRrdElrdWdxQT09Ojr/I3SgdQXvAvm4+sUJ2Ico', '$2y$10$gtddPtN0SYjkSsPvqvb8E.0JujjH/pA88MSbYqwePSzpo9yyECf5q', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(7, 1, 0, 'zz100', 'SEI5d3lwS2J4RExyT293ZUJkS3lzUT09OjoWVyz59fBFS/ClgBV4r4iQ', 'MlFLZFdDcHJwQXcrT3B3YTh6NmNJSzdYWElUU0hxQU9LbGFIQWlJU2tyaz06Oq1uB2laK+HuBZderU8QY8E=', 'ZG1JSElud0dkMFFNZTVESjdBZFRRZz09OjobpwfjzD4lvY/caNEsRRsm', '$2y$10$Bi/J6zsQ.optogOQQsJv7eM0RRDJNkGnfknkEaOS.GOEabw5nyWUi', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(8, 1, 0, 'Daws0n200', 'alpIVi93VUV0V1JQZi9kNTN3QzJ0dz09OjpSh4314I7Pd1DW+v78FpkU', 'Q3RuYmR5aldnZVpqQTVuN1QwTUljalUxSFMwVlJ3Z1dCaU93QmpZWWNUbz06OoowSSjJFb/HnbkbbmRhilw=', 'QkNuL011eU5SUVd6VFRabXhsMUxLUT09OjpZ8T/a/5DpfjAFvLtmirGI', '$2y$10$YqAanCsKwzp./HhGUGEb0./CxtfLdjQZ0c40IlN9PsHZR/AVsOKbe', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(9, 1, 0, 'PenaX', 'MnUwQTUyNXVtaStJTlNJdHFyT2NUUT09OjrSq0VJsXv/zm5hkWt9WuHd', 'REhxam5BbzB6YlRadllXYi9GaHVvNlJJeWdwZFpTNGcwUU94cWptUzdrND06OlujPK/Je3Tykv8wT0Q1aGQ=', 'RENHL0E1WjhtdE4xQlVpblpiUWh1UT09Ojpa0tj9qklQmA/7Cm4BrQb1', '$2y$10$ExMYh/v5nxk9LwPF.8ap7OIWmHbLM1Tpese6fKisLsiBYJqZJRnxG', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(10, 1, 0, 'enam53', 'Sk5kWDIrZEt3eDBtQ0JndTFjdldzdz09OjrIJ6kzLU3k3DPQp59Q5ZHP', 'T3I0aGFuN2dCeFQ2MktPM3BwTmpyVEZEYTc0WC92MStab1RRUnRwYVNDVT06OrM0Iu0+xqFbLSPOIDNYaBo=', 'Q1RUQnpQaUNqL3R1UnJSbHFlYk5hUT09OjrW7mXl9oUBi5x8Sqfc2FBU', '$2y$10$7RPb8Qn47R5sUU32aJEE1.IEbfTz1RLvoGS0laK57cqPhaANDrtru', '0', '2022-04-15 22:25:12', '2022-04-16 02:25:12'),
(11, 2, 0, 'Darnell Vega', 'NlN3ZnF1SkFiV1UzMll3ejJwT0hNQT09OjodN+YODsSWHpptQ51fDWzZ', 'M0VuU2RlaUpuaEVpaFIwbVhrbE5ydz09Ojp+18Li5u3QxxNFBrzoOVF7', 'ckF6K1Bha0xHWlZhU3F1Y3o1aWV5Zz09OjpmTaYkuIyvmtlnbWFr7Ntl', '$2y$10$02tJaiVa1DkWjAPSrxbYPOmvlN3LZZzNeXJ4/O/iybp6jz8DK4x3.', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(12, 2, 0, 'Coperlin', 'eEtyOWdiTTMybVEwTVlkOGhKSE0rUT09OjpG/BXtplkAgvrOle5FpGcv', 'WGpDY3VCNW0ySlUyWE5mWXg3b1Q2Zmk1cUZFU2pSWVZ1dnVQWTVqeWFJUT06OokkJ0M8Q0WMx1CtQWiwJnU=', 'SEMzeXRxTWpCSmV3aHZzVUpyRXRmQT09Ojq9G/nOxEp6RAn34nxOpzFA', '$2y$10$f9nNVJqH7czJYW/vEomqSe8MfzgncO.MGFzEp9V5Ctn4tS2Dfl0Au', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(13, 2, 0, 'Calderon0', 'NlM3SDlzMHE5ZWZrd003OURTbW1zay92NmcyVHQxZlJxMVVDU2srUUxKdz06OjEbz1wOJQ4xfHQHLx3xgxU=', 'NDcyc1ZvWjhLRHNiZ0pxNUlGQjQrTGYxZ3Z3YkJqZDFGT1UycVNETEJZTT06OoGDkpPpcx/KX9eqMzr0oAs=', 'RHVNOG1HUTdMMVM0VWVJekVkV0RKZz09OjrA6pCtS8ciQmhQdi7tvS/k', '$2y$10$qAHl3h4348vx9pFUhc9ATumoxryNOuLxgQFVyaCIxnyJmxYjTz8Z2', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(14, 2, 0, 'Nathanial675', 'YTdLdVdMcTN0L3VCdjBvWjk2RjlpTmVTMlBIQ1c3UVlMbXY3UWZEQzNrND06OpT7qKvqxp5BAANBJmLAB+o=', 'RWREeFl5MCttNVVLZEdIZVhjOGJDQnZBWS80eW1OZThqYlVoU2pjNk50OD06OlgflpeccyWXgZmoImDl3Nw=', 'clV6M2xoSXJCWGVpeVFoNEhXTmRDdz09OjrvkBS/sds8WMMuWKVyUqrz', '$2y$10$N0iHsXDyV3BYOHw7wz736uDSfOsnJA/we0jZEFcWXXeMe4V3ATFSS', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(15, 2, 0, 'Colby123', 'bU1wVmZCZ3Fpb3pnc1NCTXhxUFU2QT09OjqyeI80AdhJrLKq2e625Zsk', 'VnprVFhLWEFlWUlLV2hNSFg3SDgxSDlhTU9xOGtHZmZPUDdvMXdGM1paTT06OhHeHSMqNvG3vm36vHpY+gQ=', 'eDk0eGN4cXc2MFhScXEzMml4ZU9JQT09OjqDsVNq9nprCMoNmeWgBblY', '$2y$10$1IUFuj79TQiXkTJVaflY5OWCDI9ebMlR0Y0y7g7ejulJ3606NQdVG', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(16, 2, 0, 'KristenPJ', 'Rm1wdVEvTERXNUhvdEoyV3ZoUzFlUT09OjpJWx6+sSG1SV40Uhcgm1BF', 'aTBPT2lDQ1VuQmtoR2JJUFcvK1RmNjBqcUNMekRDUDhHSzhITmVsdWNYND06Os4N8qEwA41PitmWjxxtASM=', 'R3pKajQxSTYrd0k4Q2hXcUJieEFVZz09OjrOjikofhGKjVR85lbxD6XF', '$2y$10$EQR5E5jGsPlUVSaFjZmco..j/BPAl.dK9QfnSef/2kvuL5kyPatT2', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(17, 2, 0, 'EdithW987', 'VHdOOG1SaTNYOGhWUnl5L21DSk9iZz09OjosMFwANENrj9mrPhiFmFPg', 'Vzg5S2t4TWFkMWZvYzNiM0NuaWNCcTFVUHhMRnhOeGo3ZTNwZHgzTk1vYz06OlCy0zqFY9lWzWOEdaTlNqs=', 'cERnMlJaemVoNHFlMzBNOFJaU3M1QT09OjqpMFp1i4AcJS3/x/5uBEc6', '$2y$10$hSemHa3I7o7CQOwAOCgW0eqXehQqCZaQAlgPjEyY4/MjSd4Wd6yyq', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(18, 2, 0, 'JB3ltran', 'Rld2UjNpZXpWUFBDRFUwYkVxRlBKdz09Ojpvfkzqk5odDUYaxJszMS89', 'Q3crbEt5U0UyOS9nVEYzcjk0Vnl4Q3NHaHIvY1VTdVpyVjdWSmhjSkxyVT06OkpQ/w6dGf5xgOqPAQGfk3Q=', 'NUZtL2RqQzFUKzgzN3lBcnQ2VVNGZz09Ojpt46mmthrX7qGZOtgosfIb', '$2y$10$H9xj7RRmz9ULlq6n7h96kugkjCQ6r62hPGw.MfcQyMl/CeRC.8JY2', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(19, 2, 0, 'BryantWWW76543', 'd05rc21LdC9mVHBlbk9EZlZMdVVBZz09OjpNbJyNa7iLdj+IxyIvJCic', 'QXoyVGREcG1RNnVTV2tkdXhvazFtQkZwOVltdlR1TG04MEwwbVo0cURmdz06OhPD+E0OqsAiKyCuudpfqds=', 'REhJbmorUXBkd3VLMkNXOWVKaXNzUT09OjqNrR1jiahq+5/SVR4rs4Ir', '$2y$10$8/T6k0cDxW5ZI3MmMsic2eAIzzsB9prVqpKKKx70.XpmUx8CoFh6i', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(20, 2, 0, 'KaleM', 'dzFjelAxdTBrWkI4Wm9GREhJWkQ1UT09OjoF7Crtnjp2WDf/v43hcH8q', 'K2NmQWZJdVFFODlkaGlYR1RyWkpGbW00ZmFtYmdkV3AranpqVzUvSlF0cz06OiXwgOqk3UmbcJxDaiQNqMY=', 'VTVlNU16UHY2VURieTVPaVJKZWVyZz09OjphPapvMtoBsX5oabPu6HsI', '$2y$10$OWIQAu36irNwZuRCJ7HcPOq39qOLSJGVxYx2TSea2f6G3rV6NJjsy', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(21, 1, 0, 'kenny', 'RHdEMk9uc1ZGZEUyaW9MTXVzUEZWQT09OjrxUKTSsC5/3tzRfEK9MC8V', 'UkliZ25kYlhOaGZHNVltVEpWK2h3VStCTEpKVWNZN0gzY2RraXArVk9DZz06OridYlSxHKbW5Sjx1NACQqY=', 'RURDS05SbnpmSzlCU2pJOXhpRHhPUT09OjoHN7/WJ9NSt0Q9k92KPMIM', '$2y$10$ebxsCNRRes8B0tgOO0AI0OrS/sKWSdLlLe0h2rhcp5YfwmX0Q7yL.', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(22, 1, 1, 'kennySuper', 'dU1NU1JQYVRpOTRvTW9Pb3VydHU4Zz09OjrAnyh6URIvKV/5Q9lxaW0h', 'VTJkTm9ZQ2M1azd1c0d1REhORHl0R3R5MmJSbjdBc2UvQXBVbkVsTkpLdz06OvMGj/BCmBwt15Lss/lSqqI=', 'MW10YXJGS2NrdFpBUGtuVXNLRldSQT09OjrkEqdS/7ZQYrAgjg1A1cC2', '$2y$10$8Cl07Cjx2P1W5xlYYv7jyuA.1g77oqKm1fsPfcuHyLTX497LVqPY.', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(23, 1, 0, 'Travis', 'WmN6cGJTR3BaZ0JqZkVOMGhnNTNsZz09Ojr6bQpA2eDCmLlAbJj8knld', 'U1lZb1MybzBQbGVlOSs3UlA5elFwMEJXd2JDQ1NuaGMzZjFXRG9XaHFmQT06OqN9uviejP9dAr23zQp7g8E=', 'cGozOGpEc0hzLyt6bGk4ZnhFNzhRZz09Ojr8CiQN77t1YQ3fsBJFkb4d', '$2y$10$NJEDqgEnmySYrIGU.SswG.pWqcrxc.6hCCDO4hPMyArmUTqBSW7Ai', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13'),
(24, 1, 1, 'TravisSuper', 'MXRydXBUbHFFc1NiUXBLNktNVEtvUT09OjoR3m95vboQyLftS57Q+0ua', 'alU3cHE2WlpUSWhlN1Nwd1lwc0xocTRZY0ZGOFlvYmw5NVppZWRGblNWYz06OrRxxmaPVp+S440GbPU+oO4=', 'RUtlLzYyMEQ1Y3RBSDdEZTdpVVNtdz09OjqXQjLOK4zwwEA3T5WCAPjo', '$2y$10$qFFWO57jTUszG7Y/c2T.nugKo94CdCG4OJNPyZ/QkGgJvdfeLmsku', '0', '2022-04-15 22:25:13', '2022-04-16 02:25:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
