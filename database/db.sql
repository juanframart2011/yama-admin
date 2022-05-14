-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: yamma-admin
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `description` text,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `profile_statu_idx` (`statu_id`),
  CONSTRAINT `profile_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,1,'marketing director',NULL,NULL,NULL),(2,1,'marketing manager',NULL,NULL,NULL),(3,1,'junior design',NULL,NULL,NULL),(4,1,'ventas',NULL,NULL,NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence`
--

DROP TABLE IF EXISTS `residence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `residenceType_id` int(11) NOT NULL DEFAULT '1',
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `description` text,
  `cover` text,
  `cover_floor` text,
  `url` varchar(150) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `url_UNIQUE` (`url`),
  KEY `residence_statu_idx` (`statu_id`),
  KEY `residence_residenceType_idx` (`residenceType_id`),
  CONSTRAINT `residence_residenceType` FOREIGN KEY (`residenceType_id`) REFERENCES `residence_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `residence_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence`
--

LOCK TABLES `residence` WRITE;
/*!40000 ALTER TABLE `residence` DISABLE KEYS */;
INSERT INTO `residence` VALUES (1,1,1,'yama insurgentes reforma',NULL,'img/residence/corporativo/insurgentes-reforma.jpg','img/residence/corporativo/insurgentes-reforma/tower.png','insurgentes-reforma',NULL,NULL),(2,1,1,'yama jardines del pedregal',NULL,'img/residence/corporativo/jardines-del-pedregal.jpg','img/residence/corporativo/jardines-del-pedregal/tower.png','jardines-del-pedregal',NULL,NULL),(3,1,1,'yama cuauhtemoc 1233',NULL,'img/residence/corporativo/cuauhtemoc-1233.jpg','img/residence/corporativo/cuauhtemoc-1233/tower.JPG','cuauhtemoc-1233',NULL,NULL),(4,1,1,'yama alpes',NULL,'img/residence/corporativo/alpes.jpg','img/residence/corporativo/alpes/tower.png','alpes',NULL,NULL),(5,1,1,'yama insurgentes 866',NULL,'img/residence/corporativo/insurgentes-866.jpg','img/residence/corporativo/insurgentes-866/tower.png','insurgentes-866',NULL,NULL),(6,1,1,'yama bosques santa fe corporativo',NULL,'img/residence/corporativo/bsf-corp.jpg','img/residence/corporativo/bosques-santa-fe-corporativo/tower.png','bosques-santa-fe-corporativo',NULL,NULL),(9,2,1,'punta museo',NULL,'img/residence/residencial/punta-museo.jpg','img/residence/residencial/punta-museo/tower.png','punta-museo',NULL,NULL),(10,2,1,'bosques santa fe residencial',NULL,'img/residence/residencial/bsf-res.jpg','img/residence/residencial/bosques-santa-fe-residencial/tower.png','bosques-santa-fe-residencial',NULL,NULL);
/*!40000 ALTER TABLE `residence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_floor`
--

DROP TABLE IF EXISTS `residence_floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence_floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `residence_id` int(11) NOT NULL,
  `residenceFloorStatu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `description` text,
  `media` text,
  `number` varchar(45) DEFAULT NULL,
  `disponible` int(11) DEFAULT '0',
  `apartado` int(11) DEFAULT '0',
  `vendido` int(11) DEFAULT '0',
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `residenceFloor_residence_idx` (`residence_id`),
  KEY `residenceFloor_statu_idx` (`statu_id`),
  KEY `residenceFloor_residenceFloorType_idx` (`residenceFloorStatu_id`),
  CONSTRAINT `residenceFloor_residence` FOREIGN KEY (`residence_id`) REFERENCES `residence` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `residenceFloor_residenceFloorStatu` FOREIGN KEY (`residenceFloorStatu_id`) REFERENCES `residence_floor_statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `residenceFloor_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_floor`
--

LOCK TABLES `residence_floor` WRITE;
/*!40000 ALTER TABLE `residence_floor` DISABLE KEYS */;
INSERT INTO `residence_floor` VALUES (1,1,9,1,'vip',1,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-vip.jpg',NULL,0,0,0,NULL,'2022-05-13 19:17:43'),(2,1,9,1,'pent house',2,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-pent-house.jpg',NULL,0,0,0,NULL,'2022-05-13 22:32:08'),(3,1,9,1,'piso 3',3,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-piso-3.jpg',NULL,0,0,0,NULL,'2022-05-13 22:33:38'),(4,1,9,1,'piso 2',4,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-piso-2.jpg',NULL,0,0,0,NULL,'2022-05-13 22:33:52'),(5,1,9,1,'piso 1',5,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-piso-1.jpg',NULL,0,0,0,NULL,'2022-05-13 22:34:05'),(6,1,9,1,'GARDEN HOUSE',6,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-garden-house.jpg',NULL,0,0,0,NULL,'2022-05-13 22:34:37'),(7,1,9,1,'MUSEO DEL AUTOMOVIL',7,NULL,'img/residence/corporativo/punta-museo/tower.png',NULL,0,0,0,NULL,NULL),(8,1,9,1,'CENTRO COMERCIAL PA',8,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-centro-comercial-pa.jpg',NULL,0,0,0,NULL,'2022-05-13 22:35:52'),(9,1,9,1,'CENTRO COMERCIAL PB',9,NULL,'/img/residence/residencial/punta-museo/punta-museo-floor-centro-comercial-pb.jpg',NULL,0,0,0,NULL,'2022-05-13 22:36:23'),(10,1,9,1,'ESTACIONAMIENTO 1',10,NULL,'img/residence/corporativo/punta-museo/tower.png',NULL,0,0,0,NULL,NULL),(11,1,9,1,'ESTACIONAMIENTO 2',11,NULL,'img/residence/corporativo/punta-museo/tower.png',NULL,0,0,0,NULL,NULL),(12,1,9,1,'ESTACIONAMIENTO 3',12,NULL,'img/residence/corporativo/punta-museo/tower.png',NULL,0,0,0,NULL,NULL),(13,1,9,1,'ESTACIONAMIENTO 4',13,NULL,'img/residence/corporativo/punta-museo/tower.png',NULL,0,0,0,NULL,NULL),(14,1,9,1,'ESTACIONAMIENTO 5',14,NULL,'img/residence/corporativo/punta-museo/tower.png',NULL,0,0,0,NULL,NULL),(29,1,10,1,'VIP',1,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-vip.jpg',NULL,0,1,4,NULL,'2022-05-13 20:50:17'),(30,1,10,1,'PENT OFFICE',2,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-pent-office.jpg',NULL,0,0,3,NULL,'2022-05-13 20:47:28'),(31,1,10,1,'PISO 13',3,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-13.jpg',NULL,0,0,4,NULL,'2022-05-13 20:48:54'),(32,1,10,1,'PISO 12',4,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-12.jpg',NULL,0,2,1,NULL,'2022-05-13 20:49:12'),(33,1,10,1,'PISO 11',5,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-11.jpg',NULL,0,2,0,NULL,'2022-05-13 20:49:47'),(34,1,10,1,'PISO 10',6,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-10.jpg',NULL,0,1,2,NULL,'2022-05-13 20:50:03'),(35,1,10,1,'PISO 9',7,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-9.jpg',NULL,0,0,0,NULL,'2022-05-13 20:50:34'),(36,1,10,1,'PISO 8',8,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-8.png',NULL,0,0,0,NULL,'2022-05-13 20:50:51'),(37,1,10,1,'PISO 7',9,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-7.jpg',NULL,0,0,0,NULL,'2022-05-13 20:51:11'),(38,1,10,1,'PISO 6',10,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 20:51:45'),(39,1,10,1,'PISO 5',11,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 20:52:03'),(40,1,10,1,'PISO 4',12,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-4.jpg',NULL,0,0,0,NULL,'2022-05-13 20:52:38'),(41,1,10,1,'PISO 3',13,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-3.jpg',NULL,0,0,0,NULL,'2022-05-13 20:52:48'),(42,1,10,1,'PISO 2',14,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-piso-2.jpg',NULL,0,0,0,NULL,'2022-05-13 20:52:58'),(43,1,10,1,'CENTRO COMERCIAL',15,NULL,'/img/residence/residencial/bosques-santa-fe-residencial/bosques-santa-fe-residencial-floor-centro-comercial.jpg',NULL,0,0,0,NULL,'2022-05-13 20:53:11'),(44,1,6,1,'TERRACE',1,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-terrace.jpg',NULL,0,0,0,NULL,'2022-05-13 22:42:46'),(45,1,6,1,'VIP',2,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-vip.jpg',NULL,0,0,0,NULL,'2022-05-13 22:42:57'),(46,1,6,1,'PENT OFFICE',3,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-pent-office.jpg',NULL,0,0,0,NULL,'2022-05-13 22:48:03'),(47,1,6,1,'PISO 13',4,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-13.jpg',NULL,0,0,0,NULL,'2022-05-13 22:48:20'),(48,1,6,1,'PISO 12',5,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-12.jpg',NULL,0,0,0,NULL,'2022-05-13 22:48:41'),(49,1,6,1,'PISO 11',6,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-11.jpg',NULL,0,0,0,NULL,'2022-05-13 22:48:56'),(50,1,6,1,'PISO 10',7,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-10.jpg',NULL,0,0,0,NULL,'2022-05-13 22:49:13'),(51,1,6,1,'PISO 9',8,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-9.jpg',NULL,0,0,0,NULL,'2022-05-13 22:50:00'),(52,1,6,1,'PISO 8',9,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-8.jpg',NULL,0,0,0,NULL,'2022-05-13 22:50:44'),(53,1,6,1,'PISO 7',10,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-7.jpg',NULL,0,0,0,NULL,'2022-05-13 22:50:59'),(54,1,6,1,'PISO 6',11,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 22:51:10'),(55,1,6,1,'PISO 5',12,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 22:51:36'),(56,1,6,1,'PISO 4',13,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-4.jpg',NULL,0,0,0,NULL,'2022-05-13 22:52:09'),(57,1,6,1,'PISO 3',14,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-3.jpg',NULL,0,0,0,NULL,'2022-05-13 22:52:42'),(58,1,6,1,'PISO 2',15,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-piso-2.jpg',NULL,0,0,0,NULL,'2022-05-13 22:53:05'),(59,1,6,1,'CENTRO COMERCIAL',16,NULL,'/img/residence/corporativo/bosques-santa-fe-corporativo/bosques-santa-fe-corporativo-floor-centro-comercial.jpg',NULL,0,0,0,NULL,'2022-05-13 23:03:57'),(60,1,5,1,'VIP',1,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-vip.jpg',NULL,0,0,0,NULL,'2022-05-13 23:08:51'),(61,1,5,1,'PISO 11',2,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-11.jpg',NULL,0,0,0,NULL,'2022-05-13 23:09:07'),(62,1,5,1,'PISO 10',3,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-10.jpg',NULL,0,0,0,NULL,'2022-05-13 23:09:18'),(63,1,5,1,'PISO 9',4,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-9.jpg',NULL,0,0,0,NULL,'2022-05-13 23:09:30'),(64,1,5,1,'PISO 8',5,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-8.jpg',NULL,0,0,0,NULL,'2022-05-13 23:09:49'),(65,1,5,1,'PISO 7',6,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-7.jpg',NULL,0,0,0,NULL,'2022-05-13 23:10:01'),(66,1,5,1,'PISO 6',7,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 23:10:12'),(67,1,5,1,'PISO 5',8,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 23:10:30'),(68,1,5,1,'PISO 4',9,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-4.jpg',NULL,0,0,0,NULL,'2022-05-13 23:10:45'),(69,1,5,1,'PISO 3',10,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-3.jpg',NULL,0,0,0,NULL,'2022-05-13 23:10:57'),(70,1,5,1,'PISO 2',11,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-2.jpg',NULL,0,0,0,NULL,'2022-05-13 23:11:46'),(71,1,5,1,'PISO 1',12,NULL,'/img/residence/corporativo/insurgentes-866/insurgentes-866-floor-piso-1.jpg',NULL,0,0,0,NULL,'2022-05-13 23:11:56'),(72,1,4,1,'VIP',1,NULL,'/img/residence/corporativo/alpes/alpes-floor-vip.jpg',NULL,0,0,0,NULL,'2022-05-13 23:16:14'),(73,1,4,1,'PENT OFFICE',2,NULL,'/img/residence/corporativo/alpes/alpes-floor-pent-office.jpg',NULL,0,0,0,NULL,'2022-05-13 23:16:25'),(74,1,4,1,'PISO 18',3,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-18.jpg',NULL,0,0,0,NULL,'2022-05-13 23:17:01'),(75,1,4,1,'PISO 17',4,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-17.jpg',NULL,0,0,0,NULL,'2022-05-13 23:17:20'),(76,1,4,1,'PISO 16',5,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-16.jpg',NULL,0,0,0,NULL,'2022-05-13 23:19:51'),(77,1,4,1,'PISO 15',6,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-15.jpg',NULL,0,0,0,NULL,'2022-05-13 23:20:02'),(78,1,4,1,'PISO 14',7,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-14.png',NULL,0,0,0,NULL,'2022-05-13 23:20:14'),(79,1,4,1,'PISO 13',8,NULL,NULL,NULL,0,0,0,NULL,NULL),(80,1,4,1,'PISO 12',9,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-12.jpg',NULL,0,0,0,NULL,'2022-05-13 23:20:45'),(81,1,4,1,'PISO 11',10,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-11.jpg',NULL,0,0,0,NULL,'2022-05-13 23:20:58'),(82,1,4,1,'PISO 10',11,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-10.jpg',NULL,0,0,0,NULL,'2022-05-13 23:21:09'),(83,1,4,1,'PISO 9',12,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-9.jpg',NULL,0,0,0,NULL,'2022-05-13 23:21:22'),(84,1,4,1,'PISO 8',13,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-8.jpg',NULL,0,0,0,NULL,'2022-05-13 23:21:37'),(85,1,4,1,'PISO 7',14,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-7.jpg',NULL,0,0,0,NULL,'2022-05-13 23:21:49'),(86,1,4,1,'PISO 6',15,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 23:22:00'),(87,1,4,1,'PISO 5',16,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 23:22:11'),(88,1,4,1,'PISO 4',17,NULL,'/img/residence/corporativo/alpes/alpes-floor-piso-4.jpg',NULL,0,0,0,NULL,'2022-05-13 23:22:22'),(89,1,4,1,'SKY LOBBY',18,NULL,'/img/residence/corporativo/alpes/alpes-floor-sky-lobby.jpg',NULL,0,0,0,NULL,'2022-05-13 23:22:33'),(90,1,3,1,'PENT OFFICE',1,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-pent-office.jpg',NULL,0,0,0,NULL,'2022-05-13 23:25:45'),(91,1,3,1,'PISO 6',2,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 23:26:45'),(92,1,3,1,'PISO 5',3,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 23:26:55'),(93,1,3,1,'PISO 4',4,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-piso-4.jpg',NULL,0,0,0,NULL,'2022-05-13 23:27:05'),(94,1,3,1,'PISO 3',5,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-piso-3.jpg',NULL,0,0,0,NULL,'2022-05-13 23:27:14'),(95,1,3,1,'PISO 2',6,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-piso-2.jpg',NULL,0,0,0,NULL,'2022-05-13 23:27:25'),(96,1,3,1,'PISO 1',7,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-piso-1.jpg',NULL,0,0,0,NULL,'2022-05-13 23:27:35'),(97,1,3,1,'PLANTA BAJA',8,NULL,'/img/residence/corporativo/cuauhtemoc-1233/cuauhtemoc-1233-floor-planta-baja.jpg',NULL,0,0,0,NULL,'2022-05-13 23:27:46'),(98,1,2,1,'VIP',1,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-vip.jpg',NULL,0,0,0,NULL,'2022-05-13 23:39:55'),(99,1,2,1,'PISO 18',2,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-18.jpg',NULL,0,0,0,NULL,'2022-05-13 23:40:05'),(100,1,2,1,'PISO 17',3,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-17.jpg',NULL,0,0,0,NULL,'2022-05-13 23:40:16'),(101,1,2,1,'PISO 16',4,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-16.png',NULL,0,0,0,NULL,'2022-05-13 23:40:41'),(102,1,2,1,'PISO 15',5,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-15.jpg',NULL,0,0,0,NULL,'2022-05-13 23:40:52'),(103,1,2,1,'PISO 14',6,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-14.jpg',NULL,0,0,0,NULL,'2022-05-13 23:41:08'),(104,1,2,1,'PISO 13',7,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-13.jpg',NULL,0,0,0,NULL,'2022-05-13 23:41:19'),(105,1,2,1,'PISO 12',8,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-12.jpg',NULL,0,0,0,NULL,'2022-05-13 23:41:29'),(106,1,2,1,'PISO 11',9,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-11.jpg',NULL,0,0,0,NULL,'2022-05-13 23:41:38'),(107,1,2,1,'PISO 10',10,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-10.jpg',NULL,0,0,0,NULL,'2022-05-13 23:41:48'),(108,1,2,1,'PISO 9',11,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-9.jpg',NULL,0,0,0,NULL,'2022-05-13 23:41:58'),(109,1,2,1,'PISO 8',12,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-8.jpg',NULL,0,0,0,NULL,'2022-05-13 23:42:07'),(110,1,2,1,'PISO 7',13,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-7.jpg',NULL,0,0,0,NULL,'2022-05-13 23:42:19'),(111,1,2,1,'PISO 6',14,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 23:42:29'),(112,1,2,1,'PISO 5',15,NULL,'/img/residence/corporativo/jardines-del-pedregal/jardines-del-pedregal-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 23:42:38'),(113,1,1,1,'VIP 2',1,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-vip-2.jpg',NULL,0,0,0,NULL,'2022-05-13 23:46:00'),(114,1,1,1,'VIP 1',2,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-vip-1.jpg',NULL,0,0,0,NULL,'2022-05-13 23:46:09'),(115,1,1,1,'PISO 18',3,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-18.jpg',NULL,0,0,0,NULL,'2022-05-13 23:46:31'),(116,1,1,1,'PISO 17',4,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-17.jpg',NULL,0,0,0,NULL,'2022-05-13 23:46:42'),(117,1,1,1,'PISO 16',5,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-16.jpg',NULL,0,0,0,NULL,'2022-05-13 23:46:53'),(118,1,1,1,'PISO 15',6,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-15.jpg',NULL,0,0,0,NULL,'2022-05-13 23:47:04'),(119,1,1,1,'PISO 14',7,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-14.jpg',NULL,0,0,0,NULL,'2022-05-13 23:47:15'),(120,1,1,1,'PISO 13',8,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-13.jpg',NULL,0,0,0,NULL,'2022-05-13 23:47:25'),(121,1,1,1,'PISO 12',9,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-12.jpg',NULL,0,0,0,NULL,'2022-05-13 23:47:38'),(122,1,1,1,'PISO 11',10,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-11.jpg',NULL,0,0,0,NULL,'2022-05-13 23:47:49'),(123,1,1,1,'PISO 10',11,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-10.jpg',NULL,0,0,0,NULL,'2022-05-13 23:48:01'),(124,1,1,1,'PISO 9',12,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-9.jpg',NULL,0,0,0,NULL,'2022-05-13 23:48:13'),(125,1,1,1,'PISO 8',13,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-8.jpg',NULL,0,0,0,NULL,'2022-05-13 23:48:23'),(126,1,1,1,'PISO 7',14,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-7.jpg',NULL,0,0,0,NULL,'2022-05-13 23:48:34'),(127,1,1,1,'PISO 6',15,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-6.jpg',NULL,0,0,0,NULL,'2022-05-13 23:48:48'),(128,1,1,1,'PISO 5',16,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-5.jpg',NULL,0,0,0,NULL,'2022-05-13 23:49:00'),(129,1,1,1,'PISO 4',17,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-4.jpg',NULL,0,0,0,NULL,'2022-05-13 23:49:11'),(130,1,1,1,'PISO 3',18,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-3.jpg',NULL,0,0,0,NULL,'2022-05-13 23:49:24'),(131,1,1,1,'PISO 2',19,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-piso-2.jpg',NULL,0,0,0,NULL,'2022-05-13 23:49:58'),(132,1,1,1,'CENTRO COMERCIAL PA',20,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-centro-comercial-pa.jpg',NULL,0,0,0,NULL,'2022-05-13 23:50:36'),(133,1,1,1,'CENTRO COMERCIAL PB',21,NULL,'/img/residence/corporativo/insurgentes-reforma/insurgentes-reforma-floor-centro-comercial-pb.jpg',NULL,0,0,0,NULL,'2022-05-13 23:50:45');
/*!40000 ALTER TABLE `residence_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_floor_statu`
--

DROP TABLE IF EXISTS `residence_floor_statu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence_floor_statu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  `description` text,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `residenceFloorType_statu_idx` (`statu_id`),
  CONSTRAINT `residenceFloorStatu_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_floor_statu`
--

LOCK TABLES `residence_floor_statu` WRITE;
/*!40000 ALTER TABLE `residence_floor_statu` DISABLE KEYS */;
INSERT INTO `residence_floor_statu` VALUES (1,1,'disponible venta','#52BE80',NULL,NULL,NULL),(2,1,'apartado venta','#F4D03F',NULL,NULL,NULL),(3,1,'vendido','#E74C3C',NULL,NULL,NULL);
/*!40000 ALTER TABLE `residence_floor_statu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_statu`
--

DROP TABLE IF EXISTS `residence_statu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence_statu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `color` varchar(45) DEFAULT NULL,
  `description` text,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `residenceStatu_statu_idx` (`statu_id`),
  CONSTRAINT `residenceStatu_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_statu`
--

LOCK TABLES `residence_statu` WRITE;
/*!40000 ALTER TABLE `residence_statu` DISABLE KEYS */;
INSERT INTO `residence_statu` VALUES (1,1,'venta','coffee',NULL,NULL,NULL),(2,1,'renta','purple',NULL,NULL,NULL);
/*!40000 ALTER TABLE `residence_statu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence_type`
--

DROP TABLE IF EXISTS `residence_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `url` varchar(150) NOT NULL,
  `description` text,
  `cover` text,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `url_UNIQUE` (`url`),
  KEY `residence_type_statu_idx` (`statu_id`),
  CONSTRAINT `residence_type_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_type`
--

LOCK TABLES `residence_type` WRITE;
/*!40000 ALTER TABLE `residence_type` DISABLE KEYS */;
INSERT INTO `residence_type` VALUES (1,1,'corporativo','corporativo',NULL,NULL,NULL,NULL),(2,1,'residencial','residencial',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `residence_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(150) NOT NULL,
  `description` text,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `rol_statu_idx` (`statu_id`),
  CONSTRAINT `rol_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,1,'administrator',NULL,NULL,NULL),(2,1,'editor',NULL,NULL,NULL);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statu`
--

DROP TABLE IF EXISTS `statu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `description` text,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statu`
--

LOCK TABLES `statu` WRITE;
/*!40000 ALTER TABLE `statu` DISABLE KEYS */;
INSERT INTO `statu` VALUES (1,'active',NULL,NULL,NULL),(2,'delete',NULL,NULL,NULL),(3,'inactive',NULL,NULL,NULL);
/*!40000 ALTER TABLE `statu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statu_id` int(11) NOT NULL DEFAULT '1',
  `rol_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `email` varchar(280) DEFAULT NULL,
  `password` varchar(280) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_statu_idx` (`statu_id`),
  KEY `user_rol_idx` (`rol_id`),
  KEY `user_profile_idx` (`profile_id`),
  CONSTRAINT `user_profile` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_statu` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,1,1,'ernesto','camargo','ecamargo@yama.mx','827ccb0eea8a706c4c34a16891f84e7b',NULL,NULL),(2,1,1,2,'rafael','perez','rperez@yama.mx','827ccb0eea8a706c4c34a16891f84e7b',NULL,'2022-05-12 18:34:10'),(3,1,1,3,'martina','lozano','mlozano@yama.mx','827ccb0eea8a706c4c34a16891f84e7b',NULL,'2022-05-12 18:33:50'),(4,1,1,4,'lucia','gomez','lgome@yama.mx','827ccb0eea8a706c4c34a16891f84e7b',NULL,'2022-05-12 16:49:38'),(5,2,1,1,'lionel',NULL,'lyon@yama.mx','827ccb0eea8a706c4c34a16891f84e7b','2022-05-12 19:11:01','2022-05-12 19:30:49'),(6,1,2,3,'rafael',NULL,'rafa@yama.mx','827ccb0eea8a706c4c34a16891f84e7b','2022-05-12 19:31:20',NULL),(7,1,1,1,'juan edit','apeli','juanframart2011edit@hotmail.com','827ccb0eea8a706c4c34a16891f84e7b','2022-05-12 19:34:50','2022-05-12 22:39:51');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-13 18:58:58
