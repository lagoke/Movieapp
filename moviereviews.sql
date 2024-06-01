-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 01:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviereviews`
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
(25, 'Can add movie', 7, 'add_movie'),
(26, 'Can change movie', 7, 'change_movie'),
(27, 'Can delete movie', 7, 'delete_movie'),
(28, 'Can view movie', 7, 'view_movie'),
(29, 'Can add news', 8, 'add_news'),
(30, 'Can change news', 8, 'change_news'),
(31, 'Can delete news', 8, 'delete_news'),
(32, 'Can view news', 8, 'view_news'),
(33, 'Can add review', 9, 'add_review'),
(34, 'Can change review', 9, 'change_review'),
(35, 'Can delete review', 9, 'delete_review'),
(36, 'Can view review', 9, 'view_review');

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
(4, 'pbkdf2_sha256$320000$v0IenZ57nCTQgnOtk8lCxe$Z9ixJiwRqVEvXcwPni9irqZu0UlVpQsoaZ5Nj2kj3Vw=', NULL, 1, 'Amiola007', 'olagoke', 'Amiola', 'olagokeamiola@gmail.com', 0, 1, '2024-06-01 22:55:48.000000'),
(5, 'pbkdf2_sha256$320000$VLsNlFUB15SLCzltb8jFeB$QxmmjWGBligNX7iDqNrPyf2/ziqB8g/A6LBf8aP+WZM=', '2024-06-01 23:07:32.088995', 1, 'Amiola008', '', '', 'olagokeamiola@gmail.com', 1, 1, '2024-06-01 23:06:43.223467'),
(6, 'pbkdf2_sha256$320000$jyqGlhm6AAIRD7q3OtmWaj$9vYPJ4/+YjWKK1A2lUMtIXMAbJSFea++rTNhfLc6M4Q=', '2024-06-01 23:33:26.094428', 0, 'Amicash', '', '', '', 0, 1, '2024-06-01 23:33:25.497439');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(9, '2024-06-01 23:13:46.079113', '3', 'Movie object (3)', 1, '[{\"added\": {}}]', 7, 5),
(10, '2024-06-01 23:18:57.147108', '4', 'Movie object (4)', 1, '[{\"added\": {}}]', 7, 5),
(11, '2024-06-01 23:24:13.093399', '5', 'Movie object (5)', 1, '[{\"added\": {}}]', 7, 5),
(12, '2024-06-01 23:27:11.797654', '6', 'Movie object (6)', 1, '[{\"added\": {}}]', 7, 5),
(13, '2024-06-01 23:30:07.741750', '7', 'Movie object (7)', 1, '[{\"added\": {}}]', 7, 5),
(14, '2024-06-01 23:32:19.566053', '8', 'Movie object (8)', 1, '[{\"added\": {}}]', 7, 5),
(15, '2024-06-01 23:37:40.214565', '3', 'Real Madrid wins the champions league', 1, '[{\"added\": {}}]', 8, 5);

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
(7, 'movie', 'movie'),
(9, 'movie', 'review'),
(8, 'news', 'news'),
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
(1, 'contenttypes', '0001_initial', '2024-05-24 13:55:43.232090'),
(2, 'auth', '0001_initial', '2024-05-24 13:55:44.459625'),
(3, 'admin', '0001_initial', '2024-05-24 13:55:44.696703'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-24 13:55:44.725348'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-24 13:55:44.754554'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-24 13:55:44.918499'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-24 13:55:45.060040'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-24 13:55:45.118710'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-24 13:55:45.161172'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-24 13:55:45.339177'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-24 13:55:45.360592'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-24 13:55:45.394725'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-24 13:55:45.442429'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-24 13:55:45.492722'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-24 13:55:45.557151'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-24 13:55:45.609145'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-24 13:55:45.646745'),
(18, 'movie', '0001_initial', '2024-05-24 13:55:45.702880'),
(19, 'news', '0001_initial', '2024-05-24 13:55:45.763160'),
(20, 'sessions', '0001_initial', '2024-05-24 13:55:45.828587'),
(21, 'movie', '0002_review', '2024-05-31 13:49:55.069920');

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
('9n1ng5gpfik36nj4nk5odje8f3begtot', '.eJxVjDsOwjAQBe_iGlnrT-wNJT1niDa7Ng4gW8qnQtwdIqWA9s3Me6mBtrUM25LmYRJ1VkGdfreR-JHqDuRO9dY0t7rO06h3RR900dcm6Xk53L-DQkv51oYdoUjwGThbIC859-IxuswuAGUewRB415FxvkMMEZO1yBghQU_q_QH5nTfO:1sDYE2:qG5Xvp7jj7-TmyhZJb1Ye_mg1DOU4whkLOwWz3F42Bo', '2024-06-15 23:33:26.096429'),
('bmy30oievhyg9rnvtqu1ckynval3mavm', '.eJxVjEEOwiAQRe_C2hCgw4Au3fcMhIFBqoYmpV0Z765NutDtf-_9lwhxW2vYOi9hyuIijDj9bhTTg9sO8j222yzT3NZlIrkr8qBdjnPm5_Vw_w5q7PVbe8XaWnSOrQbHRWvlCmhjHCcitgwwJEJPNKDPZ6_QkS0eAchrRhLvD8W-N1U:1sD6u6:8NsyxFmvEd-i2M6fPeaigVXNAxdOUCtWqrqrW4DjRr0', '2024-06-14 18:23:02.031805'),
('spddhvluj5pdp8c16jhojgwst9nxd8jh', '.eJxVjDEOwjAMAP-SGUWt7TQVIztviJzYkAJKpaadKv4OkTrAene63QTe1hy2qkuYxJyNM6dfFjk9tTQhDy732aa5rMsUbUvsYau9zqKvy9H-DTLX3LZpJOgIBAUigiTCbvQK7Hpm9V_LCZX8rQcgRYmEA3gQHjCxd868P9WxN4g:1sDXoy:A0eGuI-6C3oa8J2dckDdBIe1IB0yhcv4KznFrOnfEnE', '2024-06-15 23:07:32.093992'),
('vvs34r0rviqpndwne2wzpc7psvni65b5', '.eJxVjMsOwiAUBf-FtSFQQIpL9_0Gcl-VqoGkj5Xx37VJF7o9M3NeKsO2lrwtMueJ1UVZdfrdEOghdQd8h3prmlpd5wn1ruiDLnpoLM_r4f4dFFjKtwaLSaJzEbwxFMYOBd0ZUh8xUHIhsWOWQMwQx94E6Cx5H9Ek4ZGiUe8P9OQ4kA:1sAVT5:d6r2eMoapjd88q67Bt80GnwqOAXM1eAF6rrI6McZ300', '2024-06-07 14:00:23.291548');

-- --------------------------------------------------------

--
-- Table structure for table `movie_movie`
--

CREATE TABLE `movie_movie` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_movie`
--

