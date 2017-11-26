-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 02:06 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsup`
--

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `query` varchar(20) NOT NULL,
  `content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `query`, `content`) VALUES
(1, 'olahraga', '1. Cedera Irving Rugikan Boston Celtics\r\n\r\nBintang Boston Celtics, Kyrie Irving diketahui mengalami cedera tulang retak dan harus absen saat timnya menghadapi Toronto Raptors\r\n\r\n2. Start dari Pit Lane, Hamilton Akui Bikin Kesalahan\r\n\r\nJuara dunia Formula 1 2017, Lewis Hamilton, mengalami kecelakaan saat kualifikasi 1 (Q1) GP Brasil, Sabtu (11/11/2017) sehingga start dari pit lane.\r\n\r\n3. Kalah Dua Game dari Momota, Ihsan Gagal Juara di Makau\r\n\r\nPebulu tangkis tunggal putra Indonesia, Ihsan Maulana Mustofa, gagal meraih gelar turnamen Makau Terbuka Grand Prix Gold 2017. Dia kalah dari Momota.'),
(2, 'ekonomi', '1. Pemimpin APEC Sepakat Dukung Pertumbuhan Ekonomi dan Kemakmuran\r\n\r\nDeklarasi Da Nang menegaskan komitmen para pemimpin negara APEC untuk mendukung pertumbuhan ekonomi dan kemakmuran yang berkelanjutan di kawasan Asia\r\n\r\n2. Pesta Belanja Online Alibaba Tembus Rekor Transaksi\r\n\r\nPesta belanja online Alibaba atau 11.11 Global Shopping Festival 2017 membukukan transaksi 25 miliar dollar AS atau 168 miliar Yuan selama 24 jam.\r\n\r\n3. Bisnis Ternak, Astra Agro Lestari Datangkan Ribuan Sapi Australia\r\n\r\nSapi-sapi yang diimpor dari Australia ini dikembangkan menjadi dua jenis, yakni untuk pembibitan dan untuk penggemukan.'),
(3, 'teknologi', '1. Chrome Akan Berantas Iklan \"Redirect\" yang Menyebalkan\r\n\r\nIklan-iklan saat ini masih bisa mengakali pemblokir pop-up mengalihkan pengunjung situs ke laman lain (redirect). Google akan menumpas hal tersebut.\r\n\r\n2. Kostum \"Iron Man\" Asal Inggris Pecahkan Rekor Terbang\r\n\r\nSeorang penemu asal inggris berhasil menciptakan baju ala \"Iron Man\" dengan kecepatan terbang paling fantastis. Rekor dunia pun berhasil diraih.\r\n\r\n3. Qualcomm, Xiaomi, Oppo, dan Vivo Teken Kerja Sama Ratusan Triliun\r\n\r\nBerkat kunjungan Trump ke China, Qualcomm bekerja sama dengan Xiaomi, Vivo dan OPPO. Nilainya mencapai ratusan triliun rupiah.\r\n'),
(4, 'politik', '1. 43 Caleg PSI Ikuti Seleksi Gelombang Kedua\r\n\r\nSebanyak 43 calon anggota legislatif (caleg) Partai Solidaritas Indonesia (PSI) mengikuti seleksi pada gelombang kedua. PSI melibatkan sejumlah tokoh sebagai juri dalam seleksi tersebut.\r\n\r\nMereka di antaranya mantan Wakil Ketua KPK Bibit Samad Rianto, Ketua Yayasan Lembaga Perlindungan Anak Indonesia (YLPAI) Seto Mulyadi, mantan Komisioner Komnas Perempuan Henny Supolo, pakar politik Djayadi Hanan dan sejumlah tokoh lain.\r\n\r\n2. PDIP Belum Putuskan Cagub Pilkada Jabar\r\n\r\nPartai Demokrasi Indonesia Perjuangan (PDIP) masih menggodok sosok yang akan diusung dalam ajang Pilkada Jawa Barat 2018. Termasuk soal isu merapatnya Dedi Mulyadi ke kubu PDIP.\r\n\r\n3.DPD Golkar Mengaku Solid Dukung Novanto Meski Berstatus Tersangka \r\n\r\nSebanyak 24 Ketua DPD I Golkar berkumpul di Kantor DPP setelah sang ketum, Setya Novanto ditetapkan sebagai tersangka lagi. Mereka mengaku tetap solid mendukung Novanto.\r\n\r\nHal itu disampaikan oleh Ketua DPD Partai Golkar Provinsi Bali, I Ketut Sudikerta di Kantor DPP Partai Golkar, Jalan Anggrek Neli Murni, Jakarta, Minggu (12/11/2017). Para Ketua DPD Golkar itu berkumpul di acara topping off Gedung Panca Bakti Golkar. '),
(5, 'Selamat pagi', 'Halo! Selamat pagi juga'),
(6, 'Selamat siang', 'Halo! Selamat siang juga'),
(7, 'Selamat malam', 'Halo! Selamat malam juga'),
(9, 'Selamat sore', 'Halo! Selamat sore juga'),
(10, 'halo', 'Halo! Ingin cari berita apa hari ini?'),
(11, 'hai', 'Hai! Sudah tau isu ekonomi terkini?'),
(12, 'konnichiwa', 'Konnichiwa~ Mari jelajahi berita bersama NewsUp!'),
(13, 'cuaca', 'Chatbot belum mampu memberikan informasi cuaca. Ada hal lain yang bisa dibantu? Ketik \'help\' untuk bantuan.'),
(14, 'hello', 'Halo! Ingin cari berita apa hari ini?'),
(15, 'bantuan', 'Anda dapat mencari berdasarkan genre ataupun kata kunci. Genre berita dapat berupa olahraga, politik, ekonomi, teknologi,dll. Dengan menambahkan kata “\"berita\"” atau memberikan tanda kutip pada kata kunci berita yang diinginkan, saya akan menampilkan beritanya untuk anda!'),
(16, 'cara', 'Anda dapat mencari berdasarkan genre ataupun kata kunci. Genre berita dapat berupa olahraga, politik, ekonomi, teknologi,dll. Dengan menambahkan kata “\"berita\"” atau memberikan tanda kutip pada kata kunci berita yang diinginkan, saya akan menampilkan beritanya untuk anda!'),
(17, 'help', 'Anda dapat mencari berdasarkan genre ataupun kata kunci. Genre berita dapat berupa olahraga, politik, ekonomi, teknologi,dll. Dengan menambahkan kata “\"berita\"” atau memberikan tanda kutip pada kata kunci berita yang diinginkan, saya akan menampilkan beritanya untuk anda!'),
(18, 'hari ini', '1. Letusan Dahsyat Gunung Agung Bisa Mirip Skenario 1963\r\n\r\nGunung Agung terus menyemburkan abu vulkanik ke udara dengan ketinggian mencapai tiga kilometer dari kawah letusan di puncak gunung.\r\n\r\nPusat Vulkanologi dan Mitigasi Bencana Geologi menyatakan, semburan abu berwarna abu-abu kehitaman itu merupakan ciri utama lava yang tersimpan di perut gunung sudah bergerak naik ke kawah letusan.\r\n\r\n2. Ternyata, Biji Rambutan Bisa Sembuhkan Diabetes\r\n\r\nBiji rambutan mengandung fenolik dan flavonoid yang kemudian akan diubah menjadi ekstrak methanol. Khasiatnya sangat baik untuk tubuh terutama dalam mengatasi penyakit gula darah tinggi atau yang lebih dikenal sebagai diabetes.\r\n\r\nMemang tidak ada efek samping yang ditemukan saat mengonsumsi biji rambutan, namun tetap saja Anda harus berhati-hati dalam mengolah ramuan tersebut. Olah secara tepat dan konsumsilah sewajarnya.\r\n\r\n3.DPD Golkar Mengaku Solid Dukung Novanto Meski Berstatus Tersangka \r\n\r\nSebanyak 24 Ketua DPD I Golkar berkumpul di Kantor DPP setelah sang ketum, Setya Novanto ditetapkan sebagai tersangka lagi. Mereka mengaku tetap solid mendukung Novanto.\r\n\r\nHal itu disampaikan oleh Ketua DPD Partai Golkar Provinsi Bali, I Ketut Sudikerta di Kantor DPP Partai Golkar, Jalan Anggrek Neli Murni, Jakarta, Minggu (12/11/2017). Para Ketua DPD Golkar itu berkumpul di acara topping off Gedung Panca Bakti Golkar. '),
(19, 'jokowi', '1. Jokowi Nikmati Lezatnya Durian Medan di Sela-Sela Pesta Adat\r\n\r\nDi sela-sela acara pesta adat pernikahan Kahiyang Ayu dan Bobby Nasution di Medan, Sumatera Utara, Presiden Joko Widodo (Jokowi) menyempatkan makan durian. Kali ini dia makan buah yang dijuluki king of fruit alias raja dari segala buah bersama keluarga termasuk sang ibu, Sudjiatmi.\r\n\r\nSelain ibu, dalam foto yang diunggah Jokowi di Facebook pribadinya, juga tampak putra pertama Jokowi Gibran Rakabuming Raka bersama istri Selvi Ananda. Ada juga cucu pertama Jokowi, Jan Ethes, yang sedang asyik minum air dalam kemasan ukuran gelas sembari melihat durian yang sudah dibuka.\r\n\r\n2. Poltracking: Jokowi-Prabowo Bisa Head to Head di Pilpres 2019\r\n\r\nLembaga survei Poltracking Indonesia mengerucutkan dua nama untuk calon presiden (Capres) 2019, Joko Widodo dan Prabowo Subianto. Hasil elektablitas menunjukkan, Jokowi mendulang raihan angka 53,2 persen, sementara Prabowo 33,0 persen. Dengan gap 20,2 persen.\r\n\r\n\"Ini artinya, peluang terjadi head to head besar, karena hanya mereka yang mendapat hasil persentase dua digit,\" kata Direktur Eksekuitif Poltracking Indonesia, Hanta Yuda di Hotel Saripan Pacific, Jakarta Pusat, Minggu (26/11/2017).'),
(20, 'artis', '1. Bikin Salut, Roro Fitria Jawab Sindiran Warganet Ini dengan Bijak\r\n\r\nTingkah laku Roro Fitria di Instagram sering menjadi sorotan publik. Pasalnya, selebritas Tanah Air tersebut kerap menunjukkan hal unik, mulai dari suaranya yang nyaring hingga kebiasaannya melakukan ritual mistis.\r\n\r\nPemilik akun @fannyoctavianda menulis dengan nada sindiran, \"Nyai kan udah cantik, kenapa fotonya hrs di edit?\"\r\n\r\nTak disangka, Roro Fitria menjawab dengan bijak, tanpa nada kesal sama sekali. \"@fannyoctavianda inggih matur nuwun Mba Fanny atas perhatiannya. Unsur edit maupun tidak, bukan hal penting untuk diperdebatkan. Kita lebih mengedapkan nilai / value yang akan disampaikan dari suatu gambar. Salam sukses utk Mbak sekeluarga,\" tulis Roro Fitria.\r\n\r\n2. Tumor Diangkat, Ibunda Kiki Ferrel Keluar dari Rumah Sakit\r\n\r\nOperasi pengangkatan tumor usus ibunda Kiki Farrel, Dahlia, telah berhasil dilakukan. Setelah menjalani perawatan intesif selama kurang lebih seminggu lamanya, sang ibunda akhirnya diperbolehkan pulang.\r\n\r\nRasa bahagia tentu tak bisa disembunyikan dari Kiki Farrel juga Dahlia. Kiki berharap, kondisi sang ibunda pascaoperasi terus menerus mengalami perkembangan, sehingga tak perlu mengambil tindakan kemoterapi.'),
(21, 'infotainment', '1. Bikin Salut, Roro Fitria Jawab Sindiran Warganet Ini dengan Bijak\r\n\r\nTingkah laku Roro Fitria di Instagram sering menjadi sorotan publik. Pasalnya, selebritas Tanah Air tersebut kerap menunjukkan hal unik, mulai dari suaranya yang nyaring hingga kebiasaannya melakukan ritual mistis.\r\n\r\nPemilik akun @fannyoctavianda menulis dengan nada sindiran, \"Nyai kan udah cantik, kenapa fotonya hrs di edit?\"\r\n\r\nTak disangka, Roro Fitria menjawab dengan bijak, tanpa nada kesal sama sekali. \"@fannyoctavianda inggih matur nuwun Mba Fanny atas perhatiannya. Unsur edit maupun tidak, bukan hal penting untuk diperdebatkan. Kita lebih mengedapkan nilai / value yang akan disampaikan dari suatu gambar. Salam sukses utk Mbak sekeluarga,\" tulis Roro Fitria.\r\n\r\n2. Tumor Diangkat, Ibunda Kiki Ferrel Keluar dari Rumah Sakit\r\n\r\nOperasi pengangkatan tumor usus ibunda Kiki Farrel, Dahlia, telah berhasil dilakukan. Setelah menjalani perawatan intesif selama kurang lebih seminggu lamanya, sang ibunda akhirnya diperbolehkan pulang.\r\n\r\nRasa bahagia tentu tak bisa disembunyikan dari Kiki Farrel juga Dahlia. Kiki berharap, kondisi sang ibunda pascaoperasi terus menerus mengalami perkembangan, sehingga tak perlu mengambil tindakan kemoterapi.'),
(22, 'selebrit', '1. Bikin Salut, Roro Fitria Jawab Sindiran Warganet Ini dengan Bijak\r\n\r\nTingkah laku Roro Fitria di Instagram sering menjadi sorotan publik. Pasalnya, selebritas Tanah Air tersebut kerap menunjukkan hal unik, mulai dari suaranya yang nyaring hingga kebiasaannya melakukan ritual mistis.\r\n\r\nPemilik akun @fannyoctavianda menulis dengan nada sindiran, \"Nyai kan udah cantik, kenapa fotonya hrs di edit?\"\r\n\r\nTak disangka, Roro Fitria menjawab dengan bijak, tanpa nada kesal sama sekali. \"@fannyoctavianda inggih matur nuwun Mba Fanny atas perhatiannya. Unsur edit maupun tidak, bukan hal penting untuk diperdebatkan. Kita lebih mengedapkan nilai / value yang akan disampaikan dari suatu gambar. Salam sukses utk Mbak sekeluarga,\" tulis Roro Fitria.\r\n\r\n2. Tumor Diangkat, Ibunda Kiki Ferrel Keluar dari Rumah Sakit\r\n\r\nOperasi pengangkatan tumor usus ibunda Kiki Farrel, Dahlia, telah berhasil dilakukan. Setelah menjalani perawatan intesif selama kurang lebih seminggu lamanya, sang ibunda akhirnya diperbolehkan pulang.\r\n\r\nRasa bahagia tentu tak bisa disembunyikan dari Kiki Farrel juga Dahlia. Kiki berharap, kondisi sang ibunda pascaoperasi terus menerus mengalami perkembangan, sehingga tak perlu mengambil tindakan kemoterapi.'),
(23, 'bola', '1. Messi Perpanjang Kontrak, Valverde Bahagia\r\n\r\nPelatih FC Barcelona, Ernesto Valverde, menyambut bahagia penandatanganan kontrak baru Lionel Messi.\r\n\r\nBarca mengumumkan kesepakatan kontrak anyar dengan Lionel Messi pada Sabtu (25/11/2017). Perjanjian kerja tersebut akan mengikat sang superstar hingga empat tahun ke depan atau sampai 2021.\r\n\r\nDiakui Ernesto Valverde, dia dan para pemain FC Barcelona lega setelah Messi berkomitmen untuk tim.\r\n\r\n2. Lindelof Tak Masalah Meski Jadi Pilihan Kedua Mourinho di MU\r\nBek Manchester United (MU), Victor Lindelof, mengisyaratkan tidak masalah meski hanya menjadi pilihan kedua dalam skuat Jose Mourinho. Lindelof justru mengaku senang dengan kehidupan barunya di Old Trafford.\r\n\r\nLindelof sempat mengalami situasi sulit karena tak kunjung melakoni debut dalam enam laga awal Manchester United pada ajang Premier League. Bek asal Swedia tersebut kalah bersaing dengan Eric Baily, Phil Jones, dan Chris Smalling.\r\n\r\nAkan tetapi, situasi itu tidak membuat Lindelof terpukul. Dia bangkit dan perlahan mendapat kepercayaan karena selalu menjadi starter dalam dua pertandingan terakhir Manchester United di Premier League.'),
(24, 'messi', '1. Messi Perpanjang Kontrak, Valverde Bahagia\r\n\r\nPelatih FC Barcelona, Ernesto Valverde, menyambut bahagia penandatanganan kontrak baru Lionel Messi.\r\n\r\nBarca mengumumkan kesepakatan kontrak anyar dengan Lionel Messi pada Sabtu (25/11/2017). Perjanjian kerja tersebut akan mengikat sang superstar hingga empat tahun ke depan atau sampai 2021.\r\n\r\nDiakui Ernesto Valverde, dia dan para pemain FC Barcelona lega setelah Messi berkomitmen untuk tim.'),
(25, 'sport', '1. Cedera Irving Rugikan Boston Celtics\r\n\r\nBintang Boston Celtics, Kyrie Irving diketahui mengalami cedera tulang retak dan harus absen saat timnya menghadapi Toronto Raptors\r\n\r\n2. Start dari Pit Lane, Hamilton Akui Bikin Kesalahan\r\n\r\nJuara dunia Formula 1 2017, Lewis Hamilton, mengalami kecelakaan saat kualifikasi 1 (Q1) GP Brasil, Sabtu (11/11/2017) sehingga start dari pit lane.\r\n\r\n3. Kalah Dua Game dari Momota, Ihsan Gagal Juara di Makau\r\n\r\nPebulu tangkis tunggal putra Indonesia, Ihsan Maulana Mustofa, gagal meraih gelar turnamen Makau Terbuka Grand Prix Gold 2017. Dia kalah dari Momota.'),
(26, 'terkini', '1. Cedera Irving Rugikan Boston Celtics\r\n\r\nBintang Boston Celtics, Kyrie Irving diketahui mengalami cedera tulang retak dan harus absen saat timnya menghadapi Toronto Raptors\r\n\r\n2. Start dari Pit Lane, Hamilton Akui Bikin Kesalahan\r\n\r\nJuara dunia Formula 1 2017, Lewis Hamilton, mengalami kecelakaan saat kualifikasi 1 (Q1) GP Brasil, Sabtu (11/11/2017) sehingga start dari pit lane.\r\n\r\n3. Kalah Dua Game dari Momota, Ihsan Gagal Juara di Makau\r\n\r\nPebulu tangkis tunggal putra Indonesia, Ihsan Maulana Mustofa, gagal meraih gelar turnamen Makau Terbuka Grand Prix Gold 2017. Dia kalah dari Momota.'),
(27, 'otomotif', '1. Tampil Mirip, Apa Beda Rush dan Terios Terbaru?\r\n\r\nToyota All New Rush dan Daihatsu All New Terios teranyar baru saja secara resmi meluncur di Indonesia. Kedua mobil yang masuk di segmen low sport utility vehicle tersebut hadir setelah 10 tahun tanpa ubahan yang berarti.\r\n\r\nAll New Toyota Rush dan All New Terios menggendong mesin sama, yakni  berkapasitas 1.500cc berbahan bakar bensin. Kedua mobil baru tersebut hadir dalam dua varian, G dan TRD Sportivo pada Toyota Rush, serta X dan R di Daihatsu Terios. Pada masing-masing variannya memiliki pilihan transmisi manual maupun otomatis.'),
(28, 'lifestyle', '1. Tampil Mirip, Apa Beda Rush dan Terios Terbaru?\r\n\r\nToyota All New Rush dan Daihatsu All New Terios teranyar baru saja secara resmi meluncur di Indonesia. Kedua mobil yang masuk di segmen low sport utility vehicle tersebut hadir setelah 10 tahun tanpa ubahan yang berarti.\r\n\r\nAll New Toyota Rush dan All New Terios menggendong mesin sama, yakni  berkapasitas 1.500cc berbahan bakar bensin. Kedua mobil baru tersebut hadir dalam dua varian, G dan TRD Sportivo pada Toyota Rush, serta X dan R di Daihatsu Terios. Pada masing-masing variannya memiliki pilihan transmisi manual maupun otomatis.\r\n\r\n2. Kolam Renang Telanjang di Las Vegas yang Bikin Geleng Kepala\r\n\r\nLas Vegas bukan hanya identik dengan kawasan judi, salah satu kota di Amerika Serikat yang dikunjungi lebih dari 40 juta orang tiap tahun ini juga punya segudang atraksi wisata “aneh” lainnya, salah satunya adalah kolam renang telanjang. Kolam renang telanjang menjadi salah satu atraksi wisata yang paling digemari wisatawan yang datang saat Las Vegas memasuki musim panas. Masyarakat setempat juga beranggapan, saat cuaca menjadi tiga digit Fahrenheit, mengenakan pakaian menjadi sangat merepotkan. Tak heran jika masyarakat gemar mengunjungi kolam renang.'),
(29, 'gaya hidup', '1. Tampil Mirip, Apa Beda Rush dan Terios Terbaru?\r\n\r\nToyota All New Rush dan Daihatsu All New Terios teranyar baru saja secara resmi meluncur di Indonesia. Kedua mobil yang masuk di segmen low sport utility vehicle tersebut hadir setelah 10 tahun tanpa ubahan yang berarti.\r\n\r\nAll New Toyota Rush dan All New Terios menggendong mesin sama, yakni  berkapasitas 1.500cc berbahan bakar bensin. Kedua mobil baru tersebut hadir dalam dua varian, G dan TRD Sportivo pada Toyota Rush, serta X dan R di Daihatsu Terios. Pada masing-masing variannya memiliki pilihan transmisi manual maupun otomatis.\r\n\r\n2. Kolam Renang Telanjang di Las Vegas yang Bikin Geleng Kepala\r\n\r\nLas Vegas bukan hanya identik dengan kawasan judi, salah satu kota di Amerika Serikat yang dikunjungi lebih dari 40 juta orang tiap tahun ini juga punya segudang atraksi wisata “aneh” lainnya, salah satunya adalah kolam renang telanjang. Kolam renang telanjang menjadi salah satu atraksi wisata yang paling digemari wisatawan yang datang saat Las Vegas memasuki musim panas. Masyarakat setempat juga beranggapan, saat cuaca menjadi tiga digit Fahrenheit, mengenakan pakaian menjadi sangat merepotkan. Tak heran jika masyarakat gemar mengunjungi kolam renang.'),
(30, 'tekno', '1. Hitachi Vantara Bisa Jadi Jembatan Transformasi Digital\r\nKebanyakan industri hanya menyimpan data-data konsumen. Padahal, ada potensi di balik itu untuk mengembangkan bisnis dan memberikan pelayanan yang memuaskan bagi konsumen.\r\n\r\nHitachi Group baru saja meluncurkan layanan teknologi pengolah big data konsumen. Teknologi ini dinamai Hitachi Vantara.\r\n\r\n2. Samsung: Data adalah Minyak Baru\r\n\r\nPerusahaan teknologi asal Korea Selatan, Samsung, menegaskan posisinya ingin menjadi penyedia produk penyimpanan data terbesar di dunia. Kepala Strategi Bisnis Samsung, Young Sohn mengatakan, saat ini dunia telah bertransformasi dari era analog ke digital.\r\n\r\nMenurutnya, masa depan adalah eranya digitalisasi, yang artinya, apapun layanannya kini selalu memanfaatkan data. Ia juga mengungkapkan bahwa sekitar 70 persen data dunia diproduksi dan disimpan di pusat data milik Samsung.'),
(31, 'digital', '1. Hitachi Vantara Bisa Jadi Jembatan Transformasi Digital\r\nKebanyakan industri hanya menyimpan data-data konsumen. Padahal, ada potensi di balik itu untuk mengembangkan bisnis dan memberikan pelayanan yang memuaskan bagi konsumen.\r\n\r\nHitachi Group baru saja meluncurkan layanan teknologi pengolah big data konsumen. Teknologi ini dinamai Hitachi Vantara.\r\n\r\n2. Samsung: Data adalah Minyak Baru\r\n\r\nPerusahaan teknologi asal Korea Selatan, Samsung, menegaskan posisinya ingin menjadi penyedia produk penyimpanan data terbesar di dunia. Kepala Strategi Bisnis Samsung, Young Sohn mengatakan, saat ini dunia telah bertransformasi dari era analog ke digital.\r\n\r\nMenurutnya, masa depan adalah eranya digitalisasi, yang artinya, apapun layanannya kini selalu memanfaatkan data. Ia juga mengungkapkan bahwa sekitar 70 persen data dunia diproduksi dan disimpan di pusat data milik Samsung.'),
(32, 'data', '1. Hitachi Vantara Bisa Jadi Jembatan Transformasi Digital\r\nKebanyakan industri hanya menyimpan data-data konsumen. Padahal, ada potensi di balik itu untuk mengembangkan bisnis dan memberikan pelayanan yang memuaskan bagi konsumen.\r\n\r\nHitachi Group baru saja meluncurkan layanan teknologi pengolah big data konsumen. Teknologi ini dinamai Hitachi Vantara.\r\n\r\n2. Samsung: Data adalah Minyak Baru\r\n\r\nPerusahaan teknologi asal Korea Selatan, Samsung, menegaskan posisinya ingin menjadi penyedia produk penyimpanan data terbesar di dunia. Kepala Strategi Bisnis Samsung, Young Sohn mengatakan, saat ini dunia telah bertransformasi dari era analog ke digital.\r\n\r\nMenurutnya, masa depan adalah eranya digitalisasi, yang artinya, apapun layanannya kini selalu memanfaatkan data. Ia juga mengungkapkan bahwa sekitar 70 persen data dunia diproduksi dan disimpan di pusat data milik Samsung.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
