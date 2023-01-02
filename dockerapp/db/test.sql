-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 24 juin 2021 à 12:46
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bus-magique`
--

-- --------------------------------------------------------

--
-- Structure de la table `carte_category`
--

DROP TABLE IF EXISTS `carte_category`;
CREATE TABLE IF NOT EXISTS `carte_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `icon_url` text,
  `subtitle` text,
  `has_price` text,
  `price` text,
  `volume_1` text,
  `volume_2` text,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `carte_category`
--

INSERT INTO `carte_category` (`id`, `parent_id`, `icon_url`, `subtitle`, `has_price`, `price`, `volume_1`, `volume_2`, `title`, `description`) VALUES
(1, 0, 'miam-miam.svg', NULL, 'non', NULL, NULL, NULL, 'Le miam-miam', 'Tous les jours nous vous concoctons deux bons p’tits plats du jour au choix… toujours avec des produits végétaux, bio, locaux et de saison.<br><br>\r\n\r\n                Dahls, Bo bùn, tartes salées, salades, tartinades veloutés, gratins… nous réinventons les classiques avec un peu de magie !</p>'),
(2, 0, 'brunch-brunch.svg', 'du dimanche', 'non', NULL, NULL, NULL, 'Le brunch-brunch', ''),
(3, 0, 'glou-glou.svg', NULL, NULL, NULL, NULL, NULL, 'Le glou-glou', ''),
(4, 1, NULL, NULL, 'oui', 'entre 10.50€ et 15€\r\n\r\n', NULL, NULL, 'Plat du jour \r\n', ''),
(5, 1, NULL, NULL, 'oui', 'entre 3.50€ et 5€\r\n', NULL, NULL, 'Dessert', ''),
(6, 2, NULL, NULL, 'oui', '22€', NULL, NULL, 'le brunch magique simple', 'Du bon pain beurre/confiture<br>\r\n                        Muesli (+ lait au fromage blanc) ou duo de houmous<br>\r\n                        Pain perdu ou moelleux choco<br>\r\n                        Patate au four, crudités et sauce crémeuse<br>\r\n                        Une boisson fraîche (0% alcool)<br>\r\n                        Un thé ou un café*<br>\r\n                        Une salade de fruit'),
(7, 2, NULL, NULL, 'oui', '24€', NULL, NULL, 'le brunch magique gourmand', '<span class=\"asterisk\">*</span> <strong>Version gourmande :</strong> remplacer le thé ou le café par la boisson chaude de votre choix !'),
(8, 3, NULL, NULL, 'non', NULL, '25CL', '50CL', 'les pressions', ''),
(9, 3, NULL, NULL, 'non', NULL, 'verre', 'bouteille', 'les vins', ''),
(10, 3, NULL, NULL, 'non', NULL, NULL, NULL, 'les softs', ''),
(11, 3, NULL, NULL, 'non', NULL, NULL, NULL, 'les boissons chaudes', '');

-- --------------------------------------------------------

--
-- Structure de la table `carte_item`
--

