-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour webdevtalk
CREATE DATABASE IF NOT EXISTS `webdevtalk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webdevtalk`;

-- Listage de la structure de table webdevtalk. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table webdevtalk.categories : ~5 rows (environ)
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Eos id.', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(2, 'Doloremque reiciendis.', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(3, 'Sequi est rem.', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(4, 'Ea dolorem.', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(5, 'Maiores tempore.', '2023-03-23 12:15:02', '2023-03-23 12:15:02');

-- Listage de la structure de table webdevtalk. failed_jobs
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

-- Listage des données de la table webdevtalk.failed_jobs : ~0 rows (environ)

-- Listage de la structure de table webdevtalk. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table webdevtalk.migrations : ~0 rows (environ)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(17, '2014_10_12_000000_create_users_table', 1),
	(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(19, '2019_08_19_000000_create_failed_jobs_table', 1),
	(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(21, '2023_03_23_123111_create_posts_table', 1),
	(22, '2023_03_23_123136_create_categories_table', 1);

-- Listage de la structure de table webdevtalk. password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table webdevtalk.password_reset_tokens : ~0 rows (environ)

-- Listage de la structure de table webdevtalk. personal_access_tokens
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

-- Listage des données de la table webdevtalk.personal_access_tokens : ~0 rows (environ)

-- Listage de la structure de table webdevtalk. posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table webdevtalk.posts : ~18 rows (environ)
INSERT INTO `posts` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
	(1, 'Dolorem vero atque explicabo qui rerum.', 'Sit corporis earum perspiciatis ut voluptas aut architecto. Dolor laudantium dolor et eveniet. Et reiciendis consequuntur ratione eum et. Rerum quo qui nulla aut est quisquam dolores. Voluptas amet doloremque laborum reiciendis.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 1, 5),
	(2, 'Reprehenderit debitis aut sit fugit.', 'Illum similique modi ut totam asperiores id. Qui occaecati doloribus non voluptate hic est quam. Aut eos molestiae quas inventore. Voluptatem ab in assumenda necessitatibus. Commodi ut tenetur reprehenderit maiores inventore.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 1, 5),
	(3, 'Quasi quos consequatur perspiciatis qui explicabo error.', 'Atque eos voluptate id possimus. Architecto unde et vitae odio. Corrupti autem fuga molestiae omnis eos perspiciatis ut ut. Non error debitis a aut. Sint distinctio doloribus voluptatem recusandae.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 2, 4),
	(4, 'Magni qui ipsum cupiditate nisi ea.', 'Possimus delectus voluptas vero aperiam nobis aut saepe. Et tempora dignissimos quibusdam porro. Temporibus et iste molestias quaerat. Officiis ut et laboriosam. Quasi explicabo iusto distinctio distinctio nostrum.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 3, 2),
	(5, 'Ducimus at earum quas natus natus enim ut.', 'Ipsum ipsum ab qui ut qui. Nobis optio et est. Molestiae perspiciatis ut reiciendis molestias. Blanditiis alias nulla blanditiis sapiente quas vitae qui. Earum ipsum amet rerum qui ea unde libero.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 4, 5),
	(6, 'Laboriosam numquam occaecati deleniti occaecati quae qui occaecati est molestiae totam mollitia.', 'Est ipsa voluptas iusto dolor dolor sed. Exercitationem est in sit voluptates deserunt. Maxime aut quas recusandae non qui. Quod vitae et voluptatibus ullam eveniet. Velit expedita earum error in odit qui rerum illo.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 5, 2),
	(7, 'Molestiae enim enim quo harum saepe numquam dolorum.', 'Dolorem quia explicabo sunt officiis quas incidunt. Sunt est dignissimos debitis eum cum commodi. Dolorum maxime et ad consequatur voluptatibus. Est porro iure dolor asperiores sed est. Ut ex architecto facilis fugit doloremque.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 5, 2),
	(8, 'Odit soluta quo et eos.', 'Minus deserunt sint aliquid omnis cum. Itaque fugiat voluptas sed similique ea quis quisquam optio. Minus quibusdam temporibus qui ut omnis. Consectetur sed itaque explicabo accusantium quis est hic. Vel enim aut culpa illo et enim cupiditate.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 5, 2),
	(9, 'Iste voluptatem aspernatur minus et repudiandae.', 'Voluptas qui facilis tenetur et. Facere ipsum voluptatem temporibus quo aut. Dolor voluptates facilis ipsum cupiditate. Rerum sunt sint dolore corporis nostrum nihil nobis. Veniam laudantium ratione ducimus voluptatem porro.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 6, 5),
	(10, 'Omnis repudiandae sequi dolores voluptatem minima delectus est.', 'Numquam sit et dolor id aspernatur consequatur cupiditate. Dolor ut dolor assumenda praesentium quod possimus. Ducimus et sit cum aut voluptas. Veritatis ipsum consectetur vel blanditiis rem. Dolorum atque voluptatibus et eum placeat repellendus.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 6, 5),
	(11, 'Itaque sit impedit aut quidem ut voluptatibus sit.', 'Quam ea qui rerum at dolore. Vero qui quam sequi perferendis. Impedit blanditiis esse eum enim nihil accusantium corporis. Qui vero nemo qui voluptatibus. Odio officiis quo sed repudiandae.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 6, 5),
	(12, 'Iste id sint aliquid voluptas aspernatur eos quidem sunt suscipit repudiandae quis consequatur.', 'Quis consequuntur in id ut. Fuga hic autem distinctio molestiae ut et sed. Nam delectus cumque earum ipsa architecto voluptas repudiandae. Sapiente eveniet ut totam odio voluptas aut est. Odio aspernatur et expedita sint eos magni adipisci.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 7, 2),
	(13, 'Veniam dolor tenetur est quaerat et harum magni.', 'Repellendus quidem ut vero rem maiores libero. Consequatur beatae voluptas et quidem nulla est. Non facilis ea iste eligendi vero aut aspernatur. Earum sapiente molestias pariatur est iusto. Aliquam cum delectus nesciunt maiores et et sequi.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 7, 2),
	(14, 'Sit eligendi perferendis facere consequatur aut.', 'Voluptatem eos quo et est. Quaerat facilis quo inventore porro doloremque aut vel. Qui facere aliquam assumenda quas voluptate aut asperiores. Optio ipsam debitis consequatur maiores voluptatem ipsam. Enim neque ut ea.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 8, 5),
	(15, 'Sed iusto illum atque nobis quia.', 'Veniam ut reiciendis culpa quam voluptas natus. Expedita alias ipsum ipsa saepe voluptas et doloremque. Repellendus error sit quis fugiat voluptas nihil exercitationem qui. Cum quidem et enim mollitia laboriosam. Nihil impedit a et.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 8, 5),
	(16, 'Corporis dolores et voluptatum porro nemo.', 'Dicta vel sunt et pariatur voluptatem. Impedit accusamus aut veniam autem nemo voluptas illum sint. Quia magni ut debitis veritatis quia blanditiis atque. Non molestias porro quam. Excepturi cumque perspiciatis voluptas.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 9, 3),
	(17, 'Laudantium neque veniam beatae beatae saepe hic cumque.', 'Consequatur suscipit aut ipsa quia voluptatem. Enim similique amet deleniti doloremque quidem molestias. Aut fuga aut aut hic aut reprehenderit. Rerum est blanditiis ducimus quaerat laborum quod. Id dolorem distinctio dolorem quibusdam ut non in.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 10, 5),
	(18, 'Reiciendis qui rem eius.', 'Ullam eos doloremque veritatis minima. Vero modi natus natus provident. Consequatur veniam eius nulla quo fuga eos. Repudiandae unde adipisci numquam est sed ab eaque. Et vitae pariatur in et et et voluptas.', 'https://placehold.co/1000', '2023-03-23 12:15:02', '2023-03-23 12:15:02', 10, 5);

-- Listage de la structure de table webdevtalk. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table webdevtalk.users : ~0 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Lorine Brekke', 'kara36@example.org', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L1ZOjhMtf6', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(2, 'Mr. Al Labadie III', 'anderson.ettie@example.net', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ePtH07n3vC', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(3, 'Prof. Levi Rodriguez', 'hfarrell@example.net', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GpAXIsdS45', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(4, 'Blanche Lesch DVM', 'grady.elsie@example.net', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dXggP9Ay44', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(5, 'Lauretta Schroeder', 'zbernier@example.org', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4deaXpz5P5', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(6, 'Dr. Andreane Swaniawski I', 'eunice67@example.com', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1AWzKVRlWd', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(7, 'Greg Wisoky', 'sarah.ortiz@example.org', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LuZgvzmhuI', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(8, 'Liza Boyle', 'bechtelar.rahul@example.com', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pUiSPiiUvr', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(9, 'Vella Greenfelder', 'imills@example.net', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yIWL9OGqaZ', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(10, 'Dr. Lamar Feil', 'renner.gardner@example.com', '2023-03-23 12:15:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qk9nYygESG', '2023-03-23 12:15:02', '2023-03-23 12:15:02'),
	(11, 'Arthur', 'arthur.bourst@proton.me', NULL, '$2y$10$TZUkxQ1r1iOhVqfGSdx9l.GJivrb0jvVoxaARgyTUk5VOUvEyc7Ri', NULL, '2023-03-23 12:47:15', '2023-03-23 12:47:15');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
