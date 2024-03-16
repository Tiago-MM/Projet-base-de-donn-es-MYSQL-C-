-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: fleurs1
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
-- Table structure for table `inventaire_magasin`
--

DROP TABLE IF EXISTS `inventaire_magasin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventaire_magasin` (
  `id` int NOT NULL,
  `id_magasin` int DEFAULT NULL,
  `id_produit` int DEFAULT NULL,
  `quantite` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_magasin` (`id_magasin`),
  KEY `id_produit` (`id_produit`),
  CONSTRAINT `inventaire_magasin_ibfk_1` FOREIGN KEY (`id_magasin`) REFERENCES `magasins` (`id`),
  CONSTRAINT `inventaire_magasin_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventaire_magasin`
--

LOCK TABLES `inventaire_magasin` WRITE;
/*!40000 ALTER TABLE `inventaire_magasin` DISABLE KEYS */;
INSERT INTO `inventaire_magasin` VALUES (1,1,1,15),(2,1,2,40),(3,1,3,23),(4,1,4,12),(5,1,5,1),(6,1,6,100),(7,1,7,80),(8,1,8,200),(9,1,9,150),(10,1,10,120),(11,1,11,30),(12,1,12,100),(13,1,13,50),(14,1,14,80),(15,1,15,70),(16,2,1,15),(17,2,2,40),(18,2,3,60),(19,2,4,30),(20,2,5,20),(21,2,6,50),(22,2,7,30),(23,2,8,70),(24,2,9,40),(25,2,10,90),(26,2,11,20),(27,2,12,30),(28,2,13,60),(29,2,14,40),(30,2,15,80);
/*!40000 ALTER TABLE `inventaire_magasin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 13:44:53
