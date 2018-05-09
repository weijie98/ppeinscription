-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 26 mars 2018 à 14:20
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ppe`
--

-- --------------------------------------------------------

--
-- Structure de la table `elèves`
--

CREATE TABLE `elèves` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `Prenom` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `Nom` varchar(11) COLLATE latin1_general_cs NOT NULL,
  `email` varchar(99) COLLATE latin1_general_cs NOT NULL,
  `adresse` varchar(99) COLLATE latin1_general_cs NOT NULL,
  `telephone` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elèves`
--

INSERT INTO `elèves` (`ID`, `username`, `password`, `Prenom`, `Nom`, `email`, `adresse`, `telephone`) VALUES
(1, '3', '4', '2', '1', '5', '7', 6),
(2, '0', '0', '0', '0', 'wei_jie@hotmail.fr', '45 avenue de la division leclerc', 698841586),
(3, '0', '0', '0', '0', 'stanleylj@hotmail.fr', '89 avenue jean jaures', 623456656),
(4, 'pp', 'pp', 'pp', 'pp', 'test@hotmail.fr', '89 avenue de l''aile', 665265987);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `Entreprise` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `email` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `telephone` int(255) NOT NULL,
  `adresse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `ID` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `Prenom` int(11) NOT NULL,
  `Nom` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `Ville` int(11) NOT NULL,
  `adresse` int(11) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `elèves`
--
ALTER TABLE `elèves`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `elèves`
--
ALTER TABLE `elèves`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
