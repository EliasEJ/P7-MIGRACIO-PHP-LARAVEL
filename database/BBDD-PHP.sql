-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para p7-migracio-php-laravel
DROP DATABASE IF EXISTS `p7-migracio-php-laravel`;
CREATE DATABASE IF NOT EXISTS `p7-migracio-php-laravel` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `p7-migracio-php-laravel`;

-- Volcando estructura para tabla p7-migracio-php-laravel.articles
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `article` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`),
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.articles: ~27 rows (aproximadamente)
INSERT IGNORE INTO `articles` (`id`, `user_id`, `article`) VALUES
	(1, NULL, 'Lorem ipsum'),
	(2, NULL, 'Massa tincidunt nunc pulvinar sapien et ligula ullamcorper.'),
	(3, NULL, 'Ultrices tincidunt arcu non sodales neque sodales ut.'),
	(4, NULL, 'Mauris ultrices eros in cursus turpis massa tincidunt dui ut.'),
	(5, NULL, 'Morbi quis commodo odio aenean. Tincidunt id aliquet risus feugiat in ante metus dictum at.'),
	(6, NULL, 'Gravida quis blandit turpis cursus in hac habitasse platea dictumst.'),
	(7, NULL, 'Iaculis eu non diam phasellus vestibulum lorem sed. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec.'),
	(8, NULL, 'Cursus turpis massa tincidunt dui ut ornare lectus. Dictum fusce ut placerat orci nulla pellentesque dignissim enim sit.'),
	(9, NULL, 'Massa tincidunt dui ut ornare lectus sit. Eu turpis egestas pretium aenean pharetra magna ac placerat.'),
	(10, NULL, 'Aenean pharetra magna ac placerat. Sit amet consectetur adipiscing elit ut.'),
	(11, NULL, 'Quis varius quam quisque id diam vel. Feugiat in ante metus dictum.'),
	(12, NULL, 'Ornare arcu dui vivamus arcu felis bibendum ut tristique et.'),
	(13, NULL, 'Usto nec ultrices dui sapien eget mi proin sed libero. Pulvinar sapien et ligula ullamcorper malesuada proin libero.'),
	(14, NULL, 'Laoreet non curabitur gravida arcu ac tortor. Scelerisque felis imperdiet proin fermentum leo.'),
	(15, NULL, 'Habitant morbi tristique senectus et netus et. Interdum consectetur libero id faucibus nisl tincidunt eget nullam non.'),
	(16, NULL, 'Tempus urna et pharetra pharetra massa massa ultricies. Diam ut venenatis tellus in metus vulputate eu.'),
	(17, NULL, 'Et netus et malesuada fames ac turpis. Libero id faucibus nisl tincidunt eget. Justo donec enim diam vulputate ut pharetra sit amet aliquam.'),
	(18, NULL, 'Cras fermentum odio eu feugiat pretium. Augue mauris augue neque gravida in fermentum et sollicitudin.'),
	(19, NULL, 'Pharetra massa massa ultricies mi quis hendrerit dolor magna eget.'),
	(20, NULL, 'Augue neque gravida in fermentum et sollicitudin. Laoreet suspendisse interdum consectetur libero id faucibus.'),
	(21, NULL, 'Tellus mauris a diam maecenas. Porttitor lacus luctus accumsan tortor posuere.'),
	(22, NULL, 'Integer feugiat scelerisque varius morbi enim nunc faucibus. Accumsan tortor posuere ac ut consequat semper.'),
	(23, NULL, 'Feugiat in ante metus dictum at tempor. Consectetur adipiscing elit pellentesque habitant morbi.'),
	(24, NULL, 'Integer malesuada nunc vel risus. Non diam phasellus vestibulum lorem sed risus.'),
	(25, NULL, 'Enim praesent elementum facilisis leo vel fringilla est ullamcorper eget. Feugiat scelerisque varius morbi enim. Ligula ullamcorper malesuada proin libero nunc.'),
	(26, NULL, 'Adipiscing at in tellus integer feugiat scelerisque varius.'),
	(27, NULL, 'Placerat in egestas erat imperdiet sed euismod nisi porta. A cras semper auctor neque vitae tempus quam pellentesque nec.');

-- Volcando estructura para tabla p7-migracio-php-laravel.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.migrations: ~11 rows (aproximadamente)
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2014_10_12_000000_create_users_table', 1),
	(14, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(15, '2014_10_12_100000_create_password_resets_table', 1),
	(16, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(17, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(19, '2016_06_01_000004_create_oauth_clients_table', 1),
	(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(21, '2019_08_19_000000_create_failed_jobs_table', 1),
	(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(23, '2024_03_06_143005_create_tasks_table', 1),
	(24, '2024_03_09_142659_update_users_table', 2),
	(25, '2024_03_10_132548_add_failed_attempts_to_users_table', 3),
	(26, '2024_03_18_181615_add_user_id_to_articles_table', 4),
	(27, '2024_03_20_153635_add_github_id_to_users', 5),
	(28, '2024_03_20_222143_add_socialite_columns_to_users_table', 6);

-- Volcando estructura para tabla p7-migracio-php-laravel.oauth_access_tokens
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.oauth_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.oauth_auth_codes
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.oauth_auth_codes: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.oauth_clients
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.oauth_clients: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.oauth_personal_access_clients
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.oauth_personal_access_clients: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.oauth_refresh_tokens
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.oauth_refresh_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.password_resets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.password_reset_tokens: ~1 rows (aproximadamente)
INSERT IGNORE INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
	('e.jerari@sapalomera.cat', '$2y$12$wwV6HPt6sgo7sc5o7UfF7uy7CNgTqTAaaCSRHzkSbzLovTf13NjfK', '2024-04-04 13:00:51'),
	('elyass909@gmail.com', '$2y$12$pQQinbXdb2HoQA5stWlPdOT6I9ywRRplb1YkKyxN034sSM5S3XrY.', '2024-04-04 13:00:37');

-- Volcando estructura para tabla p7-migracio-php-laravel.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.tasks
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('Pendiente','En progreso','Completado') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.tasks: ~0 rows (aproximadamente)

-- Volcando estructura para tabla p7-migracio-php-laravel.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_auth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla p7-migracio-php-laravel.users: ~1 rows (aproximadamente)
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `external_id`, `external_auth`, `avatar`, `provider`, `provider_id`) VALUES
	(33, 'Pedro', 'pedro@gmail.com', NULL, '$2y$12$aKSqYzegRyiIZmO5c6fDEuBDHSsMQqqS7Qwd85m5npUPORRE8czBy', NULL, '2024-04-04 15:53:48', '2024-04-04 15:53:48', NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
