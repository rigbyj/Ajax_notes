-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: post_it
-- ------------------------------------------------------
-- Server version	5.5.41-log

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
-- Current Database: `post_it`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `post_it` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `post_it`;

--
-- Table structure for table `post_its`
--

DROP TABLE IF EXISTS `post_its`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_its` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_its`
--

LOCK TABLES `post_its` WRITE;
/*!40000 ALTER TABLE `post_its` DISABLE KEYS */;
INSERT INTO `post_its` VALUES (1,'THis is message 1','2016-04-05 00:00:00','2016-04-05 00:00:00'),(2,'This is the second message','2016-04-05 22:50:05','2016-04-05 22:50:05'),(3,'NExt message','2016-04-05 22:50:05','2016-04-05 22:50:05'),(4,'123 test','2016-04-06 08:08:28','2016-04-06 08:08:28'),(5,'abcdefg\r\n','2016-04-06 08:10:44','2016-04-06 08:10:44'),(6,'post note','2016-04-06 08:12:06','2016-04-06 08:12:06'),(7,'one more note','2016-04-06 08:13:34','2016-04-06 08:13:34');
/*!40000 ALTER TABLE `post_its` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `ajax_notes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ajax_notes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ajax_notes`;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Django','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ac turpis nunc. Vestibulum pellentesque dui eu aliquam molestie. Praesent a gravida eros. Nam lectus diam, tincidunt non enim vehicula, luctus ultrices metus. Duis eu erat consequat, interdum tellus ut, bibendum tortor.','2016-04-06 00:00:00','2016-04-06 00:00:00'),(2,'Python',NULL,'2016-04-06 00:00:00','2016-04-06 00:00:00'),(3,'Javascript',NULL,'2016-04-06 21:54:42','2016-04-06 21:54:42'),(20,'adding another 2','asdfasd','2016-04-07 00:11:29','2016-04-07 00:11:29'),(21,'perfect!!!','bam!','2016-04-07 00:13:09','2016-04-07 00:13:09');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-07  0:33:21
