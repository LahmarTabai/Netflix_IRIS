-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 mai 2023 à 20:56
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `netflix`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `ID_ACTEUR` int(11) NOT NULL,
  `NOM_ACTEUR` varchar(128) DEFAULT NULL,
  `PRENOM_ACTEUR` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` int(11) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `ID_CLIENT` int(11) NOT NULL,
  `NOM_CLIENT` varchar(128) DEFAULT NULL,
  `PRENOM_CLIENT` varchar(128) DEFAULT NULL,
  `AGE_CLIENT` date DEFAULT NULL,
  `MAIL_CLIENT` varchar(30) DEFAULT NULL,
  `PASSWORD_CLIENT` varchar(128) NOT NULL,
  `CITY_CLIENT` varchar(128) DEFAULT NULL,
  `COUNTRY_CLIENT` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`ID_CLIENT`, `NOM_CLIENT`, `PRENOM_CLIENT`, `AGE_CLIENT`, `MAIL_CLIENT`, `PASSWORD_CLIENT`, `CITY_CLIENT`, `COUNTRY_CLIENT`) VALUES
(1, 'LAHMAR', 'TABAI', '1990-01-27', 'lahmartabai@yahoo.fr', '$2y$10$LaTO9xYN/JteSiLY9OtXpOVDM0q.2iy/aY2PoCy2FOF0QtstzyxuS', 'Paris', 'France'),
(2, 'Tabai', 'Tabaii', '1990-01-27', 'tabaitabai@yahoo.fr', '$2y$10$uMVZcjxuImtbbASFSbfW2OkefTptwYHMTcbRl01O5scGWrLTlme86', 'Marseille', 'Aruba');

-- --------------------------------------------------------

--
-- Structure de la table `consulter`
--

CREATE TABLE `consulter` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_EVENT` int(11) NOT NULL,
  `DATE_CONSULTATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `consulter`
--

INSERT INTO `consulter` (`ID_CLIENT`, `ID_EVENT`, `DATE_CONSULTATION`) VALUES
(1, 10, '2023-05-02 14:18:23'),
(2, 17, '2023-05-02 18:54:56'),
(2, 21, '2023-05-02 18:55:04');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `ID_EVENT` int(11) NOT NULL,
  `ID_GENRE` int(11) NOT NULL,
  `NOM_EVENT` varchar(30) DEFAULT NULL,
  `DESCRIPTION_EVENT` varchar(128) DEFAULT NULL,
  `DATE_CREATION` text NOT NULL,
  `DATE_MODIFICATION` datetime DEFAULT NULL,
  `IMAGE_EVENT` varchar(128) DEFAULT NULL,
  `NOTE` varchar(128) DEFAULT NULL,
  `TRAILER` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`ID_EVENT`, `ID_GENRE`, `NOM_EVENT`, `DESCRIPTION_EVENT`, `DATE_CREATION`, `DATE_MODIFICATION`, `IMAGE_EVENT`, `NOTE`, `TRAILER`) VALUES
(1, 1, 'Dungeons & Dragons', 'un film américano-canado-britannico-islando-australien réalisé par Jonathan Goldstein et John Francis Daley, sorti en 2023. Il s', '2023', '2023-10-10 12:34:56', './asset/Films/FILM/1.jpg', '9/10', './asset/Films/FILM/1.mp4'),
(2, 2, 'Luther : Soleil déchu', 'Luther: The Fallen Sun est un film américano-britannique réalisé par Jamie Payne et sorti en 2023. Il s\'agit d\'un long métrage f', '2023', '2023-01-01 09:00:00', './asset/Films/FILM/2.jpg', '8/10', './asset/Films/FILM/2.mp4'),
(3, 3, 'La Chronique des Bridgerton', 'Netflix dont la sortie est prévue le 4 mai 2023. Série dérivée de La Chronique des Bridgerton, elle est un préquel se concentran', '2023', '2023-02-02 15:00:00', './asset/Films/FILM/3.jpg', '9/10', './asset/Films/FILM/3.mp4'),
(4, 4, 'Super Mario Bros', 'The Super Mario Bros. Movie est un film d\'animation américano-japonais coréalisé par Aaron Horvath et Michael Jelenic (en), sort', '2023', '2023-10-10 12:34:56', './asset/Films/FILM/4.png', '9/10', './asset/Films/FILM/4.mp4'),
(5, 5, 'Sonic the Hedgehog', 'L\'histoire du hérisson bleu le plus rapide du monde qui arrive sur Terre, sa nouvelle maison. Sonic et son nouveau meilleur ami ', '2020', '2020-01-01 09:00:00', './asset/Films/FILM/5.jpg', '8/10', './asset/Films/FILM/5.mp4'),
(6, 6, 'Black Panther: Wakanda Forever', 'un film de super-héros américain coécrit et réalisé par Ryan Coogler, sorti en 2022. Il s\'agit du trentième film de l\'univers ci', '2022', '2022-02-02 15:00:00', './asset/Films/FILM/6.jpeg', '9/10', './asset/Films/FILM/6.mp4'),
(7, 7, 'Interstellar', 'Interstellar, ou Interstellaire au Québec et au Nouveau-Brunswick, est un film de science-fiction britannico-américain produit, ', '2016', '2016-10-10 12:34:56', './asset/Films/FILM/7.jpg', '9/10', './asset/Films/FILM/7.mp4'),
(8, 8, 'Un divan à Tunis', 'Après avoir passé une partie de sa vie en France, Selma, jeune psychanalyste, revient dans son pays d\'origine, la Tunisie, et ou', '2019', '2019-01-01 09:00:00', './asset/Films/FILM/8.jpg', '8/10', './asset/Films/FILM/8.mp4'),
(9, 9, 'Spider-Man: No Way Home', 'Après les événements liés à l\'affrontement avec Mystério, l\'identité secrète de Spider-Man a été révélée au monde entier. Il est', '2021', '2021-02-02 15:00:00', './asset/Films/FILM/9.jpeg', '9/10', './asset/Films/FILM/9.mp4'),
(10, 10, 'Shazam ! Fury of the Gods', 'Shazam ! Fury of the Gods is a 2023 American superhero film based on the DC Comics character Shazam. Produced by New Line Cinema', '2023', '2023-10-10 12:34:56', './asset/Films/FILM/10.jpg.webp', '9/10', './asset/Films/FILM/10.mp4'),
(11, 11, 'John Wick : Chapitre 4', 'John Wick continue sa lutte contre l’organisation criminelle connue sous le nom de la Grande Table, en affrontant un puissant en', '2023', '2023-01-01 09:00:00', './asset/Films/FILM/11.webp', '8/10', './asset/Films/FILM/11.mp4'),
(12, 12, 'Intouchables', 'Intouchables est une comédie dramatique française réalisée par Olivier Nakache et Éric Toledano, sortie en 2011. L\'histoire est ', '2011', '2011-02-02 15:00:00', './asset/Films/FILM/12.jpg', '9/10', './asset/Films/FILM/12.mp4'),
(13, 13, 'The Sandman', 'The Sandman est une série télévisée fantasy anglo-américaine créée et coproduite par Allan Heinberg, basée sur la série de roman', '2022', '2022-10-10 12:34:56', './asset/Films/SERIE/1.png', '9/10', './asset/Films/SERIE/1.mp4'),
(14, 14, 'The Boys', 'The Boys est une série télévisée américaine de super-héros développée par Eric Kripke et basée sur la bande dessinée du même nom', '2019', '2019-01-01 09:00:00', './asset/Films/SERIE/2.avif', '8/10', './asset/Films/SERIE/2.mp4'),
(15, 15, 'L\'Attaque des Titans', 'L\'Attaque des Titans Shingeki no Kyojin, litt. Le Titan assaillant, souvent abrégé SnK, aussi connu sous le titre Attack on Tita', '2022', '2022-02-02 15:00:00', './asset/Films/SERIE/3.jpg', '9/10', './asset/Films/SERIE/3.mp4'),
(16, 16, 'La casa de papel', 'La casa de papel ou La Maison de papier au Québec, est une série télévisée espagnole créée par Álex Pina et diffusée entre le 2 ', '2021', '2021-10-10 12:34:56', './asset/Films/SERIE/4.jpg', '9/10', './asset/Films/SERIE/4.mp4'),
(17, 17, 'Manifest', 'Manifest ou Turbulences est un feuilleton télévisé américain créé par Jeff Rake dont 42 épisodes de 43 minutes ont été diffusés ', '2019', '2019-01-01 09:00:00', './asset/Films/SERIE/5.jpg', '8/10', './asset/Films/SERIE/5.mp4'),
(18, 18, 'WandaVision', 'Trois semaines après la fin des évènements liés à Thanos, Wanda Maximoff est bouleversée par la mort de son compagnon. Elle se r', '2021', '2021-02-02 15:00:00', './asset/Films/SERIE/6.jpeg', '9/10', './asset/Films/SERIE/6.mp4'),
(19, 19, 'Stranger Things', 'Stranger Things est une série télévisée américaine de science-fiction horrifique, créée par les frères Matt et Ross Duffer et di', '2016', '2022-10-10 12:34:56', './asset/Films/SERIE/7.jpeg.webp', '9/10', './asset/Films/SERIE/7.mp4'),
(20, 20, 'Vers les étoiles', 'Vers les étoiles Night Sky est une série télévisée américaine de science-fiction en huit épisodes d\'environ 54 minutes créée et ', '2022', '2022-01-01 09:00:00', './asset/Films/SERIE/8.jpg', '8/10', './asset/Films/SERIE/8.mp4'),
(21, 21, 'Lucifer', 'Lucifer est une série télévisée américaine créée par Tom Kapinos, adaptée du personnage de bandes dessinées créée par Neil Gaima', '2019', '2019-02-02 15:00:00', './asset/Films/SERIE/9.jpg', '9/10', './asset/Films/SERIE/9.mp4'),
(22, 22, 'Jack Ryan', 'Jack Ryan de Tom Clancy ou simplement Jack Ryan est une série télévisée américaine d\'espionnage et de politique fondée sur des p', '2018', '2018-10-10 12:34:56', './asset/Films/SERIE/10.jpg', '9/10', './asset/Films/SERIE/10.mp4'),
(23, 23, 'Invincible', 'Mark Grayson est un adolescent normal, à l\'exception du fait que son père, Nolan, est le super-héros le plus puissant de la plan', '2021', '2021-01-01 09:00:00', './asset/Films/SERIE/11.jpg', '8/10', './asset/Films/SERIE/11.mp4'),
(24, 24, 'Hawkeye', 'Hawkeye est une mini-série créée par Jonathan Igla pour le service de streaming Disney+, basée sur le personnage de Marvel Comic', '2023', '2023-02-02 15:00:00', './asset/Films/SERIE/12.jpg.webp', '9/10', './asset/Films/SERIE/12.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `ID_GENRE` int(11) NOT NULL,
  `DESCRIPTION_GENRE` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`ID_GENRE`, `DESCRIPTION_GENRE`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Horreur'),
(5, 'Action'),
(6, 'Comédie'),
(7, 'Drame'),
(8, 'Horreur'),
(9, 'Action'),
(10, 'Comédie'),
(11, 'Drame'),
(12, 'Horreur'),
(13, 'Action'),
(14, 'Comédie'),
(15, 'Drame'),
(16, 'Horreur'),
(17, 'Action'),
(18, 'Comédie'),
(19, 'Drame'),
(20, 'Horreur'),
(21, 'Action'),
(22, 'Comédie'),
(23, 'Drame'),
(24, 'Horreur');

-- --------------------------------------------------------

--
-- Structure de la table `historique_client`
--

CREATE TABLE `historique_client` (
  `DATE_CONSULTATION` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `h_client`
--

CREATE TABLE `h_client` (
  `ID_CLIENT` int(11) NOT NULL,
  `DATE_HISTO` timestamp NOT NULL DEFAULT current_timestamp(),
  `NOM_CLIENT` varchar(128) DEFAULT NULL,
  `PRENOM_CLIENT` varchar(128) DEFAULT NULL,
  `AGE_CLIENT` int(11) DEFAULT NULL,
  `MAIL_CLIENT` varchar(30) DEFAULT NULL,
  `PASSWORD_CLIENT` varchar(128) DEFAULT NULL,
  `CITY_CLIENT` varchar(128) DEFAULT NULL,
  `COUNTRY_CLIENT` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Table d''historisation des modifications de la table CLIENT';

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `ID_ACTEUR` int(11) NOT NULL,
  `ID_EVENT` int(11) NOT NULL,
  `ROLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mise_a_jour`
--

CREATE TABLE `mise_a_jour` (
  `ID_EVENT` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL,
  `ID_ADMIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `ID_REALISATEUR` int(11) NOT NULL,
  `NOM_REALISATEUR` varchar(30) DEFAULT NULL,
  `PRENOM_REALISATEUR` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realiser`
--

CREATE TABLE `realiser` (
  `ID_EVENT` int(11) NOT NULL,
  `ID_REALISATEUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `top_ten`
