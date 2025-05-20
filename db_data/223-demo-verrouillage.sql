-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 02 mai 2025 à 16:20
-- Version du serveur : 8.0.42
-- Version de PHP : 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `example_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `tr_vehicule_voyageur`
--

CREATE TABLE `tr_vehicule_voyageur` (
  `fk_vehicule` int NOT NULL,
  `fk_voyageur` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

CREATE TABLE `t_personne` (
  `pk_personne` int NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `no_rue` int DEFAULT NULL,
  `rue` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `npa` int DEFAULT NULL,
  `ville` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_personne`
--

INSERT INTO `t_personne` (`pk_personne`, `prenom`, `nom`, `date_naissance`, `no_rue`, `rue`, `npa`, `ville`) VALUES
(1, 'Max', 'Dupond', '1968-02-29', 442, 'Pérolles', 1701, 'Fribourg'),
(2, 'Bernard', 'Haller', '1943-05-13', 14, 'Rte du Centre', 1724, 'Marly'),
(3, 'Alexia', 'Baurer', '1990-01-01', 12, 'Ch. de la Gare', 1753, 'Matran'),
(4, 'Louis', 'Rossier', '1932-07-31', 25, 'Rte des Murailles', 1754, 'Avry'),
(5, 'André', 'Magnin', '1988-08-08', 65, 'Les Dailles', 1752, 'Villars-sur-Glâne'),
(6, 'Edouard', 'Gumy', '1972-12-01', 23, 'Gorges du Gotéron', 1700, 'Fribourg'),
(9, 'Jacques-André', 'de la Patelière', '1958-10-15', 1, 'Rue du château', 1700, 'Fribourg'),
(11, 'Chen', 'Talow', '1972-02-29', 1, 'School Road', 87363, 'New Dehli'),
(12, 'Mike', 'Gandi', '1966-06-06', 236, 'Bourbon Street', 87456, 'New Nehli'),
(13, 'Robert', 'Moret', '1966-03-03', 5, 'La Jorettaz', 1663, 'Gruyère'),
(14, 'Gabrielle', 'Vuarnoz', '1955-05-05', 12, 'Gai-Logis', 1745, 'Lentigny'),
(15, 'Francis', 'Fragnière', '1969-02-12', 1, 'Le Buth', 1669, 'Lessoc'),
(16, 'Laurence', 'Toffel', '1980-03-21', 35, 'Wilerweg', 3280, 'Morat'),
(17, 'Henri', 'Marmier', '1976-10-13', 8, 'Rue du château', 1530, 'Payerne'),
(18, 'Christel', 'Charrière', '2019-03-14', 2, 'Pl. de la Perraisa', 1680, 'Romont'),
(19, 'Thomas', 'Weibel', '1996-06-30', 6, 'Ober Tasberg', 1717, 'St. Ursen'),
(20, 'Frédéric', 'Bielmann', '2000-01-01', 35, 'Le Chêne', 1733, 'Treyvaux'),
(21, 'Urs', 'Lehmann', '2008-08-08', 3, 'Bernertor', 3200, 'Murten');

-- --------------------------------------------------------

--
-- Structure de la table `t_type_vehicule`
--

