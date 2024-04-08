-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: food_listing_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add products',7,'add_products'),(26,'Can change products',7,'change_products'),(27,'Can delete products',7,'delete_products'),(28,'Can view products',7,'view_products'),(29,'Can add product toppings',8,'add_producttoppings'),(30,'Can change product toppings',8,'change_producttoppings'),(31,'Can delete product toppings',8,'delete_producttoppings'),(32,'Can view product toppings',8,'view_producttoppings'),(33,'Can add ratings',9,'add_ratings'),(34,'Can change ratings',9,'change_ratings'),(35,'Can delete ratings',9,'delete_ratings'),(36,'Can view ratings',9,'view_ratings'),(37,'Can add toppings',10,'add_toppings'),(38,'Can change toppings',10,'change_toppings'),(39,'Can delete toppings',10,'delete_toppings'),(40,'Can view toppings',10,'view_toppings'),(41,'Can add toppings groups',11,'add_toppingsgroups'),(42,'Can change toppings groups',11,'change_toppingsgroups'),(43,'Can delete toppings groups',11,'delete_toppingsgroups'),(44,'Can view toppings groups',11,'view_toppingsgroups'),(45,'Can add Token',12,'add_token'),(46,'Can change Token',12,'change_token'),(47,'Can delete Token',12,'delete_token'),(48,'Can view Token',12,'view_token'),(49,'Can add Token',13,'add_tokenproxy'),(50,'Can change Token',13,'change_tokenproxy'),(51,'Can delete Token',13,'delete_tokenproxy'),(52,'Can view Token',13,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$uhqKe9xiaTBbMUCpKEe4Ct$UgrNMPgk6kKL/tyjP9jZ+UudT8wlAC3SWvjBNjJw1qk=','2024-04-06 12:26:44.777480',1,'trupti@123','','','',1,1,'2024-04-05 11:26:40.916571'),(7,'pbkdf2_sha256$720000$DglKbM4VWrNfLS6V4ALLU1$vVqWc5i5mEhI0OyE1cVCxm6IGiVcF/WeNKtenUw+GKY=',NULL,0,'Kartiki@123','','','kartiki@gmail.com',0,1,'2024-04-07 15:39:49.839245'),(8,'pbkdf2_sha256$720000$zfBlUJbIaRrorS39ZvKijp$5T1D+SJOHRFNk47h7l5mkXFRyPDpJlnL+zx0DNrixgY=',NULL,0,'komal@123','','','komal@gmail.com',0,1,'2024-04-08 03:26:11.412042');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('3a4865193075da91c2e44e2c793ec5b2b8219a75','2024-04-07 15:41:02.072402',7),('f69071ca0895ac1b9fba6b8a244c6f0cca62f023','2024-04-08 03:26:38.912126',8);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-07 18:15:08.571984','6','dhanaraj@123',3,'',4,1),(2,'2024-04-07 18:15:09.548986','3','dhiraj123',3,'',4,1),(3,'2024-04-07 18:15:10.087986','5','naraj@123',3,'',4,1),(4,'2024-04-07 18:15:10.156983','4','raj123',3,'',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','products'),(8,'app','producttoppings'),(9,'app','ratings'),(10,'app','toppings'),(11,'app','toppingsgroups'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'authtoken','token'),(13,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-05 10:11:50.510772'),(2,'auth','0001_initial','2024-04-05 10:11:58.207630'),(3,'admin','0001_initial','2024-04-05 10:11:59.886920'),(4,'admin','0002_logentry_remove_auto_add','2024-04-05 10:11:59.946940'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-05 10:12:00.026920'),(6,'app','0001_initial','2024-04-05 10:12:00.067925'),(7,'contenttypes','0002_remove_content_type_name','2024-04-05 10:12:00.701388'),(8,'auth','0002_alter_permission_name_max_length','2024-04-05 10:12:01.105955'),(9,'auth','0003_alter_user_email_max_length','2024-04-05 10:12:01.341322'),(10,'auth','0004_alter_user_username_opts','2024-04-05 10:12:01.404810'),(11,'auth','0005_alter_user_last_login_null','2024-04-05 10:12:01.768121'),(12,'auth','0006_require_contenttypes_0002','2024-04-05 10:12:01.801123'),(13,'auth','0007_alter_validators_add_error_messages','2024-04-05 10:12:01.845128'),(14,'auth','0008_alter_user_username_max_length','2024-04-05 10:12:02.260683'),(15,'auth','0009_alter_user_last_name_max_length','2024-04-05 10:12:02.587919'),(16,'auth','0010_alter_group_name_max_length','2024-04-05 10:12:02.712992'),(17,'auth','0011_update_proxy_permissions','2024-04-05 10:12:02.749961'),(18,'auth','0012_alter_user_first_name_max_length','2024-04-05 10:12:03.045073'),(19,'sessions','0001_initial','2024-04-05 10:12:03.414063'),(20,'app','0002_alter_products_options_alter_producttoppings_options_and_more','2024-04-06 11:01:06.984312'),(21,'app','0003_alter_producttoppings_options','2024-04-06 14:41:13.086926'),(22,'app','0004_alter_producttoppings_unique_together','2024-04-06 14:52:28.153376'),(23,'app','0002_alter_producttoppings_id','2024-04-06 17:45:40.494770'),(24,'app','0002_alter_producttoppings_options','2024-04-06 18:06:39.309341'),(25,'authtoken','0001_initial','2024-04-07 14:39:57.614795'),(26,'authtoken','0002_auto_20160226_1747','2024-04-07 14:39:57.861972'),(27,'authtoken','0003_tokenproxy','2024-04-07 14:39:57.897937'),(28,'authtoken','0004_alter_tokenproxy_options','2024-04-07 14:39:57.977213');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('k1kbv3r2ycwk31df75oqmt6zt1riwbv7','.eJxVjDsOwjAQBe_iGlnr-BtKes5grb1rHECOFCcV4u4QKQW0b2beS0Tc1hq3zkucSJyFEqffLWF-cNsB3bHdZpnnti5TkrsiD9rldSZ-Xg7376Bir9_agS8ZlPUjBhMcBUBQow0Dsx_AsybjFbmsDevCiBwCOnBUgKxKpMX7A8PeN6Q:1rt589:GYULaZw9bNOZF1d0hxFVbdVhNRygf9smByhKG71CkOM','2024-04-20 12:26:45.204482');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_toppings`
--

DROP TABLE IF EXISTS `product_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_toppings` (
  `product_id` int NOT NULL,
  `topping_id` int NOT NULL,
  UNIQUE KEY `product_toppings_product_id_topping_id_0fc21215_uniq` (`product_id`,`topping_id`),
  KEY `product_id` (`product_id`),
  KEY `topping_id` (`topping_id`),
  CONSTRAINT `product_toppings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `product_toppings_ibfk_2` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`topping_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_toppings`
