CREATE DATABASE  IF NOT EXISTS `bgames` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bgames`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bgames
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `adquired_subattribute`
--

DROP TABLE IF EXISTS `adquired_subattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adquired_subattribute` (
  `id_adquired_subattribute` int NOT NULL AUTO_INCREMENT,
  `id_players` int NOT NULL,
  `id_subattributes_conversion_sensor_endpoint` int NOT NULL,
  `data` int DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_adquired_subattribute`)
) ENGINE=InnoDB AUTO_INCREMENT=4490 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adquired_subattribute`
--

LOCK TABLES `adquired_subattribute` WRITE;
/*!40000 ALTER TABLE `adquired_subattribute` DISABLE KEYS */;
INSERT INTO `adquired_subattribute` VALUES (1,8,2,5,'2024-01-01 15:11:47'),(2,8,3,20,'2024-01-02 11:05:27'),(3,8,1,10,'2024-01-01 18:31:15'),(4,8,2,5,'2024-01-08 21:21:51'),(5,8,2,5,'2024-01-08 21:22:18');
/*!40000 ALTER TABLE `adquired_subattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id_attributes` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `data_type` varchar(45) DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_attributes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (0,'Social','placeholder','\"placeholder\"','2022-04-20 03:14:07','2022-04-20 03:14:07'),(1,'Fisica','placeholder','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07'),(2,'Afectivo','placeholder','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07'),(3,'Cognitivo','placeholder','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07'),(4,'Linguistico','placeholder','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversion`
--

