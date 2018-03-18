-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 15 Mars 2018 à 10:31
-- Version du serveur :  5.5.59-0+deb8u1
-- Version de PHP :  7.0.27-1~dotdeb+8.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Base_lefaucetbtc`
--

-- --------------------------------------------------------

--
-- Structure de la table `liens`
--

CREATE TABLE `liens` (
  `Liens_ID` int(11) NOT NULL,
  `Liens_Affil` text COLLATE utf8_bin NOT NULL,
  `Liens_Code` text COLLATE utf8_bin NOT NULL,
  `Liens_Court` text COLLATE utf8_bin NOT NULL,
  `Liens_Gain` int(11) NOT NULL,
  `Liens_Editeur` VARCHAR(255) NOT NULL,
  `Liens_Retour` tinyint(1) NOT NULL,
  `Liens_Utilise` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `liens`
--
ALTER TABLE `liens`
  ADD PRIMARY KEY (`Liens_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `liens`
--
ALTER TABLE `liens`
  MODIFY `Liens_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO `param` (`ID`, `Nom`, `Valeur`) VALUES (NULL, 'param_Shorte_enable', '0'), (NULL, 'param_Shorte_API', 'Valeur API Shorte'), (NULL, 'param_Shorte_Valeur', '0');
INSERT INTO `param` (`ID`, `Nom`, `Valeur`) VALUES (NULL, 'param_Coin_enable', '0'), (NULL, 'param_Coin_API', 'Valeur API Coin.mg'), (NULL, 'param_Coin_Valeur', '0');
INSERT INTO `param` (`ID`, `Nom`, `Valeur`) VALUES (NULL, 'param_BTC_enable', '0'), (NULL, 'param_BTC_API', 'Valeur API BTC.ms'), (NULL, 'param_BTC_Valeur', '0');

UPDATE `version` SET `valeur` = 'V 0.9.0.0' WHERE `version`.`ID` = 1;

INSERT INTO `monnaies` (`ID`, `Nom`, `Nom_Complet`, `Cent`) VALUES (NULL, 'POT', 'Potcoin', 'Satoshi');


