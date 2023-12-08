-- MySQL dump 10.13  Distrib 8.1.0, for macos13.3 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `idtasks` int NOT NULL AUTO_INCREMENT,
  `tasksName` varchar(45) DEFAULT NULL,
  `dateAdd` datetime DEFAULT CURRENT_TIMESTAMP,
  `domStatus` int DEFAULT '1',
  PRIMARY KEY (`idtasks`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Faire les courses','2023-11-24 11:28:21',1),(2,'Acheter du pq','2023-11-24 11:58:46',0),(3,'popo','2023-11-24 13:10:28',1),(4,'TOTO','2023-11-24 13:10:34',0),(5,'caca','2023-11-24 13:13:58',0),(6,'rfrf','2023-11-24 13:17:05',0),(7,'yuyu','2023-11-24 13:32:02',0),(8,'ghgh','2023-11-24 13:32:10',0),(9,'nbnb','2023-11-24 13:32:13',0),(10,'banane ','2023-11-24 13:33:03',0),(11,'pomme ','2023-11-24 13:33:09',1),(12,'task','2023-11-24 14:51:51',1);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `televison`
--

DROP TABLE IF EXISTS `televison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `televison` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(45) DEFAULT NULL,
  `prix` varchar(45) DEFAULT NULL,
  `raison` varchar(45) DEFAULT NULL,
  `casse` tinyint DEFAULT '0',
  `taille` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `televison`
--

LOCK TABLES `televison` WRITE;
/*!40000 ALTER TABLE `televison` DISABLE KEYS */;
INSERT INTO `televison` VALUES (1,'smasung','399','coup de poing',1,'65'),(2,'philips','449','salto',1,'55'),(3,'LG','1299','coup de poing',1,'75'),(4,'sony','399','coup de poing',1,'49'),(9,'samsung','699','coup de poing',1,'55'),(10,'samsung','699',NULL,1,'55'),(11,'samsung','699','Marseille est nul',1,'49'),(12,'LG','678',NULL,1,'49'),(15,'LG','699',NULL,1,'85');
/*!40000 ALTER TABLE `televison` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 14:39:19
