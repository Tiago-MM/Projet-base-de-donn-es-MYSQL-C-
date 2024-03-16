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
-- Table structure for table `commandes_produits`
--

DROP TABLE IF EXISTS `commandes_produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commandes_produits` (
  `id` int NOT NULL,
  `id_commande` int DEFAULT NULL,
  `id_produit` int DEFAULT NULL,
  `quantite` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_commande` (`id_commande`),
  KEY `id_produit` (`id_produit`),
  CONSTRAINT `commandes_produits_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commandes` (`id`),
  CONSTRAINT `commandes_produits_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes_produits`
--

LOCK TABLES `commandes_produits` WRITE;
/*!40000 ALTER TABLE `commandes_produits` DISABLE KEYS */;
INSERT INTO `commandes_produits` VALUES (1,1,3,4),(2,2,6,7),(3,2,9,3),(4,2,14,2),(5,3,3,3),(6,4,7,6),(7,4,11,1),(8,5,5,2),(9,6,8,9),(10,6,9,4),(11,6,12,3),(12,7,5,4),(13,8,8,2),(14,8,9,3),(15,8,10,5),(16,8,15,1),(17,9,4,3),(18,10,6,7),(19,10,7,3),(20,10,10,2),(21,10,11,1),(22,11,8,2),(23,11,9,3),(24,11,12,1),(25,12,1,4),(26,13,5,2),(27,14,6,9),(28,14,10,5),(29,14,15,2),(30,15,1,4),(31,16,9,4),(32,16,10,6),(33,16,13,1),(34,16,14,2),(35,17,5,1),(36,18,2,3),(37,19,5,6),(38,20,6,2),(39,20,10,3),(40,20,11,1),(41,20,13,1),(42,21,7,9),(43,21,8,7),(44,21,12,3),(45,21,14,4),(46,22,1,4),(47,23,9,7),(48,23,13,1),(49,23,15,3),(50,24,6,4),(51,24,7,5),(52,24,11,2),(53,24,12,1),(54,25,5,2),(55,26,9,0),(56,26,10,0),(57,26,13,0),(58,26,14,0),(59,27,4,2),(60,28,6,0),(61,28,11,0),(62,28,15,0),(63,29,3,4);
/*!40000 ALTER TABLE `commandes_produits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 13:44:52
