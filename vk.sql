#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (1, 'illo', '2013-04-23 21:00:15', '2020-05-15 08:28:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (2, 'ex', '2013-05-03 19:41:29', '2019-02-07 10:44:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (3, 'earum', '2016-02-25 00:20:45', '2016-04-01 04:00:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (4, 'veniam', '2021-03-17 18:29:08', '2011-08-15 18:28:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (5, 'occaecati', '2014-09-22 12:52:25', '2020-05-01 22:51:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (6, 'assumenda', '2011-11-04 03:05:04', '2020-08-17 23:13:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (7, 'et', '2014-12-05 07:37:55', '2018-10-10 05:09:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (8, 'quis', '2019-07-03 11:15:40', '2012-04-12 07:27:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (9, 'minus', '2018-02-10 14:26:20', '2014-03-18 12:46:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `update_at`) VALUES (10, 'porro', '2012-12-08 05:51:27', '2015-12-01 13:32:43');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `communities_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `users_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`communities_id`,`users_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (1, 31, '2017-05-12 12:28:38');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (1, 57, '2016-01-02 23:00:24');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (2, 27, '2016-05-22 16:31:41');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (3, 64, '2019-05-01 15:35:06');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (5, 39, '2012-10-20 09:36:56');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (5, 70, '2015-01-15 18:15:10');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (7, 12, '2018-05-15 01:45:15');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (7, 43, '2019-12-01 09:10:03');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (9, 29, '2019-02-06 02:38:12');
INSERT INTO `communities_users` (`communities_id`, `users_id`, `created_at`) VALUES (9, 33, '2016-09-02 01:05:17');


#
# TABLE STRUCTURE FOR: friendshep_statuses
#

DROP TABLE IF EXISTS `friendshep_statuses`;