CREATE TABLE `t_type_vehicule` (
  `pk_type_vehicule` int NOT NULL,
  `nom` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_type_vehicule`
--

INSERT INTO `t_type_vehicule` (`pk_type_vehicule`, `nom`) VALUES
(4, 'Bus'),
(5, 'Car'),
(6, 'Limousine VIP'),
(3, 'Mini-Bus'),
(1, 'Van'),
(2, 'Voiture');

-- --------------------------------------------------------

--
-- Structure de la table `t_vehicule`
--

CREATE TABLE `t_vehicule` (
  `pk_vehicule` int NOT NULL,
  `fk_type_vehicule` int NOT NULL,
  `nom` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `capacite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_vehicule`
--

INSERT INTO `t_vehicule` (`pk_vehicule`, `fk_type_vehicule`, `nom`, `description`, `capacite`) VALUES
(1, 1, 'Van Rouge A1', 'Van Bedford / 5+1 places', 5),
(2, 1, 'Van Rouge B', 'Van Bedford / 5+1 places', 5),
(3, 3, 'Mini-bus 01', 'Minibus Volkswagen / 7+1 places', 7),
(4, 3, 'Mini-bus 02', 'Minibus Volkswagen / 7+1 places', 7),
(5, 6, 'Limo VIP', 'Limousine VIP extra-longue / 6+1 places', 6),
(6, 2, 'Voiture V1', 'Voiture BMW serie 7 / 3+1 places', 3),
(7, 2, 'Voiture V2', 'Voiture BMW serie 7 / 3+1 places', 3),
(8, 2, 'Voiture V3', 'Voiture BMW serie 7 / 3+1 places', 3),
(9, 2, 'Voiture V4', 'Voiture BMW serie 7 / 3+1 places', 3),
(10, 4, 'Bus jaune', 'Bus GFM modèle 2012 / 28+1 places', 28),
(11, 4, 'Bus rouge', 'Bus GFM modèle 2007 / 32+1 places', 32),
(12, 5, 'Car Jupiter', 'Car climatisé Renault X784 / 64+1 places', 64),
(13, 5, 'Car Neptune', 'Car climatisé Renault X784 / 64+1 places', 64),
(14, 5, 'Car Venus', 'Car climatisé Renault X784 / 64+1 places', 64);

-- --------------------------------------------------------

--
-- Structure de la table `t_voyageur`
--

CREATE TABLE `t_voyageur` (
  `pk_voyageur` int NOT NULL,
  `nom` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rue` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `npa` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ville` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_voyageur`
--

INSERT INTO `t_voyageur` (`pk_voyageur`, `nom`, `prenom`, `rue`, `npa`, `ville`) VALUES
(1, 'VAUTHEY ', 'Vincent', NULL, NULL, NULL),
(2, 'GOLAY', 'Warunee', NULL, NULL, NULL),
(3, 'BIOLLEY', 'Pauline Julie', NULL, NULL, NULL),
(4, 'KUCI', 'Elvin', NULL, NULL, NULL),
(5, 'VIAL', 'Luca', NULL, NULL, NULL),
(6, 'DIEU', 'Ludovic', NULL, NULL, NULL),
(7, 'PILLER', 'Damian', NULL, NULL, NULL),
(8, 'MARALDI', 'Kenzo', NULL, NULL, NULL),
(9, 'DOUGOUD ', 'Guillaume', NULL, NULL, NULL),
(10, 'FRANZEN', 'Leander', NULL, NULL, NULL),
(11, 'GODEL', 'Erik Shady Marius', NULL, NULL, NULL),
(12, 'LEVRAT', 'Thibault', NULL, NULL, NULL),
(13, 'FANKHAUSER', 'Simon', NULL, NULL, NULL),
(14, 'MENOUD', 'Lucas Romaric', NULL, NULL, NULL),
(15, 'CUENDET DE CARVALHO', 'Rafael', NULL, NULL, NULL),
(16, 'PILLONEL', 'Adrien', NULL, NULL, NULL),
(17, 'GAMEZ', 'Jonathan', NULL, NULL, NULL),
(18, 'CIUCA', 'Christoph Alexander', NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tr_vehicule_voyageur`
--
ALTER TABLE `tr_vehicule_voyageur`
  ADD KEY `pk_client_idx` (`fk_voyageur`),
  ADD KEY `pk_vehicule_idx` (`fk_vehicule`);

--
-- Index pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD PRIMARY KEY (`pk_personne`);

--
-- Index pour la table `t_type_vehicule`
--
ALTER TABLE `t_type_vehicule`
  ADD PRIMARY KEY (`pk_type_vehicule`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`),
  ADD UNIQUE KEY `pk_type_UNIQUE` (`pk_type_vehicule`);

--
-- Index pour la table `t_vehicule`
--
ALTER TABLE `t_vehicule`
  ADD PRIMARY KEY (`pk_vehicule`),
  ADD UNIQUE KEY `pk_vehicule_UNIQUE` (`pk_vehicule`),
  ADD KEY `pk_type_idx` (`fk_type_vehicule`);

--
-- Index pour la table `t_voyageur`
--
ALTER TABLE `t_voyageur`
  ADD PRIMARY KEY (`pk_voyageur`),
  ADD UNIQUE KEY `pk_client4_UNIQUE` (`pk_voyageur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_personne`
--
ALTER TABLE `t_personne`
  MODIFY `pk_personne` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `t_type_vehicule`
--
ALTER TABLE `t_type_vehicule`
  MODIFY `pk_type_vehicule` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `t_vehicule`
--
ALTER TABLE `t_vehicule`
  MODIFY `pk_vehicule` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `t_voyageur`
--
ALTER TABLE `t_voyageur`
  MODIFY `pk_voyageur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tr_vehicule_voyageur`
--
ALTER TABLE `tr_vehicule_voyageur`
  ADD CONSTRAINT `pk_vehicule` FOREIGN KEY (`fk_vehicule`) REFERENCES `t_vehicule` (`pk_vehicule`),
  ADD CONSTRAINT `pk_voyageur` FOREIGN KEY (`fk_voyageur`) REFERENCES `t_voyageur` (`pk_voyageur`);

--
-- Contraintes pour la table `t_vehicule`
--
ALTER TABLE `t_vehicule`
  ADD CONSTRAINT `pk_type_vehicule` FOREIGN KEY (`fk_type_vehicule`) REFERENCES `t_type_vehicule` (`pk_type_vehicule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
