-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: CollegeCard
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `AdminLogin`
--

DROP TABLE IF EXISTS `AdminLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdminLogin` (
  `AdminID` varchar(10) NOT NULL,
  `PWD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminLogin`
--

LOCK TABLES `AdminLogin` WRITE;
/*!40000 ALTER TABLE `AdminLogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `AdminLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BusLogin`
--

DROP TABLE IF EXISTS `BusLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusLogin` (
  `ID` varchar(10) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusLogin`
--

LOCK TABLES `BusLogin` WRITE;
/*!40000 ALTER TABLE `BusLogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `BusLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BusTransac`
--

DROP TABLE IF EXISTS `BusTransac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusTransac` (
  `TransactionID` varchar(15) NOT NULL,
  `StudentID` varchar(10) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `BusTransac_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `Transactions` (`TransactionID`),
  CONSTRAINT `BusTransac_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `StudentInfo` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusTransac`
--

LOCK TABLES `BusTransac` WRITE;
/*!40000 ALTER TABLE `BusTransac` DISABLE KEYS */;
/*!40000 ALTER TABLE `BusTransac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BusWorker`
--

DROP TABLE IF EXISTS `BusWorker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusWorker` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `designation` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `BusWorker_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `BusLogin` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusWorker`
--

LOCK TABLES `BusWorker` WRITE;
/*!40000 ALTER TABLE `BusWorker` DISABLE KEYS */;
/*!40000 ALTER TABLE `BusWorker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LibLogin`
--

DROP TABLE IF EXISTS `LibLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LibLogin` (
  `ID` varchar(10) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `LibLogin_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `LibWorker` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LibLogin`
--

LOCK TABLES `LibLogin` WRITE;
/*!40000 ALTER TABLE `LibLogin` DISABLE KEYS */;
INSERT INTO `LibLogin` VALUES ('Lib1','UXFoAkf3Ny'),('Lib2','K5jFBIc2P8');
/*!40000 ALTER TABLE `LibLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LibTransac`
--

DROP TABLE IF EXISTS `LibTransac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LibTransac` (
  `TransactionID` varchar(15) NOT NULL,
  `StudentID` varchar(10) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `LibTransac_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `Transactions` (`TransactionID`),
  CONSTRAINT `LibTransac_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `StudentInfo` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LibTransac`
--

LOCK TABLES `LibTransac` WRITE;
/*!40000 ALTER TABLE `LibTransac` DISABLE KEYS */;
/*!40000 ALTER TABLE `LibTransac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LibWorker`
--

DROP TABLE IF EXISTS `LibWorker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LibWorker` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `designation` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LibWorker`
--

LOCK TABLES `LibWorker` WRITE;
/*!40000 ALTER TABLE `LibWorker` DISABLE KEYS */;
INSERT INTO `LibWorker` VALUES ('Lib1','ads','asd'),('Lib2','ads','asd');
/*!40000 ALTER TABLE `LibWorker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MessLogin`
--

DROP TABLE IF EXISTS `MessLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MessLogin` (
  `ID` varchar(10) NOT NULL,
  `PWD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MessLogin`
--

LOCK TABLES `MessLogin` WRITE;
/*!40000 ALTER TABLE `MessLogin` DISABLE KEYS */;
INSERT INTO `MessLogin` VALUES ('Mess1','L8tPFWs1kq'),('Mess2','hJfD8JQZaJ'),('Mess3','2zuJcE6jbG');
/*!40000 ALTER TABLE `MessLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MessTransac`
--

DROP TABLE IF EXISTS `MessTransac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MessTransac` (
  `TransactionID` varchar(15) NOT NULL,
  `StudentID` varchar(10) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  CONSTRAINT `MessTransac_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `Transactions` (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MessTransac`
--

LOCK TABLES `MessTransac` WRITE;
/*!40000 ALTER TABLE `MessTransac` DISABLE KEYS */;
/*!40000 ALTER TABLE `MessTransac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MessWorker`
--

DROP TABLE IF EXISTS `MessWorker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MessWorker` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `designation` varchar(25) DEFAULT NULL,
  `messname` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `MessWorker_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MessLogin` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MessWorker`
--

LOCK TABLES `MessWorker` WRITE;
/*!40000 ALTER TABLE `MessWorker` DISABLE KEYS */;
INSERT INTO `MessWorker` VALUES ('Mess1','lkhjj','gfn,','a'),('Mess2','Satyam','ldjs','b'),('Mess3','sarthak kamra','sweeper','b');
/*!40000 ALTER TABLE `MessWorker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OfficeLogin`
--

DROP TABLE IF EXISTS `OfficeLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OfficeLogin` (
  `ID` varchar(10) NOT NULL,
  `PWD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OfficeLogin`
--

LOCK TABLES `OfficeLogin` WRITE;
/*!40000 ALTER TABLE `OfficeLogin` DISABLE KEYS */;
INSERT INTO `OfficeLogin` VALUES ('Office1','3DtqkAykxE'),('Office2','BfXUuI2O6F');
/*!40000 ALTER TABLE `OfficeLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OfficeTransac`
--

DROP TABLE IF EXISTS `OfficeTransac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OfficeTransac` (
  `TransactionID` varchar(15) NOT NULL,
  `StudentID` varchar(10) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  CONSTRAINT `OfficeTransac_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `Transactions` (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OfficeTransac`
--

LOCK TABLES `OfficeTransac` WRITE;
/*!40000 ALTER TABLE `OfficeTransac` DISABLE KEYS */;
/*!40000 ALTER TABLE `OfficeTransac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OfficeWorker`
--

DROP TABLE IF EXISTS `OfficeWorker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OfficeWorker` (
  `ID` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `designation` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `OfficeWorker_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `OfficeLogin` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OfficeWorker`
--

LOCK TABLES `OfficeWorker` WRITE;
/*!40000 ALTER TABLE `OfficeWorker` DISABLE KEYS */;
INSERT INTO `OfficeWorker` VALUES ('Office1','dvdsv','gsegsesge'),('Office2','satya','ssffs');
/*!40000 ALTER TABLE `OfficeWorker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentBAL`
--

DROP TABLE IF EXISTS `StudentBAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentBAL` (
  `StudentID` varchar(10) NOT NULL,
  `BAL` int(11) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  CONSTRAINT `StudentBAL_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `StudentInfo` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentBAL`
--

LOCK TABLES `StudentBAL` WRITE;
/*!40000 ALTER TABLE `StudentBAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `StudentBAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentInfo`
--

DROP TABLE IF EXISTS `StudentInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentInfo` (
  `StudentID` varchar(10) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Phone` float DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Gender` tinyint(4) DEFAULT NULL,
  `Course` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentInfo`
--

LOCK TABLES `StudentInfo` WRITE;
/*!40000 ALTER TABLE `StudentInfo` DISABLE KEYS */;
INSERT INTO `StudentInfo` VALUES ('a','a',1,'xs','s',1,'b1'),('s','s',6,'h','h',1,'b1'),('USR1','Anmol',97548,'satyshmdf,','dlfkjh',1,'b1');
/*!40000 ALTER TABLE `StudentInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentLogin`
--

DROP TABLE IF EXISTS `StudentLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentLogin` (
  `StudentID` varchar(10) NOT NULL,
  `PWD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  CONSTRAINT `StudentLogin_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `StudentInfo` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentLogin`
--

LOCK TABLES `StudentLogin` WRITE;
/*!40000 ALTER TABLE `StudentLogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `StudentLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `TransactionID` varchar(15) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `str` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES ('a');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18 18:24:37
