-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: rank
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Rank` int(6) DEFAULT NULL,
  `PT` int(6) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES ('Re:ゼロから始める異世界生活 1 [Blu-ray]',432,0),('SUPER LOVERS 第1巻 [Blu-ray]',1291,0),('TERRAFORMARS REVENGE Vol.1<初回仕様版>【Blu-ray】',34904,0),('「美少女戦士セーラームーンCrystal Season3」 Blu-ray【初回限定版】第1巻',807,0),('あんハピ♪ 第1巻 [Blu-ray]',2049,0),('くまみこ 壱 - くまぼっくす - [Blu-ray]',185,0),('ばくおん! !  第1巻(初回限定版)(イベントチケット優先販売抽選申込券封入) [Blu-ray]',2340,0),('ふらいんぐうぃっち Vol.1 [Blu-ray]',305,0),('エンドライドVol.1 [Blu-ray]',55311,0),('コンクリート・レボルティオ~超人幻想~ 第6巻 (特装限定版) [Blu-ray]',3337,0),('ジョジョの奇妙な冒険 ダイヤモンドは砕けない Vol.1<初回仕様版>Blu-ray',167,0),('ジョーカー・ゲーム Blu-ray BOX 上巻',716,0),('ネトゲの嫁は女の子じゃないと思った? 第1巻(初回限定版)(聴猫芝居書き下ろし文庫小説同梱) [Blu-ray]',469,0),('ハイスクール・フリート 1(完全生産限定版) [Blu-ray]',203,0),('ハンドレッド 1 (初回生産限定盤)【イベント優先販売申込券付き】 [Blu-ray]',2564,0),('ビッグオーダー Blu-ray BOX 1',1965,0),('マギ シンドバッドの冒険 COMPLETE BOX(完全生産限定版) [Blu-ray]',1648,0),('マクロスΔ 01 (特装限定版) [Blu-ray]',170,0),('三者三葉 Vol.1(初回生産限定版)(イベントチケット優先販売申込み券付き) [Blu-ray]',1144,0),('僕のヒーローアカデミア Vol.1(初回生産限定版)(イベントチケット優先販売申込み券付き) [Blu-ray]',944,0),('双星の陰陽師 1 [Blu-ray]',48859,0),('坂本ですが? 1(Blu-ray)',1853,0),('学戦都市アスタリスク 2nd Season 1(完全生産限定版) [Blu-ray]',732,0),('少年メイド vol.1 【Blu-ray 初回限定盤】',1795,0),('田中くんはいつもけだるげ 1 (特装限定版) [Blu-ray]',1714,0),('甲鉄城のカバネリ 1(完全生産限定版) [Blu-ray]',59,0),('薄桜鬼~御伽草子~ [Blu-ray]',8203,0),('迷家-マヨイガ-1 [Blu-ray]',2876,0);
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-15 21:45:13
