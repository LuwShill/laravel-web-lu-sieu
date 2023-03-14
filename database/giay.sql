-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 08:07 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giay`
--
CREATE DATABASE IF NOT EXISTS `giay` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `giay`;

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE IF NOT EXISTS `lienhe` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tieude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id`, `ten`, `mail`, `tieude`, `noidung`, `date`) VALUES
(1, 'Linh', 'kunbi@gmail.com', 'Dịch vụ chưa tốt', 'Dịch vụ giao hàng của shop chưa được tốt...', '2016-05-11 15:01:51'),
(2, 'Tuấn ', 'tuan@gmail.com', 'Chất lượng sp', 'Sản phẩm chất lượng khá tốt. Ủng hộ', '2016-05-11 15:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `thuocmenu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `ten`, `thuocmenu`) VALUES
(1, 'Giày thể thao', ''),
(2, 'Giày lười', ''),
(3, 'Giày da', ''),
(4, 'Giày nhập khẩu', ''),
(5, 'Giày giảm giá', ''),
(6, 'Giày da lộn', '');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `giaban` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thuocmenu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `hinhanh`, `giaban`, `noidung`, `thuocmenu`) VALUES
(1, 'Giày Lascote', 'da1.jpg', '2000000VND', 'Chất liệu da nhập khẩu hàn quốc', '3'),
(2, 'Giày Da', 'da2.jpg', '1000000VND', 'Chất liệu tốt phù hợp đi chơi,dã ngoại', '3'),
(3, 'Vans classic', 'tt1.jpg', '500000VND', 'Cảm giác thoái mái ', '1'),
(4, 'Adidas Đỏ', 'tt2.jpg', '2000000VND', 'Phù hợp với việc tập thể dục chạy bộ hoặc đi chơi', '1'),
(5, 'Newbalan Đen', 'tt3.jpg', '1000000VND', 'Đi êm chân,cảm giác thoải mái ,chất liệu da lộn', '1'),
(6, 'Jodan', 'tt4.jpg', '1000000VND', 'Phù hợp với việc chạy bộ,cảm giác ôm sát chân,thoái mái', '1'),
(7, 'Adidas Tím', 'tt5.jpg', '2000000VND', 'Phù hợp picnic đi dạo', '1'),
(8, 'Converse', 'tt6.jpg', '500000VND', 'Giày converse đã trở lên phổ thồng phù hợp với giới trẻ\r\ndễ mix đồ để đi chơi,dạo,đi làm', '1'),
(9, 'Lười Kẻ Sọc', 'luoi1.jpg', '200000VND', 'Phù hợp đi chơi,dã ngoại', '2'),
(10, 'Lười 2', 'luoi2.jpg', '200000VND', 'Êm chân cảm giác thoải mái', '2'),
(11, 'Lười 3', 'luoi3.jpg', '3000000VND', 'Thoải mái phù hợp đi du lịch đi chơi', '2'),
(12, 'Lười 4', 'luoi4.jpg', '100000VND', 'Phong cách hợp thời trang', '2'),
(13, 'Giày Da 3', 'gda3.jpg', '3000000VND', 'Phong cách thời thượng', '3'),
(14, 'Giày Nhâp 1', 'giaynhap1.jpg', '2000000VND', 'Chất liệu cao cấp,nhập khẩu từ ý', '4'),
(15, 'Giày Nhập 2', 'giaynhap2.jpg', '3000000VND', 'Nhập Khẩu nguyên chiếc từ Pháp', '4'),
(16, 'Giày Nhập 3', 'giaynhap3.jpg', '4000000VND', 'Nhập khẩu từ hàn quốc', '4'),
(17, 'Giày Nhập 4', 'giaynhap4.jpg', '3000000VND', 'Nhập khẩu từ Balan', '4'),
(18, 'Giày Nhập 5', 'giaynhap5.jpg', '3000000VND', 'Nhập khẩu từ Úc', '4'),
(19, 'Giày Nhập 6', 'giaynhap6.jpg', '5000000VND', 'Nhập tù hàn quốc', '4'),
(20, 'Converse Đỏ', 'tt6.jpg', '150000VND', 'Thời trang và tiện dụng', '5'),
(21, 'Giày lười', 'luoi2.jpg', '150000VND', 'Phù hợp đi chơi,picnic', '5'),
(22, 'Giày lười', 'luoi4.jpg', '150000VND', 'Phù hợp đi chơi,dã ngoại', '5'),
(23, 'Da Lộn 1', 'dalon1.jpg', '4000000VND', 'Thời trang và phong cách', '6'),
(24, 'Giày Da Lộn 2', 'dalon2.jpg', '2000000VND', 'Phù hợp đi lam đi chơi', '6'),
(25, 'Giày Da Lộn 3', 'dalon3.jpg', '4000000VND', 'Phong cách thời trang lịch lãm', '6'),
(26, 'Converse Đỏ', 'tt6.jpg', '150000VND', 'Phong cách thời trang', '1'),
(27, 'Godan Xanh', 'tt4.jpg', '200000VND', 'Phong cách thời trang,phù hợp đi du lịch', '1'),
(28, 'Giày lười', 'luoi1.jpg', '200000VND', 'Phong cách thời trang', '5'),
(29, 'Giày lười', 'luoi3.jpg', '200000VND', 'Phong cách thời trang', '5');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mk` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `ten`, `mk`, `email`, `sdt`) VALUES
(1, 'admin', 'admin', ' uneti@gmail.com', '0123456987'),
(3, 'Kunbi', '08111995', 'kunbi@gmail.com', '0123456789'),
(4, 'Tuấn', '123', ' tuansshn@gmail.com', '01234789562');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pass`) VALUES
(1, 'admin', 'admin123'),
(2, 'Kunbi', '08111995');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
