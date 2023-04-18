-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2022 lúc 03:05 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

create database Cinema;

use Cinema;


CREATE TABLE `account` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `phone`, `password`, `email`, `birthday`, `date_create`) VALUES
(1, 'Thái Gia Bảo', '0564681751', '123456', 'giabaolht17@gmail.com', '2002-03-21', '2022-12-18 10:58:09'),
(23, 'Huỳnh Anh Tuấn', '0848122611', 'e3910146', 'huynhanhtuan02.tv@gmail.com', '2002-06-01', '2022-12-18 13:09:44'),
(24, 'Admin', 'admin', '123456', 'admin@gmail.com', '2022-12-12', '2022-12-18 10:57:21'),
(25, 'Huỳnh Anh Tuấn', 'user', '123456', 'huynhanhtuan@gmail.com', '2002-06-01', '2022-12-18 13:18:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cumrap`
--

CREATE TABLE `cumrap` (
  `id` int(11) NOT NULL,
  `TenCum` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cumrap`
--

INSERT INTO `cumrap` (`id`, `TenCum`, `DiaChi`) VALUES
(1, 'Rạp Quận 1', 'Vincom Đồng Khởi - số 72A Lê Thánh Tôn, phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh'),
(2, 'Rạp Quận 3', '83 Lý Chính Thắng, Phường 8, Quận 3, Thành phố Hồ Chí Minh 72408, Việt Nam'),
(3, 'Rạp Quận 5', 'Parkson Hùng Vương.Parkson Hung Vuong Plaza, 126 Đường Hùng Vương, Phường 12, Quận 5, Thành phố Hồ Chí Minh, Việt Nam'),
(4, 'Rạp Quận 7', 'Crescent Mall, Nguyễn Văn Linh, Tân Phú, Quận 7, Thành phố Hồ Chí Minh, Việt Nam'),
(5, 'Rạp Quận 10', 'Vạn Hạnh Mall, 11 Sư Vạn Hạnh, Phường 12, Quận 10, TPHCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachghe`
--

CREATE TABLE `danhsachghe` (
  `id` int(11) NOT NULL,
  `id_lichchieu` int(11) NOT NULL,
  `DayGhe` varchar(2) DEFAULT NULL,
  `Ghe1` int(11) NOT NULL DEFAULT 0,
  `Ghe2` int(11) NOT NULL DEFAULT 0,
  `Ghe3` int(11) NOT NULL DEFAULT 0,
  `Ghe4` int(11) NOT NULL DEFAULT 0,
  `Ghe5` int(11) NOT NULL DEFAULT 0,
  `Ghe6` int(11) NOT NULL DEFAULT 0,
  `Ghe7` int(11) NOT NULL DEFAULT 0,
  `Ghe8` int(11) NOT NULL DEFAULT 0,
  `Ghe9` int(11) NOT NULL DEFAULT 0,
  `Ghe10` int(11) NOT NULL DEFAULT 0,
  `Trong` int(11) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachghe`
--

INSERT INTO `danhsachghe` (`id`, `id_lichchieu`, `DayGhe`, `Ghe1`, `Ghe2`, `Ghe3`, `Ghe4`, `Ghe5`, `Ghe6`, `Ghe7`, `Ghe8`, `Ghe9`, `Ghe10`, `Trong`) VALUES
(1, 1, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(2, 1, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(3, 1, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(4, 1, 'D', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 9),
(5, 1, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(6, 1, 'F', 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 9),
(7, 1, 'G', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 9),
(8, 1, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(9, 1, 'I', 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 9),
(10, 1, 'J', 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 9),
(11, 44, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(12, 44, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(13, 44, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(14, 44, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(15, 44, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(16, 44, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(17, 44, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(18, 44, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(19, 44, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(20, 44, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(31, 3, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(32, 3, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(33, 3, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(34, 3, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(35, 3, 'E', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 9),
(36, 3, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(37, 3, 'G', 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 9),
(38, 3, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(39, 3, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(40, 3, 'J', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 9),
(41, 4, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(42, 4, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(43, 4, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(44, 4, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(45, 4, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(46, 4, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(47, 4, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(48, 4, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(49, 4, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(50, 4, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(51, 5, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(52, 5, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(53, 5, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(54, 5, 'D', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9),
(55, 5, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(56, 5, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(57, 5, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(58, 5, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(59, 5, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(60, 5, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(61, 6, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(62, 6, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(63, 6, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(64, 6, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(65, 6, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(66, 6, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(67, 6, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(68, 6, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(69, 6, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(70, 6, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(71, 7, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(72, 7, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(73, 7, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(74, 7, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(75, 7, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(76, 7, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(77, 7, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(78, 7, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(79, 7, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(80, 7, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(81, 8, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(82, 8, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(83, 8, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(84, 8, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(85, 8, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(86, 8, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(87, 8, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(88, 8, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(89, 8, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(90, 8, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(91, 9, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(92, 9, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(93, 9, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(94, 9, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(95, 9, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(96, 9, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(97, 9, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(98, 9, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(99, 9, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(100, 9, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(101, 10, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(102, 10, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(103, 10, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(104, 10, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(105, 10, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(106, 10, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(107, 10, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(108, 10, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(109, 10, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(110, 10, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(111, 11, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(112, 11, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(113, 11, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(114, 11, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(115, 11, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(116, 11, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(117, 11, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(118, 11, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(119, 11, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(120, 11, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(121, 12, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(122, 12, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(123, 12, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(124, 12, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(125, 12, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(126, 12, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(127, 12, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(128, 12, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(129, 12, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(130, 12, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(131, 13, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(132, 13, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(133, 13, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(134, 13, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(135, 13, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(136, 13, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(137, 13, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(138, 13, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(139, 13, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(140, 13, 'J', 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 9),
(141, 20, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(142, 20, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(143, 20, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(144, 20, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(145, 20, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(146, 20, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(147, 20, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(148, 20, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(149, 20, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(150, 20, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(151, 40, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(152, 40, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(153, 40, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(154, 40, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(155, 40, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(156, 40, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(157, 40, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(158, 40, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(159, 40, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(160, 40, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(161, 38, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(162, 38, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(163, 38, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(164, 38, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(165, 38, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(166, 38, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(167, 38, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(168, 38, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(169, 38, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(170, 38, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(171, 39, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(172, 39, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(173, 39, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(174, 39, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(175, 39, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(176, 39, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(177, 39, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(178, 39, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(179, 39, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(180, 39, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(181, 41, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(182, 41, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(183, 41, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(184, 41, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(185, 41, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(186, 41, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(187, 41, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(188, 41, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(189, 41, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(190, 41, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(191, 42, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(192, 42, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(193, 42, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(194, 42, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(195, 42, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(196, 42, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(197, 42, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(198, 42, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(199, 42, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(200, 42, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(201, 43, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(202, 43, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(203, 43, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(204, 43, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(205, 43, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(206, 43, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(207, 43, 'G', 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 9),
(208, 43, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(209, 43, 'I', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 9),
(210, 43, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(211, 45, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(212, 45, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(213, 45, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(214, 45, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(215, 45, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(216, 45, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(217, 45, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(218, 45, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(219, 45, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(220, 45, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(221, 46, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(222, 46, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(223, 46, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(224, 46, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(225, 46, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(226, 46, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(227, 46, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(228, 46, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(229, 46, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(230, 46, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(231, 47, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(232, 47, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(233, 47, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(234, 47, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(235, 47, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(236, 47, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(237, 47, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(238, 47, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(239, 47, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(240, 47, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(241, 48, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(242, 48, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(243, 48, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(244, 48, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(245, 48, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(246, 48, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(247, 48, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(248, 48, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(249, 48, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(250, 48, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(251, 49, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(252, 49, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(253, 49, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(254, 49, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(255, 49, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(256, 49, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(257, 49, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(258, 49, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(259, 49, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(260, 49, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(261, 50, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(262, 50, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(263, 50, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(264, 50, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(265, 50, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(266, 50, 'F', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 9),
(267, 50, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 9),
(268, 50, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(269, 50, 'I', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 9),
(270, 50, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(271, 51, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(272, 51, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(273, 51, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(274, 51, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(275, 51, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(276, 51, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(277, 51, 'G', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 9),
(278, 51, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(279, 51, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(280, 51, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(281, 52, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(282, 52, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(283, 52, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(284, 52, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(285, 52, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(286, 52, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(287, 52, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(288, 52, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(289, 52, 'I', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 9),
(290, 52, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(291, 53, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(292, 53, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(293, 53, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(294, 53, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(295, 53, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(296, 53, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(297, 53, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(298, 53, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(299, 53, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(300, 53, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(301, 54, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(302, 54, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(303, 54, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(304, 54, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(305, 54, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(306, 54, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(307, 54, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(308, 54, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(309, 54, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(310, 54, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(311, 55, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(312, 55, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(313, 55, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(314, 55, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(315, 55, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(316, 55, 'F', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(317, 55, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(318, 55, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(319, 55, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(320, 55, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(321, 56, 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(322, 56, 'D', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(323, 56, 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(324, 56, 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(325, 56, 'E', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(326, 56, 'F', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 9),
(327, 56, 'G', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(328, 56, 'H', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(329, 56, 'I', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10),
(330, 56, 'J', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datve`
--

CREATE TABLE `datve` (
  `id` int(11) NOT NULL,
  `id_KH` int(11) DEFAULT NULL,
  `id_lichchieu` int(11) DEFAULT NULL,
  `Ghe` varchar(100) DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `NgayDat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `datve`
--

INSERT INTO `datve` (`id`, `id_KH`, `id_lichchieu`, `Ghe`, `TongTien`, `NgayDat`) VALUES
(17, 23, 5, 'D4', 75000, '2022-12-17 20:11:20'),
(18, 1, 1, 'J7 J6 J7', 225000, '2022-12-17 20:21:19'),
(19, 23, 43, 'G4 G5 G6', 225000, '2022-12-17 20:59:25'),
(20, 23, 43, 'I7 I8', 150000, '2022-12-17 21:00:25'),
(21, 23, 3, 'G3 G4 G5 G6', 300000, '2022-12-17 23:08:38'),
(22, 23, 3, 'J6 J7 J8', 225000, '2022-12-17 23:08:50'),
(23, 23, 3, 'E1 E2', 150000, '2022-12-17 23:09:01'),
(24, 23, 51, 'G3 G4 G5', 225000, '2022-12-18 12:06:54'),
(25, 23, 50, 'F3 F4 F5', 360000, '2022-12-18 12:07:18'),
(26, 25, 52, 'I3 I4 I5', 285000, '2022-12-18 18:10:36'),
(27, 25, 50, 'I6 I7 I8', 360000, '2022-12-18 18:12:44'),
(28, 25, 1, 'F3 F4 F5 F6 F7', 375000, '2022-12-18 19:53:28'),
(29, 25, 50, 'G9 G10', 240000, '2022-12-18 19:54:22'),
(30, 25, 56, 'F3 F4 F5', 360000, '2022-12-18 20:23:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `id` int(11) NOT NULL,
  `TenPhim` varchar(400) DEFAULT NULL,
  `TenCum` varchar(100) DEFAULT NULL,
  `TenRap` varchar(100) DEFAULT NULL,
  `LoaiVe` varchar(10) DEFAULT NULL,
  `Ngay` date DEFAULT NULL,
  `Gio` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`id`, `TenPhim`, `TenCum`, `TenRap`, `LoaiVe`, `Ngay`, `Gio`) VALUES
(1, 'Hạnh Phúc Máu', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-14', '09:00:00'),
(3, 'Hạnh Phúc Máu', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-14', '11:00:00'),
(4, 'Hạnh Phúc Máu', 'Rạp Quận 1', 'Phòng 3', '4D', '2022-12-14', '11:00:00'),
(5, 'Tro Tàn Rực Rỡ', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-14', '12:00:00'),
(6, 'Tro Tàn Rực Rỡ', 'Rạp Quận 5', 'Phòng 1', '2D', '2022-12-14', '09:00:00'),
(7, 'Tro Tàn Rực Rỡ', 'Rạp Quận 7', 'Phòng 1', '2D', '2022-12-14', '09:00:00'),
(8, 'Tro Tàn Rực Rỡ', 'Rạp Quận 7', 'Phòng 2', '2D', '2022-12-14', '09:00:00'),
(9, 'Tro Tàn Rực Rỡ', 'Rạp Quận 10', 'Phòng 1', '2D', '2022-12-14', '09:00:00'),
(10, 'Hạnh Phúc Máu', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-15', '09:00:00'),
(11, 'Hạnh Phúc Máu', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-16', '09:00:00'),
(12, 'Hạnh Phúc Máu', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-17', '09:00:00'),
(13, 'Hạnh Phúc Máu', 'Rạp Quận 3', 'Phòng 2', '2D', '2022-12-15', '09:00:00'),
(20, 'Tro Tàn Rực Rỡ', 'Rạp Quận 1', 'Phòng 1', '3D', '2022-12-18', '09:00:00'),
(38, 'Tro Tàn Rực Rỡ', 'Rạp Quận 1', 'Phòng 3', '4D', '2022-12-18', '09:45:00'),
(39, 'Tro Tàn Rực Rỡ', 'Rạp Quận 5', 'Phòng 2', '2D', '2022-12-18', '11:30:00'),
(40, 'Tro Tàn Rực Rỡ', 'Rạp Quận 10', 'Phòng 2', '2D', '2022-12-18', '22:00:00'),
(41, 'Tro Tàn Rực Rỡ', 'Rạp Quận 1', 'Phòng 2', '2D', '2022-12-18', '15:40:00'),
(42, 'Tro Tàn Rực Rỡ', 'Rạp Quận 5', 'Phòng 1', '3D', '2022-12-18', '10:10:00'),
(43, 'Tro Tàn Rực Rỡ', 'Rạp Quận 3', 'Phòng 2', '2D', '2022-12-18', '13:30:00'),
(44, 'Tro Tàn Rực Rỡ', 'Rạp Quận 7', 'Phòng 2', '2D', '2022-12-18', '10:00:00'),
(45, 'Hạnh Phúc Máu', 'Rạp Quận 10', 'Phòng 1', '2D', '2022-12-18', '13:00:00'),
(46, 'Hạnh Phúc Máu', 'Rạp Quận 7', 'Phòng 2', '3D', '2022-12-18', '10:00:00'),
(47, 'Hạnh Phúc Máu', 'Rạp Quận 7', 'Phòng 1', '2D', '2022-12-18', '16:30:00'),
(48, 'Tro Tàn Rực Rỡ', 'Rạp Quận 7', 'Phòng 1', '2D', '2022-12-19', '11:00:00'),
(49, 'Tro Tàn Rực Rỡ', 'Rạp Quận 7', 'Phòng 2', '3D', '2022-12-19', '15:15:00'),
(50, 'Tro Tàn Rực Rỡ', 'Rạp Quận 7', 'Phòng 3', '4D', '2022-12-19', '16:10:00'),
(51, 'Phi Vụ Nửa Đêm', 'Rạp Quận 1', 'Phòng 1', '2D', '2022-12-19', '07:45:00'),
(52, 'Phi Vụ Nửa Đêm', 'Rạp Quận 1', 'Phòng 2', '3D', '2022-12-19', '11:30:00'),
(53, 'Phi Vụ Nửa Đêm', 'Rạp Quận 3', 'Phòng 2', '2D', '2022-12-21', '12:45:00'),
(54, 'Phi Vụ Nửa Đêm', 'Rạp Quận 3', 'Phòng 3', '4D', '2022-12-21', '20:45:00'),
(55, 'Harry Potter Và Hoàng Tử Lai', 'Rạp Quận 1', 'Phòng 1', '4D', '2022-12-20', '11:20:00'),
(56, 'LyLe Chú Cá Sấu Biết Hát', 'Rạp Quận 1', 'Phòng 1', '4D', '2022-12-21', '12:40:00');

--
-- Bẫy `lichchieu`
--
DELIMITER $$
CREATE TRIGGER `themds` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'A',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds10` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'J',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds2` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'B',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds3` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'C',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds4` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'D',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds5` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'E',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds6` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'F',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds7` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'G',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds8` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'H',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `themds9` AFTER INSERT ON `lichchieu` FOR EACH ROW insert into danhsachghe values (null,NEW.id,'I',0,0,0,0,0,0,0,0,0,0,10)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `xoa` BEFORE DELETE ON `lichchieu` FOR EACH ROW DELETE FROM danhsachghe WHERE id_lichchieu = OLD.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `TenPhim` varchar(400) DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL COMMENT '0: Sắp chiếu\r\n1: Đang chiếu\r\n2: Ngưng chiếu',
  `DienVien` varchar(400) DEFAULT NULL,
  `DaoDien` varchar(200) DEFAULT NULL,
  `TheLoai` varchar(100) DEFAULT NULL,
  `ThoiLuong` int(11) DEFAULT NULL,
  `NgonNgu` varchar(200) DEFAULT NULL,
  `Poster` varchar(200) DEFAULT NULL,
  `Trailer` varchar(200) DEFAULT NULL,
  `DoTuoi` int(11) DEFAULT NULL,
  `NgayChieu` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `MoTa` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `TenPhim`, `TrangThai`, `DienVien`, `DaoDien`, `TheLoai`, `ThoiLuong`, `NgonNgu`, `Poster`, `Trailer`, `DoTuoi`, `NgayChieu`, `NgayKetThuc`, `MoTa`) VALUES
(1, 'Hạnh Phúc Máu', 1, 'NSND Kim Xuân, NSƯT Lê Thiện, NSƯT Công Ninh, Dược Sĩ Tiến, Phạm Huỳnh Hữu Tài', 'Nguyễn Chung', 'Kinh dị', 110, 'Tiếng Việt - Phụ đề Tiếng Anh', 'hanh_phuc_mau.jpg', 'https://www.youtube.com/embed/_VQqMUKMBKQ', 18, '2022-11-25', '2023-01-31', 'Bộ phim kể về bi kịch của dòng họ Vương Đình, nơi người chủ gia đình thường dùng những bùa ngải ma thuật để không chế các thành viên. Người mẹ vì lề thói gia trưởng mà trọng nam khinh nữ, sẵn sàng vì con trai mà không từ thủ đoạn nào. Dù phải trả giá cho những hành động của mình, dằn vặt do tội lỗi mình gây ra, nhưng ẩn sâu vẫn là tình mẫu tử thiêng liêng, thương yêu con vô điều kiện của người mẹ… .'),
(2, 'Tro Tàn Rực Rỡ', 1, 'Phương Anh Đào, Juliet Bảo Ngọc Doling, Lê Công Hoàng, Thạch Kim Long, Mai Thế Hiệp, Quang Tuấn', 'Bùi Thạc Chuyên', 'Tâm lí, Tình cảm', 117, 'Tiếng Việt - Phụ đề Tiếng Anh', 'tro_tan.jpg', 'https://www.youtube.com/embed/Sx0gdaeeGi4', 16, '2022-12-02', '2023-01-31', 'Dựa trên hai truyện ngắn \"Tro Tàn Rực Rỡ\" và \"Củi Mục Trôi Về\" của nhà văn Nguyễn Ngọc Tư, \"Tro Tàn Rực Rỡ\" là câu chuyện về tình yêu đầy nhân văn của những người phụ nữ miền Tây dành cho người đàn ông nhiều tổn thương của họ.'),
(3, 'Phi Vụ Nửa Đêm', 1, 'Joe Sowerbutts, Haruka Abe, Joel Basman,…', 'Tobias Weber', 'Hành động', 90, 'Tiếng Anh - Phụ đề Tiếng Việt', 'phi_vu_nua_dem.jpg', 'https://www.youtube.com/embed/O2pi3HMEVJo', 16, '2022-12-02', '2023-01-31', 'Matt, một học sinh thông minh với việc làm thêm buổi tối tại một bãi đậu xe hạng sang, phải chứng minh sự trong sạch của mình khi bị buộc phải tham gia vào một vụ trộm táo bạo tại nhà đấu giá nổi tiếng London. Một cuộc hành trình trốn chạy xuyên thành phố khỏi những tên truy sát diễn ra ngay trong đêm. Với khả năng tương tác giúp khán giả hoá thân vào nhân vật Matt, bạn sẽ làm gì khi bị cả thế giới quay lưng trong giây phút tính mạng gặp nguy hiểm?'),
(4, 'Harry Potter Và Hoàng Tử Lai', 1, 'Daniel Radcliffe, Emma Watson, Rupert Grint, Robert Pattinson', 'David Yates', 'Thần Thoại', 153, 'Tiếng Anh - Phụ đề Tiếng Việt', 'harry_potter.jpg', 'https://www.youtube.com/embed/m3ibMtmt9sI', 0, '2022-12-02', '2023-01-31', 'Khi các Tử thần Thực tử tàn sát thế giới phù thủy và Muggle, Hogwarts không còn là nơi trú ẩn an toàn cho học sinh. Mặc dù Harry Potter (Daniel Radcliffe) nghi ngờ có những mối nguy hiểm mới đang rình rập trong các bức tường lâu đài, cụ Dumbledore vẫn dồn hết tâm sức vào việc chuẩn bị cho phù thủy trẻ tuổi cho trận chiến cuối cùng với Voldemort. Harry Potter tình cờ khám phá được cuốn sách của Hoàng Tử Lai, từ đó phát hiện ra nhiều bí mật liên quan đến Chúa Tể Hắc Ám và truy tìm nguồn gốc của người được cho là “Hoàng Tử Lai”.'),
(5, 'LyLe Chú Cá Sấu Biết Hát', 1, 'Shawn Mendes, Javier Bardem, Winslow Fegley, Constance Wu, Lyric Hurd, Brett Gelman, Scoot McNairy', 'Will Speck, Josh Gordon', 'Hoạt hình', 107, 'Tiếng Anh - Phụ đề Tiếng Việt; Lồng tiếng', 'lyle.jpg', 'https://www.youtube.com/embed/lKuVxwH119I', 0, '2022-11-04', '2023-01-31', 'Khi gia đình Primm chuyển đến thành phố New York, cậu con trai nhỏ Josh gặp khó khăn trong việc thích nghi với ngôi trường và những người bạn mới. Mọi thứ thay đổi khi cậu bé phát hiện ra ra Lyle - một chàng cá sấu mê tắm rửa, trứng cá muối và âm nhạc sống trên gác mái của của mình. Hai người nhanh chóng trở thành bạn bè. Thế nhưng, khi cuộc sống của Lyle bị ông hàng xóm Grumps đe dọa, gia đình Primm buộc phải kết hợp với ông chủ cũ của Lyle là Hector P. Valenti (Javier Bardem) để cho cả thế giới thấy giá trị tình thân và sự kỳ diệu của một chàng cá sấu biết hát.'),
(6, 'Đêm Hung Tàn', 1, 'David Harbour, Beverly D\'Angelo, John Leguizamo\n', 'Tommy Wirkola', 'Hành động, Kinh dị', 110, 'Tiếng Anh - Phụ đề Tiếng Việt', 'dem_hung_tan.jpg', 'https://www.youtube.com/embed/oR0FHw_Wo6U', 18, '2022-12-02', '2023-01-31', 'Khi một nhóm lính đánh thuê tấn công một gia đình giàu có, ông già Noel phải bước vào để cứu họ (và lễ Giáng sinh).'),
(7, 'Nhà Bà Nữ', 0, 'Trấn Thành, Lê Giang, NSND Ngọc Giàu, Uyển Ân, Khả Như, NSND Việt Anh, NSUT Công Ninh, Ngân Quỳnh, Song Luân, Lê Dương Bảo Lâm, Lý Hạo Mạnh Quỳnh, Phương Lan, Hoàng Mèo,...', 'Trấn Thành', 'Tình cảm', 120, 'Tiếng Việt - Phụ đề Tiếng Anh', 'nha_ba_nu.jpg', 'https://www.youtube.com/embed/BS8aVvVTAh8', 0, '2023-01-22', '2023-01-31', 'Phim xoay quanh gia đình của bà Nữ (nghệ sĩ Lê Giang đảm nhận) - người làm nghề bán bánh canh. Truyện phim khắc họa mối quan hệ phức tạp, đa chiều xảy ra với các thành viên trong gia đình. Câu tagline (thông điệp) chính \"Mỗi gia đình đều có những bí mật\" chứa nhiều ẩn ý về nội dung bộ phim muốn gửi gắm.'),
(8, 'Đảo Độc Đắc', 0, 'SAM, Hoa Hậu Tiểu Vy, Phương Lan, Trần Nghĩa, Trần Phong, Minh Dự, Tân Trề, Lê Huỳnh, Hoàng Yến Chibi, Steven Nguyễn', 'Lê Bình Giang', 'Kinh dị', 105, 'Tiếng Việt - Phụ đề Tiếng Anh', 'dao_doc_dac.jpg', 'https://www.youtube.com/embed/KG3pB16QNSA', 16, '2022-12-23', '2023-01-31', '“Đảo độc đắc - Tử mẫu Thiên linh cái” tiếp tục gieo rắc nỗi ám ảnh lẫn loạt dấu hỏi lớn về một trong những loại bùa ngải đáng sợ của vùng Đông Nam Á. Ai mới thực sự là người đang “ẩn nấp” đằng sau gương mặt tà ác, quỷ dị và nắm giữ những bí mật kinh hoàng? Một hòn đảo chết chóc cùng sự xuất hiện bí ẩn rợn người của nhân ngư kì quái có liên quan gì đến loại bùa ngải tàn bạo và kinh hãi này?'),
(9, 'Chị Chị Em Em 2', 0, 'Minh Hằng, Ngọc Trinh,..', 'Vũ Ngọc Đãng', 'Tâm lí, Tình cảm', 100, 'Tiếng Việt - Phụ đề Tiếng Anh', 'chi_em.jpg', 'https://www.youtube.com/embed/nXlgYpvAC2c', 15, '2023-01-22', '2023-01-31', 'Dựa trên giai thoại mỹ nhân Ba Trà & Tư Nhị, Chị Chị Em Em 2 xoay quanh giai đoạn 2 đệ nhất mỹ nhân Ba Trà và Tư Nhị gặp gỡ nhau, từ đó tái hiện cuộc sống hoa lệ nhiều góc khuất tại Sài thành cách đây một thế kỷ...'),
(10, 'Avatar: Dòng Chảy Của Nước', 1, 'Sam Worthington, Zoe Saldana, Dương Tử Quỳnh,...', 'James Cameron', 'Khoa học viễn tưởng', 192, 'Tiếng Anh - Phụ đề Tiếng Việt; Lồng tiếng', 'avatar_2_.jpg', 'https://www.youtube.com/embed/Ru4Jbmh7bcQ', 13, '2022-12-16', '2023-01-31', 'Câu chuyện của “Avatar: Dòng Chảy Của Nước” lấy bối cảnh 10 năm sau những sự kiện xảy ra ở phần đầu tiên. Phim kể câu chuyện về gia đình mới của Jake Sully (Sam Worthington thủ vai) cùng những rắc rối theo sau và bi kịch họ phải chịu đựng khi phe loài người xâm lược hành tinh Pandora.'),
(11, 'Siêu Lừa Gặp Siêu Lầy', 0, 'Anh Tú, Mạc Văn Khoa, Ngọc Phước, Nhất Trung, NSƯT Mỹ Duyên, Đại Nghĩa, Lâm Vỹ Dạ, BB Trần, Cát Tường, Hứa Minh Đạt…', 'Võ Thanh Hòa', 'Hài, Hành Động', 119, 'Tiếng Việt - Phụ đề Tiếng Anh', 'sieu_lua.jpg', 'https://www.youtube.com/embed/s8l6VZQH9iM', 0, '2023-01-22', '2023-01-31', 'Thuộc phong cách hành động – hài hước với các “cú lừa” thông minh và lầy lội đến từ bộ đôi Tú (Anh Tú) và Khoa (Mạc Văn Khoa), Siêu Lừa Gặp Siêu Lầy của đạo diễn Võ Thanh Hòa theo chân của Khoa – tên lừa đảo tầm cỡ “quốc nội” đến đảo ngọc Phú Quốc với mong muốn đổi đời. Tại đây, Khoa gặp Tú – tay lừa đảo “hàng real” và cùng Tú thực hiện các phi vụ từ nhỏ đến lớn. Cứ ngỡ sự ranh mãnh của Tú và sự may mắn trời cho của Khoa sẽ giúp họ trở thành bộ đôi bất khả chiến bại, nào ngờ lại đối mặt với nhiều tình huống dở khóc – dở cười. Nhất là khi băng nhóm của bộ đôi nhanh chóng mở rộng vì sự góp mặt của ông Năm (Nhất Trung) và bé Mã Lai (Ngọc Phước).'),
(12, 'Hung Thủ Vô Hình', 1, ' So Ji-Sub, Kim Yu- jin, Nana, Choi Kwang-Il', 'Yoon Jong-Seok', 'Tâm lí', 105, 'Tiếng Hàn - Phụ đề tiếng Việt', 'hung_thu_vo_hinh.jpg', 'https://www.youtube.com/embed/D0p-PJpfMFs', 16, '2022-12-09', '2023-01-31', 'Một vụ án mạng trong phòng kín, không có dấu hiệu đột nhập cũng không có sự xuất hiện của người thứ ba. Khi nghi phạm duy nhất, Yoo Min Ho (So Ji-sub) thuê luật sư nổi tiếng Yang Sin Ae (Kim Yun-jin) bào chữa cho mình, anh buộc phải kể lại toàn bộ sự thật. Cuộc đối chất căng não giữa nghi phạm và luật sư lại làm lộ ra 1 câu chuyện được sắp đặt tài tình.'),
(13, 'One Piece Film Red', 1, 'Mayumi Tanaka (Luffy), Shuichi Ikeda (Shanks), Hiroaki Hirata (Sanji), Ikue Otani (Tony Tony Chopper)', 'Gorō Taniguchi', 'Hoạt hình', 115, 'Tiếng Nhật - Phụ đề Tiếng Việt', 'one_piece.jpg', 'https://www.youtube.com/embed/7Ma1uab-bQM', 13, '2022-11-25', '2023-01-31', 'Bối cảnh One Piece Film Red diễn ra ở hòn đảo âm nhạc Elegia, nơi diva nổi tiếng bậc nhất thế giới tên Uta thực hiện buổi biểu diễn trực tiếp đầu tiên trước công chúng. Uta đứng trên sân khấu với một ước mơ giản dị rằng ” Âm nhạc của tôi sẽ khiến cho thế giới hạnh phúc”. Đằng sau hình ảnh cô ca sĩ sở hữu giọng hát được đánh giá là ở “Đẳng cấp hoàn toàn khác” là một thân thế vô cùng bí ẩn được che giấu. Băng hải tặc Mũ Rơm và các fan khác của Uta từ nhiều thế lực khác nhau như hải tặc lẫn hải quân đều đã cùng tề tựu về buổi biểu diễn này. Biến cố bắt đầu ngay khi sự thật kinh hoàng được tiết lộ rằng Uta chính là “con gái của Shanks”. Luffy và Uta lần đầu tiên hội ngộ sau lần gặp gỡ vào 12 năm trước tại Làng Foosha.'),
(14, 'Âm Lượng Huỷ Diệt', 1, 'Kim Rae Won, Lee Jong Suk, Park Byung Eun, Jung Sang Hoon, Cha Eun Woo.', 'Hwang In-Ho', 'Hành động', 109, 'Tiếng Hàn - Phụ đề tiếng Việt, tiếng Anh', 'am_luong_huy_diet.jpg', 'https://www.youtube.com/embed/7rItTYvS9cQ', 13, '2022-12-09', '2023-01-31', 'Phim bom tấn hành động về khủng bố bằng bom phản ứng âm thanh được chế tạo bởi kẻ ẩn danh (Lee Jong Suk) với mục đích nhắm đến là cựu phó chỉ huy hải quân (Kim Rae Won).'),
(16, 'Jailangkung: Búp Bê Gọi Hồn', 0, 'Titi Kamal, Syifa Hadju, Muzakki Ramdhan, Giulio Parengkuan, Dwi Sasono', 'Kimo Stamboel', 'Kinh dị', 92, 'Phụ đề Tiếng Việt; tiếng Anh', 'jailangkung.jpg', 'https://www.youtube.com/embed/PiOia5HTmmI', 16, '2023-01-09', '2023-01-31', 'Một câu chuyện mới trong series JAILANGKUNG cực kỳ ăn khách ở Indonesia. Gia đình cậu bé Kinan đi du lịch đến một ngôi làng, họ không biết rằng ngôi làng gần đây xảy ra nhiều vụ mất tích trẻ em vào buổi chiều tối. Hôm ấy, Kinan mất tích, gia đình tìm kiếm trong vô vọng. Trên đường đi họ tìm được con búp bê Jailangkung có khả năng liên lạc với thế giới bên kia. Và họ cũng dần nhận ra sự kỳ quặc của những người dân trong làng … Liệu họ có tìm được Kinan? Liệu họ có nên triệu hồi Jailangkung? Và những sự mất tích, tử vong của trẻ em gần đây là do thực thể siêu nhiên hay có sự nhúng tay của con người?'),
(17, 'Ainbo: Nữ Chiến Binh Amazon', 0, 'Thom Hoffman, Bernardo De Paula, Joe Hernandez', 'Richard Claus, Jose Zelada', 'Hoạt hình, Thần Thoại', 85, 'Lồng Tiếng Việt', 'ainbo_poster_.jpg', 'https://www.youtube.com/embed/cMu_HqoKUHw', 0, '2023-01-02', '2023-01-31', 'Theo tinh thần của Moana và Frozen, ‘Ainbo: Nữ Chiến Binh Amazon’ kể về cuộc hành trình đầy bất ngờ của Ainbo và thần dẫn đường của cô bé, \"Dillo\" là một chú tatu vừa dễ thương vừa hài hước và \"Vaca\" một con heo vòi quá khổ ngốc nghếch. Họ bắt tay vào cuộc tìm kiếm để cứu ngôi làng của chính mình trong Rừng nhiệt đới Amazon ngoạn mục.'),
(18, 'Khỉ Con Lon Ton Thế Giới', 1, NULL, 'Samuel Tourneux', 'Hoạt hình', 82, 'Lồng Tiếng Việt', 'kclttg.jpg', 'https://www.youtube.com/embed/cjO84b-FOlI', 0, '2022-12-09', '2023-01-31', 'Khỉ Con luôn khát khao được chu du năm châu bốn bể và khám phá thế giới rộng lớn nhiệm màu. Nhưng vì không muốn con trai đối mặt với bất kỳ nguy hiểm nào, mẹ Khỉ Con không cho phép cậu thực hiện ước mơ đó. Một ngày nọ, nhà thám hiểm Ếch Bảnh ghé qua thị trấn nơi Khỉ Con đang sinh sống và cá cược với những cư dân nơi đây rằng mình có thể đi vòng quanh thế giới chỉ trong vòng 80 ngày. Một cách tình cờ, Khỉ Con trở thành người bạn đồng hành của Ếch Bảnh, cả hai đã cùng bắt đầu một cuộc phiêu lưu đầy bất ngờ nhưng cũng không kém phần thú vị.'),
(19, 'Đặc Vụ Xuyên Quốc Gia', 0, 'Hyun Bin, Yoo Hai Jin, Lim Yoon A, Daniel Henney, Jin Sun Kyu', 'Lee Seok Hoon', 'Hài, Hành Động', 129, 'Tiếng Hàn - Phụ đề tiếng Việt', 'dac_vu.jpg', 'https://www.youtube.com/embed/5edLJ9E3M6A', 16, '2023-02-28', '2023-05-31', 'Câu chuyện phim ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung. Min-young (Lim Yoon A) cũng có cơ hội tiếp tục câu chuyện tình yêu “phát cuồng” dành cho Cheol-ryung. Jin-tae và Cheol-ryung cùng nhau làm việc dù vẫn còn nhiều nghi ngờ về động cơ của đối phương. Ngay khi bộ đôi chuẩn bị đột kích nơi ẩn náu của Jang Myung-jun (Jin Sun Kyu), thủ lĩnh của tổ chức tội phạm, thì đặc vụ FBI Jack (Daniel Henney) xông vào. Nhân tố mới này đã biến cuộc điều tra thành một cuộc điều tra quốc tế giữa 3 quốc gia, hứa hẹn nhiều tình tiết kịch tính và đầy bất ngờ.'),
(20, 'Xâm Chiếm Vật Chủ', 1, 'Chanya McClory, Mike Angelo, Ben Benjamin,…', 'Chalit Krileadmongkon, Pakphum Wongjinda', 'Kinh dị', 92, 'Tiếng Thái - Phụ đề tiếng Việt/ tiếng Anh', 'xam_chiem_vat_chu.jpg', 'https://www.youtube.com/embed/agBWNYMEfEk', 18, '2022-12-02', '2023-01-31', 'Xâm Chiếm Vật Chủ xoay quanh câu chuyện về một nhóm du khách bất ngờ phát hiện sự tồn tại của một loài vật quái dị trong thời gian cách ly Covid tại một khách sạn của chính phủ. Sinh vật này chính là loài rết khổng lồ, có thể biến dạng dựa trên hình dạng và tính cách của con người. Vật đổi chủ, hồn đổi xác. Họ sẽ làm gì để trốn thoát khỏi sự truy đuổi của loài rết 100 chân khát máu này?'),
(21, 'M3GAN', 0, 'Allison Williams, Violet McGraw, Ronny Chieng, Brian Jordan Alvarez, Jen Van Epps, Lori Dungey, Stephane Garneau - Monten', 'Gerard Johnstone', 'Kinh dị', 109, 'Tiếng Anh - phụ đề tiếng Việt', 'm3gan.jpg', 'https://www.youtube.com/embed/d7pr1msPxtg', 18, '2023-01-13', '2023-01-31', 'Một nhà chế tạo rô bốt của công ty đồ chơi đã xuất sắc sử dụng trí thông minh nhân tạo để phát triển M3GAN, một con búp bê giống như người được lập trình AI để gắn kết tình cảm với cô cháu gái mới mồ côi. Nhưng khi AI của con búp bê phát triển vượt kiểm soát, cô ấy trở nên bảo vệ thái quá đối người bạn mới của mình… với vài mạng người.'),
(22, 'Thanh Sói', 0, 'Đồng Ánh Quỳnh, Tóc Tiên, Rima Thanh Vy, Thuận Nguyễn, Song Luân', 'Ngô Thanh Vân, Aaron Toronto', 'Hành động, Tâm lí', 109, 'Tiếng Việt - Phụ đề Tiếng Anh', 'thanh_soi.jpg', 'https://www.youtube.com/embed/kUc4LuzPEDE', 18, '2022-12-30', '2023-01-31', 'Bộ phim Thanh Sói là một tác phẩm điện ảnh hành động thuộc \"vũ trụ\" Hai Phượng. Phim là câu chuyện về thời trẻ của nữ trùm Thanh Sói với hướng khai thác thú vị và niềm tin rằng tất cả nhân vật xấu đều xuất phát từ lý do nào đó. Nỗi đau có thể thay đổi tất cả.'),
(23, 'Mèo Đi Hia: Điều Ước Cuối Cùng', 0, 'Antonio Banderas, Salma Hayek, Olivia Colman, Harvey Guillén, Samson Kayo,…', 'Joel Crawford', 'Hài, Hoạt hình, Phiêu lưu', 103, 'Tiếng Anh - Phụ đề Tiếng Việt; Lồng tiếng', 'meodihia.jpg', 'https://www.youtube.com/embed/BsmTzEdX17U', 0, '2022-12-30', '2023-01-31', 'Puss phát hiện ra rằng niềm đam mê phiêu lưu mạo hiểm của anh đã gây ra hậu quả: Anh đã đốt cháy 8 trong số 9 mạng sống của mình, bây giờ chỉ còn lại đúng một mạng. Anh ta bắt đầu một cuộc hành trình để tìm Điều ước cuối cùng thần thoại trong Rừng Đen nhằm khôi phục lại chín mạng sống của mình. Chỉ còn một mạng sống, đây có lẽ sẽ là cuộc hành trình nguy hiểm nhất của Puss.'),
(34, 'Tử Tù Hồi Sinh', 0, 'Tony Todd, Angela Dixon, Heather Peace', 'Howard J. Ford', 'KD', 101, 'Tiếng Anh - Phụ đề Tiếng Việt', 'tu_tu_hoi_sinh_poster_1_.jpg', 'https://www.youtube.com/embed/1WdA-fo0WCU', 18, '2023-01-06', '2023-02-28', 'Chuyện gì sẽ xảy ra khi bạn đang trong thời kì phong tỏa, bạn không thể đi bất cứ đâu, không ai có thể đến thăm bạn. Nhưng ai đó hoặc thứ gì đó đang ở trong nhà của bạn và bất kể đó là gì, nó sắp trở thành mối nguy hiểm chết người...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rap`
--

CREATE TABLE `rap` (
  `id` int(11) NOT NULL,
  `id_cumrap` int(11) DEFAULT NULL,
  `TenRap` varchar(100) DEFAULT NULL,
  `LoaiRap` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rap`
--

INSERT INTO `rap` (`id`, `id_cumrap`, `TenRap`, `LoaiRap`) VALUES
(1, 1, 'Phòng 1', ''),
(2, 1, 'Phòng 2', ''),
(3, 1, 'Phòng 3', ''),
(4, 2, 'Phòng 1', ''),
(5, 2, 'Phòng 2', ''),
(6, 2, 'Phòng 3', ''),
(7, 3, 'Phòng 1', ''),
(8, 3, 'Phòng 2', ''),
(9, 3, 'Phòng 3', ''),
(10, 4, 'Phòng 1', ''),
(11, 4, 'Phòng 2', ''),
(12, 4, 'Phòng 3', ''),
(13, 5, 'Phòng 1', ''),
(14, 5, 'Phòng 2', ''),
(15, 5, 'Phòng 3', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vephim`
--

CREATE TABLE `vephim` (
  `id` int(11) NOT NULL,
  `LoaiVe` varchar(10) DEFAULT NULL,
  `TenVe` varchar(100) DEFAULT NULL,
  `GiaVe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vephim`
--

INSERT INTO `vephim` (`id`, `LoaiVe`, `TenVe`, `GiaVe`) VALUES
(12, '2D', 'Vé 2D', 75000),
(13, '3D', 'Vé 3D', 95000),
(14, '4D', 'Vé 4DX', 120000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Chỉ mục cho bảng `cumrap`
--
ALTER TABLE `cumrap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TenCum` (`TenCum`);

--
-- Chỉ mục cho bảng `danhsachghe`
--
ALTER TABLE `danhsachghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idlichchieu` (`id_lichchieu`);

--
-- Chỉ mục cho bảng `datve`
--
ALTER TABLE `datve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idKH` (`id_KH`),
  ADD KEY `fk_idlichchieu1` (`id_lichchieu`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tenphim` (`TenPhim`),
  ADD KEY `fl_tenrap` (`TenRap`),
  ADD KEY `fl_tencum` (`TenCum`),
  ADD KEY `fl_loaive` (`LoaiVe`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TenPhim` (`TenPhim`);

--
-- Chỉ mục cho bảng `rap`
--
ALTER TABLE `rap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_cumrap` (`id_cumrap`),
  ADD KEY `TenRap` (`TenRap`);

--
-- Chỉ mục cho bảng `vephim`
--
ALTER TABLE `vephim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LoaiVe` (`LoaiVe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `cumrap`
--
ALTER TABLE `cumrap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhsachghe`
--
ALTER TABLE `danhsachghe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT cho bảng `datve`
--
ALTER TABLE `datve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `rap`
--
ALTER TABLE `rap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `vephim`
--
ALTER TABLE `vephim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhsachghe`
--
ALTER TABLE `danhsachghe`
  ADD CONSTRAINT `fk_idlichchieu` FOREIGN KEY (`id_lichchieu`) REFERENCES `lichchieu` (`id`);

--
-- Các ràng buộc cho bảng `datve`
--
ALTER TABLE `datve`
  ADD CONSTRAINT `fk_idKH` FOREIGN KEY (`id_KH`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `fk_idlichchieu1` FOREIGN KEY (`id_lichchieu`) REFERENCES `lichchieu` (`id`);

--
-- Các ràng buộc cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `fk_tenphim` FOREIGN KEY (`TenPhim`) REFERENCES `movie` (`TenPhim`),
  ADD CONSTRAINT `fl_loaive` FOREIGN KEY (`LoaiVe`) REFERENCES `vephim` (`LoaiVe`),
  ADD CONSTRAINT `fl_tencum` FOREIGN KEY (`TenCum`) REFERENCES `cumrap` (`TenCum`),
  ADD CONSTRAINT `fl_tenrap` FOREIGN KEY (`TenRap`) REFERENCES `rap` (`TenRap`);

--
-- Các ràng buộc cho bảng `rap`
--
ALTER TABLE `rap`
  ADD CONSTRAINT `fk_id_cumrap` FOREIGN KEY (`id_cumrap`) REFERENCES `cumrap` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