DROP TABLE IF EXISTS `conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversion` (
  `id_conversion` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `operations` varchar(200) DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_conversion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversion`
--

LOCK TABLES `conversion` WRITE;
/*!40000 ALTER TABLE `conversion` DISABLE KEYS */;
INSERT INTO `conversion` VALUES (0,'chess_rapid','conversion','x+5','2022-04-20 03:14:07','2022-04-20 03:14:07'),(2,'consume','conversion','x-2','2022-04-20 03:14:07','2022-04-20 03:14:07'),(3,'browser_activity','conversion','x+0','2024-06-24 18:00:40','2024-06-24 18:00:40');
/*!40000 ALTER TABLE `conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expended_attribute`
--

DROP TABLE IF EXISTS `expended_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expended_attribute` (
  `id_expended_attribute` int NOT NULL AUTO_INCREMENT,
  `id_players` int NOT NULL,
  `id_videogame` int NOT NULL,
  `id_modifiable_conversion_attribute` int NOT NULL,
  `data` int NOT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_expended_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expended_attribute`
--

LOCK TABLES `expended_attribute` WRITE;
/*!40000 ALTER TABLE `expended_attribute` DISABLE KEYS */;
INSERT INTO `expended_attribute` VALUES (1,8,4,1,5,'2024-01-01 15:07:15'),(2,8,3,2,5,'2024-01-01 17:06:39'),(17,8,3,2,10,'2024-01-08 21:30:14'),(18,8,3,2,10,'2024-01-08 21:31:32'),(19,8,5,3,5,'2024-06-24 20:13:12');
/*!40000 ALTER TABLE `expended_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifiable_conversion_attribute`
--

DROP TABLE IF EXISTS `modifiable_conversion_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modifiable_conversion_attribute` (
  `id_modifiable_conversion_attribute` int NOT NULL,
  `id_attributes` int NOT NULL,
  `id_conversion` int NOT NULL,
  `id_modifiable_mechanic` int NOT NULL,
  PRIMARY KEY (`id_modifiable_conversion_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifiable_conversion_attribute`
--

LOCK TABLES `modifiable_conversion_attribute` WRITE;
/*!40000 ALTER TABLE `modifiable_conversion_attribute` DISABLE KEYS */;
INSERT INTO `modifiable_conversion_attribute` VALUES (0,0,0,0),(1,1,0,4),(2,1,0,3),(3,0,0,5);
/*!40000 ALTER TABLE `modifiable_conversion_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifiable_mechanic`
--

DROP TABLE IF EXISTS `modifiable_mechanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modifiable_mechanic` (
  `id_modifiable_mechanic` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `type` set('1','2','3','4','5') DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_modifiable_mechanic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifiable_mechanic`
--

LOCK TABLES `modifiable_mechanic` WRITE;
/*!40000 ALTER TABLE `modifiable_mechanic` DISABLE KEYS */;
INSERT INTO `modifiable_mechanic` VALUES (0,'Bonus Town Size','placeholder','1','2022-04-20 03:14:07','2022-04-20 03:14:07'),(1,'Faster Peasants','placeholder','2','2022-04-20 03:14:07','2022-04-20 03:14:07'),(2,'Double life','Life points boost','1','2022-04-20 03:14:07','2022-04-20 03:14:07'),(3,'Upper Punch','Special movement attack','1','2022-04-20 03:14:07','2022-04-20 03:14:07'),(4,'Double life','Life points boost','1','2022-04-20 03:14:07','2022-04-20 03:14:07'),(5,'Buff','Applies selected Buff','1','2024-06-24 20:10:13','2022-06-24 20:10:13');
/*!40000 ALTER TABLE `modifiable_mechanic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifiable_mechanic_videogame`
--

DROP TABLE IF EXISTS `modifiable_mechanic_videogame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modifiable_mechanic_videogame` (
  `id_modifiable_mechanic_videogame` int NOT NULL,
  `id_modifiable_mechanic` int NOT NULL,
  `id_videogame` int NOT NULL,
  `options` json DEFAULT NULL,
  PRIMARY KEY (`id_modifiable_mechanic_videogame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifiable_mechanic_videogame`
--

LOCK TABLES `modifiable_mechanic_videogame` WRITE;
/*!40000 ALTER TABLE `modifiable_mechanic_videogame` DISABLE KEYS */;
INSERT INTO `modifiable_mechanic_videogame` VALUES (0,0,0,'null'),(1,3,3,'null'),(2,4,4,'null'),(3,5,5,'null');
/*!40000 ALTER TABLE `modifiable_mechanic_videogame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_sensor`
--

DROP TABLE IF EXISTS `online_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_sensor` (
  `id_online_sensor` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `base_url` varchar(1000) DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id_online_sensor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_sensor`
--

LOCK TABLES `online_sensor` WRITE;
/*!40000 ALTER TABLE `online_sensor` DISABLE KEYS */;
INSERT INTO `online_sensor` VALUES (0,'Chess Rapid','Victorias en chess rapido','\"https://api.chess.com/pub/player/\"',NULL,NULL,NULL),(1,'Podometer','Android Podometer',NULL,NULL,NULL,NULL),(2,'Browser Activity','Capture Browser tabs information',NULL,NULL,NULL,NULL),(3,'Udemy courses sensor','Udemy courses progress sensor',NULL,NULL,NULL,NULL),(4,'Fitbit Sensor','Captures activity from Fitbit',NULL,NULL,NULL,NULL),(5,'Activity Sensor','Activity Process Sensor',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `online_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players_sensor_endpoint`
--

DROP TABLE IF EXISTS `players_sensor_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players_sensor_endpoint` (
  `id_players_sensor_endpoint` int NOT NULL,
  `id_players` int NOT NULL,
  `id_sensor_endpoint` int NOT NULL,
  `specific_parameters` json DEFAULT NULL,
  `activated` tinyint(1) DEFAULT NULL,
  `schedule_time` int DEFAULT NULL,
  PRIMARY KEY (`id_players_sensor_endpoint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_sensor_endpoint`
--

LOCK TABLES `players_sensor_endpoint` WRITE;
/*!40000 ALTER TABLE `players_sensor_endpoint` DISABLE KEYS */;
INSERT INTO `players_sensor_endpoint` VALUES (2,8,2,'2',2,NULL);
/*!40000 ALTER TABLE `players_sensor_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerss`
--

DROP TABLE IF EXISTS `playerss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerss` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `age` int NOT NULL,
  `external_type` varchar(16) NOT NULL,
  `external_id` varchar(128) NOT NULL,
  `id_players` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_players`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerss`
--

LOCK TABLES `playerss` WRITE;
/*!40000 ALTER TABLE `playerss` DISABLE KEYS */;
INSERT INTO `playerss` VALUES ('test','asd123','test@test.cl',24,'none','0',0),('user','asd123','mail@mail.com',24,'none','1',1),('dev','dev','dev',1,'none','8',8);
/*!40000 ALTER TABLE `playerss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerss_attributes`
--

DROP TABLE IF EXISTS `playerss_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerss_attributes` (
  `id_playerss_attributes` int NOT NULL,
  `id_playerss` int NOT NULL,
  `id_attributes` int NOT NULL,
  `data` int DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_playerss_attributes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerss_attributes`
--

LOCK TABLES `playerss_attributes` WRITE;
/*!40000 ALTER TABLE `playerss_attributes` DISABLE KEYS */;
INSERT INTO `playerss_attributes` VALUES (0,0,0,12,'2022-04-20 03:14:07'),(1,1,0,1,'2022-04-20 03:14:07'),(2,0,1,16,'2022-04-20 03:14:07'),(3,0,2,14,'2022-04-20 03:14:07'),(4,0,3,29,'2022-04-20 03:14:07'),(5,0,4,29,'2022-04-20 03:14:07'),(6,2,0,999,'2022-04-20 03:14:07'),(7,2,1,999,'2022-04-20 03:14:07'),(8,2,2,999,'2022-04-20 03:14:07'),(9,2,3,999,'2022-04-20 03:14:07'),(10,2,4,999,'2022-04-20 03:14:07'),(11,3,0,10,'2022-04-20 03:14:07'),(12,3,1,10,'2022-04-20 03:14:07'),(13,3,2,10,'2022-04-20 03:14:07'),(14,3,3,16,'2023-12-04 23:23:00'),(15,3,4,10,'2022-04-20 03:14:07'),(16,8,0,500,'2024-01-06 06:45:40'),(17,8,1,500,'2024-08-19 07:32:51'),(18,8,2,500,'2023-12-13 00:56:09'),(19,8,3,500,'2024-06-24 23:59:03'),(20,8,4,50,'2023-12-13 00:56:09'),(21,7,0,0,'2024-06-24 23:28:33'),(22,7,1,0,'2024-06-24 23:28:33'),(23,7,2,0,'2024-06-24 23:28:33'),(24,7,3,0,'2024-06-24 23:28:33'),(25,7,4,0,'2024-06-24 23:28:33');
/*!40000 ALTER TABLE `playerss_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerss_online_sensor`
--

DROP TABLE IF EXISTS `playerss_online_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerss_online_sensor` (
  `id_players_online_sensor` int NOT NULL AUTO_INCREMENT,
  `id_online_sensor` varchar(45) NOT NULL,
  `tokens` json DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `id_players` varchar(45) NOT NULL,
  PRIMARY KEY (`id_players_online_sensor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerss_online_sensor`
--

LOCK TABLES `playerss_online_sensor` WRITE;
/*!40000 ALTER TABLE `playerss_online_sensor` DISABLE KEYS */;
INSERT INTO `playerss_online_sensor` VALUES (6,'0',NULL,'2024-06-18 06:59:53','2024-06-18 06:59:53','8'),(7,'1',NULL,'2024-06-18 06:59:55','2024-06-18 06:59:55','8'),(8,'2',NULL,'2024-06-24 21:49:07','2024-06-24 21:49:07','8'),(9,'3',NULL,'2024-06-25 16:28:34','2024-06-25 16:28:34','8'),(10,'4',NULL,'2024-07-01 22:45:22','2024-07-01 22:45:22','8'),(11,'5',NULL,'2024-07-01 22:45:22','2024-07-01 22:45:22','8');
/*!40000 ALTER TABLE `playerss_online_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_endpoint`
--

DROP TABLE IF EXISTS `sensor_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_endpoint` (
  `id_sensor_endpoint` int NOT NULL AUTO_INCREMENT,
  `sensor_endpoint_id_online_sensor` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `url_endpoint` varchar(1000) DEFAULT NULL,
  `token_parameters` json DEFAULT NULL,
  `specific_parameters` json DEFAULT NULL,
  `watch_parameters` json DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `dynamic_url` varchar(1000) DEFAULT NULL,
  `header_parameters` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_sensor_endpoint`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_endpoint`
--

LOCK TABLES `sensor_endpoint` WRITE;
/*!40000 ALTER TABLE `sensor_endpoint` DISABLE KEYS */;
INSERT INTO `sensor_endpoint` VALUES (0,0,'chess rapid','victorias en chess rapid','\"https://api.chess.com/pub/player/\"',NULL,'{\"username\": \"skuldzero\"}','{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}',NULL,NULL,NULL,NULL),(1,1,'Podometer','Android podometer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Browser Activity','Chrome Tab Activity Sensor',NULL,NULL,NULL,NULL,'2024-06-24 21:51:49','2024-06-24 21:51:49',NULL,NULL),(3,3,'Udemy courses sensor','Udemy courses progress sensor',NULL,NULL,NULL,NULL,'2024-06-25 20:19:35','2024-06-25 20:19:35',NULL,NULL),(4,4,'Fitbit Sensor','Fitbit Activity Sensor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,'Activity Sensor','Activity of desktop process ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sensor_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subattributes`
--

DROP TABLE IF EXISTS `subattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subattributes` (
  `id_subattributes` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `initiated_date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT NULL,
  `attributes_id_attributes` int NOT NULL,
  PRIMARY KEY (`id_subattributes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subattributes`
--

LOCK TABLES `subattributes` WRITE;
/*!40000 ALTER TABLE `subattributes` DISABLE KEYS */;
INSERT INTO `subattributes` VALUES (0,'Reconocimiento','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07',0),(1,'Inteligencia','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07',3),(2,'Resistencia','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07',1),(3,'Velocidad','placeholder','2022-04-20 03:14:07','2022-04-20 03:14:07',1);
/*!40000 ALTER TABLE `subattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subattributes_conversion_sensor_endpoint`
--

DROP TABLE IF EXISTS `subattributes_conversion_sensor_endpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subattributes_conversion_sensor_endpoint` (
  `id_subattributes_conversion_sensor_endpoint` int NOT NULL AUTO_INCREMENT,
  `id_subattributes` int NOT NULL,
  `id_sensor_endpoint` int NOT NULL,
  `id_conversion` int NOT NULL,
  `parameters_watched` json DEFAULT NULL,
  PRIMARY KEY (`id_subattributes_conversion_sensor_endpoint`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subattributes_conversion_sensor_endpoint`
--

LOCK TABLES `subattributes_conversion_sensor_endpoint` WRITE;
/*!40000 ALTER TABLE `subattributes_conversion_sensor_endpoint` DISABLE KEYS */;
INSERT INTO `subattributes_conversion_sensor_endpoint` VALUES (1,1,0,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}'),(2,2,1,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}'),(3,3,1,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}'),(4,1,2,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}'),(5,1,3,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}'),(6,2,4,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}'),(7,1,5,0,'{\"operations\": [\"-\"], \"parameters\": [[\"chess_rapid\", \"record\", \"win\"]], \"comparisons\": [\">\"], \"descriptions\": [\"\"]}');
/*!40000 ALTER TABLE `subattributes_conversion_sensor_endpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videogame`
--

DROP TABLE IF EXISTS `videogame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videogame` (
  `id_videogame` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `engine` varchar(45) DEFAULT NULL,
  `developer` varchar(128) DEFAULT NULL,
  `publisher` varchar(128) DEFAULT NULL,
  `version` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_videogame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogame`
--

LOCK TABLES `videogame` WRITE;
/*!40000 ALTER TABLE `videogame` DISABLE KEYS */;
INSERT INTO `videogame` VALUES (0,'StrategyGame','Strategy','GameMaker','Gerardo Ternero','none','1.0',NULL),(1,'StrategyGame','Strategy','GameMaker','Gerardo Ternero','none','1.0',NULL),(2,'Minecraft bGames Library','SandBox','Java','GSimken','none','1.19.2',NULL),(3,'Blazing Duel','Fighting','UnrealEngine','Bastian Onetto','none','1.0',NULL),(4,'Zona Cero','FPS','UnrealEngine','Ignacio Fernandez','none','1.0',NULL),(5,'Terraria bGames Mod','SandBox','C#','Claudio Munoz','none','1.0',NULL);
/*!40000 ALTER TABLE `videogame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bgames'
--

--
-- Dumping routines for database 'bgames'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 12:23:33
