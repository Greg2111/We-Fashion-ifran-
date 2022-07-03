-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 03 juil. 2022 à 22:19
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exo_ifran`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(211, '2014_10_12_000000_create_users_table', 1),
(212, '2014_10_12_100000_create_password_resets_table', 1),
(213, '2019_08_19_000000_create_failed_jobs_table', 1),
(214, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(215, '2022_03_24_234915_create_products_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `size`, `image`, `visibility`, `status`, `reference`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Kemmer', 'Emily blnt', 7895, 'S', 'd2f5b4b2-b241-4dbe-b084-10424e0a1d69.png', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/003322?text=ipsam', 'femme', '2022-06-30 17:53:01', '2022-07-02 21:58:25'),
(2, 'Geraldine Roads', 'Audra Shoals', 277, 'M', 'https://via.placeholder.com/640x480.png/00bbff?text=delectus', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/005511?text=nostrum', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(3, 'Fiona Crescent', 'Lavinia Ridge', 4, 'M', 'https://via.placeholder.com/640x480.png/005555?text=enim', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/005544?text=rerum', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(4, 'Rempel Junction', 'Felicia Islands', 24850202, 'S', 'https://via.placeholder.com/640x480.png/001133?text=quia', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/002211?text=qui', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(5, 'Floy Island', 'Marquardt Highway', 401961894, 'S', 'https://via.placeholder.com/640x480.png/00bbee?text=dolores', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/009922?text=placeat', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(6, 'Ortiz Mountain', 'Sherwood Lodge', 548, 'M', 'https://via.placeholder.com/640x480.png/00ddbb?text=enim', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/003333?text=officia', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(7, 'Makenzie Center', 'Philip Course', 0, 'L', 'https://via.placeholder.com/640x480.png/00bbaa?text=architecto', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/001100?text=dolorum', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(8, 'Estelle Estates', 'Heller Islands', 397560795, 'XS', 'https://via.placeholder.com/640x480.png/004488?text=sed', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ff33?text=reprehenderit', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(9, 'Sheila Dam', 'Hazel Lock', 39, 'S', 'https://via.placeholder.com/640x480.png/0033dd?text=quis', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/007744?text=repudiandae', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(10, 'Isadore Drives', 'Eichmann Lakes', 774, 'XS', 'https://via.placeholder.com/640x480.png/006644?text=inventore', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00bbcc?text=assumenda', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(11, 'Delta Land', 'Hansen Parkways', 14069906, 'XS', 'https://via.placeholder.com/640x480.png/00eeaa?text=eius', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/007777?text=nostrum', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(12, 'Althea Stream', 'Kaia Fort', 1, 'L', 'https://via.placeholder.com/640x480.png/000066?text=praesentium', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/0088ff?text=et', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(13, 'Edwardo Ville', 'Daugherty Row', 4180, 'S', 'https://via.placeholder.com/640x480.png/0066aa?text=et', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/005599?text=voluptatibus', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(14, 'Stehr Pines', 'Macey Lake', 0, 'XL', 'https://via.placeholder.com/640x480.png/00eecc?text=odit', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ee44?text=ut', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(15, 'Skylar Gardens', 'Marilyne Roads', 15, 'L', 'https://via.placeholder.com/640x480.png/003399?text=labore', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/006699?text=eaque', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(16, 'Kuvalis Squares', 'Howell Locks', 10223101, 'L', 'https://via.placeholder.com/640x480.png/00aabb?text=dolores', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/0099ee?text=omnis', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(17, 'Keyon Vista', 'Quincy Trail', 261116934, 'XS', 'https://via.placeholder.com/640x480.png/0077ff?text=et', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00cc00?text=at', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(18, 'Kelsi Lights', 'Natalia Rapids', 1, 'S', 'https://via.placeholder.com/640x480.png/005588?text=neque', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/002299?text=delectus', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(19, 'Nader Extensions', 'Celia Center', 19630, 'XS', 'https://via.placeholder.com/640x480.png/00bbdd?text=fugit', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/0022ff?text=enim', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(20, 'Amiya Viaduct', 'Bashirian Mall', 336775, 'M', 'https://via.placeholder.com/640x480.png/00dd77?text=occaecati', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/007733?text=possimus', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(21, 'Hayley Valleys', 'Kristofer Crossroad', 2, 'XS', 'https://via.placeholder.com/640x480.png/001111?text=voluptas', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/0022dd?text=aut', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(22, 'McCullough Fort', 'Rose Ford', 4205, 'L', 'https://via.placeholder.com/640x480.png/00aaaa?text=quasi', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/002200?text=commodi', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(23, 'Moen Street', 'Turcotte Greens', 109, 'XS', 'https://via.placeholder.com/640x480.png/004444?text=tempora', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/0033ee?text=illo', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(24, 'Bartoletti Circle', 'Courtney Drive', 5609253, 'XS', 'https://via.placeholder.com/640x480.png/0022aa?text=ipsum', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ee55?text=ut', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(25, 'Linnea Trail', 'Kihn Roads', 55509, 'L', 'https://via.placeholder.com/640x480.png/00cc99?text=ut', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/009966?text=omnis', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(26, 'Bernier Center', 'Wilderman Ways', 5522787, 'XL', 'https://via.placeholder.com/640x480.png/0044aa?text=ab', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/0066cc?text=ut', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(27, 'Adams Course', 'Stone Corners', 253378, 'M', 'https://via.placeholder.com/640x480.png/00ff11?text=dolore', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/000000?text=reprehenderit', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(28, 'Billy Locks', 'Volkman Crossing', 348, 'M', 'https://via.placeholder.com/640x480.png/00eecc?text=ut', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/0066bb?text=ut', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(29, 'Stroman Harbors', 'Everardo Wells', 1441842, 'S', 'https://via.placeholder.com/640x480.png/00bb88?text=iusto', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/007722?text=molestiae', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(30, 'Heidenreich Trail', 'Roberts Cove', 1167, 'S', 'https://via.placeholder.com/640x480.png/00ccee?text=voluptatem', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ccff?text=exercitationem', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(31, 'Kessler Camp', 'Kurt Ramp', 4, 'L', 'https://via.placeholder.com/640x480.png/00aa22?text=itaque', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/0011ee?text=aliquid', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(32, 'Anderson Crossroad', 'Abbott Lodge', 570, 'L', 'https://via.placeholder.com/640x480.png/00ddaa?text=vel', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/007722?text=ea', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(33, 'Dolores Mountain', 'Krajcik Square', 682482, 'M', 'https://via.placeholder.com/640x480.png/009966?text=consectetur', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00aa77?text=facilis', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(34, 'Terry Loop', 'Deckow Extension', 555694294, 'XS', 'https://via.placeholder.com/640x480.png/00cc55?text=omnis', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00aaaa?text=dolorem', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(35, 'Bertha Square', 'Jany Forges', 5700400, 'XS', 'https://via.placeholder.com/640x480.png/004411?text=non', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ff88?text=aspernatur', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(36, 'Nolan Islands', 'Bridget Dale', 3244, 'XS', 'https://via.placeholder.com/640x480.png/003344?text=voluptatem', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/0022aa?text=architecto', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(37, 'Nya Crescent', 'Mosciski Expressway', 36236, 'L', 'https://via.placeholder.com/640x480.png/0055dd?text=eius', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00cc99?text=possimus', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(38, 'Thalia Center', 'Bradley Summit', 5772920, 'L', 'https://via.placeholder.com/640x480.png/003300?text=adipisci', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00bb99?text=harum', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(39, 'Crooks Orchard', 'Ozella Trafficway', 2895753, 'S', 'https://via.placeholder.com/640x480.png/0022aa?text=beatae', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/008888?text=recusandae', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(40, 'Terrill Center', 'Geoffrey Mills', 13123, 'L', 'https://via.placeholder.com/640x480.png/00bb11?text=fugit', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ccbb?text=similique', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(41, 'Keara Avenue', 'Ashton Pass', 6498758, 'S', 'https://via.placeholder.com/640x480.png/00ff44?text=accusantium', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/003311?text=dolorem', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(42, 'Dawson Walks', 'Denesik Road', 7919495, 'XL', 'https://via.placeholder.com/640x480.png/00aabb?text=veniam', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ddcc?text=pariatur', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(43, 'Dicki Mountains', 'Weber Ford', 5749790, 'XL', 'https://via.placeholder.com/640x480.png/00dd22?text=quia', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00bb88?text=eos', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(44, 'Wintheiser Forks', 'Runolfsson Street', 29667, 'XS', 'https://via.placeholder.com/640x480.png/0055aa?text=ut', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/0033ff?text=id', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(45, 'Christelle Wells', 'Kris Mountains', 355121130, 'XS', 'https://via.placeholder.com/640x480.png/0066ff?text=sapiente', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/00cc55?text=et', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(46, 'Isaiah Drive', 'Schumm Forest', 24970553, 'XS', 'https://via.placeholder.com/640x480.png/002277?text=laboriosam', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00bb22?text=fugiat', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(47, 'Trycia Canyon', 'Mitchell Forge', 4554, 'M', 'https://via.placeholder.com/640x480.png/001111?text=omnis', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/00aadd?text=incidunt', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(48, 'Jordyn Summit', 'Schmidt Avenue', 1, 'XS', 'https://via.placeholder.com/640x480.png/0077dd?text=nisi', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00dd44?text=sed', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(49, 'Skiles Brook', 'Brandy Row', 2073, 'XL', 'https://via.placeholder.com/640x480.png/00ff88?text=earum', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/009988?text=facilis', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(50, 'Fleta Plains', 'Lebsack Expressway', 420, 'XS', 'https://via.placeholder.com/640x480.png/001199?text=recusandae', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/005544?text=eos', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(51, 'Alexane Village', 'Olson Parks', 28496129, 'M', 'https://via.placeholder.com/640x480.png/00bb66?text=vitae', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ff44?text=consequatur', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(52, 'William Mount', 'Jarrell Unions', 1629, 'S', 'https://via.placeholder.com/640x480.png/004466?text=corporis', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ee00?text=aut', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(53, 'Kim Square', 'Cummings Plains', 670941, 'L', 'https://via.placeholder.com/640x480.png/00aa00?text=assumenda', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ee88?text=dolor', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(54, 'Schiller Rapid', 'Bechtelar Tunnel', 12906249, 'M', 'https://via.placeholder.com/640x480.png/00ccdd?text=eos', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/008899?text=in', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(55, 'Ardith Inlet', 'Teresa Fall', 9, 'S', 'https://via.placeholder.com/640x480.png/001155?text=eaque', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00bbbb?text=commodi', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(56, 'Desmond Mall', 'Kuphal Lake', 921929, 'XS', 'https://via.placeholder.com/640x480.png/0011bb?text=est', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ff66?text=ullam', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(57, 'Mitchell Lake', 'Brown Greens', 129476, 'XS', 'https://via.placeholder.com/640x480.png/00eeff?text=molestias', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/001144?text=aut', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(58, 'Nestor Manors', 'Trey Key', 603, 'XL', 'https://via.placeholder.com/640x480.png/009911?text=amet', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/00cc11?text=laudantium', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(59, 'Alvena Coves', 'Klein Crossroad', 24426438, 'XL', 'https://via.placeholder.com/640x480.png/00ff99?text=deserunt', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/009955?text=asperiores', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(60, 'Malinda Mill', 'Greenfelder Freeway', 242159, 'L', 'https://via.placeholder.com/640x480.png/00bb66?text=eligendi', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/0000bb?text=labore', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(61, 'Addison Fork', 'Rebeka Stream', 35599266, 'L', 'https://via.placeholder.com/640x480.png/002277?text=sunt', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/0088bb?text=placeat', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(62, 'Richard Ports', 'Wisoky Grove', 34872, 'XS', 'https://via.placeholder.com/640x480.png/00dd55?text=qui', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/007799?text=at', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(63, 'Corwin Manor', 'Kristopher Bridge', 0, 'XL', 'https://via.placeholder.com/640x480.png/005599?text=aut', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00dd55?text=impedit', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(64, 'Bernadette Plains', 'Veronica Run', 55787170, 'S', 'https://via.placeholder.com/640x480.png/00eeee?text=natus', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/003355?text=ex', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(65, 'Keshaun Forges', 'Augustine Skyway', 2, 'XS', 'https://via.placeholder.com/640x480.png/001100?text=autem', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00ddcc?text=reiciendis', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(66, 'Raphael Roads', 'Metz Corners', 37565, 'XS', 'https://via.placeholder.com/640x480.png/004433?text=qui', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/0066dd?text=quia', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(67, 'Helene Corner', 'Swaniawski Ramp', 37209, 'M', 'https://via.placeholder.com/640x480.png/00aacc?text=aut', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/0022bb?text=autem', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(68, 'Alva Ridge', 'Collins Cape', 51517, 'S', 'https://via.placeholder.com/640x480.png/007733?text=quae', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ff66?text=natus', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(69, 'Turcotte Underpass', 'Titus Crest', 7, 'L', 'https://via.placeholder.com/640x480.png/0055ff?text=quisquam', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/007733?text=est', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(70, 'Camron Trail', 'Alanna Cove', 342156815, 'S', 'https://via.placeholder.com/640x480.png/0066ff?text=saepe', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/0099aa?text=nobis', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(71, 'Lebsack Pass', 'Reinger Junctions', 10417, 'S', 'https://via.placeholder.com/640x480.png/00cc77?text=dolorum', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/00dd33?text=est', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(72, 'Kautzer Viaduct', 'Nolan Spurs', 375, 'S', 'https://via.placeholder.com/640x480.png/00cc33?text=velit', 'publié', 'stansard', 'https://via.placeholder.com/640x480.png/00dd00?text=inventore', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(73, 'Rutherford Highway', 'Brett Isle', 72246, 'XS', 'https://via.placeholder.com/640x480.png/0022bb?text=corrupti', 'publié', 'en solde', 'https://via.placeholder.com/640x480.png/0022bb?text=temporibus', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(74, 'Balistreri Tunnel', 'Virginie Stream', 484, 'XS', 'https://via.placeholder.com/640x480.png/0066dd?text=aut', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00dd66?text=vel', 'homme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(75, 'Torphy Shores', 'Danny Plain', 15495104, 'XL', 'https://via.placeholder.com/640x480.png/00ff77?text=excepturi', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00aaff?text=culpa', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(76, 'Brendon Hills', 'Jaylon Vista', 111323501, 'L', 'https://via.placeholder.com/640x480.png/00cc33?text=qui', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00ee44?text=consectetur', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(77, 'Torphy Crossing', 'Davis Canyon', 3845746, 'XS', 'https://via.placeholder.com/640x480.png/004488?text=velit', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00bbff?text=est', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(78, 'Kuphal Hills', 'Lebsack River', 1611, 'M', 'https://via.placeholder.com/640x480.png/00ddee?text=tempora', 'non publié', 'stansard', 'https://via.placeholder.com/640x480.png/00cc66?text=dolores', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(79, 'Carol Plain', 'Klein Manors', 142823, 'S', 'https://via.placeholder.com/640x480.png/00ffff?text=officia', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/00bbff?text=numquam', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01'),
(80, 'Eulalia Flats', 'Scottie Estate', 460884, 'L', 'https://via.placeholder.com/640x480.png/00ffff?text=est', 'non publié', 'en solde', 'https://via.placeholder.com/640x480.png/0055bb?text=repellat', 'femme', '2022-06-30 17:53:01', '2022-06-30 17:53:01');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Edouard', 'edouard@gmail.com', NULL, '$2y$10$ybvqdB5bjO9uX050YYPFTekGlhjC84wBeFx16oCjAETZSpmCkTTUq', 'admin', NULL, '2022-06-30 18:17:52', '2022-06-30 18:17:52'),
(2, 'testo', 'test@test.com', NULL, '$2y$10$kR0d2JDWGc9NEmSs5vsCruPveZ.klzlJiEbSJ96XQghDtMe7Cv1n.', 'user', NULL, '2022-07-01 02:32:19', '2022-07-01 02:53:31'),
(3, 'testa', 'test2@test.com', NULL, '$2y$10$VypOUfd2UQIeTEKGK3oceOHYvvVMLeE5rpwGWw7BeeNwk4eQ1c.ja', 'user', NULL, '2022-07-01 15:26:14', '2022-07-01 15:26:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
