-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 fév. 2025 à 18:44
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `labo`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `Matricule` int(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `postnom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  `CodPromo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`Matricule`, `Nom`, `postnom`, `Prenom`, `Sexe`, `CodPromo`) VALUES
(2101, 'NIK', 'NICO', 'LERT', 'M', 12345),
(2121, 'NIK', 'NICO', 'LERT', 'M', 123);

-- --------------------------------------------------------

--
-- Structure de la table `frais`
--

CREATE TABLE `frais` (
  `CodFrais` int(255) NOT NULL,
  `libFrais` varchar(255) NOT NULL,
  `MontAp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `frais`
--

INSERT INTO `frais` (`CodFrais`, `libFrais`, `MontAp`) VALUES
(1233, 'frais', '500');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `idpaie` int(11) NOT NULL,
  `Matricule` varchar(255) NOT NULL,
  `codfrais` varchar(255) NOT NULL,
  `Montp` varchar(255) NOT NULL,
  `Datep` varchar(255) NOT NULL,
  `Reste` varchar(255) NOT NULL,
  `Motif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`idpaie`, `Matricule`, `codfrais`, `Montp`, `Datep`, `Reste`, `Motif`) VALUES
(1234, '2121', '1233', '500', '1234', '0', 'frais');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `Codpromo` int(255) NOT NULL,
  `libPromo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`Codpromo`, `libPromo`) VALUES
(2, '01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Matricule`);

--
-- Index pour la table `frais`
--
ALTER TABLE `frais`
  ADD PRIMARY KEY (`CodFrais`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`idpaie`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`Codpromo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `Matricule` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2122;

--
-- AUTO_INCREMENT pour la table `frais`
--
ALTER TABLE `frais`
  MODIFY `CodFrais` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `idpaie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1236;

--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `Codpromo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
