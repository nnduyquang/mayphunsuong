-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2018 at 04:05 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mayphunsuong`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(2, 'User', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(3, 'Menu', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(4, 'Page', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(5, 'Post', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(7, 'Product', '2018-03-16 02:53:37', '2018-03-16 02:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`id`, `name`, `path`, `level`, `template`, `type`, `parent_id`, `page_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Máy Phun Sương', 'may-phun-suong', 0, 'category.index', 1, NULL, 1, 1, '2018-03-16 01:41:57', '2018-03-16 01:41:57'),
(2, 'Linh Kiện Phun Sương', 'linh-kien-phun-suong', 0, 'category.index', 1, NULL, 2, 2, '2018-03-16 01:42:53', '2018-03-16 01:42:53'),
(3, 'Lắp Đặt Phun Sương', 'lap-dat-phun-suong', 0, 'service.index', 0, NULL, 4, 1, '2018-03-16 09:02:35', '2018-03-16 09:02:35'),
(4, 'Sửa Chữa Phun Sương', 'sua-chua-phun-suong', 0, 'service.index', 0, NULL, 5, 2, '2018-03-16 09:02:59', '2018-03-16 09:02:59'),
(5, 'Lắp Đặt Phun Sương Tỉnh', 'lap-dat-phun-suong-tinh', 0, 'service.index', 0, NULL, 6, 3, '2018-03-16 09:03:19', '2018-03-16 09:03:19'),
(6, 'Dự Án Đã Thực Hiện', 'du-an-da-thuc-hien', 0, 'service.index', 0, NULL, 12, 4, '2018-03-17 02:41:49', '2018-03-17 02:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `path`, `level`, `order`, `parent_id`, `content_id`, `type`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', 'gioi-thieu', 0, 1, NULL, 3, 1, 1, '2018-03-16 08:42:14', '2018-03-16 08:42:14'),
(2, 'Máy Phun Sương', 'may-phun-suong', 0, 2, NULL, 1, 2, 1, '2018-03-16 08:42:43', '2018-03-16 08:42:43'),
(3, 'Linh Kiện Phun Sương', 'linh-kien-phun-suong', 0, 3, NULL, 2, 2, 1, '2018-03-16 08:43:08', '2018-03-16 08:43:08'),
(4, 'Dịch Vụ', 'dich-vu', 0, 4, NULL, 0, 1, 1, '2018-03-16 09:03:34', '2018-03-16 09:03:34'),
(5, 'Lắp Đặt Phun Sương', 'lap-dat-phun-suong', 1, 1, 4, 3, 2, 1, '2018-03-16 09:04:06', '2018-03-16 09:04:06'),
(6, 'Sửa Chữa Phun Sương', 'sua-chua-phun-suong', 1, 2, 4, 4, 2, 1, '2018-03-16 09:04:40', '2018-03-16 09:04:40'),
(7, 'Lắp Đặt Phun Sương Tỉnh', 'lap-dat-phun-suong-tinh', 1, 3, 4, 5, 2, 1, '2018-03-16 09:05:18', '2018-03-16 09:05:18'),
(8, 'Liên Hệ', 'lien-he', 0, 5, NULL, 7, 1, 1, '2018-03-16 09:16:47', '2018-03-16 09:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_14_140923_create_entrust_setup_tables', 2),
(4, '2018_03_16_084857_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(9, 'menu-list', 'Toàn Quyền Menu', 'Được Toàn Quyền Menu', 3, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(10, 'menu-create', 'Thêm Mới Menu', 'Được Thêm Mới Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(11, 'menu-edit', 'Cập Nhật Menu', 'Được Cập Nhật Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(12, 'menu-delete', 'Xóa Menu', 'Được Xóa Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(13, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(14, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(15, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(16, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(17, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(18, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(19, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(20, 'post-delete', 'Xóa Bài Viết', 'Được Xóa Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(21, 'product-list', 'Toàn Quyền Sản Phẩm', 'Được Toàn Quyền Sản Phẩm', 7, '2018-03-16 02:55:06', '2018-03-16 02:55:06'),
(22, 'product-create', 'Thêm Mới Sản Phẩm', 'Được Thêm Mới Sản Phẩm', 7, '2018-03-16 02:55:06', '2018-03-16 02:55:06'),
(23, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 7, '2018-03-16 02:55:06', '2018-03-16 02:55:06'),
(24, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 7, '2018-03-16 02:55:06', '2018-03-16 02:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `category_post_id` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `template`, `image`, `seo_title`, `seo_description`, `seo_keywords`, `post_type`, `category_post_id`, `isActive`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Máy Phun Sương', 'may-phun-suong', '<p>\r\n	Máy Phun Sương\r\n</p>', '<p>\r\n	Máy Phun Sương\r\n</p>', 'category.index', 'images/uploads/images/gt_1.jpg', 'Máy Phun Sương', '<p>\r\n	Máy Phun Sương\r\n</p>', 'Máy Phun Sương', 1, NULL, 1, 1, '2018-03-16 01:41:40', '2018-03-16 01:41:40'),
(2, 'Linh Kiện Phun Sương', 'linh-kien-phun-suong', '<p>\r\n	Linh Kiện Phun Sương\r\n</p>', '<p>\r\n	Linh Kiện Phun Sương\r\n</p>', 'category.index', 'images/uploads/images/gt_1.jpg', 'Linh Kiện Phun Sương', '<p>\r\n	Linh Kiện Phun Sương\r\n</p>', 'Linh Kiện Phun Sương', 1, NULL, 1, 1, '2018-03-16 01:42:27', '2018-03-16 01:44:12'),
(3, 'Giới Thiệu', 'gioi-thieu', '<p>\r\n	Giới Thiệu\r\n</p>', '<p>\r\n	Giới Thiệu\r\n</p>', 'portfolio.index', 'images/uploads/images/gt_1.jpg', 'Giới Thiệu', '<p>\r\n	Giới Thiệu\r\n</p>', 'Giới Thiệu', 1, NULL, 1, 1, '2018-03-16 08:41:50', '2018-03-16 08:45:42'),
(4, 'Lắp Đặt Phun Sương', 'lap-dat-phun-suong', '<p>\r\n	Lắp Đặt Phun Sương\r\n</p>', '<p>\r\n	Lắp Đặt Phun Sương\r\n</p>', 'service.index', 'images/uploads/images/gt_1.jpg', 'Lắp Đặt Phun Sương', '<p>\r\n	Lắp Đặt Phun Sương\r\n</p>', 'Lắp Đặt Phun Sương', 1, NULL, 1, 1, '2018-03-16 08:58:45', '2018-03-16 08:58:45'),
(5, 'Sửa Chữa Phun Sương', 'sua-chua-phun-suong', '<p>\r\n	Sửa Chữa Phun Sương\r\n</p>', '<p>\r\n	Sửa Chữa Phun Sương\r\n</p>', 'service.index', 'images/uploads/images/gt_1.jpg', 'Sửa Chữa Phun Sương', '<p>\r\n	Sửa Chữa Phun Sương\r\n</p>', 'Sửa Chữa Phun Sương', 1, NULL, 1, 1, '2018-03-16 08:59:45', '2018-03-16 08:59:45'),
(6, 'Lắp Đặt Phun Sương Tỉnh', 'lap-dat-phun-suong-tinh', '<p>\r\n	Lắp Đặt Phun Sương Tỉnh\r\n</p>', '<p>\r\n	Lắp Đặt Phun Sương Tỉnh\r\n</p>', 'service.info', 'images/uploads/images/gt_1.jpg', 'Lắp Đặt Phun Sương Tỉnh', '<p>\r\n	Lắp Đặt Phun Sương Tỉnh\r\n</p>', 'Lắp Đặt Phun Sương Tỉnh', 1, NULL, 1, 1, '2018-03-16 09:00:32', '2018-03-16 09:00:32'),
(7, 'Liên Hệ', 'lien-he', '<p>\r\n	Liên Hệ\r\n</p>', '<p>\r\n	Liên Hệ\r\n</p>', 'contact.index', 'images/uploads/images/gt_1.jpg', 'Liên Hệ', '<p>\r\n	Liên Hệ\r\n</p>', 'Liên Hệ', 1, NULL, 1, 1, '2018-03-16 09:16:24', '2018-03-16 09:16:24'),
(8, 'Lắp Đặt Phun Sương 1', 'lap-dat-phun-suong-1', '<p>\r\n	Lắp Đặt Phun Sương 1\r\n</p>', '<p>\r\n	Lắp Đặt Phun Sương 1\r\n</p>', 'serviceinfo.index', 'images/uploads/images/gt_1.jpg', 'Lắp Đặt Phun Sương 1', '<p>\r\n	Lắp Đặt Phun Sương 1\r\n</p>', 'Lắp Đặt Phun Sương 1', 3, 3, 1, 1, '2018-03-16 14:48:58', '2018-03-16 15:36:35'),
(9, 'Lắp Đặt Phun Sương 2', 'lap-dat-phun-suong-2', '<p>\r\n	Lắp Đặt Phun Sương 2\r\n</p>', '<p>\r\n	Lắp Đặt Phun Sương 2\r\n</p>', 'serviceinfo.index', 'images/uploads/images/gt_1.jpg', 'Lắp Đặt Phun Sương 2', '<p>\r\n	Lắp Đặt Phun Sương 2\r\n</p>', 'Lắp Đặt Phun Sương 2', 3, 3, 1, 1, '2018-03-16 14:52:39', '2018-03-16 15:36:29'),
(10, 'Sửa Chữa Phun Sương 1', 'sua-chua-phun-suong-1', '<p>\r\n	Sửa Chữa Phun Sương 1\r\n</p>', '<p>\r\n	Sửa Chữa Phun Sương 1\r\n</p>', 'serviceinfo.index', 'images/uploads/images/gt_1.jpg', 'Sửa Chữa Phun Sương 1', '<p>\r\n	Sửa Chữa Phun Sương 1\r\n</p>', 'Sửa Chữa Phun Sương 1', 3, 4, 1, 1, '2018-03-16 14:53:22', '2018-03-16 15:36:24'),
(11, 'Sửa Chữa Phun Sương 2', 'sua-chua-phun-suong-2', '<p>\r\n	Sửa Chữa Phun Sương 2\r\n</p>', '<p>\r\n	Sửa Chữa Phun Sương 2\r\n</p>', 'serviceinfo.index', 'images/uploads/images/gt_1.jpg', 'Sửa Chữa Phun Sương 2', '<p>\r\n	Sửa Chữa Phun Sương 2\r\n</p>', 'Sửa Chữa Phun Sương 2', 3, 4, 1, 1, '2018-03-16 14:56:45', '2018-03-16 15:36:17'),
(12, 'Dự Án Đã Thực Hiện', 'du-an-da-thuc-hien', '<p>\r\n	Dự Án Đã Thực Hiện\r\n</p>', '<p>\r\n	Dự Án Đã Thực Hiện\r\n</p>', NULL, 'images/uploads/images/gt_1.jpg', 'Dự Án Đã Thực Hiện', '<p>\r\n	Dự Án Đã Thực Hiện\r\n</p>', 'Dự Án Đã Thực Hiện', 1, NULL, 1, 1, '2018-03-17 02:40:23', '2018-03-17 02:40:23'),
(13, 'Công Trình Quận 10', 'cong-trinh-quan-10', '<p>\r\n	Công Trình Quận 10\r\n</p>', '<p>\r\n	Công Trình Quận 10\r\n</p>', 'serviceinfo.index', 'images/uploads/images/gt_1.jpg', 'Công Trình Quận 10', '<p>\r\n	Công Trình Quận 10\r\n</p>', 'Công Trình Quận 10', 2, 6, 1, 1, '2018-03-17 02:44:57', '2018-03-17 02:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_keywords` text COLLATE utf8mb4_unicode_ci,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `final_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `isActive`, `image`, `description`, `content`, `seo_title`, `seo_description`, `seo_keywords`, `template`, `price`, `sale`, `final_price`, `order`, `user_id`, `category_product_id`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'aa', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-16 06:28:08'),
(2, 'aa 353', 'aa-353', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 2, '2018-03-16 03:24:27', '2018-03-16 16:24:45'),
(4, 'aa 928', 'aa-928', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-16 06:28:08'),
(5, 'aa 353 823', 'aa-353-823', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-16 06:28:08'),
(6, 'aa 353 823 236', 'aa-353-823-236', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-16 06:28:08'),
(7, 'aa 437', 'aa-437', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-16 23:54:01'),
(8, 'aa 353 643', 'aa-353-643', 1, 'images/uploads/images/gt_1.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	aa\r\n</p>', 'aa', '<p>\r\n	aa\r\n</p>', 'aa', 'product.index', '10000', 30, '7000', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-16 23:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_product_id_foreign` (`category_product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
