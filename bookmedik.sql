-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: bookmedik
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alimento`
--

DROP TABLE IF EXISTS `alimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimento`
--

LOCK TABLES `alimento` WRITE;
/*!40000 ALTER TABLE `alimento` DISABLE KEYS */;
INSERT INTO `alimento` VALUES (1,'CEREAL','2 tanes','Desayuno'),(2,'leche','1 taza','Almuerzo'),(3,'yogur','2 vasos','Cena'),(4,'ensalada','ligera','Comida'),(5,'leche','aaa','Cena'),(6,'fresas','aaaaaaaaaaaaaaa','Desayuno'),(7,'CEREAL2','AAAAAAAAAAAAAAAAAAAAA','Desayuno'),(8,'pan','fdsfsf','Comida'),(9,'f','f','Desayuno'),(10,'merienda','prueba','Merienda');
/*!40000 ALTER TABLE `alimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Modulo 1');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `consulta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `observaciones` text,
  `dieta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'123',1),(2,'csdsd121d',1),(3,'0000',1),(4,'111',1),(5,'dc',1),(6,'tut',1),(7,'dfvgf',1),(8,'dfedfsd',1),(9,'dsf',2),(10,'Prueba2',6),(11,'gh',5),(12,'frgrtfg',5);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dieta`
--

DROP TABLE IF EXISTS `dieta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dieta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `desayuno` text NOT NULL,
  `almuerzo` text NOT NULL,
  `comida` text NOT NULL,
  `merienda` text NOT NULL,
  `cena` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dieta`
--

LOCK TABLES `dieta` WRITE;
/*!40000 ALTER TABLE `dieta` DISABLE KEYS */;
INSERT INTO `dieta` VALUES (4,'Prueba','Guardar ingesta','yogur','','','',''),(5,'Prueba2','Guardar ingesta 2','leche','','','',''),(6,'Prueba 2.1','Guardar datos ingesta completos 1','CEREAL','leche','ensalada','merienda','yogur'),(7,'Prueba 3','Verificar que todo esté correcto :3 \r\nYa estoy feliz ♥','fresas','leche','pan','merienda','leche');
/*!40000 ALTER TABLE `dieta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medic`
--

DROP TABLE IF EXISTS `medic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `medic_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medic`
--

LOCK TABLES `medic` WRITE;
/*!40000 ALTER TABLE `medic` DISABLE KEYS */;
INSERT INTO `medic` VALUES (1,NULL,'Per','Perla',NULL,NULL,'per@gmail.com','asdf','1234567899',NULL,1,'2019-04-25 10:50:02',1);
/*!40000 ALTER TABLE `medic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacient`
--

DROP TABLE IF EXISTS `pacient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pacient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sick` varchar(500) DEFAULT NULL,
  `medicaments` varchar(500) DEFAULT NULL,
  `alergy` varchar(500) DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacient`
--

LOCK TABLES `pacient` WRITE;
/*!40000 ALTER TABLE `pacient` DISABLE KEYS */;
INSERT INTO `pacient` VALUES (1,NULL,'K','Karem','m','1996-11-07','k@gmail.com','sdcf','1234567890',NULL,'asdfg','asdf','asdfvg',1,1,'2019-04-25 10:49:15'),(2,NULL,'Monse','Montero',NULL,NULL,'Monse@email.com','No sé','1234567890',NULL,NULL,NULL,NULL,1,1,'2019-05-11 00:30:38'),(3,NULL,'Perla','Plcm',NULL,NULL,'djfnvklsdnf','sfrfgr','dknfklds',NULL,NULL,NULL,NULL,1,1,'2019-05-16 10:38:17'),(4,NULL,'Juan','Perez',NULL,NULL,'dnvksndc','sdjnsd','knsdkcnsdkc',NULL,NULL,NULL,NULL,1,1,'2019-05-16 11:27:43');
/*!40000 ALTER TABLE `pacient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Pendiente'),(2,'Pagado'),(3,'Anulado');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progreso`
--

DROP TABLE IF EXISTS `progreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `progreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peso` float NOT NULL,
  `altura` float NOT NULL,
  `talla` float NOT NULL,
  `IMC` float NOT NULL,
  `pacient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_paciente` FOREIGN KEY (`id`) REFERENCES `pacient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progreso`
--

LOCK TABLES `progreso` WRITE;
/*!40000 ALTER TABLE `progreso` DISABLE KEYS */;
INSERT INTO `progreso` VALUES (1,123,123,123,123,4),(2,122,222,122,222,4),(3,0,0,0,0,3),(4,111,111,111,111,1);
/*!40000 ALTER TABLE `progreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `note` text,
  `message` text,
  `date_at` varchar(50) DEFAULT NULL,
  `time_at` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `pacient_id` int(11) DEFAULT NULL,
  `symtoms` text,
  `sick` text,
  `medicaments` text,
  `user_id` int(11) DEFAULT NULL,
  `medic_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `is_web` tinyint(1) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL DEFAULT '1',
  `status_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `status_id` (`status_id`),
  KEY `user_id` (`user_id`),
  KEY `pacient_id` (`pacient_id`),
  KEY `medic_id` (`medic_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`pacient_id`) REFERENCES `pacient` (`id`),
  CONSTRAINT `reservation_ibfk_5` FOREIGN KEY (`medic_id`) REFERENCES `medic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'Cita 10','',NULL,'2019-05-16','13:00','2019-05-16 12:31:13',4,NULL,NULL,NULL,1,1,NULL,0,1,1),(2,'Nutricion','',NULL,'2019-05-16','16:00','2019-05-16 12:54:24',3,NULL,NULL,NULL,1,1,NULL,0,1,1),(3,'Ejemplo2','',NULL,'2019-05-16','17:00','2019-05-16 13:13:43',1,NULL,NULL,NULL,1,1,NULL,0,1,1),(4,'Nutricion','yyk',NULL,'2019-05-21','13:00','2019-05-19 22:50:12',4,NULL,NULL,NULL,1,1,NULL,0,1,1),(5,'Ejemplo2','ghjg',NULL,'2019-05-21','15:00','2019-05-20 00:08:56',1,NULL,NULL,NULL,1,1,NULL,0,1,1),(6,'Cita 1','Prueba',NULL,'2019-05-21','17:00','2019-05-20 00:10:52',2,NULL,NULL,NULL,1,1,NULL,0,1,1),(7,'Nutricion','hgmkgkm',NULL,'2019-05-23','11:00','2019-05-20 00:17:54',4,NULL,NULL,NULL,1,1,NULL,0,1,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Pendiente'),(2,'Aplicada'),(3,'No asistio'),(4,'Cancelada');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin',NULL,NULL,NULL,'90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad',1,1,'2019-04-25 15:43:28'),(3,'karem',NULL,NULL,NULL,'fe703d258c7ef5f50b71e06565a65aa07194907f',1,0,'2019-05-09 09:55:26');
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

-- Dump completed on 2019-05-20  7:38:12
