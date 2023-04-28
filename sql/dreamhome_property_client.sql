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
-- Table structure for table `property_client`
--

DROP TABLE IF EXISTS `property_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_client` (
  `id` varchar(20) NOT NULL,
  `client_password` varchar(200) DEFAULT NULL,
  `full_name` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `staff_no` varchar(20) NOT NULL,
  `reg_date` date NOT NULL,
  `property_type` varchar(20) NOT NULL,
  `max_rent` int DEFAULT NULL,
  `telephone_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `branch_no` (`branch_no`),
  KEY `staff_no` (`staff_no`),
  CONSTRAINT `property_client_ibfk_1` FOREIGN KEY (`branch_no`) REFERENCES `branch` (`branch_no`),
  CONSTRAINT `property_client_ibfk_2` FOREIGN KEY (`staff_no`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_client`
--

LOCK TABLES `property_client` WRITE;
/*!40000 ALTER TABLE `property_client` DISABLE KEYS */;
INSERT INTO `property_client` VALUES ('c001','$2b$10$EiZ09OBGFATLIr88BeqEtubl69kus8iE1ylSnCtcXQHgsishHpFV.','John Doe','12','s002','2023-04-24','Flat',50000,'9090909090'),('c002','$2b$10$kKlib84yz6S5sinokkQ4R.0hqxlVaGvVZBHrE7Vz/SR5n0ZVgiji6','Jane Doe','11','s003','2023-04-24','Mansion',100000,'8989898989');
/*!40000 ALTER TABLE `property_client` ENABLE KEYS */;
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
