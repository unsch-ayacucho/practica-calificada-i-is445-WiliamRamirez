CREATE DATABASE  IF NOT EXISTS `cargabd1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cargabd1`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: cargabd1
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
-- Table structure for table `cargaacademica`
--

DROP TABLE IF EXISTS `cargaacademica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cargaacademica` (
  `idcargaacademica` int(11) NOT NULL,
  `horascargaacademica` varchar(45) NOT NULL,
  PRIMARY KEY (`idcargaacademica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargaacademica`
--

LOCK TABLES `cargaacademica` WRITE;
/*!40000 ALTER TABLE `cargaacademica` DISABLE KEYS */;
INSERT INTO `cargaacademica` VALUES (1,'16'),(2,'14'),(3,'11');
/*!40000 ALTER TABLE `cargaacademica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `docente` (
  `iddocente` int(11) NOT NULL,
  `nombredocente` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `semestreacademico_idsemestreacademico` int(11) NOT NULL,
  `cargaacademica_idcargaacademica` int(11) NOT NULL,
  PRIMARY KEY (`iddocente`),
  KEY `fk_docente_semestreacademico1_idx` (`semestreacademico_idsemestreacademico`),
  KEY `fk_docente_cargaacademica1_idx` (`cargaacademica_idcargaacademica`),
  CONSTRAINT `fk_docente_cargaacademica1` FOREIGN KEY (`cargaacademica_idcargaacademica`) REFERENCES `cargaacademica` (`idcargaacademica`),
  CONSTRAINT `fk_docente_semestreacademico1` FOREIGN KEY (`semestreacademico_idsemestreacademico`) REFERENCES `semestreacademico` (`idsemestreacademico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Fredy Barrientos',1,1),(2,'Damariz Solier',2,2),(3,'Wiliam Ramirez',3,3);
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
  PRIMARY KEY (`idsemestreacademico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestreacademico`
--

LOCK TABLES `semestreacademico` WRITE;
/*!40000 ALTER TABLE `semestreacademico` DISABLE KEYS */;
INSERT INTO `semestreacademico` VALUES (1,'2019-I'),(2,'2018-II'),(3,'2019-I');
/*!40000 ALTER TABLE `semestreacademico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cargabd1'
--

--
-- Dumping routines for database 'cargabd1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-12  8:43:01
