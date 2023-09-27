CREATE DATABASE  IF NOT EXISTS `vulgata` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vulgata`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vulgata
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `versiculus`
--

DROP TABLE IF EXISTS `versiculus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versiculus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `volumen` int NOT NULL,
  `scriptum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `volumen` (`volumen`),
  CONSTRAINT `versiculus_ibfk_1` FOREIGN KEY (`volumen`) REFERENCES `volumen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versiculus`
--

LOCK TABLES `versiculus` WRITE;
/*!40000 ALTER TABLE `versiculus` DISABLE KEYS */;
INSERT INTO `versiculus` VALUES (1,1,'Liber generationis Iesu Christi filii David filii Abraham.'),(2,1,'Abraham genuit Isaac, Isaac autem genuit Iacob, Iacob autem genuit Iudam et fratres eius,'),(3,1,'Iudas autem genuit Phares et Zara de Thamar, Phares autem genuit Esrom, Esrom autem genuit Aram,'),(4,1,'Aram autem genuit Aminadab, Aminadab autem genuit Naasson, Naasson autem genuit Salmon,'),(5,1,'Salmon autem genuit Booz de Rahab, Booz autem genuit Obed ex Ruth, Obed autem genuit Iesse,'),(6,1,'Iesse autem genuit David regem.\nDavid autem genuit Salomonem ex ea, quae fuit Uriae,'),(7,1,'Salomon autem genuit Roboam, Roboam autem genuit Abiam, Abia autem genuit Asa,'),(8,1,'Asa autem genuit Iosaphat, Iosaphat autem genuit Ioram, Ioram autem genuit Oziam,'),(9,1,'Ozias autem genuit Ioatham, Ioatham autem genuit Achaz, Achaz autem genuit Ezechiam,'),(10,1,'Ezechias autem genuit Manassen, Manasses autem genuit Amon, Amon autem genuit Iosiam,'),(11,1,'Iosias autem genuit Iechoniam et fratres eius in transmigratione Babylonis.'),(12,1,'Et post transmigrationem Babylonis Iechonias genuit Salathiel, Salathiel autem genuit Zorobabel,'),(13,1,'Zorobabel autem genuit Abiud, Abiud autem genuit Eliachim, Eliachim autem genuit Azor,'),(14,1,'Azor autem genuit Sadoc, Sadoc autem genuit Achim, Achim autem genuit Eliud,'),(15,1,'Eliud autem genuit Eleazar, Eleazar autem genuit Matthan, Matthan autem genuit Iacob,'),(16,1,'Iacob autem genuit Ioseph virum Mariae, de qua natus est Iesus, qui vocatur Christus.'),(17,1,'Omnes ergo generationes ab Abraham usque ad David generationes quattuordecim; et a David usque ad transmigrationem Babylonis generationes quattuordecim; et a transmigratione Babylonis usque ad Christum generationes quattuordecim.'),(18,1,'Iesu Christi autem generatio sic erat.\nCum esset desponsata mater eius Maria Ioseph, antequam convenirent inventa est in utero habens de Spiritu Sancto.'),(19,1,'Ioseph autem vir eius, cum esset iustus et nollet eam traducere, voluit occulte dimittere eam.'),(20,1,'Haec autem eo cogitante, ecce angelus Domini in somnis apparuit ei dicens: “ Ioseph fili David, noli timere accipere Mariam coniugem tuam. Quod enim in ea natum est, de Spiritu Sancto est;'),(21,1,'pariet autem filium, et vocabis nomen eius Iesum: ipse enim salvum faciet populum suum a peccatis eorum ”.'),(22,1,'Hoc autem totum factum est, ut adimpleretur id, quod dictum est a Domino per prophetam dicentem:'),(23,1,'“ Ecce, virgo in utero habebit et pariet filium, et vocabunt nomen eius Emmanuel ”, quod est interpretatum Nobiscum Deus.'),(24,1,'Exsurgens autem Ioseph a somno fecit, sicut praecepit ei angelus Domini, et accepit coniugem suam;'),(25,1,'et non cognoscebat eam, donec peperit filium, et vocavit nomen eius Iesum.');
/*!40000 ALTER TABLE `versiculus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 15:47:34
