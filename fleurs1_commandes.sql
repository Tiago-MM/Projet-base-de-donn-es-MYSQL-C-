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
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commandes` (
  `id` int NOT NULL,
  `id_client` int DEFAULT NULL,
  `id_magasin` int DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `adresse_livraison` varchar(255) DEFAULT NULL,
  `message_accompagnant` varchar(255) DEFAULT NULL,
  `date_livraison` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`),
  KEY `id_magasin` (`id_magasin`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`),
  CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`id_magasin`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` VALUES (1,1,1,'2023-01-24 00:00:00','32 rue de la rotonde, 75006 Paris','Svp donnez nous une bonne note','2023-01-30 00:00:00'),(2,1,1,'2023-02-07 00:00:00','11 rue des pierres, 75007 Paris','Felicitations','2023-02-14 00:00:00'),(3,1,2,'2023-03-21 00:00:00','12 rue des batignolles, 75008 Paris','Hb','2023-03-29 00:00:00'),(4,1,2,'2023-04-07 00:00:00','12 rue des batignolles, 75008 Paris','Ma femme Clara','2023-04-14 00:00:00'),(5,1,2,'2023-04-15 00:00:00','12 rue des batignolles, 75008 Paris','Ma femme Emilie','2023-04-18 00:00:00'),(6,2,1,'2023-03-02 00:00:00','10 rue des cigarettes, 75006 Paris','Merci','2023-03-08 00:00:00'),(7,2,1,'2023-01-25 00:00:00','19 rue des feuilles, 75009 Paris','Super','2023-01-30 00:00:00'),(8,2,2,'2023-01-20 00:00:00','19 rue des feuilles, 75009 Paris','Cool','2023-01-30 00:00:00'),(9,3,1,'2023-04-01 00:00:00','5 rue de la Liberté, 75008 Paris','Magnifique','2023-04-04 00:00:00'),(10,3,2,'2023-03-15 00:00:00','15 rue du Bistro, 75003 Paris','Parfait','2023-03-20 00:00:00'),(11,4,2,'2023-02-12 00:00:00','30 avenue des Champs-Élysées, 75008 Paris','Excellent','2023-02-18 00:00:00'),(12,4,2,'2023-04-10 00:00:00','1 rue de la Paix, 75001 Paris','Génial','2023-04-13 00:00:00'),(13,4,1,'2023-03-22 00:00:00','23 rue de vinci, 75011 Paris','Top','2023-03-27 00:00:00'),(14,5,1,'2023-01-12 00:00:00','18 rue de la république, 75001 Paris','Merci bien','2023-01-17 00:00:00'),(15,6,1,'2023-02-12 00:00:00','18 rue de la monarchie, 75001 Paris','Merci cest parfait','2023-02-17 00:00:00'),(16,6,1,'2023-04-14 00:00:00','18 rue de la monarchie, 75001 Paris','Merci top','2023-04-19 00:00:00'),(17,6,2,'2023-01-11 00:00:00','19 rue de la fontaine, 75009 Paris','Pour Clara','2023-01-14 00:00:00'),(18,6,2,'2023-02-19 00:00:00','18 rue de la monarchie, 75001 Paris','Plaisir','2023-02-27 00:00:00'),(19,1,1,'2023-01-01 00:00:00','19 rue des feuilles, 75009 Paris','merci chef','2023-01-05 00:00:00'),(20,7,1,'2023-01-04 00:00:00','19 rue des rochers, 75009 Paris','Pour ma femme','2023-01-10 00:00:00'),(21,6,1,'2023-02-04 00:00:00','19 rue des de la monarchie, 75009 Paris','Pour toi','2023-02-10 00:00:00'),(22,3,2,'2023-01-15 00:00:00','15 rue du Bistro, 75003 Paris','Parfait merci beaucoup','2023-01-20 00:00:00'),(23,3,2,'2023-01-20 00:00:00','15 rue du Bistro, 75003 Paris','Super fleurs','2023-01-29 00:00:00'),(24,4,2,'2023-02-20 00:00:00','15 rue du de la Biere, 75007 Paris','Frere','2023-02-27 00:00:00'),(25,8,1,'2023-04-24 00:00:00','19 avenue des champs, 75011 Paris','je taime','2023-04-27 00:00:00'),(26,6,1,'2023-04-20 00:00:00','11 rue des chenes, 75018 Paris','Pour toi-60','2023-04-30 00:00:00'),(27,9,1,'2023-04-21 00:00:00','19 rue des Michels, 75008 Paris','Pour Florian','2023-04-29 00:00:00'),(28,9,2,'2023-04-20 00:00:00','19 rue des Michels, 75008 Paris','parfait bon travail','2023-04-28 00:00:00'),(29,2,2,'2023-04-25 00:00:00','19 rue des Paix, 75008 Paris','Merci mv','2023-04-28 00:00:00');
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 13:44:54
