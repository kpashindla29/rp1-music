-- MySQL dump 10.13  Distrib 5.6.15, for osx10.7 (x86_64)
--
-- Host: 127.0.0.1    Database: rp1
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `id` bigint(20) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5xys8d1ijkght6e1vjfxs2965` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'26761d39-9635-47fd-a6ff-566ede2cb14d','Michael Jackson','Jackson, Michael');
INSERT INTO `artist` VALUES (2,'2d8a8fae-7fbf-311d-92f2-e4ae4fc5c52d','Rush','Rush');
INSERT INTO `artist` VALUES (3,'26f7bb0d-133d-4811-a8bf-0ff930c5a11a','Depeche Mode','Depeche Mode');
INSERT INTO `artist` VALUES (4,'28b9dce4-05f9-4fe0-8eb1-55c824310f1b','a-ha','a-ha');
INSERT INTO `artist` VALUES (5,'ff565cd7-acf8-4dc0-9603-72d1b7ae284b','Van Halen','Van Halen');
INSERT INTO `artist` VALUES (6,'db3fbde4-9f06-4af9-854b-96d6c1b41df0','Hall & Oats','Hall & Oats');
INSERT INTO `artist` VALUES (7,'4ac01278-4769-422f-8a0c-57c9c7c1159f','Joan Jett & The Blackhearts','Joan Jett & The Blackhearts');
INSERT INTO `artist` VALUES (8,'e135df1f-d8b3-4998-8cb4-0834585569df','Tears for Fears','Tears for Fears');
INSERT INTO `artist` VALUES (9,'d4532f26-1b63-44ea-9d12-7b358e62cd38','New Order', 'New Order');
INSERT INTO `artist` VALUES (10,'44ab667e-6437-4441-8926-94d1586ebb74','Twisted Sister', 'Twisted Sister');
INSERT INTO `artist` VALUES (11,'2e5f46d4-b16f-3205-9a55-da193324a4e6','Bee Gees', 'Bee Gees');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` bigint(20) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `format` varchar(255) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `artist_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gyej1afhf1mfhxsba6iooiv5n` (`guid`),
  UNIQUE KEY `UK_mhh8p9enh8rlb076huruof3fo` (`barcode`),
  KEY `FK88h8rgsn8vfu1hoc9u05xoce4` (`artist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
INSERT INTO `releases` VALUES (1,'074643811217','CD','14b732bb-51aa-4b54-b31c-2e5755b51b21','Thriller',1);
INSERT INTO `releases` VALUES (2,'00020000','CD','2d8a8fae-7fbf-311d-92f2-e4ae4fc5c52d','Moving Pictures',2);
INSERT INTO `releases` VALUES (3,'00030000','CD','26f7bb0d-133d-4811-a8bf-0ff930c5a11a','Violator',3);
INSERT INTO `releases` VALUES (4,'00040000','CD','28b9dce4-05f9-4fe0-8eb1-55c824310f1b','Hunting High and Low',4);
INSERT INTO `releases` VALUES (5,'00050000','CD','ff565cd7-acf8-4dc0-9603-72d1b7ae284b','1984',5);
INSERT INTO `releases` VALUES (6,'00060000','CD','db3fbde4-9f06-4af9-854b-96d6c1b41df0','Voices',6);
INSERT INTO `releases` VALUES (7,'00070000','CD','4ac01278-4769-422f-8a0c-57c9c7c1159f','Yup Your Alley',7);
INSERT INTO `releases` VALUES (8,'00080000','CD','e135df1f-d8b3-4998-8cb4-0834585569df','Songs From the Big Chair',8);
INSERT INTO `releases` VALUES (9,'00090000','CD','d4532f26-1b63-44ea-9d12-7b358e62cd38','Power, Corruption & Lies',9);
INSERT INTO `releases` VALUES (10,'00100000','CD','44ab667e-6437-4441-8926-94d1586ebb74','Stay Hungry',10);
INSERT INTO `releases` VALUES (11,'00110000','CD','2e5f46d4-b16f-3205-9a55-da193324a4e6','Children of the World',11);
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `id` bigint(20) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `length` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `release_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nd21oiv5oy2nd1tl03p2roh1o` (`guid`),
  KEY `FKersje55nwt1firh6u3g55pg6r` (`release_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'63a6140a-f99f-4f67-a0b2-431c1ca4c11b',3,'Thriller',1);
INSERT INTO `song` VALUES (2,'63a6140a-f99f-4f67-a0b2-431c1ca4c117',3,'Tom Sawyer',2);
INSERT INTO `song` VALUES (3,'26f7bb0d-133d-4811-a8bf-0ff930c5a11a',3,'World in My Eyes',3);
INSERT INTO `song` VALUES (4,'26f7bb0d-133d-4811-a8bf-0ff930c5a11b',3,'Take On Me',4);
INSERT INTO `song` VALUES (5,'ff565cd7-acf8-4dc0-9603-72d1b7ae284b',3,'Jump',5);
INSERT INTO `song` VALUES (6,'db3fbde4-9f06-4af9-854b-96d6c1b41df0',3,'You Make My Dreams',6);
INSERT INTO `song` VALUES (7,'4ac01278-4769-422f-8a0c-57c9c7c1159f',3,'I Hate Myself for Loving Your',7);
INSERT INTO `song` VALUES (8,'e135df1f-d8b3-4998-8cb4-0834585569df',3,'Everybody Wants to Rule the World',8);
INSERT INTO `song` VALUES (9,'d4532f26-1b63-44ea-9d12-7b358e62cd38',3,'Blue Monday',9);
INSERT INTO `song` VALUES (10,'44ab667e-6437-4441-8926-94d1586ebb74',3,'We''re Not Gonna Take It' ,10);
INSERT INTO `song` VALUES (11,'42e5f46d4-b16f-3205-9a55-da193324a4e6',3,'You Should Be Dancing' ,11);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` char(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','','$2a$10$a6/4gPm62xCZNWj/B1GCi.QOjxTMVHvqXhfBvngqod/XV1qdVXxSC'),(2,'user1','','$2a$10$a6/4gPm62xCZNWj/B1GCi.QOjxTMVHvqXhfBvngqod/XV1qdVXxSC'),(3,'user2','','$2a$10$a6/4gPm62xCZNWj/B1GCi.QOjxTMVHvqXhfBvngqod/XV1qdVXxSC');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Admin',1),(2,'User',2),(3,'User',3);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_song`
--

DROP TABLE IF EXISTS `user_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_song` (
  `user_id` bigint(20) NOT NULL,
  `song_id` bigint(20) NOT NULL,
  KEY `FK7n6l7aiyapjhlsihmcgias0i9` (`song_id`),
  KEY `FKt8kfx35ujce50hlgew3bjcsq9` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_song`
--

LOCK TABLES `user_song` WRITE;
/*!40000 ALTER TABLE `user_song` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-21  6:51:34
