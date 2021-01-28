-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2021 pada 00.44
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-spmi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_mr`
--

CREATE TABLE `file_mr` (
  `id` int(11) NOT NULL,
  `dokumen` varchar(128) NOT NULL,
  `file` varchar(256) NOT NULL,
  `kode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `file_mr`
--

INSERT INTO `file_mr` (`id`, `dokumen`, `file`, `kode`) VALUES
(7, 'Setandar Perkuliahaan', '2017150003_tugas_metopel1.docx', 1),
(12, 'Standar Pengelolaan Pembelajaran', 'KARTUN_WAJAH.pdf', 3),
(13, 'Standar Sarana dan Prasarana', 'DFS_BFS.pdf', 3),
(14, 'Standar Dosen dan Tenaga Kependidikan', 'DFS_BFS1.pdf', 1),
(15, 'Standar Penilaian Pembelajaran', 'DFS_BFS2.pdf', 1),
(16, 'Standar Proses Pembelajaran Rev. 01', 'DFS_BFS3.pdf', 1),
(17, 'Standar Isi Pembelajaran Rev. 01', 'DFS_BFS4.pdf', 1),
(18, 'Standar Kompetensi Lulusan Rev. 01', 'DFS_BFS5.pdf', 1),
(19, 'Undang Undang Republik Indonesia No. 13 Tahun 2003 tentang Ketenagakerjaan', 'DFS_BFS6.pdf', 4),
(20, 'Undang Undang Republik Indonesia No. 20 Tahun 2003 tentang Sistem Pendidikan Nasional', 'KARTUN_WAJAH1.pdf', 4),
(21, 'Undang Undang Republik Indonesia No. 14 Tahun 2005 tentang Guru dan Dosen', 'KARTUN_WAJAH2.pdf', 4),
(22, 'Peraturan Pemerintah No. 8 Tahun 2006 tentang Pelaporan Keuangan dan Kinerja Instansi Pemerintah', 'KARTUN_WAJAH3.pdf', 5),
(23, 'Peraturan Pemerintah No. 6 Tahun 2006 tentang Pengelolaan Barang Milik Negara/Daerah', 'KARTUN_WAJAH4.pdf', 5),
(24, 'Peraturan Pemerintah No. 23 Tahun 2005 tentang Pengelolaan Keuangan Badan Layanan Umum', 'KARTUN_WAJAH5.pdf', 5),
(25, 'Dokumen yang harus disusun Prodi dan diserahkan ke SPM ITB untuk diproses dan dikirim ke BAN-PT', 'FPsikologi1.pdf', 6),
(26, 'Nilai, Status dan Peringkat Akreditasi', 'FPsikologi2.pdf', 6),
(27, 'Kriteria dan Elemen Penilaian Akreditasi BAN-PT', 'IMPLEMENTASI.pdf', 6),
(28, 'Proses Bisnis Evaluasi Dokumen Akreditasi BAN-PT', 'IMPLEMENTASI1.pdf', 6),
(29, 'Proses Bisnis Penyusunan Dokumen Akreditasi BAN-PT', 'IMPLEMENTASI2.pdf', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_manajemenrefensi`
--

CREATE TABLE `isi_manajemenrefensi` (
  `id` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `link_seo` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `tgl_upload` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `isi_manajemenrefensi`
--

INSERT INTO `isi_manajemenrefensi` (`id`, `kode`, `judul`, `link_seo`, `image`, `isi`, `tgl_upload`) VALUES
(8, 2, 'Setandar Mutu', 'setandar-mutu', '', '<p>Standar Mutu Fakultas Teknik dan Ilmu Komputer telah ditetapkan untuk menjamin peningkatan mutu pendidikan di Fastikom sehingga mampu memenuhi dan melampaui standar minimal yang telah ditetapkan oleh Kemristekdikti dan menumbuhkembangkan budaya mutu di Lingkungan Fakultas Teknik dan Ilmu Komputer.</p>\r\n<p>Daftar Standar Mutu Akademik dalam SPMI Fakultas Teknik dan Ilmu Komputer :</p>', 1611791784),
(9, 1, 'Setandar Perkuliahan', 'setandar-perkuliahan', '', '<p>Standar Perkuliahan Fakultas Teknik dan Ilmu Komputer telah ditetapkan untuk menjamin peningkatan kegiatan perkuliahan&nbsp; di Fastikom sehingga mampu memenuhi dan melampaui standar minimal yang telah ditetapkan oleh Kemristekdikti dan menumbuhkembangkan budaya Perkuliahan di Lingkungan Fakultas Teknik dan Ilmu Komputer.</p>\r\n<p>Daftar Standar Pendidikan dalam SPMI Fakultas Teknik dan Ilmu Komputer&nbsp;</p>', 1611798921),
(11, 4, 'Undang-Undang', 'undang-undang', '', '<p><strong>Undang Undang yang berkenaan dengan Penyelenggaraan Fakultas Teknik Informatika</strong></p>', 1611803303),
(12, 5, 'Peraturan Pemerintah', 'peraturan-pemerintah', '', '<p><strong>Peraturan Pemerintah yang berkenaan dengan Penyelenggaraan Fastikom sebagai berikut:</strong></p>', 1611803612),
(13, 7, 'LAM-Aptikom', 'lam-aptikom', '', '<p>www</p>', 1611851201),
(14, 6, 'BAN-PT', 'ban-pt', '', '<p>suai Pasal 33 ayat (3) dan Pasal 60 ayat (4) UU Dikti, setiap program studi wajib mengajukan akreditasi ulang pada saat masa berlaku status dan peringkat terakreditasi berakhir. Hal ini merupakan aspek yang penting dan tidak boleh terlewatkan, karena Pasal 42 ayat (1) UU Dikti menegaskan bahwa hanya program studi terakreditasi yang berhak menerbitkan ijazah bagi lulusannya.</p>\r\n<p>Selanjutnya, sesuai Peraturan BAN PT No 1 tahun 2020 tentang Mekanisme Akreditasi untuk Akreditasi yang dilakukan oleh Badan Akreditasi Nasional Perguruan Tinggi, maka proses pengelolaan dokumen akreditasi Perguruan Tinggi maupun Program Studi dilaksanakan melalui Sistem Akreditasi Perguruan Tinggi Online . Submisi dokumen akreditasi pada SAPTO untuk seluruh Program Studi di fastikom dilaksanakan melalui satu pintu, yaitu oleh SPM ITB.</p>\r\n<p>Karena itu, untuk dapat memelihara maupun meningkatkan peringkat akreditasi Prodi, serta melindungi kepentingan mahasiswa yang sedang menuntut ilmu di Prodi tersebut, maka setiap Fakultas/Sekolah dan Prodi di Fastikom terkait sebaiknya memahami jalur manajemen pengajuan akreditasi BAN-PT oleh SPM-Fastikom. Silakan mengikuti informasi pada tautan berikut ini:</p>', 1611851280),
(16, 0, 'Elemen SPMI', 'elemen-spmi', '', '<p>Elemen Sistem Penjaminan Mutu Internal (SPMI) terdiri dari:</p>\r\n<ul>\r\n<li>Kebijakan Mutu (Policy): Naskah/buku/dokumen yang berisi definisi, konsep, tujuan, strategi, berbagai standar dan/atau standar turunan, prioritas SPMI.</li>\r\n<li>Pedoman Mutu (Manual): Naskah/dokumen/buku yang berisi panduan untuk menetapkan, memenuhi, mengendalikan, dan mengembangkan/meningkatkan standar; pedoman atau petunjuk/instruksi kerja bagi stakeholders internal yang harus menjalankan mekanisme tersebut.</li>\r\n<li>Standar: Naskah/dokumen/buku yang berisi rumusan substansi atau isi setiap standar yang digunakan dalam SPMI&ndash;PT, termasuk 8 (delapan) standar minimal dari SNP, standar turunan dari kedelapan standar tersebut; penambahan jumlah standar selain kedelapan standar mutu.</li>\r\n<li>Dokumen/Formulir Mutu : Naskah/dokumen/buku yang berisi berbagai formulir yang berfungsi sebagai instrumen untuk merencanakan, menerapkan, mengendalikan, dan mengembangkan standar.</li>\r\n</ul>', 1611854017),
(17, 0, 'Visi dan Misi SPM-Fastikom', 'visi-dan-misi-spm-fastikom', '', '<h5>Visi SPM &ndash; FASTIKOM</h5>\r\n<p>Menjadi pelopor dalam penjaminan mutu perguruan tinggi dengan menerapkan sistem yang setara dengan tuntutan akreditasi internasional.</p>\r\n<h5>Misi SPM-FASTIKOM</h5>\r\n<ol>\r\n<li>Mendorong terbentuknya lingkungan FASTIKOM yang memiliki budaya mengutamakan mutu</li>\r\n<li>Menyusun, mengimplementasikan, dan melakukan perbaikan berkelanjutan terhadap sistem penjaminan mutu internal</li>\r\n<li>Menyusun, mengimplementasikan, dan melakukan perbaikan berkelanjutan terhadap sistem penjaminan mutu akademik berbasis &ldquo;outcomes&rdquo; yang merupakan basis dalam proses evaluasi oleh berbagai badan akreditasi internasional</li>\r\n<li>Membimbing dan memfasilitasi Fakultas/Sekolah dan Program Studi dalam mempersiapkan, melaksanakan proses dan meraih pengakuan dari lembaga akreditasi nasional dan internasional</li>\r\n</ol>\r\n<h5>Tujuan Strategis SPM FASTIKOM</h5>\r\n<p>Dalam rangka mencapai Visi dan Misi tersebut di atas, maka tujuan strategis SPM FASTIKOM adalah:</p>\r\n<p><em>&ldquo;Menjamin pemenuhan standar FASTIKOM secara sistemik dan berkelanjutan, sehingga tumbuh dan berkembang budaya mutu&rdquo;</em></p>\r\n<h5>Sasaran Strategis SPM</h5>\r\n<p>Indikator keberhasilan Satuan Penjaminan Mutu &ndash; FASTIKOM, yaitu:</p>\r\n<ol>\r\n<li>Terbentuknya jaringan koordinasi, bimbingan dan fasilitasi akreditasi Program Studi dan akreditasi institusi/kelembagaan FASTIKOM, baik akreditasi nasional maupun internasional</li>\r\n<li>Dikembangkan dan diterapkannya standar mutu, panduan pencapaian standar mutu dan perangkat asesmennya pada kegiatan Kelompok Keahlian</li>\r\n<li>Terbentuknya koordinasi pelaksanaan kegiatan penjaminan mutu program akademik pada UKA dan UKP</li>\r\n</ol>', 1611872200),
(18, 0, 'Fungsi dan Tugas SPM', 'fungsi-dan-tugas-spm', '', '<div class=\"fullwidth\">\r\n<div class=\"vc_row wpb_row vc_inner vc_row-fluid vc_custom_1594314772776\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<h4 class=\"vc_custom_heading vc_custom_1594314686589\">Fungsi SPM</h4>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>Sebagai perangkat Rektor, SPM berfungsi menyelenggarakan proses penjaminan mutu terhadap program dan kegiatan institut di Satuan Akademik, Satuan Kekayaan dan Dana, dan Satuan Usaha Komersial dalam upaya mencapai indikator kinerja yang telah ditetapkan untuk kurun waktu tertentu. SPM menjamin perbaikan secara menerus pelaksanaan dan capaian program dan kegiatan Institut.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"fullwidth\">\r\n<div class=\"vc_row wpb_row vc_inner vc_row-fluid vc_custom_1594314782801\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<h4 class=\"vc_custom_heading vc_custom_1594314714760\">Tugas SPM</h4>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<ol>\r\n<li>Mengembangkan perangkat dan panduan penjaminan mutu program akademik pendidikan, penelitian dan<br />pengabdian kepada masyarakat, serta program dan kegiatan non-akademik, yang sifatnya umum.</li>\r\n<li>Mengkordinasikan pelaksanaan kegiatan penjaminan mutu program akademik dan non-akademik Satuan Akademik,<br />Satuan Kekayaan dan Dana, dan Satuan Usaha Komersial.</li>\r\n<li>Melaksanakan kajian-kajian terhadap hasil pelaksanaan penjaminan mutu yang dilaksanakan oleh Satuan<br />Akademik, Satuan Kekayaan dan Dana, dan Satuan Usaha Komersial.</li>\r\n<li>Menyampaikan hasil kajiannya kepada Rektor, dengan tembusan sebagai masukan untuk Senat Akademik dan<br />Majelis Wali Amanah.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"fullwidth\">\r\n<div class=\"vc_row wpb_row vc_inner vc_row-fluid vc_custom_1594314782801\">\r\n<div class=\"wpb_column vc_column_container vc_col-sm-12\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<h4 class=\"vc_custom_heading vc_custom_1594314822233\">Tugas Tugas Khusus SPM</h4>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<ol>\r\n<li>Melakukan asesmen mutu program, kegiatan dan layanan manajemen pada unit kerja di Satuan Akademik&nbsp;</li>\r\n<li>Memandu, memfasilitasi dan mengkoordinisasikan terlaksananya akreditasi program studi dan akreditasi<br />institusi/kelembagaan FASTIKOM oleh Badan/Lembaga Akreditasi dalam dan luar negeri.</li>\r\n<li>Memandu, memfasilitasi dan mengkoordinasikan terlaksananya kegiatan sertifikasi manajemen mutu (quality<br />management) dan sertifikasi standar penjaminan mutu (quality assurance standards) pada unit kerja di lingkungan<br />FASTIKOM.</li>\r\n<li>Memberikan layanan penjaminan mutu berupa pendampingan jaminan mutu dan akreditasi program studi; pendampingan jaminan mutu kelompok keilmuan/keahlian dan layanan manajemen baik di lingkungan FASTIKOM maupun di lingkungan Perguruan Tinggi / Institusi Mitra.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1611872357),
(20, 0, 'Struktur Organisasi SPM', 'struktur-organisasi-spm', '', '<p>Untuk mencapai keberhasilan misi tersebut,&nbsp; mengembangkan struktur organisasi yang terdiri dari ketua, sekretaris, kepala bidang (kabid) dan anggota. Tim&nbsp; terdiri dari 16 orang dosen perwakilan dari masing-masing fakultas dan 5 orang staf administrasi. Selain itu, juga mewadahi kelompok auditor internal, kelompok asesor BAN-PT dan kelompok asesor internal akreditasi internasional.</p>\r\n<h5><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/04/Susunan-Organisasi-PJM-2019-2020.jpg\" data-lb-type=\"grouped-post\"><img class=\"aligncenter wp-image-4073 size-large\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/04/Susunan-Organisasi-PJM-2019-2020-1024x709.jpg\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/04/Susunan-Organisasi-PJM-2019-2020-1024x709.jpg 1024w, https://pjm.ub.ac.id/wp-content/uploads/2020/04/Susunan-Organisasi-PJM-2019-2020-300x208.jpg 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/04/Susunan-Organisasi-PJM-2019-2020-768x532.jpg 768w, https://pjm.ub.ac.id/wp-content/uploads/2020/04/Susunan-Organisasi-PJM-2019-2020.jpg 1040w\" alt=\"\" width=\"1024\" height=\"709\" /></a></h5>\r\n<p style=\"text-align: center;\">Gambar Struktur Organisasi SPM</p>\r\n<p>&nbsp;</p>\r\n<p>Tim PJM yang terlibat dalam organisasi dapat dilihat di halaman&nbsp;<a href=\"https://pjm.ub.ac.id/profile/human-resources/\">Sumber Daya Manusia</a>.</p>\r\n<p>Sesuai struktur organisasi SPM FASTIKOM menetapkan tugas&nbsp; pokok&nbsp; dan&nbsp; fungsi masing-masing personil sebagai berikut:</p>\r\n<p>Ketua</p>\r\n<ol>\r\n<li>Menjadi pimpinan puncak (top management) bagi implementasi Sistem Penjaminan Mutu Internal yang terintegrasi dengan Sistem Manajemen Mutu ISO 9001 di SPM.</li>\r\n<li>Melakukan koordinasi, perencanaan, pemantauan dan evaluasi terhadap pelaksanaan tugas yang dilaksanakan oleh setiap kepala bidang SPM.</li>\r\n<li>Bertanggung jawab dalam pelaksanaan tugas SPM dan melaporkannya kepada Rektor melalui Ketua LP3M.</li>\r\n</ol>\r\n<p>Sekretaris</p>\r\n<ol>\r\n<li>Membantu KetuaSPM sebagai wakil manajemen (management representative) dalam koordinasi, perencanaan, pemantauan, evaluasi dan pelaporan kegiatan sesuai mandat berikut anggarannya.</li>\r\n<li>Bertanggung jawab dalam pelaksanaan surat-menyurat yang berkaitan dengan SPM dan mengarsipkannya.</li>\r\n<li>Bertanggung jawab dalam perencanaan, pelaksanaan dan pengelolaan kaji ulang manajemen (management review), rapat rutin, rapat koordinasi, pengelolaan umpan balik, dan rapat evaluasi kegiatan.</li>\r\n<li>Bertanggung jawab atas penyusunan konsep laporan kegiatan rutin dan insidental di SPM.</li>\r\n<li>Bertanggung jawab atas pemutakhiran dan review profil SPM berbasis teknologi informasi.</li>\r\n<li>Bertanggung jawab kepada Ketua SPM.</li>\r\n</ol>\r\n<p>Kepala Bidang SPMI</p>\r\n<ol>\r\n<li>Menyusun dan mengembangkan SPMI berikut dokumentasinya di FASTIKOM.</li>\r\n<li>Mengoordinir pelaksanaan, pemantauan dan evaluasi SPMI di UB bekerjasama dengan Gugus Jaminan Mutu (GJM) dan Unit Jaminan Mutu (UJM).</li>\r\n<li>Mengoordinir unit kerja di FATIKOM dalam menerapkan standar mutu FASTIKOM.</li>\r\n<li>Bertanggung jawab kepada Ketua SPM.</li>\r\n</ol>\r\n<p>Kepala Bidang Audit Internal Mutu</p>\r\n<ol>\r\n<li>Menyusun dan mengembangkan sistem AIM bidang akademik berbasis teknologi informasi untuk mengendalikan ketercapaian standar mutu.</li>\r\n<li>Mengoordinir pelaksanaan, pemantauan, evaluasi hasil audit internal di semua unit kerja, berikut tindak lanjut perbaikan dan dokumentasinya.</li>\r\n<li>Mengoordinir pengembangan sumber daya manusia untuk pelaksanaan AIM.</li>\r\n<li>Bertanggung jawab kepada KetuaSPM.</li>\r\n</ol>\r\n<p>Kepala Bidang Akreditasi Nasional</p>\r\n<ol>\r\n<li>Mengoordinir pengembangan sistem peringatan dini berbasis teknologi informasi (early warning system) untuk menjamin peningkatan kualifikasi akreditasi nasional.</li>\r\n<li>Mengoordinir pelaksanaan, pemantauan dan pelaporan sistem pendampingan penyusunan dokumen, serta persiapan visitasi akreditasi nasional.</li>\r\n<li>Mengoordinir pengembangan sumber daya manusia untuk menjamin peningkatan kualifikasi akreditasi nasional.</li>\r\n<li>Memantau kemajuan proses akreditasi melalui Sistem Akreditasi Perguruan Tinggi Online (SAPTO).</li>\r\n<li>Bertanggung jawab kepada Ketua SPM.</li>\r\n</ol>\r\n<p>Kepala Bidang Akreditasi/Sertifikasi Internasional</p>\r\n<ol>\r\n<li>Mengoordinir pengembangan sistem peringatan dini untuk menjamin kualifikasi akreditasi/sertifikasi internasional.</li>\r\n<li>Mengoordinir pelaksanaan, pemantauan dan pelaporan sistem pendampingan penyusunan dokumen, serta persiapan visitasi akreditasi/sertifikasi internasional.</li>\r\n<li>Mengoordinir pengembangan sumber daya manusia untuk menjamin peningkatan kualifikasi akreditasi/sertifikasi internasional.</li>\r\n<li>Memantau tindak lanjut saran asesor akreditasi/sertifikasi internasional.</li>\r\n<li>Melakukan benchmarking akreditasi/sertifikasi internasional kepada badan akreditasi/sertifikasi atau perguruan tinggi.</li>\r\n<li>Bertanggung jawab kepada Ketua SPM.</li>\r\n</ol>\r\n<p>Kepala Bidang Pelayanan Mutu</p>\r\n<ol>\r\n<li>Membantu sekretaris dalam pengelolaan umpan balik dan rapat evaluasi kegiatan.</li>\r\n<li>Bertanggung jawab atas pemutakhiran dan reviu profil SPM berbasis teknologi informasi.</li>\r\n<li>Bertanggung jawab dalam peningkatan kompetensi tim SPM.</li>\r\n<li>Bertanggung jawab dalam pelaksanaan sertifikasi auditor/reviewer internal.</li>\r\n<li>Memberikan layanan kepada masyarakat dan perguruan tinggi mitra.</li>\r\n<li>Bertanggung jawab dalam pelaksanaan program asuh FASTIKOM.</li>\r\n<li>Bertanggung jawab kepada Ketua FASTIKOM.</li>\r\n</ol>\r\n<p>Anggota Bidang</p>\r\n<ol>\r\n<li>Membantu Kepala Bidang dalam penyusunan, pelaksanaan, pemantauan, evaluasi dan pelaporan program, serta pengembangan sistem.</li>\r\n<li>Bertanggung jawab kepada Kepala Bidang.</li>\r\n</ol>\r\n<p>Staf Pendukung</p>\r\n<ol>\r\n<li>Membantu pengelolaan kegiatan sekretariat, sistem dokumentasi, sumber daya manusia, keuangan, aset, sistem informasi, dan management review.</li>\r\n<li>Membantu perencanaan, pelaksanaan, evaluasi, dan tindak lanjut program SPM sesuai mandat.</li>\r\n<li>Membantu pekerjaan lain terkait tugas FASTIKOM.</li>\r\n</ol>', 1611872787),
(21, 0, 'E-SPMI', 'e-spmi', '', '<header class=\"entry-header \">\r\n<div class=\"entry-header-inner\">\r\n<h1 class=\"entry-title\">Sistem Penjaminan Mutu Internal (SPMI)</h1>\r\n</div>\r\n</header>\r\n<div class=\"post-entry tc-content-inner\">\r\n<section class=\"post-content entry-content \">\r\n<div class=\"czr-wp-the-content\">\r\n<p>Sistem Penjaminan Mutu Internal (SPMI)Fakultas Teknik dan Ilmu Komputer dimulai sejak terbentuknya <em>Benefit Monitoring Evaluation</em>&nbsp;(BME) pada tahun 2003 yaitu organisasi yang dibentuk oleh Rektor dan berfungsi melaksanakan Monitoring dan Evaluasi Internal (Monevin) Program Hibah Kompetisi (PHK) Dikti Due-Like dan TPSDP yang diperoleh UB. Bertambahnya fungsi yang tidak hanya melaksanakan monevin PHK, namun juga mengembangkan sistem penjaminan mutu akademik dan akreditasi program studi (prodi), maka nama BME berubah menjadi Pusat Jaminan Mutu (PJM) pada tahun 2005. Selanjutnya, sistem penjaminan mutu yang semula dikembangkan pada tahun 2005 adalah Sistem Penjaminan Mutu Akademik (SPMA) dan dikonversi menjadi SPMI pada tahun 2007 dengan mencakup bidang akademik dan non akademik.</p>\r\n<figure id=\"attachment_4326\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-4326\"><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Pengembangan-SPMI-UB.png\" data-lb-type=\"grouped-post\"><img class=\"wp-image-4326\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Pengembangan-SPMI-UB.png\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Pengembangan-SPMI-UB.png 973w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Pengembangan-SPMI-UB-300x182.png 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Pengembangan-SPMI-UB-768x466.png 768w\" alt=\"\" width=\"600\" height=\"364\" /></a>\r\n<figcaption id=\"caption-attachment-4326\" class=\"wp-caption-text\">Pengembangan SPMI&nbsp; Tahun 2003 s.d sekarang</figcaption>\r\n</figure>\r\n<p>&nbsp;</p>\r\n<p>SPMI tersebut disusun dan dijalankan sesuai kebijakan dan regulasi yang berlaku di tingkat nasional dan internasional. Pelaksanaan dan pengembangan SPMI di FASTIKOM dimaksudkan sebagai kegiatan integral untuk mencapai standar/kriteria Sistem Penjaminan Mutu Eksternal (SPME) yang diterapkan melalui akreditasi, sertifikasi dan pengakuan-pengakuan lain. Untuk itu, skema penjaminan mutu di FASTIKOM menggabungkan SPMI dan SPME untuk pencapaian mutu yang ditetapkan.</p>\r\n<figure id=\"attachment_4328\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-4328\"><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Skema-Penjaminan-Mutu-UB.png\" data-lb-type=\"grouped-post\"><img class=\"wp-image-4328\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Skema-Penjaminan-Mutu-UB-300x292.png\" sizes=\"(max-width: 450px) 100vw, 450px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Skema-Penjaminan-Mutu-UB-300x292.png 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Skema-Penjaminan-Mutu-UB.png 600w\" alt=\"\" width=\"450\" height=\"437\" /></a>\r\n<figcaption id=\"caption-attachment-4328\" class=\"wp-caption-text\">Skema Penjaminan Mutu UB</figcaption>\r\n</figure>\r\n<p>Secara umum, SPMI tersebut memiliki tujuan sebagai berikut:</p>\r\n<ol>\r\n<li>Mencapai visi-misi melalui pemenuhan standar mutu dengan cara perbaikan berkelanjutan/<em>continous improvement</em>), menggunakan manajemen berbasis proses;</li>\r\n<li>Kepuasan pelanggan (<em>customer satisfaction</em>);</li>\r\n<li>Kepuasan pelanggan terpelihara (<em>customer care</em>).</li>\r\n</ol>\r\n<p>Secara khusus SPMI UB memiliki tujuan sebagai berikut:</p>\r\n<ol>\r\n<li>Meningkatkan kinerja manajemen unit kerja di lingkungan FASTIKOM dengan: (a) Memenuhi standar mutu atau sasaran mutu yang telah ditetapkan, sehingga visi dan misi FASTIKOM dapat dicapai; (b) Meningkatkan pelayanan, sehingga dapat memenuhi harapan atau kepuasan pengguna jasa layanan;</li>\r\n<li>Meningkatkan akreditasi/sertifikasi Institusi, Program Studi dan laboratorium;</li>\r\n<li>Mendapatkan pengakuan eksternal dan peningkatan reputasi;</li>\r\n<li>Akselerasi pencapaian&nbsp;<em>World Class Entrepreneurial University</em>&nbsp;(WCEU).</li>\r\n</ol>\r\n<p>Untuk menginisiasi SPMI,FASTIKOM menerapkan langkah-langkah yang disebut &ldquo;siklus penjaminan mutu&rdquo;, yaitu OSDAT yang diturunkan dari siklus manajemen <em>Plan Do Check Action</em>&nbsp;(PDCA). Terkait standar mutu, pada prinsipnya OSDAT ini menyerupai siklus PPEPP (Penetapan, Pelaksanaan, Evaluasi, Pengendalian dan Peningkatan Standar). OSDAT memiliki singkatan dari:</p>\r\n<ol>\r\n<li>Menyusun organisasi penjaminan mutu (O);</li>\r\n<li>Menyusun sistem berupa Kebijakan dan Sistem Dokumen (standar mutu, manual mutu, manual prosedur dan instruksi kerja) (S);</li>\r\n<li>Sistem dijalankan (sosialisasi dan menjadi acuan kerja) (D);</li>\r\n<li>Melakukan Audit Internal Mutu (AIM). (satu siklus penjaminan mutu) (A);</li>\r\n<li>Tindak Lanjut (T).</li>\r\n</ol>\r\n<h5>&nbsp;</h5>\r\n<figure id=\"attachment_4327\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-4327\"><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Siklus-SPMI-UB.png\" data-lb-type=\"grouped-post\"><img class=\"wp-image-4327\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Siklus-SPMI-UB.png\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Siklus-SPMI-UB.png 965w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Siklus-SPMI-UB-300x181.png 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Siklus-SPMI-UB-768x464.png 768w\" alt=\"\" width=\"700\" height=\"423\" /></a>\r\n<figcaption id=\"caption-attachment-4327\" class=\"wp-caption-text\">Siklus SPMI di UB</figcaption>\r\n</figure>\r\n<p>&nbsp;</p>\r\n<p>Secara umum, organisasi penjaminan mutu di UB adalah unit kerja fungsional yang melekat dengan unit kerja struktural, sehingga dalam menjalankan tugas pokok dan fungsi (Tupoksi) selalu melibatkan pejabat struktural. Dalam hal ini, antara unit penjaminan mutu di universitas (Pusat Jaminan Mutu PJM), fakultas/program (Gugus Jaminan Mutu GJM) dan jurusan/PS (Unit Jaminan Mutu UJM) terdapat hubungan koordinasi, serta masing-masing bertanggung jawab terhadap pimpinan unit kerja (Gambar 1.4).</p>\r\n<figure id=\"attachment_4325\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-4325\"><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Organisasi-Penjaminan-Mutu-UB.png\" data-lb-type=\"grouped-post\"><img class=\"wp-image-4325\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Organisasi-Penjaminan-Mutu-UB.png\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Organisasi-Penjaminan-Mutu-UB.png 955w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Organisasi-Penjaminan-Mutu-UB-300x181.png 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Organisasi-Penjaminan-Mutu-UB-768x462.png 768w\" alt=\"\" width=\"700\" height=\"421\" /></a>\r\n<figcaption id=\"caption-attachment-4325\" class=\"wp-caption-text\">Organisasi Penjaminan Mutu UB</figcaption>\r\n</figure>\r\n<h5>&nbsp;</h5>\r\n<p>Pusat Jaminan Mutu (PJM) di tingkat universitas mempunyai tugas pokok membantu Rektor dalam menyusun dan mengkoordinasikan implementasi SPMI di UB. Sesuai mandat tersebut, maka struktur organisasi PJM disesuaikan dengan kebutuhan pemenuhan tugas dan fungsi.</p>\r\n<figure id=\"attachment_4329\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-4329\"><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Susunan-Organisasi-PJM.png\" data-lb-type=\"grouped-post\"><img class=\"wp-image-4329\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Susunan-Organisasi-PJM.png\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Susunan-Organisasi-PJM.png 938w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Susunan-Organisasi-PJM-300x190.png 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Susunan-Organisasi-PJM-768x486.png 768w\" alt=\"\" width=\"700\" height=\"443\" /></a>\r\n<figcaption id=\"caption-attachment-4329\" class=\"wp-caption-text\">Struktur Organisasi PJM UB</figcaption>\r\n</figure>\r\n<h5>&nbsp;</h5>\r\n<p>Pusat Jaminan Mutu (PJM) UB memiliki visi &ldquo;membudayakan sistem penjaminan mutu internal (SPMI) di UB dalam rangka menuju&nbsp;<em>world class enterpreneurial university</em>&rdquo;. Untuk mewujudkan visi tersebut, PJM UB menetapkan misi berikut:</p>\r\n<ol>\r\n<li>Mengembangkan dan mengimplementasikan SPMI di UB secara berkelanjutan.</li>\r\n<li>Berpartisipasi aktif dalam pengembangan&nbsp;<em>early warning system</em>.</li>\r\n<li>Menjadikan UB sebagai&nbsp;<em>center of excellence</em>&nbsp;dalam SPMI.</li>\r\n</ol>\r\n<p>Pelaksanaan SPMI UB juga dalam rangka menyiapkan penjaminan mutu eksternal (akreditasi nasional BAN-PT/LAM, akreditasi/sertifikasi internasional, sertifikasi ISO 9001 untuk seluruh unit kerja UB, akreditasi ISO 17025 untuk Laboratorium Uji/Kalibrasi dan Standar Pelayanan Prima Kementerian PAN-RB), sehingga Pusat Jaminan Mutu UB membangun SPMI dengan model yang khas UB, yaitu sistem penjaminan mutu yang menggabungkan Sistem Penjaminan Mutu Perguruan Tinggi (SPMPT) DIKTI, SMM ISO 9001, sistem akreditasi BAN-PT/LAM, Standar Pelayanan Prima serta kriteria akreditasi/sertifikasi internasional.</p>\r\n<p>Sistem dokumentasi UB mengacu pada sistem dokumentasi SPMPT (Dikti) yang diintegrasikan dengan sistem dokumentasi Sistem Manajemen Mutu (SMM) ISO 9001, sehingga sistem dokumentasi SPMI menjadi khas UB. Dokumen SPMI terdiri dari dokumen induk dan dokumen mutu. Dokumen induk menjadi acuan dalam penyusunan dokumen mutu.</p>\r\n<figure id=\"attachment_4347\" class=\"wp-caption aligncenter\" aria-describedby=\"caption-attachment-4347\"><a href=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Klasifikasi-Dokumen-SPMI-UB.png\" data-lb-type=\"grouped-post\"><img class=\"wp-image-4347\" src=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Klasifikasi-Dokumen-SPMI-UB.png\" sizes=\"(max-width: 700px) 100vw, 700px\" srcset=\"https://pjm.ub.ac.id/wp-content/uploads/2020/05/Klasifikasi-Dokumen-SPMI-UB.png 925w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Klasifikasi-Dokumen-SPMI-UB-300x186.png 300w, https://pjm.ub.ac.id/wp-content/uploads/2020/05/Klasifikasi-Dokumen-SPMI-UB-768x477.png 768w\" alt=\"\" width=\"700\" height=\"435\" /></a>\r\n<figcaption id=\"caption-attachment-4347\" class=\"wp-caption-text\">* Sesuai persyaratan dokumentasi SPMI (Permenristekdikti 62/2016)<br />** Bersifat opsional sesuai kebijakan fakultas<br />*** Meliputi rencana strategis pengembangan keilmuan masing-masing PS</figcaption>\r\n</figure>\r\n</div>\r\n</section>\r\n</div>', 1611874673);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `usm_id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `usm_id`, `judul`, `url`) VALUES
(1, 1, 'manajemen menu', 'coba');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_l1`
--

CREATE TABLE `menu_l1` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `Nama` varchar(128) NOT NULL,
  `position` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_l1`
