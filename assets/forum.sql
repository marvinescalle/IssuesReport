-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 juin 2022 à 14:36
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `forum`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `pseudo_auteur` varchar(255) NOT NULL,
  `id_question` int(11) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `id_auteur`, `pseudo_auteur`, `id_question`, `contenu`) VALUES
(1, 7, 'marmar', 3, 'moi aussi je suis content<br />\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `contenu` text NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `pseudo_auteur` varchar(255) NOT NULL,
  `date_publication` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `titre`, `description`, `contenu`, `id_auteur`, `pseudo_auteur`, `date_publication`) VALUES
(2, 'marmar', 'marmar', 'marmarmar', 5, 'marmar4', '03/06/2022'),
(3, 'bonjour', 'il fait <br />\r\nbeau', 'aujourd&#039;hui il fait<br />\r\nsuper beau<br />\r\nje suis content', 7, 'marmar', '03/06/2022'),
(4, 'salut le monde', 'le nouveau patch lol il pue sa mère la pute', 'jpp maintenant les assasssins ils assassinent plus du tout c&#039;est trop chiant !!!', 8, 'marmar6', '03/06/2022');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `nom`, `prenom`, `mdp`) VALUES
(2, 'marmar2', 'escalle', 'marvin', '$2y$10$J6NdsK0FJ5mCWWJs4oF3yeNFyxyI6qYGdyhf.U5443q'),
(3, 'marmar1', 'escalle', 'marvin', '$2y$10$UJbN8lm653c97FU9eCz9lO.aGecBdqpRMKbOA2G6kDT'),
(4, 'marmar3', 'marmar', 'marmar', '$2y$10$mXDCtUIpVNFQe3H87hPwROSP31IXDtb0YTOorpml99o'),
(5, 'marmar4', 'marmar', 'marmar', '$2y$10$H0lxgcy7Y4xhClXZEOAbDODmkLX4t2JpLQnaVjnwv3H'),
(6, 'marmar5', 'marmar', 'marmar', '$2y$10$sD42ffJIwkX0jcEJNJqw.OqqlGRYCrYEhE2lvmmZaJ0'),
(7, 'marmar', 'marmar', 'marmar', '$2y$10$od8VMAuRl6lxzTdwObyFiuoBk46RlveHNJMXYet/bWI'),
(8, 'marmar6', 'marmar', 'marmar', '$2y$10$08cUhhh8pBd12HkTBLcyp.ghw265zmmpdvpD/GArbRC');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
