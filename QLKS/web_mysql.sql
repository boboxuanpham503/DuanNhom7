-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2025 lúc 05:42 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

CREATE TABLE `datphong` (
  `MaDatPhong` varchar(20) NOT NULL,
  `MaKhachHang` varchar(20) DEFAULT NULL,
  `MaPhong` varchar(20) DEFAULT NULL,
  `NgayDat` date DEFAULT NULL,
  `NgayNhanPhong` date DEFAULT NULL,
  `NgayTraPhong` date DEFAULT NULL,
  `TongTien` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `datphong`
--

INSERT INTO `datphong` (`MaDatPhong`, `MaKhachHang`, `MaPhong`, `NgayDat`, `NgayNhanPhong`, `NgayTraPhong`, `TongTien`) VALUES
('DP001', 'KH001', 'P001', '2025-04-10', '2025-04-12', '2025-04-15', 1500000.00),
('DP002', 'KH002', 'P002', '2025-04-11', '2025-04-13', '2025-04-16', 2100000.00),
('DP003', 'KH003', 'P003', '2025-04-20', '2025-04-22', '2025-04-25', 1650000.00),
('DP004', 'KH004', 'P004', '2025-04-21', '2025-04-23', '2025-04-26', 2250000.00),
('DP005', 'KH005', 'P005', '2025-04-22', '2025-04-24', '2025-04-27', 1800000.00),
('DP006', 'KH006', 'P006', '2025-04-23', '2025-04-25', '2025-04-28', 2400000.00),
('DP007', 'KH007', 'P007', '2025-04-24', '2025-04-26', '2025-04-30', 5200000.00),
('DP008', 'KH008', 'P008', '2025-04-25', '2025-04-27', '2025-04-29', 1100000.00),
('DP009', 'KH009', 'P009', '2025-04-26', '2025-04-28', '2025-05-01', 2250000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDichVu` varchar(20) NOT NULL,
  `TenDichVu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GiaDichVu` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`MaDichVu`, `TenDichVu`, `GiaDichVu`) VALUES
('DV001', 'Dịch vụ giặt là', 100000.00),
('DV002', 'Dịch vụ ăn uống tại phòng', 200000.00),
('DV003', 'Dịch vụ spa cao cấp', 500000.00),
('DV004', 'Dịch vụ đưa đón sân bay', 300000.00),
('DV005', 'Dịch vụ thuê xe', 350000.00),
('DV006', 'Dịch vụ hướng dẫn tour', 400000.00),
('DV007', 'Dịch vụ trông trẻ', 250000.00),
('DV008', 'Dịch vụ Spa', 500000.00),
('DV009', 'Dịch vụ giặt khô cao cấp', 150000.00),
('DV010', 'Dịch vụ thuê xe riêng', 500000.00),
('DV011', 'Dịch vụ tổ chức tiệc', 1000000.00),
('DV012', 'Dịch vụ đưa đón VIP', 600000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` varchar(20) NOT NULL,
  `MaDatPhong` varchar(20) DEFAULT NULL,
  `NgayXuatHoaDon` date DEFAULT NULL,
  `TongTien` decimal(15,2) DEFAULT NULL,
  `DichVuKemTheo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `MaDatPhong`, `NgayXuatHoaDon`, `TongTien`, `DichVuKemTheo`) VALUES
('HD001', 'DP001', '2025-04-15', 1600000.00, 'DV001'),
('HD002', 'DP002', '2025-04-16', 2300000.00, 'DV002,DV003'),
('HD003', 'DP003', '2025-04-25', 1950000.00, 'DV004'),
('HD004', 'DP004', '2025-04-26', 2650000.00, 'DV005,DV001'),
('HD005', 'DP005', '2025-04-27', 2200000.00, 'DV006'),
('HD006', 'DP006', '2025-04-28', 2800000.00, 'DV002,DV005'),
('HD007', 'DP007', '2025-04-30', 5200000.00, NULL),
('HD008', 'DP008', '2025-04-29', 1600000.00, 'DV003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(20) NOT NULL,
  `HoVaTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoVaTen`, `SDT`, `DiaChi`, `CCCD`) VALUES
('KH001', 'Nguyễn Văn Anh', '0901234567', 'Hà Nội', '123456789'),
('KH002', 'Lê Thị Bình', '0912345678', 'Hồ Chí Minh', '987654321'),
('KH003', 'Trần Văn Chức', '0923456789', 'Đà Nẵng', '456789123'),
('KH004', 'Phạm Thị Diệu', '0931234567', 'Hải Phòng', '789123456'),
('KH005', 'Hoàng Văn Em', '0942345678', 'Cần Thơ', '321654987'),
('KH006', 'Vũ Thị Lan', '0971234567', 'Quảng Ninh', '159753852'),
('KH007', 'Đỗ Văn Hùng', '0982345678', 'Nha Trang', '753951456'),
('KH008', 'Bùi Thị Mai', '0993456789', 'Huế', '852963741'),
('KH009', 'Ngô Văn Nam', '0964567890', 'Vũng Tàu', '147258369'),
('KH010', 'Phan Thị Hồng', '0955678901', 'Hà Giang', '369258147');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(20) NOT NULL,
  `HoVaTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ChucVu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HoVaTen`, `ChucVu`, `SDT`, `Email`) VALUES
('NV001', 'Phạm Văn Dũng', 'Lễ tân', '0934567890', 'dungpham@example.com'),
('NV002', 'Nguyễn Thị Hoa', 'Quản lý phòng', '0945678901', 'hoanguyen@example.com'),
('NV003', 'Trần Văn Hùng', 'Bảo vệ', '0956789012', 'hungtran@example.com'),
('NV004', 'Lê Thị Mai', 'Nhân viên phục vụ', '0967890123', 'maile@example.com'),
('NV005', 'Hoàng Văn Long', 'Lễ tân', '0976789012', 'longhoang@example.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `MaPhong` varchar(20) NOT NULL,
  `SoPhong` varchar(10) DEFAULT NULL,
  `LoaiPhong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GiaThue` decimal(15,2) DEFAULT NULL,
  `TinhTrang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaPhong`, `SoPhong`, `LoaiPhong`, `GiaThue`, `TinhTrang`, `HinhAnh`) VALUES
('P001', '101', 'Đơn', 500000.00, 'Trống', 'Đơn2.jpeg'),
('P002', '102', 'Đôi', 700000.00, 'Đã đặt', 'Đôi2.jpeg'),
('P003', '103', 'Cao cấp', 1200000.00, 'Trống', 'CaoCap1.jpeg'),
('P004', '104', 'Đơn', 550000.00, 'Trống', 'Đơn4.jpeg'),
('P005', '201', 'Đôi', 750000.00, 'Trống', 'Đôi4.jpeg'),
('P006', '202', 'Đơn', 600000.00, 'Trống', 'Đơn1.jpeg'),
('P007', '203', 'Đôi', 800000.00, 'Đã đặt', 'Đôi3.jpeg'),
('P008', '301', 'Cao cấp', 1300000.00, 'Trống', 'CaoCap2.jpeg'),
('P009', '302', 'Đơn', 550000.00, 'Trống', 'Đơn3.jpeg'),
('P010', '303', 'Đôi', 750000.00, 'Đã đặt', 'Đôi1.jpeg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`MaDatPhong`),
  ADD KEY `MaKhachHang` (`MaKhachHang`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaDatPhong` (`MaDatPhong`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD CONSTRAINT `datphong_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  ADD CONSTRAINT `datphong_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaDatPhong`) REFERENCES `datphong` (`MaDatPhong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
