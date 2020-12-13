-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: english_test
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cauhoi`
--

DROP TABLE IF EXISTS `cauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cauhoi` (
  `id_cauhoi` int NOT NULL,
  `noiDungCauHoi` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danhMuc` int NOT NULL,
  `level_cauHoi` int NOT NULL,
  `idNoiDungCauHoi` int DEFAULT NULL,
  PRIMARY KEY (`id_cauhoi`),
  KEY `level_cauhoi_1_idx` (`level_cauHoi`),
  KEY `danhmuc_idx` (`danhMuc`),
  KEY `idNoiDungCauHoi_idx` (`idNoiDungCauHoi`),
  CONSTRAINT `danhmuc` FOREIGN KEY (`danhMuc`) REFERENCES `danhmuc` (`danhmuc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idNoiDungCauHoi` FOREIGN KEY (`idNoiDungCauHoi`) REFERENCES `noidungcauhoi` (`idNoiDungCauHoi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `level_cauhoi_1` FOREIGN KEY (`level_cauHoi`) REFERENCES `level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauhoi`
--

LOCK TABLES `cauhoi` WRITE;
/*!40000 ALTER TABLE `cauhoi` DISABLE KEYS */;
INSERT INTO `cauhoi` VALUES (1,'What __ your name?',1,1,1),(2,'Where __ you live',1,1,1),(3,'how __ you',1,2,1),(4,'how many people __ in your family?',1,3,1);
/*!40000 ALTER TABLE `cauhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhmuc` (
  `danhmuc` int NOT NULL,
  PRIMARY KEY (`danhmuc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhmuc`
--

LOCK TABLES `danhmuc` WRITE;
/*!40000 ALTER TABLE `danhmuc` DISABLE KEYS */;
INSERT INTO `danhmuc` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `danhmuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocvien`
--

DROP TABLE IF EXISTS `hocvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocvien` (
  `mssv_id` int NOT NULL,
  `hoTen` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queQuan` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaySinh` date DEFAULT NULL,
  `ngayGiaNhap` date DEFAULT NULL,
  PRIMARY KEY (`mssv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocvien`
--

LOCK TABLES `hocvien` WRITE;
/*!40000 ALTER TABLE `hocvien` DISABLE KEYS */;
INSERT INTO `hocvien` VALUES (1254,'ljy','kjh','mmm','1999-01-12','2020-11-30'),(1815,'lll','mm','n','2000-01-16','2020-11-30'),(18510000,'ljqjq','lala','nam','2000-10-22','2020-11-30'),(1851050150,'Huynh Thi Ngoc Trang','Binh Dinh','nu','2018-01-01','2020-11-22'),(1851050154,'Le Hai Trieu','Binh Thuan','nam','2000-01-16','2000-08-07'),(1851050155,'lê thË b°ßi','bình ph°Ûc','nï','1999-01-01','2020-11-30'),(1951050154,'Lê Ân ình','Bình Thu­n','Nam','2000-02-20','2020-11-30'),(2021000000,'lhttt','bitnhh','n','2020-11-12','2020-12-10');
/*!40000 ALTER TABLE `hocvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketqua`
--

DROP TABLE IF EXISTS `ketqua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ketqua` (
  `idketqua` int NOT NULL,
  `soCauThucHien` int DEFAULT NULL,
  `diem` int DEFAULT NULL,
  `ngayThucHien` datetime NOT NULL,
  `fromCauHoiLuyenTap` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_mssv` int NOT NULL,
  PRIMARY KEY (`idketqua`),
  KEY `Id_mssv_2_idx` (`id_mssv`),
  CONSTRAINT `Id_mssv_2` FOREIGN KEY (`id_mssv`) REFERENCES `hocvien` (`mssv_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketqua`
--

LOCK TABLES `ketqua` WRITE;
/*!40000 ALTER TABLE `ketqua` DISABLE KEYS */;
/*!40000 ALTER TABLE `ketqua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level` (
  `level` int NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level`
--

LOCK TABLES `level` WRITE;
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
INSERT INTO `level` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luyentap`
--

DROP TABLE IF EXISTS `luyentap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luyentap` (
  `idluyentap` int NOT NULL,
  `have_done` tinyint DEFAULT NULL,
  `id_mssv` int NOT NULL,
  `id_cauhoi` int NOT NULL,
  PRIMARY KEY (`idluyentap`),
  KEY `id_mssv_idx` (`id_mssv`),
  KEY `id_cauhoi_idx` (`id_cauhoi`),
  CONSTRAINT `id_cauhoi_3` FOREIGN KEY (`id_cauhoi`) REFERENCES `cauhoi` (`id_cauhoi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_mssv_1` FOREIGN KEY (`id_mssv`) REFERENCES `hocvien` (`mssv_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luyentap`
--

LOCK TABLES `luyentap` WRITE;
/*!40000 ALTER TABLE `luyentap` DISABLE KEYS */;
INSERT INTO `luyentap` VALUES (1,1,1851050154,1);
/*!40000 ALTER TABLE `luyentap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noidungcauhoi`
--

DROP TABLE IF EXISTS `noidungcauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noidungcauhoi` (
  `idNoiDungCauHoi` int NOT NULL,
  `noiDung` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danhMuc` int DEFAULT NULL,
  PRIMARY KEY (`idNoiDungCauHoi`),
  KEY `id_danhMuc_idx` (`danhMuc`),
  CONSTRAINT `id_danhMuc` FOREIGN KEY (`danhMuc`) REFERENCES `danhmuc` (`danhmuc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noidungcauhoi`
--

LOCK TABLES `noidungcauhoi` WRITE;
/*!40000 ALTER TABLE `noidungcauhoi` DISABLE KEYS */;
INSERT INTO `noidungcauhoi` VALUES (1,NULL,NULL);
/*!40000 ALTER TABLE `noidungcauhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phuongan`
--

DROP TABLE IF EXISTS `phuongan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phuongan` (
  `id_phuongAn` int NOT NULL,
  `giaiThich` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dapAn` tinyint NOT NULL,
  `noiDung` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cauhoi` int NOT NULL,
  PRIMARY KEY (`id_phuongAn`),
  KEY `id_cauhoi_idx` (`id_cauhoi`),
  CONSTRAINT `id_cauhoi` FOREIGN KEY (`id_cauhoi`) REFERENCES `cauhoi` (`id_cauhoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phuongan`
--

LOCK TABLES `phuongan` WRITE;
/*!40000 ALTER TABLE `phuongan` DISABLE KEYS */;
INSERT INTO `phuongan` VALUES (1,NULL,1,'are',1),(2,NULL,0,'is',1),(3,NULL,0,'do',1),(4,NULL,1,'do',2),(5,NULL,0,'love',2),(6,NULL,0,'are',2),(7,NULL,0,'is',2),(8,NULL,1,'are',3),(9,NULL,0,'am',3),(10,NULL,0,'is',3),(11,NULL,1,'are there',4),(12,NULL,0,'is there',4),(13,NULL,0,'am there',4);
/*!40000 ALTER TABLE `phuongan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 23:01:57
