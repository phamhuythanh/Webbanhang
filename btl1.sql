-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2022 lúc 05:12 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(100) NOT NULL,
  `ad_name` varchar(500) NOT NULL,
  `ad_support` int(30) NOT NULL,
  `ad_email` varchar(500) NOT NULL,
  `ad_password` varchar(500) NOT NULL,
  `ad_created` timestamp NULL DEFAULT current_timestamp(),
  `ad_update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_name`, `ad_support`, `ad_email`, `ad_password`, `ad_created`, `ad_update`) VALUES
(1, 'haha', 1, 'kimhoang@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-29 01:35:34', '2022-06-29 20:58:54'),
(9, 'Anh Kim Vippro', 0, 'kimhoang5@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-05-28 11:54:34', '2022-05-31 23:04:54'),
(12, 'Thuỳ Linh 12323', 0, 'ThuyLinh123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-05-28 16:27:51', '2022-06-30 07:31:05'),
(14, 'Tuấn đần123', 1, 'kimhoangyqerwe@gmail.com', '8d9a51b3b35b93bf686e1e7810b0893b', '2022-05-28 16:37:38', '2022-06-30 07:30:19'),
(27, 'Anh Kim 123eqwe', 1, 'kimhoang1@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-29 23:21:52', '2022-06-30 07:32:53'),
(31, 'sdasdasd', 0, 'kimhoangdasdsdsa@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2022-06-30 00:38:11', '2022-06-30 07:38:11'),
(32, 'adsadsaxzcxzgg', 0, 'kimhoangfghf@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2022-06-30 00:38:54', '2022-06-30 07:38:54'),
(33, 'tuan', 0, 'tuan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-06-30 02:49:07', '2022-06-30 09:54:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `ca_id` int(20) NOT NULL,
  `ca_parent_id` int(20) NOT NULL,
  `ca_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`ca_id`, `ca_parent_id`, `ca_name`) VALUES
(1, 0, 'Váy Cưới'),
(2, 0, 'Váy Chữ A'),
(3, 0, 'Đầm Chéo'),
(4, 0, 'Váy Công Chúa'),
(5, 0, 'Váy Xếp Ly'),
(22, 4, 'Váy Công Chúa Hè'),
(24, 5, 'Váy HS Hàn'),
(25, 3, 'Đầm Dạ Hội'),
(28, 4, 'Váy Công Chúa Trễ Vai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `ct_id` int(20) NOT NULL,
  `ct_name` varchar(500) NOT NULL,
  `ct_email` varchar(500) NOT NULL,
  `ct_phonenumber` varchar(30) NOT NULL,
  `ct_password` varchar(500) NOT NULL,
  `ct_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`ct_id`, `ct_name`, `ct_email`, `ct_phonenumber`, `ct_password`, `ct_address`) VALUES
