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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` varchar(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `dob` date NOT NULL,
  `branch_no` varchar(20) DEFAULT NULL,
  `super_staff_no` varchar(20) DEFAULT NULL,
  `work_position` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `bonus` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `branch_no` (`branch_no`),
  KEY `work_position` (`work_position`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`branch_no`) REFERENCES `branch` (`branch_no`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`work_position`) REFERENCES `work_position` (`work_position`),
  CONSTRAINT `sex_check` CHECK (((`sex` = _utf8mb4'M') or (`sex` = _utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('s001','Moksh Mangal','$2b$10$b1xtyepx69nZcFCPUrvZl.XUCdPwgXVc.jV.A0Tu0EzKEXPPzkAsS','M','2003-03-03','11','','supervisor','2023-04-24',20000),('s002','Priyal Ingle','$2b$10$xKYsycND/prUl8QCK6Bm4u9vJN.seWioR.995bgyRUiu/ajA/vJKu','M','2003-01-24','11','','manager','2023-04-24',50000),('s003','Vishal Kumar','$2b$10$mtBTjXaeIMC358rG9BhbIey4lLY0Avg.GncfpXNNJxh6/MkM5Orce','M','2003-07-22','11','s002','supervisor','2023-04-24',40000),('s004','Sarthak Jain','$2b$10$MTkX8egj0Z69hwJif8Zd4u5/Q6lv4A0ZMseSvyWYp9MBV5AafBypS','M','2004-04-04','11','s003','supervisor','2023-04-24',40000),('s005','Siddhant Sidola','$2b$10$2cd67eVMWGe/NguLb9QEuuQkyrptaiYG04PHnIyIfB8Rnyv4PGwPW','M','2002-02-02','15','s002','employee','2023-04-24',2);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