--

INSERT INTO `menu_l1` (`id`, `menu_id`, `Nama`, `position`, `deskripsi`) VALUES
(1, 1, 'Lembaga Setandar', 'bottom', 'Lembaga Standar yaitu lembaga yang menyusun dan mengelola Standar dalam Proses Akreditasi PT.'),
(2, 2, 'SPM FASTIKOM', 'bottom', 'SPM FASTIKOM merupakan sistem Penjaminan Mutu di Lingkup Fakultas Teknik dan ilmu Komputer, yang di harapkan bisa meningkatkan setandar mutu bagi Fakultas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_l2`
--

CREATE TABLE `menu_l2` (
  `id` int(11) NOT NULL,
  `Nama_sub` varchar(128) NOT NULL,
  `id_l1` int(11) NOT NULL,
  `id_menu2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_l2`
--

INSERT INTO `menu_l2` (`id`, `Nama_sub`, `id_l1`, `id_menu2`) VALUES
(1, 'SPMI', 1, 1),
(2, 'Regulasi dan Kebijakan', 2, 2),
(3, 'SPME', 1, 3),
(4, 'Tentang SPm fastikom', 2, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_l3`
--

CREATE TABLE `menu_l3` (
  `id` int(11) NOT NULL,
  `role_isi` int(11) NOT NULL,
  `Kode_setandar` varchar(5) NOT NULL,
  `nama_submenu` varchar(128) NOT NULL,
  `id_l2` int(11) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_l3`
--

INSERT INTO `menu_l3` (`id`, `role_isi`, `Kode_setandar`, `nama_submenu`, `id_l2`, `url`) VALUES
(1, 1, 'S1', 'Setandar Perkuliahaan', 1, 'halaman/detail/setandar-perkuliahan'),
(2, 2, 'S2', 'Elemen SPMI', 1, 'halaman/detail/Elemen-SPMI'),
(3, 3, 'S3', 'Setandar Mutu', 1, 'halaman/detail/Setandar-Mutu'),
(4, 4, 'S4', 'Undang-Undang', 2, 'halaman/detail/undang-undang'),
(5, 5, 'S5', 'Peraturan Pemerintah', 2, 'halaman/detail/peraturan-pemerintah'),
(6, 6, '', 'BAN-PT', 3, 'Halaman/detail/BAN-PT'),
(7, 6, '', 'LAM-Aptikom', 3, 'halaman/detail/LAM-Aptikom'),
(8, 0, '', 'Struktur Organisasi SPM', 4, 'halaman/detail/Struktur-Organisasi-SPM'),
(9, 0, '', 'Visi dan Misi SPM-Fastikom', 4, 'halaman/Detail/Visi-dan-Misi-SPM-Fastikom'),
(10, 0, '', 'Fungsi dan Tugas SPM', 4, 'halaman/detail/Fungsi-dan-Tugas-SPM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `nohp`, `image`, `password`, `role_id`, `date_created`, `is_active`) VALUES
(7, 'Ma\'ruf', 'm@gmail.com', '081234567890', '3.png', '$2y$10$5D60Tsoq7bwch8pOMlXYvOvE5UxuYt6OLkFAXfnAGnvWIgiJgst6e', 1, 1610879162, 1),
(8, 'agun', 'a@gmail.com', '081232354668', 'default.png', '$2y$10$KCPl3SCQHTUcQ0N2Vu3rj.AtG5GtXZtKOrAdxPUz6Au3jwZwH7gwe', 2, 1610920952, 0),
(9, 'agun', 'i@gmail.com', '12345612', 'default.png', '$2y$10$5zg4hnWT6BXsyeIVVSKgr.h3iB29.RLCo7K6Vf1NtcVJGqw.1QrPC', 3, 1610931946, 1),
(10, 'agun', 'b@gmail.com', '12345', '123.png', '$2y$10$SZAAhA3CxN2s/bfiQKLB1.bcwIPZd3qDa6nf8QBHXGRJR5Eha14Zq', 2, 1611655475, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'menejemen representative'),
(2, 'UMP dan GPM'),
(3, 'Auditor'),
(4, 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `submenu` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `submenu`, `url`, `icon`) VALUES
(1, 1, 'Menejemen Refrensi', 'mr/menejemenrefrensi', 'fas fa-fw fa-folder-open'),
(2, 1, 'Menejemen Arsip', 'mr/Menejemenarsip', 'fas fa-fw fa-file-archive'),
(3, 2, 'apa', 'bbbbb', 'bbbbb'),
(4, 2, 'saas', 'addd', 'addad'),
(6, 3, 'vvvvvv', 'vvv', 'fab fa-fw fa-youtube');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `file_mr`
--
ALTER TABLE `file_mr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `isi_manajemenrefensi`
--
ALTER TABLE `isi_manajemenrefensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_l1`
--
ALTER TABLE `menu_l1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_l2`
--
ALTER TABLE `menu_l2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_l3`
--
ALTER TABLE `menu_l3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `file_mr`
--
ALTER TABLE `file_mr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `isi_manajemenrefensi`
--
ALTER TABLE `isi_manajemenrefensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu_l1`
--
ALTER TABLE `menu_l1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu_l2`
--
ALTER TABLE `menu_l2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu_l3`
--
ALTER TABLE `menu_l3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