DROP TABLE IF EXISTS `carte_item`;
CREATE TABLE IF NOT EXISTS `carte_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `valeur_1` text,
  `valeur_2` text,
  `category_id` int(11) DEFAULT NULL,
  `legend_id` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `carte_item`
--

INSERT INTO `carte_item` (`id`, `name`, `valeur_1`, `valeur_2`, `category_id`, `legend_id`) VALUES
(1, 'Norsse - 5°', '2.50€', '4.50€', 8, NULL),
(2, 'Saison Dupont (Bio) - 5,5°', '3.30€', '6.00€', 8, NULL),
(3, 'Yuzu (Célestin) - 5,3°', '3.80€', '7.50€', 8, NULL),
(4, 'Blonde Bellenaert - 5,9°', '3.50€', '6.50€', 8, NULL),
(5, 'XX Bitter - 6°', '3.80€', '7.00€', 8, NULL),
(6, 'Java - Gascogne (léger) - 12°<', '3.00€', '15.00€', 9, '1'),
(7, 'Le vin à boire - Languedoc (corsé) - 12°', '4.00€', '20.00€', 9, '1'),
(8, 'Grès de gris - Figueirasse - 12,5°', '3.50€', '17.00€', 9, '2'),
(9, 'Chiroulet (moelleux) - 12°', '4.50€', '22.00€', 9, '3'),
(10, 'Gaillet Fournier (sec) - 12°', '3.00€', '15.00€', 9, '3'),
(11, 'Denois Tradition (crémant) - 12°', '', '30.00€', 9, '4'),
(12, 'Cidre - 4°', '', '8.00€', 9, '4'),
(13, 'Sirops (menthe, grenadine, citron, kiwi, orgeat, noisette)', '', '2.00€', 10, NULL),
(14, 'Limonade', '', '3.00€', 10, NULL),
(15, 'Jus de fruit (pomme, pomme poire, pomme mangue, sureau, tomate, orange)', '', '3.00€', 10, NULL),
(16, 'Diabolo', '', '3.00€', 10, NULL),
(17, 'Expresso', '', '1.70€', 11, NULL),
(18, 'Américano', '', '2.50€', 11, NULL),
(19, 'Café piston', '', '3.50€', 11, NULL),
(20, 'Latte Macchiato', '', '4.20€', 11, NULL),
(21, 'Cappuccino', '', '3.20€', 11, NULL),
(22, 'Mokaccino', '', '4.50€', 11, NULL),
(23, 'Chocolat chaud', '', '4.00€', 11, NULL),
(24, 'Matcha latté', '', '4.80€', 11, NULL),
(25, 'Cappucino matcha', '', '4.50€', 11, NULL),
(26, 'Lait d\'orgeat', '', '3.50€', 11, NULL),
(27, 'Thé, infusion(lait d\'avoine : + 0,50€) (matcha : + 0,50€)', '', '3.50€', 11, NULL),
(28, 'Assam Indes (nature)', '', '', 11, '5'),
(29, 'Earl grey', '', '', 11, '5'),
(30, 'Poire gourmande (amandes, fève tonka)', '', '', 11, '5'),
(31, 'Nanjeor Tejn Corée (nature)', '', '', 11, '6'),
(32, 'T\'eu verras chez bon (abricot, pêche, passion)', '', '', 11, '6'),
(33, 'Détox des louloutes (thé vert, matcha, maté, gingembre, citron)', '', '', 11, '6'),
(34, 'Tri doska', '', '', 11, '7'),
(35, 'Elixir du Bos (pomme framboise, mûre verveine, passiflore)', '', '', 11, '7');

-- --------------------------------------------------------

--
-- Structure de la table `carte_legende`
--

DROP TABLE IF EXISTS `carte_legende`;
CREATE TABLE IF NOT EXISTS `carte_legende` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `carte_legende`
--

INSERT INTO `carte_legende` (`id`, `name`, `value`) VALUES
(1, 'Vin rouge', 'orange'),
(2, 'Vin rosé', 'red'),
(3, 'Vin blanc', 'yellow'),
(4, 'Pétillant', 'jungle-green'),
(5, 'Thé noir', 'black'),
(6, 'Thé vert', 'green'),
(7, 'Infusion', 'jungle-green');

-- --------------------------------------------------------

--
-- Structure de la table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE IF NOT EXISTS `contact_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  `prenom` text,
  `mail` text,
  `objet` text,
  `date_message` datetime DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `coworking_form`
--

DROP TABLE IF EXISTS `coworking_form`;
CREATE TABLE IF NOT EXISTS `coworking_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  `prenom` text,
  `mail` text,
  `telephone` int(11) DEFAULT NULL,
  `date_souhaitee` datetime DEFAULT NULL,
  `matin` text,
  `apres_midi` text,
  `date_message` datetime DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `location_form`
--

DROP TABLE IF EXISTS `location_form`;
CREATE TABLE IF NOT EXISTS `location_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  `prenom` text,
  `mail` text,
  `telephone` int(11) DEFAULT NULL,
  `formule` text,
  `date_souhaitee` datetime DEFAULT NULL,
  `date_message` datetime DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1502069161, 924636698, 'salut mec'),
(2, 924636698, 1502069161, 'slt bg'),
(3, 924636698, 1502069161, 'tfk mec'),
(4, 1502069161, 924636698, 'rien et toi'),
(5, 924636698, 1502069161, 'salam a tous'),
(6, 1502069161, 924636698, 'ha ouai'),
(7, 1040781236, 924636698, 'ça va mec');

