-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05 Mei 2021 pada 03.15
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `androidstack`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, '==Silahkan Dipilih=='),
(2, 'Pengenalan Android'),
(3, 'Android Studio'),
(4, 'Activity Dan Intent'),
(5, 'Fragments'),
(6, 'User Interface'),
(7, 'Data Persistance'),
(8, 'SQLite Database'),
(9, 'Content Provider'),
(10, 'Komunikasi Dan Jaringan'),
(11, 'Android Sensor'),
(12, 'Android Multimedia'),
(13, 'External Database'),
(14, 'Service Dan Threading'),
(15, 'Android Apps Deployment'),
(16, 'Firebase');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nim` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`user_id`, `username`, `full_name`, `password_hash`, `salt`, `created_date`, `nim`, `alamat`) VALUES
(4, 'muhammadfadly.mfd@gmail.com', 'keng', '$2y$04$Zz84XaTghEEpT8A.DNbcx.PLbnpmKoMXUvsx/l9nMpCUQXYKMf6Ia', '', '2021-03-28 21:23:09', '123', 'jl. brigjen katamso no.8'),
(5, 'fadli@gmail.com', 'Muhammad Fadly Dzil', '$2y$04$KwOSTSxAe5VLKanpILU1v.gePKbEq8I.V8UWajXmx0yL/GnuVOpdC', '1aa0e1e59f538685f518709d247875559fce9cfb8c68e6d9294b8de49fd03504', '2021-04-03 22:36:22', '160180022', 'padang sidempuan'),
(6, 'admin', 'Muhammad Fadly Dzil', '$2y$10$DF8WAKJ8LJ8ujaMO/RO.e.RyPzS8Tcv9b3Ua3DHQpBCxveDsoG.eu', '71dfc27f968abe4adc14f4d1a2f57c425379531ea9c1661d277880e9206cf4d1', '2021-04-19 13:28:22', '', ''),
(7, 'fadli', 'fadli', '$2y$10$IVGWkgPkZlVlL.CpXMz1QeHaAirlTZLF6FSxnBkyMImbxbTUTxgpG', 'dacd06a432c0ea02fb8f8dbbe2dfddccc7b1af492a88dadefeff2e8678da94ff', '2021-04-24 14:47:37', '', ''),
(8, 'dina', 'dina', '$2y$10$fCYbBiEY6/zQDNnz9RzkvuLpmOEgPadPBSwRAmZjnV/u347a88ti6', 'a714acda86533223defbf181e9e3e9f079dadeba0985020483f39beaf041d171', '2021-05-01 11:41:44', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_materi`
--

