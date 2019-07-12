CREATE DATABASE  IF NOT EXISTS `cargabd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cargabd`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: cargabd
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `docente` (
  `iddocente` int(11) NOT NULL,
  `nombredocente` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`iddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Barrientos'),(2,'Lagos'),(3,'Fredy Barrientos'),(4,'Damaris Solier'),(5,'Wiliam Ramirez'),(6,'Jhuder Palomino');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestreacademico`
--

DROP TABLE IF EXISTS `semestreacademico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `semestreacademico` (
  `idsemestreacademico` int(11) NOT NULL,
  `numerosemestreacademico` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cargaacademica` int(11) NOT NULL,
  `docente_iddocente` int(11) NOT NULL,
  PRIMARY KEY (`idsemestreacademico`),
  KEY `fk_semestreacademico_docente_idx` (`docente_iddocente`),
  CONSTRAINT `fk_semestreacademico_docente` FOREIGN KEY (`docente_iddocente`) REFERENCES `docente` (`iddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestreacademico`
--

LOCK TABLES `semestreacademico` WRITE;
/*!40000 ALTER TABLE `semestreacademico` DISABLE KEYS */;
INSERT INTO `semestreacademico` VALUES (1,'2019-I',15,1),(2,'2019-I',14,2),(3,'2018-I',16,3),(4,'2019-I',12,4),(5,'2019-I',13,5);
/*!40000 ALTER TABLE `semestreacademico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cargabd'
--

--
-- Dumping routines for database 'cargabd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 19:02:54