-- --------------------------------------------------------

--
-- Structure de la table `page_head`
--

DROP TABLE IF EXISTS `page_head`;
CREATE TABLE IF NOT EXISTS `page_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `page_head_slider_id` int(11) DEFAULT NULL,
  `url_icon_hublot` text,
  `color` text,
  `url_icon_scroll` text,
  `subtitle` text,
  `description` text,
  `scroll_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `page_head`
--

INSERT INTO `page_head` (`id`, `title`, `page_head_slider_id`, `url_icon_hublot`, `color`, `url_icon_scroll`, `subtitle`, `description`, `scroll_text`) VALUES
(1, 'Bienvenu.e.s à bord du bus magique !', 1, 'bird.svg', 'yellow', 'ancre.svg', NULL, 'Embarquement immédiat vers votre tiers-lieu convivial et participatif sur une jolie péniche amarrée à l’entrée de la Citadelle de Lille. ', 'scrollez jeunesse !'),
(2, 'Notre histoire', 2, 'phare.svg', 'yellow', 'lunette.svg', 'Qui sommes-nous ?', 'Vous vous demandez où vous avez embarqué? On vous raconte tout ça ici…', 'découvrez-nous !'),
(3, 'Programmation', 3, 'calendrier.svg', 'red ', 'fish.svg', NULL, 'En plus de flotter sur l\'eau, la péniche est dans le vent !\r\nDécouvrez ici sa programmation.', 'rejoignez la vie de la péniche'),
(4, 'Restauration', 4, 'plat.svg', 'green', 'crabe.svg', 'Nos cartes', 'Saveurs locales, cuisine saine, gourmande, conviviale et concoctée avec amour !', 'venez déguster nos bons petits plats !'),
(5, 'Co-working', 5, 'crayon.svg', 'green', 'fenetre.svg', NULL, 'Une belle lumière, un cadre apaisant et ressourçant au bord de l’eau… quoi de mieux pour travailler ! Le Bus Magique vous permet de profiter de ses espaces dédiés au co-working les jeudi et vendredi de chaque semaine de 9h à 12h et de 14h à 17h.\r\n', 'laissez-vous porter par la deÛle'),
(6, 'Location', 6, 'chaise.svg', 'orange', 'helm.svg', NULL, 'Séminaires, réunions d’entreprise, anniversaires… louez un espace de réception sur l’eau.', 'changez de cadre pour vos événements'),
(7, 'L\'association', 7, 'bus.svg', 'yellow', 'boussole.svg', 'Des valeurs dans l\'moteur !', 'Observez le monde avec un peu de distance, prenez soin de vous et de votre environnement et reprenez contact avec la nature et les autres.', 'découvrez la vie associative par ici !'),
(8, 'Monter à bord', 8, 'voile.svg', 'yellow', 'ventilo.svg', 'Pourquoi adhérer ?', 'Une adhésion est obligatoire pour profiter de tout ou partie des offres du Bus magique. En plus, adhérer c\'est soutenir nos valeurs et la démarche, c\'est se donner la possibilité de s\'impliquer dans la vie du lieu !', 'en avant !');

-- --------------------------------------------------------

--
-- Structure de la table `page_site`
--

