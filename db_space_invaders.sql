-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 04 déc. 2024 à 08:03
-- Version du serveur :  5.7.11
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_space_invaders`
--
CREATE DATABASE IF NOT EXISTS `db_space_invaders` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_space_invaders`;

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

CREATE TABLE `avoir` (
  `joueur_fk` int(11) NOT NULL,
  `arme_fk` int(11) NOT NULL,
  `couprestant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avoir`
--

INSERT INTO `avoir` (`joueur_fk`, `arme_fk`, `couprestant`) VALUES
(1, 15, 38),
(1, 24, 28),
(2, 34, 83),
(5, 32, 61),
(5, 46, 31),
(6, 27, 48),
(8, 11, 43),
(9, 19, 60),
(10, 19, 64),
(11, 31, 17),
(13, 32, 83),
(13, 39, 27),
(13, 43, 35),
(13, 44, 49),
(16, 36, 32),
(18, 15, 64),
(21, 20, 52),
(21, 24, 42),
(21, 47, 31),
(21, 49, 92),
(22, 8, 40),
(24, 11, 34),
(24, 22, 70),
(24, 23, 91),
(25, 19, 36),
(25, 31, 61),
(26, 3, 44),
(27, 6, 12),
(27, 30, 30),
(28, 36, 53),
(28, 42, 59),
(29, 50, 90),
(30, 21, 76),
(31, 44, 31),
(31, 45, 70),
(32, 8, 47),
(33, 17, 93),
(34, 15, 36),
(34, 25, 37),
(34, 44, 13),
(37, 22, 44),
(38, 40, 50),
(43, 41, 85),
(45, 3, 62),
(46, 16, 11),
(47, 28, 82),
(47, 30, 83),
(48, 37, 45),
(49, 40, 35),
(50, 47, 41);

-- --------------------------------------------------------

--
-- Structure de la table `t_arme`
--

CREATE TABLE `t_arme` (
  `arme_id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `puissance` int(11) DEFAULT NULL,
  `coupmax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_arme`
--

INSERT INTO `t_arme` (`arme_id`, `nom`, `description`, `prix`, `puissance`, `coupmax`) VALUES
(1, 'M4A1', 'A highly accurate and versatile M4A1', 4135, 61, 13),
(2, 'AK-47', 'A highly accurate and versatile AK-47', 3685, 30, 50),
(3, 'Desert Eagle', 'A highly accurate and versatile Desert Eagle', 3159, 63, 40),
(4, 'Katana', 'A highly accurate and versatile Katana', 2942, 63, 35),
(5, 'Glock 17', 'A highly accurate and versatile Glock 17', 1156, 20, 22),
(6, 'SCAR-L', 'A highly accurate and versatile SCAR-L', 3342, 81, 12),
(7, 'UMP45', 'A highly accurate and versatile UMP45', 4065, 80, 25),
(8, 'MP5', 'A highly accurate and versatile MP5', 4917, 73, 10),
(9, 'AWP', 'A highly accurate and versatile AWP', 2567, 30, 48),
(10, 'P90', 'A highly accurate and versatile P90', 4397, 84, 38),
(11, 'Machete', 'A highly accurate and versatile Machete', 606, 66, 17),
(12, 'Crossbow', 'A highly accurate and versatile Crossbow', 593, 99, 27),
(13, 'Throwing Knife', 'A highly accurate and versatile Throwing Knife', 812, 35, 26),
(14, 'Molotov Cocktail', 'A highly accurate and versatile Molotov Cocktail', 444, 71, 5),
(15, 'Frag Grenade', 'A highly accurate and versatile Frag Grenade', 2231, 45, 40),
(16, 'RPG-7', 'A highly accurate and versatile RPG-7', 3377, 99, 48),
(17, 'Sniper Rifle', 'A highly accurate and versatile Sniper Rifle', 1581, 55, 42),
(18, 'Tactical Shotgun', 'A highly accurate and versatile Tactical Shotgun', 4071, 96, 18),
(19, 'Combat Knife', 'A highly accurate and versatile Combat Knife', 4464, 59, 48),
(20, 'Chainsaw', 'A highly accurate and versatile Chainsaw', 3700, 23, 15),
(21, 'Flamethrower', 'A highly accurate and versatile Flamethrower', 4597, 66, 13),
(22, 'Laser Gun', 'A highly accurate and versatile Laser Gun', 3331, 78, 14),
(23, 'Energy Sword', 'A highly accurate and versatile Energy Sword', 3292, 43, 26),
(24, 'Pulse Rifle', 'A highly accurate and versatile Pulse Rifle', 2275, 62, 21),
(25, 'Plasma Cannon', 'A highly accurate and versatile Plasma Cannon', 4302, 100, 50),
(26, 'Gravity Hammer', 'A highly accurate and versatile Gravity Hammer', 2173, 96, 43),
(27, 'Railgun', 'A highly accurate and versatile Railgun', 1586, 80, 27),
(28, 'Dagger', 'A highly accurate and versatile Dagger', 874, 53, 36),
(29, 'Longbow', 'A highly accurate and versatile Longbow', 4128, 77, 15),
(30, 'Shortsword', 'A highly accurate and versatile Shortsword', 2047, 46, 47),
(31, 'War Axe', 'A highly accurate and versatile War Axe', 1706, 97, 49),
(32, 'Halberd', 'A highly accurate and versatile Halberd', 2701, 87, 33),
(33, 'Spear', 'A highly accurate and versatile Spear', 4749, 95, 19),
(34, 'Trident', 'A highly accurate and versatile Trident', 4596, 54, 7),
(35, 'Bo Staff', 'A highly accurate and versatile Bo Staff', 3117, 40, 28),
(36, 'Nunchaku', 'A highly accurate and versatile Nunchaku', 2382, 21, 20),
(37, 'Shuriken', 'A highly accurate and versatile Shuriken', 3664, 41, 49),
(38, 'Blowgun', 'A highly accurate and versatile Blowgun', 4594, 34, 37),
(39, 'Slingshot', 'A highly accurate and versatile Slingshot', 451, 32, 36),
(40, 'Tomahawk', 'A highly accurate and versatile Tomahawk', 4155, 87, 40),
(41, 'Morning Star', 'A highly accurate and versatile Morning Star', 1388, 36, 16),
(42, 'Scythe', 'A highly accurate and versatile Scythe', 1481, 69, 39),
(43, 'Whip', 'A highly accurate and versatile Whip', 2825, 37, 22),
(44, 'Battle Hammer', 'A highly accurate and versatile Battle Hammer', 3879, 58, 21),
(45, 'Greatsword', 'A highly accurate and versatile Greatsword', 1368, 48, 7),
(46, 'Spiked Club', 'A highly accurate and versatile Spiked Club', 2184, 34, 8),
(47, 'Double Axe', 'A highly accurate and versatile Double Axe', 3449, 80, 48),
(48, 'Hand Cannon', 'A highly accurate and versatile Hand Cannon', 2409, 94, 48),
(49, 'Repeater', 'A highly accurate and versatile Repeater', 2707, 79, 44),
(50, 'Carbine', 'A highly accurate and versatile Carbine', 3799, 66, 40);

-- --------------------------------------------------------

--
-- Structure de la table `t_commande`
--

CREATE TABLE `t_commande` (
  `commande_id` int(11) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `joueur_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_commande`
--

INSERT INTO `t_commande` (`commande_id`, `date_commande`, `numero`, `joueur_fk`) VALUES
(1, '2024-01-19', 6654, 7),
(2, '2024-07-15', 9694, 31),
(3, '2024-08-15', 4206, 11),
(4, '2024-08-27', 6195, 1),
(5, '2024-05-11', 6784, 19),
(6, '2024-05-25', 8502, 18),
(7, '2024-01-13', 4136, 22),
(8, '2024-10-01', 7696, 50),
(9, '2024-02-15', 5863, 10),
(10, '2024-11-20', 3325, 43),
(11, '2024-08-11', 8362, 12),
(12, '2024-10-31', 5507, 36),
(13, '2024-09-05', 8897, 28),
(14, '2024-11-15', 4164, 14),
(15, '2024-01-07', 5586, 44),
(16, '2023-12-17', 7531, 5),
(17, '2024-11-06', 7388, 5),
(18, '2024-06-08', 5286, 34),
(19, '2024-01-02', 6860, 10),
(20, '2024-09-26', 4895, 47),
(21, '2024-08-19', 9912, 31),
(22, '2024-11-05', 2961, 4),
(23, '2024-01-14', 2796, 46),
(24, '2024-07-15', 9272, 33),
(25, '2024-07-08', 7816, 4),
(26, '2024-07-11', 3893, 23),
(27, '2024-03-30', 9746, 31),
(28, '2024-12-04', 1754, 5),
(29, '2024-08-11', 2953, 26),
(30, '2024-09-13', 7908, 4),
(31, '2024-05-15', 4581, 37),
(32, '2024-05-24', 3982, 7),
(33, '2024-10-16', 4688, 2),
(34, '2023-12-15', 1055, 12),
(35, '2023-12-11', 9691, 36),
(36, '2024-11-09', 1792, 50),
(37, '2024-10-24', 7556, 1),
(38, '2024-03-21', 6998, 10),
(39, '2023-12-05', 7611, 37),
(40, '2023-12-12', 8027, 26),
(41, '2024-09-20', 4431, 29),
(42, '2024-02-01', 7898, 26),
(43, '2024-08-28', 2640, 3),
(44, '2024-05-12', 2384, 26),
(45, '2024-08-18', 1269, 16),
(46, '2024-01-29', 8129, 15),
(47, '2024-06-04', 3225, 13),
(48, '2024-07-07', 4812, 38),
(49, '2024-08-15', 6219, 16),
(50, '2024-06-27', 8936, 47);

-- --------------------------------------------------------

--
-- Structure de la table `t_detenir`
--

CREATE TABLE `t_detenir` (
  `arme_fk` int(11) NOT NULL,
  `commande_fk` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_detenir`
--

INSERT INTO `t_detenir` (`arme_fk`, `commande_fk`, `quantite`) VALUES
(1, 24, 5),
(3, 17, 1),
(3, 39, 1),
(3, 40, 2),
(4, 33, 5),
(4, 35, 1),
(4, 39, 2),
(6, 4, 2),
(7, 44, 2),
(9, 50, 3),
(13, 19, 4),
(13, 33, 1),
(14, 29, 3),
(14, 48, 4),
(15, 2, 1),
(15, 19, 4),
(15, 44, 5),
(16, 37, 2),
(19, 31, 1),
(21, 4, 5),
(21, 27, 4),
(24, 4, 4),
(24, 40, 5),
(24, 47, 5),
(24, 50, 5),
(26, 8, 2),
(26, 36, 3),
(28, 31, 2),
(28, 44, 5),
(28, 47, 5),
(29, 33, 1),
(29, 37, 1),
(33, 15, 3),
(35, 5, 5),
(35, 7, 1),
(35, 22, 1),
(38, 21, 3),
(38, 26, 4),
(42, 2, 3),
(42, 14, 4),
(43, 34, 3),
(43, 48, 1),
(44, 37, 4),
(47, 9, 5),
(48, 32, 3),
(49, 16, 4),
(50, 15, 2),
(50, 26, 5),
(50, 37, 1),
(50, 48, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_joueur`
--

CREATE TABLE `t_joueur` (
  `joueur_id` int(11) NOT NULL,
  `pseudonyme` varchar(100) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_joueur`
--

INSERT INTO `t_joueur` (`joueur_id`, `pseudonyme`, `points`) VALUES
(1, 'ShadowHunter', 67),
(2, 'xXNoScopeXx', 615),
(3, 'BladeRunner', 125),
(4, 'SilentKiller', 135),
(5, 'DarkPhoenix', 774),
(6, 'GhostRider', 206),
(7, 'LoneWolf', 776),
(8, 'CyberSamurai', 664),
(9, 'SniperWolf', 488),
(10, 'IronFist', 791),
(11, 'StealthNinja', 93),
(12, 'WarriorQueen', 813),
(13, 'NightStalker', 307),
(14, 'DragonSlayer', 186),
(15, 'DeadlyVenom', 329),
(16, 'IceDagger', 263),
(17, 'ThunderClaw', 752),
(18, 'FireStorm', 78),
(19, 'CrimsonFury', 966),
(20, 'GoldenArrow', 253),
(21, 'SilverBullet', 867),
(22, 'BlackWidow', 136),
(23, 'StormBreaker', 637),
(24, 'SavageBeast', 369),
(25, 'EagleEye', 291),
(26, 'LightningStrike', 370),
(27, 'ShadowFang', 459),
(28, 'VenomousViper', 780),
(29, 'Wraith', 979),
(30, 'PhantomBlaze', 944),
(31, 'RogueAssassin', 652),
(32, 'WildHawk', 98),
(33, 'ToxicBlade', 908),
(34, 'BloodRaven', 462),
(35, 'DeathDealer', 656),
(36, 'DarkKnight', 57),
(37, 'SilentShadow', 101),
(38, 'MysticArcher', 21),
(39, 'Inferno', 130),
(40, 'RagingBull', 144),
(41, 'SwiftArrow', 966),
(42, 'ViciousWolf', 560),
(43, 'StormRider', 657),
(44, 'BlazingPhoenix', 716),
(45, 'HawkEye', 78),
(46, 'ShadowReaper', 433),
(47, 'GhostSniper', 4),
(48, 'SteelClaw', 971),
(49, 'FrostBite', 477),
(50, 'WarHammer', 58);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD PRIMARY KEY (`joueur_fk`,`arme_fk`),
  ADD KEY `arme_fk` (`arme_fk`);

--
-- Index pour la table `t_arme`
--
ALTER TABLE `t_arme`
  ADD PRIMARY KEY (`arme_id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `t_commande`
--
ALTER TABLE `t_commande`
  ADD PRIMARY KEY (`commande_id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `joueur_fk` (`joueur_fk`);

--
-- Index pour la table `t_detenir`
--
ALTER TABLE `t_detenir`
  ADD PRIMARY KEY (`arme_fk`,`commande_fk`),
  ADD KEY `commande_fk` (`commande_fk`);

--
-- Index pour la table `t_joueur`
--
ALTER TABLE `t_joueur`
  ADD PRIMARY KEY (`joueur_id`),
  ADD UNIQUE KEY `pseudonyme` (`pseudonyme`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_arme`
--
ALTER TABLE `t_arme`
  MODIFY `arme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `t_commande`
--
ALTER TABLE `t_commande`
  MODIFY `commande_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `t_joueur`
--
ALTER TABLE `t_joueur`
  MODIFY `joueur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD CONSTRAINT `avoir_ibfk_1` FOREIGN KEY (`joueur_fk`) REFERENCES `t_joueur` (`joueur_id`),
  ADD CONSTRAINT `avoir_ibfk_2` FOREIGN KEY (`arme_fk`) REFERENCES `t_arme` (`arme_id`);

--
-- Contraintes pour la table `t_commande`
--
ALTER TABLE `t_commande`
  ADD CONSTRAINT `t_commande_ibfk_1` FOREIGN KEY (`joueur_fk`) REFERENCES `t_joueur` (`joueur_id`);

--
-- Contraintes pour la table `t_detenir`
--
ALTER TABLE `t_detenir`
  ADD CONSTRAINT `t_detenir_ibfk_1` FOREIGN KEY (`arme_fk`) REFERENCES `t_arme` (`arme_id`),
  ADD CONSTRAINT `t_detenir_ibfk_2` FOREIGN KEY (`commande_fk`) REFERENCES `t_commande` (`commande_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
