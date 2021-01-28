-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jan 2021 pada 11.04
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
(8, 'Setandar Sertifikasi', 'FPsikologi.pdf', 0),
(11, 'dokumen ketentuan pakaian bagi mahasisiwa', 'domainseptial.pdf', 1),
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
(24, 'Peraturan Pemerintah No. 23 Tahun 2005 tentang Pengelolaan Keuangan Badan Layanan Umum', 'KARTUN_WAJAH5.pdf', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_manajemenrefensi`
--

CREATE TABLE `isi_manajemenrefensi` (
  `id` int(11) NOT NULL,
  `Kode` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `link_seo` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `tgl_upload` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `isi_manajemenrefensi`
--

INSERT INTO `isi_manajemenrefensi` (`id`, `Kode`, `judul`, `link_seo`, `image`, `isi`, `tgl_upload`) VALUES
(8, 3, 'Setandar Mutu', 'setandar-mutu', '', '<p>Standar Mutu Fakultas Teknik dan Ilmu Komputer telah ditetapkan untuk menjamin peningkatan mutu pendidikan di Fastikom sehingga mampu memenuhi dan melampaui standar minimal yang telah ditetapkan oleh Kemristekdikti dan menumbuhkembangkan budaya mutu di Lingkungan Fakultas Teknik dan Ilmu Komputer.</p>\r\n<p>Daftar Standar Mutu Akademik dalam SPMI Fakultas Teknik dan Ilmu Komputer :</p>', 1611791784),
(9, 1, 'Setandar Perkuliahan', 'setandar-perkuliahan', '', '<p>Standar Perkuliahan Fakultas Teknik dan Ilmu Komputer telah ditetapkan untuk menjamin peningkatan kegiatan perkuliahan&nbsp; di Fastikom sehingga mampu memenuhi dan melampaui standar minimal yang telah ditetapkan oleh Kemristekdikti dan menumbuhkembangkan budaya Perkuliahan di Lingkungan Fakultas Teknik dan Ilmu Komputer.</p>\r\n<p>Daftar Standar Pendidikan dalam SPMI Fakultas Teknik dan Ilmu Komputer&nbsp;</p>', 1611798921),
(10, 2, 'Setandar Sertifikasi', 'setandar-sertifikasi', '', '<p>Standar Sertifikasi Fakultas Teknik dan Ilmu Komputer telah ditetapkan untuk menjamin Proses Sertifikasi di Fastikom sehingga mampu memenuhi dan melampaui standar minimal yang telah ditetapkan oleh Kemristekdikti</p>\r\n<p>Daftar Standar Sertifikasi dalam SPMI Fakultas Teknik dan Ilmu Komputer :</p>', 1611799618),
(11, 4, 'Undang-Undang', 'undang-undang', '', '<p><strong>Undang Undang yang berkenaan dengan Penyelenggaraan Fakultas Teknik Informatika</strong></p>', 1611803303),
(12, 5, 'Peraturan Pemerintah', 'peraturan-pemerintah', '', '<p><strong>Peraturan Pemerintah yang berkenaan dengan Penyelenggaraan Fastikom sebagai berikut:</strong></p>', 1611803612);

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
(2, 2, 'menejemen', 'bottom', 'Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.'),
(3, 3, 'arsip', '', 'banannnnnnnnnnnnnnnnnb naaaaaaaaaaaaaaaaaa annnnnnnnnnnnnnnnnnnnn '),
(4, 4, 'nanam ', '', 'a,,annnnnnnnnnnnnnn');

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
(1, 'BAN-PT dan LAM', 1, 1),
(2, 'Regulasi dan Kebijakan', 1, 2),
(3, 'abc', 2, 3),
(4, 'aaaaaaaaaaaa', 3, 4);

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
(2, 2, 'S2', 'Setandar Sertifikasi', 1, 'halaman/detail/setandar-sertifikasi'),
(3, 3, 'S3', 'Setandar Mutu', 1, 'halaman/detail/Setandar-Mutu'),
(4, 4, 'S4', 'Undang-Undang', 2, 'halaman/detail/undang-undang'),
(5, 5, 'S5', 'Peraturan Pemerintah', 2, 'halaman/detail/peraturan-pemerintah');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `isi_manajemenrefensi`
--
ALTER TABLE `isi_manajemenrefensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
