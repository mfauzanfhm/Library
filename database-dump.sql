-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: library_db
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Buku Sejarah','Ojan','Sejarah','Buku ini adalah buku sejarah Indonesia untuk Mahasiswa Jurusan Sejarah',1,'2020-04-07 10:03:30','2020-04-07 10:39:42',1,NULL),(2,'Buku Matematika','Fauzan','Education','Buku Matematika',41,'2020-04-07 10:39:08','2020-04-10 11:29:30',0,'9781786293831.jpg'),(3,'Buku Matematika 2','Fauzan','MIPA','Buku Matematika',1,'2020-04-07 10:40:29','2020-04-07 10:42:58',1,NULL),(4,'Buku Ilmu Pengetahuan Alam','Admin','Education','Buku Ilmu Pengetahuan Alam',5,'2020-04-10 08:17:15','2020-04-10 09:19:42',0,'ipa.jpeg'),(5,'Buku Ilmu Pengetahuan Sosial','Admin','Social','Buku Ilmu Pengetahuan Sosial',20,'2020-04-10 08:19:19','2020-04-10 08:19:19',0,'social.jpg'),(6,'Aplikasi Android dalam 5 menit','Hanif Irsyad','Programming','Aplikasi Android dalam 5 menit, Cara cepat membuat aplikasi Android tanpa coding',20,'2020-04-10 08:23:43','2020-04-10 08:24:29',0,'android.jpg'),(7,'2D Graphics Programming for Games','John Pile Jr','Programming','2D Graphics Programming for Games for PC, Mac, Iphone / IPad, Android, and XBOX360',10,'2020-04-10 08:27:41','2020-04-10 08:27:41',0,'game.jpg'),(8,'Social Media Strategy','Fabio Cipriani','Social','How to overcome the social networking paradox and make your competitors irrelevant',15,'2020-04-10 09:03:12','2020-04-10 09:03:12',0,'social_media_strategy.png'),(9,'The Dreaming Arts','Tom Maloney','Art','The Dreaming Arts',15,'2020-04-10 09:23:17','2020-04-10 09:23:17',0,'the_dreaming_art.jpg'),(10,'A Black Fox Running','Brian Carter','Art','A Black Fox Running',15,'2020-04-10 09:28:20','2020-04-10 09:28:20',0,'a_black_fox_running.jpg'),(11,'Cook Book','Michelin Star Recipes','Cooking','Collect more than 2000 recipes, 10 kinds of cuisines, and 500 cooking techniques.',14,'2020-04-10 10:05:34','2020-04-17 06:52:54',0,'cook_book.png'),(12,'Good Food CookBook','Amanda','Cooking','101 Real Food Recipes.',0,'2020-04-10 10:10:33','2020-04-17 04:18:43',0,'good_food_cookbook.jpg'),(13,'Thalgors Witch','Nancy Holland','Fantasy','Thalgors Witch',21,'2020-04-10 10:43:22','2020-04-17 07:34:55',0,'thalgors_witch.jpg');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_04_07_160756_create_books_table',2),(4,'2020_04_07_181732_create_transactions_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `return_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `is_complete` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'Pinjam',2,'2020-04-10 11:07:10','2020-04-10 18:07:10',1,1,'2020-04-10 11:07:10','2020-04-10 11:07:10',NULL,NULL,NULL),(2,'Pinjam',2,'2020-04-10 11:09:25','2020-04-10 18:09:25',41,1,'2020-04-10 11:09:25','2020-04-10 11:09:25',NULL,NULL,NULL),(3,'Pinjam',2,'2020-04-10 11:12:29','2020-04-10 18:12:29',1,1,'2020-04-10 11:12:29','2020-04-10 11:12:29',NULL,NULL,NULL),(4,'Peminjaman Buku Buku Matematika',2,'2020-04-10 11:29:24','2020-04-10 18:29:24',1,1,'2020-04-10 11:29:24','2020-04-10 11:29:24',NULL,NULL,NULL),(5,'Pengembalian Buku Buku Matematika',2,'2020-04-10 18:29:30','2020-04-10 11:29:30',1,0,'2020-04-10 11:29:30','2020-04-10 11:29:30',NULL,NULL,NULL),(6,'Peminjaman Thalgors Witch',13,'2020-04-14 12:35:38','2020-04-14 19:35:38',1,1,'2020-04-14 12:35:38','2020-04-14 12:35:38',0,NULL,NULL),(7,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:23','2020-04-17 11:18:23',1,1,'2020-04-17 04:18:23','2020-04-17 04:18:23',0,NULL,NULL),(8,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:39','2020-04-17 11:18:39',1,1,'2020-04-17 04:18:39','2020-04-17 04:18:39',0,NULL,NULL),(9,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:40','2020-04-17 11:18:40',1,1,'2020-04-17 04:18:40','2020-04-17 04:18:40',0,NULL,NULL),(10,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:40','2020-04-17 11:18:40',1,1,'2020-04-17 04:18:40','2020-04-17 04:18:40',0,NULL,NULL),(11,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:41','2020-04-17 11:18:41',1,1,'2020-04-17 04:18:41','2020-04-17 04:18:41',0,NULL,NULL),(12,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:41','2020-04-17 11:18:41',1,1,'2020-04-17 04:18:41','2020-04-17 04:18:41',0,NULL,NULL),(13,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:41','2020-04-17 11:18:41',1,1,'2020-04-17 04:18:41','2020-04-17 04:18:41',0,NULL,NULL),(14,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:41','2020-04-17 11:18:41',1,1,'2020-04-17 04:18:41','2020-04-17 04:18:41',0,NULL,NULL),(15,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:42','2020-04-17 11:18:42',1,1,'2020-04-17 04:18:42','2020-04-17 04:18:42',0,NULL,NULL),(16,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:42','2020-04-17 11:18:42',1,1,'2020-04-17 04:18:42','2020-04-17 04:18:42',0,NULL,NULL),(17,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:42','2020-04-17 11:18:42',1,1,'2020-04-17 04:18:42','2020-04-17 04:18:42',0,NULL,NULL),(18,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:43','2020-04-17 11:18:43',1,1,'2020-04-17 04:18:43','2020-04-17 04:18:43',0,NULL,NULL),(19,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:43','2020-04-17 11:18:43',1,1,'2020-04-17 04:18:43','2020-04-17 04:18:43',0,NULL,NULL),(20,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:43','2020-04-17 11:18:43',1,1,'2020-04-17 04:18:43','2020-04-17 04:18:43',0,NULL,NULL),(21,'Peminjaman Good Food CookBook',12,'2020-04-17 04:18:43','2020-04-17 11:18:43',1,1,'2020-04-17 04:18:43','2020-04-17 04:18:43',0,NULL,NULL),(22,'Pengembalian Thalgors Witch',13,'2020-04-17 05:56:14','2020-04-17 07:34:55',1,0,'2020-04-17 05:56:14','2020-04-17 07:34:55',0,NULL,9),(23,'Peminjaman Cook Book',11,'2020-04-17 06:52:54','2020-04-17 13:52:54',1,1,'2020-04-17 06:52:54','2020-04-17 06:52:54',0,NULL,9);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Muhammad Fauzan Fahmuddin','082218095004','mfahmuddin4@gmail.com','12345','2020-04-07 07:30:17','2020-04-07 07:30:17'),(2,'Muhammad Fauzan Fahmuddin','082218095004','mfahmuddin4@gmail.com','12345','2020-04-07 08:06:51','2020-04-07 08:06:51'),(3,'Muhammad Fauzan Fahmuddin','082218095004','mfauzanf@gmail.com','12345','2020-04-07 08:10:08','2020-04-07 08:10:08'),(4,'Ojan','0822180931029','ojan','123123123','2020-04-07 08:34:12','2020-04-07 08:34:12'),(5,'Ojan','0822180931029','ojanojan@mail.id','$2y$10$GwYHYX5SflYp4zSarAKd6.XBD6jhZg1NAecdEYSERDuHzsdePohmK','2020-04-07 08:42:11','2020-04-07 09:33:55'),(6,'Ojan','0822180931029','ojanojan@mail.id','$2y$10$GwYHYX5SflYp4zSarAKd6.XBD6jhZg1NAecdEYSERDuHzsdePohmK','2020-04-07 09:30:19','2020-04-07 09:30:19'),(7,'Ojan','0822180931029','ojanojan@mail.id','$2y$10$GwYHYX5SflYp4zSarAKd6.XBD6jhZg1NAecdEYSERDuHzsdePohmK','2020-04-07 09:30:40','2020-04-07 09:30:40'),(8,'Ojan','0822180931029','ojanojan@mail.id','$2y$10$GwYHYX5SflYp4zSarAKd6.XBD6jhZg1NAecdEYSERDuHzsdePohmK','2020-04-07 09:31:51','2020-04-07 09:31:51'),(9,'Admin','123123123','admin','$2y$10$QIU.Ea5GPCf3mv9o3ucMreumQO09xaeNz.SP.HrWvJkSsLcOFZY3O','2020-04-11 05:23:19','2020-04-11 05:23:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 21:04:27
