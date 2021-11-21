-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ospjsp
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `transactionID` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('tarik@gmail.com',1,1,1189,1189,'2. ulica 110b','Zivinice','BiH','Bosnia & Herzegovina',38762809858,'2021-10-24 23:33:43','2021-10-31 23:33:43','Cash on delivery(COD)','','Canceled'),('tarik@gmail.com',8,1,1250,1250,'2. ulica 110b','Zivinice','BiH','Bosnia & Herzegovina',38762809858,'2021-10-24 23:33:43','2021-10-31 23:33:43','Cash on delivery(COD)','','Delivered'),('tarik@gmail.com',14,1,350,350,'2. ulica 110b','Zivinice','BiH','Bosnia & Herzegovina',38762809858,'2021-10-24 23:33:43','2021-10-31 23:33:43','Cash on delivery(COD)','','Delivered'),('tarik@gmail.com',18,1,2299,2299,'2. ulica 110b','Zivinice','BiH','Bosnia & Herzegovina',38762809858,'2021-10-24 23:33:43','2021-10-31 23:33:43','Cash on delivery(COD)','','Delivered'),('user@gmail.com',5,1,1949,1949,'Orlovaca 8','Sarajevo','BiH','Bosnia & Herzegovina',123456789,'2021-10-25 14:30:46','2021-11-01 14:30:46','Online Payment','TID-123456','Canceled'),('user@gmail.com',12,1,1550,1550,'Orlovaca 8','Sarajevo','BiH','Bosnia & Herzegovina',123456789,'2021-10-25 14:30:46','2021-11-01 14:30:46','Online Payment','TID-123456','Delivered'),('user@gmail.com',15,1,300,300,'Orlovaca 8','Sarajevo','BiH','Bosnia & Herzegovina',123456789,'2021-10-25 14:30:46','2021-11-01 14:30:46','Online Payment','TID-123456','Canceled'),('user@gmail.com',20,1,850,850,'Orlovaca 8','Sarajevo','BiH','Bosnia & Herzegovina',123456789,'2021-10-25 14:30:46','2021-11-01 14:30:46','Online Payment','TID-123456','Delivered');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-25 15:11:52
