-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Jan 09, 2021 at 09:54 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doanfe2`
--
CREATE DATABASE IF NOT EXISTS `doanfe2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `doanfe2`;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`) VALUES
(1, 'SmartPhone'),
(2, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'IPhone'),
(2, 'SamSung'),
(3, 'Oppo'),
(4, 'Vivo'),
(5, 'Xiaomi'),
(6, 'Realme'),
(7, 'MacBook'),
(8, 'Asus'),
(9, 'HP'),
(10, 'Lenovo'),
(11, 'Acer'),
(12, 'Dell');
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_description`, `product_price`, `product_photo`, `likes`, `updated_at`, `created_at`) VALUES
(1, 'iPhone 11', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 14990000, 'iphone-xi-do-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(2, 'iPhone 13 Pro Max', 'iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 31290000, 'iphone-13-pro-max-sierra-blue-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(3, 'iPhone 12 Pro Max 512GB', 'iPhone 12 Pro Max 512GB - đẳng cấp từ tên gọi đến từng chi tiết. Ngay từ khi chỉ là tin đồn thì chiếc smartphone này đã làm đứng ngồi không yên bao “fan cứng” nhà Apple, với những nâng cấp vô cùng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt mà chưa một chiếc điện thoại iPhone tiền nhiệm nào có được.', 30990000, 'iphone-12-pro-max-vang-new-600x600-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(4, 'iPhone 13 Pro', 'Mỗi lần ra mắt phiên bản mới là mỗi lần iPhone chiếm sóng trên khắp các mặt trận và lần này cái tên khiến vô số người "sục sôi" là iPhone 13 Pro, chiếc điện thoại thông minh vẫn giữ nguyên thiết kế cao cấp, cụm 3 camera được nâng cấp, cấu hình mạnh mẽ cùng thời lượng pin lớn ấn tượng. ', 28290000, 'iphone-13-pro-sierra-blue-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(5, 'iPhone 12 Pro', 'iPhone 12 Pro 256 GB khi được ra mắt đã có sự thay đổi lớn về thiết kế bên ngoài và chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.', 26290000, 'iphone-12-pro-xam-new-600x600-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(6, 'iPhone 13', 'Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', 22290000, 'iphone-13-red-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(7, 'iPhone 12', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', 19990000, 'iphone-12-xanh-la-new-2-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(8, 'iPhone 12 mini', 'iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.', 18990000, 'iphone-12-mini-mau-tim-3-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(9, 'iPhone 13 mini', 'iPhone 13 mini được Apple ra mắt với hàng loạt nâng cấp về cấu hình và các tính năng hữu ích, lại có thiết kế vừa vặn. Chiếc điện thoại này hứa hẹn là một thiết bị hoàn hảo hướng tới những khách hàng thích sự nhỏ gọn nhưng vẫn giữ được sự mạnh mẽ bên trong. ', 19290000, 'iphone-13-mini-blue-2-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(10, 'iPhone XR 128GB', 'Được xem là phiên bản iPhone giá rẻ đầy hoàn hảo, iPhone Xr 128GB khiến người dùng có nhiều sự lựa chọn hơn về màu sắc đa dạng nhưng vẫn sở hữu cấu hình mạnh mẽ và thiết kế sang trọng.', 13490000, 'iphone-xr-128gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(11, 'Samsung Galaxy S22 Ultra 5G', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.', 30990000, 'Galaxy-S22-Ultra-Burgundy-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(12, 'Samsung Galaxy Z Fold3 5G', 'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.', 33990000, 'samsung-galaxy-z-fold-3-silver-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(13, 'Samsung Galaxy S22+ 5G', 'Samsung Galaxy S22+ 5G 128 GB được Samsung cho ra mắt với với ngoại hình không đổi nhưng được nâng cấp đáng kể về thông số cấu hình bên trong và thời gian sử dụng tốt, chắc hẳn sẽ mang lại những trải nghiệm thú vị dành cho bạn.', 25990000, 'Galaxy-S22-Plus-White-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(14, 'Samsung Galaxy S22', 'Samsung Galaxy S22 ra mắt với diện mạo vô cùng tinh tế và trẻ trung, mang trong mình thiết kế phẳng theo xu hướng thịnh hành, màn hình 120 Hz mượt mà, cụm camera AI 50 MP và bộ xử lý đến từ Qualcomm.', 21990000, 'Galaxy-S22-Black-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(15, 'Samsung Galaxy Z Flip3 5G', 'Trong sự kiện Galaxy Unpacked hồi 11/8, Samsung đã chính thức trình làng mẫu điện thoại màn hình gập thế hệ mới mang tên Galaxy Z Flip3 5G 128GB. Đây là một siêu phẩm với màn hình gập dạng vỏ sò cùng nhiều điểm cải tiến và thông số ấn tượng, sản phẩm chắc chắn sẽ thu hút được rất nhiều sự quan tâm của người dùng, đặc biệt là phái nữ.', 19990000, 'samsung-galaxy-z-flip-3-cream-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(16, 'Samsung Galaxy S21+ 5G 128GB', 'Ẩn đằng sau thiết kế tuyệt tác của siêu phẩm Galaxy S21+ 5G là cả một kỳ quan công nghệ, mà ở đó bạn có thể trải nghiệm hiệu năng mạnh mẽ nhất, những công nghệ tiên phong, dẫn đầu trào lưu với cụm camera đỉnh cao đến từ hãng điện thoại Samsung.', 17990000, 'samsung-galaxy-s21-plus-den-600x600-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(17, 'Samsung Galaxy Note 20', 'Tháng 8/2020, Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính hãng điện thoại Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.', 15990000, 'samsung-galaxy-note-20-062220-122200-fix-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(18, 'Samsung Galaxy S21 5G', 'Điện thoại Galaxy S21 5G nằm trong series S21 đến từ Samsung nổi bật với thiết kế tràn viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ hàng đầu.', 20990000, 'samsung-galaxy-s21-tim-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(19, 'Samsung Galaxy S21 Ultra 5G 128GB', 'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.', 22990000, 'samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(20, 'Samsung Galaxy S21 FE 5G', 'Samsung Galaxy S21 FE 5G (6GB/128GB) được Samsung ra mắt với dáng dấp thời thượng, cấu hình khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ dùng hằng ngày và còn gì nữa? Mời bạn khám phá qua nội dung sau ngay.' , 12490000, 'Samsung-Galaxy-S21-FE-tim-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(21, 'OPPO Find X5 Pro 5G', 'Dòng Find X đến từ OPPO luôn mang trên mình những công nghệ hàng đầu trong ngành công nghiệp điện thoại. OPPO Find X5 Pro cũng sở hữu những thông số kỹ thuật chuẩn flagship năm 2022, có thể kể đến như vi xử lý Snapdragon 8 Gen 1, màn hình 2K+ sắc nét, camera Sony và sạc nhanh 80 W.', 30990000, 'oppo-find-x5-pro-den-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(22, 'OPPO Reno6 series', 'Sau khi ra mắt OPPO Reno5 chưa lâu thì OPPO lại cho ra mẫu smartphone mới mang tên OPPO Reno6 với hàng loạt cải tiến mới về ngoại hình bên ngoài lẫn hiệu năng bên trong, mang đến trải nghiệm vượt bật cho người dùng.', 12490000, 'oppo-reno6-5g-black-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(23, 'OPPO Reno7 series', 'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.', 10490000, 'oppo-reno7-z-5g-thumb-1-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(24, 'OPPO Reno5 5G', 'OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ ngoài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu.', 8490000, 'oppo-reno5-5g-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(25, 'OPPO Reno4 Pro', 'OPPO chính thức trình làng chiếc smartphone có tên OPPO Reno4 Pro. Máy trang bị cấu hình vô cùng cao cấp với vi xử lý chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, cùng công nghệ sạc siêu nhanh 65 W nhưng được bán với mức giá vôưu đãi, dễ tiếp cận.', 7990000, 'oppo-reno4-pro-trang-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(26, 'Vivo V21 5G', 'Chụp selfie bùng nổ trong đêm, thiết kế mới hiện đại đón đầu xu hướng, cùng với đó là tốc độ kết nối mạng 5G hàng đầu, tất cả những tính năng ấn tượng này đều có trong Vivo V21 5G mẫu điện thoại cận cao cấp đến từ Vivo.', 9090000, 'vivo-v21-5g-xanh-den-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(27, 'Vivo V23 series', 'Vivo V23e - sản phẩm tầm trung được đầu tư lớn về khả năng selfie cùng ngoại hình mỏng nhẹ, bên cạnh thiết kế vuông vức theo xu hướng hiện tại thì V23e còn có hiệu năng tốt và một viên pin có khả năng sạc cực nhanh.', 7490000, 'Vivo-V23e-1-2-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(28, 'Vivo Y53s', 'Vivo mang đến niềm vui cho mọi người tin dùng khi hãng chính thức tung ra chiếc điện thoại Vivo Y53s với những tính năng tiên tiến đi cùng hiệu năng mạnh mẽ. Đặc biệt, smartphone lại còn sở hữu mức giá hấp dẫn trong phân khúc tầm trung đầy hứa hẹn.', 6990000, 'vivo-y53s-xanh-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(29, 'Vivo Y33s', 'Thiết kế bóng bẩy, các chi tiết được hoàn thiện tốt', 6690000, 'Vivo-y33s-yellow-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(30, 'Vivo Y55', 'Vivo Y55 là một cái tên sáng giá dành cho những ai đang muốn chọn mua một chiếc điện thoại phục vụ việc chơi game nhờ cấu hình ổn định trên mức giá phải chăng, kèm với đó là khả năng chụp ảnh sắc nét hỗ trợ bạn trong các công việc nhiếp ảnh cực kỳ dễ dàng.', 6990000, 'vivo-y55-den-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(31, 'Xiaomi 12 series', 'Xiaomi đang dần khẳng định chỗ đứng của mình trong phân khúc điện thoại flagship bằng việc ra mắt Xiaomi 12 với bộ thông số ấn tượng, máy có một thiết kế gọn gàng, hiệu năng mạnh mẽ, màn hình hiển thị chi tiết cùng khả năng chụp ảnh sắc nét nhờ trang bị ống kính đến từ Sony.', 19990000, 'Xiaomi-12-xam-thumb-mau-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(32, 'Xiaomi 11T Pro 5G', 'Xiaomi 11T Pro 5G 8GB sử dụng con chip Snapdragon 888 mạnh mẽ, camera chính 108 MP, hỗ trợ sạc nhanh 120 W, màn hình rộng với tốc độ làm tươi lên đến 120 Hz, tận hưởng trải nghiệm tuyệt vời trong từng khoảnh khắc.', 13990000, 'xiaomi-11t-pro-5g-8gb-thumb-600x600.jpeg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(33, 'Xiaomi 11T', 'Xiaomi 11T đầy nổi bật với thiết kế vô cùng trẻ trung, màn hình AMOLED, bộ 3 camera sắc nét và viên pin lớn đây sẽ là mẫu smartphone của Xiaomi thỏa mãn mọi nhu cầu giải trí, làm việc và là niềm đam mê sáng tạo của bạn. ', 10990000, 'Xiaomi-11T-White-1-2-3-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(34, 'Xiaomi 11 Lite 5G NE', 'Xiaomi 11 Lite 5G NE một phiên bản có ngoại hình rất giống với Mi 11 Lite được ra mắt trước đây. Chiếc smartphone này của Xiaomi mang trong mình một hiệu năng ổn định, thiết kế sang trọng và màn hình lớn đáp ứng tốt các tác vụ hằng ngày của bạn một cách dễ dàng.', 9490000, 'xiaomi-11-lite-5g-ne-pink-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(35, 'Xiaomi Mi 11 series', 'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang.', 7990000, 'xiaomi-mi-11-lite-4g-blue-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(36, 'Realme 9 Pro 5G', 'Realme 9 Pro - chiếc điện thoại tầm trung được Realme giới thiệu với thiết kế phản quang hoàn toàn mới, máy có một vẻ ngoài năng động, hiệu năng mạnh mẽ, cụm camera AI 64 MP và một tốc độ sạc ổn định.', 7990000, 'realme-9-pro-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(37, 'Realme 8 series', 'Điện thoại Realme 8 được ra mắt nằm trong phân khúc tầm trung, có thiết kế đẹp mắt đặc trưng của Realme, smartphone trang bị hiệu năng bên trong đầy mạnh mẽ và có dung lượng pin tương đối lớn.', 7290000, 'realme-8-silver-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(38, 'Realme 9 4G', 'Realme đã ra mắt rất nhiều sản phẩm thuộc dòng Realme 9, trong đó có mẫu Realme 9 4G sở hữu một thiết kế ấn tượng, camera lên đến 108 MP và màn hình Super AMOLED 90 Hz.', 6690000, 'realme-9-4g-vang-thumb-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(39, 'Realme 9i', 'Realme đang ngày càng cải thiện hơn rất nhiều ở các sản phẩm của họ và sản phẩm gần đây nhất đó là dòng điện thoại Realme 9i. Chiếc điện thoại này được sở hữu con chip Snapdragon 680 kết hợp cùng với các tiện ích khác, hứa hẹn sẽ mang lại cho bạn sự trải nghiệm hiệu năng ổn định, mượt mà.', 5490000, 'realme-9i-den-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(40, 'Realme C25Y', 'Realme C25Y 64GB - là chiếc smartphone được Realme cho ra mắt với một mức giá khá tốt, sở hữu thiết kế hiện đại với 3 camera AI lên đến 50 MP, hiệu suất ổn định cùng thời gian sử dụng lâu dài nhờ viên pin khủng 5000 mAh, được xem là một trong những sản phẩm lý tưởng mà bạn nên sở hữu.', 4690000, 'realme-c25y-64gb-xanh-thumb-600x600.jpeg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(41, 'MacBook Air M1 2020 7-core GPU', 'Laptop Apple MacBook Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.', 28990000, 'macbook-air-m1-2020-gray-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(42, 'MacBook Pro M1 2020', 'Apple Macbook Pro M1 2020 được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, chiếc laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt cho lĩnh vực đồ họa, kỹ thuật.', 39990000, 'macbook-pro-m1-2020-gray-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(43, 'MacBook Pro 14 M1 Max 2021/32-core GPU', 'Sự ra đời của chiếc MacBook Pro 14 M1 Max 2021 như đại diện cho một thế hệ laptop mới, tân tiến và đầy tiềm năng với bộ vi xử lý hiện đại, cùng thiết kế sang trọng, thời thượng, xứng tầm người cộng sự đắc lực trên mọi cuộc hành trình của bạn.', 84400000, 'macbook-pro-14-m1-max-2021-10-core-cpu-32gb-1tb-ssd-32-core-gpu-021221-040129-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(44, 'MacBook Pro 14 M1 Max 2021/24-core GPU', 'Khoác lên mình vẻ ngoài mới lạ so với các dòng Mac trước đó, thiết kế màn hình tai thỏ ấn tượng, bắt mắt cùng bộ hiệu năng đỉnh cao M1 Max mạnh mẽ, MacBook Pro 14 inch M1 Max 2021 xứng tầm là chiếc laptop cao cấp chuyên dụng dành cho dân kỹ thuật - đồ họa, sáng tạo nội dung.', 73400000, 'macbook-pro-14-m1-max-2021-10-core-cpu-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(45, 'MacBook Pro 14 M1 Pro 2021/16-core GPU', 'Khoác lên mình vẻ ngoài mới lạ so với các dòng Mac trước đó, thiết kế màn hình tai thỏ ấn tượng, bắt mắt cùng bộ hiệu năng đỉnh cao M1 Pro mạnh mẽ, MacBook Pro 14 inch M1 Pro 2021 xứng tầm là chiếc laptop cao cấp chuyên dụng dành cho dân kỹ thuật - đồ họa, sáng tạo nội dung.', 68490000, 'macbook-pro-14-inch-m1-pro-2021-10-core-cpu-thumb-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(46, 'Apple MacBook Pro 16 M1 Pro 2021', 'Thể hiện đẳng cấp sang chảnh cùng chiếc MacBook Pro 16 M1 Pro 2021 cực kì sang trọng, cùng hiệu năng mạnh mẽ được nâng cấp với chip M1 Pro cho hiệu suất đột phá và thời lượng pin ấn tượng, đem đến cho bạn trải nghiệm tuyệt vời nhất.', 61490000, 'apple-macbook-pro-16-m1-pro-2021-10-core-cpu-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(47, 'MacBook Pro 14 M1 Pro 2021/16-core GPU', 'Apple MacBook Pro 14 inch M1 Pro 2021 gây ấn tượng mạnh khi mang trên mình vẻ ngoài có nhiều cải tiến mới, độc đáo và cuốn hút mọi ánh nhìn cùng hiệu năng mạnh mẽ, đỉnh cao đến từ con chip M1 Pro hiện đại, đáp ứng tối ưu nhu cầu sử dụng cho giới công nghệ, kỹ thuật cũng như cá nhà sáng tạo nội dung chuyên nghiệp.', 61490000, 'apple-macbook-pro-14-m1-pro-2021-10-core-cpu-1-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(48, 'MacBook Air M1 2020 8-core GPU', 'Apple MacBook Air M1 2020 với vẻ ngoài hiện đại cùng cấu hình mạnh mẽ vượt trội đến từ con chip M1 được sản xuất trên quy trình tân tiến, là người bạn đồng hành lý tưởng cho bất kỳ ai trong cả những công việc văn phòng hay thiết kế đồ họa.', 36490000, 'apple-macbook-air-m1-2020-8-core-gpu-vang-1-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(49, 'Macbook Pro M1 8-core CPU/8GB/8-core GPU', 'Apple Macbook Pro M1 2020 sở hữu thiết kế sang trọng kế thừa từ các thế hệ trước và bên trong là một cấu hình ấn tượng từ con chip M1 lần đầu tiên xuất hiện trên MacBook Pro, hiệu năng CPU của máy tăng đến 2.8 lần, hiệu năng GPU tăng 5 lần.', 34990000, 'macbook-pro-m1-2020-gray-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(50, 'MacBook Air M1 2020 8-core CPU/8GB', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', 28490000, 'macbook-air-m1-2020-gray-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(51, 'Asus Vivobook 15 X1502ZA i5 1240P (EJ120W)', 'Một phiên bản laptop học tập - văn phòng có thể đáp ứng tốt các tác vụ cơ bản hằng ngày chính là chiếc laptop Asus Vivobook 15 X1502ZA i5 (EJ120W) nhờ sở hữu hiệu năng mạnh mẽ đến từ con chip Intel Core i5 1240P cùng phong cách thiết kế đơn giản, thanh lịch.', 17990000, 'asus-vivobook-15-x1502za-i5-ej120w-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(52, 'Asus ZenBook UX425EA i5 1135G7 (KI839W)', 'Với những thông số kỹ thuật ấn tượng cùng phong cách thiết kế của một chiếc laptop mỏng nhẹ - thời trang, laptop Asus ZenBook UX425EA (KI839W) sẽ là một người bạn đồng hành hoàn hảo cùng người dùng trong mọi tác vụ.', 22990000, 'asus-zenbook-ux425ea-i5-1135g7-8gb-512gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(53, 'Asus Gaming ROG Flow Z13 GZ301Z i7 12700H (LD110W)', 'Mình quyết định chọn laptop Asus Gaming ROG Flow Z13 GZ301Z i7 (LD110W) là một trong những siêu phẩm đáng mua trong tầm giá bởi nó là sự kết hợp hoàn hảo giữa chiếc laptop gaming mỏng nhẹ, di động nhất và tablet Windows mạnh mẽ nhất.', 49990000, 'asus-gaming-rog-flow-z13-gz301z-i7-ld110w-160322-120057-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(54, 'Asus ZenBook UX482EA i5 1135G7 (KA397W)', 'Laptop Asus ZenBook UX482EA i5 1135G7 (KA397W) sở hữu thiết kế thời thượng cùng hiệu năng mạnh mẽ, xứng danh bạn đồng hành lý tưởng trên chặng đường sáng tạo của người dùng.', 32990000, 'asus-zenbook-ux482ea-i5-1135g7-8gb-512gbtouch-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(55, 'Asus ZenBook Duo UX482EA i5 1135G7 (KA274T)', 'Asus ZenBook UX482EA i5 (KA274T) mở ra cho bạn một công nghệ hiện đại với 2 màn hình siêu độc đáo, sở hữu sức mạnh từ CPU thế hệ 11 cùng nhiều tính năng ấn tượng, phục vụ tốt cho công việc sáng tạo đồ hoạ.', 31990000, 'asus-zenbook-ux482ea-i5-ka274t-271021-093120-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(56, 'Asus TUF Gaming FA707RC R7 6800H (HX130W)', 'Bạn cần tìm chiếc máy laptop gaming có thiết kế cá tính, hiệu năng mạnh mẽ, laptop Asus TUF Gaming FA707RC (HX130W) là sản phẩm sẽ luôn sẵn sàng cùng bạn chinh phục mọi đấu trường ảo.', 29990000, 'asus-tuf-gaming-fa707rc-r7-hx130w-190322-113808-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(57, 'Asus ZenBook UX325EA i7 1165G7 (KG658W)', 'Chiêm ngưỡng sự đẳng cấp đến từ laptop Asus ZenBook UX325EA i7 (KG658W) với cấu hình vượt trội cùng diện mạo cao cấp, hứa hẹn mang đến những trải nghiệm độc đáo, đáp ứng mọi nhu cầu sử dụng của người dùng.', 29990000, 'asus-zenbook-ux325ea-i7-1165g7-16gb-512gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(58, 'Asus VivoBook Pro 14x OLED M7400QC R5 5600H (KM013W)', 'Nếu bạn đang tìm kiếm một chiếc laptop có thể đáp ứng tối đa mọi nhu cầu từ học tập, văn phòng cơ bản đến thiết kế đồ họa - kỹ thuật chuyên sâu, Asus VivoBook Pro 14x OLED M7400QC (KM013W) sẽ là một sự lựa chọn sáng giá khi sở hữu cấu hình vượt trội cùng phong cách thiết kế đẳng cấp trên từng đường nét máy.', 28990000, 'asus-vivobook-pro-14x-oled-m7400qc-r5-m01810-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(59, 'Asus ZenBook UX425E i7 1165G7 (KI843W)', 'Laptop Asus ZenBook UX425E i7 (KI843W) là phiên bản laptop cao cấp - sang trọng kèm nhiều tính năng thông minh được trang bị, công nghệ màn hình ấn tượng, hiệu năng vượt trội là sản phẩm hoàn hảo dành cho sinh viên, nhân viên văn phòng hay doanh nhân.', 28990000, 'asus-zenbook-ux425e-i7-1165g7-16gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(60, 'Asus VivoBook Pro 15 OLED K3500P i5 11300H (L1386W)', 'Laptop Asus VivoBook Pro 15 OLED K3500P i5 (L1386W) chinh phục mọi đối tượng người dùng với lối thiết kế đơn giản, thanh lịch cùng sức mạnh vượt trội đến từ card đồ họa rời NVIDIA GeForce RTX3050 4 GB, đảm bảo cho mọi tác vụ từ cơ bản đến nâng cao của bạn được vận hành mượt mà.', 28590000, 'asus-vivobook-pro-15-oled-k3500p-i5-l1386w-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(61, 'HP Gaming VICTUS 16 e0170AX R7 5800H (4R0U7PA)', 'Dòng Gaming Victus là một phiên bản lột xác hoàn toàn từ thiết kế đến hiệu năng của nhà HP. Chỉ với một mức giá tầm trung là bạn có thể sở hữu ngay chiếc laptop HP Gaming VICTUS 16 e0170AX R7 (4R0U7PA) chinh phục mọi tác vụ.', 25990000, 'hp-gaming-victus-16-e0170ax-r7-4r0u7pa-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(62, 'HP 245 G8 R3 5300U (63T27PA)', 'Laptop HP 245 R3 5300U (63T27PA) là chiếc máy đáp ứng nhu cầu học tập - văn phòng cho học sinh, sinh viên với hiệu năng ổn định của dòng chip AMD và card tích hợp trên máy chạy tốt các tác vụ cơ bản hằng ngày của người dùng.', 11890000, 'hp-245-r3-5300u-4gb-256gb-win11-63t27pa-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(63, 'HP EliteBook X360 1040 G8 i7 1165G7 (3G1H4PA)', 'Đẳng cấp và ấn tượng hơn bao giờ hết cùng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) với thiết kế sang trọng, bản lề gập xoay 360 độ cùng khả năng vận hành và xử lý mọi tác vụ mạnh mẽ mang đến những trải nghiệm trọn vẹn, khó quên cho người dùng.', 46090000, 'hp-elitebook-x360-1040-g8-i7-3g1h4pa-18-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(64, 'HP ZBook Firefly 14 G8 i5 1135G7 (275V5AV)', 'HP ZBook Firefly 14 G8 (275V5AV) chinh phục mọi đối tượng khách hàng với phong cách thiết kế thời thượng, gọn nhẹ cùng những tính năng ưu việt mà nó mang lại, đáp ứng tối đa mọi nhu cầu cần thiết từ học tập - văn phòng cơ bản đến thiết kế đồ họa chuyên sâu.', 38090000, 'hp-zbook-firefly-14-g8-i5-275v5av-141221-042207-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(65, 'HP Gaming VICTUS 16 d0198TX i7 11800H (4R0U0PA)', 'Laptop HP Gaming VICTUS 16 d0198TX (4R0U0PA) là chiếc laptop gaming mạnh mẽ với vẻ ngoài cá tính, sẵn sàng tác chiến cùng bạn trên mọi chiến trường ảo.', 30490000, 'hp-gaming-victus-16-d0198tx-i7-4r0u0pa-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(66, 'Lenovo Ideapad 5 15ITL05 i5 1135G7 (82FG01H7VN)', 'Lenovo Ideapad 5 15ITL05 i5 1135G7 (82FG01H7VN) là phiên bản laptop thế hệ mới với kiểu dáng hiện đại, cùng cấu hình ổn định, sẵn sàng cùng bạn hoàn thành mọi tác vụ thông thường.', 16990000, 'lenovo-ideapad-5-15itl05-i5-82fg01h7vn-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(67, 'Lenovo Ideapad 3 15ITL6 i5 1135G7 (82H801P9VN)', 'Laptop Lenovo Ideapad 3 15ITL6 i5 (82H801P9VN) sở hữu thiết kế mỏng nhẹ cùng hiệu năng mạnh mẽ đến từ CPU Intel thế hệ thứ 11 là người bạn đồng hành lý tưởng cho học sinh, sinh viên hay nhân viên văn phòng.', 16490000, 'lenovo-ideapad-3-15itl6-i5-82h801p9vn-thumb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(68, 'lenovo-ideapad-3-15itl6-i5-82h801p9vn-thumb-600x600.jpg', 'Phong cách thiết kế độc đáo, trẻ trung cùng hiệu năng mạnh mẽ vượt trội của card màn hình NVIDIA RTX hội tụ trong chiếc laptop Lenovo Gaming Legion 5 15ITH6 i7 (82JK00FNVN) hứa hẹn sẽ cân mọi tựa game đình đám cũng như sẵn sàng hỗ trợ bạn xử lý các tác vụ nặng.', 39990000, 'lenovo-gaming-legion-5-15ith6-i7-82jk00fnvn-180322-100552-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(69, 'Lenovo ThinkBook 14p G2 ACH R5 5600H (20YN001HVN)', 'Laptop Lenovo ThinkBook 14p G2 ACH R5 (20YN001HVN) sẵn sàng đáp ứng mọi nhu cầu văn phòng, đồ hoạ cơ bản khi sở hữu cấu hình ổn định từ con chip AMD, phong cách thiết kế sang trong, thời thượng cùng màn hình 2.2 K chân thật sắc nét, phù hợp với học sinh, sinh viên và nhân viên văn phòng.', 23990000, 'thinkbook-14p-g2-ach-r5-20yn001hvn-020322-104832-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(70, 'Lenovo Yoga Duet 7 13ITL6 i7 1165G7 (82MA003UVN)', 'Bùng nổ với siêu phẩm đến từ nhà Lenovo là laptop Lenovo Yoga Duet 7 13ITL6 i7 (82MA003UVN) khi sở hữu khối lượng cực kỳ mỏng nhẹ chỉ vỏn vẹn 0.799 kg cùng khả năng linh hoạt 2 trong 1 giữa máy tính bảng và máy tính xách tay, hứa hẹn mang đến những trải nghiệm mới mẻ đến hoàn hảo.', 35990000, 'lenovo-yoga-duet-7-13itl6-i7-82ma003uvn-thumb-1-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(71, 'Acer TravelMate B3 TMB311 31 C2HB N4020 (NX.VNFSV.006)', 'Acer TravelMate B3 TMB311 31 C2HB (NX.VNFSV.006) nhắm đến phân khúc laptop học tập - văn phòng, phục vụ cho các nhu cầu cơ bản trên laptop, với kích thước nhỏ gọn và hiệu năng đủ dùng, là sự lựa chọn tốt cho học sinh, sinh viên.', 4990000, 'acer-travelmate-b3-tmb311-31-c2hb-n4020-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(72, 'Acer TravelMate B3 TMB311 31 P49D N5030 (NX.VNFSV.005)', 'Acer TravelMate B3 TMB311 31 P49D (NX.VNFSV.005) là mẫu laptop được thiết kế dành cho các em học sinh thuộc phân khúc giá thấp với vẻ ngoài mang phong cách tối giản, bền bỉ cùng hiệu năng ổn định, phục vụ tốt cho nhu cầu học tập.', 5490000, 'acer-travelmate-b3-tmb311-31-p49d-n5030-nxvnfsv005-081221-100723-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(73, 'Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H', 'Phá cách với diện mạo mạnh mẽ đến từ laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) mang đến cho người dùng hiệu năng ổn định, hỗ trợ bạn trong mọi tác vụ hằng ngày hay chiến những trận game cực căng một cách mượt mà.', 19190000, 'acer-nitro-5-gaming-an515-45-r6ev-r5-5600h-8gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(74, 'Acer Nitro 5 Gaming AN515 57 54MV i5 11400H', 'Acer Nitro 5 Gaming AN515 57 54MV i5 (NH.QENSV.003) mang trên mình sức mạnh từ con chip Intel thế hệ 11, card rời cho khả năng tối ưu hoá mọi tác vụ từ đồ hoạ đến game, hứa hẹn sẽ mang đến những trải nghiệm tuyệt vời khó quên cho người dùng.', 21190000, 'acer-nitro-5-gaming-an515-57-54mv-i5-11400h-8gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(75, 'Acer Nitro 5 AN515 45 R9SC R7 5800H (NH.QBRSV.001)', 'Laptop Acer Nitro 5 AN515 45 R9SC R7 (NH.QBRSV.001) gây ấn tượng mạnh nhờ vẻ ngoài độc đáo, cá tính cùng bộ vi xử lý mạnh mẽ nhà AMD và card đồ hoạ rời dòng RTX, sẽ là người bạn đồng hành hoàn hảo của các game thủ.', 33990000, 'acer-nitro-5-an515-45-r9sc-r7-5800h-8gb-512gb-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(76, 'Dell Gaming G15 5515 R5 5600H (P105F004CGR)', 'Laptop Dell Gaming G15 5515 R5 5600H (P105F004CGR) sở hữu thiết kế tinh tế với sắc xám thời thượng cùng cấu hình được thiết lập đầy mạnh mẽ, luôn trong trạng thái sẵn sàng cùng bạn giải quyết mọi việc.', 24990000, 'dell-gaming-g15-5515-r5-p105f004cgr-291121-115616-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(77, 'Dell Gaming G15 5511 i7 11800H (P105F006BGR)', 'Mang đến cho người dùng một thiết kế thời thượng cùng hiệu năng vượt trội, laptop Dell Gaming G15 5511 i7 11800H (P105F006BGR) xứng danh là người cộng sự lý tưởng cho mọi nhu cầu công việc như chiến game, thiết kế,... giống một chiếc laptop hoạ - kỹ thuật thực thụ.', 34990000, 'dell-gaming-g15-5511-i7-p105f006bgr-140222-091855-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(78, 'Dell Gaming Alienware m15 R6 i7 11800H (P109F001DBL)', 'Nhắc đến dòng laptop gaming, nhà Dell cũng đã sở hữu cho mình một siêu phẩm không thể bỏ qua là chiếc laptop Dell Alienware m15 R6 i7 (P109F001DBL) với card đồ hoạ RTX 3060 6 GB mạnh mẽ sẵn sàng cùng bạn chinh phục mọi thử thách chiến game.', 59990000, 'dell-gaming-alienware-m15-r6-i7-p109f001dbl-020322-112012-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(79, 'Dell Gaming G15 5515 R5 5600H (P105F004DGR)', 'Bộ hiệu năng gây ấn tượng đến từ con chip AMD mạnh mẽ cùng thiết kế cá tính, nổi bật, Dell Gaming G15 5515 R5 (P105F004DGR) sẽ đáp ứng tối ưu mọi nhu cầu từ các tác vụ văn phòng cơ bản đến những ứng dụng đồ họa, chơi game giải trí chuyên nghiệp.', 27990000, 'dell-gaming-g15-5515-r5-p105f004dgr-291121-114930-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00'),
(80, 'Dell Vostro 5515 R3 5300U (70270649)', 'Laptop Dell Vostro 5515 R3 (70270649) là sản phẩm trong phân khúc laptop học tập - văn phòng, giải quyết tốt mọi tác vụ thường nhật của bạn với một mức giá phải chăng, là sản phẩm mà bạn nên sở hữu.', 14890000, 'dell-vostro-5515-r3-5300u-8gb-256gb-office-600x600.jpg', 0, '2022-06-06 13:27:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `product_user`
--

DROP TABLE IF EXISTS `product_user`;
CREATE TABLE IF NOT EXISTS `product_user` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`, `user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE IF NOT EXISTS `product_type` (
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`, `type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_id`, `type_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`product_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 7),
(42, 7),
(43, 7),
(44, 7),
(45, 7),
(46, 7),
(47, 7),
(48, 7),
(49, 7),
(50, 7),
(51, 8),
(52, 8),
(53, 8),
(54, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 9),
(62, 9),
(63, 9),
(64, 9),
(65, 9),
(66, 10),
(67, 10),
(68, 10),
(69, 10),
(70, 10),
(71, 11),
(72, 11),
(73, 11),
(74, 11),
(75, 11),
(76, 12),
(77, 12),
(78, 12),
(79, 12),
(80, 12);

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

DROP TABLE IF EXISTS `category_type`;
CREATE TABLE IF NOT EXISTS `category_type` (
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`category_id`,`type_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
