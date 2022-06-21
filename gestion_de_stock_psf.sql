-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 21 juin 2022 à 13:32
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion de stock psf`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id-produit` int(255) NOT NULL,
  `refp` varchar(50) NOT NULL,
  `ligne` varchar(50) NOT NULL,
  `cadence` int(11) NOT NULL,
  PRIMARY KEY (`id-produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id-produit`, `refp`, `ligne`, `cadence`) VALUES
(0, 'PSF4464', 'MFL', 220),
(1, 'PSF4464', 'MFL', 220),
(2, 'PSF4422', 'CMFB', 120);

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `refp` varchar(50) NOT NULL,
  `ligne` varchar(50) DEFAULT NULL,
  `cadence` int(11) DEFAULT NULL,
  `emplacement` varchar(50) DEFAULT NULL,
  `qte_stocke` varchar(11) DEFAULT NULL,
  `couv_ligne` float DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `achat1` date DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `client_id` bigint(20) DEFAULT NULL,
  `type_operation_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `FKlqhhpq6ma8a6v90rks3igeff1` (`type_operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id_stock`, `refp`, `ligne`, `cadence`, `emplacement`, `qte_stocke`, `couv_ligne`, `id`, `achat1`, `code`, `designation`, `client_id`, `type_operation_id`) VALUES
(1, 'PSF001122', 'MFL', 210, 'A1-11', '200', 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, '8', NULL, 100, '9', '700', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(3, '3', NULL, 360, '40', '300', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(4, '11', NULL, 400, '12', '800', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(15, '17', NULL, NULL, '20', '55', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(16, '20', NULL, 210, '20', '20', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(17, '70', NULL, NULL, '70', '70', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(18, '11', NULL, NULL, '11', '11', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(19, '3', NULL, NULL, '3', '', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(20, '9', NULL, 9, '9', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(21, '22', 'MFL', 22, '70', '350', NULL, 0, NULL, NULL, NULL, NULL, NULL),
(22, '11', NULL, 12, '13', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utlisateur` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` bigint(255) NOT NULL,
  `nomUt` varchar(50) NOT NULL,
  `prenomUt` varchar(50) NOT NULL,
  `droit` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwrd` varchar(50) NOT NULL,
  PRIMARY KEY (`id_utlisateur`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utlisateur`, `matricule`, `nomUt`, `prenomUt`, `droit`, `email`, `passwrd`) VALUES
(1, 0, '', '', '', 'ichrak@gmail.com', '123i'),
(2, 0, '', '', '', 'a@gmail.com', 'a'),
(3, 55, '5', '55', '5', '', ''),
(4, 9, '8', '8', '8', '8', '8'),
(5, 4, '5', '5', '5', '5', '5'),
(8, 7, '7', '7', '7', '7', '7'),
(9, 9, 'a', 'k', 'kjiji', 'ji', 'jij');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `FKlqhhpq6ma8a6v90rks3igeff1` FOREIGN KEY (`type_operation_id`) REFERENCES `type_operation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
