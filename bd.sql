-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: escomingreso
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
create table horarios (
    horario_id int primary key not null auto_increment, 
    hora_inicio time not null,
    hora_fin time not null,
    salon char(7) not null,
    dia int not null,
    lugares_ocupados int not null,
    capacidad_max int not null,
    disponible int not null
);

-- Creacion de la tabla alumno

create table alumno (
    boleta char(10) primary key not null,
    nombre varchar(50) not null,
    apellidop varchar(50) not null,
    apellidom varchar(50) not null,
    daten date not null,
    sexo bool not null,
    curp char(18) not null unique,
    calle varchar(50) not null,
    colonia varchar(50) not null,
    codpostal int(5) not null,
    tel varchar(10) not null,
    correo varchar(60) not null,
    escuela varchar(8) not null,
    entidad varchar(19) not null,
    nombreE varchar(50),
    promedio double(4,2) not null,
    escom int(1) not null, 
    horario_id int not null,
    foreign key (horario_id) REFERENCES horarios(horario_id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'07:00:00','08:30:00','SALON A',1,12,25,1),(2,'07:00:00','08:30:00','SALON B',1,0,25,1),(3,'07:00:00','08:30:00','SALON C',1,0,25,1),(4,'07:00:00','08:30:00','SALON D',1,0,25,1),(5,'07:00:00','08:30:00','SALON E',1,0,25,1),(6,'07:00:00','08:30:00','SALON F',1,0,25,1),(7,'08:45:00','10:15:00','SALON A',1,0,25,1),(8,'08:45:00','10:15:00','SALON B',1,0,25,1),(9,'08:45:00','10:15:00','SALON C',1,0,25,1),(10,'08:45:00','10:15:00','SALON D',1,0,25,1),(11,'08:45:00','10:15:00','SALON E',1,0,25,1),(12,'08:45:00','10:15:00','SALON F',1,0,25,1),(13,'10:30:00','12:00:00','SALON A',1,0,25,1),(14,'10:30:00','12:00:00','SALON B',1,0,25,1),(15,'10:30:00','12:00:00','SALON C',1,0,25,1),(16,'10:30:00','12:00:00','SALON D',1,0,25,1),(17,'10:30:00','12:00:00','SALON E',1,0,25,1),(18,'10:30:00','12:00:00','SALON F',1,0,25,1),(19,'12:15:00','13:45:00','SALON A',1,0,25,1),(20,'12:15:00','13:45:00','SALON B',1,0,25,1),(21,'12:15:00','13:45:00','SALON C',1,0,25,1),(22,'12:15:00','13:45:00','SALON D',1,0,25,1),(23,'12:15:00','13:45:00','SALON E',1,0,25,1),(24,'12:15:00','13:45:00','SALON F',1,0,25,1),(25,'14:00:00','15:30:00','SALON A',1,0,25,1),(26,'14:00:00','15:30:00','SALON B',1,0,25,1),(27,'14:00:00','15:30:00','SALON C',1,0,25,1),(28,'14:00:00','15:30:00','SALON D',1,0,25,1),(29,'14:00:00','15:30:00','SALON E',1,0,25,1),(30,'14:00:00','15:30:00','SALON F',1,0,25,1),(31,'07:00:00','08:30:00','SALON A',2,0,25,1),(32,'07:00:00','08:30:00','SALON B',2,0,25,1),(33,'07:00:00','08:30:00','SALON C',2,0,25,1),(34,'07:00:00','08:30:00','SALON D',2,0,25,1),(35,'07:00:00','08:30:00','SALON E',2,0,25,1),(36,'07:00:00','08:30:00','SALON F',2,0,25,1),(37,'08:45:00','10:15:00','SALON A',2,0,25,1),(38,'08:45:00','10:15:00','SALON B',2,0,25,1),(39,'08:45:00','10:15:00','SALON C',2,0,25,1),(40,'08:45:00','10:15:00','SALON D',2,0,25,1),(41,'08:45:00','10:15:00','SALON E',2,0,25,1),(42,'08:45:00','10:15:00','SALON F',2,0,25,1),(43,'10:30:00','12:00:00','SALON A',2,0,25,1),(44,'10:30:00','12:00:00','SALON B',2,0,25,1),(45,'10:30:00','12:00:00','SALON C',2,0,25,1),(46,'10:30:00','12:00:00','SALON D',2,0,25,1),(47,'10:30:00','12:00:00','SALON E',2,0,25,1),(48,'10:30:00','12:00:00','SALON F',2,0,25,1),(49,'12:15:00','13:45:00','SALON A',2,0,25,1),(50,'12:15:00','13:45:00','SALON B',2,0,25,1),(51,'12:15:00','13:45:00','SALON C',2,0,25,1),(52,'12:15:00','13:45:00','SALON D',2,0,25,1),(53,'12:15:00','13:45:00','SALON E',2,0,25,1),(54,'12:15:00','13:45:00','SALON F',2,0,25,1),(55,'14:00:00','15:30:00','SALON A',2,0,25,1),(56,'14:00:00','15:30:00','SALON B',2,0,25,1),(57,'14:00:00','15:30:00','SALON C',2,0,25,1),(58,'14:00:00','15:30:00','SALON D',2,0,25,1),(59,'14:00:00','15:30:00','SALON E',2,0,25,1),(60,'14:00:00','15:30:00','SALON F',2,0,25,1);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('1019630448','José Roberto','Contreras','Barrita','2021-01-06',1,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 5','Baja California','',10.00,1,1),('1119630448','José Roberto','Contreras','Barrita','2021-01-18',1,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 5','Baja California','',10.00,1,1),('2019630411','José Roberto','Contreras','Barrita','2020-12-31',0,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 6','Baja California','',10.00,3,1),('2019630447','José Roberto','Contreras','Barrita','2021-01-18',0,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 3','Baja California Sur','',10.00,2,1),('2019630748','José Roberto','Contreras','Barrita','2021-01-07',0,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 6','Baja California Sur','',10.00,2,1),('2119630418','José Roberto','Contreras','Barrita','2021-01-12',0,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 4','Campeche','',8.00,3,1),('2119630428','José Roberto','Contreras','Barrita','2021-01-12',0,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 4','Campeche','',8.00,3,1),('PE12331111','José Roberto','Contreras','Barrita','2021-01-13',0,'COBA050528MDFNRLA4','SAS','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 6','Baja California Sur','',10.00,4,1),('PE12331222','José Roberto','Contreras','Barrita','2021-01-13',1,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 5','CDMX','',5.00,1,1),('PE22331222','José Roberto','Contreras','Barrita','2021-01-05',0,'COBA050528MDFNRLA4','Lluvia Mz 2 Lt 32','Ciudad Amanecer',55267,'5516828178','contreras.jrobert@gmail.com','CECyT 8','CDMX','',10.00,2,1);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-19 13:44:15