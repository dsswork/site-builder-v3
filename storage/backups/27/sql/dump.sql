
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fields` json DEFAULT NULL,
  `template_id` bigint unsigned NOT NULL,
  `block_id` bigint unsigned DEFAULT NULL,
  `blockable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blockable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '1',
  `is_general` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blocks_template_id_foreign` (`template_id`),
  KEY `blocks_block_id_foreign` (`block_id`),
  KEY `blocks_blockable_type_blockable_id_index` (`blockable_type`,`blockable_id`),
  CONSTRAINT `blocks_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blocks_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'{\"Image\": \"blocks/1/Softwarium.webp\", \"Title\": \"GREAT LARAVEL COURSE\", \"Button\": {\"link\": \"6\", \"name\": \"BLOG\"}, \"Description\": \"Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you. We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.\"}',4,NULL,'App\\Models\\Page',2,'2024-09-21 08:32:30','2024-10-15 17:41:31',1,0,0),(2,'{\"Image\": \"blocks/2/girl.png\", \"Title\": \"ADMIN SITE BUILDER\", \"Button\": {\"link\": \"2\", \"name\": \"Go Away\"}, \"Description\": \"The following documentation on manually registering components is primarily applicable to those who are writing Laravel packages that include view components. If you are not writing a package, this portion of the component documentation may not be relevant to you.\"}',6,NULL,'App\\Models\\Page',2,'2024-09-21 08:36:00','2024-10-15 17:41:31',1,4,0),(4,'{\"Title\": \"AMAZING TITLE\", \"Description\": \"Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you. We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.\"}',7,NULL,'App\\Models\\Page',2,'2024-10-01 16:22:41','2024-10-15 17:41:31',1,1,0),(6,'{\"Icon\": \"blocks/6/2.png\", \"Title\": \"Title Second\", \"Description\": \"Whether you are new to PHP web frameworks or have years of experience\"}',8,NULL,'App\\Models\\Block',4,NULL,'2024-10-15 17:41:31',1,3,0),(7,'{\"Icon\": \"blocks/7/3.png\", \"Title\": \"Title Third\", \"Description\": \"Whether you are new to PHP web frameworks or have years of experience\"}',8,NULL,'App\\Models\\Block',4,NULL,'2024-10-15 17:41:31',1,2,0),(8,NULL,9,NULL,'App\\Models\\Page',2,'2024-10-01 17:11:56','2024-10-12 08:36:35',1,5,0),(9,'{\"Logo\": \"blocks/9/images (1).png\"}',10,NULL,'App\\Models\\Block',8,NULL,'2024-10-15 17:41:31',1,6,0),(10,'{\"Logo\": \"blocks/10/images.png\"}',10,NULL,'App\\Models\\Block',8,NULL,'2024-10-15 17:41:31',1,7,0),(11,'{\"Logo\": \"blocks/11/Pepsi-logo.png\"}',10,NULL,'App\\Models\\Block',8,NULL,'2024-10-15 17:41:31',1,8,0),(12,'{\"Logo\": \"blocks/12/png-transparent-audi-logo-audi-r8-car-logo-audi-text-trademark-desktop-wallpaper.png\"}',10,NULL,'App\\Models\\Block',8,NULL,'2024-10-15 17:41:31',1,9,0),(17,NULL,8,NULL,'App\\Models\\Block',16,NULL,NULL,0,1,0),(18,'{\"Logo\": \"blocks/18/1.png\"}',10,NULL,'App\\Models\\Block',8,NULL,'2024-10-15 17:41:31',1,10,0),(19,'{\"Link\": \"/\", \"Name\": \"Home\"}',11,NULL,'App\\Models\\Menu',1,'2024-10-03 16:35:39','2024-10-03 17:55:12',1,1,0),(20,'{\"Link\": \"/career\", \"Name\": \"Career\"}',11,NULL,'App\\Models\\Menu',2,'2024-10-03 16:49:04','2024-10-03 17:52:39',1,1,0),(21,'{\"Name\": \"Other\"}',12,NULL,'App\\Models\\Menu',3,'2024-10-03 17:05:20','2024-10-03 17:56:21',1,1,0),(22,'{\"Link\": \"/\", \"Name\": \"About Us\"}',13,NULL,'App\\Models\\Block',21,NULL,'2024-10-03 17:56:58',1,1,0),(23,'{\"Link\": \"/\", \"Name\": \"Contact Us\"}',13,NULL,'App\\Models\\Block',21,NULL,'2024-10-03 17:56:51',1,1,0),(24,'{\"Link\": \"/\", \"Name\": \"Reviews\"}',13,NULL,'App\\Models\\Block',21,NULL,'2024-10-03 17:56:52',1,1,0),(25,'{\"Link\": \"/\", \"Name\": \"Terms\"}',13,NULL,'App\\Models\\Block',21,NULL,'2024-10-03 17:56:59',1,1,0),(26,'{\"Tag\": \"4\", \"Title\": \"AMAZING BLOG\", \"Description\": \"Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you. We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.\"}',14,NULL,'App\\Models\\Page',6,'2024-10-05 07:13:00','2024-10-05 07:31:28',1,1,0),(27,'{\"Link\": \"/blog\", \"Name\": \"Blog\"}',11,NULL,'App\\Models\\Menu',4,'2024-10-05 07:25:59','2024-10-05 07:26:10',1,1,0),(28,'{\"Logo\": \"blocks/28/Pepsi-logo.png\"}',15,NULL,'App\\Models\\Setting',1,'2024-10-08 17:04:48','2024-10-08 17:14:26',1,1,0),(29,NULL,16,NULL,'App\\Models\\Setting',2,'2024-10-08 17:17:52','2024-10-08 17:17:54',1,1,0),(30,'{\"Icon\": \"fa-brands fa-facebook-f foot-facebook\", \"Link\": \"https://www.facebook.com/\"}',17,NULL,'App\\Models\\Block',29,NULL,'2024-10-08 17:19:53',1,1,0),(31,'{\"Icon\": \"fa-brands fa-youtube\", \"Link\": \"https://www.youtube.com/\"}',17,NULL,'App\\Models\\Block',29,NULL,'2024-10-08 17:19:53',1,1,0),(32,'{\"Icon\": \"fa-brands fa-instagram\", \"Link\": \"https://www.instagram.com/\"}',17,NULL,'App\\Models\\Block',29,NULL,'2024-10-08 17:19:53',1,1,0),(33,'{\"Image\": null, \"Title\": \"CONTACTS\", \"Button\": {\"link\": \"2\", \"name\": null}, \"Description\": \"+380665986857\"}',6,NULL,'App\\Models\\Page',2,'2024-10-12 07:08:49','2024-10-15 17:41:31',1,11,0),(42,'{\"Email\": \"dsswork2008@gmail.com\", \"Phone\": \"+38099999999\", \"Title\": \"Meet Laravel\", \"Address\": \"Kiyv\", \"Delivery\": \"Monday To Friday\", \"Description\": \"Laravel is a web application framework with expressive, elegant syntax. A web framework provides a structure and starting point for creating your application, allowing you to focus on creating something amazing while we sweat the details.\", \"Delivery Title\": \"WORKING HOURS\"}',25,NULL,'App\\Models\\Template',25,'2024-10-12 08:51:36','2024-10-15 16:55:27',0,0,1),(43,NULL,25,NULL,'App\\Models\\Page',2,'2024-10-12 08:53:27','2024-10-15 16:09:22',1,12,0),(45,NULL,25,NULL,'App\\Models\\Page',4,'2024-10-15 16:47:43','2024-10-15 16:47:45',1,1,0),(46,'{\"Title\": \"Automatically Hydrating\", \"Button\": {\"link\": \"/\", \"name\": \"Children\"}, \"Description\": \"Even when utilizing Eloquent eager loading, \\\"N + 1\\\" query problems can arise if you try to access the parent model from a child model while looping through the child models!\"}',27,NULL,'App\\Models\\Template',27,'2024-10-15 16:50:24','2024-10-15 16:55:27',0,1,1),(47,'{\"Answer\": \"Now that we can access all of a post\'s comments, let\'s define a relationship to allow a comment to access its parent post. To define the inverse of a hasMany relationship, define a relationship method on the child model which calls the belongsTo method\", \"Question\": \"One to Many (Inverse) / Belongs To\"}',28,NULL,'App\\Models\\Block',46,NULL,'2024-10-15 16:55:27',1,3,0),(48,'{\"Answer\": \"The belongsTo, hasOne, hasOneThrough, and morphOne relationships allow you to define a default model that will be returned if the given relationship is null. This pattern is often referred to as the Null Object pattern and can help remove conditional checks in your code. In the following example, the user relation will return an empty App\\\\Models\\\\User model if no user is attached to the Post model:\", \"Question\": \"Default Models\"}',28,NULL,'App\\Models\\Block',46,NULL,'2024-10-15 16:55:27',1,4,0),(49,'{\"Answer\": \"However, you may find it more convenient to use the whereBelongsTo method, which will automatically determine the proper relationship and foreign key for the given model:\", \"Question\": \"Querying Belongs To Relationships\"}',28,NULL,'App\\Models\\Block',46,NULL,'2024-10-15 16:55:27',1,2,0),(51,NULL,27,NULL,'App\\Models\\Page',4,'2024-10-15 16:56:56','2024-10-15 16:56:58',1,2,0),(52,NULL,27,NULL,'App\\Models\\Page',2,'2024-10-15 17:04:00','2024-10-15 17:04:03',1,13,0);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `taggables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint unsigned NOT NULL,
  `taggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taggables_tag_id_foreign` (`tag_id`),
  KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `taggables` WRITE;
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
INSERT INTO `taggables` VALUES (3,3,'App\\Models\\Page',4,NULL,NULL),(5,1,'App\\Models\\Page',2,NULL,NULL),(6,4,'App\\Models\\Page',7,NULL,NULL),(7,4,'App\\Models\\Page',8,NULL,NULL);
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_path_unique` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (2,'Index','/',NULL,'Main Page','Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you.','laravel, builder','pages/logos.png','2024-09-17 16:31:53','2024-10-05 08:11:51',1,1),(4,'Career','/career',NULL,NULL,NULL,NULL,NULL,'2024-09-17 17:08:48','2024-10-03 17:38:00',1,1),(6,'Blog','/blog',NULL,NULL,NULL,NULL,NULL,'2024-10-05 07:12:50','2024-10-05 07:28:56',1,1),(7,'PHP news','/blog/php-news',NULL,'PHP news','Whether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you.','test','pages/Softwarium.webp','2024-10-05 07:29:15','2024-10-05 08:15:31',1,1),(8,'About our workflow','/blog/about-our-workflow',NULL,'About our workflow','We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.','words','pages/750px-Flag_of_Edward_England.svg_.png','2024-10-05 07:29:53','2024-10-05 08:17:26',1,1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Home','2024-10-01 17:48:37','2024-10-03 17:48:59',1),(2,'Career','2024-10-03 16:48:24','2024-10-03 17:56:11',1),(3,'Other','2024-10-03 17:05:17','2024-10-03 17:49:56',1),(4,'Blog','2024-10-05 07:02:44','2024-10-05 07:26:21',1);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Header','2024-10-08 16:53:34','2024-10-08 16:53:34'),(2,'Social','2024-10-08 17:17:45','2024-10-08 17:17:49');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Sport','2024-09-17 17:19:15','2024-09-17 17:19:15',0,1),(3,'Music','2024-09-17 17:40:00','2024-09-17 17:40:00',0,1),(4,'My Blog','2024-09-17 17:40:06','2024-10-08 16:28:14',0,1),(6,'Event','2024-10-05 08:48:36','2024-10-05 08:48:36',0,1),(7,'Test','2024-10-08 16:10:16','2024-10-08 16:10:16',0,1),(8,'Ukraine','2024-10-08 16:19:43','2024-10-08 16:19:43',0,1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json DEFAULT NULL,
  `template_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '1',
  `type` tinyint NOT NULL DEFAULT '1',
  `is_general` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templates_slug_unique` (`slug`),
  KEY `templates_template_id_foreign` (`template_id`),
  CONSTRAINT `templates_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (4,'Top','top','templates/top.png','[{\"name\": \"Title\", \"type\": \"input\"}, {\"name\": \"Description\", \"type\": \"textarea\"}, {\"name\": \"Button\", \"type\": \"button\"}, {\"name\": \"Image\", \"type\": \"image\"}]',NULL,'2024-09-19 16:51:24','2024-09-19 17:47:35',0,1,1,0),(6,'About Us','about-us','templates/about-us.png','[{\"name\": \"Title\", \"type\": \"input\"}, {\"name\": \"Description\", \"type\": \"textarea\"}, {\"name\": \"Button\", \"type\": \"button\"}, {\"name\": \"Image\", \"type\": \"image\"}]',NULL,'2024-09-19 17:51:09','2024-09-19 17:51:36',0,1,1,0),(7,'Power','power','templates/power.png','{\"128\": {\"name\": \"Description\", \"type\": \"textarea\"}, \"211\": {\"name\": \"Title\", \"type\": \"input\"}}',NULL,'2024-09-28 07:53:38','2024-10-01 16:20:38',0,1,1,0),(8,'Power','sub-power','cover','{\"473\": {\"name\": \"Title\", \"type\": \"input\"}, \"716\": {\"name\": \"Icon\", \"type\": \"image\"}, \"969\": {\"name\": \"Description\", \"type\": \"textarea\"}}',7,'2024-09-28 08:05:05','2024-10-01 16:20:38',0,1,1,0),(9,'Logos','logos','templates/logos.png','[]',NULL,'2024-10-01 17:11:02','2024-10-01 17:11:46',0,1,1,0),(10,'Logos','sub-logos','cover','{\"211\": {\"name\": \"Logo\", \"type\": \"image\"}}',9,'2024-10-01 17:11:08','2024-10-01 17:11:46',0,1,1,0),(11,'Simple','simple','templates/simple.png','{\"401\": {\"name\": \"Name\", \"type\": \"input\"}, \"447\": {\"name\": \"Link\", \"type\": \"input\"}}',NULL,'2024-10-03 16:16:25','2024-10-03 16:16:42',0,1,2,0),(12,'Dropdown','dropdown','templates/dropdown.png','{\"1\": {\"name\": \"Name\", \"type\": \"input\"}}',NULL,'2024-10-03 17:04:34','2024-10-03 17:04:57',0,1,2,0),(13,'Dropdown','sub-dropdown','cover','{\"751\": {\"name\": \"Link\", \"type\": \"input\"}, \"805\": {\"name\": \"Name\", \"type\": \"input\"}}',12,'2024-10-03 17:04:45','2024-10-03 17:04:57',0,1,1,0),(14,'Blog','blog','templates/blog.png','{\"118\": {\"name\": \"Title\", \"type\": \"input\"}, \"267\": {\"name\": \"Tag\", \"type\": \"tag\"}, \"922\": {\"name\": \"Description\", \"type\": \"textarea\"}}',NULL,'2024-10-05 07:07:51','2024-10-05 07:11:53',0,1,1,0),(15,'Header Logo','header-logo','templates/header-logo.png','{\"658\": {\"name\": \"Logo\", \"type\": \"image\"}}',NULL,'2024-10-08 17:03:07','2024-10-08 17:03:15',0,1,3,0),(16,'Social','social','templates/social.png','[]',NULL,'2024-10-08 17:17:15','2024-10-08 17:17:39',0,1,3,0),(17,'Social','sub-social','cover','{\"376\": {\"name\": \"Link\", \"type\": \"input\"}, \"976\": {\"name\": \"Icon\", \"type\": \"input\"}}',16,'2024-10-08 17:17:20','2024-10-08 17:17:39',0,1,1,0),(25,'Contact Us','contact-us','templates/contact-us.png','{\"1\": {\"name\": \"Phone\", \"type\": \"input\"}, \"2\": {\"name\": \"Title\", \"type\": \"input\"}, \"3\": {\"name\": \"Email\", \"type\": \"input\"}, \"4\": {\"name\": \"Address\", \"type\": \"input\"}, \"5\": {\"name\": \"Delivery Title\", \"type\": \"input\"}, \"6\": {\"name\": \"Delivery\", \"type\": \"input\"}, \"7\": {\"name\": \"Description\", \"type\": \"textarea\"}}',NULL,'2024-10-12 08:51:36','2024-10-15 16:46:37',0,1,1,1),(27,'FAQ','faq','templates/faq.png','{\"1\": {\"name\": \"Description\", \"type\": \"textarea\"}, \"2\": {\"name\": \"Button\", \"type\": \"button\"}, \"3\": {\"name\": \"Title\", \"type\": \"input\"}}',NULL,'2024-10-15 16:50:24','2024-10-15 16:51:00',0,1,1,1),(28,'FAQ','sub-faq','cover','{\"658\": {\"name\": \"Question\", \"type\": \"input\"}, \"790\": {\"name\": \"Answer\", \"type\": \"textarea\"}}',27,'2024-10-15 16:50:45','2024-10-15 16:51:00',0,1,1,0);
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

