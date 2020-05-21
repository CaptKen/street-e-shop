-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 07:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `street`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 32),
(3, 1, 36),
(1, 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add หมวดหมู่สินค้า', 7, 'add_category'),
(26, 'Can change หมวดหมู่สินค้า', 7, 'change_category'),
(27, 'Can delete หมวดหมู่สินค้า', 7, 'delete_category'),
(28, 'Can view หมวดหมู่สินค้า', 7, 'view_category'),
(29, 'Can add สินค้า', 8, 'add_product'),
(30, 'Can change สินค้า', 8, 'change_product'),
(31, 'Can delete สินค้า', 8, 'delete_product'),
(32, 'Can view สินค้า', 8, 'view_product'),
(33, 'Can add ตะกร้าสินค้า', 9, 'add_cart'),
(34, 'Can change ตะกร้าสินค้า', 9, 'change_cart'),
(35, 'Can delete ตะกร้าสินค้า', 9, 'delete_cart'),
(36, 'Can view ตะกร้าสินค้า', 9, 'view_cart'),
(37, 'Can add รายการสินค้าในตะกร้า', 10, 'add_cartitem'),
(38, 'Can change รายการสินค้าในตะกร้า', 10, 'change_cartitem'),
(39, 'Can delete รายการสินค้าในตะกร้า', 10, 'delete_cartitem'),
(40, 'Can view รายการสินค้าในตะกร้า', 10, 'view_cartitem'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$afgFE9toyawq$Ds22NUyIgQAOS0rDh3Q7Fx5ohSdTKJg3f6jTfOWJrXM=', '2020-05-21 17:31:02.575011', 1, 'admin', '', '', '', 1, 1, '2020-05-13 07:38:47.932032');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(255) NOT NULL,
  `date_added` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-05-13 07:53:34.175764', '1', 'Accessory', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-05-13 07:54:56.620112', '1', 'PLATFORM66 ALEXFACE SKATEBOARD MULTI FACE', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-05-13 07:56:05.545279', '2', 'ADIDAS Y-3 BELT STOKHA', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-05-13 07:56:16.572552', '1', 'PLATFORM66 ALEXFACE SKATEBOARD MULTI FACE', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(5, '2020-05-13 07:56:29.730104', '1', 'PLATFORM66 ALEXFACE SKATEBOARD MULTI FACE', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 8, 1),
(6, '2020-05-13 07:59:00.513751', '3', 'MIGHTY JAXX ALEX FACE LIGHTNING CAT BROWN', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-05-13 07:59:59.668065', '4', 'CROSSPHONE GREEN PANTS CHAIN', 1, '[{\"added\": {}}]', 8, 1),
(8, '2020-05-13 08:01:17.043374', '5', 'RIPNDIP F18 LORD NERMAL UMBRELLA CLEAR', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-05-13 08:13:24.944342', '2', 'Shoe Care', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-05-13 08:15:12.767656', '6', 'CREP PROTECT CUBE PACK', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-05-13 08:15:54.080251', '7', 'CURE ULTIMATE', 1, '[{\"added\": {}}]', 8, 1),
(12, '2020-05-13 08:16:28.819209', '8', 'WIPES', 1, '[{\"added\": {}}]', 8, 1),
(13, '2020-05-13 08:18:54.681206', '9', 'CREP PROTECT ULTIMATE PACK (WIPES)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-05-13 08:19:35.731338', '10', 'PILLS', 1, '[{\"added\": {}}]', 8, 1),
(15, '2020-05-13 08:23:15.697074', '3', 'Sneaker', 1, '[{\"added\": {}}]', 7, 1),
(16, '2020-05-13 08:24:20.487937', '11', 'NIKE W AIR MAX 2090', 1, '[{\"added\": {}}]', 8, 1),
(17, '2020-05-13 08:25:05.211705', '12', 'NIKE W AIR MAX 97', 1, '[{\"added\": {}}]', 8, 1),
(18, '2020-05-13 08:25:47.763443', '13', 'ADIDAS SUPERSTAR LACELESS', 1, '[{\"added\": {}}]', 8, 1),
(19, '2020-05-13 08:26:48.274201', '14', 'KITO X QDAP BLACK/WHITE', 1, '[{\"added\": {}}]', 8, 1),
(20, '2020-05-13 08:31:11.179942', '4', 'Sock', 1, '[{\"added\": {}}]', 7, 1),
(21, '2020-05-13 08:32:01.811795', '15', 'STANCE PENNYWISE BLACK', 1, '[{\"added\": {}}]', 8, 1),
(22, '2020-05-13 08:32:39.604224', '16', 'STANCE VINTAGE DISNEY BLUE', 1, '[{\"added\": {}}]', 8, 1),
(23, '2020-05-13 08:33:46.247547', '17', 'STANCE LOVER LOSER BLACK', 1, '[{\"added\": {}}]', 8, 1),
(24, '2020-05-20 16:38:40.408725', '1', 'Customer', 1, '[{\"added\": {}}]', 3, 1),
(25, '2020-05-21 17:31:33.214314', '11', 'aisoonken70', 3, '', 4, 1),
(26, '2020-05-21 17:31:38.774268', '12', 'aisoonken71', 3, '', 4, 1),
(27, '2020-05-21 17:31:42.822464', '13', 'aisoonken72', 3, '', 4, 1),
(28, '2020-05-21 17:31:47.125252', '14', 'aisoonken73', 3, '', 4, 1),
(29, '2020-05-21 17:31:51.581526', '10', 'aisoonken80', 3, '', 4, 1),
(30, '2020-05-21 17:31:56.086930', '9', 'aisoonken90', 3, '', 4, 1),
(31, '2020-05-21 17:32:00.324809', '8', 'aisoonken95', 3, '', 4, 1),
(32, '2020-05-21 17:32:03.962779', '7', 'aisoonken96', 3, '', 4, 1),
(33, '2020-05-21 17:32:28.505183', '1', 'ADIDAS SUPERSTAR LACELESS', 3, '', 12, 1),
(34, '2020-05-21 17:32:30.952235', '2', 'ADIDAS Y-3 BELT STOKHA', 3, '', 12, 1),
(35, '2020-05-21 17:32:33.848918', '3', 'ADIDAS SUPERSTAR LACELESS', 3, '', 12, 1),
(36, '2020-05-21 17:32:40.592973', '4', 'ADIDAS SUPERSTAR LACELESS', 3, '', 12, 1),
(37, '2020-05-21 17:32:51.499576', '1', '1', 3, '', 11, 1),
(38, '2020-05-21 17:32:59.419319', '2', '2', 3, '', 11, 1),
(39, '2020-05-21 17:33:02.177642', '3', '3', 3, '', 11, 1),
(40, '2020-05-21 17:33:04.937335', '4', '4', 3, '', 11, 1),
(41, '2020-05-21 17:33:12.310437', '1', 'adep0bdwazjgvwj8zyro2hfajohi198j', 3, '', 9, 1),
(42, '2020-05-21 17:33:15.152823', '2', 'vwcuspiesfaz6gvotvqodkg43ebjnoee', 3, '', 9, 1),
(43, '2020-05-21 17:33:18.922158', '3', 'ro9tabrs1zc0rke2revykrqo08x902ee', 3, '', 9, 1),
(44, '2020-05-21 17:33:21.650284', '4', 'kdarskh668v10lkm0313055kunhpvayo', 3, '', 9, 1),
(45, '2020-05-21 17:33:25.252271', '5', 'ijkxs8s3rtpd9ci2vak2l6i52xgb5j02', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(10, 'store', 'cartitem'),
(7, 'store', 'category'),
(11, 'store', 'order'),
(12, 'store', 'orderitem'),
(8, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-13 07:37:23.401764'),
(2, 'auth', '0001_initial', '2020-05-13 07:37:23.730885'),
(3, 'admin', '0001_initial', '2020-05-13 07:37:24.677854'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-13 07:37:24.927701'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-13 07:37:24.948644'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-13 07:37:25.199971'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-13 07:37:25.321647'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-05-13 07:37:25.362539'),
(9, 'auth', '0004_alter_user_username_opts', '2020-05-13 07:37:25.388467'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-05-13 07:37:25.522112'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-05-13 07:37:25.528094'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-13 07:37:25.571978'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-05-13 07:37:25.639795'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-13 07:37:25.695956'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-05-13 07:37:25.737842'),
(16, 'auth', '0011_update_proxy_permissions', '2020-05-13 07:37:25.762776'),
(17, 'sessions', '0001_initial', '2020-05-13 07:37:25.836578'),
(18, 'store', '0001_initial', '2020-05-13 07:37:25.978200'),
(19, 'store', '0002_auto_20200228_1131', '2020-05-13 07:37:26.238506'),
(20, 'store', '0003_auto_20200320_0303', '2020-05-13 07:37:26.629015'),
(21, 'store', '0004_auto_20200320_0433', '2020-05-13 07:37:26.761658'),
(22, 'store', '0005_auto_20200320_0457', '2020-05-13 07:37:26.941179');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r6i2ixhbwsnrss4ex43k5kwyl30pi602', 'OGZjODJhNWE5OTExMjk4NWYzZTY1NTZmMjFiY2M2MTIyMDg4MjFkMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNWI4NmYzM2JjM2IwZWFiY2ExZWZlZGI3NDNmZWVkNmZjNzQ2OWRiIn0=', '2020-06-04 17:31:02.579002');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `email` varchar(250) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL,
  `product` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `name`, `slug`) VALUES
(1, 'Accessory', 'accessory'),
(2, 'Shoe Care', 'shore-care'),
(3, 'Sneaker', 'Sneakers'),
(4, 'Sock', 'socks');

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `slug`, `description`, `price`, `image`, `stock`, `available`, `created`, `updated`, `category_id`) VALUES
(1, 'PLATFORM66 ALEXFACE SKATEBOARD MULTI FACE', 'alex-face-board', 'ไอเทมพิเศษจากงาน PLATFORM66 กับแผ่นสเก็ตบอร์ดดีไซน์พิเศษที่จับเอา Siamese Cats คาแร็คเตอร์ที่ออกแบบโดย Alex Face เพื่องาน PLATFORM66 โดยเฉพาะมาวาดลวดลาย (1 เซ็ต มี 3 แผ่น)', '5700.00', 'product/al3_2.jpg', 8, 1, '2020-05-13 07:54:56.616125', '2020-05-13 07:56:29.725113', 1),
(2, 'ADIDAS Y-3 BELT STOKHA', 'ADIDAS-Y-3-BELT', 'Understated in typical Y-3 style, this black belt is simply styled with contrast branding at the edge. Constructed from a durable poly-nylon blend and secured with no-frills D-ring hardware, it’ll effortlessly see you through this season and into the future.', '2790.00', 'product/y-3.jpg', 4, 1, '2020-05-13 07:56:05.543285', '2020-05-20 14:48:50.179217', 1),
(3, 'MIGHTY JAXX ALEX FACE LIGHTNING CAT BROWN', 'MIGHTY-JAXX-ALEX-FACE-LIGHTNING-CAT-BROWN', 'ไอเทมสุดพิเศษจากการร่วมงานระหว่าง Mighty Jaxx และ Alex Face ที่นำเอาคาแรกเตอร์ Siamese Cats ที่ออกแบบมาเพื่องาน PLATFORM66 มาสร้างสรรค์เป็นฟิกเกอร์สุดเท่! โดยจะมีด้วยกันถึง 2 สี Thunder Cat และ Lighting Cat ซึ่งบรรจุอยู่ในแพ็คเกจกล่องสุดพิเศษ', '8900.00', 'product/mj001-013-1.jpg', 10, 1, '2020-05-13 07:59:00.510756', '2020-05-13 07:59:00.510756', 1),
(4, 'CROSSPHONE GREEN PANTS CHAIN', 'CROSSPHONE-GREEN-PANTS-CHAIN', '100% Metal', '2190.00', 'product/g1_5_5.jpg', 20, 1, '2020-05-13 07:59:59.665074', '2020-05-13 07:59:59.665074', 1),
(5, 'RIPNDIP F18 LORD NERMAL UMBRELLA CLEAR', 'RIPNDIP-F18-LORD-NERMAL-UMBRELLA-CLEAR', 'RIP N DIP | Available on March 31, 2018 เตรียมพบกับครั้งแรกของการวางจำหน่ายที่ร้าน CARNIVAL Store ของเรา!! กับ RIP N DIP แบรนด์เสื้อผ้าที่มาพร้อมกับโลโก้ “แมว” สุดกวน ที่ก่อตั้งขึ้นเมื่อปี 2009 โดย Ryan O\'Connor โปรสเกตบอร์ดชาวอเมริกัน จัดเต็มทั้ง Pocket Tee, T-Shirt, L/S Tee, Jacket, Socks และ Accessories สุดจี๊ดอย่าง Umbrella (ร่ม), PIPE และ SLIDES ที่ใครหลายคนรอคอย! พร้อมทั้ง Display สุดกวน', '2290.00', 'product/rnd1701.jpg', 3, 1, '2020-05-13 08:01:17.041381', '2020-05-13 08:01:17.041381', 1),
(6, 'CREP PROTECT CUBE PACK', 'CREP-PROTECT-CUBE-PACK', 'Crep Protect \"Ultimate Shoe Care Pack\" แพ็คสุดคุ้มที่ใครหลายคนรอคอย ที่บรรจุผลิตภัณฑ์ทำความสะอาด และดูแลรักษารองเท้าสนีกเกอร์แบบจัดเต็ม โดยจะมีทั้ง\r\n1. Crep Protect “Eraser” ยางลบสำหรับทำความสะอาดรองเท้า (จำนวน 1 ชิ้น)\r\n2. น้ำยาทำความสะอาด Crep Protect Cure Ultimate Cleaning Solution ขนาด 100ml. / 3.5 Oz (จำนวน 1 ขวด)\r\n3. แปรงทำความสะอาด Premium Hog Hair Brush (จำนวน 1 อัน)\r\n4. ผ้า Microfiber cloth (จำนวน 6 ผืน)\r\n5. Crep Protect Pills (จำนวน 2 ชิ้น)', '1590.00', 'product/c3_2_8.jpg', 60, 1, '2020-05-13 08:15:12.764667', '2020-05-13 08:15:12.764667', 2),
(7, 'CURE ULTIMATE', 'CURE-ULTIMATE', 'Crep Protect Cure - The Ultimate Sneaker Cleaning Kit: ชุดทำความสะอาดรองเท้า สามารถใช้ได้กับวัสดุที่เป็น หนัง, หนังกลับ, Nubuck, Canvas และอื่นๆ บรรจุอยู่ในกระเป๋าขนาดพกพา ภายในประกอบไปด้วย - 100ml /3.5 Oz Improved Cleaning Solution: น้ำยาทำความสะอาด สกัดจากวัตถุดิบธรรมชาติถึง 98 % (มะพร้าว, โจโจบา และน้ำ) *สามารถใช้ได้ประมาณ 50 ครั้ง - Premium Hair Brush: แปรงทำความสะอาดผลิตจากขนหมู ทำให้มีความอ่อนนุ่ม สามารถใช้ได้กับทุกวัสดุ - Microfibre Cloth: ผ้าไมโครไฟเบอร์สีดำ สำหรับเช็ดทำความสะอาด สามารถดูดซับน้ำ และสิ่งสกปรกได้ดีมาก', '650.00', 'product/crep5_10.jpg', 30, 1, '2020-05-13 08:15:54.077266', '2020-05-13 08:15:54.077266', 2),
(8, 'WIPES', 'WIPES', 'Crep Wipes: ผ้าเช็ดเคลือบน้ำยาทำความสะอาด บรรจุในซองปิดผนึกแยกชิ้น พกพาสะดวก เหมาะสำหรับการทำความสะอาดแบบฉุกเฉิน และรวดเร็ว (ในกรณีที่คราบสกปรกไม่ฝังลึก) มาพร้อมกับกล่องสแตนเลส ภายในบรรจุ Crep Wipes 12 ชิ้น', '390.00', 'product/crep2_9.jpg', 25, 1, '2020-05-13 08:16:28.815219', '2020-05-13 08:16:28.815219', 2),
(9, 'CREP PROTECT ULTIMATE PACK (WIPES)', 'CREP-PROTECT-ULTIMATE-PACK-WIPES', 'CREP PROTECT ULTIMATE PACK (PILLS) V.3 \r\n\r\nCrep Protect \"Ultimate Shoe Care Pack\" แพ็คสุดคุ้มที่ใครหลายคนรอคอย ที่บรรจุผลิตภัณฑ์ทำความสะอาด และดูแลรักษารองเท้าสนีกเกอร์แบบจัดเต็ม โดยจะมีทั้ง\r\n\r\n1x Crep protect 200ml Protective Spray Can \r\n\r\n200ml super-hydrophobic spray that creates an invisible coating which repels liquids and prevents stains. For use on suede, nubuck and canvas footwear. Crep Protect is easy to apply and quick drying.\r\n\r\n1x Crep Protect Cure Ultimate Cleaning Solution \r\n100ml / 3.5 Oz Improved Cleaning Solution \r\nWashes 50+ Pairs of Sneakers. \r\n98% Natural made from Coconut extracts, Jojoba & Aqua.\r\n\r\n1x Premium Hog Hair Brush \r\nPremium Brush has over 17000+ Hog hair bristles. \r\nShorter bristles give better cleaning results, While the hog hair is soft enough to clean more delicate materials.\r\n\r\n1x Microfiber cloth \r\nUltra soft, Non Abrasive and highly absorbent cloth.\r\n\r\n12 x Crep Protect Wipes \r\nIndividual sealed for freshness. Travel size wipes perfect for those unexpected marks when you’re on the move. Smooth side for general cleaning and textured side for tougher marks. Cotton fresh scented', '1590.00', 'product/634154705506_normal_0010_1024x1024.jpg', 19, 1, '2020-05-13 08:18:54.678215', '2020-05-13 08:18:54.678215', 2),
(10, 'PILLS', 'PILLS', 'Crep Protect Pill – The Ultimate Shoe Freshener\r\n\r\nไอเท็มใหม่ล่าสุดกับ \"แคปซูล\" สำหรับรองเท้าผ้าใบ ช่วยลดกลิ่นอับชื้นภายในรองเท้า และกลิ่นต่างๆ ที่ไม่พึงประสงค์\r\n\r\nภายในแคปซูลประกอบด้วย ZEOLITE แร่ภูเขาไฟธรรมชาติที่ช่วยลดความอับชื้น เพิ่มกลิ่นหอมภายในรองเท้า และ NShield สารที่ช่วยลดการก่อเกิดของแบคทีเรีย และเชื้อโรคต่างๆ ซึ่งเป็นต้นเหตุของกลิ่น \r\n\r\nเพียงบิดเพื่อเปิดแคปซูล และนำไปใส่ในรองเท้าคู่ที่ต้องการ (ประมาณ 1-2 ชั่วโมง หรือจนกว่ากลิ่นไม่พึงประสงค์จะหมดไป) หลังการใช้งาน \"ปิดแคปซูล\" เพื่อยืดอายุการใช้งาน (สามารถใช้งานได้ประมาณ 3 เดือน หรือจนกว่ากลิ่นหอมจะหมด) *ขึ้นอยู่กับการใช้งาน', '450.00', 'product/1_29_2_6.jpg', 20, 1, '2020-05-13 08:19:35.728343', '2020-05-13 08:19:35.728343', 2),
(11, 'NIKE W AIR MAX 2090', 'NIKE-W-AIR-MAX-2090', 'A FUTURISTIC LEAP FORWARD.\r\n\r\nBring the past into the future with the Nike Air Max 2090, a bold look inspired by the DNA of the iconic Air Max 90. Brand-new Nike Air cushioning underfoot adds unparalleled comfort while transparent knit and vibrantly colored textiles on the upper blend with timeless OG features for an edgy, modernized look.\r\n\r\n- More Air underfoot creates a softer ride while 360 degrees of ribbed, translucent rubber frames your air for a bold look.\r\n- The internal booty construction and padded heel feels soft and comfortable while letting you mix up how you wear your sneakers.\r\n- The new speed-lacing system lets you quickly personalize your fit and get going.\r\n- The faux-Waffle sole has large flex grooves, mixing heritage style with a modern design.\r\n\r\nMore Details\r\n\r\n- Springy foam midsole feels soft and comfortable\r\n\r\n- Rubber sole adds traction and durability\r\n\r\n- Pull tab\r\n\r\n- \"AIR\" logo is recessed into heel for a lasting look\r\n\r\n- Not intended for use as Personal Protective Equipmen', '5200.00', 'product/ct7698-100-1.jpg', 10, 1, '2020-05-13 08:24:20.484944', '2020-05-13 08:24:20.484944', 3),
(12, 'NIKE W AIR MAX 97', 'NIKE-W-AIR-MAX-97', 'Offering the streamlined Air Max 97 to the female sneakerhead, this iteration from Nike adds delicate pastel hues to the iconic silhouette. Dressed in a combination that’s sure to be a hit, the usual mesh and leather upper is realised in white and accented through hits of bleached coral, while a plush full-length Air unit completes the sneaker and delivers comfort and style in equal measures.\r\n\r\n- Mesh Uppers\r\n- Leather Overlays\r\n- Swoosh Branding\r\n- Tongue & Heel Pull Tabs\r\n- Max Air Cushioning\r\n- Foam Midsole\r\n- Rubber Outsole', '5800.00', 'product/104_1_1.jpg', 13, 1, '2020-05-13 08:25:05.208679', '2020-05-13 08:25:05.208679', 3),
(13, 'ADIDAS SUPERSTAR LACELESS', 'ADIDAS-SUPERSTAR-LACELESS', 'A NEW ERA OF \'NO HASSLE\' LACELESS.\r\n\"We make a good team, my adidas and me.\" Always on point, this slip-on Superstar shoe is back like never before. Follow in the footsteps of \'80s hip hop royalty and do the New York b-boy look entirely your way.\r\n\r\nHowever that plays out – chic blazer suits, scruffy jeans and tee – you\'ll make it look easy in this cool, casual remake. Ahead of the 2020 All-Star Weekend, we\'ve rebuilt the shoe with a fat tongue for extra slam dunk. Step into the future of no fuss comfort without sacrificing on old-school class.\r\n\r\n- Slip-on\r\n\r\n- Leather upper\r\n\r\n- Laceless shell-toe trainers\r\n\r\n- Moulded sockliner and leather lining\r\n\r\n- Rubber outsole', '2800.00', 'product/fv3017.jpg', 8, 1, '2020-05-13 08:25:47.761440', '2020-05-21 16:19:04.570060', 3),
(14, 'KITO X QDAP BLACK/WHITE', 'KITO-X-QDAP-BLACK-WHITE', 'ขอแนะนำ ‘Flicker’ รองเท้าแตะรัดสนจากการร่วมงานครั้งพิเศษระหว่าง Kito และ Q Design and Play ที่ออกมาให้เลือกกันถึง 3 รุ่น พร้อมวางจำหน่ายแล้ววันนี้\r\n\r\n• Kito x Q Design and Play ‘FLICKER’\r\n\r\nโปรเจกต์พิเศษระหว่างแบรนด์รองเท้าระดับตำนานอย่าง Kito กับ Q Design and Play แบรนด์สตรีทแวร์สัญชาติไทย ได้ร่วมกันทำรองเท้าแตะรัดสน ดีไซน์ทันสมัย ด้วยแนวคิดผสมผสานความเป็น Sneaker ลงไปวัสดุที่เป็นเอกลักษณ์ของ Kito บริเวณ Upper ทำจากสายทอคุณภาพดี และใช้ EVA ชนิดพิเศษตรงพื้นในรองเท้าที่ให้ความนุ่มสบาย และยังรองรับแรงกระแทกได้อย่างยอดเยี่ยม อีกทั้งยังใช้วัสดุ Phylon ที่มีความยืดหยุ่นสูง รับน้ำหนักของผู้สวมใส่ได้ดีบริเวณ Midsole ปิดท้ายด้วยพื้นรองเท้าที่ทำจาก Blown Rubber ทนทาน และยึดเกาะทุกพื้นผิว ช่วยให้เดินสบายตลอดทั้งวัน', '1890.00', '', 29, 1, '2020-05-13 08:26:48.272209', '2020-05-13 08:26:48.272209', 3),
(15, 'STANCE PENNYWISE BLACK', 'STANCE-PENNYWISE-BLACK', 'The evil Pennywise smirks from under your shoe, never to be trusted. A deceptively dangerous selection from our new It collection, in honor of the hit 2017 film.\r\n\r\nFEATURES\r\n \r\n- Terry Loop In Forefoot, Heel, And Toe For Cushioning\r\n- Arch Support\r\n- Reinforced Heel & Toe\r\n- Seamless Toe Closure\r\n \r\nPRODUCT CARE\r\n \r\n- Machine Wash in 40 °C / 104 °F.\r\n- Avoid Bleaching or Ironing the socks.\r\n- Socks will last longer if you keep them out of the dryer.', '1000.00', 'product/pennywiseblk1.jpg', 100, 1, '2020-05-13 08:32:01.808803', '2020-05-13 08:32:01.808803', 4),
(16, 'STANCE VINTAGE DISNEY BLUE', 'STANCE-VINTAGE-DISNEY-BLUE', 'The best way to start your day is putting your best foot forward in the Vintage Disney. Stance was inspired by the ever-optimistic Mickey Mouse and characters to design one of our favorite Disney socks using luxury cotton. Deep heel pockets and seamless toe closures add additional comfort while self-adjusting welt cuffs keep your socks in place.\r\n\r\nFEATURES\r\n \r\n- Terry Loop In Forefoot, Heel, And Toe For Cushioning\r\n- Arch Support\r\n- Reinforced Heel & Toe\r\n- Seamless Toe Closure\r\n \r\nPRODUCT CARE\r\n \r\n- Machine Wash in 40 °C / 104 °F.\r\n- Avoid Bleaching or Ironing the socks.\r\n- Socks will last longer if you keep them out of the dryer.', '1000.00', 'product/vtblue1.jpg', 80, 1, '2020-05-13 08:32:39.602228', '2020-05-13 08:32:39.602228', 4),
(17, 'STANCE LOVER LOSER BLACK', 'STANCE-LOVER-LOSER-BLACK', 'Lover? Loser? Lover Loser? Looks like the evil Pennywise is up to his devious mindgames again. Silly meets sinister in this enigmatic selection from our new It collection, in honor of the hit 2017 film.\r\n\r\nFEATURES\r\n \r\n- Terry Loop In Forefoot, Heel, And Toe For Cushioning\r\n- Arch Support\r\n- Reinforced Heel & Toe\r\n- Seamless Toe Closure\r\n \r\nPRODUCT CARE\r\n \r\n- Machine Wash in 40 °C / 104 °F.\r\n- Avoid Bleaching or Ironing the socks.\r\n- Socks will last longer if you keep them out of the dryer.', '1000.00', 'product/loverloser.jpg', 60, 1, '2020-05-13 08:33:46.242563', '2020-05-13 08:33:46.243560', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartItem_cart_id_ee9df702_fk_cart_id` (`cart_id`),
  ADD KEY `cartItem_product_id_c2bec730_fk_store_product_id` (`product_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderItem_order_id_d1e3f0fb_fk_Order_id` (`order_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cartitem`
--
ALTER TABLE `cartitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD CONSTRAINT `cartItem_cart_id_ee9df702_fk_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cartItem_product_id_c2bec730_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `OrderItem_order_id_d1e3f0fb_fk_Order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
