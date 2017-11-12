-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: newsup
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `query` varchar(20) NOT NULL,
  `content` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'olahraga','1. Cedera Irving Rugikan Boston Celtics\r\n\r\nBintang Boston Celtics, Kyrie Irving diketahui mengalami cedera tulang retak dan harus absen saat timnya menghadapi Toronto Raptors\r\n\r\n2. Start dari Pit Lane, Hamilton Akui Bikin Kesalahan\r\n\r\nJuara dunia Formula 1 2017, Lewis Hamilton, mengalami kecelakaan saat kualifikasi 1 (Q1) GP Brasil, Sabtu (11/11/2017) sehingga start dari pit lane.\r\n\r\n3. Kalah Dua Game dari Momota, Ihsan Gagal Juara di Makau\r\n\r\nPebulu tangkis tunggal putra Indonesia, Ihsan Maulana Mustofa, gagal meraih gelar turnamen Makau Terbuka Grand Prix Gold 2017. Dia kalah dari Momota.'),(2,'ekonomi','1. Pemimpin APEC Sepakat Dukung Pertumbuhan Ekonomi dan Kemakmuran\r\n\r\nDeklarasi Da Nang menegaskan komitmen para pemimpin negara APEC untuk mendukung pertumbuhan ekonomi dan kemakmuran yang berkelanjutan di kawasan Asia\r\n\r\n2. Pesta Belanja Online Alibaba Tembus Rekor Transaksi\r\n\r\nPesta belanja online Alibaba atau 11.11 Global Shopping Festival 2017 membukukan transaksi 25 miliar dollar AS atau 168 miliar Yuan selama 24 jam.\r\n\r\n3. Bisnis Ternak, Astra Agro Lestari Datangkan Ribuan Sapi Australia\r\n\r\nSapi-sapi yang diimpor dari Australia ini dikembangkan menjadi dua jenis, yakni untuk pembibitan dan untuk penggemukan.'),(3,'teknologi','1. Chrome Akan Berantas Iklan \"Redirect\" yang Menyebalkan\r\n\r\nIklan-iklan saat ini masih bisa mengakali pemblokir pop-up mengalihkan pengunjung situs ke laman lain (redirect). Google akan menumpas hal tersebut.\r\n\r\n2. Kostum \"Iron Man\" Asal Inggris Pecahkan Rekor Terbang\r\n\r\nSeorang penemu asal inggris berhasil menciptakan baju ala \"Iron Man\" dengan kecepatan terbang paling fantastis. Rekor dunia pun berhasil diraih.\r\n\r\n3. Qualcomm, Xiaomi, Oppo, dan Vivo Teken Kerja Sama Ratusan Triliun\r\n\r\nBerkat kunjungan Trump ke China, Qualcomm bekerja sama dengan Xiaomi, Vivo dan OPPO. Nilainya mencapai ratusan triliun rupiah.\r\n'),(4,'politik','1. 43 Caleg PSI Ikuti Seleksi Gelombang Kedua\r\n\r\nSebanyak 43 calon anggota legislatif (caleg) Partai Solidaritas Indonesia (PSI) mengikuti seleksi pada gelombang kedua. PSI melibatkan sejumlah tokoh sebagai juri dalam seleksi tersebut.\r\n\r\nMereka di antaranya mantan Wakil Ketua KPK Bibit Samad Rianto, Ketua Yayasan Lembaga Perlindungan Anak Indonesia (YLPAI) Seto Mulyadi, mantan Komisioner Komnas Perempuan Henny Supolo, pakar politik Djayadi Hanan dan sejumlah tokoh lain.\r\n\r\n2. PDIP Belum Putuskan Cagub Pilkada Jabar\r\n\r\nPartai Demokrasi Indonesia Perjuangan (PDIP) masih menggodok sosok yang akan diusung dalam ajang Pilkada Jawa Barat 2018. Termasuk soal isu merapatnya Dedi Mulyadi ke kubu PDIP.\r\n\r\n3.DPD Golkar Mengaku Solid Dukung Novanto Meski Berstatus Tersangka \r\n\r\nSebanyak 24 Ketua DPD I Golkar berkumpul di Kantor DPP setelah sang ketum, Setya Novanto ditetapkan sebagai tersangka lagi. Mereka mengaku tetap solid mendukung Novanto.\r\n\r\nHal itu disampaikan oleh Ketua DPD Partai Golkar Provinsi Bali, I Ketut Sudikerta di Kantor DPP Partai Golkar, Jalan Anggrek Neli Murni, Jakarta, Minggu (12/11/2017). Para Ketua DPD Golkar itu berkumpul di acara topping off Gedung Panca Bakti Golkar. '),(5,'Selamat pagi','Halo! Selamat pagi juga'),(6,'Selamat siang','Halo! Selamat siang juga'),(7,'Selamat malam','Halo! Selamat malam');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-12 17:09:11
