-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2020 at 01:47 PM
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
(1, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'TamboStyle.csv-1586321802455.csv', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(2, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'TamboStyle2.csv-1586321802454.csv', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(3, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'TamboStyle2.csv-1586322827507.csv', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(4, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'TamboStyle2.csv-1586325731700.csv', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(5, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'TamboStyle.csv-1586325731703.csv', '2020-04-08 06:02:13', '2020-04-08 06:02:13');

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
(1, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(2, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(3, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(4, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(5, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(6, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(7, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(8, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(9, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(10, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(11, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(12, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(13, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(14, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(15, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(16, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(17, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(18, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(19, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(20, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(21, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(22, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(23, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(24, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(25, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(26, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(27, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(28, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(29, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(30, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(31, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(32, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(33, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(34, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(35, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(36, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(37, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(38, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(39, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(40, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(41, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(42, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(43, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(44, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(45, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(46, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(47, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(48, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(49, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(50, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(51, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(52, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(53, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(54, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(55, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(56, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(57, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(58, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(59, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(60, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(61, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(62, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(63, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(64, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(65, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(66, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(67, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(68, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(69, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(70, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(71, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(72, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(73, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(74, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(75, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(76, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(77, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(78, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(79, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(80, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(81, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:42', '2020-04-08 04:56:42'),
(82, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(83, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(84, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(85, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(86, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(87, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(88, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(89, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(90, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(91, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(92, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(93, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(94, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(95, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(96, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(97, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(98, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(99, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(100, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(101, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(102, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(103, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(104, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(105, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(106, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(107, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(108, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(109, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(110, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(111, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(112, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(113, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(114, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(115, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(116, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(117, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(118, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(119, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(120, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(121, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(122, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(123, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(124, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(125, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(126, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(127, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(128, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(129, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(130, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(131, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(132, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(133, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,0', '2020-04-08 05:13:48', '2020-04-08 05:13:48'),
(134, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(135, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(136, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(137, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(138, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(139, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(140, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(141, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(142, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(143, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(144, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(145, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(146, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(147, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(148, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(149, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(150, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(151, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(152, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(153, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(154, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(155, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(156, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(157, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(158, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(159, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(160, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(161, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(162, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(163, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(164, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(165, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(166, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(167, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(168, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(169, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(170, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(171, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(172, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(173, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(174, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(175, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(176, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(177, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(178, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(179, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(180, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(181, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(182, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(183, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(184, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(185, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(186, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(187, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(188, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(189, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(190, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(191, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(192, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(193, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(194, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(195, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(196, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(197, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(198, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(199, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,0', '2020-04-08 06:02:11', '2020-04-08 06:02:11'),
(200, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Ada Prototype?  (Prototype: fase sampel contoh produk dalam skala kecil) ', '1,0,0,0,1,0,0,0,1,0', '2020-04-08 06:02:11', '2020-04-08 06:02:11'),
(201, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(202, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Diterima di Pasar? (Market fit: fase produk sudah diterima oleh pasar) ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(203, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(204, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Pengembangan Pasar? (Scale up: fase peningkatan kapasitas/volume produk/skala bisnis)', '0,0,1,0,0,0,1,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(205, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(206, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Market size > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(207, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(208, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Sentiment analysis', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(209, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(210, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'IRR score  0 atau lebih dari 0 ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(211, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(212, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'NPV > 0', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(213, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(214, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Payback period ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(215, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(216, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Profitable', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(217, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(218, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Cashflow', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(219, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(220, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Pertumbuhan Laba', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(221, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(222, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Acid-test ratio', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(223, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(224, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Runway (months)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(225, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(226, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak dalam keadaan bangkrut', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(227, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(228, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak terkena masalah hukum', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(229, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(230, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak pernah masuk penjara', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(231, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(232, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'BI checking', '0,0,0,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(233, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(234, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Dokumen KTP', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(235, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(236, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Dokumen SKCK', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(237, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(238, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak membahayakan keselamatan manusia', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(239, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(240, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak mengandung / menyebarkan zat beracun', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(241, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(242, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak mengandung / menyebarkan virus?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(243, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(244, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak melanggar hak asasi manusia?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(245, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(246, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak melanggar hak cipta?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(247, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(248, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak melanggar kode etik?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(249, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(250, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak melanggar SARA ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(251, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(252, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tidak mengandung unsur pornografi ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(253, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(254, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah bersifat menghibur? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(255, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(256, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah menambah pengetahuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(257, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(258, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk merupakan produk pertama (baru/fresh) di industri?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(259, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(260, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk memiliki keunikan (uniqueness)?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(261, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(262, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah sudah memiliki ISO? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(263, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(264, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk sudah melalui riset sebelumnya? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(265, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(266, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah pernah mempublikasikan karya?', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(267, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(268, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah pernah dimuat di media (Online/ Offline)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(269, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(270, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah karya pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(271, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(272, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah pencipta pernah terindeks di Google? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(273, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(274, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah mempunyai website/ blog?', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(275, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(276, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah mempunyai Social Media?  ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(277, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(278, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Memiliki pengguna', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(279, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(280, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Jumlah pengguna (user amount)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(281, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(282, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Mudah digunakan (user friendly)', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(283, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(284, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Ergonomis (Apakah desain produk mendukung fungsi produk)', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(285, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(286, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah desain kemasan mendukung fungsi produk? ', '0,1,0,1,0,1,0,1,0,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(287, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(288, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk/ karya memberikan dampak positif pada Perempuan? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(289, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(290, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk/ karya memberikan dampak positif pada Anak-anak (1-12th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(291, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(292, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk/ karya memberikan dampak positif pada Generasi Muda (13-25th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(293, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(294, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk/ karya memberikan dampak positif pada Manula (diatas 60th)? ', '1,1,1,1,1,1,1,1,1,1', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(295, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(296, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Apakah produk/ karya memberikan dampak positif pada Difabel? ', '1,0,1,0,1,0,1,0,1,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(297, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(298, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tanpa kemiskinan  ', '1,0,0,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(299, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(300, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Tanpa kelaparan', '0,1,0,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(301, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(302, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Kehidupan  sehat dan sejahtera', '0,0,1,0,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(303, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(304, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Pendidikan berkualitas ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(305, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(306, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Kesetaraan gender ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(307, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(308, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Air bersih dan sanitasi layak ', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(309, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(310, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Energi bersih dan terjangkau ', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 06:02:12', '2020-04-08 06:02:12'),
(311, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(312, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Pekerjaan layak dan pertumbuhan ekonomi ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(313, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(314, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Industri Inovasi dan Infrastruktur', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(315, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(316, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Berkurangnya kesenjangan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(317, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(318, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Kota dan pemukiman yang berkelanjutan ', '0,0,0,0,0,0,0,0,0,1', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(319, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(320, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Konsumsi dan produksi yang bertanggungjawab', '0,0,0,0,0,0,0,0,1,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(321, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(322, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Penanganan Perubahan iklim ', '0,0,0,0,0,0,0,1,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13');
INSERT INTO `key_biner` (`id`, `userid`, `parameter`, `name`, `biner`, `createdAt`, `updatedAt`) VALUES
(323, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(324, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Ekosistem Lautan', '0,0,0,0,0,0,1,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(325, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(326, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Ekosistem Daratan', '0,0,0,0,0,1,0,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(327, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(328, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Perdamaian Keadilan dan kelembagaan yang Tangguh ', '0,0,0,0,1,0,0,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(329, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(330, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', 'Kemitraan untuk mencapai tujuan ', '0,0,0,1,0,0,0,0,0,0', '2020-04-08 06:02:13', '2020-04-08 06:02:13');

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
(1, 1, '88366767-c77f-4c5d-a10c-1fe28aceb7af', '46,37,46,38,47,38,47,38,47,38', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(2, 1, '4767a820-c5f3-4cff-a4dd-e36c6c6c33dc', '46,37,46,38,47,38,47,38,47,38', '2020-04-08 04:56:43', '2020-04-08 04:56:43'),
(3, 1, 'c2c2c15b-d351-4ec6-bd09-399752c2d900', '46,37,46,38,47,38,47,38,47,38', '2020-04-08 05:13:49', '2020-04-08 05:13:49'),
(4, 3, '510dc7b9-2bfa-48d9-825f-f8af05b8c0c7', '46,37,46,38,47,38,47,38,47,38', '2020-04-08 06:02:13', '2020-04-08 06:02:13'),
(5, 3, 'c6edb73d-5e57-4a25-b7a1-69a73b4ed2fa', '46,37,46,38,47,38,47,38,47,38', '2020-04-08 06:02:13', '2020-04-08 06:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text,
  `email` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Thariq Alfa', 'alfaben', '$2a$10$Vgu52rt9.v2Ekck5Ezh/CuUEybmWleWXjTAAw.wwtSidP6yB4.KNy', 'alfa@gmail.com', '2020-04-08 09:53:15', '2020-04-08 09:53:15'),
(2, 'Thariq Alfa', 'thariq', '$2a$10$8peYfsEwmMMf.1I14XdjWe2O7dGlvt4oVGcUZomLON8Toij67v3si', 'thariq@gmail.com', '2020-04-08 05:26:48', '2020-04-08 05:26:48'),
(3, 'Riq alfa', 'riq', '$2a$10$j.Tl6SR8McDTpwLSjT1IC.5cJvgfeiqU882Mhm5KY6oOtfVqfEF46', 'riq12@gmail.com', '2020-04-08 10:12:22', '2020-04-08 10:12:22');

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `key_biner`
--
ALTER TABLE `key_biner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `sum_biner`
--
ALTER TABLE `sum_biner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
