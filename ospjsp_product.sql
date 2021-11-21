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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'CYBERPOWERPC Gamer Xtreme VR Gaming PC, Intel Core i5-11600KF 3.9GHz, 16GB DDR4, GeForce RTX 3060 12GB, 500GB NVMe SSD, 1TB HDD, WiFi Ready & Win 11 Home (GXiVR8480A10)','PC',1189,'Yes'),(2,'AMD Ryzen 7 16-Thread Gamer PC (AMD Ryzen7 4700S 16-Threads, 4.0GHz, 16GB GDDR6, Radeon RX 550 2 GDDR5, 512 GB SSD, DVD±RW, USB 3, 802.11AC WiFi & Win 10 Prof) Black #6789','PC',555,'Yes'),(3,'Gamer Xtreme VR Gaming PC, Intel i5-10400F 2.9GHz, GeForce GTX 1660 Super 6GB, 8GB DDR4, 500GB NVMe SSD, Wi-Fi Ready & Windows 10 Home (GXiVR8060A10)','PC',949,'Yes'),(4,'Skytech Archangel Gaming Computer PC Desktop  Ryzen 5 3600 3.6GHz, GTX 1660 Super 6G, 500GB SSD, 16GB DDR4 3000MHz, RGB Fans, Windows 10 Home 64-bit, 802.11AC Wi-Fi','PC',1199,'Yes'),(5,'Skytech Chronos Gaming PC Desktop - AMD Ryzen 7 3700X 3.6GHz, RTX 3070 8GB, 16GB DDR4 3200, 1TB NVME, 650W Gold PSU, Windows 10 Home 64-bit, Black','PC',1949,'Yes'),(6,'OMEN - GT13-0090 30L Gaming Desktop PC, NVIDIA GeForce RTX 3090 Graphics Card, 10th Generation Intel Core i9-10850K Processor, 32 GB RAM, 1 TB SSD, Windows 10 Home','PC',3829,'Yes'),(7,'HP Pavilion Gaming Desktop, NVIDIA GeForce GTX 1650 Super, Intel Core i3-10100, 8 GB DDR4 RAM, 256 GB PCIe NVMe SSD, Windows 10 Home','PC',838,'Yes'),(8,'Samsung Galaxy Note 20','Phones',1250,'Yes'),(9,'Samsung Galaxy Note 20 Ultra','Phones',1500,'Yes'),(10,'Samsung Galaxy S20','Phones',1150,'Yes'),(11,'Samsung Galaxy S21','Phones',1300,'Yes'),(12,'Samsung Galaxy S21 Ultra','Phones',1550,'Yes'),(13,'Samsung Galaxy Buds ','Earphones',120,'Yes'),(14,'Samsung Galaxy Buds 2','Earphones',350,'Yes'),(15,'Samsung Galaxy Buds Pro','Earphones',300,'Yes'),(16,'Acer Predator Helios 300 PH315-54-760S Gaming Laptop','Laptops',1299,'Yes'),(17,'MSI GS75 Stealth Gaming Laptop: 17.3\" 240Hz','Laptops',1349,'Yes'),(18,'Alienware m17 R4, 17.3 inch FHD (Full HD) Gaming Laptop - Intel Core i7-10870H, 16G','Laptops',2299,'Yes'),(19,'HP Pavilion 15 Laptop, 11th Gen Intel Core i7-1165G7 Processor, 16 GB RAM, 512 GB SSD Storage, Full HD IPS micro-edge Display, Windows 10 Pro','Laptops',1021,'Yes'),(20,'Acer Nitro 5 AN515-55-53E5 Gaming Laptop | Intel Core i5-10300H | NVIDIA GeForce RTX 3050 Laptop GPU | 15.6\" FHD 144Hz IPS Display | 8GB DDR4 | 256GB NVMe SSD | Intel Wi-Fi 6 |','Laptops',850,'Yes'),(21,'Samsung Galaxy Flip 3','Phones',1300,'Yes');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
