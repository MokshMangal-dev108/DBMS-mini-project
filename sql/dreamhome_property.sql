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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_no` varchar(20) NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `rooms` int NOT NULL,
  `rent` int NOT NULL,
  `property_address` varchar(100) NOT NULL,
  `managing_staff_no` varchar(20) NOT NULL,
  `owner_no` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `rent_status` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`property_no`),
  UNIQUE KEY `property_address` (`property_address`),
  KEY `managing_staff_no` (`managing_staff_no`),
  KEY `owner_no` (`owner_no`),
  KEY `branch_no` (`branch_no`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`managing_staff_no`) REFERENCES `staff` (`id`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`owner_no`) REFERENCES `property_owner` (`id`),
  CONSTRAINT `property_ibfk_3` FOREIGN KEY (`branch_no`) REFERENCES `branch` (`branch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES ('p001','Flat',4,50000,'Calle Gran Via, Madrid, Spain','s001','o001','14','N'),('p002','Flat',4,62000,'25 de Mayo 155, Buenos Aires, Argentina','s004','o002','15','N'),('p003','Flat',5,70000,'25 York Street, Toronto, Canada','s001','o003','11','N'),('p004','Mansion',6,74000,'Königsallee 60F, Düsseldorf, Germany','s001','o001','12','N'),('p005','Flat',6,80000,'Via del Corso, Rome, Italy','s002','o001','12','N'),('p006','Mansion',8,125000,'1313 Spruce Street, San Francisco, USA','s002','o002','11','N'),('p007','Mansion',10,200000,'1515 Cherry Street, Los Angeles, USA','s002','o001','12','Y');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
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
