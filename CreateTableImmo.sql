-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: annonces-immo
-- ------------------------------------------------------
-- Server version 5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ann_annonce`
--

USE annonces_immo

DROP TABLE IF EXISTS `ann_annonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ann_annonce` (
  `ann_oid` int(11) NOT NULL AUTO_INCREMENT,
  `ann_titre` varchar(50) DEFAULT NULL,
  `ann_prix` int(11) DEFAULT NULL,
  `ann_description` varchar(250) DEFAULT NULL,
  `rub_oid` int(11) DEFAULT NULL,
  `uti_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ann_oid`),
  KEY `rub_oid` (`rub_oid`),
  KEY `uti_oid` (`uti_oid`),
  CONSTRAINT `ann_annonce_ibfk_1` FOREIGN KEY (`rub_oid`) REFERENCES `rub_rubrique` (`rub_oid`) ON DELETE CASCADE,
  CONSTRAINT `ann_annonce_ibfk_2` FOREIGN KEY (`uti_oid`) REFERENCES `uti_utilisateur` (`uti_oid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ann_annonce`
--

LOCK TABLES `ann_annonce` WRITE;
/*!40000 ALTER TABLE `ann_annonce` DISABLE KEYS */;
INSERT INTO `ann_annonce` VALUES (1,'Gite en Corse', 2500, 'Magnifique gite au bord de la mer avec 5 chambres',6,1),(2,'Tente 2 palces', 250, 'Tente deux places dans camping montagnard',8,2),(3,'Maison pour famille', 300000, 'Maison de village avec 4 chambres, ideal pour famille',2,3);
/*!40000 ALTER TABLE `ann_annonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rub_rubrique`
--

DROP TABLE IF EXISTS `rub_rubrique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rub_rubrique` (
  `rub_oid` int(11) NOT NULL AUTO_INCREMENT,
  `rub_label` varchar(50) DEFAULT NULL,
  `rub_ordre` int(11) DEFAULT NULL,
  `rub_oid_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`rub_oid`),
  KEY `rub_oid_parent` (`rub_oid_parent`),
  CONSTRAINT `rub_rubrique_ibfk_1` FOREIGN KEY (`rub_oid_parent`) REFERENCES `rub_rubrique` (`rub_oid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rub_rubrique`
--

LOCK TABLES `rub_rubrique` WRITE;
/*!40000 ALTER TABLE `rub_rubrique` DISABLE KEYS */;
INSERT INTO `rub_rubrique` VALUES (1,'Immobilier',10,NULL),(2,'Vente',20,1),(3,'Location',30,1),(4,'Colocation',40,1),(5,'Vacances',110,NULL),(6,'Gite',120,5),(7,'Hotel',130,5),(8,'Camping',140,5);
/*!40000 ALTER TABLE `rub_rubrique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uti_utilisateur`
--

DROP TABLE IF EXISTS `uti_utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uti_utilisateur` (
  `uti_oid` int(11) NOT NULL AUTO_INCREMENT,
  `uti_prenom` varchar(50) DEFAULT NULL,
  `uti_nom` varchar(50) DEFAULT NULL,
  `uti_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`uti_oid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uti_utilisateur`
--

LOCK TABLES `uti_utilisateur` WRITE;
/*!40000 ALTER TABLE `uti_utilisateur` DISABLE KEYS */;
INSERT INTO `uti_utilisateur` VALUES (1,'Jean','Lerroy',22),(2,'Emilie','Dupont',35),(3,'Pierre','Sauvage',17);
/*!40000 ALTER TABLE `uti_utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-23 14:44:13