CREATE TABLE IF NOT EXISTS `tbl_materi` (
`id` int(100) NOT NULL,
  `title` text NOT NULL,
  `publishedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL,
  `urlToImage` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_materi`
--

INSERT INTO `tbl_materi` (`id`, `title`, `publishedAt`, `url`, `urlToImage`, `category`) VALUES
(15, 'Intro', '2021-03-30 09:02:32', 'http://192.168.43.35/androidstack/material/materi/1pengenalan/1kata_pengantar.html', 'https://miro.medium.com/max/1680/1*7PktPIVe5jSsSZOw4hjS0g.png', 'Pengenalan Android'),
(16, 'Pengantar Pembelajaran Android Studio', '2021-04-01 12:27:08', 'http://192.168.43.35/androidstack/material/materi/1pengenalan/2pengenalan_Android.html', 'https://cdn2.boombastis.com/wp-content/uploads/2018/11/Andy-Rubin-sukses-ciptakan-teknologi-Android.jpg', 'Pengenalan Android'),
(17, 'Arsitektur Android Studio', '2021-04-01 12:34:26', 'http://192.168.43.35/androidstack/material/materi/1pengenalan/3arsitek_android.html', 'https://miro.medium.com/max/862/1*Rjsi4xvQBdBnP9OhHsyhWA.png', 'Pengenalan Android'),
(18, 'Apa itu Android Studio ?', '2021-04-01 12:35:42', 'http://192.168.43.35/androidstack/material/materi/2android_studio/1android_studio_editor.html', '', 'Android Studio'),
(19, 'Peralatan Didalam Android Studio', '2021-04-01 12:36:44', 'http://192.168.43.35/androidstack/material/materi/1pengenalan/4peralatan_yang_digunakan_android_studio.html', 'https://blog.desdelinux.net/wp-content/uploads/2019/02/JDK-12.jpg.webp', 'Android Studio'),
(20, 'Setting Up Pada Android Studio', '2021-04-01 12:38:30', 'http://192.168.43.35/androidstack/material/materi/1pengenalan/5setting_up_android_studio.html', '', 'Android Studio'),
(21, 'Membangun Proyek Pertama Android Studio', '2021-04-01 12:39:41', 'http://192.168.43.35/androidstack/material/materi/1pengenalan/6membagun_proyek_pertama.html', '', 'Android Studio');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal`
--

CREATE TABLE IF NOT EXISTS `tbl_soal` (
`id` int(5) NOT NULL,
  `soal` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `jwaban` int(2) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_soal`
--

INSERT INTO `tbl_soal` (`id`, `soal`, `a`, `b`, `c`, `jwaban`, `gambar`) VALUES
(1, 'Apa nama latin dari gambar di bawah ini?', 'Tamarindus indica', 'Averrhoa bilimbi', 'Phyllanthus acidus', 1, 'asam.jpg'),
(2, 'Apa nama latin dari gambar di bawah ini?', 'Tamarindus indica', 'Averrhoa bilimbi', 'Phyllanthus acidus', 2, 'belimbingwuluh.jpg'),
(3, 'Apa nama latin dari gambar di bawah ini?', 'Tamarindus indica', 'Averrhoa bilimbi', 'Phyllanthus acidus', 3, 'cermai.jpg'),
(4, 'Apa nama latin dari gambar di bawah ini?', 'Uncaria gambir', 'Jatropha curcas', 'Citrus x hystrix', 1, 'gambir.jpg'),
(5, 'Apa nama latin dari gambar di bawah ini?', 'Uncaria gambir', 'Jatropha curcas', 'Citrus x hystrix', 2, 'jarak_pagar.jpg'),
(6, 'Apa nama latin dari gambar di bawah ini?', 'Uncaria gambir', 'Jatropha curcas', 'Citrus x hystrix', 3, 'jeruk_purut.jpg'),
(7, 'Apa nama latin dari gambar di bawah ini?', 'Vigna radiata', 'Cocos nucifera', 'Stelechocarpus burahol', 1, 'kacang.jpg'),
(8, 'Apa nama latin dari gambar di bawah ini?', 'Vigna radiata', 'Cocos nucifera', 'Stelechocarpus burahol', 2, 'kelapa.jpg'),
(9, 'Apa nama latin dari gambar di bawah ini?', 'Vigna radiata', 'Cocos nucifera', 'Stelechocarpus burahol', 3, 'kepel.jpg'),
(10, 'Apa nama latin dari gambar di bawah ini?', 'Curcuma longa', 'Alpinia galanga', 'Passiflora edulis', 1, 'kunyit.jpg'),
(11, 'Apa nama latin dari gambar di bawah ini?', 'Curcuma longa', 'Alpinia galanga', 'Passiflora edulis', 2, 'lengkuas.jpg'),
(12, 'Apa nama latin dari gambar di bawah ini?', 'Curcuma longa', 'Alpinia galanga', 'Passiflora edulis', 3, 'markisa.jpg'),
(13, 'Apa nama latin dari gambar di bawah ini?', 'Cucumis sativus', 'Nephelium lappaceum', 'Citrullus lanatus', 1, 'mentimun.jpg'),
(14, 'Apa nama latin dari gambar di bawah ini?', 'Cucumis sativus', 'Nephelium lappaceum', 'Citrullus lanatus', 2, 'rambutan.jpg'),
(15, 'Apa nama latin dari gambar di bawah ini?', 'Cucumis sativus', 'Nephelium lappaceum', 'Citrullus lanatus', 3, 'semangka.jpg'),
(16, 'Apa nama latin dari gambar di bawah ini?', 'Piper betle', 'Curcuma xanthorrhiza', 'Zea mays ssp. mays', 1, 'sirih.jpg'),
(17, 'Apa nama latin dari gambar di bawah ini?', 'Piper betle', 'Curcuma xanthorrhiza', 'Zea mays ssp. mays', 2, 'temulawak.jpg'),
(18, 'Apa nama latin dari gambar di bawah ini?', 'Piper betle', 'Curcuma xanthorrhiza', 'Zea mays ssp. mays', 3, 'jagung.jpg'),
(19, 'Apa nama latin dari gambar di bawah ini?', 'Solanum lycopersicum', 'Orthosiphon aristatus', 'Piper betle', 1, 'tomat.jpg'),
(20, 'Apa nama latin dari gambar di bawah ini?', 'Solanum lycopersicum', 'Orthosiphon aristatus', 'Piper betle', 2, 'kumiskucing.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tutorial`
--

CREATE TABLE IF NOT EXISTS `tbl_tutorial` (
`id` int(100) NOT NULL,
  `title` text NOT NULL,
  `publishedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL,
  `urlToImage` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tutorial`
--

INSERT INTO `tbl_tutorial` (`id`, `title`, `publishedAt`, `url`, `urlToImage`, `category`) VALUES
(15, 'Basic Android Studio', '2021-04-10 03:56:09', 'https://www.youtube.com/watch?v=Emr2q3DYlN0', '', 'Android Studio'),
(16, 'Pengenalan Dasar Android', '2021-04-10 03:58:07', 'https://www.youtube.com/watch?v=LAjD0ILLuRo', '', 'Pengenalan Android'),
(17, 'Pengenalan Fragmen Dan Pengembangan', '2021-04-10 04:01:01', 'https://www.youtube.com/watch?v=2FOsd1ndRZw', '', 'Fragments'),
(18, 'Pengenalan Fitur Android studio', '2021-04-10 04:02:15', 'https://www.youtube.com/watch?v=RsUol8daAzk', '', 'Android Studio'),
(19, 'Instalasi Softwere Android Studio', '2021-04-10 04:04:16', 'https://www.youtube.com/watch?v=nr2DnU5GCTs', '', 'Android Studio'),
(20, 'Pengenalan Layout Android Studio', '2021-04-10 04:05:30', 'https://www.youtube.com/watch?v=IuoG9PlRM6c', '', 'User Interface'),
(21, 'Pengenalan Widget dan Event Pada Android Studio', '2021-04-10 04:06:52', 'https://www.youtube.com/watch?v=uKC8deATUfg', '', 'User Interface'),
(22, 'Pengenalan Asset Dan View Pada Android Studio', '2021-04-10 04:09:19', 'https://www.youtube.com/watch?v=HWkai-k3l9w', '', 'Android Studio'),
(23, 'pengenalan Webview Pada Android Studio', '2021-04-10 04:11:45', 'https://www.youtube.com/watch?v=9ccp8q21S6Q', '', 'User Interface'),
(24, 'pengenalan Intent Dan Activity', '2021-04-10 04:12:30', 'https://www.youtube.com/watch?v=Y-5KfkEQfu4', '', 'Activity Dan Intent'),
(25, 'Belajar List View', '2021-04-10 04:13:35', 'https://www.youtube.com/watch?v=MUZDnuvM4L4', '', 'User Interface'),
(26, 'Belajar Tab Layout dalam penggunaan Fragment', '2021-04-10 04:14:30', 'https://www.youtube.com/watch?v=u98N1m7JCEk', '', 'Fragments'),
(27, 'Membuat Navigation Button Dan Fragment', '2021-04-10 04:15:50', 'https://www.youtube.com/watch?v=-Iii5FyPSUo', '', 'User Interface'),
(28, 'Belajar RecyclerView', '2021-04-10 04:16:38', 'https://www.youtube.com/watch?v=vx_thp056oc', '', 'User Interface'),
(29, 'Belajar Shared Preferences', '2021-04-10 04:19:36', 'https://www.youtube.com/watch?v=1sPn-KBNIqg', '', 'Data Persistance'),
(30, 'Basic Belajar SQL-Lite', '2021-04-10 04:25:33', 'https://www.youtube.com/watch?v=O5llnIAhz88', '', 'SQLite Database'),
(31, 'Belajar Mengakses HTTP pada nAndroid Studio', '2021-04-10 04:26:59', 'https://www.youtube.com/watch?v=-km-OGy3iFg', '', 'External Database'),
(32, 'Pengenalan Dan Fitur-Fitur Android Studio', '2021-04-10 06:58:09', 'https://www.youtube.com/watch?v=RsUol8daAzk', '', 'Pengenalan Android'),
(33, 'Membuat Project Crud SQLITE', '2021-04-10 07:00:34', 'https://www.youtube.com/watch?v=q7ipa6zt4CU', '', 'SQLite Database'),
(34, 'Belajar Android Studio - Java - Membuat Project Android Studio', '2021-04-10 07:03:28', 'https://www.youtube.com/watch?v=e1EpCXXdGDM', '', 'Android Studio'),
(35, 'TUTORIAL SENSOR ACCELEROMETER ANDROID STUDIO BAHASA INDONESIA', '2021-04-10 07:05:51', 'https://www.youtube.com/watch?v=sSx2Y14DFWs', '', 'Android Sensor'),
(36, ' Pemrograman Sensor Gerak Android', '2021-04-10 07:09:13', 'https://www.youtube.com/watch?v=OPsVr44uCb8&pp=qAMBugMGCgJpZBAB', '', 'Android Sensor'),
(37, 'Belajar Android - Mengenal Struktur Android Studio', '2021-04-10 07:12:03', 'https://www.youtube.com/watch?v=JxpzxPQm6w8', '', 'Pengenalan Android'),
(38, 'Belajar Fragment Android | Arian Saputra', '2021-04-10 07:14:09', 'https://www.youtube.com/watch?v=s1Qa2nprOlM&t=455s', '', 'Fragments'),
(39, 'Fragment - Belajar Fundamental Android', '2021-04-10 07:15:08', 'https://www.youtube.com/watch?v=b06c65mpLks', '', 'Fragments'),
(40, 'Basic Fragment  - Latihan Sederhana Menggunakan Fragment Di Android Studio', '2021-04-10 07:16:14', 'https://www.youtube.com/watch?v=8GXKrZBN3Wg&t=56s', '', '==Silahkan Dipilih=='),
(41, 'Dicoding Developer Coaching : Android | Apa itu Content Provider?', '2021-04-10 07:19:06', 'https://www.youtube.com/watch?v=iXaLV4_3Zc8', '', 'Content Provider'),
(42, 'Android - Content Provider Example', '2021-04-10 07:19:57', 'https://www.youtube.com/watch?v=iXaLV4_3Zc8', '', 'Content Provider'),
(43, 'Konsep dan Implementasi WebView', '2021-04-10 07:23:05', 'https://www.youtube.com/watch?v=2aHXy_9hDas', '', 'Komunikasi Dan Jaringan'),
(44, 'Cara Membuat Aplikasi Webview Dengan Android Studio | Merubah Website Menjadi Aplikasi Android', '2021-04-10 07:26:00', 'https://www.youtube.com/watch?v=hPk7lb-fJcw', '', 'Komunikasi Dan Jaringan'),
(45, 'Cara Membuat Aplikasi Android Webview + Splash Screen / Website di Android Studio', '2021-04-10 07:26:36', 'https://www.youtube.com/watch?v=hPk7lb-fJcw', '', 'Komunikasi Dan Jaringan'),
(46, 'Membuat Aplikasi WebView dengan Android Studio', '2021-04-10 07:27:39', 'https://www.youtube.com/watch?v=3EeYfZ6mL4A', '', 'Komunikasi Dan Jaringan'),
(47, 'CARA MEMBUAT (RESKIN) APLIKASI ANDROID MP3 DI ANDROID STUDIO', '2021-04-10 07:34:17', 'https://www.youtube.com/watch?v=Fj8aCMmC35Q', '', 'Android Multimedia'),
(48, 'Android Membuat Aplikasi Pemutar Video | VideoView', '2021-04-10 07:35:32', 'https://www.youtube.com/watch?v=pn5UCdNvD8s', '', 'Android Multimedia'),
(49, 'Ngoding Bareng Mengambil Foto dengan Camera - Android Studio - Indonesia', '2021-04-10 07:37:12', 'https://www.youtube.com/watch?v=5XdvRZhM_u4', '', 'Android Multimedia'),
(50, 'Gesture Detection - Android Studio', '2021-04-10 07:37:19', 'https://www.youtube.com/watch?v=grxRWLEDf7c', '', 'Android Sensor'),
(51, 'Android Studio : Membuat Nomor Kontak, Email, Link Web Otomatis dengan Fungsi AutoLink TextView', '2021-04-10 07:59:38', 'https://www.youtube.com/watch?v=8XG_rT_V5Ng', '', 'Data Persistance'),
(52, 'Cara Build APK untuk Upload ke Playstore dengan Android Studio', '2021-04-10 08:00:48', 'https://www.youtube.com/watch?v=FyYO_tR9v2A', '', 'Android Apps Deployment'),
(53, 'CARA BUILD / GENERATE APK DI ANDROID STUDIO', '2021-04-10 08:01:37', 'https://www.youtube.com/watch?v=3JYqAcpJrjo', '', 'Android Apps Deployment'),
(54, 'How to create signed Android App Bundle & Publish To Playstore 2020 | Full Steps | Publish bundle', '2021-04-10 08:02:11', 'https://www.youtube.com/watch?v=DkIUp1UMfK0', '', 'Android Apps Deployment'),
(55, ' Tutorial Layanan Android | Latar Belakang Tugas dan Layanan | Pelatihan Pengembangan Android', '2021-04-10 08:03:11', 'https://www.youtube.com/watch?v=DkIUp1UMfK0', '', 'Service Dan Threading'),
(56, 'Contoh Layanan Android - Memutar Musik di Latar Belakang', '2021-04-10 08:03:35', 'https://www.youtube.com/watch?v=p2ffzsCqrs8&pp=qAMBugMGCgJpZBAB', '', 'Service Dan Threading'),
(57, 'Services - Dasar-dasar Android', '2021-04-10 08:04:23', 'https://www.youtube.com/watch?v=EwwB_wZhBaw&pp=qAMBugMGCgJpZBAB', '', 'Service Dan Threading'),
(58, 'Android : Part 1 - Tutorial CRUD MySQL dengan Retrofit', '2021-04-10 08:15:29', 'https://www.youtube.com/watch?v=jAZP8ABMeEE&t=1251s', '', 'External Database'),
(59, 'Android : Part 2 - Tutorial CRUD MySQL dengan Retrofit', '2021-04-10 08:16:08', 'https://www.youtube.com/watch?v=bcFoCnVhhBI&t=3s', '', 'External Database'),
(60, 'Android : Part 3 - Tutorial CRUD MySQL dengan Retrofit', '2021-04-10 08:17:06', 'https://www.youtube.com/watch?v=zI-GOXjnE-M', '', 'External Database'),
(61, 'CRUD Firebase Realtime Database - Konfigurasi Firebase dan Form Input #1', '2021-04-10 08:20:54', 'https://www.youtube.com/watch?v=1B34c5Ga32E&t=614s', '', 'Firebase'),
(62, 'CRUD Firebase Realtime Database - Create #2', '2021-04-10 08:21:05', 'https://www.youtube.com/watch?v=xj7OF7siZX0&t=21s', '', 'Firebase');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `email`, `password`) VALUES
(23, 'hehe', 'muhammadfadly.mfd@gmail.com', '$2y$12$YazehdK58XBRyFScuPoGsuC/nEC045yKqhwr2MuWsMCAdsbliO4ou'),
(24, 'haha', 'fadli@gmail.com', '$2y$12$YazehdK58XBRyFScuPoGsuC/nEC045yKqhwr2MuWsMCAdsbliO4ou'),
(25, 'admin', 'admin@gmail.com', '$2y$04$Iv2ZOFqEpUjki7eofDhEAuMAZN9qT6J4V.7umO0Jfg1tBbRGF/nAC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_materi`
--
ALTER TABLE `tbl_materi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tutorial`
--
ALTER TABLE `tbl_tutorial`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_materi`
--
ALTER TABLE `tbl_materi`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_tutorial`
--
ALTER TABLE `tbl_tutorial`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
