CREATE DATABASE  IF NOT EXISTS `tau` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tau`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: tau
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.10.1

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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus` (
  `busId` varchar(2) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `dmShift` float DEFAULT NULL,
  `dmCompress` float DEFAULT NULL,
  `dmAvg` float DEFAULT NULL,
  PRIMARY KEY (`busId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES ('EW','East West','00:07:00','23:00:00',1.54,2.97,7.5),('FH','Family Housing','00:07:00','23:00:00',1.555,2.9,5),('NS','North South','00:07:00','23:00:00',1.534,3.0145,12.5);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buspath`
--

DROP TABLE IF EXISTS `buspath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buspath` (
  `pathId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(7) DEFAULT NULL,
  `startsAt` varchar(3) DEFAULT NULL,
  `endsAt` varchar(3) DEFAULT NULL,
  `distance` decimal(3,1) DEFAULT NULL,
  `travelTime` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`pathId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buspath`
--

LOCK TABLES `buspath` WRITE;
/*!40000 ALTER TABLE `buspath` DISABLE KEYS */;
INSERT INTO `buspath` VALUES (20,'ADH_GAC','ADH','GAC',0.2,120),(21,'GAC_SOU','GAC','SOU',0.1,60),(22,'ADH_SOU','ADH','SOU',0.3,180),(23,'SOU_PHY','SOU','PHY',0.1,70),(24,'GAC_PHY','GAC','PHY',0.2,130),(25,'ADH_PHY','ADH','PHY',0.4,250),(26,'PHY_MMC','PHY','MMC',0.2,150),(27,'SOU_MMC','SOU','MMC',0.3,220),(28,'GAC_MMC','GAC','MMC',0.4,280),(29,'ADH_MMC','ADH','MMC',0.6,400),(30,'MMC_UA','MMC','UA',0.3,180),(31,'PHY_UA','PHY','UA',0.5,330),(32,'SOU_UA','SOU','UA',0.6,400),(33,'GAC_UA','GAC','UA',0.7,460),(34,'ADH_UA','ADH','UA',0.9,580),(35,'UA_UML','UA','UML',0.1,120),(36,'MMC_UML','MMC','UML',0.4,300),(37,'PHY_UML','PHY','UML',0.6,450),(38,'SOU_UML','SOU','UML',0.7,520),(39,'GAC_UML','GAC','UML',0.8,580),(40,'ADH_UML','ADH','UML',1.0,700),(41,'UA_MMC','UA','MMC',0.4,240),(42,'UA_UA','UA','UA',0.7,420),(45,'MMC_MMC','MMC','MMC',0.7,420),(62,'MMC_PHY','MMC','PHY',0.2,150),(69,'PHY_PHY','PHY','PHY',0.4,300),(85,'UA_PHY','UA','PHY',0.6,390),(90,'UML_MMC','UML','MMC',0.5,240),(91,'UML_UA','UML','UA',0.8,420),(92,'UML_UML','UML','UML',0.9,540),(94,'UML_PHY','UML','PHY',0.7,390),(123,'PHY_SOU','PHY','SOU',0.1,70),(132,'SOU_SOU','SOU','SOU',0.2,140),(147,'MMC_SOU','MMC','SOU',0.3,220),(157,'UA_SOU','UA','SOU',0.7,460),(162,'UML_SOU','UML','SOU',0.8,460),(163,'SOU_GAC','SOU','GAC',0.1,60),(174,'GAC_GAC','GAC','GAC',0.2,120),(186,'PHY_GAC','PHY','GAC',0.2,130),(198,'MMC_GAC','MMC','GAC',0.4,280),(204,'UA_GAC','UA','GAC',0.8,520),(210,'UML_GAC','UML','GAC',0.9,520),(211,'GAC_ADH','GAC','ADH',0.2,120),(224,'ADH_ADH','ADH','ADH',0.4,240),(231,'SOU_ADH','SOU','ADH',0.3,180),(245,'PHY_ADH','PHY','ADH',0.4,250),(252,'MMC_ADH','MMC','ADH',0.6,400),(259,'UA_ADH','UA','ADH',1.0,640),(266,'UML_ADH','UML','ADH',1.1,640),(267,'ECD_BDC','ECD','BDC',0.2,120),(268,'BDC_MMC','BDC','MMC',0.4,200),(269,'ECD_MMC','ECD','MMC',0.6,320),(270,'BDC_UML','BDC','UML',0.8,500),(271,'ECD_UML','ECD','UML',1.0,620),(276,'MMC_BDC','MMC','BDC',0.4,200),(280,'BDC_BDC','BDC','BDC',0.8,400),(284,'UML_BDC','UML','BDC',0.9,440),(285,'BDC_ECD','BDC','ECD',0.2,120),(292,'ECD_ECD','ECD','ECD',0.4,240),(296,'MMC_ECD','MMC','ECD',0.6,320),(304,'UML_ECD','UML','ECD',1.1,560);
/*!40000 ALTER TABLE `buspath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bustravel`
--

DROP TABLE IF EXISTS `bustravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bustravel` (
  `busTravelId` int(11) NOT NULL AUTO_INCREMENT,
  `pathId` int(11) DEFAULT NULL,
  `busId` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`busTravelId`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bustravel`
--

LOCK TABLES `bustravel` WRITE;
/*!40000 ALTER TABLE `bustravel` DISABLE KEYS */;
INSERT INTO `bustravel` VALUES (1,1,'FH'),(2,2,'FH'),(3,3,'FH'),(4,4,'FH'),(5,5,'FH'),(6,6,'FH'),(7,7,'FH'),(8,8,'FH'),(9,9,'FH'),(10,10,'FH'),(11,0,'FH'),(12,0,'FH'),(13,0,'FH'),(14,0,'FH'),(15,0,'FH'),(16,0,'FH'),(17,0,'FH'),(18,0,'FH'),(19,0,'FH'),(20,20,'FH'),(21,21,'FH'),(22,22,'FH'),(23,23,'FH'),(24,24,'FH'),(25,25,'FH'),(26,26,'FH'),(27,27,'FH'),(28,28,'FH'),(29,29,'FH'),(30,30,'FH'),(31,31,'FH'),(32,32,'FH'),(33,33,'FH'),(34,34,'FH'),(35,35,'FH'),(36,36,'FH'),(37,37,'FH'),(38,38,'FH'),(39,39,'FH'),(40,40,'FH'),(41,41,'FH'),(42,42,'FH'),(43,0,'FH'),(44,0,'FH'),(45,45,'FH'),(46,0,'FH'),(47,0,'FH'),(48,0,'FH'),(49,0,'FH'),(50,0,'FH'),(51,0,'FH'),(52,0,'FH'),(53,0,'FH'),(54,0,'FH'),(55,0,'FH'),(56,0,'FH'),(57,0,'FH'),(58,0,'FH'),(59,0,'FH'),(60,0,'FH'),(61,0,'FH'),(62,62,'FH'),(63,0,'FH'),(64,0,'FH'),(65,0,'FH'),(66,0,'FH'),(67,0,'FH'),(68,0,'FH'),(69,69,'FH'),(70,0,'FH'),(71,0,'FH'),(72,0,'FH'),(73,0,'FH'),(74,0,'FH'),(75,0,'FH'),(76,0,'FH'),(77,0,'FH'),(78,0,'FH'),(79,0,'FH'),(80,0,'FH'),(81,0,'FH'),(82,0,'FH'),(83,0,'FH'),(84,0,'FH'),(85,85,'FH'),(86,0,'FH'),(87,0,'FH'),(88,0,'FH'),(89,0,'FH'),(90,90,'FH'),(91,91,'FH'),(92,92,'FH'),(93,0,'FH'),(94,94,'FH'),(95,0,'FH'),(96,0,'FH'),(97,0,'FH'),(98,0,'FH'),(99,0,'FH'),(100,0,'FH'),(101,0,'FH'),(102,0,'FH'),(103,0,'FH'),(104,0,'FH'),(105,0,'FH'),(106,0,'FH'),(107,0,'FH'),(108,0,'FH'),(109,0,'FH'),(110,0,'FH'),(111,0,'FH'),(112,0,'FH'),(113,0,'FH'),(114,0,'FH'),(115,0,'FH'),(116,0,'FH'),(117,0,'FH'),(118,0,'FH'),(119,0,'FH'),(120,0,'FH'),(121,0,'FH'),(122,0,'FH'),(123,123,'FH'),(124,0,'FH'),(125,0,'FH'),(126,0,'FH'),(127,0,'FH'),(128,0,'FH'),(129,0,'FH'),(130,0,'FH'),(131,0,'FH'),(132,132,'FH'),(133,0,'FH'),(134,0,'FH'),(135,0,'FH'),(136,0,'FH'),(137,0,'FH'),(138,0,'FH'),(139,0,'FH'),(140,0,'FH'),(141,0,'FH'),(142,0,'FH'),(143,0,'FH'),(144,0,'FH'),(145,0,'FH'),(146,0,'FH'),(147,147,'FH'),(148,0,'FH'),(149,0,'FH'),(150,0,'FH'),(151,0,'FH'),(152,0,'FH'),(153,0,'FH'),(154,0,'FH'),(155,0,'FH'),(156,0,'FH'),(157,157,'FH'),(158,0,'FH'),(159,0,'FH'),(160,0,'FH'),(161,0,'FH'),(162,162,'FH'),(163,163,'FH'),(164,0,'FH'),(165,0,'FH'),(166,0,'FH'),(167,0,'FH'),(168,0,'FH'),(169,0,'FH'),(170,0,'FH'),(171,0,'FH'),(172,0,'FH'),(173,0,'FH'),(174,174,'FH'),(175,0,'FH'),(176,0,'FH'),(177,0,'FH'),(178,0,'FH'),(179,0,'FH'),(180,0,'FH'),(181,0,'FH'),(182,0,'FH'),(183,0,'FH'),(184,0,'FH'),(185,0,'FH'),(186,186,'FH'),(187,0,'FH'),(188,0,'FH'),(189,0,'FH'),(190,0,'FH'),(191,0,'FH'),(192,0,'FH'),(193,0,'FH'),(194,0,'FH'),(195,0,'FH'),(196,0,'FH'),(197,0,'FH'),(198,198,'FH'),(199,0,'FH'),(200,0,'FH'),(201,0,'FH'),(202,0,'FH'),(203,0,'FH'),(204,204,'FH'),(205,0,'FH'),(206,0,'FH'),(207,0,'FH'),(208,0,'FH'),(209,0,'FH'),(210,210,'FH'),(211,211,'FH'),(212,0,'FH'),(213,0,'FH'),(214,0,'FH'),(215,0,'FH'),(216,0,'FH'),(217,0,'FH'),(218,0,'FH'),(219,0,'FH'),(220,0,'FH'),(221,0,'FH'),(222,0,'FH'),(223,0,'FH'),(224,224,'FH'),(225,0,'FH'),(226,0,'FH'),(227,0,'FH'),(228,0,'FH'),(229,0,'FH'),(230,0,'FH'),(231,231,'FH'),(232,0,'FH'),(233,0,'FH'),(234,0,'FH'),(235,0,'FH'),(236,0,'FH'),(237,0,'FH'),(238,0,'FH'),(239,0,'FH'),(240,0,'FH'),(241,0,'FH'),(242,0,'FH'),(243,0,'FH'),(244,0,'FH'),(245,245,'FH'),(246,0,'FH'),(247,0,'FH'),(248,0,'FH'),(249,0,'FH'),(250,0,'FH'),(251,0,'FH'),(252,252,'FH'),(253,0,'FH'),(254,0,'FH'),(255,0,'FH'),(256,0,'FH'),(257,0,'FH'),(258,0,'FH'),(259,259,'FH'),(260,0,'FH'),(261,0,'FH'),(262,0,'FH'),(263,0,'FH'),(264,0,'FH'),(265,0,'FH'),(266,266,'FH'),(267,267,'EW'),(268,268,'EW'),(269,269,'EW'),(270,36,'EW'),(271,270,'EW'),(272,271,'EW'),(273,90,'EW'),(274,0,'EW'),(275,0,'EW'),(276,0,'EW'),(277,0,'EW'),(278,276,'EW'),(279,0,'EW'),(280,0,'EW'),(281,0,'EW'),(282,280,'EW'),(283,0,'EW'),(284,0,'EW'),(285,0,'EW'),(286,284,'EW'),(287,285,'EW'),(288,0,'EW'),(289,0,'EW'),(290,0,'EW'),(291,0,'EW'),(292,0,'EW'),(293,0,'EW'),(294,292,'EW'),(295,0,'EW'),(296,0,'EW'),(297,0,'EW'),(298,296,'EW'),(299,0,'EW'),(300,0,'EW'),(301,0,'EW'),(302,0,'EW'),(303,0,'EW'),(304,0,'EW'),(305,0,'EW'),(306,304,'EW'),(307,62,'NS'),(308,26,'NS'),(309,0,'NS'),(310,0,'NS'),(311,123,'NS'),(312,0,'NS'),(313,0,'NS'),(314,23,'EW'),(315,163,'NS'),(316,0,'NS'),(317,21,'NS'),(318,0,'NS'),(319,0,'NS');
/*!40000 ALTER TABLE `bustravel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eventId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `startDateTime` datetime DEFAULT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `landmarkId` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmark`
--

DROP TABLE IF EXISTS `landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landmark` (
  `landmarkId` varchar(3) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `latitude` decimal(7,4) DEFAULT NULL,
  `longitude` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`landmarkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmark`
--

LOCK TABLES `landmark` WRITE;
/*!40000 ALTER TABLE `landmark` DISABLE KEYS */;
INSERT INTO `landmark` VALUES ('ADH','Aderhold Hall',33.9440,-83.3750),('BDC','Bolton Dining Commons',33.9479,-83.3775),('BYD','BOYD',33.9460,-83.3759),('CHM','Chemistry',33.9470,-83.3750),('ECD','East Campus Deck',33.9473,-83.3785),('GAC','Georgia Centre',33.9446,-83.3771),('MMC','Memorial Hall',33.9480,-83.3771),('OIE','Office of International Educat',33.9420,-83.3775),('PHY','Physics',33.9470,-83.3755),('SOU','Soule Hall',33.9460,-83.3760),('UA','UGA Arch',33.9475,-83.3770),('UML','UGA Main Library',33.9480,-83.3730),('WSF','Warnell School of Forestry',33.9458,-83.3759);
/*!40000 ALTER TABLE `landmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `emailId` varchar(30) DEFAULT NULL,
  `userType` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','admin','TAU_Admin','admin@uga.edu','A'),('jkhalid1','jkhalid1','khalid','kj92831@uga.edu','R');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walkpath`
--

DROP TABLE IF EXISTS `walkpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walkpath` (
  `pathId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(7) DEFAULT NULL,
  `startsAt` varchar(3) DEFAULT NULL,
  `endsAt` varchar(3) DEFAULT NULL,
  `distance` decimal(6,4) DEFAULT NULL,
  `travelTime` smallint(6) DEFAULT NULL,
  `compassDirection` varchar(2) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pathId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walkpath`
--

LOCK TABLES `walkpath` WRITE;
/*!40000 ALTER TABLE `walkpath` DISABLE KEYS */;
INSERT INTO `walkpath` VALUES (1,'ADH_BYD','ADH','BYD',0.4000,464,'No','Travel Northwest crossing Warnell School of Forestry and Hardmann Hall to reach BOYD'),(2,'BYD_ADH','BYD','ADH',0.4000,464,'So','Travel South East crossing Warnell School of Forestry and Hardmann Hall to reach Aderhold Hall'),(3,'WSF_ADH','WSF','ADH',0.2000,232,'So','Travel South East crossing Creamery to reach Aderhold Hall'),(4,'ADH_WSF','ADH','WSF',0.2000,232,'So','Travel South East crossing the Creamery to reach Warnell School of Forestry.'),(5,'OIE_GAC','OIE','GAC',0.2000,232,'Ea','Travel  East  to reach Georgia Centre.'),(6,'GAC_OIE','GAC','OIE',0.2000,232,'We','Travel  West  to reach OIE.'),(7,'BDC_MMC','BDC','MMC',0.1000,116,'Ea','Travel East across the Big Dawg Cafe to reach Memorial.'),(8,'MMC_BDC','MMC','BDC',0.1000,116,'We','Travel West across the Big Dawg Cafe to reach Bolton Dining Commons.'),(9,'MMC_UA','MMC','UA',0.2000,232,'No','Travel North Across the Law Library to reach arch directly.'),(10,'UA_MMC','UA','MMC',0.2000,232,'So','Travel South Across the Law Library to reach Memorial Hall directly.'),(11,'UA_UML','UA','UML',0.1000,116,'So','Travel South East Across the Law Library to reach Main Library directly.'),(12,'UML_UA','UML','UA',0.1000,116,'No','Travel North West Across the Law Library to UGA Arch directly.'),(13,'PHY_CHM','PHY','CHM',0.1000,116,' W','Walk west directly to chemistry'),(14,'CHM_PHY','CHM','PHY',0.1000,116,' E','Walk East directly to Physics');
/*!40000 ALTER TABLE `walkpath` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-28  4:22:29
