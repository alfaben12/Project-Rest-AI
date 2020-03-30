-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2020 at 08:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `parameter` text NOT NULL,
  `name` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `userid`, `parameter`, `name`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'TamboStyle2.csv-1585483781088.csv', '2020-03-29 12:09:43', '2020-03-29 12:09:43'),
(2, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'TamboStyle.csv-1585483781091.csv', '2020-03-29 12:09:43', '2020-03-29 12:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `key_biner`
--

CREATE TABLE `key_biner` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `parameter` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `biner` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `key_biner`
--

INSERT INTO `key_biner` (`id`, `userid`, `parameter`, `name`, `biner`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(2, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(3, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(4, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(5, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(6, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(7, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(8, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(9, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(10, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(11, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(12, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(13, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(14, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(15, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(16, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(17, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(18, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(19, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(20, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(21, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(22, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(23, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(24, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(25, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(26, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(27, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(28, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(29, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(30, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(31, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(32, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(33, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(34, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(35, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(36, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(37, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(38, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(39, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(40, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(41, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(42, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(43, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(44, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(45, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(46, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(47, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(48, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(49, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(50, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(51, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(52, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(53, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(54, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(55, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(56, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(57, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(58, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(59, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(60, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(61, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(62, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(63, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(64, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(65, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(66, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(67, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(68, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(69, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(70, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(71, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(72, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(73, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(74, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(75, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(76, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(77, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(78, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(79, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(80, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(81, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(82, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(83, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(84, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(85, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(86, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(87, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(88, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(89, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(90, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(91, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(92, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(93, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(94, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(95, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(96, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(97, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(98, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(99, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(100, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(101, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(102, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(103, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(104, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(105, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(106, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(107, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(108, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(109, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(110, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(111, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(112, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(113, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(114, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(115, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(116, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(117, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(118, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(119, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(120, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(121, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(122, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(123, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(124, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(125, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(126, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(127, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(128, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(129, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(130, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28'),
(131, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-03-29 12:10:27', '2020-03-29 12:10:27'),
(132, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-03-29 12:10:28', '2020-03-29 12:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `sum_biner`
--

CREATE TABLE `sum_biner` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `parameter` text NOT NULL,
  `sum` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sum_biner`
--

INSERT INTO `sum_biner` (`id`, `userid`, `parameter`, `sum`, `createdAt`, `updatedAt`) VALUES
(1, NULL, 'b6402d68-b62f-44a1-903a-ab49f7fb5b13', '46,37,46,38,47,38,47,38,47,39', '2020-03-29 13:26:05', '2020-03-29 12:10:28'),
(2, NULL, '0f6983b4-0d00-4fda-aaa2-b51bb91a6860', '46,37,46,38,47,38,47,38,47,39', '2020-03-29 12:10:28', '2020-03-29 12:10:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_biner`
--
ALTER TABLE `key_biner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sum_biner`
--
ALTER TABLE `sum_biner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `key_biner`
--
ALTER TABLE `key_biner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `sum_biner`
--
ALTER TABLE `sum_biner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