--

CREATE TABLE `top_ten` (
  `ID_TOP` int(11) NOT NULL,
  `NOM_TOP` varchar(128) DEFAULT NULL,
  `IMAGE_TOP` varchar(128) DEFAULT NULL,
  `PRESENTATION_TOP` varchar(128) DEFAULT NULL,
  `DATE_TOP` date DEFAULT NULL,
  `VIDEO_TOP` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `top_ten`
--

INSERT INTO `top_ten` (`ID_TOP`, `NOM_TOP`, `IMAGE_TOP`, `PRESENTATION_TOP`, `DATE_TOP`, `VIDEO_TOP`) VALUES
(1, 'Stranger Things', './asset/Films/TOP/Stranger-Things-s04.jpg', 'Découvrez les meilleurs films de l\'année', '2022-01-01', './asset/Films/TOP/Stranger Things _ Bande-annonce VF _ Netflix France.mp4'),
(2, 'Mercredi ', './asset/Films/TOP/Mercredi.jpg', 'Mercredi Addams est envoyée par ses parents, Gomez et Morticia, au sein de la Nevermore Academy, à Jericho dans le Vermont, aprè', '2022-02-01', './asset/Films/TOP/Mercredi _ Teaser officiel VF _ Netflix France.mp4'),
(3, 'Jeffrey Dahmer', './asset/Films/TOP/dahmer.webp', 'Jeffrey Dahmer, né le 21 mai 1960 à Milwaukee et mort le 28 novembre 1994 à la prison de Columbia, surnommé « le cannibale de Mi', '2022-03-01', './asset/Films/TOP/Dahmer - Monster_ The Jeffrey Dahmer Story Limited Series Trailer.mp4'),
(4, 'Bridgerton', './asset/Films/TOP/bridgerton.jpg', 'La série se déroule dans la haute société londonienne lors de la Régence anglaise du xixe siècle. L\'histoire se concentre sur de', '2022-04-01', './asset/Films/TOP/Bridgerton _ Official Trailer _ Netflix.mp4'),
(5, 'Inventing Anna', './asset/Films/TOP/Inventing_anna.jpg', 'Anna Delvey, jeune femme russe, va réussir à escroquer plusieurs milliers de dollars à des jeunes new-yorkais faisant partie de ', '2022-05-01', './asset/Films/TOP/Inventing Anna _ Official Trailer _ Netflix.mp4'),
(6, 'Ozark', './asset/Films/TOP/Ozark.jpg', 'Après qu\'une opération de blanchiment d\'argent pour un cartel mexicain de la drogue a mal tourné, le conseiller financier Martin', '2022-06-01', './asset/Films/TOP/Ozark _ Official Trailer [HD] _ Netflix.mp4'),
(7, 'The Watcher', './asset/Films/TOP/The Watcher.jpg', 'La série suit l\'histoire vraie d\'un couple marié qui, après avoir emménagé dans la maison de leurs rêves dans le New Jersey, est', '2022-07-01', './asset/Films/TOP/The Watcher.mp4'),
(8, 'The Umbrella Academy', './asset/Films/TOP/The_Umbrella.jpg', 'En octobre 1989, au même moment 43 femmes à travers le monde donnent naissance à un enfant doté de capacités extraordinaires, le', '2022-08-01', './asset/Films/TOP/The Umbrella Academy _ Official Trailer _ Netflix.mp4'),
(9, 'The Gray Man', './asset/Films/TOP/The_Gray_Man.jpg', 'Il s\'agit d\'une équipe de criminels travaillant comme tueurs pour des opérations secrètes du gouvernement. Dix-huit ans plus tar', '2022-09-01', './asset/Films/TOP/THE GRAY MAN _ Official Trailer _ Netflix.mp4'),
(10, 'Purple Hearts', './asset/Films/TOP/purple_hearts.jpg', 'Nos cœurs meurtris est un film romantique américain réalisé par Elizabeth Allen Rosenbaum et sorti en 2022 sur Netflix. Il s\'agi', '2022-10-01', './asset/Films/TOP/Purple Hearts _ Official Trailer _ Netflix.mp4'),
(11, 'Hustle', './asset/Films/TOP/hustle1.jpg', 'Hustle was released in select theaters June 3, 2022, and worldwide on Netflix on June 8. According to Netflix, it was the platfo', '2022-11-01', './asset/Films/TOP/Hustle starring Adam Sandler _ Official Trailer _ Netflix.mp4'),
(12, 'Il Mio Nome È Vendetta', './asset/Films/TOP/Vendetta.jpg', 'Lorsque des ennemis surgis du passé tuent sa femme et son beau-frère, un ancien homme de main de la mafia et sa fille s\'enfuient', '2022-12-01', './asset/Films/TOP/Il Mio Nome È Vendetta _ Trailer ufficiale _ Netflix.mp4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`ID_ACTEUR`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID_CLIENT`);

--
-- Index pour la table `consulter`
--
ALTER TABLE `consulter`
  ADD PRIMARY KEY (`ID_CLIENT`,`ID_EVENT`,`DATE_CONSULTATION`),
  ADD KEY `I_FK_CONSULTER_HISTORIQUE_CLIENT` (`DATE_CONSULTATION`),
  ADD KEY `I_FK_CONSULTER_CLIENT` (`ID_CLIENT`),
  ADD KEY `I_FK_CONSULTER_FILMS` (`ID_EVENT`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`ID_EVENT`),
  ADD KEY `I_FK_FILMS_GENRE` (`ID_GENRE`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID_GENRE`);

--
-- Index pour la table `historique_client`
--
ALTER TABLE `historique_client`
  ADD PRIMARY KEY (`DATE_CONSULTATION`);

--
-- Index pour la table `h_client`
--
ALTER TABLE `h_client`
  ADD PRIMARY KEY (`ID_CLIENT`,`DATE_HISTO`),
  ADD KEY `I_FK_H_CLIENT_CLIENT` (`ID_CLIENT`);

--
-- Index pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`ID_ACTEUR`,`ID_EVENT`),
  ADD KEY `I_FK_JOUER_ACTEUR` (`ID_ACTEUR`),
  ADD KEY `I_FK_JOUER_FILMS` (`ID_EVENT`);

--
-- Index pour la table `mise_a_jour`
--
ALTER TABLE `mise_a_jour`
  ADD PRIMARY KEY (`ID_EVENT`,`ID_CLIENT`,`ID_ADMIN`),
  ADD KEY `I_FK_MISE_A_JOUR_FILMS` (`ID_EVENT`),
  ADD KEY `I_FK_MISE_A_JOUR_CLIENT` (`ID_CLIENT`),
  ADD KEY `I_FK_MISE_A_JOUR_ADMIN` (`ID_ADMIN`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`ID_REALISATEUR`);

--
-- Index pour la table `realiser`
--
ALTER TABLE `realiser`
  ADD PRIMARY KEY (`ID_EVENT`,`ID_REALISATEUR`),
  ADD KEY `I_FK_REALISER_FILMS` (`ID_EVENT`),
  ADD KEY `I_FK_REALISER_REALISATEUR` (`ID_REALISATEUR`);

--
-- Index pour la table `top_ten`
--
ALTER TABLE `top_ten`
  ADD PRIMARY KEY (`ID_TOP`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `ID_EVENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `top_ten`
--
ALTER TABLE `top_ten`
  MODIFY `ID_TOP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `FK_FILMS_GENRE` FOREIGN KEY (`ID_GENRE`) REFERENCES `genre` (`ID_GENRE`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `FK_JOUER_ACTEUR` FOREIGN KEY (`ID_ACTEUR`) REFERENCES `acteur` (`ID_ACTEUR`),
  ADD CONSTRAINT `FK_JOUER_FILMS` FOREIGN KEY (`ID_EVENT`) REFERENCES `films` (`ID_EVENT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
