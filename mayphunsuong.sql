-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 20, 2018 lúc 09:32 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mayphunsuong`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_permissions`
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
-- Cấu trúc bảng cho bảng `category_posts`
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
-- Đang đổ dữ liệu cho bảng `category_posts`
--

INSERT INTO `category_posts` (`id`, `name`, `path`, `level`, `template`, `type`, `parent_id`, `page_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Máy Phun Sương', 'may-phun-suong', 0, 'category.index', 1, 0, 1, 2, '2018-03-16 01:41:57', '2018-03-20 06:12:57'),
(2, 'Linh Kiện Phun Sương', 'linh-kien-phun-suong', 0, 'category.index', 1, 0, 2, 3, '2018-03-16 01:42:53', '2018-03-20 06:13:12'),
(3, 'Lắp Đặt Phun Sương', 'lap-dat-phun-suong', 0, 'service.index', 0, NULL, 4, 1, '2018-03-16 09:02:35', '2018-03-16 09:02:35'),
(4, 'Sửa Chữa Phun Sương', 'sua-chua-phun-suong', 0, 'service.index', 0, NULL, 5, 2, '2018-03-16 09:02:59', '2018-03-16 09:02:59'),
(5, 'Lắp Đặt Phun Sương Tỉnh', 'lap-dat-phun-suong-tinh', 0, 'service.index', 0, NULL, 6, 3, '2018-03-16 09:03:19', '2018-03-16 09:03:19'),
(6, 'Dự Án Đã Thực Hiện', 'du-an-da-thuc-hien', 0, 'service.index', 0, NULL, 12, 4, '2018-03-17 02:41:49', '2018-03-17 02:41:49'),
(7, 'Trọn Bộ Máy Phun Sương', 'tron-bo-may-phun-suong', 0, 'category.index', 1, 0, 1, 1, '2018-03-20 06:12:50', '2018-03-20 07:18:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
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
-- Đang đổ dữ liệu cho bảng `menus`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_14_140923_create_entrust_setup_tables', 2),
(4, '2018_03_16_084857_create_products_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
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
-- Đang đổ dữ liệu cho bảng `permissions`
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
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
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
-- Cấu trúc bảng cho bảng `posts`
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
-- Đang đổ dữ liệu cho bảng `posts`
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
(13, 'Công Trình Quận 10', 'cong-trinh-quan-10', '<p>\r\n	Công Trình Quận 10\r\n</p>', '<p>\r\n	Công Trình Quận 10\r\n</p>', 'serviceinfo.index', 'images/uploads/images/gt_1.jpg', 'Công Trình Quận 10', '<p>\r\n	Công Trình Quận 10\r\n</p>', 'Công Trình Quận 10', 2, 6, 1, 1, '2018-03-17 02:44:57', '2018-03-17 02:44:57'),
(14, 'Trọn Bộ Máy Phun Sương', 'tron-bo-may-phun-suong', '<p>\r\n	Trọn Bộ Máy Phun Sương\r\n</p>', '<p>\r\n	Trọn Bộ Máy Phun Sương\r\n</p>', NULL, 'images/uploads/images/gt_1.jpg', 'Trọn Bộ Máy Phun Sương', '<p>\r\n	Trọn Bộ Máy Phun Sương\r\n</p>', 'Trọn Bộ Máy Phun Sương', 1, NULL, 1, 1, '2018-03-20 06:11:43', '2018-03-20 06:11:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `isActive`, `image`, `description`, `content`, `seo_title`, `seo_description`, `seo_keywords`, `template`, `price`, `sale`, `final_price`, `order`, `user_id`, `category_product_id`, `created_at`, `updated_at`) VALUES
(1, 'Trọn bộ Máy phun sương Fog Y5, 50 đầu phun', 'tron-bo-may-phun-suong-fog-y5-50-dau-phun', 1, 'images/uploads/images/sanpham/fog_y5.jpg', '<ul>\r\n	<li>\r\n		1 Máy&nbsp;Y5\r\n	</li>\r\n	<li>\r\n		70m Dây\r\n	</li>\r\n	<li>\r\n		50 Bộ Béc Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối 10 Cái\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng Đài\r\n	</li>\r\n</ul>', '<p>\r\n	Trọn bộ Máy phun sương Fog Y5 là một giải pháp điều hòa không khí , hoạt động dựa trên nguyên tắc bốc hơi nhanh .Nước sạch được nén với áp suất cao qua những vòi được thiết kế đặc biệt , chuyển hóa thành dạng sương phân tử siêu mỏng với kích thước hạt sương nhỏ , khuếch tán vào không khí nóng xung quanh , khiến sương bốc hơi ngay lập tức .Khi bốc hơi nhanh sương hấp thu nhiệt và do đó làm giảm nhiệt độ của môi trường xung quanh từ 5 &ndash; 7oC . Để giảm nhiệt độ trong thời tiết quá nắng nóng như hiện nay nên lắp đặt hệ thống phun sương ở trước hiên nhà , cửa trước khi vào nhà ,hoặc những gia đình có sân vườn thì phun sương là một giải pháp tạo không gian thoáng mát.<br>\r\n	Máy phun sương tạo áp suất cao cho nước để biến thể nước thành sương mù và hơi ẩm hạ nhiệt cho môi trường, lắng bụi, tạo không khí mát mẻ dễ chịu. Độ bền cao, vận hành êm không gấy tiếng ồn .Phun sương phù hợp cho: nhà hàng, quán ăn, nhà máy dệt&hellip;\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật<br>\r\n	Nhãn hiệu:FOG MAKER<br>\r\n	Model: FOG Y5<br>\r\n	xuất xứ: TAIWAN<br>\r\n	điện áp:220v<br>\r\n	công suất:80W/h<br>\r\n	số béc tối thiểu :40<br>\r\n	số béc tối đa:70<br>\r\n	Trọng lượng:7 Kg<br>\r\n	bảo hành:12 tháng\r\n</p>', 'Trọn bộ Máy phun sương Fog Y5, 50 đầu phun', '<p>\r\n	Trọn bộ Máy phun sương Fog Y5, 50 đầu phun\r\n</p>', 'Máy Phun Sương, may phun suong, fog y5', 'product.index', '10000', 30, '7000', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 07:04:56'),
(2, 'Trọn Bộ Máy Phun Sương Fog PS02 (40 Đầu Phun)', 'tron-bo-may-phun-suong-fog-ps02-40-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong-Fog-PS-02.jpg', '<p>\r\n	Trọn Bộ Phun Sương Đài Loan Chính Hãng Gồm :\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		1 Máy PS 02\r\n	</li>\r\n	<li>\r\n		60m Dây\r\n	</li>\r\n	<li>\r\n		40 Bộ Béc Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối 10 Cái\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng Đài Loan\r\n	</li>\r\n</ul>', '<p>\r\n	HỆ THỐNG PHUN SƯƠNG, PHUN HƠI NƯỚC, TẠO ẨM &ndash; LÀM MÁT NHÂN TẠO BẰNG BƠM NƯỚC &amp; BÉC PHUN, CÓ QUẠT &amp; KHÔNG QUẠT\r\n</p>\r\n\r\n<p>\r\n	Là một giải pháp tổng thể hữu hiệu nhất, hiện nay cho mọi gia đình, khu văn phòng, khu nhà hàng, khu vui chơi giải trí, bể bơi, &hellip; Không quá tốn điện, không quá tốn nước, tiền đâu tư ban đầu cũng không lớn, lại ngăn được bụi, giảm thiểu tiếng ồn, sạch sẽ mát mẻ, mà còn vui mắt, tạo nhiều cảnh đẹp, vui chơi giải trí. Để thiết lập và lắp đặt hệ thống phun sương cần căn cứ vào nhu cầu thực tế và diện tích mặt bằng phải xử lý.\r\n</p>\r\n\r\n<p>\r\n	NGUYÊN LÝ VÀ CƠ CHẾ LÀM MÁT &ndash; TẠO ẨM của hệ thống phun sương là dựa trên nguyên tắc trao đổi nhiệt và bốc hơi nhanh của các hạt &ldquo;bụi&rdquo; sương có kích thước rất nhỏ, ~ vài chục micro mét, trong quá trình lan tỏa ra môi trường xung quanh. Nhờ đó, nhiệt độ của môi trường có thể giảm xuống 5 &ndash; 10 độ C. Độ ẩm tương đối có thể đạt tới 90 &ndash; 100%.<br>\r\n	NGUYÊN LÝ VÀ CƠ CHẾ LÀM SẠCH KHÔNG KHÍ của hệ thống phun sương là dựa trên nguyên tắc hấp thụ và hấp phụ của các hạt &ldquo;bụi&rdquo; sương với các hạt bụi bẩn lơ lửng và với một số hóa chất độc hại ở dạng khí có trong không khí, trong quá trình lan tỏa ra môi trường xung quanh. Khi tạo ra một lớp &ldquo;bụi&rdquo; sương đủ dày bên ngoài căn phòng, tòa nhà, &hellip;, một không gian yên tĩnh, sạch sẽ, mát lạnh, và vô cùng lãng mạn thơ mộng đã được tạo thành.\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật\r\n</p>\r\n\r\n<p>\r\n	Nhãn hiệu:FOG MAKER<br>\r\n	Model: FOG PS 02<br>\r\n	Xuất xứ: TAIWAN<br>\r\n	Điện áp:220v<br>\r\n	Công suất:80W/h<br>\r\n	Số béc tối thiểu :20<br>\r\n	Số béc tối đa:50<br>\r\n	Lưu lượng bơm:1.5 L/P<br>\r\n	Trọng lượng:6 Kg<br>\r\n	Bảo hành:12 tháng\r\n</p>', 'Trọn Bộ Máy Phun Sương Fog PS02 (40 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Fog PS02 (40 Đầu Phun)\r\n</p>', 'Máy Phun Sương, may phun suong, fog ps 02', 'product.index', '0', 0, '0', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:59:15'),
(4, 'Trọn Bộ Máy Phun Sương Fog PS 05 (15 Đầu Phun)', 'tron-bo-may-phun-suong-fog-ps-05-15-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong-Fog-PS-05.jpg', '<p>\r\n	Trọn Bộ Phun Sương Đài Loan 15 Đầu Phun Gồm:( Cam Kết 100% Hàng Đài Loan)\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		1 Máy Phun Sương PS 05 Đài Loan Hàng Chính Hãng\r\n	</li>\r\n	<li>\r\n		40m Dây Đài Loan\r\n	</li>\r\n	<li>\r\n		T, Co, Nối Nhựa\r\n	</li>\r\n	<li>\r\n		15 Bộ Béc Đồng Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm Sử Dụng\r\n	</li>\r\n	<li>\r\n		1 Đổi 1 Trong Vòng 30 Ngày Nếu Máy Bị Lỗi\r\n	</li>\r\n</ul>', '<p>\r\n	Mày phun sương hay còn gọi là hệ thống phun sương làm mát, giàn phun sương, thiết bị phun sương tạo độ ẩm&hellip;ngày càng trở nên phổ biến bởi tác dụng làm mát, dập bụi mùa hè của nó. Với khả năng tạo độ ẩm, làm mát những khu vực có diện tích rộng lớn như quán bia, nhà hàng, quán cafe, công nghiệp, đường phố, sân bóng, sân thượng&hellip;lại có giá thành rẻ hơn rất nhiều so với điều hòa, tiết kiệm điện&hellip;thì máy, hệ thống phun sương ngày càng được sử dụng rộng rãi.\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật :\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		Nhãn Hiệu:FOG MAKER\r\n	</li>\r\n	<li>\r\n		Model: FOG PS 05 (máy hôp)\r\n	</li>\r\n	<li>\r\n		Xuất Xứ: TAIWAN\r\n	</li>\r\n	<li>\r\n		Điện Áp:220v\r\n	</li>\r\n	<li>\r\n		Lưu Lượng Bơm:1.6 L/P\r\n	</li>\r\n	<li>\r\n		Số Béc Tối Thiểu :5\r\n	</li>\r\n	<li>\r\n		Số Béc Tối Đa:30\r\n	</li>\r\n	<li>\r\n		Trọng Lượng:3,1 Kg\r\n	</li>\r\n	<li>\r\n		Bảo Hành 12 tháng Sử Dụng\r\n	</li>\r\n</ul>', 'Trọn Bộ Máy Phun Sương Fog PS 05 (15 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Fog PS 05 (15 Đầu Phun)\r\n</p>', 'Máy Phun Sương, may phun suong, fog ps 05', 'product.index', '2100000', 17, '1800000', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:59:35'),
(5, 'Trọn Bộ Máy Phun Sương Đài Loan Fog Y8 (70 Đầu Phun)', 'tron-bo-may-phun-suong-dai-loan-fog-y8-70-dau-phun', 1, 'images/uploads/images/sanpham/fog_y8.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	FOG Y8 là dòng máy cao cấp ,dùng áp lớn chuyên dùng trong các nhà xưởng nhà hàng công trình có diện tích rộng. FOG Y8 là một lưạ chọn tối ưu.\r\n</p>\r\n\r\n<p>\r\n	<u>Thông số kỹ thuật</u>\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		Nhãn hiệu:FOG MAKER\r\n	</li>\r\n	<li>\r\n		Model: FOG Y8\r\n	</li>\r\n	<li>\r\n		xuất xứ: TAIWAN\r\n	</li>\r\n	<li>\r\n		điện áp:220v\r\n	</li>\r\n	<li>\r\n		công suất:200W/h\r\n	</li>\r\n	<li>\r\n		số béc tối thiểu :40\r\n	</li>\r\n	<li>\r\n		số béc tối đa:70\r\n	</li>\r\n	<li>\r\n		Trọng lượng:9 Kg\r\n	</li>\r\n	<li>\r\n		bảo hành:12 tháng\r\n	</li>\r\n</ul>', 'Trọn Bộ Máy Phun Sương Đài Loan Fog Y8 (70 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Đài Loan Fog Y8 (70 Đầu Phun)\r\n</p>', 'Máy Phun Sương, may phun suong, fog y8', 'product.index', '0', 0, '0', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:29:24'),
(6, 'Trọn Bộ Máy Phun Sương Đài Loan Fog 2807 (30 Đầu Phun)', 'tron-bo-may-phun-suong-dai-loan-fog-2807-30-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong-2807.jpg', '<p>\r\n	aa\r\n</p>', '<p>\r\n	Máy phun sương FOG 2807 là một giải pháp điều hòa không khí , hoạt động dựa trên nguyên tắc bốc hơi nhanh .Nước sạch được nén với áp suất cao qua những vòi được thiết kế đặc biệt , chuyển hóa thành dạng sương phân tử siêu mỏng với kích thước hạt sương nhỏ , khuếch tán vào không khí nóng xung quanh , khiến sương bốc hơi ngay lập tức .Khi bốc hơi nhanh sương hấp thu nhiệt và do đó làm giảm nhiệt độ của môi trường xung quanh từ 5 &ndash; 7oC .\r\n</p>\r\n\r\n<p>\r\n	Để giảm nhiệt độ trong thời tiết quá nắng nóng như hiện nay nên lắp đặt hệ thống phun sương ở trước hiên nhà , cửa trước khi vào nhà ,hoặc những gia đình có sân vườn thì phun sương là một giải pháp tạo không gian thoáng mát.\r\n</p>\r\n\r\n<p>\r\n	<u><strong>Thông số kỹ thuật</strong></u>\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		Nhãn hiệu:FOG MAKER\r\n	</li>\r\n	<li>\r\n		Model: FOG 2807\r\n	</li>\r\n	<li>\r\n		xuất xứ: TAIWAN\r\n	</li>\r\n	<li>\r\n		điện áp:220v\r\n	</li>\r\n	<li>\r\n		công suất:80W/h\r\n	</li>\r\n	<li>\r\n		số béc tối thiểu :15\r\n	</li>\r\n	<li>\r\n		số béc tối đa:25\r\n	</li>\r\n	<li>\r\n		Thông số: 270x220x170\r\n	</li>\r\n	<li>\r\n		Trọng lượng:5 Kg\r\n	</li>\r\n</ul>\r\n\r\n<p>\r\n	Bảo hành:12 tháng\r\n</p>', 'Trọn Bộ Máy Phun Sương Đài Loan Fog 2807 (30 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Đài Loan Fog 2807 (30 Đầu Phun)\r\n</p>', 'Máy Phun Sương, may phun suong, fog 2807', 'product.index', '0', 0, '0', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:28:09'),
(7, 'Trọn Bộ Máy Phun Sương Đài Loan (20 Đầu Phun)', 'tron-bo-may-phun-suong-dai-loan-20-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong.png', '<p>\r\n	Trọn Bộ Phun Sương 20 Đầu Phun Đài Loan Gồm:\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		1 Máy Bơm Trơn&nbsp;HT 8399\r\n	</li>\r\n	<li>\r\n		40m Dây Phun Sương\r\n	</li>\r\n	<li>\r\n		20 Bộ Béc Đồng Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối Nhựa\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Đổi 1 Trong Vòng 30 Ngày Nếu Sản Phẩm Bị Lỗi Kĩ Thuật Do Nhà Sản Xuất\r\n	</li>\r\n</ul>', '<p>\r\n	Trọn bộ Máy phun sương HP 2500&nbsp;là dòng máy phun sương cao cấp ,dùng áp lớn chuyên dùng trong các nhà xưởng nhà hàng công trình có diện tích rộng. Máy phun sương HP 2500 là một lưạ chọn tối ưu.&nbsp;<strong>Máy phun sương HP 2500</strong>&nbsp;dùng trong các hệ thống phun sương làm mát, tưới lan, làm mát nhà xưởng, làm mát quán cà phê, làm mát nhà hàng, vườn ươm, làm mát nhà yến,&hellip;.<strong>Máy phun sương HP</strong>&nbsp;2500 với khả năng phun sương được từ 4-30 đầu phun sẽ được dùng để phun sương cho các quán café, quán bia có diện tích vài chục mét.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/mayphunsuong/images/uploads/images/sanpham/may-phun-suong.png\" style=\"width: 50%; height: 50%;\">\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật&nbsp;<strong>Máy phun sương HP 2500</strong>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Nhãn hiệu: HAWIN<br>\r\n	&ndash; Model: HP-2500<br>\r\n	&ndash; Xuất xứ: đài loan<br>\r\n	&ndash; Điện áp sử dụng:24v<br>\r\n	&ndash; Lưu lượng bơm:1,2 L/P<br>\r\n	&ndash; Phun sương:5-30 béc<br>\r\n	&ndash; Áp lực nước:150 PSI<br>\r\n	&ndash; Bảo hành:12 tháng<br>\r\n	&ndash; Trọng lượng:1,8 Kg\r\n</p>\r\n\r\n<p>\r\n	Ứng dụng&nbsp;Máy phun sương HP&nbsp;2500<br>\r\n	&ndash; Ống phun sương làm mát chuyên dụng làm hệ thống phun sương làm mát quán cà phê.<br>\r\n	&ndash; Phun thuốc trừ sâu.<br>\r\n	&ndash; Phun sương làm mát nhà yến.<br>\r\n	&ndash; Phun sương làm mát chuồng trại.<br>\r\n	&ndash; Làm mát nhà hàng.<br>\r\n	&ndash; Phun sương làm giãm khói bụi.<br>\r\n	&ndash; Phun sương làm mát nhà xưỡng.<br>\r\n	&ndash; Ống phun sương có thể dùng làm ống dẫn nước, dùng làm ống phun xịt rửa xe và nhu cầu khác &hellip;\r\n</p>', 'Trọn Bộ Máy Phun Sương Đài Loan (20 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Đài Loan (20 Đầu Phun)\r\n</p>', 'máy phun sương, may phun suong, Máy phun sương HP 2500', 'product.index', '1900000', 3, '1850000', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:14:21'),
(8, 'Trọn Bộ Máy Phun Sương Đài Loan (30 Đầu Phun)', 'tron-bo-may-phun-suong-dai-loan-30-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong.png', '<p>\r\n	Trọn Bộ Phun Sương 30 Đầu Phun Đài Loan Gồm\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		1 Máy Phun Sương HT 8399\r\n	</li>\r\n	<li>\r\n		40m Dây Phun Sương\r\n	</li>\r\n	<li>\r\n		30 Bộ Béc Đồng Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối Nhựa\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Đổi 1 Trong Vòng 30 Ngày Nếu Sản Phẩm Bị Lỗi Kĩ Thuật Do Nhà Sản Xuất\r\n	</li>\r\n</ul>', '<p>\r\n	Trọn bộ Máy phun sương HP 2500&nbsp;là dòng máy phun sương cao cấp ,dùng áp lớn chuyên dùng trong các nhà xưởng nhà hàng công trình có diện tích rộng. Máy phun sương HP 2500 là một lưạ chọn tối ưu.&nbsp;<strong>Máy phun sương HP 2500</strong>&nbsp;dùng trong các hệ thống phun sương làm mát, tưới lan, làm mát nhà xưởng, làm mát quán cà phê, làm mát nhà hàng, vườn ươm, làm mát nhà yến,&hellip;.<strong>Máy phun sương HP</strong>&nbsp;2500 với khả năng phun sương được từ 4-30 đầu phun sẽ được dùng để phun sương cho các quán café, quán bia có diện tích vài chục mét.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/mayphunsuong/images/uploads/images/sanpham/may-phun-suong.png\" style=\"width: 50%; height: 50%;\">\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật&nbsp;<strong>Máy phun sương HP 2500</strong>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Nhãn hiệu: HAWIN<br>\r\n	&ndash; Model: HP-2500<br>\r\n	&ndash; Xuất xứ: đài loan<br>\r\n	&ndash; Điện áp sử dụng:24v<br>\r\n	&ndash; Lưu lượng bơm:1,2 L/P<br>\r\n	&ndash; Phun sương:5-30 béc<br>\r\n	&ndash; Áp lực nước:150 PSI<br>\r\n	&ndash; Bảo hành:12 tháng<br>\r\n	&ndash; Trọng lượng:1,8 Kg\r\n</p>\r\n\r\n<p>\r\n	Ứng dụng&nbsp;Máy phun sương HP&nbsp;2500<br>\r\n	&ndash; Ống phun sương làm mát chuyên dụng làm hệ thống phun sương làm mát quán cà phê.<br>\r\n	&ndash; Phun thuốc trừ sâu.<br>\r\n	&ndash; Phun sương làm mát nhà yến.<br>\r\n	&ndash; Phun sương làm mát chuồng trại.<br>\r\n	&ndash; Làm mát nhà hàng.<br>\r\n	&ndash; Phun sương làm giãm khói bụi.<br>\r\n	&ndash; Phun sương làm mát nhà xưỡng.<br>\r\n	&ndash; Ống phun sương có thể dùng làm ống dẫn nước, dùng làm ống phun xịt rửa xe và nhu cầu khác &hellip;\r\n</p>', 'Trọn Bộ Máy Phun Sương Đài Loan (30 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Đài Loan (30 Đầu Phun)\r\n</p>', 'máy phun sương, may phun suong, Máy phun sương HP 2500', 'product.index', '0', 0, '0', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:14:13'),
(9, 'Trọn Bộ Máy Phun Sương Đài Loan (10 Đầu Phun)', 'tron-bo-may-phun-suong-dai-loan-10-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong.png', '<p>\r\n	Trọn Bộ Phun Sương 10 Đầu Phun Đài Loan Gồm:\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		1 Máy Phun Sương Hp 2500\r\n	</li>\r\n	<li>\r\n		20m Dây Phun Sương\r\n	</li>\r\n	<li>\r\n		10 Bộ Béc Đồng Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối Nhựa\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Đổi 1 Trong Vòng 30 Ngày Nếu Sản Phẩm Bị Lỗi Kĩ Thuật Do Nhà Sản Xuất\r\n	</li>\r\n</ul>', '<p>\r\n	Trọn bộ Máy phun sương HP 2500&nbsp;là dòng máy phun sương cao cấp ,dùng áp lớn chuyên dùng trong các nhà xưởng nhà hàng công trình có diện tích rộng. Máy phun sương HP 2500 là một lưạ chọn tối ưu.&nbsp;<strong>Máy phun sương HP 2500</strong>&nbsp;dùng trong các hệ thống phun sương làm mát, tưới lan, làm mát nhà xưởng, làm mát quán cà phê, làm mát nhà hàng, vườn ươm, làm mát nhà yến,&hellip;.<strong>Máy phun sương HP</strong>&nbsp;2500 với khả năng phun sương được từ 4-10 đầu phun sẽ được dùng để phun sương cho các quán café, quán bia có diện tích vài chục mét.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/mayphunsuong/images/uploads/images/sanpham/may-phun-suong.png\" style=\"width: 50%; height: 50%;\">\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật&nbsp;<strong>Máy phun sương HP 2500</strong>\r\n</p>\r\n\r\n<p>\r\n	&ndash; Nhãn hiệu: HAWIN<br>\r\n	&ndash; Model: HP-2500<br>\r\n	&ndash; Xuất xứ: đài loan<br>\r\n	&ndash; Điện áp sử dụng:24v<br>\r\n	&ndash; Lưu lượng bơm:1,2 L/P<br>\r\n	&ndash; Phun sương:5-30 béc<br>\r\n	&ndash; Áp lực nước:150 PSI<br>\r\n	&ndash; Bảo hành:12 tháng<br>\r\n	&ndash; Trọng lượng:1,8 Kg\r\n</p>\r\n\r\n<p>\r\n	Ứng dụng&nbsp;Máy phun sương HP&nbsp;2500<br>\r\n	&ndash; Ống phun sương làm mát chuyên dụng làm hệ thống phun sương làm mát quán cà phê.<br>\r\n	&ndash; Phun thuốc trừ sâu.<br>\r\n	&ndash; Phun sương làm mát nhà yến.<br>\r\n	&ndash; Phun sương làm mát chuồng trại.<br>\r\n	&ndash; Làm mát nhà hàng.<br>\r\n	&ndash; Phun sương làm giãm khói bụi.<br>\r\n	&ndash; Phun sương làm mát nhà xưỡng.<br>\r\n	&ndash; Ống phun sương có thể dùng làm ống dẫn nước, dùng làm ống phun xịt rửa xe và nhu cầu khác &hellip;\r\n</p>', 'Trọn Bộ Máy Phun Sương Đài Loan (10 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Đài Loan (10 Đầu Phun)\r\n</p>', 'máy phun sương, may phun suong, Máy phun sương HP 2500', 'product.index', '1450000', 20, '1200000', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:14:00'),
(10, 'Trọn Bộ Máy Phun Sương Đài Loan (5 Đầu Phun)', 'tron-bo-may-phun-suong-dai-loan-5-dau-phun', 1, 'images/uploads/images/sanpham/may-phun-suong.png', '<p>\r\n	Trọn Bộ Phun Sương 5 Đầu Phun Đài Loan Gồm:\r\n</p>\r\n\r\n<ul>\r\n	<li>\r\n		1 Máy Phun Sương Hp&nbsp;2500\r\n	</li>\r\n	<li>\r\n		20m Dây Phun Sương\r\n	</li>\r\n	<li>\r\n		5 Bộ Béc Đồng Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối Nhựa\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Đổi 1 Trong Vòng 30 Ngày Nếu Sản Phẩm Bị Lỗi Kĩ Thuật Do Nhà Sản Xuất\r\n	</li>\r\n</ul>', '<p>\r\n	Trọn bộ Máy phun sương HP 2500&nbsp;là dòng máy phun sương cao cấp ,dùng áp lớn chuyên dùng trong các nhà xưởng nhà hàng công trình có diện tích rộng. Máy phun sương HP 2500 là một lưạ chọn tối ưu.&nbsp;<strong>Máy phun sương HP 2500</strong>&nbsp;dùng trong các hệ thống phun sương làm mát, tưới lan, làm mát nhà xưởng, làm mát quán cà phê, làm mát nhà hàng, vườn ươm, làm mát nhà yến,&hellip;.<strong>Máy phun sương HP</strong>&nbsp;2500 với khả năng phun sương được từ 4-10 đầu phun sẽ được dùng để phun sương cho các quán café, quán bia có diện tích vài chục mét.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/mayphunsuong/images/uploads/images/sanpham/may-phun-suong.png\" style=\"width: 50%; height: 50%;\">\r\n</p>\r\n\r\n<p>\r\n	Chuyên dùng lọc nước RO và phun sương làm mát, tưới cây, phun hóa chất&hellip;\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật\r\n</p>\r\n\r\n<p>\r\n	Nhãn hiệu: HAWIN<br>\r\n	Model: HP-2500<br>\r\n	Xuất xứ: đài loan<br>\r\n	Điện áp sử dụng:24v<br>\r\n	Lưu lượng bơm:1,2 L/P<br>\r\n	Phun sương:5-15 béc<br>\r\n	Áp lực nước:150 PSI<br>\r\n	Bảo hành:12 tháng<br>\r\n	Trọng lượng:1,6 Kg\r\n</p>', 'Trọn Bộ Máy Phun Sương Đài Loan (5 Đầu Phun)', '<p>\r\n	Trọn Bộ Máy Phun Sương Đài Loan (5 Đầu Phun)\r\n</p>', 'máy phun sương, may phun suong, Máy phun sương HP 2500', 'product.index', '1200000', 20, '1000000', 1, 1, 7, '2018-03-16 03:24:27', '2018-03-20 06:13:50'),
(11, 'Bơm DY KJ-2000', 'bom-dy-kj-2000', 1, 'images/uploads/images/sanpham/bom-dy-kj-2000.jpg', '<ul>\r\n	<li>\r\n		1 Máy&nbsp;Y5\r\n	</li>\r\n	<li>\r\n		70m Dây\r\n	</li>\r\n	<li>\r\n		50 Bộ Béc Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối 10 Cái\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng Đài\r\n	</li>\r\n</ul>', '<h2>\r\n	Hệ thống phun sương sử dụng&nbsp;Bơm DY KJ-2000&nbsp;phun sương\r\n</h2>\r\n\r\n<p>\r\n	&ndash; Là một giải pháp tổng thể hữu hiệu nhất, hiện nay cho mọi gia đình, khu văn phòng, khu nhà hàng, khu vui chơi giải trí, bể bơi, &hellip; Không quá tốn điện, không quá tốn nước, tiền đâu tư ban đầu cũng không lớn, lại ngăn được bụi, giảm thiểu tiếng ồn, sạch sẽ mát mẻ, mà còn vui mắt, tạo nhiều cảnh đẹp, vui chơi giải trí. Để thiết lập và lắp đặt hệ thống phun sương cần căn cứ vào nhu cầu thực tế và diện tích mặt bằng phải xử lý.\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/mayphunsuong/images/uploads/images/sanpham/bom-dy-kj-2000.jpg\" style=\"width: 50%; height: 50%;\">\r\n</p>\r\n\r\n<h3>\r\n	Thông số kỹ thuật&nbsp;Bơm DY KJ-2000 phun sương:\r\n</h3>\r\n\r\n<p>\r\n	&ndash; Nhãn Hiệu:&nbsp;DENG YUAN (DY)<br>\r\n	&ndash; Xuất xứ:&nbsp;TAIWAN<br>\r\n	&ndash; Model: KJ-2000<br>\r\n	&ndash; Tình trạng: Hàng mới 100%<br>\r\n	&ndash; Điện áp sử dụng:&nbsp;32 V<br>\r\n	&ndash; Lưu lượng bơm: 4&nbsp;L/P<br>\r\n	&ndash; Phun sương: 50-70 béc<br>\r\n	&ndash; Áp lực nước: 150&nbsp;PSI (10.5&nbsp;BAR)<br>\r\n	&ndash; Công suất bơm:&nbsp;65&nbsp;W<br>\r\n	&ndash; Bảo hành: 12 tháng<br>\r\n	&ndash; Trọng lượng: 2,3&nbsp;Kg\r\n</p>\r\n\r\n<h3>\r\n	Nguyên lý làm mát tạo ẩm của Bơm DY KJ-2000 phun sương\r\n</h3>\r\n\r\n<p>\r\n	&ndash; Dựa trên nguyên tắc trao đổi nhiệt và bốc hơi nhanh của các hạt &ldquo;bụi&rdquo; sương có kích thước rất nhỏ, ~ vài chục micro mét, trong quá trình lan tỏa ra môi trường xung quanh. Nhờ đó, nhiệt độ của môi trường có thể giảm xuống 5 &ndash; 10 độ C. Độ ẩm tương đối có thể đạt tới 90 &ndash; 100%.\r\n</p>\r\n\r\n<h3>\r\n	Nguyên lý làm sạch không khí của Bơm DY KJ-2000 phun sương\r\n</h3>\r\n\r\n<p>\r\n	&ndash; Dựa trên nguyên tắc hấp thụ và hấp phụ của các hạt &ldquo;bụi&rdquo; sương với các hạt bụi bẩn lơ lửng và với một số hóa chất độc hại ở dạng khí có trong không khí, trong quá trình lan tỏa ra môi trường xung quanh. Khi tạo ra một lớp &ldquo;bụi&rdquo; sương đủ dày bên ngoài căn phòng, tòa nhà, &hellip;, một không gian yên tĩnh, sạch sẽ, mát lạnh, và vô cùng lãng mạn thơ mộng đã được tạo thành.\r\n</p>', 'Bơm DY KJ-2000', '<p>\r\n	Bơm DY KJ-2000\r\n</p>', 'Bơm DY KJ-2000, máy phun sương, may phun suong', 'product.index', '1550000', 0, '0', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-20 07:25:02'),
(12, 'MÁY PHUN SƯƠNG AP 50', 'may-phun-suong-ap-50', 1, 'images/uploads/images/sanpham/maybom-4219.jpg', '<ul>\r\n	<li>\r\n		1 Máy&nbsp;Y5\r\n	</li>\r\n	<li>\r\n		70m Dây\r\n	</li>\r\n	<li>\r\n		50 Bộ Béc Đài Loan\r\n	</li>\r\n	<li>\r\n		1 Bộ Lọc Nước\r\n	</li>\r\n	<li>\r\n		T, Co, Nối 10 Cái\r\n	</li>\r\n	<li>\r\n		Bảo Hành 1 Năm\r\n	</li>\r\n	<li>\r\n		1 Van Khóa Đồng Đài\r\n	</li>\r\n</ul>', '<p>\r\n	Máy phun sương AP50&nbsp;dùng trong các hệ thống phun sương làm mát, tưới lan, làm mát nhà xưởng, làm mát quán cà phê, làm mát nhà hàng, vườn ươm, làm mát nhà yến,&hellip;.Máy phun sương AP50 với khả năng phun sương được từ 4-10 đầu phun sẽ được dùng để phun sương cho các quán café, quán bia có diện tích vài chục mét.\r\n</p>\r\n\r\n<p>\r\n	Thông số kỹ thuật&nbsp;<strong>Máy phun sương AP50</strong>\r\n</p>\r\n\r\n<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"http://localhost:8080/mayphunsuong/images/uploads/images/sanpham/maybom-4219.jpg\" style=\"width: 500px; height: 500px;\">\r\n</p>\r\n\r\n<h3>\r\n	Ứng dụng&nbsp;<strong>Máy phun sương</strong>&nbsp;AP50<br>\r\n	&ndash; Ống phun sương làm mát chuyên dụng làm hệ thống phun sương làm mát quán cà phê.<br>\r\n	&ndash; Phun thuốc trừ sâu.<br>\r\n	&ndash; Phun sương làm mát nhà yến.<br>\r\n	&ndash; Phun sương làm mát chuồng trại.<br>\r\n	&ndash; Làm mát nhà hàng.<br>\r\n	&ndash; Phun sương làm giãm khói bụi.<br>\r\n	&ndash; Phun sương làm mát nhà xưỡng.<br>\r\n	&ndash; Ống phun sương có thể dùng làm ống dẫn nước, dùng làm ống phun xịt rửa xe và nhu cầu khác &hellip;\r\n</h3>', 'MÁY PHUN SƯƠNG AP 50', '<p>\r\n	MÁY PHUN SƯƠNG AP 50\r\n</p>', 'MÁY PHUN SƯƠNG AP 50, máy phun sương, may phun suong', 'product.index', '600000', 0, '0', 1, 1, 1, '2018-03-16 03:24:27', '2018-03-20 07:28:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
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
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_product_id_foreign` (`category_product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_product_id_foreign` FOREIGN KEY (`category_product_id`) REFERENCES `category_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
