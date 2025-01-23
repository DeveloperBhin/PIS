-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2024 at 11:47 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pisbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add registerpage', 7, 'add_registerpage'),
(26, 'Can change registerpage', 7, 'change_registerpage'),
(27, 'Can delete registerpage', 7, 'delete_registerpage'),
(28, 'Can view registerpage', 7, 'view_registerpage'),
(29, 'Can add register', 8, 'add_register'),
(30, 'Can change register', 8, 'change_register'),
(31, 'Can delete register', 8, 'delete_register'),
(32, 'Can view register', 8, 'view_register'),
(33, 'Can add registerpages', 9, 'add_registerpages'),
(34, 'Can change registerpages', 9, 'change_registerpages'),
(35, 'Can delete registerpages', 9, 'delete_registerpages'),
(36, 'Can view registerpages', 9, 'view_registerpages'),
(37, 'Can add loginpage', 10, 'add_loginpage'),
(38, 'Can change loginpage', 10, 'change_loginpage'),
(39, 'Can delete loginpage', 10, 'delete_loginpage'),
(40, 'Can view loginpage', 10, 'view_loginpage'),
(41, 'Can add image', 11, 'add_image'),
(42, 'Can change image', 11, 'change_image'),
(43, 'Can delete image', 11, 'delete_image'),
(44, 'Can view image', 11, 'view_image'),
(45, 'Can add imagepage', 12, 'add_imagepage'),
(46, 'Can change imagepage', 12, 'change_imagepage'),
(47, 'Can delete imagepage', 12, 'delete_imagepage'),
(48, 'Can view imagepage', 12, 'view_imagepage'),
(49, 'Can add audios', 13, 'add_audios'),
(50, 'Can change audios', 13, 'change_audios'),
(51, 'Can delete audios', 13, 'delete_audios'),
(52, 'Can view audios', 13, 'view_audios'),
(53, 'Can add links', 14, 'add_links'),
(54, 'Can change links', 14, 'change_links'),
(55, 'Can delete links', 14, 'delete_links'),
(56, 'Can view links', 14, 'view_links'),
(57, 'Can add note', 15, 'add_note'),
(58, 'Can change note', 15, 'change_note'),
(59, 'Can delete note', 15, 'delete_note'),
(60, 'Can view note', 15, 'view_note'),
(61, 'Can add others', 16, 'add_others'),
(62, 'Can change others', 16, 'change_others'),
(63, 'Can delete others', 16, 'delete_others'),
(64, 'Can view others', 16, 'view_others'),
(65, 'Can add upload', 17, 'add_upload'),
(66, 'Can change upload', 17, 'change_upload'),
(67, 'Can delete upload', 17, 'delete_upload'),
(68, 'Can view upload', 17, 'view_upload'),
(69, 'Can add videos', 18, 'add_videos'),
(70, 'Can change videos', 18, 'change_videos'),
(71, 'Can delete videos', 18, 'delete_videos'),
(72, 'Can view videos', 18, 'view_videos');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(5, 'pbkdf2_sha256$870000$IEGvYpUhuYQdF0E7d7UxGa$YaxupawpFX4+xekQVqnPwO3Shh4LrVh+j+tP96A/IY0=', '2024-09-29 08:11:24.448733', 0, 'new1@gmail', '', '', '', 0, 1, '2024-09-28 17:10:59.335659'),
(6, 'pbkdf2_sha256$870000$VOEoxphVMGV1OFqcihtun1$1Sghxj7/W2/1RnCAkMlltTcf/jo4NtdpeNDGUlCtqqw=', '2024-09-30 09:44:05.312412', 0, 'new@gmail', '', '', '', 0, 1, '2024-09-28 17:34:19.383951');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'P', 'audios'),
(11, 'P', 'image'),
(12, 'P', 'imagepage'),
(14, 'P', 'links'),
(10, 'P', 'loginpage'),
(15, 'P', 'note'),
(16, 'P', 'others'),
(8, 'P', 'register'),
(7, 'P', 'registerpage'),
(9, 'P', 'registerpages'),
(17, 'P', 'upload'),
(18, 'P', 'videos'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-18 06:00:09.310939'),
(2, 'auth', '0001_initial', '2024-09-18 06:00:09.686675'),
(3, 'admin', '0001_initial', '2024-09-18 06:00:09.826438'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-18 06:00:09.826438'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-18 06:00:09.844962'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-18 06:00:09.976531'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-18 06:00:10.028650'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-18 06:00:10.060138'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-18 06:00:10.073243'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-18 06:00:10.111377'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-18 06:00:10.111865'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-18 06:00:10.111865'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-18 06:00:10.148733'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-18 06:00:10.168752'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-18 06:00:10.199441'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-18 06:00:10.211897'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-18 06:00:10.237143'),
(18, 'sessions', '0001_initial', '2024-09-18 06:00:10.309869'),
(19, 'P', '0001_initial', '2024-09-18 08:40:32.495955'),
(20, 'P', '0003_registerpages_delete_registerpage', '2024-09-18 11:52:36.004227'),
(21, 'P', '0004_registerpage_delete_registerpages', '2024-09-18 12:58:35.588400'),
(22, 'P', '0005_loginpage', '2024-09-18 13:23:19.372106'),
(23, 'P', '0005_registerpage_last_login', '2024-09-19 07:36:37.628862'),
(24, 'P', '0006_remove_registerpage_email_and_more', '2024-09-19 07:51:10.333585'),
(25, 'P', '0002_registerpage_delete_register', '2024-09-19 08:55:45.475617'),
(26, 'P', '0003_image', '2024-09-23 07:45:09.990735'),
(27, 'P', '0004_imagepage_delete_image', '2024-09-23 08:52:14.844071'),
(28, 'P', '0005_alter_imagepage_description', '2024-09-23 09:05:42.934053'),
(29, 'P', '0006_remove_imagepage_image_imagepage_image', '2024-09-23 12:36:03.721013'),
(30, 'P', '0007_audios_image_links_note_others_upload_videos', '2024-09-24 08:35:21.030908'),
(31, 'P', '0008_alter_audios_description', '2024-09-24 10:08:29.306550'),
(32, 'P', '0009_alter_audios_audios', '2024-09-24 10:34:07.679437'),
(33, 'P', '0010_alter_upload_file', '2024-09-24 10:47:02.758570'),
(34, 'P', '0011_alter_upload_file', '2024-09-24 11:19:51.102825'),
(35, 'P', '0012_alter_audios_description_alter_image_description_and_more', '2024-09-25 06:17:43.288003'),
(36, 'P', '0013_alter_audios_audios_alter_image_image_and_more', '2024-09-25 06:27:18.266668'),
(37, 'P', '0014_alter_audios_audios', '2024-09-25 07:53:18.222987'),
(38, 'P', '0015_alter_image_image_alter_others_audios_and_more', '2024-09-25 07:56:53.871934'),
(39, 'P', '0002_alter_audios_user_alter_image_user_and_more', '2024-09-28 18:45:38.676312'),
(40, 'P', '0003_remove_imagepage_user', '2024-09-29 07:31:24.918467');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('d92ibbz2g60hhuai3p8fb5y9o2brnchl', '.eJxVjDsOwjAQBe_iGll2Nv5R0nMGa9de4wBypDipEHeHSCmgfTPzXiLitta4dV7ilMVZgDj9boTpwW0H-Y7tNss0t3WZSO6KPGiX1znz83K4fwcVe_3WPA66sPMELvmsUBcFoAMF0GakZArYQlgCecXBoGEYXMrWsLbKZQri_QHnoTgJ:1ssycS:BlwFn5x3vm-_0ImjKeldiqyn3N74_pdNYZdGkbjlYeQ', '2024-10-08 06:01:52.096706'),
('powgwm5nxrq16mi74gwp6kdil6u21f58', '.eJxVjEEOwiAUBe_C2hAg8CEu3XsG8h9QqZqSlHZlvLuSdKHbmcm8ROR9q3HvZY1zFmdB4vTLwOlRliHynZdbk6kt2zpDjkQetstry-V5Odq_QeVex9ZaFDIFHBwnGE4KAcSZNYyfHAeNjGxSUF6xg4Mlb0v4phpEk3h_ABa0OQY:1svCwn:xkDUuyDQ9cK7FzVRhkdIeqkG50G2JWBWM750BpoI1zg', '2024-10-14 09:44:05.316400');

-- --------------------------------------------------------

--
-- Table structure for table `p_audios`
--

CREATE TABLE `p_audios` (
  `id` bigint(20) NOT NULL,
  `Audios` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_audios`
--

INSERT INTO `p_audios` (`id`, `Audios`, `description`, `user_id`) VALUES
(1, 'Audios/Alikiba__K2ga_Vanillah_Abdukiba_Tommy_Flavour_-_La_La_La_Dance_Performance_Video128k.m4a', 'ali', 1),
(2, 'Audios/Alikiba_-_Asali_Official_Lyrics_Video128k_9RJH55H.mp3', '1aud', 6);

-- --------------------------------------------------------

--
-- Table structure for table `p_image`
--

CREATE TABLE `p_image` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_image`
--

INSERT INTO `p_image` (`id`, `image`, `description`, `user_id`) VALUES
(1, 'Images/IMG_20230628_122129_863.jpg', '1image', 1),
(2, 'Images/IMG_20230628_122129_863_JYuLNT7.jpg', '1mg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `p_imagepage`
--

CREATE TABLE `p_imagepage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_imagepage`
--

INSERT INTO `p_imagepage` (`id`, `image`, `description`) VALUES
(2, 'uploads/pen_1_WfE6EuJ_jyJBnQm.png', 'Note'),
(3, 'uploads/folder_2tzssWk_3VbxPCi.png', 'File'),
(4, 'uploads/photo_3b1tydC_GaHHO59.png', 'Images'),
(5, 'uploads/upload_1mifumr_83DHwol.png', 'Videos'),
(6, 'uploads/mic_YI4jUlb_rJDNxTk.png', 'Audios'),
(7, 'uploads/link_Ob22Y72_pgg3hHH.png', 'Links'),
(8, 'uploads/other_YS8UWm0_2vDqQoT.png', 'Others'),
(10, 'uploads/profile-avatar.png', 'Profile');

-- --------------------------------------------------------

--
-- Table structure for table `p_links`
--

CREATE TABLE `p_links` (
  `id` bigint(20) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_links`
--

INSERT INTO `p_links` (`id`, `Link`, `description`, `user_id`) VALUES
(1, 'https://chatgpt.com/c/66f65634-0770-8007-b8d2-4fa108b8368e', 'link', 1),
(2, 'https://chatgpt.com/c/66f65634-0770-8007-b8d2-4fa108b8368e', '1lnk', 6);

-- --------------------------------------------------------

--
-- Table structure for table `p_note`
--

CREATE TABLE `p_note` (
  `id` bigint(20) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_note`
--

INSERT INTO `p_note` (`id`, `tittle`, `description`, `user_id`) VALUES
(2, 'MY TIME TABLE2', '2day', 6),
(3, 'MY TIME TABLE3', '3times', 5);

-- --------------------------------------------------------

--
-- Table structure for table `p_others`
--

CREATE TABLE `p_others` (
  `id` bigint(20) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `Audios` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `videos` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_others`
--

INSERT INTO `p_others` (`id`, `Link`, `Audios`, `image`, `videos`, `file`, `description`, `user_id`) VALUES
(1, 'https://chatgpt.com/c/66f65634-0770-8007-b8d2-4fa108b8368e', 'other/Abigail_Chams2C_Marioo_-_Nani___Official_Lyric_Video_128k.mp3', 'other/255687159703_status_6d5bab2f9a5f467c834c61dd6ea455e4.jpg', 'other/VID-20231225-WA0000.mp4', 'other/WhatsApp_Image_2021-09-23_at_9.42.57_PM.jpeg', 'other', 1),
(2, 'https://chatgpt.com/c/66f65634-0770-8007-b8d2-4fa108b8368e', 'other/Abdu_Kiba_Feat._Ney_and_Neiba_-_Uyoo_Sio_Demu128k.m4a', 'other/255687159703_status_6d5bab2f9a5f467c834c61dd6ea455e4_4qmlllD.jpg', 'other/VID-20231225-WA0000_e2pONlS.mp4', 'other/WhatsApp_Image_2021-09-23_at_9.42.56_PM.jpeg', '2other', 6),
(3, 'https://chatgpt.com/c/66f65634-0770-8007-b8d2-4fa108b8368e', 'other/Abigail_Chams2C_Marioo_-_Nani___Official_Lyric_Video_128k_g1CREru.mp3', 'other/WhatsApp_Image_2021-09-23_at_9.42.57_PM_2.jpeg', 'other/VID-20231222-WA0001.mp4', 'other/Screenshot_20230529-130416_1_0JpXkve.jpg', '2file', 6);

-- --------------------------------------------------------

--
-- Table structure for table `p_registerpage`
--

CREATE TABLE `p_registerpage` (
  `id` bigint(20) NOT NULL,
  `username` varchar(254) NOT NULL,
  `password` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_upload`
--

CREATE TABLE `p_upload` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_upload`
--

INSERT INTO `p_upload` (`id`, `file`, `description`, `user_id`) VALUES
(1, 'upload/2G.pdf', '1file', 1),
(2, 'upload/Athentication_qVlKjcu.pdf', '1file', 6);

-- --------------------------------------------------------

--
-- Table structure for table `p_videos`
--

CREATE TABLE `p_videos` (
  `id` bigint(20) NOT NULL,
  `videos` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_videos`
--

INSERT INTO `p_videos` (`id`, `videos`, `description`, `user_id`) VALUES
(1, 'Videos/VID-20231222-WA0001_WNMOUgH.mp4', 'vid', 1),
(2, 'Videos/VID-20231226-WA0001_IGoCzso.mp4', '1vid', 6);

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
-- Indexes for table `p_audios`
--
ALTER TABLE `p_audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_image`
--
ALTER TABLE `p_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_imagepage`
--
ALTER TABLE `p_imagepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_links`
--
ALTER TABLE `p_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_note`
--
ALTER TABLE `p_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_others`
--
ALTER TABLE `p_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_registerpage`
--
ALTER TABLE `p_registerpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_upload`
--
ALTER TABLE `p_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_videos`
--
ALTER TABLE `p_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `p_audios`
--
ALTER TABLE `p_audios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p_image`
--
ALTER TABLE `p_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p_imagepage`
--
ALTER TABLE `p_imagepage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `p_links`
--
ALTER TABLE `p_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p_note`
--
ALTER TABLE `p_note`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `p_others`
--
ALTER TABLE `p_others`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `p_registerpage`
--
ALTER TABLE `p_registerpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_upload`
--
ALTER TABLE `p_upload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p_videos`
--
ALTER TABLE `p_videos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