CREATE TABLE `friendshep_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendshep_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'architecto', '2011-12-25 21:53:29', '2020-03-29 02:10:47');
INSERT INTO `friendshep_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'aut', '2011-10-06 11:23:40', '2016-12-05 02:29:34');
INSERT INTO `friendshep_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'molestiae', '2013-02-10 10:02:48', '2015-07-25 14:15:07');
INSERT INTO `friendshep_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dolorem', '2016-06-05 21:46:38', '2012-04-21 08:32:54');
INSERT INTO `friendshep_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'eveniet', '2015-08-20 18:43:18', '2011-07-27 15:48:47');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friend_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (3, 44, 43, '2021-01-12 04:10:49', '2012-11-17 11:55:03', '2012-05-02 15:42:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (12, 46, 57, '2019-07-13 17:49:27', '2013-03-24 17:08:36', '2017-10-30 05:40:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (24, 40, 32, '2019-12-27 01:14:15', '2019-03-26 21:00:38', '2017-01-18 19:01:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (31, 12, 38, '2011-05-20 13:34:23', '2014-09-22 13:47:10', '2012-06-11 14:32:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (53, 44, 51, '2013-07-03 03:31:35', '2013-10-01 03:18:57', '2017-08-23 08:48:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (57, 67, 22, '2017-10-08 21:04:22', '2012-09-24 09:02:58', '2012-02-06 18:36:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (57, 91, 86, '2012-01-29 03:59:36', '2013-09-14 07:21:35', '2013-10-19 03:55:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (60, 43, 34, '2013-11-02 04:27:46', '2018-09-14 06:40:00', '2011-09-17 23:24:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (75, 4, 43, '2013-03-20 00:33:33', '2016-05-25 10:35:17', '2012-11-17 15:38:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friend_status_id`, `confirmed_at`, `created_at`, `update_at`) VALUES (91, 33, 52, '2013-01-24 10:21:20', '2016-05-31 11:25:21', '2012-11-23 05:58:07');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Ссылка на тип контента',
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (1, 36, 'voluptatem', 18700596, '1', '1984-01-27 08:23:34', '2009-11-05 05:45:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (2, 42, 'molestias', 81673411, '1', '2012-10-26 12:06:16', '1977-03-12 19:58:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (3, 21, 'dolorem', 13492054, '1', '2020-05-09 04:55:34', '1991-06-24 05:11:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (4, 4, 'nam', 90892516, '1', '1972-05-06 11:02:08', '2000-02-01 16:27:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (5, 57, 'qui', 94891211, '1', '2018-02-22 00:23:47', '2007-02-02 05:35:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (6, 75, 'alias', 22759526, '1', '1981-01-26 13:01:13', '1973-06-22 17:22:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (7, 21, 'in', 67773052, '1', '2005-03-26 00:24:49', '2012-01-05 01:37:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (8, 96, 'qui', 94896427, '1', '1970-07-04 20:44:38', '2006-10-09 10:11:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (9, 76, 'nobis', 81617448, '1', '1997-01-23 02:41:11', '1978-03-01 05:09:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (10, 51, 'unde', 47411950, '1', '2020-10-07 11:10:59', '1992-07-14 17:26:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (11, 30, 'optio', 53875660, '1', '1984-06-23 12:05:52', '1983-04-20 05:23:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (12, 66, 'ut', 69956226, '1', '2005-06-22 01:11:21', '2004-12-29 09:20:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (13, 31, 'possimus', 7892909, '1', '2004-12-08 22:35:47', '1971-07-01 15:16:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (14, 4, 'minima', 49910749, '1', '1976-05-02 12:55:21', '1989-07-23 09:59:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (15, 51, 'et', 98227094, '1', '1997-04-27 11:41:31', '1985-01-20 17:32:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (16, 69, 'omnis', 46265306, '1', '1990-08-11 05:30:42', '1983-02-04 18:30:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (17, 66, 'voluptate', 11065157, '1', '1988-09-15 10:04:15', '1978-09-26 06:59:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (18, 65, 'quibusdam', 57977417, '1', '1996-05-07 19:28:33', '2010-11-29 08:02:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `update_at`) VALUES (19, 47, 'eaque', 7335870, '1', '1976-06-04 04:21:31', '2017-12-01 17:21:20');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'voluptas', '2011-12-24 05:27:25', '2019-08-09 04:39:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sit', '2017-07-03 16:01:14', '2019-09-27 04:55:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'sed', '2013-02-09 17:04:44', '2012-03-11 08:55:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'accusantium', '2014-12-11 15:42:57', '2021-02-25 13:03:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'consequatur', '2016-07-17 04:50:42', '2018-11-17 00:17:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'fugit', '2019-11-11 22:03:29', '2019-11-30 15:42:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'voluptatibus', '2014-02-14 10:22:35', '2012-03-08 10:30:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'aut', '2012-10-09 19:41:29', '2016-08-16 21:23:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'minus', '2017-12-25 12:16:15', '2016-10-31 21:59:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'quia', '2020-05-25 00:50:27', '2020-03-19 06:28:59');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `create_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (1, 27, 40, 'Maiores non error rerum perferendis quisquam suscipit omnis molestiae. Et qui et vel possimus unde eum. Saepe excepturi voluptatibus vero hic. Accusamus delectus ipsum voluptas dolores doloribus consectetur aspernatur consequatur.', 1, 1, '2016-05-24 10:20:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (2, 78, 39, 'Aut aut velit at odit. Quia ipsam optio dolorem. Cupiditate voluptatum quaerat ut iste.', 1, 0, '2019-02-11 01:37:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (3, 17, 56, 'Et tempore doloremque est. Fuga aliquid id exercitationem ut quia nesciunt quod. Eius tempora ut reiciendis omnis. Dignissimos eos blanditiis molestiae optio excepturi quo.', 1, 1, '2018-07-10 23:34:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (4, 65, 67, 'Expedita et ut omnis quia quo id. Quisquam cum non quos et.', 1, 1, '2018-07-30 00:10:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (5, 75, 36, 'Eos esse expedita est dolorum ut dolorem. Iusto beatae quod ea aut. Veritatis odio corporis est recusandae expedita.', 0, 0, '2012-05-15 01:11:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (6, 36, 79, 'Illo sunt porro natus mollitia. Quia aut ut atque qui. In voluptates voluptatem dolor nihil maiores aperiam enim. Sint aperiam voluptates fuga velit eum quo.', 1, 0, '2012-01-25 23:21:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (7, 43, 12, 'Non eaque magnam animi consequatur a dolores. Corporis est sapiente repudiandae quas. Est corporis deserunt sapiente aut unde temporibus. Maxime quaerat ducimus et quod necessitatibus ut veritatis.', 0, 0, '2020-10-20 09:10:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (8, 46, 71, 'Ea sed saepe qui. Velit debitis pariatur dolorem ut. Tempore iure molestias sunt qui. Nobis quasi suscipit placeat porro temporibus incidunt blanditiis.', 1, 0, '2020-02-25 07:42:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (9, 74, 36, 'Dolor atque eaque repellendus non quasi sequi. Omnis officiis autem hic amet expedita consequatur. Autem id ea et ipsum est quod qui. Quasi occaecati beatae non voluptatem quo eum cupiditate.', 0, 0, '2020-08-08 02:30:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (10, 63, 80, 'Consectetur consequatur recusandae inventore et necessitatibus sit illum. Molestiae qui qui a laborum. Qui ipsum et enim et error. Et aut excepturi harum rerum sint.', 1, 0, '2014-03-06 17:15:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (11, 32, 77, 'Voluptatem ut molestiae consequatur est autem praesentium. Enim neque qui qui suscipit. Porro autem animi qui eos.', 0, 0, '2016-07-13 12:42:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (12, 2, 71, 'Laudantium quia minus minima dolorem voluptate omnis sed nobis. Dolorem harum alias ut. Veniam cumque debitis eius officia perferendis sed dolorem.', 1, 0, '2020-02-07 21:23:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (13, 43, 87, 'Amet facilis rerum in temporibus quod quam labore. Inventore sed officiis et assumenda eum molestiae.', 1, 1, '2012-10-23 05:30:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (14, 3, 19, 'Nulla quisquam dolores repellat aut libero omnis. Aliquid dolorem incidunt autem animi. Nesciunt occaecati deserunt neque nostrum non quae nisi.', 1, 0, '2015-09-10 15:10:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (15, 26, 18, 'Facilis illum et cum animi. Accusamus qui vitae minima nam et. Culpa cum illum veritatis totam.', 0, 0, '2019-12-02 16:19:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (16, 39, 52, 'Molestias ducimus dolores impedit eos et earum corporis. Qui assumenda occaecati dolores at nesciunt sit cupiditate. Et tempora earum hic necessitatibus praesentium ut. Esse sit et ut.', 0, 0, '2014-09-24 14:16:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (17, 58, 17, 'Esse quos et in rerum amet quae. Facere quia blanditiis dolores vel. Quaerat id expedita voluptate at. Soluta id in voluptatem omnis.', 0, 0, '2018-07-24 14:24:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (18, 91, 74, 'Deleniti aliquam voluptatem rerum eius at id. Quo quisquam est eos voluptatum qui eaque qui.', 0, 1, '2014-11-05 04:59:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (19, 73, 55, 'Velit in nemo voluptatibus. Sit quia in consectetur velit omnis cum. Praesentium alias et cumque commodi qui.', 0, 0, '2018-08-07 22:31:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (20, 41, 47, 'Voluptatem consequatur assumenda aut rerum. Quidem magni eveniet autem id pariatur laboriosam sapiente. Autem incidunt quis quia sed ullam repudiandae. Ex et delectus aut quod laborum quisquam.', 1, 1, '2012-04-13 03:43:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (21, 90, 76, 'Exercitationem consequatur animi non quo. Animi sunt aperiam fugit sint voluptas sit necessitatibus. Sit eos et commodi eum quibusdam laboriosam.', 1, 0, '2013-08-30 02:49:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (22, 26, 33, 'Praesentium voluptate in cupiditate saepe esse. In aut modi aperiam harum aut voluptas. Et et vero est facilis repellendus ullam optio.', 1, 0, '2014-12-29 21:09:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (23, 88, 71, 'Ab consectetur voluptate incidunt distinctio. Rerum laborum ipsa est voluptates officiis odit. Omnis omnis pariatur occaecati ea adipisci voluptatem. Ipsum rerum porro molestias amet distinctio ea deleniti consequatur.', 1, 1, '2020-10-03 21:18:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (24, 3, 61, 'Quo sunt optio vero mollitia. Quo quam aut assumenda explicabo vitae voluptate. Velit est fuga est quas ab quibusdam. Ratione ipsum libero dolorem voluptatem.', 1, 0, '2014-04-12 10:59:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (25, 6, 66, 'Et saepe earum reiciendis non omnis. Voluptatibus eum provident voluptas.', 1, 1, '2016-01-21 17:14:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (26, 41, 37, 'Omnis aut et et. Omnis veritatis ea quod optio aut minima deleniti. Incidunt eos iure ut est aliquam et autem. Est cum amet delectus velit libero tenetur. Quod voluptas expedita minima velit facilis.', 0, 1, '2012-07-12 13:12:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (27, 43, 42, 'Et tempore quis eos iste id. Voluptatem porro natus iste. Doloribus est animi voluptas. Rerum in libero molestiae nemo error in. Voluptas optio dignissimos non occaecati.', 1, 0, '2020-12-19 21:07:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (28, 8, 85, 'Sunt omnis ratione amet autem omnis repudiandae officiis. Reiciendis architecto tempore vel assumenda. Non ab vero iure inventore reiciendis voluptatibus labore.', 1, 1, '2013-02-26 14:30:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (29, 28, 11, 'Et qui excepturi et qui reiciendis aperiam nam pariatur. Voluptas blanditiis asperiores natus sunt a. Aliquid ab impedit quia vel tempore consequatur et debitis.', 0, 0, '2012-08-15 15:42:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (30, 4, 54, 'Minus dignissimos deserunt officia soluta nostrum error. Autem illum quis aut cupiditate. Qui consequatur consequatur accusantium ducimus culpa quaerat qui. Doloribus labore eveniet commodi sunt.', 1, 1, '2016-04-19 20:42:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (31, 28, 43, 'Assumenda a sint rerum et. Modi beatae iure blanditiis pariatur quod ad quia. Laboriosam a labore dolor eum. Vitae eum est consequatur dolor illo.', 1, 1, '2014-11-08 07:55:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (32, 5, 86, 'Distinctio vel doloremque omnis nesciunt ratione. Sint minima deserunt ea autem nihil. Omnis sint vel facilis eos neque ratione. Repellendus voluptatibus quam aut iusto odit magni qui.', 1, 0, '2016-02-03 02:39:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (33, 60, 96, 'Qui recusandae enim quia ut facere. Doloribus non sequi blanditiis rerum odit magnam. Nostrum laudantium earum in voluptatem et et modi.', 1, 1, '2020-06-16 23:21:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (34, 59, 32, 'Eligendi occaecati et sit enim libero sit rerum. Earum qui veniam dicta qui aut consequatur et. Totam nulla id dolore debitis tenetur. Tenetur est officiis dolor veritatis saepe voluptates officiis.', 1, 1, '2017-10-24 03:42:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (35, 50, 99, 'Ut maxime enim assumenda architecto autem deserunt. Id dolore dolorem beatae deserunt sit iste. Labore architecto quia vero pariatur velit tempora.', 0, 0, '2014-07-18 18:33:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (36, 78, 39, 'Quia fugiat dolor voluptas tenetur perferendis. Quasi exercitationem architecto voluptate repellendus. Facilis totam sed ea velit dolorum dolor. Nostrum est ad sed accusamus.', 0, 1, '2020-10-22 07:01:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (37, 75, 3, 'Praesentium et est vel quas. Est error rerum eos.', 0, 0, '2018-07-24 07:28:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (38, 71, 62, 'Voluptas quam quo veritatis minus tempore. Pariatur pariatur laboriosam excepturi officia. Pariatur eligendi facilis eligendi asperiores.', 1, 0, '2017-04-03 06:51:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (39, 74, 74, 'Nemo consequuntur optio dolores sit quas enim placeat iste. Est sit aut architecto. Deserunt consectetur consequatur dolor sequi consectetur. Accusantium commodi amet quis rem.', 1, 0, '2020-08-30 20:30:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (40, 23, 79, 'Ut nulla ea vero velit est consequatur quasi eligendi. Aliquid eligendi sequi quis et.', 1, 1, '2020-11-07 01:38:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (41, 40, 63, 'Nam ipsam voluptatum tenetur quia esse. Sunt aut recusandae perferendis numquam blanditiis voluptatem. Est dolor est ea doloribus perspiciatis.', 1, 1, '2015-04-11 15:05:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (42, 16, 82, 'Eius excepturi inventore dignissimos molestias dolorem delectus possimus sed. Sequi enim ipsa ut aut. Qui debitis natus velit et molestias nihil. Fuga qui a eos accusantium atque.', 1, 0, '2017-04-19 08:50:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (43, 5, 24, 'Harum aspernatur et blanditiis eaque facere repellendus minus. Qui totam dignissimos voluptas doloremque error magnam consequatur. Illo recusandae nam inventore. Dolores vel atque quidem.', 0, 0, '2020-08-04 08:11:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (44, 67, 33, 'Dignissimos error fuga voluptatem sed. Sunt numquam eius voluptate. Esse qui molestias eum laborum voluptatum.', 1, 1, '2020-11-23 14:25:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (45, 34, 71, 'Et magnam mollitia qui ut voluptas. Cupiditate quae exercitationem placeat assumenda quam ea omnis illo. Est animi expedita neque modi.', 0, 1, '2021-01-03 06:09:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (46, 86, 61, 'Tenetur incidunt veritatis inventore ex. Et occaecati alias ea doloribus eum delectus autem. Delectus odit veritatis temporibus et reiciendis. Nulla labore quaerat excepturi corporis.', 1, 0, '2015-12-16 04:01:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (47, 14, 91, 'Consequatur accusamus voluptatem vel deserunt ea. Sapiente consequatur in inventore nesciunt. Id veritatis nisi eum et perferendis. Non et omnis magnam placeat.', 0, 0, '2012-11-01 11:31:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (48, 47, 73, 'Ut autem aut nisi dolorem dolore repellendus. Deleniti sequi sint et et sequi et. Perspiciatis dolore delectus dolor ullam assumenda.', 0, 0, '2013-09-30 05:29:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (49, 86, 5, 'Eos est voluptas necessitatibus nostrum saepe. Et nisi voluptas ducimus cupiditate reprehenderit non aut. Aliquid libero in vero soluta molestiae quam aut itaque.', 0, 0, '2013-08-17 04:34:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (50, 4, 36, 'Explicabo et voluptatibus rem et. Perspiciatis et incidunt hic id. Unde sunt corrupti aut quis aut. Quas aut asperiores excepturi quam.', 0, 0, '2016-12-27 07:45:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (51, 4, 82, 'Sed hic qui quaerat a. Minus neque sed omnis dignissimos. Veniam sint enim sunt soluta impedit necessitatibus. Quas expedita minus numquam doloribus sunt ut.', 0, 0, '2018-07-16 17:30:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (52, 74, 79, 'Voluptas assumenda aperiam ea sed repellat. Distinctio perferendis enim quae impedit aut.', 0, 0, '2014-03-21 18:46:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (53, 85, 45, 'Voluptas omnis cupiditate magnam quasi quaerat veritatis pariatur beatae. Accusantium nesciunt dignissimos non cumque ab esse. Repellendus dolore illo est molestiae. Et dolores et quod eaque dolorem labore.', 0, 1, '2015-04-04 13:49:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (54, 41, 58, 'Sint blanditiis reiciendis suscipit unde et. Maiores sit eum quod exercitationem vitae.', 1, 0, '2013-02-02 18:01:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (55, 19, 63, 'Libero et voluptas et quo. Veniam non qui est placeat quia qui rerum. Nobis voluptatem impedit omnis. Molestiae impedit est provident omnis placeat. Accusamus officiis minima temporibus et fuga nihil dolorem.', 0, 0, '2019-09-13 14:49:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (56, 37, 59, 'Nulla non et quas aspernatur aut et. Voluptatibus dolorem molestiae quibusdam consequatur velit non. Dolor corrupti qui iste nesciunt ut amet. Molestiae non dolor dolores.', 1, 1, '2014-07-03 00:47:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (57, 26, 53, 'Dignissimos qui ut vero qui alias dolores. Qui magni eos id est ex iure adipisci. Qui molestias sed facere exercitationem quasi nisi. Corporis sint quo quia et minima magni.', 1, 1, '2016-03-01 15:05:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (58, 41, 31, 'Et facilis sit quibusdam incidunt non sint eos corporis. Sunt quia vero architecto consequatur in sit assumenda mollitia. Et delectus sed delectus tempore ut. Odit doloribus natus eius ut.', 0, 0, '2017-08-01 11:43:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (59, 76, 8, 'Quis ut quam aliquam quisquam ad molestiae. Animi aperiam reprehenderit placeat ex debitis placeat. Qui architecto laboriosam qui sit nihil odit ipsa.', 0, 1, '2011-12-21 18:30:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (60, 63, 9, 'Corporis omnis vitae sapiente. Explicabo id beatae doloremque atque iusto nulla dignissimos nostrum. Est est ab maxime voluptatem dignissimos perspiciatis. Est placeat autem molestiae dolore inventore voluptas voluptas. Quae voluptas velit excepturi optio quod.', 1, 1, '2021-01-13 02:39:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (61, 78, 48, 'Totam velit sequi sed itaque. Ea enim voluptate neque ab voluptatibus. Et illum cupiditate ipsam possimus est reiciendis.', 1, 1, '2019-09-07 03:45:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (62, 70, 91, 'Blanditiis fuga eaque blanditiis possimus. Aut aut repudiandae ex sequi sit commodi sequi. Cupiditate at voluptates neque odit. Debitis alias molestiae error at quis et quia.', 0, 1, '2015-10-12 16:09:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (63, 39, 16, 'Et et aut qui nihil. Incidunt quae id eveniet eum. Ipsa iure ipsam soluta odit culpa eum.', 1, 0, '2015-12-04 22:30:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (64, 64, 25, 'Necessitatibus quo omnis vitae iure quos voluptate. Dolores possimus qui tempora. Quos sed voluptas sunt quod sit dolorem hic. Magni nihil natus fugiat minima.', 0, 1, '2017-08-22 04:55:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (65, 20, 68, 'Doloribus ut blanditiis molestiae mollitia possimus. Molestiae quas beatae velit unde et aut et delectus. Maiores est autem ipsum qui quia quia. Voluptatum officia eveniet impedit omnis sit cumque.', 1, 0, '2018-03-26 13:12:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (66, 60, 24, 'Eos occaecati nesciunt corporis nesciunt. Et quos repellat officiis. Quo est ea et.', 1, 1, '2017-12-16 15:21:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (67, 49, 33, 'Minima ut reiciendis consectetur inventore debitis iste eius. Ea laborum facere et quo quas. Aut et blanditiis accusantium et adipisci ipsam perferendis. Iste ullam et voluptas ut aspernatur sunt earum at. Voluptatem sed id adipisci natus voluptatem commodi.', 1, 0, '2014-01-14 02:31:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (68, 2, 33, 'Et et est asperiores magni aut et. Provident asperiores voluptatibus dolorem. Blanditiis reiciendis est eveniet voluptatem odit quibusdam quod quas.', 1, 0, '2020-03-02 04:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (69, 78, 43, 'Laborum repellat eum qui quia eaque sequi. Suscipit voluptates voluptate culpa consectetur voluptatem. Laudantium laboriosam quia doloribus est.', 1, 0, '2019-07-09 15:53:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (70, 91, 97, 'Aut dolores id dolorem quo deserunt. Delectus qui aut consequuntur asperiores consequatur. Maxime et possimus rem distinctio facere hic a.', 1, 0, '2017-07-25 09:35:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (71, 5, 27, 'Explicabo magnam praesentium voluptas eius. Cupiditate pariatur officiis placeat sed incidunt.', 0, 0, '2016-06-13 15:46:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (72, 55, 31, 'Placeat et sint praesentium aperiam. Consequatur reprehenderit sit et qui vero. Perspiciatis et nihil veritatis deserunt delectus porro.', 0, 0, '2012-05-26 06:33:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (73, 79, 95, 'Voluptatem iste inventore ratione debitis. Iure aspernatur maiores ullam. Veritatis unde ea earum ea ea facere dignissimos.', 0, 0, '2017-08-16 05:52:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (74, 61, 54, 'Itaque delectus optio cupiditate aut ex corporis. Inventore aliquid dolorem maiores nulla nostrum voluptas alias vero. Id voluptate illo iusto.', 1, 1, '2014-11-12 07:33:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (75, 2, 23, 'Sunt est et nisi deleniti quam nobis. Commodi officiis similique accusamus eum temporibus. Sunt magni debitis quis itaque alias.', 0, 1, '2014-05-07 14:06:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (76, 63, 80, 'Libero quia ut vero occaecati ab. Sint amet possimus quia ut iste. At sit quo esse suscipit. Sit aut officiis impedit officia similique rerum.', 0, 0, '2012-03-19 17:11:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (77, 71, 32, 'Qui voluptatum sed delectus reprehenderit et possimus. Cumque ratione iure quidem minus ratione nostrum. Ut et blanditiis quis explicabo distinctio dolorem. Hic occaecati doloribus velit sed qui.', 1, 1, '2020-06-07 08:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (78, 71, 10, 'Optio quis cumque excepturi sit quasi et. Officia dolorem iste delectus vitae vel aut voluptates. Ab sit rem aliquam et reiciendis. Dolor velit corrupti repellat odio maiores itaque saepe.', 1, 1, '2017-02-04 13:27:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (79, 47, 34, 'Temporibus corrupti harum ut non. Modi provident et odio modi tempore. Nam et quia ab ut est dolorum. Et labore tempore dignissimos sint.', 0, 1, '2016-05-06 13:26:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (80, 34, 67, 'Aut qui vero laborum eos. Assumenda non atque quo aut voluptatem et exercitationem. Hic sit inventore non qui libero cum quia non.', 0, 1, '2020-04-01 08:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (81, 2, 93, 'Eveniet sint saepe officia reiciendis. Dolor officia eum maxime nam accusamus.', 1, 0, '2015-01-31 21:33:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (82, 91, 50, 'Doloremque ut ullam labore minima suscipit. Porro id et accusantium dolorem dicta deleniti error consectetur. Dolore ut autem tempore omnis quaerat. Nemo vitae vero aut iure nemo.', 1, 0, '2020-05-21 21:36:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (83, 26, 93, 'Excepturi nihil deleniti laborum id et sunt. Culpa ipsam id reprehenderit et autem. Vel non et dolore dolorem.', 0, 0, '2014-11-02 01:49:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (84, 83, 4, 'Inventore et voluptates nobis. Facilis reprehenderit quaerat odit aliquid tempora deleniti minima. Adipisci et voluptatem repudiandae qui natus mollitia necessitatibus. Soluta perspiciatis quo autem sit sint voluptatem.', 1, 0, '2017-11-21 18:18:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (85, 35, 73, 'Beatae quia non voluptas fugiat et illo et. Magnam non quidem veniam eius omnis sit commodi. Aut et ut voluptatibus. Beatae est aspernatur repudiandae et quia.', 1, 1, '2020-12-04 04:35:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (86, 100, 40, 'Sequi hic qui harum sed eaque quas labore. Repudiandae id pariatur unde natus quis sapiente necessitatibus. Quae recusandae deserunt perspiciatis ea et.', 1, 0, '2015-09-04 00:48:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (87, 100, 54, 'Qui aut velit voluptatibus dolorem quae minima. Dolorem vel et atque at tenetur. Ut dolor est nihil error et corporis nihil rem. Dolorem est dolorem omnis perspiciatis.', 0, 0, '2015-03-31 17:09:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (88, 70, 78, 'Magni ratione rerum atque omnis nam non quia quo. Et iure dolor maiores provident numquam dolorem distinctio. Id non dolore itaque cum quam architecto fugit placeat. Repudiandae corporis eveniet quae esse necessitatibus.', 0, 0, '2019-07-25 02:08:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (89, 49, 31, 'Earum voluptatibus laudantium nemo facilis quos animi laborum. Ut necessitatibus ut corrupti ut error voluptatem velit. Exercitationem ut ea totam ipsa ut dolorem similique quas. Repellat blanditiis veritatis eaque officiis pariatur ipsa animi.', 0, 0, '2016-03-17 22:12:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (90, 32, 51, 'Sunt consequatur dicta eius omnis. Doloribus unde maiores ipsum autem dolore culpa eos. Eius et tempora blanditiis nulla.', 0, 0, '2019-05-09 07:34:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (91, 54, 95, 'Quia tempore adipisci autem ab. Expedita minus nulla tenetur harum illo odit. Dolor ut corrupti et nihil perferendis. Reiciendis quod deleniti perferendis sapiente reprehenderit ab fugit. Dolor rerum qui aut iure qui.', 1, 1, '2020-06-03 02:41:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (92, 31, 25, 'Facilis necessitatibus velit laudantium. Odit dignissimos nisi nemo consequatur aut dignissimos ipsum a. Eveniet adipisci rerum ab. Maxime quia est consequatur nihil.', 1, 0, '2015-06-22 10:17:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (93, 26, 1, 'Deleniti facere delectus aliquam corrupti dolores doloremque ullam repudiandae. Provident voluptatum quidem ut laudantium adipisci. Blanditiis facere quo sed sit officia non. Quibusdam unde distinctio nulla totam consequatur atque.', 0, 0, '2020-07-17 11:23:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (94, 34, 73, 'Nemo dicta nemo ea eum cumque dicta quidem quia. Et quia praesentium ipsam velit in. Qui et recusandae fuga ut.', 0, 1, '2013-03-22 15:29:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (95, 35, 67, 'Voluptatem illo qui quam molestiae. Impedit quibusdam non maxime consequatur in. Suscipit harum voluptas mollitia. Sit quas sint dolore voluptas.', 0, 0, '2017-09-03 19:10:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (96, 40, 37, 'Harum cupiditate consequatur et soluta. Vitae officia deleniti est nisi. Facere quas est aperiam eaque. Earum est earum temporibus ut.', 0, 1, '2019-06-23 07:42:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (97, 60, 30, 'Delectus unde asperiores omnis quia a. Amet quas dignissimos ratione ab sit. Eos aliquam similique quia omnis. Numquam cupiditate libero exercitationem ut. Odio sed dicta amet vel facere minima ea fugiat.', 0, 0, '2020-11-03 00:35:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (98, 86, 85, 'Est sed architecto nesciunt perspiciatis voluptates voluptatem. Nesciunt atque ipsam natus consequuntur totam. Eius quod est ut facilis ut provident qui.', 1, 1, '2018-05-24 16:37:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (99, 22, 68, 'Molestias et fugiat voluptatibus dolor aut. Et nam ea corrupti et consequatur impedit vel. Autem velit sunt quidem aut sit vitae nulla ducimus.', 1, 0, '2020-04-15 08:01:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `create_at`) VALUES (100, 89, 57, 'Et enim eum labore atque inventore. Quo est dolore dolores vero doloremque aut. Voluptate autem possimus ut fugiat dolorum voluptatem sed.', 1, 1, '2021-01-15 05:15:31');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (1, 'f', '1972-01-06', 'South Karolannville', 'Spain', '2015-07-04 05:11:54', '2017-12-26 10:46:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (2, 'm', '2001-01-15', 'North Steve', 'Jordan', '2020-03-03 23:11:23', '2017-06-05 00:05:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (3, 'f', '2008-09-03', 'Johnnymouth', 'Libyan Arab Jamahiriya', '2021-04-01 13:14:01', '2013-09-06 22:25:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (4, 'm', '1975-05-23', 'West Ewaldview', 'Bahrain', '2019-10-04 21:25:17', '2011-08-24 14:25:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (5, 'f', '2005-01-19', 'Pacochafurt', 'Bahamas', '2021-04-06 22:38:05', '2014-11-16 22:57:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (6, 'm', '1975-11-30', 'North Abelstad', 'Uganda', '2020-04-29 15:54:16', '2015-09-18 04:53:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (7, 'm', '2015-11-01', 'East Deontae', 'Cyprus', '2020-01-02 23:47:22', '2018-11-27 21:57:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (8, 'f', '1981-05-04', 'Port Melliehaven', 'French Southern Territories', '2019-11-03 00:35:21', '2018-05-27 02:32:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (9, 'f', '2007-06-08', 'Port Dorris', 'Angola', '2012-04-07 14:41:36', '2019-02-21 13:06:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (10, 'm', '2001-08-29', 'Runolfsdottirfurt', 'Cuba', '2020-02-14 01:20:33', '2019-11-07 04:09:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (11, 'f', '1987-12-24', 'North Hellen', 'El Salvador', '2018-07-08 03:37:25', '2014-09-06 12:11:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (12, 'm', '1987-09-12', 'New Reinafort', 'Bouvet Island (Bouvetoya)', '2020-12-26 23:33:44', '2017-04-25 15:01:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (13, 'm', '1985-05-17', 'Maritzafurt', 'New Zealand', '2019-02-15 18:31:08', '2011-07-10 10:27:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (14, 'f', '2016-05-30', 'Willowport', 'Bangladesh', '2011-12-07 19:17:00', '2020-11-26 13:08:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (15, 'm', '2011-12-17', 'North Gerryville', 'France', '2018-06-05 22:47:25', '2011-11-07 15:37:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (16, 'm', '2000-12-24', 'South Jeffreyborough', 'British Virgin Islands', '2018-06-26 11:15:19', '2011-11-20 04:29:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (17, 'm', '2013-03-18', 'East Stefaniechester', 'Belarus', '2013-08-27 01:44:32', '2018-09-25 22:10:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (18, 'm', '1976-05-15', 'Lawsonberg', 'Cocos (Keeling) Islands', '2016-12-12 05:53:29', '2019-03-02 02:37:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (19, 'm', '2003-10-16', 'Matteobury', 'Dominican Republic', '2015-08-15 00:52:16', '2012-08-19 21:59:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (20, 'f', '1984-03-31', 'Sadiebury', 'Netherlands', '2011-11-16 01:28:56', '2013-07-08 20:23:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (21, 'm', '2020-05-01', 'Gladycemouth', 'Nepal', '2020-08-14 07:22:59', '2014-08-28 22:51:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (22, 'f', '1983-10-22', 'East Samanthamouth', 'Central African Republic', '2016-09-17 19:49:35', '2012-04-04 22:09:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (23, 'm', '2020-08-09', 'Deliamouth', 'Sao Tome and Principe', '2012-09-13 03:40:10', '2017-08-15 00:22:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (24, 'm', '1991-12-26', 'Port Lesterview', 'Montserrat', '2021-02-23 22:42:43', '2016-06-15 05:54:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (25, 'm', '1984-11-13', 'Port Macie', 'Lao People\'s Democratic Republic', '2020-04-14 08:46:45', '2011-05-28 03:30:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (26, 'f', '2017-05-22', 'Bruenmouth', 'Cuba', '2019-10-04 05:29:54', '2019-03-05 11:47:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (27, 'm', '2020-12-05', 'Flatleychester', 'South Georgia and the South Sandwich Islands', '2017-08-25 08:15:28', '2017-04-25 17:36:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (28, 'f', '2008-08-15', 'South Oren', 'Hungary', '2019-11-03 07:37:45', '2019-10-08 05:50:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (29, 'm', '2004-10-03', 'Maiafort', 'Estonia', '2020-04-23 07:58:26', '2014-02-15 19:16:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (30, 'f', '1978-08-04', 'McCulloughtown', 'French Southern Territories', '2014-10-01 09:16:23', '2018-07-16 08:02:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (31, 'm', '1981-12-09', 'Pfefferland', 'Zimbabwe', '2013-03-13 02:20:23', '2012-11-12 22:36:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (32, 'm', '2001-08-05', 'Joaquinmouth', 'Paraguay', '2012-05-18 17:54:29', '2020-02-26 03:34:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (33, 'f', '1983-04-01', 'North Tonibury', 'Macao', '2012-01-25 01:11:02', '2015-07-27 22:06:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (34, 'f', '1976-07-05', 'Kleinfurt', 'Greenland', '2018-09-08 12:58:29', '2017-07-07 12:07:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (35, 'f', '1990-04-10', 'O\'Keefeside', 'Netherlands Antilles', '2020-12-16 10:49:09', '2021-03-14 16:39:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (36, 'f', '2001-01-04', 'Kattiechester', 'Lithuania', '2019-06-20 14:56:59', '2021-02-20 12:02:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (37, 'f', '2000-12-09', 'South Oswald', 'Anguilla', '2012-04-30 04:19:19', '2015-09-27 00:07:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (38, 'm', '1976-09-11', 'Kristyhaven', 'Benin', '2015-03-17 12:48:16', '2014-06-06 07:31:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (39, 'f', '2001-04-28', 'Ratketown', 'Liberia', '2013-05-02 07:42:49', '2016-11-11 11:24:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (40, 'm', '2017-02-11', 'Bernierland', 'Netherlands', '2018-08-08 14:49:53', '2011-05-28 17:00:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (41, 'f', '1978-01-31', 'Parkerfort', 'Kiribati', '2015-08-12 04:10:41', '2020-11-06 13:41:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (42, 'f', '2016-11-15', 'Ernserhaven', 'Antarctica (the territory South of 60 deg S)', '2018-04-10 07:40:37', '2012-10-07 18:10:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (43, 'f', '2003-08-25', 'Adamston', 'Turks and Caicos Islands', '2014-12-05 21:06:58', '2015-01-06 11:38:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (44, 'm', '1988-03-05', 'Beaufort', 'Tonga', '2013-04-06 21:48:18', '2019-11-25 02:43:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (45, 'm', '1995-09-28', 'New Andrestad', 'Colombia', '2011-11-10 09:12:05', '2015-02-12 14:57:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (46, 'm', '2015-05-26', 'Ethaborough', 'Northern Mariana Islands', '2014-11-03 21:35:02', '2011-06-01 07:21:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (47, 'f', '2009-03-13', 'Yasminside', 'Slovakia (Slovak Republic)', '2020-10-19 06:20:54', '2015-05-02 06:44:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (48, 'f', '1975-03-14', 'Mercedeschester', 'Eritrea', '2015-02-24 23:59:42', '2013-12-05 22:44:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (49, 'f', '1979-12-27', 'North Malikamouth', 'Holy See (Vatican City State)', '2012-12-27 03:57:53', '2019-10-25 09:05:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (50, 'f', '1979-05-08', 'South Katherynland', 'Greenland', '2011-10-03 21:37:46', '2019-04-09 09:59:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (51, 'f', '1990-04-24', 'Walshstad', 'Russian Federation', '2011-10-26 17:43:30', '2016-06-30 11:54:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (52, 'm', '2007-12-29', 'Sincereshire', 'Central African Republic', '2019-09-21 22:42:54', '2011-10-03 07:01:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (53, 'f', '1991-09-03', 'Lockmanton', 'Slovakia (Slovak Republic)', '2018-08-24 14:55:11', '2017-02-12 15:24:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (54, 'm', '2019-11-29', 'Ethanborough', 'Kenya', '2014-03-10 03:06:46', '2020-11-19 09:17:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (55, 'm', '1986-05-01', 'North Dennis', 'Guinea', '2020-08-25 09:23:16', '2015-06-28 03:51:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (56, 'f', '1973-10-17', 'Angelineport', 'Timor-Leste', '2015-03-09 23:02:21', '2012-06-09 04:32:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (57, 'f', '2012-12-01', 'Strosinport', 'Macao', '2019-03-18 06:20:03', '2015-08-19 16:48:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (58, 'f', '1997-03-21', 'Beahanstad', 'Myanmar', '2013-08-05 18:45:36', '2016-02-02 02:43:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (59, 'f', '1975-07-18', 'North Joanieland', 'Martinique', '2014-11-21 07:30:29', '2014-09-07 11:42:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (60, 'f', '1982-06-23', 'Idaville', 'Holy See (Vatican City State)', '2014-07-09 03:56:54', '2014-06-23 17:05:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (61, 'm', '1970-04-02', 'Emmanuelland', 'Finland', '2013-05-30 17:17:14', '2016-11-27 04:45:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (62, 'm', '2017-07-22', 'Lake Alexland', 'Svalbard & Jan Mayen Islands', '2015-08-05 02:06:51', '2014-08-03 08:23:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (63, 'f', '1986-04-28', 'Port Mablemouth', 'Congo', '2013-01-28 12:14:13', '2020-04-27 15:02:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (64, 'f', '1980-02-01', 'South Enafort', 'British Indian Ocean Territory (Chagos Archipelago)', '2019-02-05 00:55:50', '2020-11-19 07:50:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (65, 'f', '2001-06-23', 'New Godfrey', 'United States Virgin Islands', '2019-04-30 01:30:43', '2014-03-15 11:59:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (66, 'm', '2002-10-21', 'Lake Ellsworth', 'Bahrain', '2011-05-07 17:21:24', '2020-05-12 03:36:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (67, 'm', '2016-10-05', 'North Angela', 'Denmark', '2012-07-06 09:43:57', '2014-11-20 04:45:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (68, 'm', '2007-07-12', 'Marjoriechester', 'Somalia', '2013-03-13 01:11:39', '2016-07-06 21:06:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (69, 'f', '1989-11-04', 'Lake Jaquanshire', 'Cuba', '2012-07-18 06:48:44', '2014-06-15 01:25:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (70, 'f', '1989-06-25', 'Eichmannberg', 'Syrian Arab Republic', '2016-05-08 20:38:22', '2012-03-28 07:18:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (71, 'f', '1995-11-18', 'East Cathrynmouth', 'Guadeloupe', '2021-03-25 05:13:39', '2014-05-06 09:19:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (72, 'm', '2011-01-31', 'Boehmborough', 'Wallis and Futuna', '2019-06-28 02:46:40', '2015-08-14 04:26:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (73, 'm', '1973-09-07', 'Towneshire', 'Pitcairn Islands', '2018-04-19 16:55:42', '2012-04-05 17:53:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (74, 'f', '2007-12-18', 'West Darrenmouth', 'Grenada', '2015-04-23 09:29:22', '2015-01-23 05:03:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (75, 'f', '2018-05-01', 'East Elaina', 'Indonesia', '2020-03-17 02:59:26', '2011-08-20 21:38:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (76, 'f', '2020-12-09', 'Goldnerburgh', 'Falkland Islands (Malvinas)', '2020-02-12 11:28:15', '2013-03-26 01:50:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (77, 'f', '1987-10-27', 'Destanyburgh', 'India', '2015-02-11 20:37:44', '2011-11-06 23:05:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (78, 'm', '1971-08-15', 'Lake Phyllis', 'Eritrea', '2019-05-06 06:39:20', '2014-08-07 09:42:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (79, 'f', '1979-10-26', 'Jordanfurt', 'Grenada', '2016-11-15 07:17:25', '2014-11-06 16:42:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (80, 'f', '1970-12-24', 'South Loren', 'Mali', '2011-05-28 01:12:47', '2020-04-06 10:56:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (81, 'm', '2009-11-14', 'North Jayceemouth', 'San Marino', '2014-01-20 06:51:19', '2011-06-19 02:13:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (82, 'f', '1973-01-08', 'North Eugenia', 'Guadeloupe', '2012-07-31 09:49:22', '2016-01-15 23:03:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (83, 'f', '2010-09-09', 'New Jamalhaven', 'Russian Federation', '2013-02-13 05:58:04', '2014-02-27 07:19:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (84, 'f', '2019-02-17', 'Lake Rossie', 'Mauritius', '2017-01-14 09:43:41', '2018-06-18 17:36:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (85, 'f', '1977-05-19', 'Sanfordchester', 'Zimbabwe', '2019-03-06 18:26:11', '2019-12-01 22:24:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (86, 'f', '1979-02-01', 'Cruickshankburgh', 'New Zealand', '2016-05-14 17:35:31', '2015-04-23 03:08:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (87, 'f', '1992-08-27', 'Bergstromborough', 'Armenia', '2014-12-04 21:41:19', '2020-06-08 08:11:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (88, 'm', '2007-03-29', 'Goldnerhaven', 'Egypt', '2015-06-08 13:07:37', '2018-07-21 14:27:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (89, 'm', '1985-12-02', 'South Ova', 'Algeria', '2016-12-08 01:40:47', '2014-07-30 18:25:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (90, 'f', '1991-05-18', 'Greentown', 'Belgium', '2012-02-10 08:48:39', '2012-09-12 04:53:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (91, 'f', '1987-05-26', 'Gibsonhaven', 'Mauritania', '2011-06-15 06:07:29', '2017-03-12 07:51:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (92, 'f', '1984-08-19', 'Cathrineton', 'Greece', '2012-03-05 07:58:01', '2019-05-10 01:04:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (93, 'f', '1976-10-05', 'South Hermantown', 'Honduras', '2014-09-01 11:56:46', '2018-03-30 15:39:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (94, 'f', '2003-04-24', 'Weststad', 'Mongolia', '2019-10-02 23:27:38', '2018-07-10 22:29:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (95, 'm', '2016-02-09', 'South Juwan', 'Guyana', '2016-11-20 13:32:00', '2017-10-02 06:26:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (96, 'f', '1983-04-03', 'East Jaquelin', 'Netherlands', '2017-08-21 22:06:50', '2013-09-08 04:18:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (97, 'f', '1998-06-26', 'New Haskellfort', 'Luxembourg', '2012-01-04 11:22:51', '2018-03-15 20:40:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (98, 'f', '1990-11-16', 'Lake Christy', 'United Kingdom', '2012-08-01 04:47:30', '2019-11-01 10:21:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (99, 'f', '1984-01-12', 'East Juanamouth', 'Togo', '2012-03-30 19:52:39', '2017-04-24 07:23:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `update_at`) VALUES (100, 'f', '1997-04-05', 'Lake Merleton', 'United States Minor Outlying Islands', '2013-11-04 16:26:36', '2016-12-14 02:57:53');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '�?дентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '�?мя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `update_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (1, 'Muriel', 'Wunsch', 'hermann.connie@example.com', '(329)442-3920', '2016-01-18 04:42:09', '2016-02-12 12:50:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (2, 'Afton', 'Walter', 'cauer@example.org', '787-031-4338', '2018-09-26 04:13:10', '2011-07-18 08:56:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (3, 'Caesar', 'Runolfsson', 'bauch.gerson@example.org', '552-348-9818x524', '2016-05-25 20:32:38', '2011-12-21 18:37:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (4, 'Willy', 'Aufderhar', 'anna68@example.com', '874.834.2556x0313', '2019-01-27 14:47:45', '2011-12-28 05:04:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (5, 'Michelle', 'Hilpert', 'rollin39@example.org', '(835)192-5641x18505', '2021-04-10 04:36:10', '2016-01-07 08:59:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (6, 'Madilyn', 'O\'Hara', 'williamson.pat@example.org', '(061)584-7866', '2014-11-27 16:16:19', '2017-04-14 17:17:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (7, 'Tyler', 'Gaylord', 'martin22@example.net', '06239589005', '2020-08-31 22:48:58', '2012-11-15 15:13:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (8, 'Karine', 'Stark', 'ggerhold@example.net', '481-980-9803', '2019-03-12 19:08:20', '2017-11-06 21:11:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (9, 'Sydnie', 'Schmeler', 'casey24@example.net', '02004056444', '2011-10-23 14:44:44', '2017-03-09 17:36:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (10, 'Tessie', 'Hane', 'americo58@example.org', '1-932-310-7870x95257', '2012-11-23 12:50:57', '2021-02-18 16:58:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (11, 'Jarrett', 'Lehner', 'pkirlin@example.com', '614.013.8784x843', '2019-01-19 03:23:49', '2019-04-17 18:02:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (12, 'Emely', 'Cruickshank', 'elenor.jacobs@example.org', '1-863-249-4373x3537', '2014-01-02 13:26:35', '2012-09-25 07:59:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (13, 'Michele', 'Wuckert', 'marianne.quitzon@example.net', '198-437-0832x488', '2015-12-08 18:54:57', '2019-03-05 20:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (14, 'June', 'Casper', 'davon.herman@example.com', '1-745-902-8555x68535', '2018-01-17 01:29:04', '2017-11-03 06:40:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (15, 'Maurice', 'Swift', 'qbernhard@example.com', '09133447494', '2014-09-18 12:29:02', '2019-08-26 12:18:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (16, 'Jaden', 'Gislason', 'zhessel@example.org', '919-008-7809x3241', '2014-03-19 09:53:36', '2020-11-12 19:47:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (17, 'Tabitha', 'Lesch', 'ukihn@example.com', '(228)438-6629x41697', '2020-07-26 06:24:06', '2016-07-27 12:30:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (18, 'Eda', 'Boyle', 'irma.bednar@example.net', '617.349.3548x4063', '2017-09-14 17:19:19', '2019-11-21 04:33:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (19, 'Gustave', 'Gleichner', 'laurel63@example.net', '(299)457-8744', '2011-07-17 15:33:16', '2014-08-18 04:57:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (20, 'Damon', 'Legros', 'awolf@example.net', '269-551-6314x155', '2020-02-18 10:42:23', '2013-09-13 20:46:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (21, 'Aurelio', 'Eichmann', 'wrosenbaum@example.org', '+71(2)0915607326', '2012-02-06 11:04:27', '2020-06-04 10:07:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (22, 'Belle', 'Little', 'tremaine48@example.com', '894.331.2080', '2012-03-29 09:35:56', '2012-12-31 04:55:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (23, 'Kariane', 'Dooley', 'wboyle@example.org', '201.064.8799', '2015-07-01 20:42:31', '2019-01-31 20:03:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (24, 'Fiona', 'Bednar', 'meaghan49@example.com', '(340)562-6201', '2017-02-16 22:40:45', '2013-01-07 22:57:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (25, 'Josie', 'Deckow', 'jwunsch@example.org', '587.254.9803', '2013-09-08 22:03:05', '2013-11-23 15:40:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (26, 'Etha', 'Tillman', 'dax24@example.com', '(914)351-2859x8689', '2014-07-20 11:42:31', '2014-07-27 07:34:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (27, 'Rosalia', 'Watsica', 'gthiel@example.net', '657-424-7415x0726', '2011-07-17 17:44:34', '2013-01-12 06:00:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (28, 'Marquis', 'Anderson', 'huels.hailey@example.net', '(141)132-5295x17582', '2019-11-10 14:55:19', '2015-01-24 03:52:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (29, 'Modesto', 'Lockman', 'randal21@example.net', '1-543-779-2331', '2018-05-20 06:59:07', '2019-08-20 08:15:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (30, 'Clay', 'Hettinger', 'jeremy15@example.org', '(834)064-5373', '2018-03-08 02:13:18', '2021-02-06 13:57:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (31, 'Domingo', 'O\'Kon', 'vdare@example.net', '439.874.2737x417', '2016-02-13 02:24:50', '2020-06-30 10:18:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (32, 'Haylee', 'Carter', 'clotilde51@example.net', '1-926-274-7646x273', '2016-10-25 06:26:57', '2012-12-03 16:39:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (33, 'Elyse', 'Schamberger', 'britney06@example.org', '02887907542', '2020-05-03 14:25:39', '2012-09-11 08:16:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (34, 'Jaden', 'Carter', 'brando.king@example.net', '694.314.3059x161', '2011-11-28 08:18:52', '2016-11-04 10:52:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (35, 'Virgie', 'Haag', 'johns.dario@example.org', '635-243-1895x950', '2019-11-20 12:57:27', '2017-03-02 14:03:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (36, 'Raleigh', 'O\'Keefe', 'collin.nienow@example.org', '247.181.9252x2179', '2015-10-04 18:24:28', '2015-03-18 07:01:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (37, 'Alva', 'Macejkovic', 'dzulauf@example.com', '1-335-931-7643', '2016-11-13 17:27:38', '2014-06-19 05:27:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (38, 'Joanne', 'Fahey', 'nschinner@example.com', '691.624.2393', '2012-07-08 14:40:06', '2014-01-18 06:00:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (39, 'Austyn', 'Price', 'rveum@example.com', '264-360-6794', '2015-12-08 22:57:33', '2011-09-07 10:35:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (40, 'Judy', 'Gorczany', 'khalil23@example.org', '(299)867-5811x6328', '2021-04-23 14:17:08', '2020-09-09 07:22:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (41, 'Effie', 'Hayes', 'shakira.sporer@example.com', '(800)905-1229x903', '2020-11-19 18:23:32', '2019-08-26 07:41:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (42, 'Nettie', 'Jerde', 'lucile.o\'kon@example.com', '1-160-421-6466x594', '2018-10-25 12:50:41', '2012-10-07 02:16:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (43, 'Elenor', 'Bergnaum', 'ledner.sedrick@example.org', '(375)931-5419x1257', '2011-11-15 06:30:19', '2015-07-18 08:03:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (44, 'Josefa', 'Ryan', 'bahringer.madge@example.com', '169.417.6746x99679', '2017-09-19 03:51:16', '2016-08-26 16:01:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (45, 'Paul', 'Kreiger', 'hammes.cayla@example.org', '543.435.0178', '2016-09-25 06:45:15', '2018-08-05 21:57:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (46, 'Fidel', 'Ryan', 'yharber@example.com', '141-945-3589x6526', '2011-10-10 15:19:58', '2015-12-16 07:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (47, 'Daryl', 'Roob', 'geffertz@example.org', '593-101-9280x5711', '2015-10-24 06:08:59', '2020-02-21 00:11:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (48, 'Genesis', 'Nolan', 'vesta.dickinson@example.org', '09226196679', '2012-03-19 05:22:53', '2016-06-30 11:38:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (49, 'Lavonne', 'Connelly', 'ibergstrom@example.com', '902-760-5388', '2016-01-05 13:39:50', '2017-05-12 23:55:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (50, 'Leone', 'Nienow', 'prosacco.tressie@example.com', '1-222-078-9839', '2020-04-20 04:50:03', '2018-11-11 07:43:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (51, 'Sallie', 'Olson', 'joelle71@example.org', '787-261-0541x34040', '2012-10-08 17:13:06', '2016-03-08 18:44:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (52, 'Chester', 'Kirlin', 'jeremie.rolfson@example.net', '1-958-290-6665x31762', '2013-11-20 08:54:21', '2020-01-04 01:42:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (53, 'Vincenzo', 'Kub', 'stamm.antonia@example.org', '417-044-6951', '2011-12-12 19:35:20', '2013-01-11 18:34:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (54, 'Adalberto', 'Treutel', 'rosenbaum.nona@example.org', '1-094-038-4897', '2011-12-22 03:22:27', '2018-03-29 03:56:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (55, 'Monserrate', 'Nader', 'alysha.king@example.net', '508.019.8176x16854', '2012-08-05 07:06:12', '2019-08-21 14:33:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (56, 'Jeffry', 'Borer', 'bergnaum.aurelie@example.com', '(103)701-1419', '2014-03-28 18:15:56', '2015-08-14 19:45:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (57, 'Mckenna', 'Schumm', 'sanford.audra@example.com', '(107)635-7270x74576', '2017-07-22 19:49:52', '2015-07-11 07:51:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (58, 'Margarita', 'Weber', 'walker.kenny@example.org', '1-215-574-4338', '2019-12-20 12:05:27', '2017-08-23 19:05:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (59, 'Abelardo', 'Cruickshank', 'brakus.jewel@example.com', '337-383-9958x318', '2019-08-12 05:11:13', '2019-04-30 15:39:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (60, 'Brionna', 'Halvorson', 'wiegand.erna@example.com', '050-095-7625', '2019-02-20 10:33:43', '2014-10-12 06:03:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (61, 'Donna', 'Skiles', 'weissnat.jayme@example.org', '625.251.3796x1881', '2017-04-11 23:19:10', '2012-05-31 11:04:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (62, 'Sarai', 'Upton', 'cara43@example.org', '445.095.6083', '2018-05-04 02:54:17', '2015-06-27 04:36:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (63, 'Jannie', 'Parisian', 'lessie03@example.com', '(725)284-7627x801', '2019-09-26 21:07:46', '2016-12-30 01:58:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (64, 'Lucious', 'Marquardt', 'leon47@example.net', '+16(6)4251515148', '2013-10-28 07:24:58', '2015-02-27 03:20:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (65, 'Vicenta', 'Gleichner', 'colt23@example.net', '387.427.0909x68273', '2013-05-19 12:40:24', '2019-05-20 05:28:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (66, 'Wendell', 'Legros', 'alexandre.cummings@example.com', '04150343299', '2019-09-15 05:22:41', '2012-02-23 08:26:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (67, 'Margie', 'Boyer', 'squigley@example.org', '1-121-624-1177', '2020-05-25 04:22:17', '2019-12-25 13:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (68, 'Beau', 'Barton', 'birdie.greenholt@example.net', '348-506-8005x068', '2012-12-06 04:38:32', '2012-06-03 15:56:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (69, 'Rashad', 'Windler', 'wcronin@example.com', '993.661.3813', '2018-10-28 04:42:11', '2020-12-01 09:19:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (70, 'Deon', 'Smith', 'pagac.braden@example.net', '(929)176-1528x637', '2012-06-06 09:20:21', '2019-10-15 22:09:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (71, 'Eunice', 'Gutmann', 'kylee.gutmann@example.net', '(610)031-5890', '2021-02-23 01:18:00', '2015-12-04 15:54:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (72, 'Chadrick', 'Armstrong', 'mberge@example.net', '434.533.7807', '2012-08-11 16:07:48', '2011-11-09 02:39:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (73, 'Hayley', 'Swift', 'cecilia82@example.com', '613.579.5000x242', '2011-09-15 17:19:33', '2012-09-13 03:53:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (74, 'Rosario', 'Jakubowski', 'erling01@example.com', '813.617.2913', '2017-04-19 00:44:36', '2012-02-03 01:45:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (75, 'Cordia', 'Lowe', 'nprice@example.org', '448.548.9510x68407', '2018-03-10 20:58:17', '2020-02-15 19:19:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (76, 'Lyric', 'Kling', 'hardy.treutel@example.org', '+63(4)7610760257', '2018-06-13 20:43:16', '2014-07-20 17:49:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (77, 'Daniela', 'Pagac', 'hunter80@example.org', '(066)032-2527', '2015-07-19 00:16:21', '2013-07-25 22:58:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (78, 'Dandre', 'Little', 'keebler.lauren@example.org', '(112)705-9163', '2014-09-25 20:54:39', '2018-01-01 15:44:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (79, 'Brenda', 'Simonis', 'fkoss@example.org', '311-883-1008', '2014-07-02 17:52:06', '2013-04-11 04:30:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (80, 'Destiney', 'Gutkowski', 'madisyn.nitzsche@example.net', '1-362-840-8504x689', '2012-10-21 05:59:06', '2017-06-17 07:41:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (81, 'Katrine', 'Kerluke', 'zwiza@example.org', '492-053-9844x19818', '2019-09-26 14:14:56', '2015-03-10 09:35:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (82, 'Mathias', 'Cormier', 'hartmann.orin@example.com', '(667)509-9827x86479', '2018-09-09 02:40:26', '2017-01-18 12:16:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (83, 'Curt', 'Weimann', 'marquardt.johnnie@example.org', '873-881-0102x85605', '2017-03-12 12:45:35', '2012-02-10 23:37:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (84, 'Mellie', 'Schmeler', 'erdman.mossie@example.com', '326.526.7954x3393', '2020-03-07 12:08:32', '2017-04-27 19:37:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (85, 'Norberto', 'Huel', 'trantow.cheyanne@example.net', '(730)439-2473', '2017-06-18 01:11:55', '2018-11-28 10:50:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (86, 'Kyleigh', 'Johnson', 'jack.o\'conner@example.net', '893-501-9993x34983', '2012-06-06 12:15:51', '2020-11-23 00:09:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (87, 'Guadalupe', 'Treutel', 'slittle@example.org', '120.449.9126x706', '2019-12-20 07:46:16', '2014-11-16 01:53:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (88, 'Gladyce', 'Greenholt', 'cristian.greenfelder@example.com', '(774)108-3061x67088', '2012-03-05 21:44:45', '2011-12-14 11:37:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (89, 'Kian', 'Murazik', 'iblock@example.com', '1-804-427-0392x4403', '2012-04-18 15:32:38', '2013-10-25 22:31:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (90, 'Maci', 'Lynch', 'rath.eloisa@example.com', '716-046-2681x9093', '2016-03-30 20:44:51', '2016-05-25 11:55:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (91, 'Mozell', 'Miller', 'elsie48@example.org', '968-837-9064x187', '2015-01-19 09:24:18', '2011-07-11 22:03:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (92, 'Angeline', 'Bartell', 'kadin48@example.net', '1-716-370-1838x5329', '2011-09-28 18:15:57', '2019-06-23 14:14:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (93, 'Jannie', 'Bahringer', 'ko\'keefe@example.org', '1-962-989-9705', '2011-12-26 20:10:57', '2014-02-09 10:15:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (94, 'Dexter', 'Schaden', 'wschmeler@example.net', '1-415-152-3627x0593', '2021-01-22 10:02:47', '2017-06-04 15:18:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (95, 'Adah', 'O\'Hara', 'huel.kale@example.org', '276-641-4188', '2012-03-12 00:16:48', '2020-08-10 15:30:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (96, 'Daniela', 'Beer', 'eva63@example.org', '1-085-026-1810', '2019-04-18 02:50:06', '2014-02-07 10:01:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (97, 'Lisandro', 'Krajcik', 'alvena.thompson@example.net', '602.515.0016x64803', '2017-02-14 14:51:09', '2019-05-06 11:09:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (98, 'Corine', 'Klein', 'gdietrich@example.net', '(354)270-6662x935', '2015-09-30 22:37:21', '2012-04-01 05:37:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (99, 'Sarina', 'Flatley', 'elliot.gibson@example.com', '(946)100-2308x82756', '2016-10-14 14:03:39', '2018-09-11 14:51:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `update_at`) VALUES (100, 'Sierra', 'Schowalter', 'trisha.schoen@example.com', '1-738-754-8823', '2017-08-26 16:50:52', '2015-01-30 16:16:19');


