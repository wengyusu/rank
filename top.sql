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
INSERT INTO `rank` VALUES ('BORUTO -NARUTO THE MOVIE-(完全生産限定版) [Blu-ray]',44,0),('Re:ゼロから始める異世界生活 1 [Blu-ray]',165,0),('SUPER LOVERS 第1巻 [Blu-ray]',2087,0),('TERRAFORMARS REVENGE Vol.1<初回仕様版>【Blu-ray】',36041,0),('TERRAFORMARS REVENGE Vol.1<初回仕様版>【Blu-ray】(イベントチケット優先購入抽選申込券付)',16489,0),('「美少女戦士セーラームーンCrystal Season3」 Blu-ray【初回限定版】第1巻',1290,0),('【Amazon.co.jp限定】 ガールズ&パンツァー 劇場版 (特装限定版) (戦車トークCD付) [Blu-ray]',5,0),('【Amazon.co.jp限定】おそ松さん 第五松 (オリジナル缶バッチ)(全巻購入特典:「描き下ろし【パジャ松さん】絵柄「松のれん」引換シリアルコード付) [DVD]',92,0),('【Amazon.co.jp限定】ラブライブ! μ\'s Live Collection (Live Collectionカード 31枚組(CDジャケットサイズ)付) [Blu-ray]',11,0),('あんハピ♪ 第1巻 [Blu-ray]',1530,0),('おそ松さん Blu-ray DISC 第五松',54,0),('おそ松さん DVD 第五松',26,0),('くまみこ 壱 - くまぼっくす - [Blu-ray]',211,0),('ばくおん! !  第1巻(初回限定版)(イベントチケット優先販売抽選申込券封入) [Blu-ray]',1288,0),('ふらいんぐうぃっち Vol.1 [Blu-ray]',359,0),('アイカツ! あかりGeneration Blu-ray BOX6(豪華版)(初回生産限定)',93,0),('アイドルマスターシンデレラガールズ コンプリート アニメファンブック [DVD]',4,0),('エンドライドVol.1 [Blu-ray]',66511,0),('ガールズ&パンツァー 3 (特装限定版) [Blu-ray]',76,0),('ガールズ&パンツァー これが本当のアンツィオ戦です! [Blu-ray]',36,0),('ガールズ&パンツァー 劇場版 (特装限定版) [Blu-ray]',2,0),('ガールズ&パンツァー 劇場版 [Blu-ray]',84,0),('ガールズ&パンツァー 劇場版 [DVD]',33,0),('ガールズ＆パンツァー １ (特装限定版) [Blu-ray]',69,0),('ガールズ＆パンツァー ２ (特装限定版) [Blu-ray]',77,0),('ガールズ＆パンツァー ４ (特装限定版) [Blu-ray]',86,0),('ガールズ＆パンツァー ５ (特装限定版) [Blu-ray]',87,0),('ガールズ＆パンツァー ６ (特装限定版) [Blu-ray]',79,0),('コンクリート・レボルティオ~超人幻想~ 第6巻 (特装限定版) [Blu-ray]',4024,0),('ジョジョの奇妙な冒険 ダイヤモンドは砕けない Vol.1<初回仕様版>Blu-ray',141,0),('ジョジョの奇妙な冒険 ダイヤモンドは砕けない Vol.1<初回仕様版>Blu-ray(イベントチケット(昼の部)優先購入抽選申込券付)',120,0),('ジョーカー・ゲーム Blu-ray BOX 上巻',364,0),('ゼーガペイン 10th ANNIVERSARY BOX [Blu-ray]',74,0),('ネトゲの嫁は女の子じゃないと思った? 第1巻(初回限定版)(聴猫芝居書き下ろし文庫小説同梱) [Blu-ray]',858,0),('ハイスクール・フリート 1(完全生産限定版) [Blu-ray]',200,0),('ハンドレッド 1 (初回生産限定盤)【イベント優先販売申込券付き】 [Blu-ray]',9064,0),('ビッグオーダー Blu-ray BOX 1',1093,0),('マギ シンドバッドの冒険 COMPLETE BOX(完全生産限定版) [Blu-ray]',2812,0),('マクロスΔ 01 (特装限定版) [Blu-ray]',163,0),('三者三葉 Vol.1(初回生産限定版)(イベントチケット優先販売申込み券付き) [Blu-ray]',794,0),('傷物語 I 鉄血篇(完全生産限定版) [Blu-ray]',45,0),('僕のヒーローアカデミア Vol.1(初回生産限定版)(イベントチケット優先販売申込み券付き) [Blu-ray]',1010,0),('劇場版KING OF PRISM by PrettyRhythm 初回生産特装版Blu-ray Disc',85,0),('劇場版ペルソナ3 #4 Winter of Rebirth(完全生産限定版) [Blu-ray]',73,0),('双星の陰陽師 1 [Blu-ray]',14890,0),('坂本ですが? 1(Blu-ray)',2033,0),('声優だって旅します VOL.3 梶裕貴・下野紘・森久保祥太郎/京都編 [DVD]',59,0),('学戦都市アスタリスク 2nd Season 1(完全生産限定版) [Blu-ray]',1227,0),('少年メイド vol.1 【Blu-ray 初回限定盤】',1875,0),('映画 妖怪ウォッチ エンマ大王と5つの物語だニャン!  スペシャルプライス版DVD',32,0),('暦物語(完全生産限定版) [Blu-ray]',81,0),('機動戦士ガンダム THE ORIGIN III [Blu-ray]',9,0),('機動戦士ガンダム THE ORIGIN III [DVD]',97,0),('機動戦士ガンダム サンダーボルト DECEMBER SKY (メーカー特典なし) [Blu-ray]',27,0),('機動戦士ガンダム 鉄血のオルフェンズ 6 (特装限定版) [Blu-ray]',96,0),('田中くんはいつもけだるげ 1 (特装限定版) [Blu-ray]',1657,0),('甲鉄城のカバネリ 1(完全生産限定版) [Blu-ray]',94,0),('舞台『刀剣乱舞』 [Blu-ray]',48,0),('薄桜鬼~御伽草子~ [Blu-ray]',5193,0),('迷家-マヨイガ-1 [Blu-ray]',3909,0);
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top`
--

DROP TABLE IF EXISTS `top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top` (
  `Name` varchar(255) NOT NULL,
  `Rank` int(9) DEFAULT NULL,
  `PT` int(9) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top`
