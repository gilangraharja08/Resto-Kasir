-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 04:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_cafe`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `catatankasir`
-- (See below for the actual view)
--
CREATE TABLE `catatankasir` (
`id_master` int(11)
,`id_detail` varchar(255)
,`nama_menu` varchar(255)
,`tgl_byr` date
,`jumlah` decimal(10,0)
,`total` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `catatanmanager`
-- (See below for the actual view)
--
CREATE TABLE `catatanmanager` (
`id_detail` varchar(255)
,`id_master` int(11)
,`id_peg` bigint(16)
,`nama_peg` varchar(50)
,`nama_pelanggan` varchar(255)
,`nama_menu` varchar(255)
,`tgl_byr` date
,`jumlah` decimal(10,0)
,`total` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `detailpesan`
--

CREATE TABLE `detailpesan` (
  `id_detail` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(255) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailpesan`
--

INSERT INTO `detailpesan` (`id_detail`, `tanggal`, `id_pelanggan`, `total`, `nama_pelanggan`, `status`) VALUES
('TR0001', '2022-04-17', '1', '44000', 'agung', 'lunas'),
('TR0002', '2022-04-17', '2', '37000', 'asep', 'lunas'),
('TR0003', '2022-04-17', '3', '40000', 'ogi', 'lunas'),
('TR0004', '2022-04-17', '4', '40000', 'rangga', 'lunas'),
('TR0005', '2022-04-17', '5', '45000', 'edi', 'lunas'),
('TR0006', '2022-04-17', '1', '15000', 'amir', 'lunas'),
('TR0007', '2022-04-17', '7', '15000', 'mansyur', 'lunas'),
('TR0008', '2022-04-17', '8', '180000', 'pandu', 'lunas'),
('TR0009', '2022-04-17', '0009', '15000', 'agus', 'lunas'),
('TR0010', '2022-04-17', '0010', '15000', 'ucup', 'lunas'),
('TR0011', '2022-04-18', '0011', '14000', 'manda', 'lunas'),
('TR0012', '2022-04-23', '2', '46000', 'martin', 'lunas'),
('TR0013', '2022-04-23', '2', '30000', 'batal', 'lunas'),
('TR0014', '2022-05-02', '3', '270000', 'asep', 'lunas'),
('TR0015', '2022-05-18', '2', '44000', 'asep', 'lunas'),
('TR0016', '2022-05-19', '2', '370000', 'agung', 'lunas'),
('TR0017', '2022-05-19', '1', '36000', 'mila', 'lunas'),
('TR0018', '2022-05-19', '2', '20000', 'amier', 'lunas'),
('TR0019', '2022-05-19', '1', '1465000', 'a', 'lunas'),
('TR0020', '2022-05-19', '2', '80000', 'asep', 'lunas'),
('TR0021', '2022-05-22', '1', '46000', 'manra', 'lunas'),
('TR0022', '2022-05-23', '3', '36000', 'asep', 'lunas'),
('TR0023', '2022-05-23', '3', '160000', 'amir', 'lunas'),
('TR0024', '2022-05-23', '2', '46000', 'asa', 'lunas'),
('TR0025', '2022-05-24', '2', '17000', 'asep', 'lunas'),
('TR0026', '2022-05-24', '1', '50000', 'mala', 'lunas'),
('TR0027', '2022-05-27', '12', '30000', 'A', 'lunas'),
('TR0028', '2022-05-27', '1', '30000', 'as', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `log_admin`
--

CREATE TABLE `log_admin` (
  `status` varchar(50) NOT NULL,
  `waktu` date NOT NULL,
  `nama_peg` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_admin`
--

INSERT INTO `log_admin` (`status`, `waktu`, `nama_peg`, `email`) VALUES
('ubahdata', '2019-03-28', 'kasir', 'kasir'),
('ubahdata', '2019-03-28', 'manager', 'manager'),
('ubahdata', '2019-03-28', 'admin', 'admin'),
('ubahdata', '2019-03-28', 'mamat', 'mamat'),
('tambah data', '2019-03-28', 'asep', 'asep@gmail.com'),
('ubahdata', '2019-03-28', 'mamat', 'mamat@gmail.com'),
('ubahdata', '2019-03-28', 'admin', 'admin@gmail.com'),
('ubahdata', '2019-03-28', 'manager', 'manager@gmail.com'),
('ubahdata', '2019-03-28', 'kasir', 'kasir@gmail.com'),
('ubahdata', '2022-03-29', 'asepGanteng', 'asep@gmail.com'),
('ubahdata', '2022-03-29', 'asep', 'asep@gmail.com'),
('tambah data', '2022-03-29', 'asep', 'asep@gmail.com'),
('hapus data', '2022-03-29', 'asep', 'asep@gmail.com'),
('tambah data', '2022-03-29', 'asep', 'asep@gmail.com'),
('ubahdata', '2022-03-29', 'asep3', 'asep@gmail.com'),
('hapus data', '2022-03-29', 'asep3', 'asep@gmail.com'),
('tambah data', '2022-03-29', 'asep', 'asep@gmail.com'),
('ubahdata', '2022-03-29', 'asepa', 'asep@gmail.com'),
('hapus data', '2022-03-29', 'asepa', 'asep@gmail.com'),
('tambah data', '2022-03-30', 'asep', 'asep@gmail.com'),
('ubahdata', '2022-03-30', 'asepr', 'asep@gmail.com'),
('hapus data', '2022-03-30', 'asepr', 'asep@gmail.com'),
('tambah data', '2022-03-30', 'a', 'asep@gmail.com'),
('hapus data', '2022-03-30', 'a', 'asep@gmail.com'),
('tambah data', '2022-03-30', 'asep', 'asep@gmail.com'),
('ubahdata', '2022-03-30', 'asep', 'asep@gmail.com'),
('hapus data', '2022-03-30', 'asep', 'asep@gmail.com'),
('tambah data', '2022-03-30', 'asep', 'asep@gmail.com'),
('ubahdata', '2022-03-30', 'asepa', 'asep@gmail.coma'),
('hapus data', '2022-03-30', 'asepa', 'asep@gmail.coma'),
('tambah data', '2022-03-30', 'asep', 'asep@gmail.com'),
('ubahdata', '2022-03-31', 'admin', 'admin'),
('ubahdata', '2022-03-31', 'kasir', 'kasir'),
('ubahdata', '2022-03-31', 'manager', 'manager'),
('ubahdata', '2022-03-31', 'admin', 'admin'),
('ubahdata', '2022-03-31', 'manager', 'manager'),
('ubahdata', '2022-03-31', 'kasir', 'kasir'),
('ubahdata', '2022-03-31', 'kasir', 'kasir'),
('ubahdata', '2022-03-31', 'manager', 'manager'),
('ubahdata', '2022-03-31', 'admin', 'admin'),
('ubahdata', '2022-03-31', 'kasir', 'kasir@gmail.com'),
('ubahdata', '2022-03-31', 'manager', 'manager@gmail.com'),
('ubahdata', '2022-03-31', 'admin', 'admin@gmail.com'),
('tambah data', '2022-03-31', 'asap', 'asap@gmail.com'),
('hapus data', '2022-03-31', 'asap', 'asap@gmail.com'),
('ubahdata', '2022-04-02', 'asep', 'asep@gmail.coma'),
('ubahdata', '2022-04-02', 'asep', 'asep'),
('tambah data', '2022-04-02', 'sayakasir', 'sayakasir'),
('ubahdata', '2022-04-05', 'kasir', 'kasir'),
('tambah data', '2022-04-05', 'manager', 'manager'),
('tambah data', '2022-04-08', 'a', 'a'),
('tambah data', '2022-04-08', 'a', 'a'),
('hapus data', '2022-04-08', 'a', 'a'),
('hapus data', '2022-04-08', 'a', 'a'),
('hapus data', '2022-04-08', 'kasir', 'kasir'),
('hapus data', '2022-04-08', 'manager', 'manager@gmail.com'),
('hapus data', '2022-04-08', 'admin', 'admin@gmail.com'),
('hapus data', '2022-04-08', 'mamat', 'mamat@gmail.com'),
('hapus data', '2022-04-08', 'asep', 'asep'),
('hapus data', '2022-04-08', 'asep', 'asep@gmail.com'),
('hapus data', '2022-04-08', 'sayakasir', 'sayakasir'),
('hapus data', '2022-04-08', 'manager', 'manager'),
('tambah data', '2022-04-08', 'admin', 'admin'),
('tambah data', '2022-04-08', 'kasir', 'kasir'),
('tambah data', '2022-04-08', 'manager', 'manager'),
('tambah data', '2022-04-08', 'kasir2', 'kasir2'),
('tambah data', '2022-04-08', 'admin', 'admin'),
('ubahdata', '2022-04-08', 'admin2', 'admin'),
('hapus data', '2022-04-08', 'admin2', 'admin'),
('tambah data', '2022-04-15', 'mail', '1121'),
('ubahdata', '2022-04-15', 'mail2', '11211'),
('hapus data', '2022-04-15', 'mail2', '11211'),
('tambah data', '2022-04-16', 'mansyur', 'mansyur@gmail.com'),
('ubahdata', '2022-04-16', 'mansyur2', 'mansyu88r@gmail.com'),
('hapus data', '2022-04-16', 'mansyur2', 'mansyu88r@gmail.com'),
('tambah data', '2022-04-23', 'garit', 'garit'),
('tambah data', '2022-04-23', 'asd', '2'),
('hapus data', '2022-04-23', 'asd', '2'),
('tambah data', '2022-05-19', 'aam', 'asep'),
('ubahdata', '2022-05-19', 'aama', 'asepa'),
('hapus data', '2022-05-19', 'aama', 'asepa'),
('hapus data', '2022-05-23', 'garit', 'garit'),
('ubahdata', '2022-05-23', 'kasir', 'kasir@gmail.com'),
('ubahdata', '2022-05-23', 'manager', 'manager@gmail.com'),
('ubahdata', '2022-05-23', 'kasir2', 'kasir2@gmail.com'),
('ubahdata', '2022-05-23', 'admin', 'admin@gmail.com'),
('tambah data', '2022-05-23', 'kasir3', 'kasir3@gmail.com'),
('ubahdata', '2022-05-24', 'kasir', 'kasir'),
('ubahdata', '2022-05-24', 'manager', 'manager'),
('ubahdata', '2022-05-24', 'admin', 'admin'),
('ubahdata', '2022-05-24', 'kasir', 'kasir@gmail.com'),
('ubahdata', '2022-05-24', 'manager', 'manager@gmail.com'),
('ubahdata', '2022-05-24', 'admin', 'admin@gmail.com'),
('ubahdata', '2022-05-24', 'kasir', 'kasir'),
('ubahdata', '2022-05-24', 'manager', 'manager'),
('ubahdata', '2022-05-24', 'kasir2', 'kasir2'),
('ubahdata', '2022-05-24', 'admin', 'admin'),
('ubahdata', '2022-05-24', 'kasir3', 'kasir3'),
('tambah data', '2022-05-27', 'as', 'asas'),
('ubahdata', '2022-05-27', 'as2', 'asas2'),
('hapus data', '2022-05-27', 'as2', 'asas2');

-- --------------------------------------------------------

--
-- Table structure for table `log_master`
--

CREATE TABLE `log_master` (
  `status` varchar(50) NOT NULL,
  `waktu` date NOT NULL,
  `id_master` int(11) NOT NULL,
  `id_detail` int(15) NOT NULL,
  `id_peg` int(15) NOT NULL,
  `tgl_byr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_master`
--

INSERT INTO `log_master` (`status`, `waktu`, `id_master`, `id_detail`, `id_peg`, `tgl_byr`) VALUES
('sudah bayar', '2019-03-28', 1, 1, 1, '2019-03-28'),
('sudah bayar', '2019-03-28', 2, 2, 1, '2019-03-28'),
('sudah bayar', '2019-03-28', 3, 3, 1, '2019-03-28'),
('sudah bayar', '2019-03-28', 4, 4, 1, '2019-03-28'),
('sudah bayar', '2019-03-28', 5, 5, 1, '2019-03-28'),
('sudah bayar', '2019-03-28', 6, 5, 5, '2019-03-28'),
('sudah bayar', '2022-03-30', 7, 3, 1, '2022-03-30'),
('sudah bayar', '2022-03-30', 11, 8, 1, '2022-03-30'),
('sudah bayar', '2022-03-31', 0, 8, 5, '2022-03-01'),
('sudah bayar', '2022-03-31', 121, 6, 1, '2022-03-31'),
('sudah bayar', '2022-03-31', 44, 5, 1, '2022-03-31'),
('sudah bayar', '2022-04-02', 123, 6, 7, '2022-04-02'),
('sudah bayar', '2022-04-03', 12, 0, 7, '2022-04-03'),
('sudah bayar', '2022-04-04', 124, 0, 7, '2022-04-04'),
('sudah bayar', '2022-04-05', 125, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 126, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 127, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 128, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 129, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 130, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 131, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 132, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 133, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 134, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 135, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 136, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 137, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 138, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 139, 0, 7, '2022-04-05'),
('sudah bayar', '2022-04-05', 140, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 141, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 142, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 143, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 144, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 145, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 146, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 147, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 148, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 149, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 150, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-05', 151, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-06', 152, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 153, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 154, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 155, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 156, 0, 1, '2022-04-01'),
('sudah bayar', '2022-04-06', 166, 0, 1, '2022-04-01'),
('sudah bayar', '2022-04-06', 167, 7, 1, '2022-04-02'),
('sudah bayar', '2022-04-06', 168, 2, 1, '2022-04-03'),
('sudah bayar', '2022-04-06', 169, 0, 1, '2022-04-04'),
('sudah bayar', '2022-04-06', 170, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 171, 0, 1, '2022-04-05'),
('sudah bayar', '2022-04-06', 172, 8, 1, '2022-04-08'),
('sudah bayar', '2022-04-06', 173, 0, 1, '2022-04-09'),
('sudah bayar', '2022-04-06', 174, 0, 1, '2022-04-07'),
('sudah bayar', '2022-04-06', 175, 0, 1, '2022-04-08'),
('sudah bayar', '2022-04-06', 176, 0, 1, '2022-04-09'),
('sudah bayar', '2022-04-06', 177, 0, 1, '2022-04-01'),
('sudah bayar', '2022-04-06', 178, 0, 1, '2022-04-01'),
('sudah bayar', '2022-04-06', 179, 0, 1, '2022-04-01'),
('sudah bayar', '2022-04-06', 180, 0, 1, '2022-04-01'),
('sudah bayar', '2022-04-06', 181, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 182, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 183, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 184, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 185, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 186, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 187, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 188, 0, 1, '2022-04-06'),
('sudah bayar', '2022-04-06', 189, 0, 3, '2022-04-06'),
('sudah bayar', '2022-04-08', 190, 0, 1, '2022-04-07'),
('sudah bayar', '2022-04-08', 193, 0, 1, '2022-04-08'),
('sudah bayar', '2022-04-08', 194, 0, 1, '2022-04-08'),
('sudah bayar', '2022-04-08', 195, 0, 1, '2022-04-08'),
('sudah bayar', '2022-04-15', 196, 0, 1, '2022-04-15'),
('sudah bayar', '2022-04-16', 197, 0, 3, '2022-04-16'),
('sudah bayar', '2022-04-17', 198, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-17', 199, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-17', 200, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-17', 201, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-17', 202, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-17', 203, 0, 1, '2022-02-17'),
('sudah bayar', '2022-04-17', 204, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-17', 205, 0, 1, '2022-04-18'),
('sudah bayar', '2022-04-17', 206, 0, 1, '2022-03-18'),
('sudah bayar', '2022-04-17', 207, 0, 1, '2022-04-17'),
('sudah bayar', '2022-04-18', 208, 0, 1, '2021-11-18'),
('sudah bayar', '2022-04-18', 209, 0, 1, '2021-11-19'),
('sudah bayar', '2022-04-23', 210, 0, 1, '2022-04-23'),
('sudah bayar', '2022-04-23', 211, 0, 3, '2022-04-23'),
('sudah bayar', '2022-05-02', 212, 0, 1, '2022-05-02'),
('sudah bayar', '2022-05-18', 213, 0, 1, '2022-05-18'),
('sudah bayar', '2022-05-19', 214, 0, 1, '2022-05-19'),
('sudah bayar', '2022-05-19', 215, 0, 1, '2022-05-19'),
('sudah bayar', '2022-05-19', 216, 0, 1, '2022-05-19'),
('sudah bayar', '2022-05-19', 217, 0, 1, '2022-05-19'),
('sudah bayar', '2022-05-21', 218, 0, 3, '2022-05-21'),
('sudah bayar', '2022-05-22', 219, 0, 1, '2022-05-22'),
('sudah bayar', '2022-05-23', 220, 0, 1, '2022-05-23'),
('sudah bayar', '2022-05-23', 221, 0, 1, '2022-05-23'),
('sudah bayar', '2022-05-23', 222, 0, 1, '2022-05-23'),
('sudah bayar', '2022-05-24', 223, 0, 1, '2022-05-24'),
('sudah bayar', '2022-05-27', 224, 0, 1, '2022-05-27'),
('sudah bayar', '2022-05-27', 225, 0, 1, '2022-05-27'),
('sudah bayar', '2022-05-27', 226, 0, 1, '2022-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `log_menu`
--

CREATE TABLE `log_menu` (
  `status` varchar(255) NOT NULL,
  `waktu` date NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `harga` int(15) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_menu`
--

INSERT INTO `log_menu` (`status`, `waktu`, `nama_menu`, `harga`, `photo`) VALUES
('tambah data', '2019-03-28', 'nasi goreng', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\nasi goreng.jpeg'),
('tambah data', '2019-03-28', 'baso', 8000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\baso.jpg'),
('tambah data', '2019-03-28', 'ayam', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\ayam.jpg'),
('tambah data', '2019-03-28', 'sate', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\sate.jpg'),
('tambah data', '2019-03-28', 'martabak', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\martabak.jpg'),
('tambah data', '2022-03-29', 'martabak', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\martabak.jpg'),
('ubahdata', '2022-03-29', 'martabakj', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\martabak.jpg'),
('hapus data', '2022-03-29', 'martabakj', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\martabak.jpg'),
('tambah data', '2022-03-29', 'martabak', 100001, 'C:\\Users\\gilang\\Pictures\\Screenshot 2022-03-13 034431.png'),
('ubahdata', '2022-03-29', 'martabak1', 100001, 'C:\\Users\\gilang\\Pictures\\Screenshot 2022-03-13 034431.png'),
('hapus data', '2022-03-29', 'martabak1', 100001, 'C:\\Users\\gilang\\Pictures\\Screenshot 2022-03-13 034431.png'),
('tambah data', '2022-03-30', 'martabak1', 100001, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('ubahdata', '2022-03-30', 'martabak11', 1000011, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('hapus data', '2022-03-30', 'martabak11', 1000011, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('tambah data', '2022-04-04', 'a', 2, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('tambah data', '2022-04-04', 'ASAP', 2, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('hapus data', '2022-04-04', 'ASAP', 2, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('hapus data', '2022-04-04', 'a', 2, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('tambah data', '2022-04-04', 'ayam', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\ayam.jpg'),
('ubahdata', '2022-04-08', 'baso', 7000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\baso.jpg'),
('tambah data', '2022-04-08', 'gorengan', 2000, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('hapus data', '2022-04-08', 'gorengan', 2000, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('hapus data', '2022-04-08', 'ayam', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\ayam.jpg'),
('tambah data', '2022-04-16', 'coffe', 10000, 'C:\\Users\\gilang\\Pictures\\Screenshot 2022-03-13 041727.png'),
('ubahdata', '2022-04-16', 'paket', 20000, 'C:\\Users\\gilang\\Pictures\\Screenshot 2022-03-13 041727.png'),
('hapus data', '2022-04-16', 'paket', 20000, 'C:\\Users\\gilang\\Pictures\\Screenshot 2022-03-13 041727.png'),
('tambah data', '2022-04-18', 'mojito', 8000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurantSmk\\src\\makanan\\mojiti.jpg'),
('tambah data', '2022-04-23', 'ikan bakar', 120000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurantSmk\\src\\makanan\\ikan bakar.jpg'),
('tambah data', '2022-05-19', 'ayam', 2000, 'C:\\Users\\gilang\\Documents\\download.jpg'),
('ubahdata', '2022-05-19', 'ayam', 2000, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('hapus data', '2022-05-19', 'ayam', 2000, 'C:\\Users\\gilang\\Documents\\untitled.png'),
('tambah data', '2022-05-19', 'mara', 2, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('ubahdata', '2022-05-19', 'mara', 2, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('hapus data', '2022-05-19', 'mara', 2, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('tambah data', '2022-05-20', 'aqua', 3000, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('ubahdata', '2022-05-20', 'aqua', 30000, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('hapus data', '2022-05-20', 'aqua', 30000, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('tambah data', '2022-05-23', 'nasi goreng', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\nasi goreng.jpeg'),
('ubahdata', '2022-05-23', '1', 1, '1'),
('hapus data', '2022-05-23', '1', 1, '1'),
('tambah data', '2022-05-23', 'ikan bakar2', 1120000, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('tambah data', '2022-05-23', 'ikan bakar22', 11200002, 'C:\\Users\\gilang\\Documents\\download.jpg'),
('ubahdata', '2022-05-23', 'ikan bakar221', 112000021, 'C:\\Users\\gilang\\Documents\\download.jpg'),
('ubahdata', '2022-05-23', 'ikan bakar221', 112000021, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('hapus data', '2022-05-23', 'ikan bakar221', 112000021, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('hapus data', '2022-05-23', 'ikan bakar2', 1120000, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('ubahdata', '2022-05-24', 'martabaktelur', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\martabak.jpg'),
('tambah data', '2022-05-27', 'aya', 2, 'C:\\Users\\gilang\\Documents\\9206511.jpg'),
('hapus data', '2022-05-27', 'aya', 2, 'C:\\Users\\gilang\\Documents\\9206511.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `masterpesan`
--

CREATE TABLE `masterpesan` (
  `id_master` int(11) NOT NULL,
  `id_detail` varchar(255) NOT NULL,
  `id_peg` bigint(16) NOT NULL,
  `tgl_byr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterpesan`
--

INSERT INTO `masterpesan` (`id_master`, `id_detail`, `id_peg`, `tgl_byr`) VALUES
(199, 'TR0001', 1, '2022-04-17'),
(200, 'TR0002', 1, '2022-04-17'),
(201, 'TR0003', 1, '2022-04-17'),
(202, 'TR0004', 1, '2022-04-17'),
(203, 'TR0005', 1, '2022-02-17'),
(204, 'TR0006', 1, '2022-04-17'),
(205, 'TR0007', 1, '2022-04-18'),
(206, 'TR0008', 1, '2022-03-18'),
(207, 'TR0010', 1, '2022-04-17'),
(208, 'TR0009', 1, '2021-11-18'),
(209, 'TR0011', 1, '2021-11-19'),
(210, 'TR0012', 1, '2022-04-23'),
(211, 'TR0013', 3, '2022-04-23'),
(212, 'TR0014', 1, '2022-05-02'),
(213, 'TR0015', 1, '2022-05-18'),
(214, 'TR0016', 1, '2022-05-19'),
(215, 'TR0017', 1, '2022-05-19'),
(216, 'TR0018', 1, '2022-05-19'),
(217, 'TR0019', 1, '2022-05-19'),
(218, 'TR0020', 3, '2022-05-21'),
(219, 'TR0021', 1, '2022-05-22'),
(220, 'TR0022', 1, '2022-05-23'),
(221, 'TR0023', 1, '2022-05-23'),
(222, 'TR0024', 1, '2022-05-23'),
(223, 'TR0026', 1, '2022-05-24'),
(224, 'TR0025', 1, '2022-05-27'),
(225, 'TR0027', 1, '2022-05-27'),
(226, 'TR0028', 1, '2022-05-27');

--
-- Triggers `masterpesan`
--
DELIMITER $$
CREATE TRIGGER `addbayar` AFTER INSERT ON `masterpesan` FOR EACH ROW INSERT INTO log_master(status,waktu,id_master,id_detail,id_peg,tgl_byr)VALUES('sudah bayar',now(),new.id_master,new.id_detail,new.id_peg,new.tgl_byr)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(15) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(15) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`, `photo`) VALUES
(1, 'nasi goreng', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\nasi goreng.jpeg'),
(2, 'baso', 7000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\baso.jpg'),
(3, 'ayam', 10000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\ayam.jpg'),
(4, 'sate', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\sate.jpg'),
(5, 'martabaktelur', 15000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurant\\src\\makanan\\martabak.jpg'),
(13, 'mojito', 8000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurantSmk\\src\\makanan\\mojiti.jpg'),
(14, 'ikan bakar', 120000, 'C:\\Users\\gilang\\Documents\\NetBeansProjects\\AplikasiRestaurantSmk\\src\\makanan\\ikan bakar.jpg');

--
-- Triggers `menu`
--
DELIMITER $$
CREATE TRIGGER `delete_menu` BEFORE DELETE ON `menu` FOR EACH ROW INSERT INTO log_menu(STATUS, waktu,nama_menu,harga,photo) VALUES ('hapus data',  now(),old.nama_menu,old.harga,old.photo)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_menu` AFTER INSERT ON `menu` FOR EACH ROW INSERT INTO log_menu(STATUS, waktu,nama_menu,harga,photo) VALUES ('tambah data',  now(),new.nama_menu,new.harga,new.photo)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubahdata` AFTER UPDATE ON `menu` FOR EACH ROW INSERT INTO log_menu(STATUS, waktu,nama_menu,harga,photo) VALUES ('ubahdata',  now(),new.nama_menu,new.harga,new.photo)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_peg` bigint(16) NOT NULL,
  `nama_peg` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `handphone` varchar(15) NOT NULL,
  `level` enum('admin','kasir','manager','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_peg`, `nama_peg`, `email`, `password`, `handphone`, `level`) VALUES
(1, 'kasir', 'kasir', 'kasir', '081212121212', 'kasir'),
(2, 'manager', 'manager', 'manager', '081212121212', 'manager'),
(3, 'kasir2', 'kasir2', 'kasir2', '081212121212', 'kasir'),
(4, 'admin', 'admin', 'admin', '081212121212', 'admin'),
(5, 'kasir3', 'kasir3', 'kasir3', '22', 'kasir');

--
-- Triggers `pegawai`
--
DELIMITER $$
CREATE TRIGGER `hapus` BEFORE DELETE ON `pegawai` FOR EACH ROW INSERT INTO log_admin(STATUS, waktu,nama_peg,email) VALUES ('hapus data',  now(),old.nama_peg,old.email)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah` AFTER INSERT ON `pegawai` FOR EACH ROW INSERT INTO log_admin(STATUS, waktu,nama_peg,email) VALUES ('tambah data',  now(),new.nama_peg,new.email)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah` AFTER UPDATE ON `pegawai` FOR EACH ROW INSERT INTO log_admin(STATUS, waktu,nama_peg,email) VALUES ('ubahdata',  now(),new.nama_peg,new.email)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_detail` varchar(255) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `jumlah` decimal(10,0) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_detail`, `id_menu`, `nama_menu`, `jumlah`, `harga`, `total`) VALUES
('TR0001', 2, 'baso', '2', '7000', '14000'),
('TR0001', 4, 'sate', '2', '15000', '30000'),
('TR0002', 4, 'sate', '2', '15000', '30000'),
('TR0002', 2, 'baso', '1', '7000', '7000'),
('TR0003', 5, 'martabak', '1', '10000', '10000'),
('TR0003', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0004', 5, 'martabak', '1', '10000', '10000'),
('TR0004', 4, 'sate', '2', '15000', '30000'),
('TR0005', 4, 'sate', '1', '15000', '15000'),
('TR0005', 4, 'sate', '2', '15000', '30000'),
('TR0006', 1, 'nasi goreng', '1', '15000', '15000'),
('TR0007', 1, 'nasi goreng', '1', '15000', '15000'),
('TR0008', 1, 'nasi goreng', '12', '15000', '180000'),
('TR0009', 1, 'nasi goreng', '1', '15000', '15000'),
('TR0010', 4, 'sate', '1', '15000', '15000'),
('TR0011', 2, 'baso', '2', '7000', '14000'),
('TR0012', 13, 'mojito', '2', '8000', '16000'),
('TR0012', 3, 'ayam', '3', '10000', '30000'),
('TR0013', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0014', 14, 'ikan bakar', '2', '120000', '240000'),
('TR0014', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0015', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0015', 2, 'baso', '2', '7000', '14000'),
('TR0016', 14, 'ikan bakar', '2', '120000', '240000'),
('TR0016', 14, 'ikan bakar', '1', '120000', '120000'),
('TR0016', 5, 'martabak', '1', '10000', '10000'),
('TR0017', 13, 'mojito', '2', '8000', '16000'),
('TR0017', 3, 'ayam', '2', '10000', '20000'),
('TR0018', 3, 'ayam', '2', '10000', '20000'),
('TR0019', 3, 'ayam', '1', '10000', '10000'),
('TR0019', 14, 'ikan bakar', '12', '120000', '1440000'),
('TR0019', 4, 'sate', '1', '15000', '15000'),
('TR0020', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0020', 5, 'martabak', '1', '10000', '10000'),
('TR0020', 13, 'mojito', '5', '8000', '40000'),
('TR0021', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0021', 13, 'mojito', '2', '8000', '16000'),
('TR0022', 5, 'martabak', '2', '10000', '20000'),
('TR0022', 13, 'mojito', '2', '8000', '16000'),
('TR0023', 3, 'ayam', '4', '10000', '40000'),
('TR0023', 14, 'ikan bakar', '1', '120000', '120000'),
('TR0024', 13, 'mojito', '2', '8000', '16000'),
('TR0024', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0025', 2, 'baso', '1', '7000', '7000'),
('TR0025', 5, 'martabak', '1', '10000', '10000'),
('TR0026', 1, 'nasi goreng', '2', '15000', '30000'),
('TR0026', 3, 'ayam', '2', '10000', '20000'),
('TR0027', 1, 'nasi goreng', '1', '15000', '15000'),
('TR0027', 4, 'sate', '1', '15000', '15000'),
('TR0028', 1, 'nasi goreng', '2', '15000', '30000');

-- --------------------------------------------------------

--
-- Structure for view `catatankasir`
--
DROP TABLE IF EXISTS `catatankasir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catatankasir`  AS SELECT `masterpesan`.`id_master` AS `id_master`, `penjualan`.`id_detail` AS `id_detail`, `penjualan`.`nama_menu` AS `nama_menu`, `masterpesan`.`tgl_byr` AS `tgl_byr`, `penjualan`.`jumlah` AS `jumlah`, `penjualan`.`total` AS `total` FROM ((`masterpesan` join `penjualan`) join `detailpesan`) WHERE `masterpesan`.`id_detail` = `detailpesan`.`id_detail` AND `detailpesan`.`id_detail` = `penjualan`.`id_detail` AND `masterpesan`.`id_detail` = `penjualan`.`id_detail` ORDER BY `masterpesan`.`tgl_byr` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `catatanmanager`
--
DROP TABLE IF EXISTS `catatanmanager`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `catatanmanager`  AS SELECT `penjualan`.`id_detail` AS `id_detail`, `masterpesan`.`id_master` AS `id_master`, `pegawai`.`id_peg` AS `id_peg`, `pegawai`.`nama_peg` AS `nama_peg`, `detailpesan`.`nama_pelanggan` AS `nama_pelanggan`, `penjualan`.`nama_menu` AS `nama_menu`, `masterpesan`.`tgl_byr` AS `tgl_byr`, `penjualan`.`jumlah` AS `jumlah`, `penjualan`.`total` AS `total` FROM (((`masterpesan` join `penjualan`) join `detailpesan`) join `pegawai`) WHERE `masterpesan`.`id_detail` = `detailpesan`.`id_detail` AND `masterpesan`.`id_peg` = `pegawai`.`id_peg` AND `detailpesan`.`id_detail` = `penjualan`.`id_detail` AND `masterpesan`.`id_detail` = `penjualan`.`id_detail` ORDER BY `masterpesan`.`tgl_byr` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpesan`
--
ALTER TABLE `detailpesan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `masterpesan`
--
ALTER TABLE `masterpesan`
  ADD PRIMARY KEY (`id_master`),
  ADD KEY `id_pesan` (`id_detail`),
  ADD KEY `id_peg` (`id_peg`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_peg`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD KEY `id_menu` (`id_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masterpesan`
--
ALTER TABLE `masterpesan`
  MODIFY `id_master` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `masterpesan`
--
ALTER TABLE `masterpesan`
  ADD CONSTRAINT `masterpesan_ibfk_2` FOREIGN KEY (`id_detail`) REFERENCES `detailpesan` (`id_detail`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `masterpesan_ibfk_3` FOREIGN KEY (`id_peg`) REFERENCES `pegawai` (`id_peg`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
