-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: dreamhome
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
-- Table structure for table `property_owner`
--

DROP TABLE IF EXISTS `property_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_owner` (
  `id` varchar(20) NOT NULL,
  `owner_password` varchar(200) DEFAULT NULL,
  `owner_type` varchar(1) DEFAULT NULL,
  `full_name` varchar(20) NOT NULL,
  `owner_address` varchar(100) NOT NULL,
  `telephone_no` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_owner`
--

LOCK TABLES `property_owner` WRITE;
/*!40000 ALTER TABLE `property_owner` DISABLE KEYS */;
INSERT INTO `property_owner` VALUES ('o001','$2b$10$CVY70e20I01LUDmoGmkHlOFC4RWvnfljv6C1ph0p3WFkT4RWfv3qK','P','Robert Smith','123 Main Street, Anytown, USA','8888888888'),('o002','$2b$10$mN3U6h6hl0L/LkJgln.tb.n8Tqet/yKtnVtHnCjwiNqyn4PQpyz7a','B','Sarah Johnson','456 Maple Avenue, Smallville, USA','8787878787'),('o003','$2b$10$jDE4RxrxFiRzFhmUy9.f.OCUEU9D8bo03UtQpz91zPgVYtKrTycpC','P','Lisa Davis','10 Downing Street, London, United Kingdom','8686868686');
/*!40000 ALTER TABLE `property_owner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 21:32:24
