-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 09 avr. 2018 à 14:34
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
-- Structure de la table `eleves`
--

CREATE TABLE `eleves` (
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
-- Déchargement des données de la table `eleves`
--

INSERT INTO `eleves` (`ID`, `username`, `password`, `Prenom`, `Nom`, `email`, `adresse`, `telephone`) VALUES
(1, '3', '4', '2', '1', '5', '7', 6),
(2, '0', '0', '0', '0', 'greg@gmail.com', '89 av noruto', 665265987),
(3, '0', '0', '0', '0', 'greg@gmail.com', '89 avenue de naruto', 665265987),
(4, 'pp', 'pp', 'pp', 'pp', 'alafootom@msn.com', '89 avenue de naruto', 665265987),
(5, 'layn', 'layn', 'Alain', 'Bouquety', 'abouquety1@gmail.com', '89 avenue de naruto', 665265987),
(6, 'sdffsd', 'sdfsdfsdf', 'sdfsdf', 'fdsf', 'greg@gmail.com', '89 avenue de naruto', 154789425),
(7, 'layn', '8450103c06dbd58add9d047d761684096ac560ca', 'greg', 'greg', 'greg@gmail.com', '52 allée des rossilons', 665265987),
(8, 'marjory', 'eda2a3ba365d48999328ac4148dc86ee0a393934', 'morgane', 'cassory', 'alafootom@msn.com', '52 allée des rossilons', 665265987),
(9, 'tim', '1bfbdf35b1359fc6b6f93893874cf23a50293de5', 'timothe', 'robert', 'greg@gmail.com', '52 allée des rossilons', 154789425);

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
  `adresse` int(11) NOT NULL,
  `Siren` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `Prenom` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `Nom` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `email` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `adresse` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
