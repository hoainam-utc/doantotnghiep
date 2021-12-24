-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2021 at 01:48 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doantotnghiep_laravel_banloa`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` bigint(20) unsigned NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Product', 'Cập nhật product', 3, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{"old":{"id":3,"pro_name":"Marshall EMBERTON","pro_slug":"marshall-emberton","pro_price":"3500000","pro_price_entry":0,"pro_category_id":"4","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__marshall-emberton.png","pro_view":0,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"20","pro_import_goods":0,"pro_description":"K\\u00edch th\\u01b0\\u1edbc: 68 x 160 x 76mmTr\\u1ecdng l\\u01b0\\u1ee3ng: 0.7kgD\\u1ea3i t\\u1ea7n \\u0111\\u00e1p \\u1ee9ng: 60Hz - 20kHzT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 20WS\\u1eed d\\u1ee5ng 2 loa to\\u00e0n d\\u1ea3i k\\u00edch th\\u01b0\\u1edbc 5cmTh\\u1eddi l\\u01b0\\u1ee3ng pin: 20 gi\\u1edd, h\\u1ed7 tr\\u1ee3 s\\u1ea1c nhanhBluetooth: v5.0Ch\\u1ed1ng n\\u01b0\\u1edbc: IPX7","pro_content":"<h2>Loa MARSHALL EMBERTON<\\/h2>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>M\\u1eabu loa bluetooth nh\\u1ecf nh\\u1ea5t c\\u1ee7a Marshall v\\u1edbi nhi\\u1ec1u c&ocirc;ng ngh\\u1ec7 m\\u1edbi gi&uacute;p b\\u1ea1n tr\\u1ea3i nghi\\u1ec7m &acirc;m thanh v\\u01b0\\u1ee3t tr\\u1ed9i v&agrave; t&iacute;nh di \\u0111\\u1ed9ng c\\u1ef1c cao.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Emberton\\/marshall-emberton-4.png\\" style=\\"height:518px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf mang t&iacute;nh bi\\u1ec3u t\\u01b0\\u1ee3ng c\\u1ee7a Marshall mang \\u0111\\u1ebfn &acirc;m thanh tinh t\\u1ebf khi v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c v\\u1ebb c\\u1ed5 \\u0111i\\u1ec3n v\\u1ed1n c&oacute; c\\u1ee7a h&atilde;ng &acirc;m thanh \\u0111\\u1ebfn t\\u1eeb Anh Qu\\u1ed1c.<\\/p>\\r\\n\\r\\n<p>Emberton s\\u1eed d\\u1ee5ng True Stereophonic. m\\u1ed9t d\\u1ea1ng &acirc;m thanh \\u0111a h\\u01b0\\u1edbng \\u0111\\u1ed9c \\u0111&aacute;o t\\u1eeb Marshall. Tr\\u1ea3i nghi\\u1ec7m &acirc;m thanh 360 \\u0111\\u1ed9 cho d&ugrave; b\\u1ea1n ng\\u1ed3i \\u1edf b\\u1ea5t k&igrave; v\\u1ecb tr&iacute; n&agrave;o.<\\/p>\\r\\n\\r\\n<p>Th\\u1eddi l\\u01b0\\u1ee3ng pin c\\u1ee7a Marshall ch\\u01b0a bao gi\\u1edd l&agrave;m ng\\u01b0\\u1eddi d&ugrave;ng th\\u1ea5t v\\u1ecdng v&agrave; Emberton c\\u0169ng th\\u1ebf v\\u1edbi 20 gi\\u1edd nghe nh\\u1ea1c li&ecirc;n t\\u1ee5c. K&iacute;ch th\\u01b0\\u1edbc nh\\u1ecf g\\u1ecdn v&agrave; ch\\u1eafc ch\\u1eafn gi&uacute;p b\\u1ea1n c&oacute; th\\u1ec3 d\\u1ec5 d&agrave;ng mang theo b&ecirc;n m&igrave;nh m\\u1ecdi l&uacute;c m\\u1ecdi n\\u01a1i. Ngo&agrave;i ra, loa c\\u0169ng h\\u1ed7 tr\\u1ee3 s\\u1ea1c nhanh, ch\\u1ec9 v\\u1edbi 20p s\\u1ea1c b\\u1ea1n \\u0111&atilde; c&oacute; ngay 5h nghe nh\\u1ea1c li&ecirc;n t\\u1ee5c.<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf c\\u1ee9ng c&aacute;p v&agrave; c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc ipx 7 n&ecirc;n b\\u1ea1n c&oacute; th\\u1ec3 ch\\u01a1i nh\\u1ea1c \\u1edf ngo&agrave;i b&atilde;i bi\\u1ec3n, h\\u1ed3 b\\u01a1i m\\u1ed9t c&aacute;ch tho\\u1ea3i m&aacute;i m&agrave; loa kh&ocirc;ng \\u1ea3nh h\\u01b0\\u1edfng g&igrave;.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Emberton\\/marshall-emberton-6.jpg\\" style=\\"height:424px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>Ki\\u1ec3m so&aacute;t d\\u1ec5 d&agrave;ng v&agrave; \\u0111a n\\u0103ng. N&uacute;m \\u0111i\\u1ec1u khi\\u1ec3n \\u0111a h\\u01b0\\u1edbng gi&uacute;p b\\u1ea1n c&oacute; th\\u1ec3 tua b&agrave;i, t\\u0103ng gi\\u1ea3m &acirc;m l\\u01b0\\u1ee3ng, t\\u1ea1m d\\u1eebng c\\u0169ng nh\\u01b0 b\\u1eadt t\\u1eaft loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Emberton\\/marshall-emberton-5.png\\" style=\\"height:517px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>Chu\\u1ea9n k\\u1ebft n\\u1ed1i Bluetooth 5.0 \\u0111\\u1ed9 ph&acirc;n gi\\u1ea3i cao, k\\u1ebft n\\u1ed1i nhanh ch&oacute;ng v&agrave; \\u0111em l\\u1ea1i ch\\u1ea5t l\\u01b0\\u1ee3ng &acirc;m thanh kh&ocirc;ng d&acirc;y c\\u1ef1c t\\u1ed1t.<\\/p>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 01:48:48","pro_number":20,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 01:50:25"},"new":{"id":3,"pro_name":"Marshall EMBERTON","pro_slug":"marshall-emberton","pro_price":"3500000","pro_price_entry":0,"pro_category_id":"4","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__marshall-emberton.png","pro_view":0,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"20","pro_import_goods":0,"pro_description":"K\\u00edch th\\u01b0\\u1edbc: 68 x 160 x 76mmTr\\u1ecdng l\\u01b0\\u1ee3ng: 0.7kgD\\u1ea3i t\\u1ea7n \\u0111\\u00e1p \\u1ee9ng: 60Hz - 20kHzT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 20WS\\u1eed d\\u1ee5ng 2 loa to\\u00e0n d\\u1ea3i k\\u00edch th\\u01b0\\u1edbc 5cmTh\\u1eddi l\\u01b0\\u1ee3ng pin: 20 gi\\u1edd, h\\u1ed7 tr\\u1ee3 s\\u1ea1c nhanhBluetooth: v5.0Ch\\u1ed1ng n\\u01b0\\u1edbc: IPX7","pro_content":"<h2>Loa MARSHALL EMBERTON<\\/h2>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>M\\u1eabu loa bluetooth nh\\u1ecf nh\\u1ea5t c\\u1ee7a Marshall v\\u1edbi nhi\\u1ec1u c&ocirc;ng ngh\\u1ec7 m\\u1edbi gi&uacute;p b\\u1ea1n tr\\u1ea3i nghi\\u1ec7m &acirc;m thanh v\\u01b0\\u1ee3t tr\\u1ed9i v&agrave; t&iacute;nh di \\u0111\\u1ed9ng c\\u1ef1c cao.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Emberton\\/marshall-emberton-4.png\\" style=\\"height:518px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf mang t&iacute;nh bi\\u1ec3u t\\u01b0\\u1ee3ng c\\u1ee7a Marshall mang \\u0111\\u1ebfn &acirc;m thanh tinh t\\u1ebf khi v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c v\\u1ebb c\\u1ed5 \\u0111i\\u1ec3n v\\u1ed1n c&oacute; c\\u1ee7a h&atilde;ng &acirc;m thanh \\u0111\\u1ebfn t\\u1eeb Anh Qu\\u1ed1c.<\\/p>\\r\\n\\r\\n<p>Emberton s\\u1eed d\\u1ee5ng True Stereophonic. m\\u1ed9t d\\u1ea1ng &acirc;m thanh \\u0111a h\\u01b0\\u1edbng \\u0111\\u1ed9c \\u0111&aacute;o t\\u1eeb Marshall. Tr\\u1ea3i nghi\\u1ec7m &acirc;m thanh 360 \\u0111\\u1ed9 cho d&ugrave; b\\u1ea1n ng\\u1ed3i \\u1edf b\\u1ea5t k&igrave; v\\u1ecb tr&iacute; n&agrave;o.<\\/p>\\r\\n\\r\\n<p>Th\\u1eddi l\\u01b0\\u1ee3ng pin c\\u1ee7a Marshall ch\\u01b0a bao gi\\u1edd l&agrave;m ng\\u01b0\\u1eddi d&ugrave;ng th\\u1ea5t v\\u1ecdng v&agrave; Emberton c\\u0169ng th\\u1ebf v\\u1edbi 20 gi\\u1edd nghe nh\\u1ea1c li&ecirc;n t\\u1ee5c. K&iacute;ch th\\u01b0\\u1edbc nh\\u1ecf g\\u1ecdn v&agrave; ch\\u1eafc ch\\u1eafn gi&uacute;p b\\u1ea1n c&oacute; th\\u1ec3 d\\u1ec5 d&agrave;ng mang theo b&ecirc;n m&igrave;nh m\\u1ecdi l&uacute;c m\\u1ecdi n\\u01a1i. Ngo&agrave;i ra, loa c\\u0169ng h\\u1ed7 tr\\u1ee3 s\\u1ea1c nhanh, ch\\u1ec9 v\\u1edbi 20p s\\u1ea1c b\\u1ea1n \\u0111&atilde; c&oacute; ngay 5h nghe nh\\u1ea1c li&ecirc;n t\\u1ee5c.<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf c\\u1ee9ng c&aacute;p v&agrave; c&oacute; kh\\u1ea3 n\\u0103ng ch\\u1ed1ng n\\u01b0\\u1edbc ipx 7 n&ecirc;n b\\u1ea1n c&oacute; th\\u1ec3 ch\\u01a1i nh\\u1ea1c \\u1edf ngo&agrave;i b&atilde;i bi\\u1ec3n, h\\u1ed3 b\\u01a1i m\\u1ed9t c&aacute;ch tho\\u1ea3i m&aacute;i m&agrave; loa kh&ocirc;ng \\u1ea3nh h\\u01b0\\u1edfng g&igrave;.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Emberton\\/marshall-emberton-6.jpg\\" style=\\"height:424px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>Ki\\u1ec3m so&aacute;t d\\u1ec5 d&agrave;ng v&agrave; \\u0111a n\\u0103ng. N&uacute;m \\u0111i\\u1ec1u khi\\u1ec3n \\u0111a h\\u01b0\\u1edbng gi&uacute;p b\\u1ea1n c&oacute; th\\u1ec3 tua b&agrave;i, t\\u0103ng gi\\u1ea3m &acirc;m l\\u01b0\\u1ee3ng, t\\u1ea1m d\\u1eebng c\\u0169ng nh\\u01b0 b\\u1eadt t\\u1eaft loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Emberton\\/marshall-emberton-5.png\\" style=\\"height:517px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>Chu\\u1ea9n k\\u1ebft n\\u1ed1i Bluetooth 5.0 \\u0111\\u1ed9 ph&acirc;n gi\\u1ea3i cao, k\\u1ebft n\\u1ed1i nhanh ch&oacute;ng v&agrave; \\u0111em l\\u1ea1i ch\\u1ea5t l\\u01b0\\u1ee3ng &acirc;m thanh kh&ocirc;ng d&acirc;y c\\u1ef1c t\\u1ed1t.<\\/p>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 01:48:48","pro_number":20,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 01:50:25"}}', '2021-11-02 18:50:25', '2021-11-02 18:50:25'),
(2, 'Product', 'Cập nhật product', 6, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{"old":{"id":6,"pro_name":"Marshall Stockwell II","pro_slug":"marshall-stockwell-ii","pro_price":"4500000","pro_price_entry":0,"pro_category_id":"4","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__stockwell-ii.jpeg","pro_view":0,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"20","pro_import_goods":0,"pro_description":"Marshall Stockwell 2Stockwell \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ch\\u01a1i \\u00e2m thanh bi\\u1ebft \\u0111\\u1ebfn l\\u00e0 m\\u1ed9t t\\u00ean m\\u00e3 loa di \\u0111\\u1ed9ng c\\u00f3 pin s\\u1ea1c, k\\u1ebft n\\u1ed1i kh\\u00f4ng d\\u00e2y, v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00f3 thi\\u1ebft k\\u1ebf c\\u1ef1c k\\u00ec \\u0111\\u1eb9p m\\u1eaft, \\u0111\\u1ed9c quy\\u1ec1n t\\u1eeb th\\u01b0\\u01a1ng hi\\u1ec7u Marshall c\\u1ee7a Anh Qu\\u1ed1c.","pro_content":"<h2>Marshall&nbsp;Stockwell&nbsp;2<\\/h2>\\r\\n\\r\\n<p><strong>Stockwell<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ch\\u01a1i &acirc;m thanh bi\\u1ebft \\u0111\\u1ebfn l&agrave; m\\u1ed9t t&ecirc;n m&atilde; loa di \\u0111\\u1ed9ng c&oacute; pin s\\u1ea1c, k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t l&agrave; c&oacute; thi\\u1ebft k\\u1ebf c\\u1ef1c k&igrave; \\u0111\\u1eb9p m\\u1eaft, \\u0111\\u1ed9c quy\\u1ec1n t\\u1eeb th\\u01b0\\u01a1ng hi\\u1ec7u Marshall c\\u1ee7a Anh Qu\\u1ed1c.<\\/p>\\r\\n\\r\\n<p>N\\u1ed1i ti\\u1ebfp s\\u1ef1 th&agrave;nh c&ocirc;ng c\\u1ee7a phi&ecirc;n b\\u1ea3n \\u0111\\u1eddi \\u0111\\u1ea7u, th&igrave; n\\u1eeda \\u0111\\u1ea7u 2019 Marshall \\u0111&atilde; tr&igrave;nh l&agrave;ng m\\u1eabu loa m\\u1edbi v\\u1edbi t&ecirc;n m&atilde;&nbsp;<strong>Stockwell II<\\/strong>, phi&ecirc;n b\\u1ea3n m\\u1edbi k\\u1ebf th\\u1eeba nh\\u1eefng \\u0111i\\u1ec3m m\\u1ea1nh v&agrave; th&agrave;nh c&ocirc;ng c\\u1ee7a phi&ecirc;n b\\u1ea3n c\\u0169, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t \\u0111\\u01b0\\u1ee3c n&acirc;ng c\\u1ea5p r\\u1ea5t nhi\\u1ec1u v\\u1ec1 c\\u1ea5u h&igrave;nh b&ecirc;n trong, c\\u0169ng nh\\u01b0 thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i<\\/p>\\r\\n\\r\\n<p><img alt=\\"stockwell 2 marshall\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/8.jpg\\" style=\\"height:506px; width:900px\\" \\/><\\/p>\\r\\n\\r\\n<p>Loa \\u0111\\u01b0\\u1ee3c t&iacute;ch h\\u1ee3p chip x\\u1eed l&yacute; &acirc;m thanh cao c\\u1ea5p h\\u01a1n, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t l&agrave; chip Bluetooth 5.0 h\\u1ed7 tr\\u1ee3 c&ocirc;ng ngh\\u1ec7 atpX, truy\\u1ec1n nh\\u1ea1c v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Th\\u1eddi l\\u01b0\\u1ee3ng pin c\\u0169ng \\u0111\\u01b0\\u1ee3c c\\u1ea3i thi\\u1ec7n l&ecirc;n t\\u1edbi tr&ecirc;n 20 gi\\u1edd li&ecirc;n t\\u1ee5c, ch\\u1ec9&nbsp;v\\u1edbi&nbsp;2,5 ti\\u1ebfng \\u0111\\u1ec3 s\\u1ea1c \\u0111\\u1ea7y.<\\/p>\\r\\n\\r\\n<p>C&ocirc;ng ngh\\u1ec7 ch\\u1ed1ng n\\u01b0\\u1edbc IPX4, cho nh\\u01b0ng cu\\u1ed9c d&atilde; ngo\\u1ea1i nghe nh\\u1ea1c ngo&agrave;i tr\\u1eddi kh&ocirc;ng lo m\\u01b0a gi&oacute;.<\\/p>\\r\\n\\r\\n<p>&Ecirc;-C\\u0103ng c\\u1ee7a loa v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c n&eacute;t \\u0111\\u1eb9p truy\\u1ec1n th\\u1ed1ng, nh\\u01b0ng \\u0111&atilde; thay th\\u1ebf b\\u1eb1ng &Ecirc;-c\\u0103ng l\\u01b0\\u1edbi th&eacute;p tr&ocirc;ng c\\u1ee9ng c&aacute;p v&agrave; b\\u1ec1n b\\u1ec9 h\\u01a1n nhi\\u1ec1u so v\\u1edbi&nbsp;<strong>Stockwell 1<\\/strong>.&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/2.jpg\\" style=\\"height:354px; width:492px\\" \\/><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/4.jpg\\" style=\\"height:354px; width:531px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c n&uacute;t v\\u1eb7n tinh ch\\u1ec9nh &acirc;m thanh Bass, Treble v\\u1eabn gi\\u1eef thi\\u1ebft k\\u1ebf truy\\u1ec1n th\\u1ed1ng, nh\\u01b0ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i m&agrave;u s\\u1eafc cho ph&ugrave; h\\u1ee3p v\\u1edbi chi\\u1ebfc loa tr&ocirc;ng kh\\u1ecfe kho\\u1eafn v&agrave; th\\u1eddi trang.<\\/p>\\r\\n\\r\\n<p>Loa v\\u1eabn \\u0111\\u01b0\\u1ee3c b\\u1ecdc da cao c\\u1ea5p, v&agrave; c&oacute; quai da x&aacute;ch ti\\u1ec7n l\\u1ee3i. Marshall \\u0111&atilde; n&acirc;ng c\\u1ea5p c\\u1ee7 loa b&ecirc;n trong v&agrave; &acirc;m ly Class D c&ocirc;ng su\\u1ea5t ~15W.<\\/p>\\r\\n\\r\\n<p><img alt=\\"stockwell 2 marshall 2019\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/3.jpg\\" style=\\"height:790px; width:900px\\" \\/><\\/p>\\r\\n\\r\\n<p>Phi&ecirc;n b\\u1ea3n n&agrave;y th\\u1ef1c s\\u1ef1 l&agrave; m\\u1ed9t b\\u01b0\\u1edbc ti\\u1ebfn \\u0111&aacute;ng gi&aacute; cho nh\\u1eefng t&iacute;n \\u0111\\u1ed3 c\\u1ee7a Marshall, v\\u1edbi 1 chi\\u1ebfc loa nh\\u1ecf b&eacute; nh\\u01b0ng l\\u1ea1i mang trong m&igrave;nh nh\\u1eefng c&ocirc;ng ngh\\u1ec7 m\\u1edbi, c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; n&uacute;t ch\\u1ec9nh &acirc;m ti\\u1ec7n l\\u1ee3i m&agrave; &iacute;t loa Bluetooth di \\u0111\\u1ed9ng c&oacute;, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t kh&ocirc;ng th\\u1ec3 kh&ocirc;ng n&oacute;i \\u0111\\u1ebfn l&agrave; &acirc;m thanh s\\u1ea1ch, chi ti\\u1ebft c&oacute; th\\u1ec3 \\u0111&aacute;p \\u1ee9ng nghe nh\\u1ea1c \\u1edf nhi\\u1ec1u th\\u1ec3 lo\\u1ea1i kh&aacute;c nhau.<\\/p>\\r\\n\\r\\n<p><img alt=\\"loa stockwell 2\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/6.jpg\\" style=\\"height:865px; width:800px\\" \\/><\\/p>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:16:26","pro_number":20,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 02:17:27"},"new":{"id":6,"pro_name":"Marshall Stockwell II","pro_slug":"marshall-stockwell-ii","pro_price":"4500000","pro_price_entry":0,"pro_category_id":"4","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__stockwell-ii.jpeg","pro_view":0,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"20","pro_import_goods":0,"pro_description":"Marshall Stockwell 2Stockwell \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ch\\u01a1i \\u00e2m thanh bi\\u1ebft \\u0111\\u1ebfn l\\u00e0 m\\u1ed9t t\\u00ean m\\u00e3 loa di \\u0111\\u1ed9ng c\\u00f3 pin s\\u1ea1c, k\\u1ebft n\\u1ed1i kh\\u00f4ng d\\u00e2y, v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00f3 thi\\u1ebft k\\u1ebf c\\u1ef1c k\\u00ec \\u0111\\u1eb9p m\\u1eaft, \\u0111\\u1ed9c quy\\u1ec1n t\\u1eeb th\\u01b0\\u01a1ng hi\\u1ec7u Marshall c\\u1ee7a Anh Qu\\u1ed1c.","pro_content":"<h2>Marshall&nbsp;Stockwell&nbsp;2<\\/h2>\\r\\n\\r\\n<p><strong>Stockwell<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi ch\\u01a1i &acirc;m thanh bi\\u1ebft \\u0111\\u1ebfn l&agrave; m\\u1ed9t t&ecirc;n m&atilde; loa di \\u0111\\u1ed9ng c&oacute; pin s\\u1ea1c, k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t l&agrave; c&oacute; thi\\u1ebft k\\u1ebf c\\u1ef1c k&igrave; \\u0111\\u1eb9p m\\u1eaft, \\u0111\\u1ed9c quy\\u1ec1n t\\u1eeb th\\u01b0\\u01a1ng hi\\u1ec7u Marshall c\\u1ee7a Anh Qu\\u1ed1c.<\\/p>\\r\\n\\r\\n<p>N\\u1ed1i ti\\u1ebfp s\\u1ef1 th&agrave;nh c&ocirc;ng c\\u1ee7a phi&ecirc;n b\\u1ea3n \\u0111\\u1eddi \\u0111\\u1ea7u, th&igrave; n\\u1eeda \\u0111\\u1ea7u 2019 Marshall \\u0111&atilde; tr&igrave;nh l&agrave;ng m\\u1eabu loa m\\u1edbi v\\u1edbi t&ecirc;n m&atilde;&nbsp;<strong>Stockwell II<\\/strong>, phi&ecirc;n b\\u1ea3n m\\u1edbi k\\u1ebf th\\u1eeba nh\\u1eefng \\u0111i\\u1ec3m m\\u1ea1nh v&agrave; th&agrave;nh c&ocirc;ng c\\u1ee7a phi&ecirc;n b\\u1ea3n c\\u0169, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t \\u0111\\u01b0\\u1ee3c n&acirc;ng c\\u1ea5p r\\u1ea5t nhi\\u1ec1u v\\u1ec1 c\\u1ea5u h&igrave;nh b&ecirc;n trong, c\\u0169ng nh\\u01b0 thi\\u1ebft k\\u1ebf b&ecirc;n ngo&agrave;i<\\/p>\\r\\n\\r\\n<p><img alt=\\"stockwell 2 marshall\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/8.jpg\\" style=\\"height:506px; width:900px\\" \\/><\\/p>\\r\\n\\r\\n<p>Loa \\u0111\\u01b0\\u1ee3c t&iacute;ch h\\u1ee3p chip x\\u1eed l&yacute; &acirc;m thanh cao c\\u1ea5p h\\u01a1n, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t l&agrave; chip Bluetooth 5.0 h\\u1ed7 tr\\u1ee3 c&ocirc;ng ngh\\u1ec7 atpX, truy\\u1ec1n nh\\u1ea1c v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng cao nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>Th\\u1eddi l\\u01b0\\u1ee3ng pin c\\u0169ng \\u0111\\u01b0\\u1ee3c c\\u1ea3i thi\\u1ec7n l&ecirc;n t\\u1edbi tr&ecirc;n 20 gi\\u1edd li&ecirc;n t\\u1ee5c, ch\\u1ec9&nbsp;v\\u1edbi&nbsp;2,5 ti\\u1ebfng \\u0111\\u1ec3 s\\u1ea1c \\u0111\\u1ea7y.<\\/p>\\r\\n\\r\\n<p>C&ocirc;ng ngh\\u1ec7 ch\\u1ed1ng n\\u01b0\\u1edbc IPX4, cho nh\\u01b0ng cu\\u1ed9c d&atilde; ngo\\u1ea1i nghe nh\\u1ea1c ngo&agrave;i tr\\u1eddi kh&ocirc;ng lo m\\u01b0a gi&oacute;.<\\/p>\\r\\n\\r\\n<p>&Ecirc;-C\\u0103ng c\\u1ee7a loa v\\u1eabn gi\\u1eef \\u0111\\u01b0\\u1ee3c n&eacute;t \\u0111\\u1eb9p truy\\u1ec1n th\\u1ed1ng, nh\\u01b0ng \\u0111&atilde; thay th\\u1ebf b\\u1eb1ng &Ecirc;-c\\u0103ng l\\u01b0\\u1edbi th&eacute;p tr&ocirc;ng c\\u1ee9ng c&aacute;p v&agrave; b\\u1ec1n b\\u1ec9 h\\u01a1n nhi\\u1ec1u so v\\u1edbi&nbsp;<strong>Stockwell 1<\\/strong>.&nbsp;<\\/p>\\r\\n\\r\\n<p><img src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/2.jpg\\" style=\\"height:354px; width:492px\\" \\/><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/4.jpg\\" style=\\"height:354px; width:531px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c n&uacute;t v\\u1eb7n tinh ch\\u1ec9nh &acirc;m thanh Bass, Treble v\\u1eabn gi\\u1eef thi\\u1ebft k\\u1ebf truy\\u1ec1n th\\u1ed1ng, nh\\u01b0ng \\u0111\\u01b0\\u1ee3c thay \\u0111\\u1ed5i m&agrave;u s\\u1eafc cho ph&ugrave; h\\u1ee3p v\\u1edbi chi\\u1ebfc loa tr&ocirc;ng kh\\u1ecfe kho\\u1eafn v&agrave; th\\u1eddi trang.<\\/p>\\r\\n\\r\\n<p>Loa v\\u1eabn \\u0111\\u01b0\\u1ee3c b\\u1ecdc da cao c\\u1ea5p, v&agrave; c&oacute; quai da x&aacute;ch ti\\u1ec7n l\\u1ee3i. Marshall \\u0111&atilde; n&acirc;ng c\\u1ea5p c\\u1ee7 loa b&ecirc;n trong v&agrave; &acirc;m ly Class D c&ocirc;ng su\\u1ea5t ~15W.<\\/p>\\r\\n\\r\\n<p><img alt=\\"stockwell 2 marshall 2019\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/3.jpg\\" style=\\"height:790px; width:900px\\" \\/><\\/p>\\r\\n\\r\\n<p>Phi&ecirc;n b\\u1ea3n n&agrave;y th\\u1ef1c s\\u1ef1 l&agrave; m\\u1ed9t b\\u01b0\\u1edbc ti\\u1ebfn \\u0111&aacute;ng gi&aacute; cho nh\\u1eefng t&iacute;n \\u0111\\u1ed3 c\\u1ee7a Marshall, v\\u1edbi 1 chi\\u1ebfc loa nh\\u1ecf b&eacute; nh\\u01b0ng l\\u1ea1i mang trong m&igrave;nh nh\\u1eefng c&ocirc;ng ngh\\u1ec7 m\\u1edbi, c&ugrave;ng v\\u1edbi \\u0111&oacute; l&agrave; n&uacute;t ch\\u1ec9nh &acirc;m ti\\u1ec7n l\\u1ee3i m&agrave; &iacute;t loa Bluetooth di \\u0111\\u1ed9ng c&oacute;, v&agrave; \\u0111\\u1eb7c bi\\u1ec7t kh&ocirc;ng th\\u1ec3 kh&ocirc;ng n&oacute;i \\u0111\\u1ebfn l&agrave; &acirc;m thanh s\\u1ea1ch, chi ti\\u1ebft c&oacute; th\\u1ec3 \\u0111&aacute;p \\u1ee9ng nghe nh\\u1ea1c \\u1edf nhi\\u1ec1u th\\u1ec3 lo\\u1ea1i kh&aacute;c nhau.<\\/p>\\r\\n\\r\\n<p><img alt=\\"loa stockwell 2\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/Marshall\\/Stockwell%202\\/6.jpg\\" style=\\"height:865px; width:800px\\" \\/><\\/p>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:16:26","pro_number":20,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 02:17:27"}}', '2021-11-02 19:17:27', '2021-11-02 19:17:27'),
(3, 'Product', 'Cập nhật product', 13, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{"old":{"id":13,"pro_name":"JBL Partybox On The Go","pro_slug":"jbl-partybox-on-the-go","pro_price":"8500000","pro_price_entry":0,"pro_category_id":"5","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg","pro_view":0,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"10","pro_import_goods":0,"pro_description":"Th\\u00f4ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The GoT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 100W RMSC\\u00f3 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng \\u00e2m tr\\u1ea7mChu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v\\u00e0 t\\u1ea1t t\\u00e9 n\\u01b0\\u1edbcMicro kh\\u00f4ng d\\u00e2y t\\u1eb7ng k\\u00e8m: x2 ch\\u00ednh h\\u00e3ng JBLT\\u1eb7ng k\\u00e8m d\\u00e2y \\u0111eo vai ch\\u00ednh h\\u00e3ng JBLK\\u1ebft n\\u1ed1i kh\\u00f4ng d\\u00e2y Bluetooth: v4.2\\u0110\\u1ea7u v\\u00e0o \\u00e2m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 lyTh\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li\\u00ean t\\u1ee5cUSB h\\u1ed7 tr\\u1ee3 FAT16 v\\u00e0 FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma\\u0110i\\u1ec7n \\u00e1p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph\\u00e9p s\\u1ea1c \\u0111i\\u1ec7n cho c\\u00e1c tb di \\u0111\\u1ed9ng\\u0110\\u00e1p \\u1ee9ng t\\u1ea7n s\\u1ed1:\\u00a050Hz -\\u00a050kHzC\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2K\\u00edch th\\u01b0\\u1edbc loa:\\u00a0489x 244.5 x 224 mmTr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg","pro_content":"<h2><img alt=\\"arnh1\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo1.jpeg\\" style=\\"height:600px; width:600px\\" \\/><\\/h2>\\r\\n\\r\\n<p style=\\"text-align:center\\">\\u1ea2nh 1<\\/p>\\r\\n\\r\\n<p><img alt=\\"arnh 2\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo2.jpeg\\" style=\\"height:300px; width:300px\\" \\/>\\u1ea3nh 2<\\/p>\\r\\n\\r\\n<h2>JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<p>M\\u1eabu loa nh\\u1ecf g\\u1ecdn, \\u0111a n\\u0103ng nh\\u1ea5t trong d&ograve;ng Partybox c\\u1ee7a JBL v\\u1edbi quai x&aacute;ch ti\\u1ec7n l\\u1ee3i, t&iacute;ch h\\u1ee3p s\\u1eb5n hai mic, c&oacute; pin s\\u1ea1c t&iacute;ch h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed3ng h&agrave;nh v\\u1edbi b\\u1ea1n trong m\\u1ecdi cu\\u1ed9c vui.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-1.jpg\\" style=\\"height:800px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>T\\u1ed5ng c&ocirc;ng su\\u1ea5t l&ecirc;n \\u0111\\u1ebfn 100W \\u0111em \\u0111\\u1ebfn s\\u1ef1 b&ugrave;ng n\\u1ed5, m\\u1ea1nh m\\u1ebd. D&ugrave; \\u1edf trong nh&agrave; hay ngo&agrave;i tr\\u1eddi, Partybox On The Go mang \\u0111\\u1ebfn &acirc;m cao r&otilde; n&eacute;t,&nbsp;gi\\u1ecdng h&aacute;t trung th\\u1ef1c&nbsp;v&agrave; &acirc;m tr\\u1ea7m m\\u1ea1nh m\\u1ebd. H\\u01a1n n\\u1eefa, c&ocirc;ng ngh\\u1ec7 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m Bass Boost s\\u1ebd gi&uacute;p cu\\u1ed9c vui th&ecirc;m ph\\u1ea7n s&ocirc;i \\u0111\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u kh&ocirc;ng th\\u1ec3 thi\\u1ebfu \\u1edf d&ograve;ng Partybox, \\u0111&egrave;n led t&ugrave;y ch\\u1ec9nh v&agrave; \\u0111\\u1ed3ng b\\u1ed9 v\\u1edbi &acirc;m thanh v\\u1edbi nhi\\u1ec1u ch\\u1ebf \\u0111\\u1ed9 v&agrave; m&agrave;u s\\u1eafc c&agrave;i s\\u1eb5n.<\\/p>\\r\\n\\r\\n<p><strong>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc IPX4<\\/strong><br \\/>\\r\\nMang theo ra b&atilde;i bi\\u1ec3n, b&ecirc;n h\\u1ed3 b\\u01a1i ho\\u1eb7c ti\\u1ec7c t&ugrave;ng d\\u01b0\\u1edbi tr\\u1eddi m\\u01b0a. Chu\\u1ea9n IPX4 gi&uacute;p loa lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng an to&agrave;n d&ugrave; b\\u1ecb n\\u01b0\\u1edbc b\\u1eafn hay t\\u1ea1t n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>T&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n, JBL t&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y cho m\\u1ed9t s\\u1ea3n ph\\u1ea9m loa di \\u0111\\u1ed9ng c\\u1ee7a m&igrave;nh. C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 ch\\u1ec9nh bass, treble, echo v\\u1edbi n&uacute;t t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa \\u0111\\u1ec3 \\u0111em l\\u1ea1i ch\\u1ea5t &acirc;m t\\u1ed1t nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-3.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>K\\u1ebft n\\u1ed1i bluetooth kh&ocirc;ng d&acirc;y ti\\u1ec7n l\\u1ee3i, k\\u1ebft n\\u1ed1i AUX v&agrave; USB \\u0111\\u1ec3 nghe nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng cao th&ocirc;ng qua c\\u1ed5ng USB t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-8.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 k\\u1ebft n\\u1ed1i th&ecirc;m m\\u1ed9t loa Partybox On The Go n\\u1eefa \\u0111\\u1ec3 t\\u1ea1o ra m\\u1ed9t d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chu\\u1ea9n nh\\u1edd c&ocirc;ng ngh\\u1ec7 k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a JBL.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2>Th&ocirc;ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ed5ng c&ocirc;ng su\\u1ea5t: 100W RMS<\\/li>\\r\\n\\t<li>C&oacute; 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m<\\/li>\\r\\n\\t<li>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbc<\\/li>\\r\\n\\t<li>Micro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>T\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>K\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2<\\/li>\\r\\n\\t<li>\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 ly<\\/li>\\r\\n\\t<li>Th\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5c<\\/li>\\r\\n\\t<li>USB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma<\\/li>\\r\\n\\t<li>\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1:&nbsp;50Hz -&nbsp;50kHz<\\/li>\\r\\n\\t<li>C\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2<\\/li>\\r\\n\\t<li>K&iacute;ch th\\u01b0\\u1edbc loa:&nbsp;489x 244.5 x 224 mm<\\/li>\\r\\n\\t<li>Tr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/li>\\r\\n<\\/ul>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:31:32","pro_number":10,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 07:39:25"},"new":{"id":13,"pro_name":"JBL Partybox On The Go","pro_slug":"jbl-partybox-on-the-go","pro_price":"8500000","pro_price_entry":0,"pro_category_id":"5","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg","pro_view":0,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"10","pro_import_goods":0,"pro_description":"Th\\u00f4ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The GoT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 100W RMSC\\u00f3 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng \\u00e2m tr\\u1ea7mChu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v\\u00e0 t\\u1ea1t t\\u00e9 n\\u01b0\\u1edbcMicro kh\\u00f4ng d\\u00e2y t\\u1eb7ng k\\u00e8m: x2 ch\\u00ednh h\\u00e3ng JBLT\\u1eb7ng k\\u00e8m d\\u00e2y \\u0111eo vai ch\\u00ednh h\\u00e3ng JBLK\\u1ebft n\\u1ed1i kh\\u00f4ng d\\u00e2y Bluetooth: v4.2\\u0110\\u1ea7u v\\u00e0o \\u00e2m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 lyTh\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li\\u00ean t\\u1ee5cUSB h\\u1ed7 tr\\u1ee3 FAT16 v\\u00e0 FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma\\u0110i\\u1ec7n \\u00e1p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph\\u00e9p s\\u1ea1c \\u0111i\\u1ec7n cho c\\u00e1c tb di \\u0111\\u1ed9ng\\u0110\\u00e1p \\u1ee9ng t\\u1ea7n s\\u1ed1:\\u00a050Hz -\\u00a050kHzC\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2K\\u00edch th\\u01b0\\u1edbc loa:\\u00a0489x 244.5 x 224 mmTr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg","pro_content":"<h2><img alt=\\"arnh1\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo1.jpeg\\" style=\\"height:600px; width:600px\\" \\/><\\/h2>\\r\\n\\r\\n<p style=\\"text-align:center\\">\\u1ea2nh 1<\\/p>\\r\\n\\r\\n<p><img alt=\\"arnh 2\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo2.jpeg\\" style=\\"height:300px; width:300px\\" \\/>\\u1ea3nh 2<\\/p>\\r\\n\\r\\n<h2>JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<p>M\\u1eabu loa nh\\u1ecf g\\u1ecdn, \\u0111a n\\u0103ng nh\\u1ea5t trong d&ograve;ng Partybox c\\u1ee7a JBL v\\u1edbi quai x&aacute;ch ti\\u1ec7n l\\u1ee3i, t&iacute;ch h\\u1ee3p s\\u1eb5n hai mic, c&oacute; pin s\\u1ea1c t&iacute;ch h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed3ng h&agrave;nh v\\u1edbi b\\u1ea1n trong m\\u1ecdi cu\\u1ed9c vui.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-1.jpg\\" style=\\"height:800px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>T\\u1ed5ng c&ocirc;ng su\\u1ea5t l&ecirc;n \\u0111\\u1ebfn 100W \\u0111em \\u0111\\u1ebfn s\\u1ef1 b&ugrave;ng n\\u1ed5, m\\u1ea1nh m\\u1ebd. D&ugrave; \\u1edf trong nh&agrave; hay ngo&agrave;i tr\\u1eddi, Partybox On The Go mang \\u0111\\u1ebfn &acirc;m cao r&otilde; n&eacute;t,&nbsp;gi\\u1ecdng h&aacute;t trung th\\u1ef1c&nbsp;v&agrave; &acirc;m tr\\u1ea7m m\\u1ea1nh m\\u1ebd. H\\u01a1n n\\u1eefa, c&ocirc;ng ngh\\u1ec7 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m Bass Boost s\\u1ebd gi&uacute;p cu\\u1ed9c vui th&ecirc;m ph\\u1ea7n s&ocirc;i \\u0111\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u kh&ocirc;ng th\\u1ec3 thi\\u1ebfu \\u1edf d&ograve;ng Partybox, \\u0111&egrave;n led t&ugrave;y ch\\u1ec9nh v&agrave; \\u0111\\u1ed3ng b\\u1ed9 v\\u1edbi &acirc;m thanh v\\u1edbi nhi\\u1ec1u ch\\u1ebf \\u0111\\u1ed9 v&agrave; m&agrave;u s\\u1eafc c&agrave;i s\\u1eb5n.<\\/p>\\r\\n\\r\\n<p><strong>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc IPX4<\\/strong><br \\/>\\r\\nMang theo ra b&atilde;i bi\\u1ec3n, b&ecirc;n h\\u1ed3 b\\u01a1i ho\\u1eb7c ti\\u1ec7c t&ugrave;ng d\\u01b0\\u1edbi tr\\u1eddi m\\u01b0a. Chu\\u1ea9n IPX4 gi&uacute;p loa lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng an to&agrave;n d&ugrave; b\\u1ecb n\\u01b0\\u1edbc b\\u1eafn hay t\\u1ea1t n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>T&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n, JBL t&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y cho m\\u1ed9t s\\u1ea3n ph\\u1ea9m loa di \\u0111\\u1ed9ng c\\u1ee7a m&igrave;nh. C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 ch\\u1ec9nh bass, treble, echo v\\u1edbi n&uacute;t t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa \\u0111\\u1ec3 \\u0111em l\\u1ea1i ch\\u1ea5t &acirc;m t\\u1ed1t nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-3.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>K\\u1ebft n\\u1ed1i bluetooth kh&ocirc;ng d&acirc;y ti\\u1ec7n l\\u1ee3i, k\\u1ebft n\\u1ed1i AUX v&agrave; USB \\u0111\\u1ec3 nghe nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng cao th&ocirc;ng qua c\\u1ed5ng USB t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-8.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 k\\u1ebft n\\u1ed1i th&ecirc;m m\\u1ed9t loa Partybox On The Go n\\u1eefa \\u0111\\u1ec3 t\\u1ea1o ra m\\u1ed9t d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chu\\u1ea9n nh\\u1edd c&ocirc;ng ngh\\u1ec7 k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a JBL.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2>Th&ocirc;ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ed5ng c&ocirc;ng su\\u1ea5t: 100W RMS<\\/li>\\r\\n\\t<li>C&oacute; 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m<\\/li>\\r\\n\\t<li>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbc<\\/li>\\r\\n\\t<li>Micro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>T\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>K\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2<\\/li>\\r\\n\\t<li>\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 ly<\\/li>\\r\\n\\t<li>Th\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5c<\\/li>\\r\\n\\t<li>USB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma<\\/li>\\r\\n\\t<li>\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1:&nbsp;50Hz -&nbsp;50kHz<\\/li>\\r\\n\\t<li>C\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2<\\/li>\\r\\n\\t<li>K&iacute;ch th\\u01b0\\u1edbc loa:&nbsp;489x 244.5 x 224 mm<\\/li>\\r\\n\\t<li>Tr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/li>\\r\\n<\\/ul>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:31:32","pro_number":10,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 07:39:25"}}', '2021-11-03 00:39:25', '2021-11-03 00:39:25');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(4, 'Product', 'Cập nhật product', 13, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{"old":{"id":13,"pro_name":"JBL Partybox On The Go","pro_slug":"jbl-partybox-on-the-go","pro_price":"8500000","pro_price_entry":0,"pro_category_id":"5","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg","pro_view":1,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"10","pro_import_goods":0,"pro_description":"Th\\u00f4ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The GoT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 100W RMSC\\u00f3 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng \\u00e2m tr\\u1ea7mChu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc","pro_content":"<h2><img alt=\\"arnh1\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo1.jpeg\\" style=\\"height:600px; width:600px\\" \\/><\\/h2>\\r\\n\\r\\n<p style=\\"text-align:center\\">\\u1ea2nh 1<\\/p>\\r\\n\\r\\n<p><img alt=\\"arnh 2\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo2.jpeg\\" style=\\"height:300px; width:300px\\" \\/>\\u1ea3nh 2<\\/p>\\r\\n\\r\\n<p>IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbcMicro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBLT\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBLK\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 lyTh\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5cUSB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1: 50Hz - 50kHzC\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2K&iacute;ch th\\u01b0\\u1edbc loa: 489x 244.5 x 224 mmTr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/p>\\r\\n\\r\\n<h2>JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<p>M\\u1eabu loa nh\\u1ecf g\\u1ecdn, \\u0111a n\\u0103ng nh\\u1ea5t trong d&ograve;ng Partybox c\\u1ee7a JBL v\\u1edbi quai x&aacute;ch ti\\u1ec7n l\\u1ee3i, t&iacute;ch h\\u1ee3p s\\u1eb5n hai mic, c&oacute; pin s\\u1ea1c t&iacute;ch h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed3ng h&agrave;nh v\\u1edbi b\\u1ea1n trong m\\u1ecdi cu\\u1ed9c vui.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-1.jpg\\" style=\\"height:800px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>T\\u1ed5ng c&ocirc;ng su\\u1ea5t l&ecirc;n \\u0111\\u1ebfn 100W \\u0111em \\u0111\\u1ebfn s\\u1ef1 b&ugrave;ng n\\u1ed5, m\\u1ea1nh m\\u1ebd. D&ugrave; \\u1edf trong nh&agrave; hay ngo&agrave;i tr\\u1eddi, Partybox On The Go mang \\u0111\\u1ebfn &acirc;m cao r&otilde; n&eacute;t,&nbsp;gi\\u1ecdng h&aacute;t trung th\\u1ef1c&nbsp;v&agrave; &acirc;m tr\\u1ea7m m\\u1ea1nh m\\u1ebd. H\\u01a1n n\\u1eefa, c&ocirc;ng ngh\\u1ec7 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m Bass Boost s\\u1ebd gi&uacute;p cu\\u1ed9c vui th&ecirc;m ph\\u1ea7n s&ocirc;i \\u0111\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u kh&ocirc;ng th\\u1ec3 thi\\u1ebfu \\u1edf d&ograve;ng Partybox, \\u0111&egrave;n led t&ugrave;y ch\\u1ec9nh v&agrave; \\u0111\\u1ed3ng b\\u1ed9 v\\u1edbi &acirc;m thanh v\\u1edbi nhi\\u1ec1u ch\\u1ebf \\u0111\\u1ed9 v&agrave; m&agrave;u s\\u1eafc c&agrave;i s\\u1eb5n.<\\/p>\\r\\n\\r\\n<p><strong>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc IPX4<\\/strong><br \\/>\\r\\nMang theo ra b&atilde;i bi\\u1ec3n, b&ecirc;n h\\u1ed3 b\\u01a1i ho\\u1eb7c ti\\u1ec7c t&ugrave;ng d\\u01b0\\u1edbi tr\\u1eddi m\\u01b0a. Chu\\u1ea9n IPX4 gi&uacute;p loa lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng an to&agrave;n d&ugrave; b\\u1ecb n\\u01b0\\u1edbc b\\u1eafn hay t\\u1ea1t n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>T&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n, JBL t&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y cho m\\u1ed9t s\\u1ea3n ph\\u1ea9m loa di \\u0111\\u1ed9ng c\\u1ee7a m&igrave;nh. C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 ch\\u1ec9nh bass, treble, echo v\\u1edbi n&uacute;t t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa \\u0111\\u1ec3 \\u0111em l\\u1ea1i ch\\u1ea5t &acirc;m t\\u1ed1t nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-3.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>K\\u1ebft n\\u1ed1i bluetooth kh&ocirc;ng d&acirc;y ti\\u1ec7n l\\u1ee3i, k\\u1ebft n\\u1ed1i AUX v&agrave; USB \\u0111\\u1ec3 nghe nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng cao th&ocirc;ng qua c\\u1ed5ng USB t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-8.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 k\\u1ebft n\\u1ed1i th&ecirc;m m\\u1ed9t loa Partybox On The Go n\\u1eefa \\u0111\\u1ec3 t\\u1ea1o ra m\\u1ed9t d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chu\\u1ea9n nh\\u1edd c&ocirc;ng ngh\\u1ec7 k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a JBL.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2>Th&ocirc;ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ed5ng c&ocirc;ng su\\u1ea5t: 100W RMS<\\/li>\\r\\n\\t<li>C&oacute; 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m<\\/li>\\r\\n\\t<li>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbc<\\/li>\\r\\n\\t<li>Micro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>T\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>K\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2<\\/li>\\r\\n\\t<li>\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 ly<\\/li>\\r\\n\\t<li>Th\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5c<\\/li>\\r\\n\\t<li>USB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma<\\/li>\\r\\n\\t<li>\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1:&nbsp;50Hz -&nbsp;50kHz<\\/li>\\r\\n\\t<li>C\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2<\\/li>\\r\\n\\t<li>K&iacute;ch th\\u01b0\\u1edbc loa:&nbsp;489x 244.5 x 224 mm<\\/li>\\r\\n\\t<li>Tr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/li>\\r\\n<\\/ul>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:31:32","pro_number":10,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 07:40:12"},"new":{"id":13,"pro_name":"JBL Partybox On The Go","pro_slug":"jbl-partybox-on-the-go","pro_price":"8500000","pro_price_entry":0,"pro_category_id":"5","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg","pro_view":1,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"10","pro_import_goods":0,"pro_description":"Th\\u00f4ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The GoT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 100W RMSC\\u00f3 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng \\u00e2m tr\\u1ea7mChu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc","pro_content":"<h2><img alt=\\"arnh1\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo1.jpeg\\" style=\\"height:600px; width:600px\\" \\/><\\/h2>\\r\\n\\r\\n<p style=\\"text-align:center\\">\\u1ea2nh 1<\\/p>\\r\\n\\r\\n<p><img alt=\\"arnh 2\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo2.jpeg\\" style=\\"height:300px; width:300px\\" \\/>\\u1ea3nh 2<\\/p>\\r\\n\\r\\n<p>IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbcMicro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBLT\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBLK\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 lyTh\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5cUSB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1: 50Hz - 50kHzC\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2K&iacute;ch th\\u01b0\\u1edbc loa: 489x 244.5 x 224 mmTr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/p>\\r\\n\\r\\n<h2>JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<p>M\\u1eabu loa nh\\u1ecf g\\u1ecdn, \\u0111a n\\u0103ng nh\\u1ea5t trong d&ograve;ng Partybox c\\u1ee7a JBL v\\u1edbi quai x&aacute;ch ti\\u1ec7n l\\u1ee3i, t&iacute;ch h\\u1ee3p s\\u1eb5n hai mic, c&oacute; pin s\\u1ea1c t&iacute;ch h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed3ng h&agrave;nh v\\u1edbi b\\u1ea1n trong m\\u1ecdi cu\\u1ed9c vui.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-1.jpg\\" style=\\"height:800px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>T\\u1ed5ng c&ocirc;ng su\\u1ea5t l&ecirc;n \\u0111\\u1ebfn 100W \\u0111em \\u0111\\u1ebfn s\\u1ef1 b&ugrave;ng n\\u1ed5, m\\u1ea1nh m\\u1ebd. D&ugrave; \\u1edf trong nh&agrave; hay ngo&agrave;i tr\\u1eddi, Partybox On The Go mang \\u0111\\u1ebfn &acirc;m cao r&otilde; n&eacute;t,&nbsp;gi\\u1ecdng h&aacute;t trung th\\u1ef1c&nbsp;v&agrave; &acirc;m tr\\u1ea7m m\\u1ea1nh m\\u1ebd. H\\u01a1n n\\u1eefa, c&ocirc;ng ngh\\u1ec7 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m Bass Boost s\\u1ebd gi&uacute;p cu\\u1ed9c vui th&ecirc;m ph\\u1ea7n s&ocirc;i \\u0111\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u kh&ocirc;ng th\\u1ec3 thi\\u1ebfu \\u1edf d&ograve;ng Partybox, \\u0111&egrave;n led t&ugrave;y ch\\u1ec9nh v&agrave; \\u0111\\u1ed3ng b\\u1ed9 v\\u1edbi &acirc;m thanh v\\u1edbi nhi\\u1ec1u ch\\u1ebf \\u0111\\u1ed9 v&agrave; m&agrave;u s\\u1eafc c&agrave;i s\\u1eb5n.<\\/p>\\r\\n\\r\\n<p><strong>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc IPX4<\\/strong><br \\/>\\r\\nMang theo ra b&atilde;i bi\\u1ec3n, b&ecirc;n h\\u1ed3 b\\u01a1i ho\\u1eb7c ti\\u1ec7c t&ugrave;ng d\\u01b0\\u1edbi tr\\u1eddi m\\u01b0a. Chu\\u1ea9n IPX4 gi&uacute;p loa lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng an to&agrave;n d&ugrave; b\\u1ecb n\\u01b0\\u1edbc b\\u1eafn hay t\\u1ea1t n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>T&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n, JBL t&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y cho m\\u1ed9t s\\u1ea3n ph\\u1ea9m loa di \\u0111\\u1ed9ng c\\u1ee7a m&igrave;nh. C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 ch\\u1ec9nh bass, treble, echo v\\u1edbi n&uacute;t t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa \\u0111\\u1ec3 \\u0111em l\\u1ea1i ch\\u1ea5t &acirc;m t\\u1ed1t nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-3.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>K\\u1ebft n\\u1ed1i bluetooth kh&ocirc;ng d&acirc;y ti\\u1ec7n l\\u1ee3i, k\\u1ebft n\\u1ed1i AUX v&agrave; USB \\u0111\\u1ec3 nghe nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng cao th&ocirc;ng qua c\\u1ed5ng USB t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-8.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 k\\u1ebft n\\u1ed1i th&ecirc;m m\\u1ed9t loa Partybox On The Go n\\u1eefa \\u0111\\u1ec3 t\\u1ea1o ra m\\u1ed9t d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chu\\u1ea9n nh\\u1edd c&ocirc;ng ngh\\u1ec7 k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a JBL.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2>Th&ocirc;ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ed5ng c&ocirc;ng su\\u1ea5t: 100W RMS<\\/li>\\r\\n\\t<li>C&oacute; 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m<\\/li>\\r\\n\\t<li>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbc<\\/li>\\r\\n\\t<li>Micro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>T\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>K\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2<\\/li>\\r\\n\\t<li>\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 ly<\\/li>\\r\\n\\t<li>Th\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5c<\\/li>\\r\\n\\t<li>USB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma<\\/li>\\r\\n\\t<li>\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1:&nbsp;50Hz -&nbsp;50kHz<\\/li>\\r\\n\\t<li>C\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2<\\/li>\\r\\n\\t<li>K&iacute;ch th\\u01b0\\u1edbc loa:&nbsp;489x 244.5 x 224 mm<\\/li>\\r\\n\\t<li>Tr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/li>\\r\\n<\\/ul>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:31:32","pro_number":10,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 07:40:12"}}', '2021-11-03 00:40:12', '2021-11-03 00:40:12'),
(5, 'Product', 'Cập nhật product', 13, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{"old":{"id":13,"pro_name":"JBL Partybox On The Go","pro_slug":"jbl-partybox-on-the-go","pro_price":"8500000","pro_price_entry":0,"pro_category_id":"5","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg","pro_view":1,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"10","pro_import_goods":0,"pro_description":"Th\\u00f4ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The GoT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 100W RMSC\\u00f3 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng \\u00e2m tr\\u1ea7mChu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc","pro_content":"<h2><img alt=\\"arnh1\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo1.jpeg\\" style=\\"height:600px; width:600px\\" \\/><\\/h2>\\r\\n\\r\\n<p style=\\"text-align:center\\">\\u1ea2nh 1<\\/p>\\r\\n\\r\\n<p><img alt=\\"arnh 2\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo2.jpeg\\" style=\\"height:300px; width:300px\\" \\/>\\u1ea3nh 2<\\/p>\\r\\n\\r\\n<p>IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbcMicro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBLT\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBLK\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 lyTh\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5cUSB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1: 50Hz - 50kHzC\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2K&iacute;ch th\\u01b0\\u1edbc loa: 489x 244.5 x 224 mmTr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/p>\\r\\n\\r\\n<h2>JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<p>M\\u1eabu loa nh\\u1ecf g\\u1ecdn, \\u0111a n\\u0103ng nh\\u1ea5t trong d&ograve;ng Partybox c\\u1ee7a JBL v\\u1edbi quai x&aacute;ch ti\\u1ec7n l\\u1ee3i, t&iacute;ch h\\u1ee3p s\\u1eb5n hai mic, c&oacute; pin s\\u1ea1c t&iacute;ch h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed3ng h&agrave;nh v\\u1edbi b\\u1ea1n trong m\\u1ecdi cu\\u1ed9c vui.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-1.jpg\\" style=\\"height:800px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>T\\u1ed5ng c&ocirc;ng su\\u1ea5t l&ecirc;n \\u0111\\u1ebfn 100W \\u0111em \\u0111\\u1ebfn s\\u1ef1 b&ugrave;ng n\\u1ed5, m\\u1ea1nh m\\u1ebd. D&ugrave; \\u1edf trong nh&agrave; hay ngo&agrave;i tr\\u1eddi, Partybox On The Go mang \\u0111\\u1ebfn &acirc;m cao r&otilde; n&eacute;t,&nbsp;gi\\u1ecdng h&aacute;t trung th\\u1ef1c&nbsp;v&agrave; &acirc;m tr\\u1ea7m m\\u1ea1nh m\\u1ebd. H\\u01a1n n\\u1eefa, c&ocirc;ng ngh\\u1ec7 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m Bass Boost s\\u1ebd gi&uacute;p cu\\u1ed9c vui th&ecirc;m ph\\u1ea7n s&ocirc;i \\u0111\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u kh&ocirc;ng th\\u1ec3 thi\\u1ebfu \\u1edf d&ograve;ng Partybox, \\u0111&egrave;n led t&ugrave;y ch\\u1ec9nh v&agrave; \\u0111\\u1ed3ng b\\u1ed9 v\\u1edbi &acirc;m thanh v\\u1edbi nhi\\u1ec1u ch\\u1ebf \\u0111\\u1ed9 v&agrave; m&agrave;u s\\u1eafc c&agrave;i s\\u1eb5n.<\\/p>\\r\\n\\r\\n<p><strong>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc IPX4<\\/strong><br \\/>\\r\\nMang theo ra b&atilde;i bi\\u1ec3n, b&ecirc;n h\\u1ed3 b\\u01a1i ho\\u1eb7c ti\\u1ec7c t&ugrave;ng d\\u01b0\\u1edbi tr\\u1eddi m\\u01b0a. Chu\\u1ea9n IPX4 gi&uacute;p loa lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng an to&agrave;n d&ugrave; b\\u1ecb n\\u01b0\\u1edbc b\\u1eafn hay t\\u1ea1t n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>T&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n, JBL t&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y cho m\\u1ed9t s\\u1ea3n ph\\u1ea9m loa di \\u0111\\u1ed9ng c\\u1ee7a m&igrave;nh. C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 ch\\u1ec9nh bass, treble, echo v\\u1edbi n&uacute;t t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa \\u0111\\u1ec3 \\u0111em l\\u1ea1i ch\\u1ea5t &acirc;m t\\u1ed1t nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-3.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>K\\u1ebft n\\u1ed1i bluetooth kh&ocirc;ng d&acirc;y ti\\u1ec7n l\\u1ee3i, k\\u1ebft n\\u1ed1i AUX v&agrave; USB \\u0111\\u1ec3 nghe nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng cao th&ocirc;ng qua c\\u1ed5ng USB t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-8.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 k\\u1ebft n\\u1ed1i th&ecirc;m m\\u1ed9t loa Partybox On The Go n\\u1eefa \\u0111\\u1ec3 t\\u1ea1o ra m\\u1ed9t d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chu\\u1ea9n nh\\u1edd c&ocirc;ng ngh\\u1ec7 k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a JBL.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2>Th&ocirc;ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ed5ng c&ocirc;ng su\\u1ea5t: 100W RMS<\\/li>\\r\\n\\t<li>C&oacute; 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m<\\/li>\\r\\n\\t<li>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbc<\\/li>\\r\\n\\t<li>Micro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>T\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>K\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2<\\/li>\\r\\n\\t<li>\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 ly<\\/li>\\r\\n\\t<li>Th\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5c<\\/li>\\r\\n\\t<li>USB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma<\\/li>\\r\\n\\t<li>\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1:&nbsp;50Hz -&nbsp;50kHz<\\/li>\\r\\n\\t<li>C\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2<\\/li>\\r\\n\\t<li>K&iacute;ch th\\u01b0\\u1edbc loa:&nbsp;489x 244.5 x 224 mm<\\/li>\\r\\n\\t<li>Tr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/li>\\r\\n<\\/ul>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:31:32","pro_number":10,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 08:29:38"},"new":{"id":13,"pro_name":"JBL Partybox On The Go","pro_slug":"jbl-partybox-on-the-go","pro_price":"8500000","pro_price_entry":0,"pro_category_id":"5","pro_supplier_id":0,"pro_admin_id":0,"pro_sale":"5","pro_expiration_date":10,"pro_avatar":"2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg","pro_view":1,"pro_hot":0,"pro_active":1,"pro_pay":0,"pro_number_import":"10","pro_import_goods":0,"pro_description":"Th\\u00f4ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The GoT\\u1ed5ng c\\u00f4ng su\\u1ea5t: 100W RMSC\\u00f3 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng \\u00e2m tr\\u1ea7mChu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc","pro_content":"<h2><img alt=\\"arnh1\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo1.jpeg\\" style=\\"height:600px; width:600px\\" \\/><\\/h2>\\r\\n\\r\\n<p style=\\"text-align:center\\">\\u1ea2nh 1<\\/p>\\r\\n\\r\\n<p><img alt=\\"arnh 2\\" src=\\"https:\\/\\/banloa.123code.net\\/storage\\/photos\\/content\\/keo2.jpeg\\" style=\\"height:300px; width:300px\\" \\/>\\u1ea3nh 2<\\/p>\\r\\n\\r\\n<p>IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbcMicro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBLT\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBLK\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 lyTh\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5cUSB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1: 50Hz - 50kHzC\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2K&iacute;ch th\\u01b0\\u1edbc loa: 489x 244.5 x 224 mmTr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/p>\\r\\n\\r\\n<h2>JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<p>M\\u1eabu loa nh\\u1ecf g\\u1ecdn, \\u0111a n\\u0103ng nh\\u1ea5t trong d&ograve;ng Partybox c\\u1ee7a JBL v\\u1edbi quai x&aacute;ch ti\\u1ec7n l\\u1ee3i, t&iacute;ch h\\u1ee3p s\\u1eb5n hai mic, c&oacute; pin s\\u1ea1c t&iacute;ch h\\u1ee3p \\u0111\\u1ec3 \\u0111\\u1ed3ng h&agrave;nh v\\u1edbi b\\u1ea1n trong m\\u1ecdi cu\\u1ed9c vui.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-1.jpg\\" style=\\"height:800px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>T\\u1ed5ng c&ocirc;ng su\\u1ea5t l&ecirc;n \\u0111\\u1ebfn 100W \\u0111em \\u0111\\u1ebfn s\\u1ef1 b&ugrave;ng n\\u1ed5, m\\u1ea1nh m\\u1ebd. D&ugrave; \\u1edf trong nh&agrave; hay ngo&agrave;i tr\\u1eddi, Partybox On The Go mang \\u0111\\u1ebfn &acirc;m cao r&otilde; n&eacute;t,&nbsp;gi\\u1ecdng h&aacute;t trung th\\u1ef1c&nbsp;v&agrave; &acirc;m tr\\u1ea7m m\\u1ea1nh m\\u1ebd. H\\u01a1n n\\u1eefa, c&ocirc;ng ngh\\u1ec7 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m Bass Boost s\\u1ebd gi&uacute;p cu\\u1ed9c vui th&ecirc;m ph\\u1ea7n s&ocirc;i \\u0111\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u kh&ocirc;ng th\\u1ec3 thi\\u1ebfu \\u1edf d&ograve;ng Partybox, \\u0111&egrave;n led t&ugrave;y ch\\u1ec9nh v&agrave; \\u0111\\u1ed3ng b\\u1ed9 v\\u1edbi &acirc;m thanh v\\u1edbi nhi\\u1ec1u ch\\u1ebf \\u0111\\u1ed9 v&agrave; m&agrave;u s\\u1eafc c&agrave;i s\\u1eb5n.<\\/p>\\r\\n\\r\\n<p><strong>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc IPX4<\\/strong><br \\/>\\r\\nMang theo ra b&atilde;i bi\\u1ec3n, b&ecirc;n h\\u1ed3 b\\u01a1i ho\\u1eb7c ti\\u1ec7c t&ugrave;ng d\\u01b0\\u1edbi tr\\u1eddi m\\u01b0a. Chu\\u1ea9n IPX4 gi&uacute;p loa lu&ocirc;n ho\\u1ea1t \\u0111\\u1ed9ng an to&agrave;n d&ugrave; b\\u1ecb n\\u01b0\\u1edbc b\\u1eafn hay t\\u1ea1t n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-2.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>T&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y<\\/strong><\\/p>\\r\\n\\r\\n<p>L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n, JBL t&iacute;ch h\\u1ee3p s\\u1eb5n hai micro kh&ocirc;ng d&acirc;y cho m\\u1ed9t s\\u1ea3n ph\\u1ea9m loa di \\u0111\\u1ed9ng c\\u1ee7a m&igrave;nh. C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 ch\\u1ec9nh bass, treble, echo v\\u1edbi n&uacute;t t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa \\u0111\\u1ec3 \\u0111em l\\u1ea1i ch\\u1ea5t &acirc;m t\\u1ed1t nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/loa-JBL-PartyBox-On-The-Go-3.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>K\\u1ebft n\\u1ed1i bluetooth kh&ocirc;ng d&acirc;y ti\\u1ec7n l\\u1ee3i, k\\u1ebft n\\u1ed1i AUX v&agrave; USB \\u0111\\u1ec3 nghe nh\\u1ea1c ch\\u1ea5t l\\u01b0\\u1ee3ng cao th&ocirc;ng qua c\\u1ed5ng USB t&iacute;ch h\\u1ee3p s\\u1eb5n tr&ecirc;n loa.<\\/p>\\r\\n\\r\\n<p><img alt=\\"\\" src=\\"https:\\/\\/dientulinhanh.com\\/storage\\/product\\/PORTABLE-SPEAKERS\\/JBL\\/Partybox%20on%20the%20go\\/partybox-on-the-go-8.jpg\\" style=\\"height:450px; width:800px\\" \\/><\\/p>\\r\\n\\r\\n<p>C&aacute;c b\\u1ea1n c\\u0169ng c&oacute; th\\u1ec3 k\\u1ebft n\\u1ed1i th&ecirc;m m\\u1ed9t loa Partybox On The Go n\\u1eefa \\u0111\\u1ec3 t\\u1ea1o ra m\\u1ed9t d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chu\\u1ea9n nh\\u1edd c&ocirc;ng ngh\\u1ec7 k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y \\u0111\\u1ed9c quy\\u1ec1n c\\u1ee7a JBL.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2>Th&ocirc;ng s\\u1ed1 k\\u0129 thu\\u1eadt JBL Partybox On The Go<\\/h2>\\r\\n\\r\\n<ul>\\r\\n\\t<li>T\\u1ed5ng c&ocirc;ng su\\u1ea5t: 100W RMS<\\/li>\\r\\n\\t<li>C&oacute; 3 ch\\u1ebf \\u0111\\u1ed9 Bass Boost \\u0111\\u1ec3 t\\u0103ng c\\u01b0\\u1eddng &acirc;m tr\\u1ea7m<\\/li>\\r\\n\\t<li>Chu\\u1ea9n ch\\u1ed1ng n\\u01b0\\u1edbc: IPX4 ch\\u1ed1ng m\\u01b0a nh\\u1eb9 v&agrave; t\\u1ea1t t&eacute; n\\u01b0\\u1edbc<\\/li>\\r\\n\\t<li>Micro kh&ocirc;ng d&acirc;y t\\u1eb7ng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>T\\u1eb7ng k&egrave;m d&acirc;y \\u0111eo vai ch&iacute;nh h&atilde;ng JBL<\\/li>\\r\\n\\t<li>K\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y Bluetooth: v4.2<\\/li>\\r\\n\\t<li>\\u0110\\u1ea7u v&agrave;o &acirc;m thanh: AUX, USB, c\\u1ed5ng Guitar 6 ly, c\\u1ed5ng mic 6 ly<\\/li>\\r\\n\\t<li>Th\\u1eddi l\\u01b0\\u1ee3ng pin: 6 ti\\u1ebfng li&ecirc;n t\\u1ee5c<\\/li>\\r\\n\\t<li>USB h\\u1ed7 tr\\u1ee3 FAT16 v&agrave; FAT32, ch\\u01a1i \\u0111\\u01b0\\u1ee3c nh\\u1ea1c lossless wav ho\\u1eb7c mp3, wma<\\/li>\\r\\n\\t<li>\\u0110i\\u1ec7n &aacute;p ra t\\u1ea1i c\\u1ed5ng USB 5v, 2.1A cho ph&eacute;p s\\u1ea1c \\u0111i\\u1ec7n cho c&aacute;c tb di \\u0111\\u1ed9ng<\\/li>\\r\\n\\t<li>\\u0110&aacute;p \\u1ee9ng t\\u1ea7n s\\u1ed1:&nbsp;50Hz -&nbsp;50kHz<\\/li>\\r\\n\\t<li>C\\u1ee7 loa Mid-Bass 13.3cm, c\\u1ee7 loa treble 4.4cm x 2<\\/li>\\r\\n\\t<li>K&iacute;ch th\\u01b0\\u1edbc loa:&nbsp;489x 244.5 x 224 mm<\\/li>\\r\\n\\t<li>Tr\\u1ecdng l\\u01b0\\u1ee3ng loa: 7.5 kg<\\/li>\\r\\n<\\/ul>","pro_review_total":0,"pro_review_star":0,"pro_age_review":0,"created_at":"2021-11-03 02:31:32","pro_number":10,"pro_resistant":null,"pro_energy":null,"pro_country":0,"updated_at":"2021-11-03 08:29:38"}}', '2021-11-03 01:29:38', '2021-11-03 01:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$MEhZ4U9tV8CZYHCduEQJJ.BoE0JhjTb0mQz5RLVdDir9MICgBORDG', '0988999999', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) unsigned NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint(20) unsigned NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT '0',
  `atb_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Loa Bluetooth', 'loa-bluetooth', NULL, NULL, NULL, 0, 0, 1, '2021-11-02 17:52:12', NULL),
(2, 'Dàn Karaoke, Amply', 'dan-karaoke-amply', NULL, NULL, NULL, 0, 0, 1, '2021-11-02 17:52:32', NULL),
(3, 'Loa kéo', 'loa-keo', NULL, NULL, NULL, 0, 0, 1, '2021-11-02 17:52:42', NULL),
(4, 'Loa Marshall', 'loa-marshall', NULL, NULL, NULL, 1, 0, 1, '2021-11-02 18:46:18', NULL),
(5, 'Loa JBL', 'loa-jbl', NULL, NULL, NULL, 1, 0, 1, '2021-11-02 19:14:40', NULL),
(6, 'Loa HARMAN KARDON', 'loa-harman-kardon', NULL, NULL, NULL, 1, 0, 1, '2021-11-02 19:18:32', NULL),
(7, 'Loa sony', 'loa-sony', NULL, NULL, NULL, 0, 0, 1, '2021-12-02 18:26:01', NULL),
(8, 'Loa Soundbar Harman Kardon', 'loa-soundbar-harman-kardon', NULL, NULL, NULL, 0, 0, 1, '2021-12-02 18:26:32', NULL),
(9, 'Loa Soundbar B&O', 'loa-soundbar-bo', NULL, NULL, NULL, 0, 0, 1, '2021-12-02 18:26:53', NULL),
(10, 'Loa Soundbar Kiwi', 'loa-soundbar-kiwi', NULL, NULL, NULL, 0, 0, 1, '2021-12-02 18:27:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_images` text COLLATE utf8mb4_unicode_ci,
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_images`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Tôi đã từng mua sản phẩm này rồi. Nó thật tuyệt vời', 0, 2, 0, '["2021-11-03__keo2jpeg.jpeg","2021-11-03__keo1jpeg.jpeg"]', 1, 0, 0, '2021-11-02 18:04:56', NULL),
(2, NULL, NULL, 'tốt', 0, 18, 0, '[]', 9, 0, 0, '2021-12-04 01:15:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) unsigned NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Ảnh 1', '2021-12-03__loa-soundbar-jbl-21-deep-bass-1c.jpeg', '/', 1, 0, 0, 0, '2021-12-02 18:33:07', '2021-12-02 18:33:07'),
(2, 'Ảnh 2', '2021-12-03__2021-11-03-tufton.jpeg', '/', 0, 1, 1, 0, '2021-12-02 18:36:10', '2021-12-02 18:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
--

CREATE TABLE IF NOT EXISTS `invoice_entered` (
  `id` bigint(20) unsigned NOT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT '0',
  `ie_name_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT '0',
  `ie_number` int(11) NOT NULL DEFAULT '0',
  `ie_number_sold` int(11) NOT NULL DEFAULT '0',
  `ie_product_id` int(11) NOT NULL DEFAULT '0',
  `ie_money` int(11) NOT NULL DEFAULT '0',
  `ie_status` tinyint(4) NOT NULL DEFAULT '0',
  `ie_meta` text COLLATE utf8mb4_unicode_ci,
  `ie_the_advance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE IF NOT EXISTS `keywords` (
  `id` bigint(20) unsigned NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) unsigned NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(36, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 1),
(37, '2020_04_29_112931_create_invoice_entered_in_tables', 1),
(38, '2020_06_17_192357_create_product_invoice_entered_table', 1),
(39, '2020_06_21_112319_create_permission_tables', 1),
(40, '2020_06_21_205241_create_activity_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 4, 1, 3360000, '2021-11-02 18:02:01', NULL),
(2, 2, 5, 5, 1, 9405000, '2021-11-04 08:30:27', NULL),
(3, 3, 18, 20, 1, 2720000, '2021-12-04 01:13:28', NULL),
(4, 3, 11, 10, 1, 8820000, '2021-12-04 01:13:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE IF NOT EXISTS `pay_histories` (
  `id` int(10) unsigned NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) unsigned NOT NULL,
  `ph_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_debit` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_balance` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint(4) NOT NULL DEFAULT '0',
  `ph_month` tinyint(3) unsigned DEFAULT NULL,
  `ph_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE IF NOT EXISTS `pay_ins` (
  `id` int(10) unsigned NOT NULL,
  `pi_user_id` int(10) unsigned NOT NULL,
  `pi_admin_id` int(10) unsigned NOT NULL,
  `pi_provider` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_money` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_fee` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint(4) NOT NULL DEFAULT '0',
  `pi_month` tinyint(3) unsigned DEFAULT NULL,
  `pi_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE IF NOT EXISTS `pay_outs` (
  `id` int(10) unsigned NOT NULL,
  `po_user_id` int(10) unsigned NOT NULL,
  `po_transaction_id` int(10) unsigned NOT NULL,
  `po_money` int(10) unsigned NOT NULL DEFAULT '0',
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT '0',
  `po_month` tinyint(3) unsigned DEFAULT NULL,
  `po_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission` tinyint(4) NOT NULL DEFAULT '0',
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_supplier_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_expiration_date` tinyint(4) NOT NULL DEFAULT '10',
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_number_import` int(11) NOT NULL DEFAULT '0',
  `pro_import_goods` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_number_import`, `pro_import_goods`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'Loa kéo Karaoke Dalton TS-15G600X 600W', 'loa-keo-karaoke-dalton-ts-15g600x-600w', 2000000, 0, 3, 0, 0, 10, 10, '2021-11-03__keo1.jpeg', 3, 0, 1, 0, 1000, 0, 'Loa kéo Karaoke Dalton TS-15G600X 600W', '<p>Đang cập nhật</p>', 0, 0, 0, '2021-11-02 17:57:08', 1000, NULL, NULL, 0, NULL),
(2, 'Loa kéo Karaoke Nanomax S-900', 'loa-keo-karaoke-nanomax-s-900', 3500000, 0, 3, 0, 0, 4, 10, '2021-11-03__keo2.jpeg', 5, 0, 1, 1, 1000, 0, 'Loa kéo Karaoke Nanomax S-900', '<p>Loa k&eacute;o Karaoke Dalton TS-15G600X 600W c&oacute; thiết kế đẹp mắt với t&ocirc;ng m&agrave;u đen chủ đạo mạnh mẽ ph&ugrave; hợp với nhiều kh&ocirc;ng gian. Th&acirc;n loa karaoke l&agrave;m bằng gỗ cao cấp cho chất &acirc;m tốt hơn cũng như tạo sự sang trọng cho loa.</p>\r\n\r\n<p>Loa k&eacute;o Karaoke Dalton TS-15G600X 600W - Thiết kế</p>\r\n\r\n<p>Loa di chuyển linh hoạt c&ugrave;ng với 4 b&aacute;nh xe v&agrave; tay k&eacute;o chắc chắn<br />\r\nLoa n&agrave;y c&oacute; tay k&eacute;o k&egrave;m với 4 b&aacute;nh xe, gi&uacute;p bạn dễ d&agrave;ng di chuyển loa một c&aacute;ch thuận tiện. Khi đặt loa ở vị tr&iacute; cố định, bạn c&oacute; thể kh&oacute;a chốt b&aacute;nh xe, loa đứng vững v&agrave; kh&ocirc;ng bị trượt.</p>\r\n\r\n<p>Loa k&eacute;o Karaoke Dalton TS-15G600X 600W - Di chuyển linh hoạt</p>\r\n\r\n<p>&Acirc;m thanh vang dội, đ&atilde; tai với tổng c&ocirc;ng suất 600 W<br />\r\nLoa k&eacute;o Dalton thể hiện r&otilde; từng &acirc;m sắc một c&aacute;ch vang dội đầy mạnh mẽ m&agrave; vẫn giữ được chất lượng &acirc;m thanh nguy&ecirc;n bản với loa 2 đường tiếng tổng c&ocirc;ng suất 600 W bao gồm 1 loa Bass với đường k&iacute;nh 3,8 tấc (khoảng 38 cm), 1 loa Treble.</p>\r\n\r\n<p>Ngo&agrave;i sử dụng nguồn điện trực tiếp, loa k&eacute;o Dalton c&ograve;n c&oacute; thể sạc (khoảng 6-8 tiếng) để sử dụng được li&ecirc;n tục trong 2-5 tiếng đ&aacute;p ứng tốt nhu cầu thưởng thức &acirc;m nhạc của bạn kể cả trong c&aacute;c buổi tiệc hoặc buổi d&atilde; ngoại.</p>\r\n\r\n<p>Loa k&eacute;o Karaoke Dalton TS-15G600X 600W - C&ocirc;ng suất</p>\r\n\r\n<p>Dễ d&agrave;ng h&aacute;t karaoke mọi l&uacute;c mọi nơi với 2 micro tặng k&egrave;m chuy&ecirc;n dụng<br />\r\nBạn dễ d&agrave;ng h&aacute;t karaoke mọi l&uacute;c với 2 micro karaoke chuy&ecirc;n dụng tặng k&egrave;m theo loa Dalton. Thậm ch&iacute;, bạn c&oacute; thể karaoke kh&ocirc;ng cần mạng qua ứng dụng Dkara của ch&iacute;nh h&atilde;ng Dalton.</p>\r\n\r\n<p>Loa k&eacute;o Karaoke Dalton TS-15G600X 600W - Karaoke</p>\r\n\r\n<p>Điều khiển nhanh ch&oacute;ng tiện lợi với remote điều khiển từ xa<br />\r\n&nbsp;</p>', 0, 0, 0, '2021-11-02 18:01:06', 1000, NULL, NULL, 0, NULL),
(3, 'Marshall EMBERTON', 'marshall-emberton', 3500000, 0, 4, 0, 0, 5, 10, '2021-11-03__marshall-emberton.png', 2, 0, 1, 0, 20, 0, 'Kích thước: 68 x 160 x 76mmTrọng lượng: 0.7kgDải tần đáp ứng: 60Hz - 20kHzTổng công suất: 20WSử dụng 2 loa toàn dải kích thước 5cmThời lượng pin: 20 giờ, hỗ trợ sạc nhanhBluetooth: v5.0Chống nước: IPX7', '<h2>Loa MARSHALL EMBERTON</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mẫu loa bluetooth nhỏ nhất của Marshall với nhiều c&ocirc;ng nghệ mới gi&uacute;p bạn trải nghiệm &acirc;m thanh vượt trội v&agrave; t&iacute;nh di động cực cao.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Emberton/marshall-emberton-4.png" style="height:518px; width:800px" /></p>\r\n\r\n<p>Thiết kế mang t&iacute;nh biểu tượng của Marshall mang đến &acirc;m thanh tinh tế khi vẫn giữ được vẻ cổ điển vốn c&oacute; của h&atilde;ng &acirc;m thanh đến từ Anh Quốc.</p>\r\n\r\n<p>Emberton sử dụng True Stereophonic. một dạng &acirc;m thanh đa hướng độc đ&aacute;o từ Marshall. Trải nghiệm &acirc;m thanh 360 độ cho d&ugrave; bạn ngồi ở bất k&igrave; vị tr&iacute; n&agrave;o.</p>\r\n\r\n<p>Thời lượng pin của Marshall chưa bao giờ l&agrave;m người d&ugrave;ng thất vọng v&agrave; Emberton cũng thế với 20 giờ nghe nhạc li&ecirc;n tục. K&iacute;ch thước nhỏ gọn v&agrave; chắc chắn gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh mọi l&uacute;c mọi nơi. Ngo&agrave;i ra, loa cũng hỗ trợ sạc nhanh, chỉ với 20p sạc bạn đ&atilde; c&oacute; ngay 5h nghe nhạc li&ecirc;n tục.</p>\r\n\r\n<p>Thiết kế cứng c&aacute;p v&agrave; c&oacute; khả năng chống nước ipx 7 n&ecirc;n bạn c&oacute; thể chơi nhạc ở ngo&agrave;i b&atilde;i biển, hồ bơi một c&aacute;ch thoải m&aacute;i m&agrave; loa kh&ocirc;ng ảnh hưởng g&igrave;.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Emberton/marshall-emberton-6.jpg" style="height:424px; width:800px" /></p>\r\n\r\n<p>Kiểm so&aacute;t dễ d&agrave;ng v&agrave; đa năng. N&uacute;m điều khiển đa hướng gi&uacute;p bạn c&oacute; thể tua b&agrave;i, tăng giảm &acirc;m lượng, tạm dừng cũng như bật tắt loa.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Emberton/marshall-emberton-5.png" style="height:517px; width:800px" /></p>\r\n\r\n<p>Chuẩn kết nối Bluetooth 5.0 độ ph&acirc;n giải cao, kết nối nhanh ch&oacute;ng v&agrave; đem lại chất lượng &acirc;m thanh kh&ocirc;ng d&acirc;y cực tốt.</p>', 0, 0, 0, '2021-11-02 18:48:48', 20, NULL, NULL, 0, '2021-11-02 18:50:25'),
(4, 'Marshall Kilburn II', 'marshall-kilburn-ii', 6790000, 0, 4, 0, 0, 10, 10, '2021-11-03__1.jpeg', 2, 0, 1, 0, 20, 0, 'Thông số kĩ thuật loa Marshall Kilburn II (2)\r\nCông suất: 36 Watts amply class D (1x20W và 2x8W)\r\nThùng loa tiết kế dạng Bass phản hồi âm\r\nMax SPL đạt 100.4 dB (khoảng cách 1 mét)\r\nĐáp ứng tần số: 52Hz - 20kHz\r\nThời lượng pin: ~20 giờ liên tục (tùy thuộc mức âm lượng)\r\nCó nút tùy chỉnh Bass và Treble dạng cơ vặn\r\nHệ thống loa 2 kênh Stereo\r\nKết nối không dây Bluetooth 5.0 hỗ trợ atpX, hoặc cắm dây 3.5mm\r\nKích thước: 243 x 162 x 140mm\r\nTrọng lượng: 2.5kg\r\nMàu sắc: Đen\r\nChất liệu: loa được bọc da, và ê-căng làm từ lưới thép cao cấp.\r\nNguồn điện sạc sử dụng: 100-240V (50-60Hz)', '<h2>Marshall Kilburn II (2)</h2>\r\n\r\n<p><strong>Kilburn</strong>&nbsp;được người chơi &acirc;m thanh biết đến l&agrave; một t&ecirc;n m&atilde; loa di động c&oacute; pin sạc, kết nối kh&ocirc;ng d&acirc;y, v&agrave; đặc biệt l&agrave; c&oacute; thiết kế cực k&igrave; đẹp mắt, độc quyền từ thương hiệu Marshall của Anh Quốc.</p>\r\n\r\n<p>Nối tiếp sự th&agrave;nh c&ocirc;ng của phi&ecirc;n bản đời đầu, th&igrave; nửa cuối 2018 Marshall đ&atilde; tr&igrave;nh l&agrave;ng mẫu loa mới với t&ecirc;n m&atilde;&nbsp;<strong>Kilburn II (2)</strong>, phi&ecirc;n bản mới kế thừa những điểm mạnh v&agrave; th&agrave;nh c&ocirc;ng của phi&ecirc;n bản cũ, v&agrave; đặc biệt được n&acirc;ng cấp rất nhiều về cấu h&igrave;nh b&ecirc;n trong.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/KILBURN-2/55.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p>Loa được t&iacute;ch hợp chip xử l&yacute; &acirc;m thanh cao cấp hơn, v&agrave; đặc biệt l&agrave; chip Bluetooth 5.0 hỗ trợ c&ocirc;ng nghệ atpX, truyền nhạc với chất lượng cao nhất.</p>\r\n\r\n<p>Thời lượng pin cũng được cải thiện l&ecirc;n tới tr&ecirc;n 20 giờ li&ecirc;n tục, chỉ&nbsp;với&nbsp;2,5 tiếng để sạc đầy.</p>\r\n\r\n<p>&Ecirc;-Căng của loa vẫn giữ được n&eacute;t đẹp truyền thống, nhưng đ&atilde; thay thế bằng &Ecirc;-căng lưới th&eacute;p tr&ocirc;ng cứng c&aacute;p v&agrave; bền bỉ hơn nhiều so với&nbsp;<strong>Kilburn 1</strong>.&nbsp;</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/KILBURN-2/11.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p>C&aacute;c n&uacute;t vặn tinh chỉnh &acirc;m thanh Bass, Treble vẫn giữ thiết kế truyền thống, nhưng được thay đổi m&agrave;u sắc cho ph&ugrave; hợp với chiếc loa tr&ocirc;ng khỏe khoắn v&agrave; thời trang.</p>\r\n\r\n<p>Loa vẫn được bọc da cao cấp, v&agrave; c&oacute; quai da x&aacute;ch tiện lợi. Marshall đ&atilde; n&acirc;ng cấp củ loa b&ecirc;n trong v&agrave; &acirc;m ly Class D mạnh hơn, để chiếc loa c&oacute; c&ocirc;ng suất ~40W (c&ocirc;ng suất m&agrave; ở 1 chiếc loa c&oacute; k&iacute;ch thước nhỏ &iacute;t đạt tới)</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/KILBURN-2/5.jpg" style="height:435px; width:800px" /></p>\r\n\r\n<p>Phi&ecirc;n bản n&agrave;y thực sự l&agrave; một bước tiến đ&aacute;ng gi&aacute; cho những t&iacute;n đồ của Marshall, với 1 chiếc loa nhỏ b&eacute; nhưng lại mang trong m&igrave;nh những c&ocirc;ng nghệ mới, c&ugrave;ng với đ&oacute; l&agrave; n&uacute;t chỉnh &acirc;m tiện lợi m&agrave; &iacute;t loa Bluetooth di động c&oacute;, v&agrave; đặc biệt kh&ocirc;ng thể kh&ocirc;ng n&oacute;i đến l&agrave; &acirc;m thanh sạch, chi tiết c&oacute; thể đ&aacute;p ứng nghe nhạc ở nhiều thể loại kh&aacute;c nhau.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/KILBURN-2/33.jpg" style="height:450px; width:800px" /><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/KILBURN-2/22.jpg" style="height:533px; width:800px" /></p>', 0, 0, 0, '2021-11-02 19:08:24', 20, NULL, NULL, 0, NULL),
(5, 'Marshall Tufton', 'marshall-tufton', 9900000, 0, 4, 0, 0, 5, 10, '2021-11-03__tufton.jpeg', 4, 1, 1, 1, 10, 0, 'hông số kĩ thuật loa Marshall Tuffton\r\nCông suất: 80 Watts amply class D (1x10W, 2x15W và 1x40w)\r\nThùng loa tiết kế dạng Bass phản hồi âm\r\nMax SPL đạt 102 dB (khoảng cách 1 mét)\r\nĐáp ứng tần số: 40Hz - 20kHz\r\nThời lượng pin: ~20 giờ liên tục (tùy thuộc mức âm lượng)\r\nCó nút tùy chỉnh Bass và Treble dạng cơ vặn\r\nHệ thống loa 2 kênh Stereo\r\nKết nối không dây Bluetooth 5.0 hỗ trợ atpX, hoặc cắm dây 3.5mm\r\nKích thước: 229 x 163 x 350 mm\r\nTrọng lượng: 4.9kg\r\nMàu sắc: Đen\r\nChống nước chuẩn IPX2\r\nChất liệu: loa được bọc da, và ê-căng làm từ lưới thép cao cấp.\r\nNguồn điện sạc sử dụng: 100-240V (50-60Hz)', '<h2>Loa di động Marshall&nbsp;Tuffton</h2>\r\n\r\n<p>B&acirc;́t ngờ nửa đầu năm 2019 mà Marshall mang đ&ecirc;́n cho các khách hàng th&acirc;n thi&ecirc;́t đ&oacute; là m&acirc;̃u loa di đ&ocirc;̣ng c&ocirc;ng su&acirc;́t lớn có t&ecirc;n là Tufton. Với h&ecirc;̣ th&ocirc;́ng loa trong có t&ocirc;̉ng c&ocirc;ng su&acirc;́t l&ecirc;n tới 80W, Tufton có th&ecirc;̉ cùng bạn mang &acirc;m nhạc đ&ecirc;́n mọi ngả đường lớn.</p>\r\n\r\n<p>Gi&ocirc;́ng với Stockwell II, Tufton có thời lượng pin l&ecirc;n tới hơn 20 giờ nghe nhạc li&ecirc;n ti&ecirc;́p, được tích hợp bluetooth v5.0, và thi&ecirc;́t k&ecirc;́ ch&ocirc;́ng nước chu&acirc;̉n IPX2 (chống mưa nhẹ). Các thành ph&acirc;̀n đi&ecirc;̀u khi&ecirc;̉n như núm tăng giảm &acirc;m lượng, đi&ecirc;̀u chỉnh bass/treble và các phím b&acirc;́m v&acirc;̣t lý khác v&acirc;̃n được đặt ở mặt tr&ecirc;n của loa.</p>\r\n\r\n<p><strong>Tuffton</strong>&nbsp;được người chơi &acirc;m thanh biết đến l&agrave; một t&ecirc;n m&atilde; loa di động c&oacute; pin sạc, kết nối kh&ocirc;ng d&acirc;y, v&agrave; đặc biệt l&agrave; c&oacute; thiết kế cực k&igrave; đẹp mắt, độc quyền từ thương hiệu Marshall của Anh Quốc.</p>\r\n\r\n<p><img alt="loa marshall tuffton" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Tuffton/5.jpg" style="height:682px; width:900px" /></p>\r\n\r\n<p>Loa được t&iacute;ch hợp chip xử l&yacute; &acirc;m thanh cao cấp hơn, v&agrave; đặc biệt l&agrave; chip Bluetooth 5.0 hỗ trợ c&ocirc;ng nghệ atpX, truyền nhạc với chất lượng cao nhất.</p>\r\n\r\n<p>Thời lượng pin cũng được cải thiện l&ecirc;n tới tr&ecirc;n 20 giờ li&ecirc;n tục, chỉ&nbsp;với&nbsp;2,5 tiếng để sạc đầy.</p>\r\n\r\n<p>C&ocirc;ng nghệ chống nước IPX2, cho nhưng cuộc d&atilde; ngoại nghe nhạc ngo&agrave;i trời kh&ocirc;ng lo mưa gi&oacute;.</p>\r\n\r\n<p>&Ecirc;-Căng của loa vẫn giữ được n&eacute;t đẹp truyền thống, nhưng đ&atilde; thay thế bằng &Ecirc;-căng lưới th&eacute;p tr&ocirc;ng cứng c&aacute;p v&agrave; bền bỉ hơn</p>\r\n\r\n<p><img alt="loa marshall tuffon 2019" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Tuffton/6.jpg" style="height:471px; width:900px" /></p>\r\n\r\n<p>C&aacute;c n&uacute;t vặn tinh chỉnh &acirc;m thanh Bass, Treble vẫn giữ thiết kế truyền thống, nhưng được thay đổi m&agrave;u sắc cho ph&ugrave; hợp với chiếc loa tr&ocirc;ng khỏe khoắn v&agrave; thời trang.</p>\r\n\r\n<p>Loa vẫn được bọc da cao cấp, v&agrave; c&oacute; quai da x&aacute;ch tiện lợi. Marshall đ&atilde; n&acirc;ng cấp củ loa b&ecirc;n trong v&agrave; &acirc;m ly Class D c&ocirc;ng suất ~80W.</p>\r\n\r\n<p><img alt="marshall tuffton 80 watts" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Tuffton/1.jpg" style="height:871px; width:900px" /></p>\r\n\r\n<p>Phi&ecirc;n bản n&agrave;y thực sự l&agrave; một bước tiến đ&aacute;ng gi&aacute; cho những t&iacute;n đồ của Marshall, với 1 chiếc loa nhỏ b&eacute; nhưng lại mang trong m&igrave;nh những c&ocirc;ng nghệ mới, c&ugrave;ng với đ&oacute; l&agrave; n&uacute;t chỉnh &acirc;m tiện lợi m&agrave; &iacute;t loa Bluetooth di động c&oacute;, v&agrave; đặc biệt kh&ocirc;ng thể kh&ocirc;ng n&oacute;i đến l&agrave; &acirc;m thanh sạch, chi tiết c&oacute; thể đ&aacute;p ứng nghe nhạc ở nhiều thể loại kh&aacute;c nhau.</p>\r\n\r\n<p><img alt="Loa tuffton của marshall" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Tuffton/2.jpg" style="height:973px; width:900px" /></p>', 0, 0, 0, '2021-11-02 19:10:48', 9, NULL, NULL, 0, '2021-11-02 19:14:57'),
(6, 'Marshall Stockwell II', 'marshall-stockwell-ii', 4500000, 0, 4, 0, 0, 5, 10, '2021-11-03__stockwell-ii.jpeg', 0, 0, 1, 0, 20, 0, 'Marshall Stockwell 2Stockwell được người chơi âm thanh biết đến là một tên mã loa di động có pin sạc, kết nối không dây, và đặc biệt là có thiết kế cực kì đẹp mắt, độc quyền từ thương hiệu Marshall của Anh Quốc.', '<h2>Marshall&nbsp;Stockwell&nbsp;2</h2>\r\n\r\n<p><strong>Stockwell</strong>&nbsp;được người chơi &acirc;m thanh biết đến l&agrave; một t&ecirc;n m&atilde; loa di động c&oacute; pin sạc, kết nối kh&ocirc;ng d&acirc;y, v&agrave; đặc biệt l&agrave; c&oacute; thiết kế cực k&igrave; đẹp mắt, độc quyền từ thương hiệu Marshall của Anh Quốc.</p>\r\n\r\n<p>Nối tiếp sự th&agrave;nh c&ocirc;ng của phi&ecirc;n bản đời đầu, th&igrave; nửa đầu 2019 Marshall đ&atilde; tr&igrave;nh l&agrave;ng mẫu loa mới với t&ecirc;n m&atilde;&nbsp;<strong>Stockwell II</strong>, phi&ecirc;n bản mới kế thừa những điểm mạnh v&agrave; th&agrave;nh c&ocirc;ng của phi&ecirc;n bản cũ, v&agrave; đặc biệt được n&acirc;ng cấp rất nhiều về cấu h&igrave;nh b&ecirc;n trong, cũng như thiết kế b&ecirc;n ngo&agrave;i</p>\r\n\r\n<p><img alt="stockwell 2 marshall" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Stockwell%202/8.jpg" style="height:506px; width:900px" /></p>\r\n\r\n<p>Loa được t&iacute;ch hợp chip xử l&yacute; &acirc;m thanh cao cấp hơn, v&agrave; đặc biệt l&agrave; chip Bluetooth 5.0 hỗ trợ c&ocirc;ng nghệ atpX, truyền nhạc với chất lượng cao nhất.</p>\r\n\r\n<p>Thời lượng pin cũng được cải thiện l&ecirc;n tới tr&ecirc;n 20 giờ li&ecirc;n tục, chỉ&nbsp;với&nbsp;2,5 tiếng để sạc đầy.</p>\r\n\r\n<p>C&ocirc;ng nghệ chống nước IPX4, cho nhưng cuộc d&atilde; ngoại nghe nhạc ngo&agrave;i trời kh&ocirc;ng lo mưa gi&oacute;.</p>\r\n\r\n<p>&Ecirc;-Căng của loa vẫn giữ được n&eacute;t đẹp truyền thống, nhưng đ&atilde; thay thế bằng &Ecirc;-căng lưới th&eacute;p tr&ocirc;ng cứng c&aacute;p v&agrave; bền bỉ hơn nhiều so với&nbsp;<strong>Stockwell 1</strong>.&nbsp;</p>\r\n\r\n<p><img src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Stockwell%202/2.jpg" style="height:354px; width:492px" /><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Stockwell%202/4.jpg" style="height:354px; width:531px" /></p>\r\n\r\n<p>C&aacute;c n&uacute;t vặn tinh chỉnh &acirc;m thanh Bass, Treble vẫn giữ thiết kế truyền thống, nhưng được thay đổi m&agrave;u sắc cho ph&ugrave; hợp với chiếc loa tr&ocirc;ng khỏe khoắn v&agrave; thời trang.</p>\r\n\r\n<p>Loa vẫn được bọc da cao cấp, v&agrave; c&oacute; quai da x&aacute;ch tiện lợi. Marshall đ&atilde; n&acirc;ng cấp củ loa b&ecirc;n trong v&agrave; &acirc;m ly Class D c&ocirc;ng suất ~15W.</p>\r\n\r\n<p><img alt="stockwell 2 marshall 2019" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Stockwell%202/3.jpg" style="height:790px; width:900px" /></p>\r\n\r\n<p>Phi&ecirc;n bản n&agrave;y thực sự l&agrave; một bước tiến đ&aacute;ng gi&aacute; cho những t&iacute;n đồ của Marshall, với 1 chiếc loa nhỏ b&eacute; nhưng lại mang trong m&igrave;nh những c&ocirc;ng nghệ mới, c&ugrave;ng với đ&oacute; l&agrave; n&uacute;t chỉnh &acirc;m tiện lợi m&agrave; &iacute;t loa Bluetooth di động c&oacute;, v&agrave; đặc biệt kh&ocirc;ng thể kh&ocirc;ng n&oacute;i đến l&agrave; &acirc;m thanh sạch, chi tiết c&oacute; thể đ&aacute;p ứng nghe nhạc ở nhiều thể loại kh&aacute;c nhau.</p>\r\n\r\n<p><img alt="loa stockwell 2" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Marshall/Stockwell%202/6.jpg" style="height:865px; width:800px" /></p>', 0, 0, 0, '2021-11-02 19:16:26', 20, NULL, NULL, 0, '2021-11-02 19:17:27'),
(7, 'Harman Kardon Onyx Studio 5', 'harman-kardon-onyx-studio-5', 3500000, 0, 6, 0, 0, 0, 10, '2021-11-03__studio-5.jpeg', 4, 0, 1, 0, 10, 0, 'Harman Kardon Onyx Studio 5\r\nGiới chơi âm thanh thời gian gần đây chắc hẳn không còn lạ lẫm gì với cái tên Onyx Studio, đây là một trong những mã sản phẩm tạo nên những đột biến trong dòng loa Bluetooth di động mà Harmar Kardon đã làm rất tốt, và ngày một cải tiến, cho tới cuối 2018 Onyx Studio 5 đã được trình làng, và độ hot của loạt sản phẩm Onyx vẫn không hề giảm nhiệt.', '<h2>Harman Kardon&nbsp;Onyx Studio 5</h2>\r\n\r\n<p>Giới chơi &acirc;m thanh thời gian gần đ&acirc;y chắc hẳn kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; với c&aacute;i t&ecirc;n Onyx Studio, đ&acirc;y l&agrave; một trong những m&atilde; sản phẩm tạo n&ecirc;n những đột biến trong d&ograve;ng loa Bluetooth di động m&agrave; Harmar Kardon đ&atilde;&nbsp;l&agrave;m rất tốt, v&agrave; ng&agrave;y một cải tiến, cho tới cuối 2018 Onyx Studio 5 đ&atilde; được tr&igrave;nh l&agrave;ng, v&agrave;&nbsp;độ hot của loạt sản phẩm Onyx&nbsp;vẫn kh&ocirc;ng hề giảm nhiệt.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/ONYX ST5/6.JPG" style="height:500px; width:500px" /><img src="https://dientulinhanh.com/image/data/ONYX ST5/8.JPG" style="height:500px; width:500px" /></p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/ONYX ST5/11.JPG" style="height:322px; width:1000px" /></p>\r\n\r\n<p>- Với khoảng ~7 triệu đồng trong tay nếu bạn đang gặp kh&oacute; khăn trong việc lựa chọn cho m&igrave;nh một chiếc loa kết nối kh&ocirc;ng d&acirc;y k&iacute;ch thước nhỏ gọn, gi&aacute; th&agrave;nh phải chăng nhưng lại c&oacute; pin sạc, m&agrave; c&oacute; thể mang lại một chất &acirc;m tốt với c&ocirc;ng suất cực khủng - Harman Kardon ONYX STUDIO 5 thực sự l&agrave; một lựa chọn kh&ocirc;ng phải hối tiếc.</p>\r\n\r\n<p>- Onyx Studio một m&atilde; sản phẩm của Harman đ&atilde; trở n&ecirc;n quen thuộc trong giới chơi loa thời gian gần đ&acirc;y - tiếp nối sự th&agrave;nh c&ocirc;ng của c&aacute;c đ&agrave;n &quot;anh&quot; ONYX STUDIO 5 một trong những lựa chọn cho d&ograve;ng loa Bluetooth tốt nhất hiện nay.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/ONYX ST5/22.JPG" style="height:409px; width:1000px" /></p>\r\n\r\n<p>* Chất &acirc;m tốt ph&ugrave; hợp với nhiều thể loại &acirc;m nhạc, &acirc;m Bass chắc khỏe, v&agrave; d&agrave;y đ&atilde; được khẳng định từ c&aacute;c thế hệ trước đ&oacute; của d&ograve;ng Onyx Studio.</p>\r\n\r\n<p>* C&oacute; thể kết nối nhiều loa c&ugrave;ng l&uacute;c nh&acirc;n đ&ocirc;i c&ocirc;ng suất, khiến bạn phải ngạc nhi&ecirc;n khi căn ph&ograve;ng rộng lớn được lấp đầy &acirc;m thanh, chỉ với những chiếc loa nhỏ b&eacute;.</p>\r\n\r\n<p>* K&iacute;ch thước nhỏ nhưng với 4 Drivers cho c&ocirc;ng suất l&ecirc;n đến 50W.</p>\r\n\r\n<p>* Thời gian chơi nhạc chất lượng cao 8 giờ li&ecirc;n tục, v&agrave; đ&atilde; khắc phục ho&agrave;n to&agrave;n nhược điểm chai pin của c&aacute;c đ&agrave;n anh trước đ&oacute;.</p>\r\n\r\n<p>* T&iacute;ch hợp microphone hỗ trợ đ&agrave;m thoại trực tiếp tr&ecirc;n loa.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/ONYX ST5/33.JPG" style="height:397px; width:1000px" /></p>', 0, 0, 0, '2021-11-02 19:19:56', 10, NULL, NULL, 0, NULL),
(8, 'Harman Kardon Onyx Studio 6', 'harman-kardon-onyx-studio-6', 4500000, 0, 6, 0, 0, 5, 10, '2021-11-03__onyxstudio6-8.png', 2, 0, 1, 0, 10, 0, 'Harman Kardon Onyx Studio 6\r\nGiới chơi âm thanh không còn lạ lẫm gì với cái tên Onyx Studio, đây là một trong những mã sản phẩm tạo nên những đột biến trong dòng loa Bluetooth di động mà Harmar Kardon đã làm rất tốt, và ngày một cải tiến, cho tới cuối 2019 Onyx Studio 6 đã được trình làng, và độ hot của loạt sản phẩm Onyx vẫn không hề giảm nhiệt.', '<h2>Harman Kardon&nbsp;Onyx Studio 6</h2>\r\n\r\n<p>Giới chơi &acirc;m thanh kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; với c&aacute;i t&ecirc;n Onyx Studio, đ&acirc;y l&agrave; một trong những m&atilde; sản phẩm tạo n&ecirc;n những đột biến trong d&ograve;ng loa Bluetooth di động m&agrave; Harmar Kardon đ&atilde;&nbsp;l&agrave;m rất tốt, v&agrave; ng&agrave;y một cải tiến, cho tới cuối 2019 Onyx Studio 6 đ&atilde; được tr&igrave;nh l&agrave;ng, v&agrave;&nbsp;độ hot của loạt sản phẩm Onyx&nbsp;vẫn kh&ocirc;ng hề giảm nhiệt.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="loa onyx 6 màu xanh" src="https://dientulinhanh.com/image/data/ONYX ST5/6.JPG" style="height:500px; width:500px" /><img alt="loa Onyx Studio 6 " src="https://dientulinhanh.com/image/data/ONYX ST5/8.JPG" style="height:500px; width:500px" /></p>\r\n\r\n<p><img alt="loa onyx 6" src="https://dientulinhanh.com/image/data/ONYX ST5/11.JPG" style="height:536px; width:1000px" /></p>\r\n\r\n<p>- Với khoảng ~7 triệu đồng trong tay nếu bạn đang gặp kh&oacute; khăn trong việc lựa chọn cho m&igrave;nh một chiếc loa kết nối kh&ocirc;ng d&acirc;y k&iacute;ch thước nhỏ gọn v&agrave; c&oacute; pin sạc, m&agrave; c&oacute; thể mang lại một chất &acirc;m tốt , trung &acirc;m ấm &aacute;p, bass mềm nghe l&acirc;u kh&ocirc;ng bị mệt, loa với c&ocirc;ng suất tr&ecirc;n 50w&nbsp;- Harman Kardon ONYX STUDIO&nbsp;6 thực sự l&agrave; một lựa chọn kh&ocirc;ng phải hối tiếc.</p>\r\n\r\n<p>- Onyx Studio một m&atilde; sản phẩm của Harman đ&atilde; trở n&ecirc;n quen thuộc trong giới chơi loa thời gian gần đ&acirc;y - tiếp nối sự th&agrave;nh c&ocirc;ng của c&aacute;c đ&agrave;n &quot;anh&quot; ONYX STUDIO&nbsp;6 một trong những lựa chọn cho d&ograve;ng loa Bluetooth tốt nhất 2019.</p>\r\n\r\n<p><img alt="loa onyx studio 6" src="https://dientulinhanh.com/image/data/ONYX ST5/22.JPG" style="height:521px; width:1000px" /></p>\r\n\r\n<p>* Chất &acirc;m tốt ph&ugrave; hợp với nhiều thể loại &acirc;m nhạc, &acirc;m Bass mềm, v&agrave; đầy đặn đ&atilde; được khẳng định từ c&aacute;c thế hệ trước đ&oacute; của d&ograve;ng Onyx Studio.</p>\r\n\r\n<p>* C&oacute; thể kết nối nhiều loa c&ugrave;ng l&uacute;c nh&acirc;n đ&ocirc;i c&ocirc;ng suất, khiến bạn phải ngạc nhi&ecirc;n khi căn ph&ograve;ng rộng lớn được lấp đầy &acirc;m thanh, chỉ với 2 chiếc loa nhỏ b&eacute;.</p>\r\n\r\n<p>* K&iacute;ch thước nhỏ nhưng với&nbsp;2 Drivers k&egrave;m củ loa to&agrave;n dải v&agrave; Passive Radiator k&iacute;ch thước lớn, &acirc;m ly trong c&ocirc;ng suất l&ecirc;n đến tr&ecirc;n 50W.</p>\r\n\r\n<p>* Thời gian chơi nhạc chất lượng cao 8 giờ li&ecirc;n tục, v&agrave; đ&atilde; khắc phục ho&agrave;n to&agrave;n nhược điểm pin yếu của c&aacute;c đ&agrave;n anh trước đ&oacute;.</p>\r\n\r\n<p>* T&iacute;ch hợp microphone hỗ trợ đ&agrave;m thoại trực tiếp tr&ecirc;n loa.</p>\r\n\r\n<p><img alt="HK Onyx Studio 6" src="https://dientulinhanh.com/image/data/ONYX ST5/33.JPG" style="height:490px; width:1000px" /></p>', 0, 0, 0, '2021-11-02 19:21:28', 10, NULL, NULL, 0, NULL),
(9, 'Harman Kardon Onyx Studio 7', 'harman-kardon-onyx-studio-7', 5990000, 0, 6, 0, 0, 3, 10, '2021-11-03__studio7.jpeg', 2, 0, 1, 0, 10, 0, 'THÔNG TIN\r\n \r\nTHÔNG SỐ KỸ THUẬT\r\n \r\nVIDEO & REVIEW\r\nHarman Kardon Onyx Studio 7\r\nHarman Kardon Onyx Studio 7 là loa mới nhất trong series Onyx studio được thương hiệu Harman Kardon đưa đến thị trường âm thanh, kế thừa hoàn hảo những tính năng của người tiền nhiệm trước Onyx Studio 6 nhưng lại mang đến nhưng cải tiến vượt trội hơn. Hứa hẹn sẽ đem đến cho người dùng những trải nghiệm tuyệt vời, là lựa chọn tối ưu Loa Harman Kardon Onyx Studio 7 hiện đang rất được giới trẻ tại Việt Nam yêu thích, chờ đợi, mua sắm. Sản phẩm có 3 mầu chủ đạo như các thế hệ đàn anh đi trước với đen; xám và Xanh', '<p><strong>Harman Kardon Onyx Studio 7</strong></p>\r\n\r\n<p><strong>Harman Kardon Onyx Studio 7</strong>&nbsp;l&agrave; loa&nbsp;mới nhất&nbsp;trong series Onyx studio&nbsp;được thương hiệu Harman Kardon đưa đến thị trường &acirc;m thanh, kế thừa ho&agrave;n hảo những t&iacute;nh năng của người tiền nhiệm trước Onyx Studio 6 nhưng lại mang đến nhưng cải tiến vượt trội hơn. Hứa hẹn sẽ đem đến cho người d&ugrave;ng những trải nghiệm tuyệt vời, l&agrave; lựa chọn tối ưu Loa Harman Kardon Onyx Studio 7 hiện đang rất được giới trẻ tại Việt Nam y&ecirc;u th&iacute;ch, chờ đợi, mua sắm. Sản phẩm c&oacute; 3 mầu chủ đạo như c&aacute;c thế hệ đ&agrave;n anh đi trước với đen; x&aacute;m v&agrave; Xanh</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Harman-Kardon/onyx%20studio%207/_loa-harman-kardon-onyx-studio-7-9.png" style="height:300px; width:800px" /></p>\r\n\r\n<p>Vẫn mang trong m&igrave;nh những đặc điểm thiết kế ri&ecirc;ng biệt của h&atilde;ng cũng như c&aacute;c model trước nhưng đ&atilde; được cải tiến về h&igrave;nh d&aacute;ng mang đến sự tiện lợi v&agrave; đẹp mắt hơn rất nhiều.</p>\r\n\r\n<p>Thiết kế h&igrave;nh d&aacute;ng tr&ograve;n thanh lịch c&oacute; tay cầm bằng nh&ocirc;m anodized đ&uacute;c kiểu d&aacute;ng đẹp để dễ d&agrave;ng di chuyển. Onyx Studio 7 c&oacute; sẵn trong ba t&ugrave;y chọn m&agrave;u - Đen than, Xanh biển v&agrave; X&aacute;m m&ugrave;a đ&ocirc;ng, thoải m&aacute;i cho bạn lựa chọn theo sở th&iacute;ch, vẻ ngo&agrave;i hiện đại, sang trọng.</p>\r\n\r\n<p>Thiết kế với phần khung nh&ocirc;m bảo vệ loa chống va đập, t&aacute;c động mạnh từ yếu tố ngoại lực b&ecirc;n ngo&agrave;i. B&ecirc;n ngo&agrave;i được phủ lớp vải cao cấp che chắn, bảo vệ hệ thống củ loa b&ecirc;n trong, sản phẩm c&oacute; 3 m&agrave;u sắc bao gồm:&nbsp;Charcoal Black, Marine Blue, Winter Gray (Đen than, Xanh biển v&agrave; X&aacute;m m&ugrave;a đ&ocirc;ng).</p>\r\n\r\n<p><img alt="onyx 7" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Harman-Kardon/onyx%20studio%207/2.jpg" style="height:800px; width:800px" /></p>\r\n\r\n<p><strong>Thiết kế độc đ&aacute;o, C&ocirc;ng nghệ cao cấp.</strong></p>\r\n\r\n<ul>\r\n	<li>Thiết kế mới lạ h&igrave;nh tr&ograve;n với tay cầm&nbsp;bằng nh&ocirc;m anodized đ&uacute;c kiểu d&aacute;ng đẹp để dễ d&agrave;ng di chuyển</li>\r\n	<li>T&aacute;i hiện &acirc;m thanh chi tiết ho&agrave;n hảo với&nbsp;hai loa tweeter k&eacute;p 25mm cho &acirc;m thanh nổi trung thực, kết hợp với &acirc;m trầm mạnh mẽ thương hiệu&nbsp;<strong>Harman Kardon</strong></li>\r\n	<li>C&ocirc;ng nghệ kết nối bluetooth kh&ocirc;ng d&acirc;y mới nhất&nbsp;gi&uacute;p tối ưu khả năng truyền ph&aacute;t kh&ocirc;ng d&acirc;y cũng như chất lượng &acirc;m thanh</li>\r\n	<li>Pin l&ecirc;n tới 8 giờ mạnh mẽ, sạc lại chỉ mất 4 - 5h cho 1 lần sạc.</li>\r\n	<li>C&oacute; thể gh&eacute;p nối dễ d&agrave;ng 2 loa&nbsp;Harman Kardon Onyx Studio 7 lại với nhau th&ocirc;ng qua t&iacute;nh năng &quot;Harman Kardon wireless Dual Sound&quot; được t&iacute;ch hợp.</li>\r\n	<li><em><strong>Loa&nbsp;Harman&nbsp;Onyx 7</strong></em>&nbsp;hoạt động ở mức c&ocirc;ng suất &nbsp;50W cho &acirc;m thanh ch&acirc;n thực, chi tiết, chơi tốt ở nhiều d&ograve;ng nhạc, thể loại kh&aacute;c nhau, bạn ho&agrave;n to&agrave;n c&oacute; thể thoải m&aacute;i trải nghiệm nhiều &acirc;m thanh tuyệt vời.</li>\r\n	<li>T&iacute;ch hợp c&ocirc;ng nghệ kết nối Bluetooth 4.2&nbsp;cho khả năng truyền tải t&iacute;n hiệu với tốc độ nhanh ch&oacute;ng, năng lượng ti&ecirc;u thụ vừa đủ g&oacute;p phẩn tiết kiệm điện.</li>\r\n	<li>Cải tiến &acirc;m thanh th&ecirc;m ho&agrave;n hảo v&agrave; chi tiết với với hai loa tweeter k&eacute;p 25mm cho &acirc;m thanh nổi trung thực, kết hợp với &acirc;m trầm mạnh mẽ mang thương hiệu H/K, sản phẩm sẽ l&agrave; sựa lựa chọn ho&agrave;n hảo cho những kh&ocirc;ng gian ph&ograve;ng.</li>\r\n</ul>\r\n\r\n<p><img alt="Onyx studio 7" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/Harman-Kardon/onyx%20studio%207/3.jpg" style="height:800px; width:800px" /></p>\r\n\r\n<p>T&iacute;ch hợp c&ocirc;ng nghệ kết nối Bluetooth 4.2&nbsp;cho khả năng truyền tải t&iacute;n hiệu với tốc độ nhanh ch&oacute;ng, năng lượng ti&ecirc;u thụ vừa đủ g&oacute;p phẩn tiết kiệm điện.</p>\r\n\r\n<p>Để n&acirc;ng cao trải nghiệm nghe, những người đam m&ecirc; &acirc;m nhạc c&oacute; thể gh&eacute;p nối hai bộ Onyx Studio 7 bằng t&iacute;nh năng &Acirc;m thanh K&eacute;p kh&ocirc;ng d&acirc;y Harman Kardon đem đến chất lượng &acirc;m thanh b&ugrave;ng nổ.</p>\r\n\r\n<p>Khả năng hiệu chỉnh dễ d&agrave;ng th&ocirc;ng qua hệ thống n&uacute;t hiệu chỉnh được&nbsp;thiết kế lồi ngay ph&iacute;a tr&ecirc;n bao gồm: N&uacute;t bật chế độ bluetooth, n&uacute;t giảm &acirc;m lượng, n&uacute;t nguồn, n&uacute;t tăng &acirc;m lượng v&agrave; n&uacute;t dừng b&agrave;i h&aacute;t.</p>', 0, 0, 0, '2021-11-02 19:23:19', 10, NULL, NULL, 0, NULL),
(10, 'Harman Kardon Go Play', 'harman-kardon-go-play', 6590000, 0, 6, 0, 0, 5, 10, '2021-11-03__go-play.jpeg', 2, 0, 1, 0, 10, 0, 'Harman Kardon Go Play\r\nGiới chơi âm thanh chắc hẳn không còn lạ lẫm gì với cái tên Go + Play, đây là một trong những mã sản phẩm tạo nên những đột biến trong dòng loa Bluetooth di động mà Harmar Kardon đã làm làm rất tốt, và ngày một cải tiến, và tới nay là mẫu Go Play Mini, nhưng độ hot của sản phẩm này vẫn không hề giảm nhiệt.', '<h2>Harman Kardon&nbsp;Go&nbsp;Play</h2>\r\n\r\n<p>Giới chơi &acirc;m thanh chắc hẳn kh&ocirc;ng c&ograve;n lạ lẫm g&igrave; với c&aacute;i t&ecirc;n Go + Play, đ&acirc;y l&agrave; một trong những m&atilde; sản phẩm tạo n&ecirc;n những đột biến trong d&ograve;ng loa Bluetooth di động m&agrave; Harmar Kardon đ&atilde; l&agrave;m l&agrave;m rất tốt, v&agrave; ng&agrave;y một cải tiến, v&agrave; tới nay l&agrave; mẫu Go Play Mini, nhưng độ hot của sản phẩm n&agrave;y vẫn kh&ocirc;ng hề giảm nhiệt.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/Harman Kardon/Go + Play/GOPLAY WEB.jpg" style="height:394px; width:700px" /></p>\r\n\r\n<p>&nbsp;&nbsp; - Với khoảng 6 triệu đồng trong tay nếu bạn đang gặp kh&oacute; khăn trong việc lựa chọn cho m&igrave;nh một chiếc loa kết nối kh&ocirc;ng d&acirc;y k&iacute;ch thước vừa phải, c&oacute; quai x&aacute;ch, gi&aacute; th&agrave;nh phải chăng nhưng lại c&oacute; pin sạc, m&agrave; c&oacute; thể mang lại một chất &acirc;m tốt với c&ocirc;ng suất cực khủng - Harman Kardon Go + Play Mini thực sự l&agrave; một lựa chọn s&aacute;ng suốt.</p>\r\n\r\n<p>&nbsp;&nbsp;- Go + Play một m&atilde; sản phẩm của Harman đ&atilde; trở n&ecirc;n quen thuộc trong giới chơi loa với những mẫu loa đ&igrave;nh đ&aacute;m trước đ&oacute; - tiếp nối sự th&agrave;nh c&ocirc;ng của c&aacute;c đ&agrave;n &quot;anh&quot; Go + Play Mini một trong những lựa chọn cho d&ograve;ng loa Bluetooth c&ocirc;ng suất lớn tốt nhất hiện nay.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/Harman Kardon/Go + Play/20160716_124917.jpg" style="height:394px; width:700px" /></p>\r\n\r\n<p>* Chất &acirc;m tốt ph&ugrave; hợp với nhiều thể loại &acirc;m nhạc, &acirc;m Bass chắc khỏe, v&agrave; d&agrave;y đ&atilde; được khẳng định từ c&aacute;c thế hệ trước đ&oacute; của d&ograve;ng Go + Play.</p>\r\n\r\n<p>*&nbsp;H&Agrave;NG C&Ocirc;NG TY, được bảo h&agrave;nh ch&iacute;nh h&atilde;ng tr&ecirc;n to&agrave;n quốc 12 th&aacute;ng, v&agrave; được đổi mới trong 15 ng&agrave;y nếu c&oacute; lỗi nh&agrave; sản xuất.</p>\r\n\r\n<p>*&nbsp;C&oacute; thể kết nối 2 loa c&ugrave;ng l&uacute;c nh&acirc;n đ&ocirc;i c&ocirc;ng suất, khiến bạn phải ngạc nhi&ecirc;n khi căn ph&ograve;ng rộng lớn được lấp đầy &acirc;m thanh, chỉ với 2 chiếc loa nhỏ b&eacute;.</p>\r\n\r\n<p>*&nbsp;K&iacute;ch thước nhỏ nhưng với 4 Drivers v&agrave; 1 Bass Radiator cộng hưởng &acirc;m, cho c&ocirc;ng suất l&ecirc;n đến 60W.</p>\r\n\r\n<p>*&nbsp;Thời gian chơi nhạc chất lượng cao 08 giờ li&ecirc;n tục, sạc đầy pin loa mất 03 giờ.</p>\r\n\r\n<p>*&nbsp;T&iacute;ch hợp microphone c&oacute; t&iacute;nh năng khử ồn, hỗ trợ đ&agrave;m thoại chất lượng cao trực tiếp tr&ecirc;n loa.</p>\r\n\r\n<p>*&nbsp;Go Play Mini được Harman Kardon&nbsp;mang đến cho ch&uacute;ng ta với 4 t&iacute;nh năng đ&aacute;ng gi&aacute; m&agrave; h&atilde;ng n&acirc;ng cấp, ho&agrave;n thiện một c&aacute;ch tỉ mỉ cho sản phẩm thế hệ mới n&agrave;y.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/Harman Kardon/Go + Play/loa-harman-kardon-go-play-80.jpg" style="height:649px; width:700px" /></p>\r\n\r\n<p>T&iacute;nh năng:</p>\r\n\r\n<p>- Go Play Mini c&oacute; thể thực hiện thao t&aacute;c kết nối với hai loa c&ugrave;ng một l&uacute;c ở chế độ Dual Sound, nh&acirc;n đ&ocirc;i c&ocirc;ng suất v&agrave; cộng hưởng Bass l&ecirc;n cực mạnh.</p>\r\n\r\n<p>- Việc kết nối với thiết bị sẽ nhanh, tiết kiệm pin v&agrave; ổn định hơn nhờ c&ocirc;ng nghệ bluetooth 4.1.</p>\r\n\r\n<p>- Ngo&agrave;i ra việc kết nối cực k&igrave; tiện lợi, v&agrave; ho&agrave;n to&agrave;n tự động bởi ở chế độ Social Mode gi&uacute;p cho m&aacute;y c&oacute; thể kết nối với 3 thiết bị c&ugrave;ng một l&uacute;c.</p>\r\n\r\n<p>- C&ocirc;ng suất của&nbsp;Go + Play Mini l&ecirc;n đến 100W (4x25W)</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/Harman Kardon/Go + Play/go 2.jpg" style="height:485px; width:700px" /></p>\r\n\r\n<p>Thiết kế:</p>\r\n\r\n<p>- Harman Kardon Go + Play Mini&nbsp;được nh&agrave; sản xuất cho ra mắt với 2 m&agrave;u lựa chọn: Đen, Trắng.</p>\r\n\r\n<p>- Thiết kế mặt lưới vải canvat d&ugrave; phủ nano chống nước v&agrave; bụi bẩn, bảo vệ loa tuyệt đối, tăng độ bền của loa.</p>\r\n\r\n<p>- Ph&iacute;a tr&ecirc;n của loa l&agrave; tay x&aacute;ch bằng th&eacute;p kh&ocirc;ng gỉ, thiết kế khỏe khoắn, trẻ trung.</p>\r\n\r\n<p>- Với mặt tr&ecirc;n được bố tr&iacute; c&aacute;c ph&iacute;m bấm th&acirc;n thiện, gi&uacute;p cho việc điều chỉnh dễ d&agrave;ng hơn.</p>\r\n\r\n<p>- Trọng lượng của&nbsp;Go + Play Mini kh&aacute; nhẹ chỉ 4.3kg dễ d&agrave;ng mang đi khi di chuyển.</p>\r\n\r\n<p>- Ph&iacute;a ch&acirc;n loa c&oacute; đệm cao su chống trượt, v&agrave; b&aacute;m chắc tr&ecirc;n mặt s&agrave;n.</p>\r\n\r\n<p><img src="https://dientulinhanh.com/image/data/Harman Kardon/Go + Play/harman_goplay_06.jpg" style="height:478px; width:700px" /></p>\r\n\r\n<p>Chất lượng &acirc;m thanh:</p>\r\n\r\n<p>Tiếng t&aacute;ch biệt r&otilde; r&agrave;ng, &acirc;m trung ấm v&agrave; d&agrave;y, &acirc;m Bass chắc, c&oacute; chiều s&acirc;u, d&ugrave; bật ở mức &acirc;m lượng tối đa loa cũng sẽ kh&ocirc;ng bị r&egrave; hay vỡ tiếng.</p>\r\n\r\n<p>Với Go + Play Mini - loa kh&ocirc;ng d&acirc;y sử dụng c&ocirc;ng nghệ Bluetooth 4.1 gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể thưởng thức &acirc;m nhạc chất lượng cao ở bất cứ đ&acirc;u.</p>\r\n\r\n<p>Loa sử dụng được li&ecirc;n tục hơn 8 giờ ở mức &acirc;m lượng trung b&igrave;nh. Ngo&agrave;i ra, Micro được t&iacute;ch hợp c&oacute; khả năng lọc tạp &acirc;m, hỗ trợ c&aacute;c cuộc gọi r&otilde; r&agrave;ng hơn.</p>\r\n\r\n<p>&nbsp;Kết nối tương th&iacute;ch với c&aacute;c điện thoại th&ocirc;ng minh, laptop, m&aacute;y t&iacute;nh bảng v.v...</p>', 0, 0, 0, '2021-11-02 19:25:44', 10, NULL, NULL, 0, NULL),
(11, 'JBL Boombox 2', 'jbl-boombox-2', 9800000, 0, 5, 0, 0, 10, 10, '2021-11-03__jbl-boombox-2.jpeg', 1, 0, 1, 1, 10, 0, 'Loa JBL Boombox 2', '<h2>Loa JBL Boombox 2</h2>\r\n\r\n<p><strong>Thiết kế</strong></p>\r\n\r\n<p>Về thiết kế, Boombox 2 c&oacute; vẻ ngo&agrave;i đặc trưng của d&ograve;ng loa n&agrave;y với k&iacute;ch thước kh&aacute; lớn 484 x 201 x 256 mm c&ugrave;ng trọng lượng 5.9kg. B&ecirc;n cạnh đ&oacute;, từng đường n&eacute;t tr&ecirc;n loa được JBL thiết kế với sự đầu tư r&otilde; rệt, mọi thứ được chế tạo một c&aacute;c chỉnh chu, gọn g&agrave;ng v&agrave; trau chuốt.</p>\r\n\r\n<p>JBL Boombox 2 sở hữu kiểu d&aacute;ng với h&igrave;nh trụ bắt mắt, đi k&egrave;m với đ&oacute; l&agrave; kiểu tay cầm biểu tượng của Boombox. Với tay cầm n&agrave;y, bạn c&oacute; thể di chuyển dễ d&agrave;ng chiếc loa từ nơi n&agrave;y sang nơi kh&aacute;c để Boombox 2 c&oacute; thể đồng h&agrave;nh với bạn trong mọi cuộc vui.</p>\r\n\r\n<p><img alt="" src="https://www.mainguyen.vn/img/2020/04/product/JBL%20Boombox%202/BL-Boombox-2-1.jpg" style="height:353px; width:850px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hệ thống &acirc;m thanh</strong></p>\r\n\r\n<p>Loa Boombox thế hệ thứ 2 n&agrave;y được h&atilde;ng khẳng định l&agrave; thế hệ loa di động mới v&agrave; lớn nhất của JBL c&ugrave;ng với đ&oacute; sở hữu dải &acirc;m trầm mạnh v&agrave; s&acirc;u nhất. B&ecirc;n cạnh đ&oacute;, loa c&oacute; c&ocirc;ng suất lớn c&ugrave;ng khả năng t&aacute;i tạo &acirc;m thanh b&ugrave;ng nổ, dải bass mạnh mẽ, vượt trội so với một d&ograve;ng loa di động. Do đ&oacute;, bạn chỉ cần để mức &acirc;m lượng 50% l&agrave; đ&atilde; c&oacute; thể tận hưởng kh&ocirc;ng gian &acirc;m thanh ngập tr&agrave;n trong cả căn ph&ograve;ng.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Boombox%202/12.jpg" style="height:437px; width:800px" /></p>\r\n\r\n<p>Boombox 2 được trang bị 2 loa woofer c&oacute; k&iacute;ch thước 106mm ở mặt trước, kế b&ecirc;n đ&oacute; l&agrave; 2 loa tweeter 20mm đ&aacute;nh dải mid v&agrave; treble, đi c&ugrave;ng với đ&oacute; l&agrave; driver cộng hưởng trầm nằm ở 2 b&ecirc;n h&ocirc;ng. Tất cả đem lại khả năng phản hồi &acirc;m tốt, truyền tải chất &acirc;m chuẩn JBL.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Boombox%202/10.jpg" style="height:496px; width:800px" /></p>\r\n\r\n<p><strong>T&iacute;nh năng Party Boost</strong></p>\r\n\r\n<p>JBL đ&atilde; t&iacute;ch hợp Party Boost, t&iacute;nh năng đặc trưng của c&aacute;c d&ograve;ng loa di động nhằm tăng cường c&ocirc;ng suất cho những buổi tiệc ngo&agrave;i trời hay những s&acirc;n khấu c&oacute; quy m&ocirc; lớn. Hơn nữa, ngo&agrave;i kết nối kh&ocirc;ng d&acirc;y th&ocirc;ng qua Bluetooth như th&ocirc;ng thường, c&ocirc;ng nghệ JBL Connect + cho ph&eacute;p thiết lập hệ thống li&ecirc;n kết loa với nhau để ph&aacute;t nhạc trong một kh&ocirc;ng gian rộng lớn hoặc đa ph&ograve;ng. Đ&acirc;y ch&iacute;nh l&agrave; một c&ocirc;ng nghệ được x&aacute;c nhận kỉ lục của h&atilde;ng JBL về số lượng c&aacute;c loa di động c&oacute; thể kết nối với nhau.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Boombox%202/11.jpg" style="height:496px; width:800px" /></p>\r\n\r\n<p><strong>Khả năng kh&aacute;ng nước IPX7</strong></p>\r\n\r\n<p>Được t&iacute;ch hợp khả năng kh&aacute;ng nước chuẩn IPX7, Boombox 2 c&oacute; thể ng&acirc;m trong độ s&acirc;u 1m trong thời gian 30 ph&uacute;t. Nhờ vậy, JBL Boombox 2 ho&agrave;n ho&agrave;n c&oacute; thể sử dụng trong những bữa tiệc hồ bơi, ngo&agrave;i trời m&agrave; kh&ocirc;ng gặp bất cứ vấn đề g&igrave;.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Boombox%202/9.jpg" style="height:496px; width:800px" /></p>\r\n\r\n<p><strong>Nghe nhạc li&ecirc;n tục 24 giờ</strong></p>\r\n\r\n<p>Với thời lượng sử dụng l&ecirc;n đến 24 giờ, JBL Boombox 2 sẽ cho ph&eacute;p ph&aacute;t nhạc suốt cả ng&agrave;y, đảm bảo cuộc vui sẽ được k&eacute;o d&agrave;i với &acirc;m nhạc s&ocirc;i động, chất lượng. Ngo&agrave;i ra, loa c&ograve;n t&iacute;ch hợp cổng sạc cho ph&eacute;p bạn nạp đầy năng lượng cho thiết bị di động của m&igrave;nh để cuộc vui vẫn tiếp tục trong thời gian d&agrave;i.</p>', 0, 0, 0, '2021-11-02 19:27:19', 10, NULL, NULL, 0, NULL),
(12, 'JBL Pulse 4', 'jbl-pulse-4', 4690000, 0, 5, 0, 0, 10, 10, '2021-11-03__pulse-4-1.jpeg', 3, 0, 1, 0, 12, 0, 'LOA JBL PULSE 4\r\nLoa JBL Pulse 4 thế hệ kế tiếp của Pulse 3 với nhiều thay đổi về thiết kế đèn nháy đa màu sắc, về ngoại hình đã tuốt bỏ toàn lớp bảo vệ để lộ thân loa với lớp đèn kính sáng trong, với ánh sáng đèn led tạo sự phân tán ánh sáng giúp hiển thị mầu sắc rực rỡ. Thêm phần nổi bật là công nghệ âm thanh 360 độ và cùng chuẩn chống nước IPX7.', '<h2>LOA JBL PULSE&nbsp;4</h2>\r\n\r\n<p>Loa JBL Pulse&nbsp;4 thế hệ kế&nbsp;tiếp của Pulse&nbsp;3 với nhiều thay đổi về thiết kế đ&egrave;n nh&aacute;y đa m&agrave;u sắc, về ngoại h&igrave;nh đ&atilde; tuốt bỏ to&agrave;n lớp bảo vệ để lộ th&acirc;n loa với lớp đ&egrave;n k&iacute;nh&nbsp;s&aacute;ng trong, với&nbsp;&aacute;nh s&aacute;ng đ&egrave;n led&nbsp;tạo sự ph&acirc;n t&aacute;n &aacute;nh s&aacute;ng gi&uacute;p hiển thị mầu sắc rực rỡ. Th&ecirc;m phần&nbsp;nổi bật l&agrave; c&ocirc;ng nghệ &acirc;m thanh 360 độ v&agrave; c&ugrave;ng chuẩn chống nước IPX7.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="JBL Pulse 4" src="https://dientulinhanh.com/image/data/JBL/pulse3/jbl-pulse-3_4.jpeg" style="height:618px; width:1100px" />&nbsp;<img alt="loa jbl pulse 4" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/PULSE%204/pulse-4-4.jpg" style="height:476px; width:550px" /><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/PULSE%204/pulse-4-3.jpg" style="height:413px; width:550px" /></p>\r\n\r\n<p>Loa JBL Pulse 4 c&oacute; k&iacute;ch thước nhỏ gọn c&ugrave;ng khả năng chống nước IPX7 cho bạn c&aacute;c trải nghiệm dưới mọi thời tiết, địa h&igrave;nh.&nbsp;Đ&egrave;n nh&aacute;y nhịp điệu tr&ecirc;n loa giờ đ&atilde; chải rộng ra to&agrave;n bộ th&acirc;n loa, c&ugrave;ng t&iacute;nh năng pha trộn m&agrave;u, phối m&agrave;u sắc độc đ&aacute;o theo sở th&iacute;ch với phần mềm JBL Connect tr&ecirc;n điện thoại.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt="loa đèn jbl pulse 4" src="https://dientulinhanh.com/image/data/JBL/pulse3/JBL-Pulse-3-Lifestyle-Image-4.jpg" style="height:700px; width:536px" />&nbsp;&nbsp;<img alt="loa pulse 4" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/PULSE%204/11.jpg" style="height:700px; width:459px" /></p>\r\n\r\n<p>Loa c&oacute; C&ocirc;ng suất tr&ecirc;n 20W, t&iacute;ch hợp pin sạc cho thời gian chơi nhạc khoản 12 giờ li&ecirc;n tục ở mức &acirc;m lượng trung b&igrave;nh.&nbsp;C&oacute; khả năng gh&eacute;p nối kh&ocirc;ng d&acirc;y nhiều loa c&ugrave;ng l&uacute;c, tạo n&ecirc;n hiệu ứng &acirc;m thanh party s&ocirc;i động, cho những bữa tiệc &acirc;m thanh &aacute;nh s&aacute;ng tại gia, hoặc gh&eacute;p 2 loa để nghe &acirc;m thanh Stereo trung thực.</p>\r\n\r\n<p><img alt="loa jbl pulse 4 phiên bản mới" src="https://dientulinhanh.com/image/data/JBL/pulse3/pulse222.png" style="height:1330px; width:996px" /></p>', 0, 0, 0, '2021-11-02 19:29:21', 12, NULL, NULL, 0, NULL),
(13, 'JBL Partybox On The Go', 'jbl-partybox-on-the-go', 8500000, 0, 5, 0, 0, 5, 10, '2021-11-03__loa-jbl-partybox-on-the-go-1.jpeg', 7, 0, 1, 0, 10, 0, 'Thông số kĩ thuật JBL Partybox On The GoTổng công suất: 100W RMSCó 3 chế độ Bass Boost để tăng cường âm trầmChuẩn chống nước', '<h2><img alt="arnh1" src="https://banloa.123code.net/storage/photos/content/keo1.jpeg" style="height:600px; width:600px" /></h2>\r\n\r\n<p style="text-align:center">Ảnh 1</p>\r\n\r\n<p><img alt="arnh 2" src="https://banloa.123code.net/storage/photos/content/keo2.jpeg" style="height:300px; width:300px" />ảnh 2</p>\r\n\r\n<p>IPX4 chống mưa nhẹ v&agrave; tạt t&eacute; nướcMicro kh&ocirc;ng d&acirc;y tặng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBLTặng k&egrave;m d&acirc;y đeo vai ch&iacute;nh h&atilde;ng JBLKết nối kh&ocirc;ng d&acirc;y Bluetooth: v4.2Đầu v&agrave;o &acirc;m thanh: AUX, USB, cổng Guitar 6 ly, cổng mic 6 lyThời lượng pin: 6 tiếng li&ecirc;n tụcUSB hỗ trợ FAT16 v&agrave; FAT32, chơi được nhạc lossless wav hoặc mp3, wmaĐiện &aacute;p ra tại cổng USB 5v, 2.1A cho ph&eacute;p sạc điện cho c&aacute;c tb di độngĐ&aacute;p ứng tần số: 50Hz - 50kHzCủ loa Mid-Bass 13.3cm, củ loa treble 4.4cm x 2K&iacute;ch thước loa: 489x 244.5 x 224 mmTrọng lượng loa: 7.5 kg</p>\r\n\r\n<h2>JBL Partybox On The Go</h2>\r\n\r\n<p>Mẫu loa nhỏ gọn, đa năng nhất trong d&ograve;ng Partybox của JBL với quai x&aacute;ch tiện lợi, t&iacute;ch hợp sẵn hai mic, c&oacute; pin sạc t&iacute;ch hợp để đồng h&agrave;nh với bạn trong mọi cuộc vui.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Partybox%20on%20the%20go/loa-JBL-PartyBox-On-The-Go-1.jpg" style="height:800px; width:800px" /></p>\r\n\r\n<p>Tổng c&ocirc;ng suất l&ecirc;n đến 100W đem đến sự b&ugrave;ng nổ, mạnh mẽ. D&ugrave; ở trong nh&agrave; hay ngo&agrave;i trời, Partybox On The Go mang đến &acirc;m cao r&otilde; n&eacute;t,&nbsp;giọng h&aacute;t trung thực&nbsp;v&agrave; &acirc;m trầm mạnh mẽ. Hơn nữa, c&ocirc;ng nghệ tăng cường &acirc;m trầm Bass Boost sẽ gi&uacute;p cuộc vui th&ecirc;m phần s&ocirc;i động.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Partybox%20on%20the%20go/partybox-on-the-go-2.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p>Điều kh&ocirc;ng thể thiếu ở d&ograve;ng Partybox, đ&egrave;n led t&ugrave;y chỉnh v&agrave; đồng bộ với &acirc;m thanh với nhiều chế độ v&agrave; m&agrave;u sắc c&agrave;i sẵn.</p>\r\n\r\n<p><strong>Chuẩn chống nước IPX4</strong><br />\r\nMang theo ra b&atilde;i biển, b&ecirc;n hồ bơi hoặc tiệc t&ugrave;ng dưới trời mưa. Chuẩn IPX4 gi&uacute;p loa lu&ocirc;n hoạt động an to&agrave;n d&ugrave; bị nước bắn hay tạt nước.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Partybox%20on%20the%20go/loa-JBL-PartyBox-On-The-Go-2.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p><strong>T&iacute;ch hợp sẵn hai micro kh&ocirc;ng d&acirc;y</strong></p>\r\n\r\n<p>Lần đầu ti&ecirc;n, JBL t&iacute;ch hợp sẵn hai micro kh&ocirc;ng d&acirc;y cho một sản phẩm loa di động của m&igrave;nh. C&aacute;c bạn cũng c&oacute; thể chỉnh bass, treble, echo với n&uacute;t t&iacute;ch hợp sẵn tr&ecirc;n loa để đem lại chất &acirc;m tốt nhất.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Partybox%20on%20the%20go/loa-JBL-PartyBox-On-The-Go-3.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p>Kết nối bluetooth kh&ocirc;ng d&acirc;y tiện lợi, kết nối AUX v&agrave; USB để nghe nhạc chất lượng cao th&ocirc;ng qua cổng USB t&iacute;ch hợp sẵn tr&ecirc;n loa.</p>\r\n\r\n<p><img alt="" src="https://dientulinhanh.com/storage/product/PORTABLE-SPEAKERS/JBL/Partybox%20on%20the%20go/partybox-on-the-go-8.jpg" style="height:450px; width:800px" /></p>\r\n\r\n<p>C&aacute;c bạn cũng c&oacute; thể kết nối th&ecirc;m một loa Partybox On The Go nữa để tạo ra một d&agrave;n &acirc;m thanh 2 k&ecirc;nh ti&ecirc;u chuẩn nhờ c&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y độc quyền của JBL.<br />\r\n&nbsp;</p>\r\n\r\n<h2>Th&ocirc;ng số kĩ thuật JBL Partybox On The Go</h2>\r\n\r\n<ul>\r\n	<li>Tổng c&ocirc;ng suất: 100W RMS</li>\r\n	<li>C&oacute; 3 chế độ Bass Boost để tăng cường &acirc;m trầm</li>\r\n	<li>Chuẩn chống nước: IPX4 chống mưa nhẹ v&agrave; tạt t&eacute; nước</li>\r\n	<li>Micro kh&ocirc;ng d&acirc;y tặng k&egrave;m: x2 ch&iacute;nh h&atilde;ng JBL</li>\r\n	<li>Tặng k&egrave;m d&acirc;y đeo vai ch&iacute;nh h&atilde;ng JBL</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y Bluetooth: v4.2</li>\r\n	<li>Đầu v&agrave;o &acirc;m thanh: AUX, USB, cổng Guitar 6 ly, cổng mic 6 ly</li>\r\n	<li>Thời lượng pin: 6 tiếng li&ecirc;n tục</li>\r\n	<li>USB hỗ trợ FAT16 v&agrave; FAT32, chơi được nhạc lossless wav hoặc mp3, wma</li>\r\n	<li>Điện &aacute;p ra tại cổng USB 5v, 2.1A cho ph&eacute;p sạc điện cho c&aacute;c tb di động</li>\r\n	<li>Đ&aacute;p ứng tần số:&nbsp;50Hz -&nbsp;50kHz</li>\r\n	<li>Củ loa Mid-Bass 13.3cm, củ loa treble 4.4cm x 2</li>\r\n	<li>K&iacute;ch thước loa:&nbsp;489x 244.5 x 224 mm</li>\r\n	<li>Trọng lượng loa: 7.5 kg</li>\r\n</ul>', 0, 0, 0, '2021-11-02 19:31:32', 10, NULL, NULL, 0, '2021-11-03 01:29:38'),
(14, 'Loa Bluetooth Sony SRS-XB13', 'loa-bluetooth-sony-srs-xb13', 1000000, 0, 1, 0, 0, 10, 10, '2021-12-03__loa-sony-1.jpeg', 1, 1, 1, 0, 10000, 0, 'Loa Bluetooth Sony SRS-XB13', '<p>Đang cập nhật</p>', 0, 0, 0, '2021-12-02 19:00:55', 10000, NULL, NULL, 0, '2021-12-02 19:02:17'),
(15, 'Loa Bluetooth JBL Clip 4', 'loa-bluetooth-jbl-clip-4', 200000, 0, 1, 0, 0, 12, 10, '2021-12-03__bluetooth-jbl-clip-4-ava-600x600.jpeg', 1, 1, 1, 0, 1000, 0, 'Loa Bluetooth JBL Clip 4', '<p>Đang cập nhật</p>', 0, 0, 0, '2021-12-02 19:01:55', 1000, NULL, NULL, 0, '2021-12-02 19:02:16');
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_number_import`, `pro_import_goods`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(16, 'Loa Bluetooth Mozard S21', 'loa-bluetooth-mozard-s21', 2000000, 0, 1, 0, 0, 12, 10, '2021-12-03__bluetooth-mozard-s21-ava-600x600.jpeg', 1, 1, 1, 0, 1000, 0, 'Loa Bluetooth Mozard S21', '<p>Đang cập nhật</p>', 0, 0, 0, '2021-12-02 19:03:03', 1000, NULL, NULL, 0, '2021-12-02 19:03:11'),
(17, 'Loa Bluetooth JBL Go 3', 'loa-bluetooth-jbl-go-3', 2400000, 0, 1, 0, 0, 20, 10, '2021-12-03__bluetooth-jbl-go-3-xanh-den-600x600.jpeg', 2, 1, 1, 0, 12000, 0, 'Loa Bluetooth JBL Go 3', '<p>Đang cập nhật</p>', 0, 0, 0, '2021-12-02 19:05:05', 12000, NULL, NULL, 0, '2021-12-02 19:05:41'),
(18, 'Loa Bluetooth Harman Kardon Go + Play mini', 'loa-bluetooth-harman-kardon-go-play-mini', 3400000, 0, 1, 0, 0, 20, 10, '2021-12-03__bluetooth-harman-kardon-go-play-mini-ava-600x600.jpeg', 8, 1, 1, 1, 100, 0, 'Loa Bluetooth Harman Kardon Go + Play mini', '<p>Loa Bluetooth Harman Kardon Go + Play mini</p>', 0, 0, 0, '2021-12-02 19:05:36', 100, NULL, NULL, 0, '2021-12-02 19:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE IF NOT EXISTS `products_attributes` (
  `id` bigint(20) unsigned NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE IF NOT EXISTS `products_keywords` (
  `id` bigint(20) unsigned NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint(20) unsigned NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(1, 'Screen Shot 2021-11-01 at 9.33.05 AM.png', '2021-11-03__screen-shot-2021-11-01-at-93305-ampng.png', 13, '2021-11-03 01:29:38', NULL),
(2, 'Screen Shot 2021-11-02 at 1.03.41 PM.png', '2021-11-03__screen-shot-2021-11-02-at-10341-pmpng.png', 13, '2021-11-03 01:29:38', NULL),
(3, 'Screen Shot 2021-11-02 at 1.35.26 PM.png', '2021-11-03__screen-shot-2021-11-02-at-13526-pmpng.png', 13, '2021-11-03 01:29:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice_entered`
--

CREATE TABLE IF NOT EXISTS `product_invoice_entered` (
  `id` bigint(20) unsigned NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT '0',
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `id` bigint(20) unsigned NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `id` bigint(20) unsigned NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide1', '/', '2021-11-03__sl1.png', 1, 1, 0, '2021-11-03 01:43:56', NULL),
(2, 'Slide2', '/', '2021-11-03__sl2.jpeg', 1, 1, 0, '2021-11-03 01:44:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE IF NOT EXISTS `social_accounts` (
  `id` bigint(20) unsigned NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `provider_user_id`, `user_id`, `provider`, `created_at`, `updated_at`) VALUES
(7, '6783959288282706', '5', 'facebook', '2021-11-24 01:38:25', '2021-11-24 01:38:25'),
(8, '2012743932198151', '6', 'facebook', '2021-11-28 17:31:25', '2021-11-28 17:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE IF NOT EXISTS `statics` (
  `id` bigint(20) unsigned NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE IF NOT EXISTS `supplieres` (
  `id` bigint(20) unsigned NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_admin_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 3360000, 'Hạ Linh', 'doantotnghiep@gmail.com', '0986420994', 'Thôn thuận yên - Xã Quỳnh ngọc - Quỳnh Lưu - Nghệ An', NULL, 1, 1, '2021-11-02 18:02:01', NULL),
(2, 3, 1, 9405000, 'Jino', 'jiraphon12@gmail.com', '0966936728', 'ptit', 'test1', 3, 1, '2021-11-04 08:30:27', '2021-11-04 08:32:44'),
(3, 9, 0, 11540000, 'pooyeu', 'asd@yahoo.com', '316546874', '34 cần giộc', NULL, 1, 1, '2021-12-04 01:13:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Chilaphon Leuanglangsy', NULL, NULL, '$2y$10$TTFp63EOAKtpHfChrJqSOOvgJTa.qiXeT1XexBl79Jgq/wQDkks6a', '6783959288282706', 0, NULL, 0, NULL, NULL, NULL, '2021-11-24 01:38:25', '2021-11-24 01:38:25'),
(6, 'Phan Phú', 'codethue94@gmail.com', NULL, '$2y$10$3pfHVQAxm0NJSLB2YnEx1.fCC715zsS8.zhL5RE7GK6bkLD/iqQIm', '2012743932198151', 0, NULL, 0, NULL, NULL, NULL, '2021-11-28 17:31:25', '2021-11-28 17:31:25'),
(7, 'Mani', 'member1@gmail.com', NULL, '$2y$10$/0dXpx77OSoXKoVHt9fvf.hhbmwnDR3zu5E/tYvXweTQtBINxE1J.', '0345678999', 0, NULL, 0, NULL, NULL, NULL, '2021-12-03 14:42:22', NULL),
(8, 'gjhg', 'ghhhh@gmail.com', NULL, '$2y$10$zAGJFQoYVLtM6MeuTNRHI.wQ0P397mt/p48Zq8G5G1jhtcFKFcxoK', '08521647695', 0, NULL, 0, NULL, NULL, NULL, '2021-12-03 16:12:32', NULL),
(9, 'pooyeu', 'asd@yahoo.com', NULL, '$2y$10$68W.Bd7fqx9ISUGWxKrYA.IMHtYcuBWlJHGS5xLspMlJtD5U1C4pe', '316546874', 0, NULL, 1, NULL, NULL, NULL, '2021-12-04 01:13:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE IF NOT EXISTS `user_favourite` (
  `id` bigint(20) unsigned NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(1, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_slug_unique` (`name_slug`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