DROP TABLE IF EXISTS `page_site`;
CREATE TABLE IF NOT EXISTS `page_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `url` text,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `page_site`
--

INSERT INTO `page_site` (`id`, `title`, `url`, `content`) VALUES
(1, 'Accueil', '/index.php', ''),
(2, 'Notre histoire', '/notre_histoire.php', ' <h2>La naissance d\'un équipage<div class=\"icon-title green\"></div></h2>\r\n    \r\n    <p>Le Bus Magique est d\'abord un projet né du constat que nous sommes très nombreux à courir sans cesse après le temps, sans savoir comment prendre soin de nous, alors même que nous en ressentons en permanence le besoin…\r\n\r\n    <p>L’idée de proposer un lieu ressourçant et atypique en plein cœur de Lille a alors germé dans l\'esprit de Julie, thérapeute et joggeuse à la citadelle. Elle en a parlé autour d\'elle et rapidement, une petite équipe s\'est constituée en association au printemps 2018, afin de relever ce défi et s\'atteler à dessiner les premiers contours de ce projet fou ! </p>\r\n    <p>En juillet 2018, l\'association remporte l\'autorisation de stationner une péniche devant le champ de Mars où vous pouvez trouver maintenant Le Bus Magique... Il ne reste plus qu\'à trouver un bateau à cette belle idée... et après quelques pérégrinations, nous nous laisserons définitivement envoûter en février 2019 par la péniche citerne Île, une vieille dame de 1954.</p>\r\n    \r\n    <p>C\'est à peu près à cette période que Julien a rejoint le projet. Le joyeux équipage a continué de grandir et s’est retroussé les manches lors de chantiers participatifs organisés entre février 2019 et octobre 2020. Au programme : transformer une péniche qui transportait des hydrocarbures en lieu de vie convivial et… écologique (ouais, même pas peur 😉) !</p>\r\n    \r\n    <h2>La transformation du navire<div class=\"icon-title orange\"></div></h2>\r\n\r\n    <p>Mine de rien, la péniche nous a bien fait voyager… enchaînant les travaux à Cappy (dans la Somme), Namur (en chantier naval), aux Ports de Lille et enfin... ici ! Au total, une centaine de bénévoles magiques ont donné de leur énergie pour aboutir à ce que vous voyez maintenant autour de vous : déblayage, combat contre la rouille, peintures, cloisons, aménagement… toujours en bonne compagnie et avec le sourire!</p>\r\n    \r\n\r\n    <div class=\"generic-galery\">\r\n        <img src=\"images/la_peniche.png\">\r\n    </div>\r\n    \r\n    <p>Aujourd\'hui, nous avons la chance de pouvoir faire vivre nos valeurs dans ce lieu tout en poésie !</p>\r\n    \r\n    <p>Alors embarquez, les possibilités à bord sont infinies: participer à nos ateliers, découvrir notre programmation culturelle en famille ou entre amis, tout simplement déguster un bon p\'tit plat fait-maison avec amouuuur... ou bien encore boire un verre en regardant les reflets danser sur le miroir de l\'eau !</p>\r\n    \r\n    <p>L’aventure est loin d’être terminée : cette belle histoire continue de s\'écrire jour après jour... et il appartient à chacun de faire vivre le lieu ! Il n\'y a plus de travaux mais les bénévoles et leurs belles énergies sont toujours le carburant essentiel au voyage du Bus magique : proposer une activité ou de la programmation, partager une compétence ou des réflexions, donner un coup de main... et toi aussi - si l’envie t’en dit - tu peux prendre place à bord et devenir moussaillon actif, parce qu\'on a compris qu\'ensemble on va plus loin, plus beau et plus fou !</p>\r\n    <button class=\"cta\">joignez-vous à l\'aventure ! </button>'),
(3, 'Programmation', '/programmation.php', ''),
(4, 'Restauration', '/restauration.php', ''),
(5, 'Co-working', '/co-working.php', ''),
(6, 'Location', '/location.php', ''),
(7, 'L\'association', '/association.php', ''),
(8, 'Monter à bord', '/monter_a_bord.php', ''),
(9, 'Contact', '/contact.php', '');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page_site` int(11) DEFAULT NULL,
  `icon_url` text,
  `title` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `id_page_site` (`id_page_site`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `id_page_site`, `icon_url`, `title`, `description`) VALUES
