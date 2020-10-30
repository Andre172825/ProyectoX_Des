-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 30-10-2020 a las 02:40:05
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsers` int(11) DEFAULT NULL,
  `IdVia` int(11) DEFAULT NULL,
  `DescriptionVia` varchar(50) DEFAULT NULL,
  `IdZone` int(11) DEFAULT NULL,
  `DescriptionZone` varchar(50) DEFAULT NULL,
  `Address_Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Address_Users` (`IdUsers`),
  KEY `fk_Address_Via` (`IdVia`),
  KEY `fk_Address_Zone` (`IdZone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdOccupation` int(11) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Area_Occupation` (`IdOccupation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bankaccount`
--

DROP TABLE IF EXISTS `bankaccount`;
CREATE TABLE IF NOT EXISTS `bankaccount` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsers` int(11) DEFAULT NULL,
  `Num_BankAccount` varchar(50) DEFAULT NULL,
  `CCI` varchar(20) DEFAULT NULL,
  `HolderName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_BankAccount_Users` (`IdUsers`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditcard`
--

DROP TABLE IF EXISTS `creditcard`;
CREATE TABLE IF NOT EXISTS `creditcard` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsers` int(11) DEFAULT NULL,
  `Num_Card` varchar(12) DEFAULT NULL,
  `TitularName` varchar(50) DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `CVV` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_CreditCard_Users` (`IdUsers`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DistrictCode` char(6) DEFAULT NULL,
  `IdRegion` int(11) DEFAULT NULL,
  `IdProvince` int(11) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_District_Region` (`IdRegion`),
  KEY `fk_District_Province` (`IdProvince`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documenttype`
--

DROP TABLE IF EXISTS `documenttype`;
CREATE TABLE IF NOT EXISTS `documenttype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DocumentCode` char(2) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legaldocuments`
--

DROP TABLE IF EXISTS `legaldocuments`;
CREATE TABLE IF NOT EXISTS `legaldocuments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsers` int(11) DEFAULT NULL,
  `FrontDoc_Img` varchar(50) DEFAULT NULL,
  `BackDoc_Img` varchar(50) DEFAULT NULL,
  `ServiceProof_Img` varchar(50) DEFAULT NULL,
  `CriminalRecord` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_LegalDocuments_Users` (`IdUsers`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `occupation`
--

DROP TABLE IF EXISTS `occupation`;
CREATE TABLE IF NOT EXISTS `occupation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdCategory` int(11) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE IF NOT EXISTS `province` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProvinceCode` char(4) DEFAULT NULL,
  `IdRegion` int(11) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Province_Region` (`IdRegion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RegionCode` char(2) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Lastname` varchar(60) DEFAULT NULL,
  `DocumentType` smallint(6) DEFAULT NULL,
  `DocumentNumber` varchar(12) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Avatar` varchar(20) DEFAULT NULL,
  `UserName` varchar(15) DEFAULT NULL,
  `PersonType` smallint(6) DEFAULT NULL,
  `BusinessName` varchar(100) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  `Ubigeo` varchar(6) DEFAULT NULL,
  `Phone1` varchar(15) DEFAULT NULL,
  `Phone2` varchar(15) DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `COName` varchar(100) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `Token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usersarea`
--

DROP TABLE IF EXISTS `usersarea`;
CREATE TABLE IF NOT EXISTS `usersarea` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsers` int(11) DEFAULT NULL,
  `IdArea` int(11) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_UsersArea_Users` (`IdUsers`),
  KEY `fk_UsersArea_Area` (`IdArea`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `via`
--

DROP TABLE IF EXISTS `via`;
CREATE TABLE IF NOT EXISTS `via` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ViaCode` char(2) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone`
--

DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ViaZone` char(2) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
