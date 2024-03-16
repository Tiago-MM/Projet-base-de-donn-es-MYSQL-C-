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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `courriel` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `adresse_facturation` varchar(255) NOT NULL,
  `carte_credit` varchar(16) NOT NULL,
  `statut_fidélité` enum('OR','BRONZE','AUCUN') NOT NULL DEFAULT 'AUCUN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `courriel` (`courriel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'White','Walter','0234567890','walter.white@gmail.com','mdp1','5 rue des Tulipes, 75001 Paris','2345678901234567','OR'),(2,'Freeman','Morgan','0345678901','luc.durand@example.com','mdp2','6 rue des Lilas, 75002 Paris','3456789876545','BRONZE'),(3,'Black','Jack','0456789012','camille.moreau@example.com','azzdazd','7 rue des Iris, 75003 Paris','3456789765477','AUCUN'),(4,'Clayton','Hugo','0567890123','clayton.hugo@gmail.com','apapapsa','8 rue des Pivoines, 75004 Paris','345678763456','AUCUN'),(5,'Bay','Michael','0678901234','Bay.Michael@gmail.com','Azertyuiop','9 rue des Orchidées, 75005 Paris','34567545675','BRONZE'),(6,'Chevronne','Emilia','0678945634','Emilia@gmail.com','Tiagolepb','9 bis rue de la monarchie, 75005 Paris','1524377465387','BRONZE'),(7,'Cadi','Nedi','0698345675','Orni2003@gmail.com','FS92','12 rue du restaurantpt, 75009 Paris','1487254252536','AUCUN'),(8,'Toucheletaureau','Tibo','0612345654','Tibo@gmail.com','password','14 rue du couturier, 75002 Paris','1234587659278','AUCUN'),(9,'Bavy','Claire','0789564365','Clairebavy@gmail.com','Floflo','11 rue de la fontaine, 75009 Paris','9843234567543','AUCUN');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