--

LOCK TABLES `product_toppings` WRITE;
/*!40000 ALTER TABLE `product_toppings` DISABLE KEYS */;
INSERT INTO `product_toppings` VALUES (1,1),(1,2),(1,3),(1,9),(2,1),(2,2),(2,3),(2,9),(3,1),(3,2),(3,3),(3,4),(3,5),(3,9),(4,8),(4,9),(4,10),(4,13),(5,8),(5,9),(5,10),(6,1),(6,2),(6,3),(6,4),(6,5),(6,9),(7,1),(7,3),(7,9),(8,3),(8,9),(8,13),(8,14),(8,15),(9,2),(9,3),(9,4),(10,1),(10,2),(10,8),(11,1),(11,3),(11,8),(12,2),(12,9),(12,10),(13,2),(13,9),(14,8),(15,2),(15,4),(15,5),(15,8),(15,9),(16,1),(16,2),(16,8),(17,1),(17,2),(17,8),(18,8),(18,13),(19,1),(19,2),(19,8),(19,9),(19,10),(20,3),(20,9),(21,2),(21,3),(21,9),(21,15),(22,1),(22,2),(22,3),(22,4),(22,8),(23,1),(23,3),(23,9),(23,10),(24,1),(24,2),(24,3),(24,4),(24,8),(24,9),(24,13),(25,1),(25,2),(25,3),(25,4),(25,5),(25,8),(25,9),(25,10);
/*!40000 ALTER TABLE `product_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_category` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `veg_non_veg` enum('Veg','Non-Veg') COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pepperoni Pizza','Classic pepperoni pizza with extra cheese','Pizza','Non-Veg'),(2,'Paneer Tikka Pizza','Paneer tikka pizza with capsicum and onions','Pizza','Veg'),(3,'Veggie Burger','Delicious vegetable burger with lettuce and sauces','Burger','Veg'),(4,'Chicken Pasta','Creamy chicken pasta with mushrooms and garlic','Pasta','Non-Veg'),(5,'Veg Fried Rice','Vegetable fried rice with a touch of soy sauce','Rice','Veg'),(6,'Chicken Biryani','Flavorful chicken biryani with aromatic spices','Rice','Non-Veg'),(7,'Cheese Sandwich','Grilled cheese sandwich with tomato and basil','Sandwich','Veg'),(8,'Fish Curry','Spicy fish curry made with coconut milk','Curry','Non-Veg'),(9,'Veggie Wrap','Healthy veggie wrap with hummus and veggies','Wrap','Veg'),(10,'Chocolate Brownie','Rich and gooey chocolate brownie','Dessert','Veg'),(11,'Butter Chicken','Butter chicken with creamy tomato gravy','Curry','Non-Veg'),(12,'Mushroom Soup','Creamy mushroom soup with garlic bread','Soup','Veg'),(13,'Chicken Wings','Spicy and crispy chicken wings','Appetizer','Non-Veg'),(14,'Raspberry Smoothie','Refreshing raspberry smoothie with yogurt','Beverage','Veg'),(15,'Vegetable Spring Roll','Crispy vegetable spring roll','Appetizer','Veg'),(16,'Paneer Butter Masala','Paneer butter masala with buttery tomato gravy','Curry','Veg'),(17,'Fruit Salad','Colorful fruit salad with honey dressing','Salad','Veg'),(18,'Caramel Latte','Smooth caramel latte with a hint of espresso','Beverage','Veg'),(19,'Chilli Chicken','Spicy chilli chicken with bell peppers','Appetizer','Non-Veg'),(20,'Mango Lassi','Refreshing mango lassi with yogurt and mango pulp','Beverage','Veg'),(21,'Cheese Garlic Bread','Garlic bread topped with melted cheese','Appetizer','Veg'),(22,'Pineapple Fried Rice','Pineapple fried rice with cashews','Rice','Veg'),(23,'Dal Makhani','Creamy dal makhani with black lentils','Curry','Veg'),(24,'Fish Tacos','Fish tacos with coleslaw and chipotle mayo','Tacos','Non-Veg'),(25,'Vegetable Biryani','Flavorful vegetable biryani with saffron','Rice','Veg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `rating_value` decimal(3,1) NOT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,6,4.4),(2,6,4.2),(3,6,4.8),(4,8,4.7),(5,8,4.5),(6,9,4.0),(7,10,4.5),(8,10,4.3),(9,10,4.1),(10,11,4.8),(11,11,4.6),(12,12,4.3),(13,13,4.6),(14,13,4.4),(15,14,4.2),(16,15,4.5),(17,16,4.7),(18,16,4.3),(19,17,4.4),(20,18,4.2),(21,19,4.8),(22,20,4.1),(23,21,4.5),(24,22,4.6),(25,23,4.3),(26,24,4.7),(27,25,4.4),(28,25,4.2),(29,25,4.8);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings` (
  `topping_id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `topping_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`topping_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `toppings_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `toppings_groups` (`group_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
INSERT INTO `toppings` VALUES (1,1,'Mozzarella'),(2,1,'Cheddar'),(3,1,'Parmesan'),(4,2,'Tomatoes'),(5,2,'Onions'),(6,2,'Bell Peppers'),(7,2,'Mushrooms'),(8,2,'Olives'),(9,3,'Mayonnaise'),(10,3,'BBQ Sauce'),(11,3,'Ketchup'),(12,4,'Chilli Flakes'),(13,4,'Garlic Powder'),(14,4,'Oregano'),(15,4,'Cumin');
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings_groups`
--

DROP TABLE IF EXISTS `toppings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings_groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings_groups`
--

LOCK TABLES `toppings_groups` WRITE;
/*!40000 ALTER TABLE `toppings_groups` DISABLE KEYS */;
INSERT INTO `toppings_groups` VALUES (1,'Cheese'),(2,'Vegetables'),(3,'Sauces'),(4,'Spices');
/*!40000 ALTER TABLE `toppings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'food_listing_db'
--

--
-- Dumping routines for database 'food_listing_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomizationData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomizationData`(IN product_id INT)
BEGIN
    SELECT tg.group_name AS group_name, t.topping_name AS topping_name
    FROM product_toppings pt
    INNER JOIN toppings t ON pt.topping_id = t.topping_id
    INNER JOIN toppings_groups tg ON t.group_id = tg.group_id
    WHERE pt.product_id = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-08 11:16:03
