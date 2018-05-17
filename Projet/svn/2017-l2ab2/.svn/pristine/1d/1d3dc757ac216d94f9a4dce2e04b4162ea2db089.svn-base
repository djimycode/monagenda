-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 16 mars 2018 à 12:22
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agdb`
--
CREATE DATABASE IF NOT EXISTS `agdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `agdb`;

-- --------------------------------------------------------

--
-- Structure de la table `creneaux`
--

DROP TABLE IF EXISTS `creneaux`;
CREATE TABLE IF NOT EXISTS `creneaux` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MDEBUT` int(11) NOT NULL,
  `HFIN` int(11) NOT NULL,
  `HDEBUT` int(11) NOT NULL,
  `MFIN` int(11) NOT NULL,
  `VERSION` int(11) NOT NULL,
  `ID_INVITE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CRENEAUX_ID_INVITE` (`ID_INVITE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `invite`
--

DROP TABLE IF EXISTS `invite`;
CREATE TABLE IF NOT EXISTS `invite` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(30) NOT NULL,
  `PRENOM` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rv`
--

DROP TABLE IF EXISTS `rv`;
CREATE TABLE IF NOT EXISTS `rv` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `JOUR` date NOT NULL,
  `ID_UTILISATEUR` bigint(20) NOT NULL,
  `ID_CRENEAUX` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UNQ1_RV` (`JOUR`,`ID_CRENEAUX`),
  KEY `FK_RV_ID_UTILISATEUR` (`ID_UTILISATEUR`),
  KEY `FK_RV_ID_CRENEAUX` (`ID_CRENEAUX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(30) NOT NULL,
  `PRENOM` varchar(30) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `MOT_DE_PASSE` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `creneaux`
--
ALTER TABLE `creneaux`
  ADD CONSTRAINT `FK_CRENEAUX_ID_INVITE` FOREIGN KEY (`ID_INVITE`) REFERENCES `invite` (`ID`);

--
-- Contraintes pour la table `rv`
--
ALTER TABLE `rv`
  ADD CONSTRAINT `FK_RV_ID_CRENEAUX` FOREIGN KEY (`ID_CRENEAUX`) REFERENCES `creneaux` (`ID`),
  ADD CONSTRAINT `FK_RV_ID_UTILISATEUR` FOREIGN KEY (`ID_UTILISATEUR`) REFERENCES `utilisateur` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
