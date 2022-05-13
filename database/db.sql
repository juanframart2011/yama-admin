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
INSERT INTO `residence` VALUES (1,1,1,'yama insurgentes reforma',NULL,'img/residence/corporativo/insurgentes-reforma.jpg',NULL,'yama-insurgentes-reforma',NULL,NULL),(2,1,1,'yama jardines del pedregal',NULL,'img/residence/corporativo/jardines-del-pedregal.jpg',NULL,'yama-jardines-del-pedregal',NULL,NULL),(3,1,1,'yama cuauhtemoc 1233',NULL,'img/residence/corporativo/cuauhtemoc-1233.jpg',NULL,'yama-cuauhtemoc-1233',NULL,NULL),(4,1,1,'yama alpes',NULL,'img/residence/corporativo/alpes.jpg',NULL,'yama-alpes',NULL,NULL),(5,1,1,'yama insurgentes 866',NULL,'img/residence/corporativo/insurgentes-866.jpg',NULL,'yama-insurgentes-866',NULL,NULL),(6,1,1,'yama bosques santa fe corporativo',NULL,'img/residence/corporativo/bsf-corp.jpg',NULL,'yama-bosques-santa-fe-corporativo',NULL,NULL),(9,2,1,'punta museo',NULL,'img/residence/residencial/punta-museo.jpg','img/residence/corporativo/punta-museo/tower.png','punta-museo',NULL,NULL),(10,2,1,'bosques santa fe residencial',NULL,'img/residence/residencial/bsf-res.jpg',NULL,'bosques-santa-fe-residencial',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence_floor`
--

LOCK TABLES `residence_floor` WRITE;
/*!40000 ALTER TABLE `residence_floor` DISABLE KEYS */;
INSERT INTO `residence_floor` VALUES (1,1,9,1,'vip',1,NULL,NULL,NULL,NULL,NULL),(2,1,9,1,'pent house',2,NULL,NULL,NULL,NULL,NULL),(3,1,9,1,'piso 3',3,NULL,NULL,NULL,NULL,NULL),(4,1,9,1,'piso 2',4,NULL,NULL,NULL,NULL,NULL),(5,1,9,1,'piso 1',5,NULL,NULL,NULL,NULL,NULL),(6,1,9,1,'GARDEN HOUSE',6,NULL,NULL,NULL,NULL,NULL),(7,1,9,1,'MUSEO DEL AUTOMOVIL',7,NULL,NULL,NULL,NULL,NULL),(8,1,9,1,'CENTRO COMERCIAL PA',8,NULL,NULL,NULL,NULL,NULL),(9,1,9,1,'CENTRO COMERCIAL PB',9,NULL,NULL,NULL,NULL,NULL),(10,1,9,1,'ESTACIONAMIENTO 1',10,NULL,NULL,NULL,NULL,NULL),(11,1,9,1,'ESTACIONAMIENTO 2',11,NULL,NULL,NULL,NULL,NULL),(12,1,9,1,'ESTACIONAMIENTO 3',12,NULL,NULL,NULL,NULL,NULL),(13,1,9,1,'ESTACIONAMIENTO 4',13,NULL,NULL,NULL,NULL,NULL),(14,1,9,1,'ESTACIONAMIENTO 5',14,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `residence_floor_statu` VALUES (1,1,'disponible venta','green',NULL,NULL,NULL),(2,1,'apartado venta','yellow',NULL,NULL,NULL),(3,1,'vendido','red',NULL,NULL,NULL);
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

-- Dump completed on 2022-05-12 22:42:12