(1, 5, 'cafe.svg', 'à boire', 'Thé et café à volonté'),
(2, 5, 'burger.svg', 'à manger', 'Pâtisseries, boissons gourmandes, restauration le midi possible sur place'),
(3, 5, 'wifi.svg', 'un lieu connecté', 'Connexion internet haut débit\r\nWi-Fi et réseau Ethernet'),
(4, 6, 'chaise2.svg', 'salle', '60 personnes assises\r\n100 personnes en cocktail'),
(5, 6, 'terrasse.svg', 'terrasse', '20 personnes assises\r\n60 personnes en cocktail'),
(6, 6, 'wifi.svg', 'un lieu connecté', 'Connexion internet haut débit\r\nWi-Fi et réseau Ethernet'),
(7, 6, 'accessible.svg', 'un lieu accessible', 'Parking gratuit (Champ de Mars)\r\nMétro Rihour ; Station V\'Lille à moins de 5 minutes'),
(8, 6, 'lampe.svg', 'à la carte', 'Vidéoprojecteur, petite sonorisation, animation… demandez-nous ! '),
(9, 6, 'bonus.svg', 'en bonus ?', 'L’accès aux cuisines et au bar est possible en passant par nos traiteurs partenaires.'),
(10, 7, 'peche.svg', 'économie & \r\nculture locale', 'Saveurs culinaires ou culturelles, éveillez vos sens en vous régalant de produits locaux, issus de circuits-courts !'),
(11, 7, 'tree.svg', 'bien-être & nature', 'Venez faire une pause pour observer le monde qui vous entoure, prendre soin de vous et de votre environnement.'),
(12, 7, 'hand.svg', 'lien social', ' Ici on vous propose de reprendre contact avec la nature ET AVEC LES AUTRES !');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`id`, `title`) VALUES
(1, 'slider-notre_histoire'),
(2, 'slider-accueil'),
(3, 'slider-programmation'),
(4, 'slider-restauration'),
(5, 'slider-co-working'),
(6, 'slider-location'),
(7, 'slider-association'),
(8, 'slider-monter_a_bord');

-- --------------------------------------------------------

--
-- Structure de la table `slider_item`
--

DROP TABLE IF EXISTS `slider_item`;
CREATE TABLE IF NOT EXISTS `slider_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_slider_id` int(11) DEFAULT NULL,
  `url_image` text,
  PRIMARY KEY (`id`),
  KEY `head_slider_id` (`head_slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider_item`
--

INSERT INTO `slider_item` (`id`, `head_slider_id`, `url_image`) VALUES
(1, 1, 'peniche1.svg'),
(3, 2, 'peniche1.svg'),
(4, 3, 'peniche2.svg'),
(5, 4, 'food.svg'),
(6, 5, 'communication.svg'),
(7, 6, 'party.svg'),
(8, 7, 'peniche1.svg'),
(9, 8, 'peniche1.svg');

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page_site` int(11) DEFAULT NULL,
  `icon_url` text,
  `title` text,
  `category` text,
  `color` text,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_page_site` (`id_page_site`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id`, `id_page_site`, `icon_url`, `title`, `category`, `color`, `description`) VALUES
(1, 5, 'bag.svg', 'créneau<br>demi-journée', 'ticket classe affaire', 'jungle-green', ''),
(2, 6, 'vague.svg', '1 journée\r\nde 9h à 19h', 'croisière', 'orange', ''),
(3, 6, 'sun.svg', '1 soirée\r\nde 19h à minuit', 'excursion nocture', 'jungle-green', ''),
(4, 6, 'moon.svg', 'entre minuit \r\net 2h du matin', 'bain de minuit', 'green', ''),
(5, 7, 'pedalo.svg', 'boire et manger\r\nà l\'année', 'adhésion pédalo', 'red', 'Pour boire un verre ou manger un bout en dehors de nos temps de programmation et d’ateliers !'),
(6, 7, 'big-boat.svg', 'participer\r\naux événements', 'adhésion traversée', 'green', 'Adhésion Pédalo + 4€\r\nPour partager les moments forts sur la péniche !');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` int(11) NOT NULL,
  `prenom` text,
  `nom` text,
  `email` text,
  `password` text,
  `question` text,
  `reponse` text,
  `date_de_naissance` datetime DEFAULT NULL,
  `sexe` text,
  `img_profil` text,
  `status` text,
  `adresse` text,
  `ville` text,
  `departement` int(11) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `niveau` text,
  `commentaire_niveau` text,
  `perimetre_deplacement` text,
  `pseudo` text,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `prenom`, `nom`, `email`, `password`, `question`, `reponse`, `date_de_naissance`, `sexe`, `img_profil`, `status`, `adresse`, `ville`, `departement`, `code_postal`, `niveau`, `commentaire_niveau`, `perimetre_deplacement`, `pseudo`) VALUES
(1, 272430289, 'test', 'test', 'test@gmail.com', 'a3876fafbc8b9b9d3820b6e3a610e3d2', 'Dans quelle ville êtes-vous né ?', 'Dunkerque', '2021-06-09 00:00:00', 'Homme', '1623256094cmoi.png', 'Active now', NULL, NULL, 0, 0, NULL, NULL, NULL, 'pseudo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