INSERT INTO `movie_movie` (`id`, `title`, `description`, `image`, `url`) VALUES
(3, 'Dune', 'Ancient Sci fi', 'movie/images/Dune.PNG', 'https://www.youtube.com/watch?v=n9xhJrPXop4'),
(4, 'Lord of the Rings', 'Adventure', 'movie/images/Lord_of_the_Rings.PNG', 'https://www.youtube.com/watch?v=_nZdmwHrcnw'),
(5, 'The Matrix', 'Sci fi', 'movie/images/The_Matrix.PNG', 'https://www.youtube.com/watch?v=vKQi3bBA1y8'),
(6, 'The Avengers', 'Sci fi', 'movie/images/The_Avengers.PNG', 'https://www.youtube.com/watch?v=bGt-saFvkNk'),
(7, 'Titanic', 'Drama', 'movie/images/Titanic.PNG', 'https://www.youtube.com/watch?v=kVrqfYjkTdQ'),
(8, 'The life of Pi', 'Drama', 'movie/images/The_life_of_Pi.PNG', 'https://www.youtube.com/watch?v=3mMN693-F3U');

-- --------------------------------------------------------

--
-- Table structure for table `movie_review`
--

CREATE TABLE `movie_review` (
  `id` bigint(20) NOT NULL,
  `text` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `watchAgain` tinyint(1) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_review`
--

INSERT INTO `movie_review` (`id`, `text`, `date`, `watchAgain`, `movie_id`, `user_id`) VALUES
(2, 'This is arguably the best movie ever made!', '2024-06-01 23:34:41.269218', 0, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `news_news`
--

CREATE TABLE `news_news` (
  `id` bigint(20) NOT NULL,
  `headline` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_news`
--

INSERT INTO `news_news` (`id`, `headline`, `body`, `date`) VALUES
(1, 'Children\'s day loading', 'Year 2024 Children\'s day is almost here. Let your children have maximum fun!', '2024-05-24'),
(2, 'Global warming!', 'Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!Global warming!', '2024-05-24'),
(3, 'Real Madrid wins the champions league', 'Real Madrid has done it again! They have won it for the 15th time.', '2024-06-01');

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
-- Indexes for table `movie_movie`
--
ALTER TABLE `movie_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_review`
--
ALTER TABLE `movie_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_review_movie_id_43bc85b0_fk_movie_movie_id` (`movie_id`),
  ADD KEY `movie_review_user_id_511299d9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `news_news`
--
ALTER TABLE `news_news`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `movie_movie`
--
ALTER TABLE `movie_movie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movie_review`
--
ALTER TABLE `movie_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_news`
--
ALTER TABLE `news_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

--
-- Constraints for table `movie_review`
--
ALTER TABLE `movie_review`
  ADD CONSTRAINT `movie_review_movie_id_43bc85b0_fk_movie_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`),
  ADD CONSTRAINT `movie_review_user_id_511299d9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
