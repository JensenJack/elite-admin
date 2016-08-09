# Host: localhost  (Version 5.5.5-10.1.13-MariaDB)
# Date: 2016-08-09 17:26:35
# Generator: MySQL-Front 5.3  (Build 5.39)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "geos"
#

CREATE TABLE `geos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `extras` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "geos"
#


#
# Structure for table "history_types"
#

CREATE TABLE `history_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "history_types"
#

INSERT INTO `history_types` VALUES (1,'User','2016-08-02 17:50:15','2016-08-02 17:50:15'),(2,'Role','2016-08-02 17:50:15','2016-08-02 17:50:15');

#
# Structure for table "migrations"
#

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2015_12_28_171741_create_social_logins_table',1),('2015_12_29_015055_setup_access_tables',1),('2016_07_03_062439_create_history_tables',1),('2016_05_25_121918_create_pages_table',2),('2016_05_25_121918_create_geos_table',3);

#
# Structure for table "pages"
#

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `extras` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "pages"
#

INSERT INTO `pages` VALUES (1,'services','asdasd','test','test','<p>asdasdasdasdasd</p>\r\n\r\n<p>asdasdasd</p>\r\n\r\n<p>asdasdasd</p>\r\n\r\n<p>asdadas</p>\r\n','{\"meta_title\":\"test\",\"meta_description\":\"asd\",\"meta_keywords\":\"asd\"}','2016-08-05 20:31:53','2016-08-09 15:25:05',NULL);

#
# Structure for table "password_resets"
#

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "permissions"
#

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "permissions"
#

INSERT INTO `permissions` VALUES (1,'view-backend','View Backend',1,'2016-08-02 17:50:14','2016-08-02 17:50:14'),(2,'manage-users','Manage Users',2,'2016-08-02 17:50:14','2016-08-02 17:50:14'),(3,'manage-roles','Manage Roles',3,'2016-08-02 17:50:14','2016-08-02 17:50:14');

#
# Structure for table "roles"
#

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "roles"
#

INSERT INTO `roles` VALUES (1,'Administrator',1,1,'2016-08-02 17:50:11','2016-08-02 17:50:11'),(2,'Executive',0,2,'2016-08-02 17:50:11','2016-08-02 17:50:11'),(3,'User',0,3,'2016-08-02 17:50:11','2016-08-02 17:50:11');

#
# Structure for table "permission_role"
#

CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "permission_role"
#

INSERT INTO `permission_role` VALUES (1,1,2),(2,2,2);

#
# Structure for table "users"
#

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','$2y$10$fs2.tPcjrE9GZrJoXldcVu9n8XXUADKqPhBv1J7H4MNjM3JIF9clG',1,'b02bb277d38cba8186b87b24a9d14714',1,'XNYGdA6gV8ZgvGuPsflKkrC4fBvLs1CDJsXhHi7Fy9LAi1RY50iFeqk6kfTD','2016-08-02 17:50:11','2016-08-09 19:56:54',NULL),(2,'Backend User','executive@executive.com','$2y$10$OJzniyVPKMkQAhQ1U5TpEOivH..vDbuGIQt.eOQo6E..sHRHlA73i',1,'2813133a54a225ab37c807e35531fe15',1,NULL,'2016-08-02 17:50:11','2016-08-02 17:50:11',NULL),(3,'Default User','user@user.com','$2y$10$B.2iXuBEtEBF7SEbhJxpd.Uwutntk.YqOlU3QArOm5N/jB1VSTAXq',1,'80482c2a22ea9f2b7137af0d18e82adf',1,NULL,'2016-08-02 17:50:11','2016-08-02 17:50:11',NULL),(4,'test','test@com.br','$2y$10$rzFstOgpWPt1XeSXJgDnJuQL3EJGa1f6plZ7ErK5qjco2C9IuVrCu',1,'40cacfc44bf20383052e9483dcb6c26b',0,NULL,'2016-08-03 20:52:34','2016-08-03 20:52:34',NULL);

#
# Structure for table "social_logins"
#

CREATE TABLE `social_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `social_logins_user_id_foreign` (`user_id`),
  CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "social_logins"
#


#
# Structure for table "history"
#

CREATE TABLE `history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assets` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `history_type_id_foreign` (`type_id`),
  KEY `history_user_id_foreign` (`user_id`),
  CONSTRAINT `history_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `history_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "history"
#


#
# Structure for table "assigned_roles"
#

CREATE TABLE `assigned_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "assigned_roles"
#

INSERT INTO `assigned_roles` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3);
