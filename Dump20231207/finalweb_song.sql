-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: finalweb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `songname` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `releaseday` varchar(45) NOT NULL,
  `urlsong` varchar(1000) NOT NULL,
  `urlimg` varchar(1000) NOT NULL,
  `albumname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`songname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('Chi Mot Dem Nua Thoi','Rap','MCK','10/10/2020','/music/ChiMotDemNuaThoi-RPTMCKtlinh-8899611.mp3','/images/mck.jpg','LONG'),('Cho Minh Em','Rap','Binz','10/10/2020','/music/ChoMinhEm-Binz-6330310.mp3','/images/binz.jpg','BINZ'),('Choi DO','Rap','MCK','10/10/2020','/music/Choido-RPTMCKWxrdie-6893107.mp3','/images/mck.jpg','LONG'),('Con Mua Xa Dan','Rap','Son Tung','10/10','/music/ConMuaXaDan-SonTungMTP-8033250.mp3','/images/th (1).jpg','SONTUNG'),('Muon Roi Ma Sao Con','Rap','Son Tung','10/10','/music/MuonRoiMaSaoCon-SonTungMTP-7011803.mp3','/images/th (2).jpg','SONTUNG'),('Nang Am Ngang Qua','Rap','Son Tung','10/10','/music/NangAmNgangQua-SonTungMTP-8033251.mp3','/images/th.jpg','SONTUNG'),('Nau Cho Em An','Rap','Den','10/10/2020','/music/NauChoEmAn.mp3','/images/DenVauSinger.jpg','DenVau'),('Nau Cho Em An 3','Rap','Binz','10/10/2020','/music/_music_NauChoEmAn.mp3','/images/SonTung.jpg','Web'),('Vai Lan Don Dua','Rap','MCK','10/10/2020','/music/VaiLanDonDuaCover-MCK-9057510.mp3','/images/mck.jpg','LONG');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07  6:12:33
