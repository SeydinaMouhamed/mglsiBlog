-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  sam. 14 nov. 2020 à 17:23
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mglsi`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(29, 'Can add post', 8, 'add_post'),
(30, 'Can change post', 8, 'change_post'),
(31, 'Can delete post', 8, 'delete_post'),
(32, 'Can view post', 8, 'view_post');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$w7x5JB8iI8Lk$uIJoGzfxAdG8m7y4js9o1Ua6Zwj6T5i2cTUniEpavNw=', '2020-11-14 15:50:26.316621', 1, 'admin', '', '', '', 1, 1, '2020-11-14 01:56:25.721200');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category_category`
--

CREATE TABLE `category_category` (
  `id` int(11) NOT NULL,
  `category_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category_category`
--

INSERT INTO `category_category` (`id`, `category_title`) VALUES
(1, 'Categorie1'),
(2, 'Categorie2');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-14 02:17:02.930841', '1', 'Catégory azert', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-11-14 02:18:23.536728', '5', 'Article azerty', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-11-14 02:19:52.920946', '5', 'Article1', 2, '[{\"changed\": {\"fields\": [\"Post title\", \"Post body\"]}}]', 8, 1),
(4, '2020-11-14 02:20:09.230210', '1', 'Catégory Categore1', 2, '[{\"changed\": {\"fields\": [\"Category title\"]}}]', 7, 1),
(5, '2020-11-14 02:20:33.898359', '1', 'Catégory Categorie1', 2, '[{\"changed\": {\"fields\": [\"Category title\"]}}]', 7, 1),
(6, '2020-11-14 02:20:58.103418', '1', 'Categorie1', 2, '[]', 7, 1),
(7, '2020-11-14 02:21:07.054762', '5', 'Article1', 2, '[]', 8, 1),
(8, '2020-11-14 02:21:19.891161', '5', 'Article1', 2, '[]', 8, 1),
(9, '2020-11-14 02:21:34.504457', '2', 'Article2', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-11-14 02:21:44.491201', '2', 'Categorie2', 2, '[{\"changed\": {\"fields\": [\"Category title\"]}}]', 7, 1),
(11, '2020-11-14 02:21:51.134387', '6', 'Article2', 1, '[{\"added\": {}}]', 8, 1),
(12, '2020-11-14 02:22:08.058369', '7', 'Article3', 1, '[{\"added\": {}}]', 8, 1),
(13, '2020-11-14 02:22:22.589810', '8', 'Article4', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-11-14 02:22:32.013795', '9', 'Article5', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'category', 'category'),
(5, 'contenttypes', 'contenttype'),
(8, 'post', 'post'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-12 13:56:44.830780'),
(2, 'auth', '0001_initial', '2020-11-12 13:56:45.032040'),
(3, 'admin', '0001_initial', '2020-11-12 13:56:45.376401'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-12 13:56:45.454452'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-12 13:56:45.464219'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-12 13:56:45.554184'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-12 13:56:45.607015'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-12 13:56:45.650116'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-12 13:56:45.661334'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-12 13:56:45.710874'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-12 13:56:45.713102'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-12 13:56:45.723300'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-12 13:56:45.772584'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-12 13:56:45.819990'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-12 13:56:45.847243'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-12 13:56:45.863297'),
(17, 'sessions', '0001_initial', '2020-11-12 13:56:45.893813'),
(18, 'category', '0001_initial', '2020-11-12 16:13:50.942581'),
(19, 'post', '0001_initial', '2020-11-14 01:53:12.491428'),
(20, 'post', '0002_post_post_category', '2020-11-14 02:16:12.163014');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h58co6f1szrsy76vnl6qspqhacqzqi23', 'MDdmNzkwZWVlZGNjMTg2ZjE0Yzg2YWJmMmU5OWI2NmIwZDMzNzU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZDY3NzEwYjhlNWRhMjlhNDAyYzJlMjYxZDQxYTdiNTFiZTU2MTUyIn0=', '2020-11-28 15:50:26.323469');

-- --------------------------------------------------------

--
-- Structure de la table `post_post`
--

CREATE TABLE `post_post` (
  `id` int(11) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_body` longtext NOT NULL,
  `post_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post_post`
--

INSERT INTO `post_post` (`id`, `post_title`, `post_body`, `post_category_id`) VALUES
(5, 'Article1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut', 1),
(6, 'Article2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut', 2),
(7, 'Article3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut', 2),
(8, 'Article4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut', 2),
(9, 'Article5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis officia reprehenderit, quos blanditiis dolore provident vel dicta beatae, earum nam dolor nobis officiis quo doloremque! Fugit dolore aliquid perferendis ut', 1);

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
-- Index pour la table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `post_post`
--
ALTER TABLE `post_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_post_post_category_id_b0cc236f_fk_category_category_id` (`post_category_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT pour la table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `post_post`
--
ALTER TABLE `post_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Contraintes pour la table `post_post`
--
ALTER TABLE `post_post`
  ADD CONSTRAINT `post_post_post_category_id_b0cc236f_fk_category_category_id` FOREIGN KEY (`post_category_id`) REFERENCES `category_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
