-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2024 lúc 02:53 PM
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
-- Cơ sở dữ liệu: `alphaware`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `date` date NOT NULL,
  `contents` text NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `headline`, `author`, `summary`, `date`, `contents`, `picture`) VALUES
(1, 'Giày thể thao cao gót gây sốt', 'Làng mốt', 'Thiết kế pha trộn giày thể thao với giày cao gót công sở của Nike và Martine Rose hiện \"cháy hàng\" ở Mỹ.', '2024-12-03', 'Sản phẩm mang hình dáng của một đôi giày bóng đá kết hợp giày cao gót công sở, phần gót có đệm và đàn hồi. Shox MR4 có nhiều phiên bản như đen, trắng, xanh neon pha cam hoặc xanh lam và tím sáng. Trong đó, đôi màu cam có giá 458 bảng (13,8 triệu đồng).\r\nTừ tháng 9 tới nay, tại New York, nhiều người xuống phố với đôi giày này. Người mẫu Hailey Bieber tạo phong cách bằng bộ cánh trung tính gồm crop top, quần jeans, áo khoác quá khổ và đôi giày màu nổi. Ảnh: GC Image. Biên tập viên thời trang Chioma Nnadi của Vogue đánh giá Shox MR4 linh hoạt. \"Tôi thích vì nó vẫn là sneakers nhưng lại giúp người dùng tăng thêm chiều cao nhờ phần gót cải tiến. Giày thể thao bình thường có xu hướng trông hơi lôi thôi khi kết hợp với váy hoặc đầm. Nhưng thiết kế này thì không, nó kéo dài đôi chân của bạn\", cô nói. Ảnh: Vogue', 'https://i1-giaitri.vnecdn.net/2023/10/24/giay-the-thao-cao-got-3-1698114848.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=oJXHI7d9JWi9w6cU50cOfA'),
(2, 'Nike thay CEO', 'Quốc tế', 'Ngày 19/9, gã khổng lồ trang phục thể thao Nike thông báo CEO John Donahoe rời chức vụ này tháng tới. Người thay thế là Elliott Hill - lãnh đạo kỳ cựu của Nike, có 32 năm làm việc cho hãng.', '2024-09-11', 'Nike thay CEO sau nhiều năm hãng này chật vật vì cạnh tranh tăng cao và chiến lược sai lầm.\r\n\r\nNgày 19/9, gã khổng lồ trang phục thể thao Nike thông báo CEO John Donahoe rời chức vụ này tháng tới. Người thay thế là Elliott Hill - lãnh đạo kỳ cựu của Nike, có 32 năm làm việc cho hãng.\r\n\r\nNhà đầu tư và giới phân tích hoan nghênh sự thay đổi này. Cổ phiếu của Nike tăng 9% sau thông tin này. Từ đầu năm, mã này đã mất 24%.Nike đối mặt với sự thay đổi hành vi của người tiêu dùng và cạnh tranh khốc liệt từ các thương hiệu mới nổi như Hoka hay On. Người tiêu dùng giảm chi cho các loại giày và quần áo thể thao đắt đỏ. Họ muốn chuyển sang đồ dùng cơ bản và tăng chi cho trải nghiệm như xem biểu diễn ca nhạc và du lịch.\r\n\r\nTrong năm tài khóa 2023 (kết thúc vào tháng 9/2023), Nike lần đầu ghi nhận doanh thu trên 50 tỷ USD, nhờ nhu cầu thể thao tăng lên sau đại dịch. Tuy nhiên, việc kinh doanh sau đó chậm lại. Quý trước, doanh thu của hãng gần như đứng yên. Số liệu này cho năm tài chính 2025 được dự báo giảm về hơn 48,8 tỷ USD, một phần do thị trường Trung Quốc tăng trưởng yếu.', 'https://i1-kinhdoanh.vnecdn.net/2024/09/20/john-donahoen-9569-1726806032.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Uh2ZiP8oW2ENHjFTQSvhyg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `mi` varchar(1) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(3, 'Nike Air Max Neon', '12000', '7', '1141103372nike15.jpg', 'Nike', 'basketball'),
(4, 'Nike Air Max Green', '12000', '8', '832975975nike5.jpg', 'Nike', 'basketball'),
(6, 'Adidas Gent', '13000', '9', '13634363832010-Adidas-Men-Basketball-Shoes-2.jpg', 'Adidas', 'basketball'),
(7, 'Adidas 599 LRG', '15000', '8', '872686791Adidas Basketball Shoes 599_LRG.jpg', 'Adidas', 'basketball'),
(8, 'Lebron 11 Siver', '18000', '8', '124030907nike13.jpg', 'Nike', 'basketball'),
(9, 'Adidas Adizero Black', '18000', '10', '14237873113-adidas-Rose-Dominate-Adizero-shoes.jpg', 'Adidas', 'basketball'),
(10, 'Adidas Adizero Blue', '18000', '10', '1024158586Adidas_Rose_Shoes_009.jpg', 'Adidas', 'basketball'),
(11, 'Lebron 11 Red', '18000', '9', '567507982nike10.jpg', 'Nike', 'basketball'),
(13, 'Nike Hypervenom', '10000', '12', '1312216564nike-hypervenoms-customize-fg-2015-outlet-neymar-colors-soccer-shoes-professional.jpg', 'Nike', 'football'),
(14, 'Nike C Lou Generation', '12000', '11', '533123642013_Discount_Nike_C_Luo_9_Generation_Online_Blue_Green.jpg', 'Nike', 'football'),
(15, 'Nike Mercurial Vapor 7 Superfly II FG Lightning', '12000', '12', '1157463277Nike-Mercurial-Vapor-7-Superfly-III-FG-Lightning-Soccer-Shoes-Fluorescent-Yellow-Black.jpg', 'Nike', 'football'),
(16, 'Nike Magista Obra', '12000', '9', '335092704Cheap-Nike-Magista-Obra-.jpg', 'Nike', 'football'),
(17, 'Adidas Chaussures', '12000', '8', '697721412chaussures001.jpg', 'Adidas', 'football'),
(19, 'Nike Flyknit Lunar Green Blue', '8000', '9', '745184160Nike_Nike_Flyknit_Lunar_2_Mens_Fluorescent_Green_Blue_Running_Shoes_2015_Outlet.jpg', 'Nike', 'Running'),
(20, 'Nike Flyknit Lunar Sea Blue', '8000', '10', '1239262802Nike_Nike_Flyknit_Lunar_2_Mens_Sky_Blue_Sea_Blue_Running_Shoes_2015_Cheap.jpg', 'Nike', 'Running'),
(21, 'Nike Flyknit Green', '8000', '12', '470680173flyknit.jpg', 'Nike', 'Running'),
(26, 'Nike Hypervenom Phantom', '15000', '8', '15416832542014-Nike-Hypervenom-Phantom-FG-Red-Fluorescent-Yellow.jpg', 'Nike', 'football'),
(28, 'Adidas Adizero Red', '18000', '9', '153564340adidas-all-star-basketball-shoes-adizero-shadow.jpg', 'Adidas', 'basketball'),
(29, 'Adidas Gents', '10000', '9', '14124685402-Adidas-gents-shoes-collection-2015-01.jpg', 'Adidas', 'Running'),
(30, 'Nike Flyknit Gray & Pink', '8000', '11', '948731815nw1.jpg', 'Nike', 'Running'),
(31, 'Reebok Zigtech Shake', '10000', '10', '245113227reebok-zigtech-shake-running-shoes-offer-lemonstore-1405-13-lemonstore@1.jpg', 'Reebok', 'Running'),
(157, 'Reebok Blast', '10000', '9', '547866585reebok-blast-profile.jpg', 'Reebok', 'feature'),
(21561, 'Lebron 11 ', '15000', '10', '1125171488heat-lebron-11-17.jpg', 'Nike', 'feature'),
(51292, 'Adidas Adizero F50', '10000', '10', '1272267959adizero-F50-FG.jpg', 'Adidas', 'feature'),
(358159, 'Flyknit 360', '8000', '8', '40329068flyknit.jpg', 'Nike', 'feature'),
(431860, 'Nike Hypervenom Neymar Jr.', '12000', '9', '852236910hypervenom.png', 'Nike', 'feature'),
(961461, 'Adidas Bounce Titan', '9000', '9', '367527167Rabatt_Prezzo_Ridotto_Adidas_Bounce_Titan_Herren_White_Schwarz_Running_Sho_Online.jpg', 'Adidas', 'feature');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1, 71339, 20),
(2, 82631, 30),
(3, 3, 20),
(4, 4, 20),
(5, 6, 20),
(6, 7, 20),
(7, 8, 20),
(8, 9, 20),
(9, 10, 19),
(10, 11, 23),
(11, 13, 20),
(12, 14, 20),
(13, 15, 20),
(14, 16, 20),
(15, 17, 20),
(16, 19, 20),
(17, 20, 20),
(18, 21, 20),
(19, 26, 13),
(20, 28, 20),
(21, 29, 18),
(22, 30, 20),
(23, 31, 20),
(26, 431860, 40),
(27, 21561, 30),
(28, 358159, 30),
(29, 157, 25),
(30, 51292, 20),
(31, 961461, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transacton_detail_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