--

LOCK TABLES `top` WRITE;
/*!40000 ALTER TABLE `top` DISABLE KEYS */;
INSERT INTO `top` VALUES ('BORUTO -NARUTO THE MOVIE-(完全生産限定版) [Blu-ray]',44,0),('【Amazon.co.jp限定】 ガールズ&パンツァー 劇場版 (特装限定版) (戦車トークCD付) [Blu-ray]',5,0),('【Amazon.co.jp限定】おそ松さん 第五松 (オリジナル缶バッチ)(全巻購入特典:「描き下ろし【パジャ松さん】絵柄「松のれん」引換シリアルコード付) [DVD]',92,0),('【Amazon.co.jp限定】ラブライブ! μ\'s Live Collection (Live Collectionカード 31枚組(CDジャケットサイズ)付) [Blu-ray]',11,0),('アイカツ! あかりGeneration Blu-ray BOX6(豪華版)(初回生産限定)',93,0),('アイドルマスターシンデレラガールズ コンプリート アニメファンブック [DVD]',4,0),('ガールズ&パンツァー これが本当のアンツィオ戦です! [Blu-ray]',36,0),('ガールズ&パンツァー 劇場版 (特装限定版) [Blu-ray]',2,0),('ガールズ&パンツァー 劇場版 [Blu-ray]',84,0),('ガールズ&パンツァー 劇場版 [DVD]',33,0),('ガールズ＆パンツァー １ (特装限定版) [Blu-ray]',69,0),('ガールズ＆パンツァー ２ (特装限定版) [Blu-ray]',77,0),('ガールズ＆パンツァー ４ (特装限定版) [Blu-ray]',86,0),('ガールズ＆パンツァー ５ (特装限定版) [Blu-ray]',87,0),('ガールズ＆パンツァー ６ (特装限定版) [Blu-ray]',79,0),('ゼーガペイン 10th ANNIVERSARY BOX [Blu-ray]',74,0),('傷物語 I 鉄血篇(完全生産限定版) [Blu-ray]',45,0),('劇場版KING OF PRISM by PrettyRhythm 初回生産特装版Blu-ray Disc',85,0),('劇場版ペルソナ3 #4 Winter of Rebirth(完全生産限定版) [Blu-ray]',73,0),('声優だって旅します VOL.3 梶裕貴・下野紘・森久保祥太郎/京都編 [DVD]',59,0),('映画 妖怪ウォッチ エンマ大王と5つの物語だニャン!  スペシャルプライス版DVD',32,0),('暦物語(完全生産限定版) [Blu-ray]',81,0),('機動戦士ガンダム THE ORIGIN III [Blu-ray]',9,0),('機動戦士ガンダム サンダーボルト DECEMBER SKY (メーカー特典なし) [Blu-ray]',27,0),('機動戦士ガンダム 鉄血のオルフェンズ 6 (特装限定版) [Blu-ray]',96,0),('甲鉄城のカバネリ 1(完全生産限定版) [Blu-ray]',94,0),('舞台『刀剣乱舞』 [Blu-ray]',48,0);
/*!40000 ALTER TABLE `top` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-17  2:19:06
