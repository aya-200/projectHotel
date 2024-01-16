-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 15 jan. 2024 à 21:02
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add room', 9, 'add_room'),
(34, 'Can change room', 9, 'change_room'),
(35, 'Can delete room', 9, 'delete_room'),
(36, 'Can view room', 9, 'view_room'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add check out', 11, 'add_checkout'),
(42, 'Can change check out', 11, 'change_checkout'),
(43, 'Can delete check out', 11, 'delete_checkout'),
(44, 'Can view check out', 11, 'view_checkout'),
(45, 'Can add check in', 12, 'add_checkin'),
(46, 'Can change check in', 12, 'change_checkin'),
(47, 'Can delete check in', 12, 'delete_checkin'),
(48, 'Can view check in', 12, 'view_checkin'),
(49, 'Can add booking', 13, 'add_booking'),
(50, 'Can change booking', 13, 'change_booking'),
(51, 'Can delete booking', 13, 'delete_booking'),
(52, 'Can view booking', 13, 'view_booking'),
(53, 'Can add room display images', 14, 'add_roomdisplayimages'),
(54, 'Can change room display images', 14, 'change_roomdisplayimages'),
(55, 'Can delete room display images', 14, 'delete_roomdisplayimages'),
(56, 'Can view room display images', 14, 'view_roomdisplayimages');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$OHFD7RqDRm3qC3ApzDqZVH$/BI30yIhPWUwRFKvXN7JqmnyzjURALfrwzsCzoeWnqI=', NULL, 0, 'aya', '', '', 'aya@aya.com', 0, 1, '2024-01-10 17:07:10.552228'),
(2, 'pbkdf2_sha256$720000$nia6n4k7WTjL90kWWY5AD9$NCu0Z3d4V0GtayrcV7cTN9FwXMyckehhiUqR5wzDLn4=', NULL, 0, 'test', '', '', 'test@test.com', 0, 1, '2024-01-10 18:19:27.997300'),
(3, 'pbkdf2_sha256$720000$Gk8tlhJFEcd27ZgjeLuOyZ$fJhaMij31YP8tq5VmgCCv8nO9DVMytA1SjJc+rxnXYI=', '2024-01-12 17:37:57.153967', 1, 'ayakammah', '', '', 'ayakammah27@gmail.com', 1, 1, '2024-01-11 16:55:01.038516'),
(4, 'pbkdf2_sha256$720000$yaAvfM0SynfqNdoGJEbUjV$phk5njb9YnuLAtFNHEOfnHWr/CN3mA+mC3O9HIhHqao=', NULL, 0, 'salma', '', '', 'salma@salma.com', 0, 1, '2024-01-13 22:08:06.647541'),
(5, 'pbkdf2_sha256$720000$NuatXL7qBdG23K3Ts4gk9A$Ruy19GXeHK5UyOamP0KoXtFihFDgdq4e9P72Q3ui5II=', NULL, 0, 'ana', '', '', 'ana@ana.com', 0, 1, '2024-01-13 23:02:39.054449'),
(6, 'pbkdf2_sha256$720000$UWZquXNvzJ6K2pGcylsLPf$TCHpQpSigvENMc8T69GbfedvfTnNlSp62fQpCVP1jhc=', NULL, 0, 'hanane', '', '', 'hanane@hanane.com', 0, 1, '2024-01-13 23:09:02.872630');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-01-11 17:22:23.400956', '2', 'Single Room Classic', 1, '[{\"added\": {}}]', 9, 3),
(2, '2024-01-11 17:23:15.614449', '1', 'Trippel Room Classic', 2, '[{\"changed\": {\"fields\": [\"Cover image\"]}}]', 9, 3),
(3, '2024-01-11 17:25:33.523428', '3', 'Double Room Classic', 1, '[{\"added\": {}}]', 9, 3),
(4, '2024-01-11 17:28:43.117525', '4', 'Family Room Economy', 1, '[{\"added\": {}}]', 9, 3),
(5, '2024-01-11 17:29:07.245968', '1', 'Trippel Room Classic', 2, '[{\"changed\": {\"fields\": [\"Price per night\", \"Room size\"]}}]', 9, 3),
(6, '2024-01-11 17:47:08.475384', '1', 'Trippel Room Classic', 2, '[{\"added\": {\"name\": \"room display images\", \"object\": \"Trippel-room\"}}, {\"added\": {\"name\": \"room display images\", \"object\": \"Trippel-room\"}}, {\"added\": {\"name\": \"room display images\", \"object\": \"Trippel-room\"}}]', 9, 3),
(7, '2024-01-11 17:53:17.500791', '1', 'aya', 1, '[{\"added\": {}}]', 13, 3),
(8, '2024-01-11 21:34:09.761411', '5', 'Deluxe Room', 1, '[{\"added\": {}}]', 9, 3),
(9, '2024-01-11 21:34:59.279723', '5', 'Deluxe Room', 3, '', 9, 3),
(10, '2024-01-11 21:36:14.086648', '6', 'Deluxe Room', 1, '[{\"added\": {}}]', 9, 3),
(11, '2024-01-11 21:36:40.069505', '2', 'Single Room Classic', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 3),
(12, '2024-01-15 11:05:42.825913', '4', 'Family Room Economy', 2, '[]', 9, 3),
(13, '2024-01-15 11:05:54.263756', '6', 'Deluxe Room', 2, '[{\"changed\": {\"fields\": [\"Room size\"]}}]', 9, 3),
(14, '2024-01-15 11:06:00.004969', '6', 'Deluxe Room', 2, '[]', 9, 3),
(15, '2024-01-15 11:06:10.655141', '4', 'Family Room Economy', 2, '[{\"changed\": {\"fields\": [\"Room size\"]}}]', 9, 3),
(16, '2024-01-15 11:06:24.909480', '3', 'Double Room Classic', 2, '[{\"changed\": {\"fields\": [\"Room size\"]}}]', 9, 3),
(17, '2024-01-15 11:06:59.654918', '1', 'Trippel Room Classic', 2, '[{\"changed\": {\"fields\": [\"Room size\"]}}]', 9, 3),
(18, '2024-01-15 11:07:11.448208', '2', 'Single Room Classic', 2, '[{\"changed\": {\"fields\": [\"Room size\"]}}]', 9, 3),
(19, '2024-01-15 11:07:34.192442', '3', 'Double Room Classic', 2, '[]', 9, 3),
(20, '2024-01-15 11:07:49.264568', '1', 'Trippel Room Classic', 2, '[]', 9, 3),
(21, '2024-01-15 11:17:09.994422', '3', 'single_room', 1, '[{\"added\": {}}]', 12, 3),
(22, '2024-01-15 11:17:28.257800', '4', 'deluxe-room', 1, '[{\"added\": {}}]', 12, 3),
(23, '2024-01-15 11:18:17.124995', '5', 'family_room', 1, '[{\"added\": {}}]', 12, 3);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'hotel_app', 'booking'),
(7, 'hotel_app', 'category'),
(12, 'hotel_app', 'checkin'),
(11, 'hotel_app', 'checkout'),
(8, 'hotel_app', 'customer'),
(10, 'hotel_app', 'payment'),
(9, 'hotel_app', 'room'),
(14, 'hotel_app', 'roomdisplayimages'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-10 16:46:13.303403'),
(2, 'auth', '0001_initial', '2024-01-10 16:46:13.933887'),
(3, 'admin', '0001_initial', '2024-01-10 16:46:14.063232'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-10 16:46:14.070123'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-10 16:46:14.076293'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-01-10 16:46:14.138995'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-01-10 16:46:14.223272'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-01-10 16:46:14.243808'),
(9, 'auth', '0004_alter_user_username_opts', '2024-01-10 16:46:14.244409'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-01-10 16:46:14.306708'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-01-10 16:46:14.306708'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-10 16:46:14.306708'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-01-10 16:46:14.328032'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-10 16:46:14.348030'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-01-10 16:46:14.363624'),
(16, 'auth', '0011_update_proxy_permissions', '2024-01-10 16:46:14.371549'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-10 16:46:14.389398'),
(18, 'hotel_app', '0001_initial', '2024-01-10 16:46:14.980709'),
(19, 'hotel_app', '0002_room_cover_image', '2024-01-10 16:46:14.980709'),
(20, 'hotel_app', '0003_auto_20200906_1309', '2024-01-10 16:46:15.055989'),
(21, 'hotel_app', '0004_room_featured', '2024-01-10 16:46:15.075304'),
(22, 'hotel_app', '0005_auto_20200910_2016', '2024-01-10 16:46:15.080160'),
(23, 'hotel_app', '0006_auto_20200910_2029', '2024-01-10 16:46:15.140455'),
(24, 'hotel_app', '0007_remove_room_display_images', '2024-01-10 16:46:15.155424'),
(25, 'hotel_app', '0008_roomdisplayimages', '2024-01-10 16:46:15.287228'),
(26, 'hotel_app', '0009_auto_20200912_1231', '2024-01-10 16:46:15.356148'),
(27, 'hotel_app', '0010_auto_20200912_1313', '2024-01-10 16:46:16.080345'),
(28, 'hotel_app', '0011_auto_20200912_1549', '2024-01-10 16:46:16.187836'),
(29, 'hotel_app', '0012_auto_20200914_1929', '2024-01-10 16:46:16.202832'),
(30, 'hotel_app', '0013_auto_20200927_1627', '2024-01-10 16:46:16.682392'),
(31, 'sessions', '0001_initial', '2024-01-10 16:46:16.738707');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('lz4tos15zeu2ky59xh7xl5yevj2szgyc', '.eJxVjDkOwjAUBe_iGlle8LehpM8Zor-BAyiR4qRC3B0ipYD2zcx7mR7XpfZr07kfxJxNNIffjZAfOm5A7jjeJsvTuMwD2U2xO222m0Sfl939O6jY6rdOuVBAyBCQnFBRdicGlGPiqIXIs0C8IhXwCTSRlCQaGDS7gFG9eX8AAAQ4ug:1rOLTh:3JCNt9hwX5gN_V1fwRGnhdQ0PtJX2ezSfaR2v5_L1Hk', '2024-01-26 17:37:57.164525');

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_booking`
--

CREATE TABLE `hotel_app_booking` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `booking_date` datetime(6) NOT NULL,
  `checkout_date` datetime(6) DEFAULT NULL,
  `checking_date` datetime(6) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hotel_app_booking`
--

INSERT INTO `hotel_app_booking` (`id`, `customer_id`, `room_id`, `booking_date`, `checkout_date`, `checking_date`, `email`, `phone_number`) VALUES
(1, 1, 3, '2024-01-11 17:53:17.498792', '2024-01-13 17:53:14.000000', '2024-01-12 17:53:12.000000', 'ayakammah27@gmail.com', '0767409836'),
(2, 1, 2, '2024-01-11 18:22:41.665406', '2024-01-14 19:22:00.000000', '2024-01-13 19:22:00.000000', 'aya@aya.com', '0667409836'),
(3, 1, 4, '2024-01-12 10:02:35.635467', '2024-01-20 11:02:00.000000', '2024-01-14 11:02:00.000000', 'ayakammah27@gmail.com', '0767409836'),
(4, 1, 6, '2024-01-15 11:24:06.405087', '2024-01-27 12:24:00.000000', '2024-01-19 12:23:00.000000', 'ouss@ouss.com', '0624262528');

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_category`
--

CREATE TABLE `hotel_app_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hotel_app_category`
--

INSERT INTO `hotel_app_category` (`id`, `category_name`) VALUES
(1, 'Trippel'),
(2, 'Double'),
(3, 'Single'),
(4, 'Family'),
(5, 'All');

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_checkin`
--

CREATE TABLE `hotel_app_checkin` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hotel_app_checkin`
--

INSERT INTO `hotel_app_checkin` (`id`, `customer_id`, `email`, `phone_number`, `room_id`) VALUES
(3, 4, 'salma@salma.com', '0624262528', 2),
(4, 1, 'aya@gmail.com', '0767409836', 6),
(5, 6, 'hanane@hanane.com', '0623252928', 4),
(6, 1, 'ouss@ouss.com', '0624262528', 6);

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_checkout`
--

CREATE TABLE `hotel_app_checkout` (
  `id` int(11) NOT NULL,
  `check_out_date` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_customer`
--

CREATE TABLE `hotel_app_customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_payment`
--

CREATE TABLE `hotel_app_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_room`
--

CREATE TABLE `hotel_app_room` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `price_per_night` decimal(8,3) NOT NULL,
  `room_slug` varchar(50) NOT NULL,
  `is_booked` tinyint(1) NOT NULL,
  `capacity` int(11) NOT NULL,
  `room_size` varchar(5) NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover_image` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hotel_app_room`
--

INSERT INTO `hotel_app_room` (`id`, `title`, `price_per_night`, `room_slug`, `is_booked`, `capacity`, `room_size`, `category_id`, `cover_image`, `featured`) VALUES
(1, 'Trippel Room Classic', '320.000', 'Trippel-room', 0, 3, '4000', 1, 'Trippel-room/room_cover/tripelroom.jpg.jpg', 1),
(2, 'Single Room Classic', '100.000', 'single_room', 0, 1, '1500', 3, 'single_room/room_cover/Singleroom.jpg', 1),
(3, 'Double Room Classic', '270.000', 'double_room', 0, 2, '2000', 2, 'double_room/room_cover/doubleroom.jpg', 0),
(4, 'Family Room Economy', '400.000', 'family_room', 0, 5, '6000', 4, 'family_room/room_cover/familyroom.jpeg', 1),
(6, 'Deluxe Room', '500.000', 'deluxe-room', 1, 2, '2000', 2, 'deluxe-room/room_cover/deluxe2.jpg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `hotel_app_roomdisplayimages`
--

CREATE TABLE `hotel_app_roomdisplayimages` (
  `id` int(11) NOT NULL,
  `display_images` varchar(100) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hotel_app_roomdisplayimages`
--

INSERT INTO `hotel_app_roomdisplayimages` (`id`, `display_images`, `room_id`) VALUES
(1, 'C:UsersHPDesktop	ripelroom.jpg', 1),
(2, 'Trippel-room/room_display/tripple1.jpg', 1),
(3, 'Trippel-room/room_display/trippel2.jpeg', 1),
(4, 'Trippel-room/room_display/trippel3.jpg', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `hotel_app_booking`
--
ALTER TABLE `hotel_app_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_booking_room_id_4f53cbb3_fk_hotel_app_room_id` (`room_id`),
  ADD KEY `hotel_app_booking_customer_id_28e51e2a_fk_auth_user_id` (`customer_id`);

--
-- Index pour la table `hotel_app_category`
--
ALTER TABLE `hotel_app_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hotel_app_checkin`
--
ALTER TABLE `hotel_app_checkin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_checkin_room_id_c934201d_fk_hotel_app_room_id` (`room_id`),
  ADD KEY `hotel_app_checkin_customer_id_d7607316_fk_auth_user_id` (`customer_id`);

--
-- Index pour la table `hotel_app_checkout`
--
ALTER TABLE `hotel_app_checkout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_checkout_customer_id_d0f5f84c_fk_hotel_app_customer_id` (`customer_id`);

--
-- Index pour la table `hotel_app_customer`
--
ALTER TABLE `hotel_app_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_customer_customer_id_0062e7ec_fk_auth_user_id` (`customer_id`);

--
-- Index pour la table `hotel_app_payment`
--
ALTER TABLE `hotel_app_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_payment_customer_id_407f84ea_fk_hotel_app_customer_id` (`customer_id`);

--
-- Index pour la table `hotel_app_room`
--
ALTER TABLE `hotel_app_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_room_category_id_f0774359_fk_hotel_app_category_id` (`category_id`),
  ADD KEY `hotel_app_room_room_slug_633fcf94` (`room_slug`);

--
-- Index pour la table `hotel_app_roomdisplayimages`
--
ALTER TABLE `hotel_app_roomdisplayimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_app_roomdispla_room_id_02c476a3_fk_hotel_app` (`room_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `hotel_app_booking`
--
ALTER TABLE `hotel_app_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `hotel_app_category`
--
ALTER TABLE `hotel_app_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `hotel_app_checkin`
--
ALTER TABLE `hotel_app_checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `hotel_app_checkout`
--
ALTER TABLE `hotel_app_checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_app_customer`
--
ALTER TABLE `hotel_app_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_app_payment`
--
ALTER TABLE `hotel_app_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hotel_app_room`
--
ALTER TABLE `hotel_app_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `hotel_app_roomdisplayimages`
--
ALTER TABLE `hotel_app_roomdisplayimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `hotel_app_booking`
--
ALTER TABLE `hotel_app_booking`
  ADD CONSTRAINT `hotel_app_booking_customer_id_28e51e2a_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `hotel_app_booking_room_id_4f53cbb3_fk_hotel_app_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_app_room` (`id`);

--
-- Contraintes pour la table `hotel_app_checkin`
--
ALTER TABLE `hotel_app_checkin`
  ADD CONSTRAINT `hotel_app_checkin_customer_id_d7607316_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `hotel_app_checkin_room_id_c934201d_fk_hotel_app_room_id` FOREIGN KEY (`room_id`) REFERENCES `hotel_app_room` (`id`);

--
-- Contraintes pour la table `hotel_app_checkout`
--
ALTER TABLE `hotel_app_checkout`
  ADD CONSTRAINT `hotel_app_checkout_customer_id_d0f5f84c_fk_hotel_app_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `hotel_app_customer` (`id`);

--
-- Contraintes pour la table `hotel_app_customer`
--
ALTER TABLE `hotel_app_customer`
  ADD CONSTRAINT `hotel_app_customer_customer_id_0062e7ec_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `hotel_app_payment`
--
ALTER TABLE `hotel_app_payment`
  ADD CONSTRAINT `hotel_app_payment_customer_id_407f84ea_fk_hotel_app_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `hotel_app_customer` (`id`);

--
-- Contraintes pour la table `hotel_app_room`
--
ALTER TABLE `hotel_app_room`
  ADD CONSTRAINT `hotel_app_room_category_id_f0774359_fk_hotel_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `hotel_app_category` (`id`);

--
-- Contraintes pour la table `hotel_app_roomdisplayimages`
--
ALTER TABLE `hotel_app_roomdisplayimages`
  ADD CONSTRAINT `hotel_app_roomdispla_room_id_02c476a3_fk_hotel_app` FOREIGN KEY (`room_id`) REFERENCES `hotel_app_room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