(2, 'Hoang Huu Kim', 'kimhoang@gmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Nghệ An'),
(6, 'Trần Trung Hiếu', 'hieunadal2411@gmail.com', '0382524296', '202cb962ac59075b964b07152d234b70', 'Ha Nam'),
(7, 'tuan', 'tuan@gmail.com', '123', '202cb962ac59075b964b07152d234b70', 'thái bình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_admin`
--

CREATE TABLE `history_admin` (
  `history_id` int(11) NOT NULL,
  `ex_id` int(11) NOT NULL,
  `ex_name` varchar(500) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `ad_name` varchar(500) NOT NULL,
  `action` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `history_admin`
--

INSERT INTO `history_admin` (`history_id`, `ex_id`, `ex_name`, `admin_id`, `ad_name`, `action`, `time`) VALUES
(9, 1, 'haha', 28, 'sdsf', 'Xoá', '2022-06-30 00:07:45'),
(10, 1, 'haha', 30, 'ggfbdfg', 'Xoá', '2022-06-30 00:27:46'),
(11, 1, 'haha', 27, 'Anh Kim 123eqwe', 'Sửa', '2022-06-30 00:32:53'),
(12, 1, 'haha', 32, 'adsadsaxzcxzgg', 'Tạo', '2022-06-30 00:38:54'),
(13, 1, 'haha', 23, 'Hoà', 'Xoá', '2022-06-30 02:00:21'),
(14, 1, 'haha', 33, 'tuan', 'Tạo', '2022-06-30 02:49:07'),
(15, 1, 'haha', 33, 'tuan', 'Sửa', '2022-06-30 02:54:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `od_id` int(11) NOT NULL,
  `ct_id` int(11) NOT NULL,
  `od_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `od_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`od_id`, `ct_id`, `od_date`, `od_price`) VALUES
(3, 2, '2022-06-18 09:33:33', 555500),
(4, 2, '2022-06-18 09:34:13', 555500),
(5, 2, '2022-06-18 09:41:39', 2223000),
(6, 2, '2022-06-18 10:28:56', 2480000),
(7, 2, '2022-06-18 10:30:19', 180000),
(8, 6, '2022-06-18 12:40:30', 465500),
(9, 6, '2022-06-18 13:16:43', 1577000),
(10, 2, '2022-06-30 02:38:53', 513000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `orderdetail_id` int(11) NOT NULL,
  `od_id` int(11) NOT NULL,
  `pd_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`orderdetail_id`, `od_id`, `pd_id`, `quantity`, `price`) VALUES
(1, 4, 12, 1, 490000),
(2, 4, 16, 1, 90000),
(5, 6, 17, 1, 490000),
(6, 7, 16, 2, 90000),
(8, 9, 12, 1, 490000),
(10, 10, 28, 3, 190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `pd_id` int(20) NOT NULL,
  `pd_name` varchar(500) NOT NULL,
  `pd_photo` varchar(500) NOT NULL,
  `pd_price` double NOT NULL,
  `pd_discount` int(20) NOT NULL,
  `ca_id` int(20) NOT NULL,
  `pd_content` varchar(500) NOT NULL,
  `pd_size` varchar(20) NOT NULL,
  `pd_color` varchar(500) NOT NULL,
  `pd_hot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`pd_id`, `pd_name`, `pd_photo`, `pd_price`, `pd_discount`, `ca_id`, `pd_content`, `pd_size`, `pd_color`, `pd_hot`) VALUES
(11, 'Váy cưới đuôi cá', 'product-6.jpg', 990000, 0, 1, 'sfsdfe4r', 'X', 'Trắng', 0),
(12, 'Váy rút chéo ôm sát', 'product-7.jpg', 490000, 5, 3, 'fcgvbxc', 'X', 'Trắng', 0),
(14, 'Đầm đắp chéo gợi cảm', 'product-4.jpg', 490000, 0, 3, 'dfgfgh', 'M', 'Xám', 0),
(15, 'Váy đen ôm sát body', 'product-9.jpg', 690000, 0, 4, 'fdsgdf', 'XX', 'Đen', 0),
(16, 'Váy công chúa điệu đà', 'product-2.jpg', 90000, 0, 4, 'fdgs', 'M', 'Hồng', 0),
(17, 'Váy xếp ly kẻ sọc', 'product-1.jpg', 490000, 0, 5, 'dfgdf', 'X', 'Ghi', 0),
(20, 'Váy xếp ly kẻ sọc nữ sinh mùa thu phong cách Hàn Quốc', 'product-10.jpg', 135000, 0, 24, '', 'M, S', 'Xám', 0),
(22, 'Váy công chúa tay phồng thoáng khí mùa hè cho bé gái', 'product-12.jpg', 193000, 0, 22, '', 'M', 'Trắng', 0),
(23, 'Váy dạ hội màu xanh phối kim sa nhẹ nhàng', 'product-13.jpg', 390000, 5, 25, '', 'X', 'Xanh', 0),
(26, 'Chân váy chữ A ngắn', 'product-15.jpg', 90000, 5, 2, '', 'X', 'Đen', 0),
(27, 'Váy công chúa trễ vai', 'product-13.jpg', 390000, 10, 28, '', 'M', 'Xanh', 0),
(28, 'Chân váy xếp ly phong cách', 'product-16.jpg', 190000, 10, 5, '', 'XX', 'Trắng', 0),
(30, 'Chân Váy Chữ A Đính Nút', 'product-17.jpg', 390000, 0, 2, '', '', 'Đỏ', 0),
(31, 'Váy cưới cách tân cho cặp đôi', 'product-14.jpg', 990000, 10, 1, '', 'X', 'Trắng', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ca_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ct_id`);

--
-- Chỉ mục cho bảng `history_admin`
--
ALTER TABLE `history_admin`
  ADD PRIMARY KEY (`history_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`od_id`),
  ADD KEY `ct_id` (`ct_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orderdetail_id`),
  ADD KEY `od_id` (`od_id`,`pd_id`),
  ADD KEY `FK_pdid` (`pd_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `cate_id` (`ca_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `ca_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `ct_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `history_admin`
--
ALTER TABLE `history_admin`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `od_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `pd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_ctid` FOREIGN KEY (`ct_id`) REFERENCES `customers` (`ct_id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_odid` FOREIGN KEY (`od_id`) REFERENCES `orders` (`od_id`),
  ADD CONSTRAINT `FK_pdid` FOREIGN KEY (`pd_id`) REFERENCES `products` (`pd_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_cateid` FOREIGN KEY (`ca_id`) REFERENCES `categories` (`ca_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
