-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 11:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akreditasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `ed_level` int(1) NOT NULL,
  `ed_desc` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`ed_level`, `ed_desc`) VALUES
(8, 'Magister'),
(9, 'Doktoral');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `nip` varchar(22) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`nip`, `name`) VALUES
('196112171986011001', 'Dr. Drs. V. Lilik Hariyanto M.Pd.'),
('196112311988121001', 'Dr. Drs. I Wayan Suardana M.Sn.'),
('196312281990021002', 'Dr. Drs. Fauzi M.Si.'),
('196312301988121001', 'Dr. Ir. Drs. Widarto M.Pd.'),
('196312301989011001', 'Dr. Drs. Crys Fajar Partana M.Si.'),
('197012182005012001', 'Dr. Ratna Wardani M.T.'),
('197312182000032001', 'Caturiyati S.Si.,M.Si.'),
('197612022005012001', 'Nur Azizah S.Pd., M.Ed., Ph.D.'),
('197612312003122001', 'Panca Putri Rusdewanti S.Pd., M.Pd.'),
('197712152010122002', 'Utami Dewi S.I.P.,M.PP.'),
('197912022003121002', 'Denny Darmawan S.Si.,M.Sc.'),
('197912072005012002', 'Dr. Lismadiana M.Pd.'),
('197912142010122002', 'Dessy Irmawati S.T., M.T.'),
('197912172003122003', 'Venny Indria Ekowati S.Pd., M.Litt.'),
('198012072006042002', 'Siti Umi Khayatun Mardiyah S.Pd., M.Pd.');

-- --------------------------------------------------------

--
-- Table structure for table `emp_education`
--

