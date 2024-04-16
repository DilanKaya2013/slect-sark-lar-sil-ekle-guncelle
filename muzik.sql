-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.0.30 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- muzik için veritabanı yapısı dökülüyor
DROP DATABASE IF EXISTS `muzik`;
CREATE DATABASE IF NOT EXISTS `muzik` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_turkish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `muzik`;

-- tablo yapısı dökülüyor muzik.sarkilar
DROP TABLE IF EXISTS `sarkilar`;
CREATE TABLE IF NOT EXISTS `sarkilar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) CHARACTER SET utf16 COLLATE utf16_turkish_ci DEFAULT NULL,
  `sanatci` varchar(50) CHARACTER SET utf16 COLLATE utf16_turkish_ci DEFAULT NULL,
  `yil` int DEFAULT NULL,
  `tur` varchar(50) CHARACTER SET utf16 COLLATE utf16_turkish_ci DEFAULT NULL,
  `sure` int DEFAULT NULL,
  `eklenme_tarihi` date DEFAULT NULL,
  `favori` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

-- muzik.sarkilar: ~91 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `sarkilar`;
INSERT INTO `sarkilar` (`id`, `ad`, `sanatci`, `yil`, `tur`, `sure`, `eklenme_tarihi`, `favori`) VALUES
	(1, 'Aşk Laftan Anlamaz Ki', 'Atiye', 2014, 'Pop', 230, '2023-04-01', b'1'),
	(2, 'Yıkılmışım Ben', 'Şebnem Ferah', 2000, 'Rock', 320, '2023-04-02', b'0'),
	(3, 'Yalan', 'Hande Yener', 2005, 'Pop', 200, '2023-04-03', b'1'),
	(4, 'Yalnızlar Rıhtımı', 'Cem Karaca', 1974, 'Rock', 180, '2023-04-04', b'0'),
	(5, 'Yıldızların Altında', 'Sezen Aksu', 1991, 'Pop', 250, '2023-04-05', b'1'),
	(6, 'Kanatlarım Var Ruhumda', 'Şebnem Ferah', 1998, 'Rock', 280, '2023-04-06', b'0'),
	(7, 'Gesi Bağları', 'Müzeyyen Senarist', 1960, 'Türk Halk Müziği', 210, '2023-04-07', b'1'),
	(8, 'Anladım', 'Sezen Aksu', 1985, 'Pop', 190, '2023-04-08', b'0'),
	(9, 'Kalp Unutmaz', 'Emre Aydın', 2012, 'Pop', 215, '2023-04-09', b'1'),
	(10, 'Gülümse Kaderine', 'İncesaz', 2003, 'Türk Sanat Müziği', 240, '2023-04-10', b'0'),
	(11, 'İncirler Olana Kadar', 'Aynur Aydın', 2006, 'Pop', 300, '2023-04-11', b'1'),
	(12, 'Bir Şarkı Sen', 'Hande Yener', 2002, 'Pop', 210, '2023-04-12', b'0'),
	(13, 'Ah Bu Şarkıların Gözü Kör Olsun', 'Emre Aydın', 2015, 'Pop', 245, '2023-04-13', b'1'),
	(14, 'Aynı Şehrin Rüzgarları', 'Ajda Pekkan', 1993, 'Pop', 270, '2023-04-14', b'0'),
	(15, 'Deli', 'Manga', 2006, 'Rock', 220, '2023-04-15', b'1'),
	(16, 'Bir Kızıl Goncaya Benzer Dudağın', 'Nükhet Duru', 1979, 'Türk Halk Müziği', 195, '2023-04-16', b'0'),
	(17, 'Farkında Mısın?', 'Hande Yener', 2008, 'Pop', 225, '2023-04-17', b'1'),
	(18, 'Bir Kadın Çizeceksin', 'Erdal Erzincan', 1997, 'Türk Halk Müziği', 180, '2023-04-18', b'0'),
	(19, 'Düşman Dostlar', 'Cem Karaca', 1971, 'Rock', 260, '2023-04-19', b'1'),
	(20, 'Bir Zamanlar Deli Gönlüm', 'İncesaz', 2001, 'Türk Sanat Müziği', 230, '2023-04-20', b'0'),
	(21, 'Gözyaşı Çetesi', 'Sezen Aksu', 1994, 'Pop', 280, '2023-04-21', b'1'),
	(22, 'Bir Fırtına Tuttu Bizi', 'Şebnem Ferah', 1999, 'Rock', 300, '2023-04-22', b'0'),
	(23, 'Gel Aşkım', 'Yalın', 2007, 'Pop', 210, '2023-04-23', b'1'),
	(24, 'Bir Nefes Gibi', 'Tarkan', 1995, 'Pop', 260, '2023-04-24', b'0'),
	(25, 'Hadi Gel Gezelim', 'Selda Bağcan', 1977, 'Türk Halk Müziği', 225, '2023-04-25', b'1'),
	(26, 'Biraz Pop Biraz Sezen', 'Bora Duran', 2010, 'Pop', 190, '2023-04-26', b'0'),
	(27, 'Hasret Gültekin', 'Hasret Gültekin', 1987, 'Türk Halk Müziği', 240, '2023-04-27', b'1'),
	(28, 'Büklüm Büklüm', 'Şebnem Ferah', 2003, 'Rock', 280, '2023-04-28', b'0'),
	(29, 'Hayat Bayram Olsa', 'Şebnem Ferah', 2008, 'Rock', 250, '2023-04-29', b'1'),
	(30, 'Caddelerde Rüzgar', 'Sertab Erener', 1998, 'Pop', 230, '2023-04-30', b'0'),
	(31, 'Hep Sonradan', 'Beyza Durmaz', 2013, 'Pop', 200, '2023-05-01', b'1'),
	(32, 'Deli', 'Ajda Pekkan', 1975, 'Pop', 240, '2023-05-02', b'0'),
	(33, 'İhanetten Geri Kalan', 'Gülben Ergen', 2005, 'Pop', 220, '2023-05-03', b'1'),
	(34, 'Dert Bende', 'Şebnem Ferah', 1996, 'Rock', 270, '2023-05-04', b'0'),
	(35, 'Kolay Değil', 'Murat Boz', 2009, 'Pop', 195, '2023-05-05', b'1'),
	(36, 'Dönmem', 'Tarkan', 1994, 'Pop', 260, '2023-05-06', b'0'),
	(37, 'Korkak', 'Teoman', 2000, 'Rock', 225, '2023-05-07', b'1'),
	(38, 'Dönersen Islık Çal', 'Cem Karaca', 1971, 'Rock', 210, '2023-05-08', b'0'),
	(39, 'Mazi Kalbimde Bir Yaradır', 'Yıldız Tilbe', 1995, 'Arabesk', 240, '2023-05-09', b'1'),
	(40, 'Dönme Dolap', 'Tarkan', 1997, 'Pop', 290, '2023-05-10', b'0'),
	(41, 'Mor', 'Teoman', 2001, 'Rock', 260, '2023-05-11', b'1'),
	(42, 'Dudu', 'Tarkan', 2001, 'Pop', 230, '2023-05-12', b'0'),
	(43, 'Neredesin', 'Tarkan', 1998, 'Pop', 240, '2023-05-13', b'1'),
	(44, 'Dumanlı Dumanlı Oy Bizim Eller', 'Neşet Ertaş', 1982, 'Türk Halk Müziği', 180, '2023-05-14', b'0'),
	(45, 'Nerdesin', 'Tarkan', 2001, 'Pop', 240, '2023-05-15', b'1'),
	(46, 'Düğün', 'Ajda Pekkan', 1974, 'Pop', 200, '2023-05-16', b'0'),
	(47, 'Neredesin Sen', 'Sezen Aksu', 1990, 'Pop', 230, '2023-05-17', b'1'),
	(48, 'Düşler Sokağı', 'Athena', 2003, 'Rock', 280, '2023-05-18', b'0'),
	(49, 'Nihayet', 'Cem Karaca', 1974, 'Rock', 250, '2023-05-19', b'1'),
	(50, 'Düşlerin İspiyoncusu', 'Sezen Aksu', 1988, 'Pop', 210, '2023-05-20', b'0'),
	(51, 'Ağlamak Güzeldir', 'Murat Boz', 2014, 'Pop', 240, '2023-05-21', b'1'),
	(52, 'Olmaz', 'Serdar Ortaç', 2004, 'Pop', 210, '2023-05-22', b'0'),
	(53, 'Aşkın Ateşi', 'Ali Aydın Murat ', 1997, 'Arabesk', 280, '2023-05-23', b'1'),
	(54, 'Olmaz İlaç', 'Ebru Gündeş', 2008, 'Pop', 220, '2023-05-24', b'0'),
	(55, 'Aşkın Divanesi', 'Murat Dalkılıç', 1985, 'Pop', 230, '2023-05-25', b'1'),
	(56, 'Olsun', 'Athena', 2001, 'Rock', 250, '2023-05-26', b'0'),
	(57, 'Aşkın Nur Yengi', 'Sensiz Saadet Neyleyim', 1996, 'Pop', 200, '2023-05-27', b'1'),
	(58, 'Oy Beni Vurun Vurun', 'Nesrin Sipahi', 1978, 'Türk Halk Müziği', 270, '2023-05-28', b'0'),
	(59, 'Aşkın Olayım', 'İlhan İrem', 1986, 'Pop', 230, '2023-05-29', b'1'),
	(60, 'Özgürce Yaşa', 'Cem Karaca', 1980, 'Rock', 210, '2023-05-30', b'0'),
	(61, 'Aşkla Aynı Değil', 'Sezen Aksu', 1994, 'Pop', 220, '2023-05-31', b'1'),
	(62, 'Perişan', 'Tarkan', 1998, 'Pop', 240, '2023-06-01', b'0'),
	(63, 'Aşktır Benim Neyim', 'Bendeniz', 1995, 'Pop', 230, '2023-06-02', b'1'),
	(64, 'Rüya Gibi', 'Sezen Aksu', 1991, 'Pop', 250, '2023-06-03', b'0'),
	(65, 'Aşkınla Başbaşa', 'Nükhet Duru', 1984, 'Pop', 210, '2023-06-04', b'1'),
	(66, 'Sabahın Seherinde', 'Tarkan', 1998, 'Pop', 270, '2023-06-05', b'0'),
	(67, 'Aşktır Tüm Çarelerin Anası', 'Sibel Can', 1995, 'Pop', 220, '2023-06-06', b'1'),
	(68, 'Sana Bir Şey Olmasın', 'Cem Karaca', 1980, 'Rock', 250, '2023-06-07', b'0'),
	(69, 'Aşkım Aşkım', 'Tarkan', 1997, 'Pop', 230, '2023-06-08', b'1'),
	(70, 'Sarı Çizmeli Mehmet Ağa', 'Zeki Müren', 1959, 'Türk Sanat Müziği', 200, '2023-06-09', b'0'),
	(71, 'Aşktır Beni Benden Alan', 'Bülent Ersoy', 1996, 'Arabesk', 260, '2023-06-10', b'1'),
	(72, 'Sarı Gelin', 'Ahmet Kaya', 1987, 'Türk Halk Müziği', 240, '2023-06-11', b'0'),
	(73, 'Aşktır Beni', 'Nilüfer', 1997, 'Pop', 210, '2023-06-12', b'1'),
	(74, 'Sen Ve Ben', 'Tarkan', 2001, 'Pop', 250, '2023-06-13', b'0'),
	(75, 'Aşktır Seninle Benim İşim', 'Ferdi Tayfur', 1992, 'Arabesk', 220, '2023-06-14', b'1'),
	(76, 'Sevdalım Hayat', 'Tarkan', 1997, 'Pop', 260, '2023-06-15', b'0'),
	(77, 'Aşktır Şu Bizim Divane Gönlümüz', 'Ebru Gündeş', 1997, 'Pop', 230, '2023-06-16', b'1'),
	(78, 'Sevda Değil', 'Sibel Can', 2006, 'Pop', 240, '2023-06-17', b'0'),
	(79, 'Aşktır Yaşamak', 'İzel', 1995, 'Pop', 210, '2023-06-18', b'1'),
	(80, 'Sorma', 'Gökhan Tepe', 2005, 'Pop', 250, '2023-06-19', b'0'),
	(81, 'Aşkı Bulamam Ben', 'Nesrin Sipahi', 1977, 'Türk Halk Müziği', 220, '2023-06-20', b'1'),
	(82, 'Sürgün Yılları', 'Cem Karaca', 1972, 'Rock', 260, '2023-06-21', b'0'),
	(83, 'Aşkı İçimde Gizli', 'Levent Yüksel', 2004, 'Pop', 230, '2023-06-22', b'1'),
	(84, 'Şımarık', 'Tarkan', 1997, 'Pop', 280, '2023-06-23', b'0'),
	(85, 'Aşkıma Asla Aldanma', 'Ajda Pekkan', 1972, 'Pop', 210, '2023-06-24', b'1'),
	(86, 'Şımarık', 'Şebnem Ferah', 2003, 'Rock', 240, '2023-06-25', b'0'),
	(87, 'Aşkınla Ben Yürüyemem', 'Hande Yener', 2006, 'Pop', 230, '2023-06-26', b'1'),
	(88, 'Şımarık', 'Tarkan', 1998, 'Pop', 260, '2023-06-27', b'0'),
	(89, 'Aşkınla Yaşamak', 'Gökhan Tepe', 2004, 'Pop', 220, '2023-06-28', b'1'),
	(90, 'Şıkıdım', 'Tarkan', 1998, 'Pop', 250, '2023-06-29', b'0'),
	(91, 'Aşkla Kal', 'Ajda Pekkan', 1980, 'Pop', 230, '2023-06-30', b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