CREATE TABLE `emp_education` (
  `nip` varchar(22) NOT NULL,
  `ed_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_education`
--

INSERT INTO `emp_education` (`nip`, `ed_level`) VALUES
('197312182000032001', 8),
('197612312003122001', 8),
('197712152010122002', 8),
('197912022003121002', 8),
('197912142010122002', 8),
('197912172003122003', 8),
('198012072006042002', 8),
('196112171986011001', 9),
('196112311988121001', 9),
('196312281990021002', 9),
('196312301988121001', 9),
('196312301989011001', 9),
('197012182005012001', 9),
('197612022005012001', 9),
('197912072005012002', 9);

-- --------------------------------------------------------

--
-- Table structure for table `emp_golongan`
--

CREATE TABLE `emp_golongan` (
  `nip` varchar(18) NOT NULL,
  `gol_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_golongan`
--

INSERT INTO `emp_golongan` (`nip`, `gol_id`) VALUES
('197612312003122001', 5),
('197912022003121002', 6),
('197912142010122002', 6),
('198012072006042002', 6),
('197012182005012001', 8),
('197312182000032001', 8),
('197612022005012001', 8),
('197712152010122002', 8),
('197912172003122003', 8),
('196312281990021002', 9),
('196312301988121001', 9),
('196312301989011001', 9),
('197912072005012002', 9),
('196112171986011001', 11),
('196112311988121001', 11);

-- --------------------------------------------------------

--
-- Table structure for table `emp_position`
--

CREATE TABLE `emp_position` (
  `nip` varchar(18) NOT NULL,
  `position_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_position`
--

INSERT INTO `emp_position` (`nip`, `position_id`) VALUES
('197612312003122001', 11),
('197912022003121002', 11),
('198012072006042002', 11),
('197012182005012001', 12),
('197312182000032001', 12),
('197612022005012001', 12),
('197712152010122002', 12),
('197912142010122002', 12),
('197912172003122003', 12),
('196112171986011001', 13),
('196112311988121001', 13),
('196312281990021002', 13),
('196312301988121001', 13),
('196312301989011001', 13),
('197912072005012002', 13);

-- --------------------------------------------------------

--
-- Table structure for table `emp_status`
--

CREATE TABLE `emp_status` (
  `nip` varchar(18) NOT NULL,
  `status_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_status`
--

INSERT INTO `emp_status` (`nip`, `status_id`) VALUES
('196112171986011001', 1),
('196112311988121001', 1),
('196312281990021002', 1),
('196312301988121001', 1),
('196312301989011001', 1),
('197012182005012001', 1),
('197312182000032001', 1),
('197612022005012001', 1),
('197612312003122001', 1),
('197712152010122002', 1),
('197912022003121002', 1),
('197912072005012002', 1),
('197912142010122002', 1),
('197912172003122003', 1),
('198012072006042002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_unit`
--

CREATE TABLE `emp_unit` (
  `nip` varchar(22) NOT NULL,
  `unit_id` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_unit`
--

INSERT INTO `emp_unit` (`nip`, `unit_id`) VALUES
('197612022005012001', '103'),
('197912172003122003', '205'),
('196112311988121001', '206'),
('197612312003122001', '208'),
('197312182000032001', '301'),
('197912022003121002', '302'),
('196312301989011001', '303'),
('197712152010122002', '407'),
('197012182005012001', '502'),
('197912142010122002', '502'),
('196312301988121001', '503'),
('196112171986011001', '505'),
('196312281990021002', '602'),
('197912072005012002', '602'),
('198012072006042002', '801');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `gol_id` int(2) NOT NULL,
  `gol_name` varchar(8) NOT NULL,
  `gol_desc` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`gol_id`, `gol_name`, `gol_desc`) VALUES
(1, 'II/a', 'Pengatur Muda'),
(2, 'II/b', 'Pengatur Muda Tk. I'),
(3, 'II/c', 'Pengatur'),
(4, 'II/d', 'Pengatur Tk. I'),
(5, 'III/a', 'Penata Muda'),
(6, 'III/b', 'Penata Muda Tk. I'),
(7, 'III/c', 'Penata'),
(8, 'III/d', 'Penata Tk. I'),
(9, 'IV/a', 'Pembina'),
(10, 'IV/b', 'Pembina Tk. I'),
(11, 'IV/c', 'Pembina Utama Muda'),
(12, 'IV/d', 'Pembina Utama Madya'),
(13, 'IV/e', 'Pembina Utama');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(2) NOT NULL,
  `position_desc` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_desc`) VALUES
(11, 'Asisten Ahli'),
(12, 'Lektor'),
(13, 'Lektor Kepala'),
(14, 'Guru Besar / Profesor'),
(21, 'Tenaga Pendidik');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(1) NOT NULL,
  `status_desc` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_desc`) VALUES
(1, 'PNS'),
(2, 'CPNS'),
(3, 'Kontrak');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` varchar(4) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `name`) VALUES
('1', 'Universitas Negeri Yogyakarta'),
('101', 'Administrasi Pendidikan - S1'),
('102', 'Pendidikan Luar Sekolah - S1'),
('103', 'Pendidikan Luar Biasa - S1'),
('104', 'Bimbingan dan Konseling - S1'),
('105', 'Teknologi Pendidikan - S1'),
('106', 'Pendidikan Guru Sekolah Dasar - S1'),
('107', 'Kebijakan Pendidikan - S1'),
('108', 'Pendidikan Guru Pendidikan Anak Usia Dini - S1'),
('109', 'Psikologi - S1'),
('201', 'Pendidikan Bahasa dan Sastra Indonesia - S1'),
('202', 'Pendidikan Bahasa Inggris - S1'),
('203', 'Pendidikan Bahasa Jerman - S1'),
('204', 'Pendidikan Bahasa Perancis - S1'),
('205', 'Pendidikan Bahasa Jawa - S1'),
('206', 'Pendidikan Seni Rupa - S1'),
('207', 'Pendidikan Kriya - S1'),
('208', 'Pendidikan Seni Musik - S1'),
('209', 'Pendidikan Seni Tari - S1'),
('210', 'Sastra Indonesia - S1'),
('211', 'Sastra Inggris - S1'),
('301', 'Pendidikan Matematika - S1'),
('302', 'Pendidikan Fisika - S1'),
('303', 'Pendidikan Kimia - S1'),
('304', 'Pendidikan Biologi - S1'),
('305', 'Matematika - S1'),
('306', 'Fisika - S1'),
('307', 'Kimia - S1'),
('308', 'Biologi - S1'),
('309', 'Pendidikan IPA - S1'),
('310', 'Statistika - S1'),
('401', 'Pendidikan Pancasila dan Kewarganegaraan - S1'),
('402', 'Pendidikan Geografi - S1'),
('403', 'Pendidikan Sejarah - S1'),
('404', 'Ilmu Sejarah - S1'),
('405', 'Pendidikan Sosiologi - S1'),
('406', 'Pendidikan Ilmu Pengetahuan Sosial - S1'),
('407', 'Administrasi Publik - S1'),
('408', 'Ilmu Komunikasi - S1'),
('501', 'Pendidikan Teknik Elektro - S1'),
('502', 'Pendidikan Teknik Elektronika - S1'),
('503', 'Pendidikan Teknik Mesin - S1'),
('504', 'Pendidikan Teknik Otomotif - S1'),
('505', 'Pendidikan Teknik Sipil dan Perencanaan - S1'),
('506', 'Teknik Elektro - D3'),
('507', 'Teknik Elektronika - D3'),
('508', 'Teknik Mesin - D3'),
('509', 'Mesin Otomotif - D3'),
('510', 'Pendidikan Tata Boga - S1'),
('511', 'Tata Boga - D3'),
('512', 'Pendidikan Tata Busana - S1'),
('513', 'Tata Busana - D3'),
('514', 'Pendidikan Teknik Mekatronika - S1'),
('515', 'Tata Rias dan Kecantikan - D3'),
('516', 'Pendidikan Teknik Informatika - S1'),
('517', 'Program Profesi Insinyur - Profesi'),
('518', 'Pendidikan Profesi Guru - Profesi'),
('519', 'Teknologi Informasi - S1'),
('520', 'Teknik Manufaktur - S1'),
('521', 'Teknik Elektro - S1'),
('522', 'Teknik Sipil - S1'),
('601', 'Pendidikan Jasmani Kesehatan dan Rekreasi (PJKR) - S1'),
('602', 'Pendidikan Kepelatihan Olahraga - S1'),
('603', 'Ilmu Keolahragaan - S1'),
('604', 'PGSD Pendidikan Jasmani - S1'),
('701', 'Penelitian dan Evaluasi Pendidikan - S2'),
('702', 'Pendidikan Teknologi dan Kejuruan - S2'),
('703', 'Manajemen Pendidikan - S2'),
('704', 'Pendidikan Luar Sekolah - S2'),
('705', 'Pendidikan Ilmu Pengetahuan Sosial - S2'),
('706', 'Linguistik Terapan - S2'),
('707', 'Teknologi Pembelajaran - S2'),
('708', 'Pendidikan Sains - S2'),
('709', 'Pendidikan Matematika - S2'),
('710', 'Ilmu Keolahragaan - S2'),
('711', 'Pendidikan Dasar - S2'),
('712', 'Penelitian dan Evaluasi Pendidikan - S3'),
('713', 'Pendidikan Teknologi dan Kejuruan - S3'),
('714', 'Ilmu Pendidikan - S3'),
('715', 'Manajemen Pendidikan - S3'),
('716', 'Ilmu Pendidikan Bahasa - S3'),
('717', 'Bimbingan dan Konseling - S2'),
('718', 'Pendidikan Seni - S2'),
('719', 'Pendidikan Biologi - S2'),
('720', 'Pendidikan Fisika - S2'),
('721', 'Pendidikan Geografi - S2'),
('722', 'Pendidikan Teknik Elektronika dan Informatika - S2'),
('723', 'Pendidikan Luar Biasa - S2'),
('724', 'Pendidikan Teknik Mesin - S2'),
('725', 'Pendidikan Kesejahteraan Keluarga - S2'),
('726', 'Pendidikan Dasar - S3'),
('727', 'Pendidikan Kimia - S2'),
('728', 'Pendidikan Bahasa Jawa - S2'),
('729', 'Pendidikan Bahasa dan Sastra Indonesia - S2'),
('730', 'Pendidikan Bahasa Inggris - S2'),
('731', 'Pendidikan Anak Usia Dini - S2'),
('732', 'Pendidikan Sejarah - S2'),
('733', 'Pendidikan Ekonomi - S2'),
('734', 'Pendidikan Teknik Elektro - S2'),
('735', 'Pendidikan Pancasila dan Kewarganegaraan - S2'),
('736', 'Psikologi - S2'),
('737', 'Pendidikan Kimia - S3'),
('801', 'Pendidikan Administrasi Perkantoran - S1'),
('802', 'Pendidikan Ekonomi - S1'),
('803', 'Manajemen - S1'),
('804', 'Akuntansi - D3'),
('805', 'Manajemen Pemasaran - D3'),
('806', 'Administrasi Perkantoran - D3'),
('807', 'Akuntansi - S1'),
('808', 'Pendidikan Akuntansi - S1');

-- --------------------------------------------------------

--
-- Table structure for table `unit_accred`
--

CREATE TABLE `unit_accred` (
  `unit_id` varchar(4) NOT NULL,
  `accred_no` varchar(36) NOT NULL,
  `accred_comm_date` date NOT NULL,
  `accred_start_date` date NOT NULL,
  `accred_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_accred`
--

INSERT INTO `unit_accred` (`unit_id`, `accred_no`, `accred_comm_date`, `accred_start_date`, `accred_end_date`) VALUES
('1', '3127/SK/BAN-PT/Akred/PT/XII/2016', '2000-01-01', '2000-01-01', '2000-01-01'),
('101', 'SPS: 024649', '2000-01-01', '2000-01-01', '2000-01-01'),
('102', 'SPS:017243', '2000-01-01', '2000-01-01', '2000-01-01'),
('103', 'SPS:018775', '2000-01-01', '2000-01-01', '2000-01-01'),
('104', 'SPS:022442', '2000-01-01', '2000-01-01', '2000-01-01'),
('105', 'SPS:017889', '2000-01-01', '2000-01-01', '2000-01-01'),
('106', 'SPS: 024264', '2000-01-01', '2000-01-01', '2000-01-01'),
('107', 'SPS:017246', '2000-01-01', '2000-01-01', '2000-01-01'),
('108', 'SPS:019549', '2000-01-01', '2000-01-01', '2000-01-01'),
('109', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('201', 'SPS:022245', '2000-01-01', '2000-01-01', '2000-01-01'),
('202', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('203', 'SPS:018952', '2000-01-01', '2000-01-01', '2000-01-01'),
('204', '-', '2000-01-01', '2000-01-01', '2000-01-01'),
('205', 'SPS:019840', '2000-01-01', '2000-01-01', '2000-01-01'),
('206', 'SPS:017074', '2000-01-01', '2000-01-01', '2000-01-01'),
('207', 'SPS 022076', '2000-01-01', '2000-01-01', '2000-01-01'),
('208', 'SPS:014472', '2000-01-01', '2000-01-01', '2000-01-01'),
('209', 'SPS: 022134', '2000-01-01', '2000-01-01', '2000-01-01'),
('210', 'SPS 017244', '2000-01-01', '2000-01-01', '2000-01-01'),
('211', 'SPS 017110', '2000-01-01', '2000-01-01', '2000-01-01'),
('301', 'SPS:019358', '2000-01-01', '2000-01-01', '2000-01-01'),
('302', 'SPS:018539', '2000-01-01', '2000-01-01', '2000-01-01'),
('303', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('304', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('305', 'SPS:020282', '2000-01-01', '2000-01-01', '2000-01-01'),
('306', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('307', 'SPS:012058', '2000-01-01', '2000-01-01', '2000-01-01'),
('308', 'SPS:020184', '2000-01-01', '2000-01-01', '2000-01-01'),
('309', 'SPS:019071', '2000-01-01', '2000-01-01', '2000-01-01'),
('310', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('401', 'SPS:016093', '2000-01-01', '2000-01-01', '2000-01-01'),
('402', 'SPS:016094', '2000-01-01', '2000-01-01', '2000-01-01'),
('403', 'SPS: 023984', '2000-01-01', '2000-01-01', '2000-01-01'),
('404', 'SPS: 022387', '2000-01-01', '2000-01-01', '2000-01-01'),
('405', 'SPS: 021907', '2000-01-01', '2000-01-01', '2000-01-01'),
('406', 'SPS:022430', '2000-01-01', '2000-01-01', '2000-01-01'),
('407', 'SPS:016238', '2000-01-01', '2000-01-01', '2000-01-01'),
('408', 'SPS: 024085', '2000-01-01', '2000-01-01', '2000-01-01'),
('501', 'SPS:017779', '2000-01-01', '2000-01-01', '2000-01-01'),
('502', 'SPS:019070', '2000-01-01', '2000-01-01', '2000-01-01'),
('503', 'SPS:017109', '2000-01-01', '2000-01-01', '2000-01-01'),
('504', 'SPS:019162', '2000-01-01', '2000-01-01', '2000-01-01'),
('505', 'SPS:017245', '2000-01-01', '2000-01-01', '2000-01-01'),
('506', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('507', 'SPDI:002453', '2000-01-01', '2000-01-01', '2000-01-01'),
('508', 'SPDI:003039', '2000-01-01', '2000-01-01', '2000-01-01'),
('509', 'SPDI:003821', '2000-01-01', '2000-01-01', '2000-01-01'),
('510', 'SPS:016237', '2000-01-01', '2000-01-01', '2000-01-01'),
('511', 'SPDI:003353', '2000-01-01', '2000-01-01', '2000-01-01'),
('512', 'SPS:016341', '2000-01-01', '2000-01-01', '2000-01-01'),
('513', 'SPDI:003129', '2000-01-01', '2000-01-01', '2000-01-01'),
('514', 'SPS:019069', '2000-01-01', '2000-01-01', '2000-01-01'),
('515', 'SPDI:004159', '2000-01-01', '2000-01-01', '2000-01-01'),
('516', 'SPS:019265', '2000-01-01', '2000-01-01', '2000-01-01'),
('517', '-', '2000-01-01', '2000-01-01', '2000-01-01'),
('518', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('519', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('520', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('521', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('522', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('601', 'SPS:019313', '2000-01-01', '2000-01-01', '2000-01-01'),
('602', 'SPS:019548', '2000-01-01', '2000-01-01', '2000-01-01'),
('603', 'SPS:019312', '2000-01-01', '2000-01-01', '2000-01-01'),
('604', 'SPS: 022815', '2000-01-01', '2000-01-01', '2000-01-01'),
('701', 'SPM: 002967', '2000-01-01', '2000-01-01', '2000-01-01'),
('702', 'SPM:003240', '2000-01-01', '2000-01-01', '2000-01-01'),
('703', 'SPM:003382', '2000-01-01', '2000-01-01', '2000-01-01'),
('704', 'SPM:002243', '2000-01-01', '2000-01-01', '2000-01-01'),
('705', 'SPM 002233', '2000-01-01', '2000-01-01', '2000-01-01'),
('706', 'SPM 002895', '2000-01-01', '2000-01-01', '2000-01-01'),
('707', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('708', 'SPM:003288', '2000-01-01', '2000-01-01', '2000-01-01'),
('709', 'SPM:002856', '2000-01-01', '2000-01-01', '2000-01-01'),
('710', 'SPM:002922', '2000-01-01', '2000-01-01', '2000-01-01'),
('711', 'SPM:002921', '2000-01-01', '2000-01-01', '2000-01-01'),
('712', 'SPD: 000772', '2000-01-01', '2000-01-01', '2000-01-01'),
('713', 'SPD: 000753', '2000-01-01', '2000-01-01', '2000-01-01'),
('714', 'SPD: 000733', '2000-01-01', '2000-01-01', '2000-01-01'),
('715', 'SPD: 000760', '2000-01-01', '2000-01-01', '2000-01-01'),
('716', 'SPD 000434', '2000-01-01', '2000-01-01', '2000-01-01'),
('717', 'SPM 003427', '2000-01-01', '2000-01-01', '2000-01-01'),
('718', 'SPM 002977', '2000-01-01', '2000-01-01', '2000-01-01'),
('719', 'SPM 003012', '2000-01-01', '2000-01-01', '2000-01-01'),
('720', 'SPM 002965', '2000-01-01', '2000-01-01', '2000-01-01'),
('721', 'SPM: 003819', '2000-01-01', '2000-01-01', '2000-01-01'),
('722', 'SPM 003307', '2000-01-01', '2000-01-01', '2000-01-01'),
('723', 'SPM 003165', '2000-01-01', '2000-01-01', '2000-01-01'),
('724', 'SPM: 003418', '2000-01-01', '2000-01-01', '2000-01-01'),
('725', 'SPM: 003555', '2000-01-01', '2000-01-01', '2000-01-01'),
('726', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('727', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('728', 'SPM 002840', '2000-01-01', '2000-01-01', '2000-01-01'),
('729', 'SPM: 002829', '2000-01-01', '2000-01-01', '2000-01-01'),
('730', 'SPM: 003184', '2000-01-01', '2000-01-01', '2000-01-01'),
('731', 'SPM: 002858', '2000-01-01', '2000-01-01', '2000-01-01'),
('732', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('733', 'SPM: 002857', '2000-01-01', '2000-01-01', '2000-01-01'),
('734', 'SPM: 003145', '2000-01-01', '2000-01-01', '2000-01-01'),
('735', 'SPM: 002966', '2000-01-01', '2000-01-01', '2000-01-01'),
('736', 'SPM: 003753', '2000-01-01', '2000-01-01', '2000-01-01'),
('737', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('801', 'SPS:020281', '2000-01-01', '2000-01-01', '2000-01-01'),
('802', 'SPS: 021695', '2000-01-01', '2000-01-01', '2000-01-01'),
('803', 'SPS: 022589', '2000-01-01', '2000-01-01', '2000-01-01'),
('804', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('805', '', '2000-01-01', '2000-01-01', '2000-01-01'),
('806', 'SPDI:004203', '2000-01-01', '2000-01-01', '2000-01-01'),
('807', 'SPDI:022135', '2000-01-01', '2000-01-01', '2000-01-01'),
('808', 'SPS: 023268', '2000-01-01', '2000-01-01', '2000-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `unit_accred_level`
--

CREATE TABLE `unit_accred_level` (
  `unit_id` varchar(4) NOT NULL,
  `accred_level` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_accred_level`
--

INSERT INTO `unit_accred_level` (`unit_id`, `accred_level`) VALUES
('1', 'A'),
('101', 'A'),
('102', 'A'),
('103', 'A'),
('104', 'A'),
('105', 'A'),
('106', 'A'),
('107', 'B'),
('108', 'A'),
('109', 'B'),
('201', 'A'),
('202', 'A'),
('203', 'A'),
('204', 'A'),
('205', 'A'),
('206', 'B'),
('207', 'A'),
('208', 'B'),
('209', 'A'),
('210', 'A'),
('211', 'B'),
('301', 'A'),
('302', 'A'),
('303', 'A'),
('304', 'A'),
('305', 'A'),
('306', 'A'),
('307', 'A'),
('308', 'A'),
('309', 'A'),
('310', 'Prodi Baru'),
('401', 'A'),
('402', 'A'),
('403', 'A'),
('404', 'A'),
('405', 'A'),
('406', 'A'),
('407', 'B'),
('408', 'B'),
('501', 'A'),
('502', 'A'),
('503', 'A'),
('504', 'A'),
('505', 'A'),
('506', 'B'),
('507', 'B'),
('508', 'B'),
('509', 'B'),
('510', 'A'),
('511', 'A'),
('512', 'A'),
('513', 'B'),
('514', 'A'),
('515', 'A'),
('516', 'B'),
('517', 'Prodi Baru'),
('518', 'Prodi Baru'),
('519', 'Prodi Baru'),
('520', 'Prodi Baru'),
('521', 'Prodi Baru'),
('522', 'Prodi Baru'),
('601', 'A'),
('602', 'A'),
('603', 'A'),
('604', 'A'),
('701', 'A'),
('702', 'A'),
('703', 'A'),
('704', 'B'),
('705', 'A'),
('706', 'A'),
('707', 'A'),
('708', 'A'),
('709', 'A'),
('710', 'A'),
('711', 'A'),
('712', 'A'),
('713', 'A'),
('714', 'B'),
('715', 'A'),
('716', 'B'),
('717', 'A'),
('718', 'B'),
('719', 'B'),
('720', 'B'),
('721', 'B'),
('722', 'B'),
('723', 'B'),
('724', 'B'),
('725', 'B'),
('726', 'A'),
('727', 'A'),
('728', 'B'),
('729', 'B'),
('730', 'B'),
('731', 'B'),
('732', 'A'),
('733', 'B'),
('734', 'B'),
('735', 'B'),
('736', 'B'),
('737', 'Prodi Baru'),
('801', 'A'),
('802', 'A'),
('803', 'A'),
('804', 'A'),
('805', 'A'),
('806', 'B'),
('807', 'A'),
('808', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`ed_level`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `emp_education`
--
ALTER TABLE `emp_education`
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `ed_level` (`ed_level`);

--
-- Indexes for table `emp_golongan`
--
ALTER TABLE `emp_golongan`
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `gol_id` (`gol_id`);

--
-- Indexes for table `emp_position`
--
ALTER TABLE `emp_position`
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `emp_status`
--
ALTER TABLE `emp_status`
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `emp_unit`
--
ALTER TABLE `emp_unit`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`gol_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `unit_accred`
--
ALTER TABLE `unit_accred`
  ADD UNIQUE KEY `unit_id` (`unit_id`);

--
-- Indexes for table `unit_accred_level`
--
ALTER TABLE `unit_accred_level`
  ADD UNIQUE KEY `unit_id` (`unit_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_education`
--
ALTER TABLE `emp_education`
  ADD CONSTRAINT `emp_education_ibfk_2` FOREIGN KEY (`ed_level`) REFERENCES `education` (`ed_level`),
  ADD CONSTRAINT `emp_education_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `employee` (`nip`);

--
-- Constraints for table `emp_golongan`
--
ALTER TABLE `emp_golongan`
  ADD CONSTRAINT `emp_golongan_ibfk_2` FOREIGN KEY (`gol_id`) REFERENCES `golongan` (`gol_id`),
  ADD CONSTRAINT `emp_golongan_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `employee` (`nip`);

--
-- Constraints for table `emp_position`
--
ALTER TABLE `emp_position`
  ADD CONSTRAINT `emp_position_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  ADD CONSTRAINT `emp_position_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `employee` (`nip`);

--
-- Constraints for table `emp_status`
--
ALTER TABLE `emp_status`
  ADD CONSTRAINT `emp_status_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `emp_status_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `employee` (`nip`);

--
-- Constraints for table `emp_unit`
--
ALTER TABLE `emp_unit`
  ADD CONSTRAINT `emp_unit_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `employee` (`nip`),
  ADD CONSTRAINT `emp_unit_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`unit_id`);

--
-- Constraints for table `unit_accred`
--
ALTER TABLE `unit_accred`
  ADD CONSTRAINT `unit_accred_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`unit_id`);

--
-- Constraints for table `unit_accred_level`
--
ALTER TABLE `unit_accred_level`
  ADD CONSTRAINT `unit_accred_level_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`unit_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
