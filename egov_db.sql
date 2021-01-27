-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 08, 2020 alle 09:57
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egov_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `auth_permission`
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
(25, 'Can add Asset_type', 7, 'add_asset_type'),
(26, 'Can change Asset_type', 7, 'change_asset_type'),
(27, 'Can delete Asset_type', 7, 'delete_asset_type'),
(28, 'Can view Asset_type', 7, 'view_asset_type'),
(29, 'Can add System', 8, 'add_system'),
(30, 'Can change System', 8, 'change_system'),
(31, 'Can delete System', 8, 'delete_system'),
(32, 'Can view System', 8, 'view_system'),
(33, 'Can add Asset', 9, 'add_asset'),
(34, 'Can change Asset', 9, 'change_asset'),
(35, 'Can delete Asset', 9, 'delete_asset'),
(36, 'Can view Asset', 9, 'view_asset'),
(37, 'Can add Process', 10, 'add_process'),
(38, 'Can change Process', 10, 'change_process'),
(39, 'Can delete Process', 10, 'delete_process'),
(40, 'Can view Process', 10, 'view_process'),
(41, 'Can add Attribute_value', 11, 'add_attribute_value'),
(42, 'Can change Attribute_value', 11, 'change_attribute_value'),
(43, 'Can delete Attribute_value', 11, 'delete_attribute_value'),
(44, 'Can view Attribute_value', 11, 'view_attribute_value'),
(45, 'Can add Threat', 12, 'add_threat'),
(46, 'Can change Threat', 12, 'change_threat'),
(47, 'Can delete Threat', 12, 'delete_threat'),
(48, 'Can view Threat', 12, 'view_threat'),
(49, 'Can add Attribute', 13, 'add_attribute'),
(50, 'Can change Attribute', 13, 'change_attribute'),
(51, 'Can delete Attribute', 13, 'delete_attribute'),
(52, 'Can view Attribute', 13, 'view_attribute'),
(53, 'Can add threat_has_attribute', 14, 'add_threat_has_attribute'),
(54, 'Can change threat_has_attribute', 14, 'change_threat_has_attribute'),
(55, 'Can delete threat_has_attribute', 14, 'delete_threat_has_attribute'),
(56, 'Can view threat_has_attribute', 14, 'view_threat_has_attribute'),
(57, 'Can add asset_has_attribute', 15, 'add_asset_has_attribute'),
(58, 'Can change asset_has_attribute', 15, 'change_asset_has_attribute'),
(59, 'Can delete asset_has_attribute', 15, 'delete_asset_has_attribute'),
(60, 'Can view asset_has_attribute', 15, 'view_asset_has_attribute'),
(61, 'Can add Control', 16, 'add_control'),
(62, 'Can change Control', 16, 'change_control'),
(63, 'Can delete Control', 16, 'delete_control'),
(64, 'Can view Control', 16, 'view_control'),
(65, 'Can add threat_has_control', 17, 'add_threat_has_control'),
(66, 'Can change threat_has_control', 17, 'change_threat_has_control'),
(67, 'Can delete threat_has_control', 17, 'delete_threat_has_control'),
(68, 'Can view threat_has_control', 17, 'view_threat_has_control');

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_admin_log`
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

-- --------------------------------------------------------

--
-- Struttura della tabella `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'parsingBPMN', 'asset'),
(15, 'parsingBPMN', 'asset_has_attribute'),
(7, 'parsingBPMN', 'asset_type'),
(13, 'parsingBPMN', 'attribute'),
(11, 'parsingBPMN', 'attribute_value'),
(16, 'parsingbpmn', 'control'),
(10, 'parsingBPMN', 'process'),
(8, 'parsingBPMN', 'system'),
(12, 'parsingBPMN', 'threat'),
(14, 'parsingBPMN', 'threat_has_attribute'),
(17, 'parsingbpmn', 'threat_has_control'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-10-21 10:28:20.518521'),
(2, 'auth', '0001_initial', '2020-10-21 10:28:20.732947'),
(3, 'admin', '0001_initial', '2020-10-21 10:28:21.280041'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-10-21 10:28:21.440106'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-10-21 10:28:21.448071'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-10-21 10:28:21.531279'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-10-21 10:28:21.644952'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-10-21 10:28:21.709779'),
(9, 'auth', '0004_alter_user_username_opts', '2020-10-21 10:28:21.717758'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-10-21 10:28:21.810510'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-10-21 10:28:21.813540'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-10-21 10:28:21.820520'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-10-21 10:28:21.836481'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-10-21 10:28:21.878328'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-10-21 10:28:21.895323'),
(16, 'auth', '0011_update_proxy_permissions', '2020-10-21 10:28:21.902264'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-10-21 10:28:21.920216'),
(18, 'sessions', '0001_initial', '2020-10-21 10:28:21.949138'),
(19, 'parsingBPMN', '0001_initial', '2020-10-21 10:28:37.932384'),
(20, 'parsingBPMN', '0002_attribute_value_threat', '2020-10-21 13:56:02.880433'),
(21, 'parsingBPMN', '0003_auto_20201021_1639', '2020-10-21 14:40:22.237484'),
(22, 'parsingBPMN', '0004_auto_20201021_1730', '2020-10-21 15:30:38.466402'),
(23, 'parsingBPMN', '0005_auto_20201021_1806', '2020-10-21 16:06:28.968480'),
(24, 'parsingBPMN', '0006_auto_20201021_1922', '2020-10-21 17:22:53.146964'),
(25, 'parsingBPMN', '0007_asset_asset_type', '2020-10-22 14:25:58.692734'),
(26, 'parsingbpmn', '0001_initial', '2020-10-30 14:54:02.556697'),
(27, 'parsingbpmn', '0002_attribute_value_threat', '2020-10-30 14:54:02.561685'),
(28, 'parsingbpmn', '0003_auto_20201021_1639', '2020-10-30 14:54:02.566366'),
(29, 'parsingbpmn', '0004_auto_20201021_1730', '2020-10-30 14:54:02.570418'),
(30, 'parsingbpmn', '0005_auto_20201021_1806', '2020-10-30 14:54:02.574713'),
(31, 'parsingbpmn', '0006_auto_20201021_1922', '2020-10-30 14:54:02.582431'),
(32, 'parsingbpmn', '0007_asset_asset_type', '2020-10-30 14:54:02.586286'),
(33, 'parsingbpmn', '0008_control_threat_has_control', '2020-10-30 14:54:02.591437'),
(34, 'parsingbpmn', '0010_threat_has_control', '2020-10-30 15:16:27.952019');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset`
--

CREATE TABLE `parsingbpmn_asset` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `process_id` int(11) NOT NULL,
  `asset_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset`
--

INSERT INTO `parsingbpmn_asset` (`id`, `name`, `process_id`, `asset_type_id`) VALUES
(331, 'conduct research', 20, 3),
(332, 'sign an ad', 20, 4),
(333, 'ask for publication', 20, 4),
(334, 'publish an ad', 20, 3),
(335, 'attribute a progress number to each candidature', 20, 3),
(336, 'draw up the candidate lists', 20, 3),
(337, 'check and control the lists', 20, 3),
(338, 'send the lists', 20, 1),
(339, 'Receive the lists', 20, 2),
(340, 'publish the lists on the CRC portal', 20, 3),
(341, 'Receive the lists', 20, 2),
(342, 'propose lists for #1 Permanent Committee', 20, 1),
(343, 'Receive the proposed lists', 20, 2),
(344, 'assign lists to #1 Permanent Committee', 20, 1),
(345, 'receive the assigned lists', 20, 2),
(346, 'express an opinion about these lists', 20, 1),
(347, 'propose the registration of the order of the day', 20, 1),
(348, 'receive the order of the day', 20, 2),
(349, 'communicate the order of the day', 20, 4),
(350, 'send the updated order of the day', 20, 1),
(351, 'Receive the approved order of the day', 20, 2),
(352, 'discuss the order of the day', 20, 4),
(353, 'send the report with the results', 20, 1),
(354, 'Government president receive the information', 20, 2),
(355, 'publish the winner lists on CRC portal', 20, 3),
(356, 'Trasparency unit receive the information', 20, 2),
(357, 'receive the updated order of the day', 20, 2),
(358, 'approve the order of the day', 20, 4),
(359, 'send the approved order of the day', 20, 1),
(360, 'inform regarding the report', 20, 1),
(361, 'sign the report', 20, 4),
(362, 'Receive the report with the results', 20, 2),
(363, 'Inform regarding the legal decree', 20, 1),
(364, 'write a legal decree that substitutes the report', 20, 4),
(365, 'apply to the position using SPID', 20, 3),
(508, 'receive student\'s data from mail service provider', 28, 2),
(509, 'Student Data Retention for 10 Years', 28, 5),
(510, 'Send data to Recruiter', 28, 1),
(511, 'Send data to Ministry', 28, 1),
(512, 'Send personal data modification request', 28, 1),
(513, 'verification through career service provider', 28, 5),
(514, 'Receive result verify', 28, 2),
(515, 'Fill in Personal Data and Health Status and submit', 28, 3),
(516, 'Send data', 28, 1),
(517, 'Receive modification request', 28, 2),
(518, 'Recruiter receive student\'s data', 28, 2),
(519, 'contact the student', 28, 3),
(520, 'Analyze the profile', 28, 4),
(521, 'Ministry receive student\'s data', 28, 2),
(522, 'Retention student\'s data', 28, 5),
(523, 'send result Verify', 28, 1),
(524, 'Verify data', 28, 5),
(525, 'Receive data from Student', 28, 2),
(526, 'Send data to Office', 28, 1),
(527, 'Receive modification request from office', 28, 2),
(528, 'Send modifcation request to student', 28, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_has_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset_has_attribute`
--

INSERT INTO `parsingbpmn_asset_has_attribute` (`id`, `asset_id`, `attribute_id`) VALUES
(223, 332, 9),
(224, 333, 9),
(225, 349, 9),
(226, 352, 9),
(227, 358, 9),
(228, 361, 9),
(229, 364, 9),
(230, 331, 7),
(231, 334, 7),
(232, 335, 8),
(233, 336, 8),
(234, 337, 8),
(235, 338, 2),
(236, 339, 5),
(237, 340, 7),
(238, 341, 5),
(239, 342, 1),
(240, 343, 4),
(241, 344, 1),
(242, 345, 4),
(243, 346, 2),
(244, 347, 1),
(245, 348, 4),
(246, 350, 1),
(247, 351, 4),
(248, 353, 1),
(249, 354, 4),
(250, 355, 7),
(251, 356, 4),
(252, 357, 4),
(253, 359, 1),
(254, 360, 1),
(255, 362, 4),
(256, 363, 1),
(257, 365, 7),
(346, 520, 9),
(347, 508, 5),
(348, 509, 10),
(349, 510, 1),
(350, 511, 1),
(351, 512, 2),
(352, 513, 11),
(353, 514, 5),
(354, 515, 7),
(355, 516, 2),
(356, 517, 5),
(357, 518, 4),
(358, 519, 8),
(359, 521, 4),
(360, 522, 10),
(361, 523, 2),
(362, 524, 11),
(363, 525, 15),
(364, 526, 14),
(365, 527, 15),
(366, 528, 14);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_type`
--

CREATE TABLE `parsingbpmn_asset_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset_type`
--

INSERT INTO `parsingbpmn_asset_type` (`id`, `name`, `description`) VALUES
(1, 'Send task', 'A Send Task is represents a task that sends a Message to another lane or pool. The Task is completed once the Message has been sent.'),
(2, 'Receive task', 'A Receive Task indicates that the process has to wait for a message to arrive in order to continue. The Task is completed once the message has received.'),
(3, 'User task', 'A User Task represents that a human performer performs the Task with the use of a software application.'),
(4, 'Manual task', 'A Manual Task is a Task that is performed physically.'),
(5, 'Service task', 'A Service Task is a Task that uses a Web service, an automated application, or other kinds of service in completing the task.'),
(6, 'Script task', 'A Script Task is executed by a business process engine. The task defines a script that the engine can interpret. When the task begin, the engine will execute the script. The Task will be completed when the script is completed.'),
(7, 'Business rule task', 'It provides a mechanism for a process to provide input to a Business Rules Engine and then obtain the output provided by the Business Rules Engine. As for service and script task, it is a task without human interaction.');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute`
--

CREATE TABLE `parsingbpmn_attribute` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_attribute`
--

INSERT INTO `parsingbpmn_attribute` (`id`, `attribute_name`, `asset_type_id`, `attribute_value_id`) VALUES
(1, 'Communication typology\r\n', 1, 1),
(2, 'Communication typology\r\n', 1, 2),
(3, 'Communication typology\r\n', 1, 3),
(4, 'Communication typology\r\n', 2, 1),
(5, 'Communication typology\r\n', 2, 2),
(6, 'Communication typology\r\n', 2, 3),
(7, 'Application typology\r\n', 3, 4),
(8, 'Application typology\r\n', 3, 5),
(9, 'Task type\r\n', 4, 6),
(10, 'Service typology\r\n', 5, 7),
(11, 'Service typology\r\n', 5, 8),
(12, 'Task type\r\n', 6, 9),
(13, 'Task type\r\n', 7, 10),
(14, 'Communication typology', 1, 11),
(15, 'Communication typology', 2, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute_value`
--

CREATE TABLE `parsingbpmn_attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_attribute_value`
--

INSERT INTO `parsingbpmn_attribute_value` (`id`, `value`) VALUES
(1, 'PEC communication'),
(2, 'Mail communication'),
(3, 'Post office communication'),
(4, 'Online'),
(5, 'Offline'),
(6, 'Manual task'),
(7, 'Statefull'),
(8, 'Stateless'),
(9, 'Script task'),
(10, 'Business rule task'),
(11, 'Interoperability protocol');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_control`
--

CREATE TABLE `parsingbpmn_control` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_control`
--

INSERT INTO `parsingbpmn_control` (`id`, `name`, `description`) VALUES
(1, 'Inventory and Control of Hardware Assets', 'Actively manage (inventory, track, and correct) all hardware devices on the network so that only authorized devices are given access, and unauthorized and unmanaged devices are found and prevented from gaining access.'),
(2, 'Inventory and Control of Software Assets', 'Actively manage (inventory, track, and correct) all software on the network so that only authorized software is installed and can execute, and that unauthorized and unmanaged software is found and prevented from installation or execution. '),
(3, 'Continuous Vulnerability Management', 'Continuously acquire, assess, and take action on new information in order to identify vulnerabilities, remediate, and minimize the window of opportunity for attackers.'),
(4, 'Controlled Use of Administrative Privileges', 'The processes and tools used to track/control/prevent/correct the use, assignment, and configuration of administrative privileges on computers, networks, and applications.'),
(5, 'Secure Configuration for Hardware and Software on Mobile Devices, Laptops, Workstations and Servers', 'Establish, implement, and actively manage (track, report on, correct) the security configuration of mobile devices, laptops, servers, and workstations using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings. '),
(6, 'Maintenance, Monitoring and Analysis of Audit Logs', 'Collect, manage, and analyze audit logs of events that could help detect, understand, or recover from an attack. '),
(7, 'Email and Web Browser Protections', 'Minimize the attack surface and the opportunities for attackers to manipulate human behavior though their interaction with web browsers and email systems. '),
(8, 'Malware Defenses', 'Control the installation, spread, and execution of malicious code at multiple points in the enterprise, while optimizing the use of automation to enable rapid updating of defense, data gathering, and corrective action.'),
(9, 'Limitation and Control of Network Ports, Protocols, and Services', 'Manage (track/control/correct) the ongoing operational use of ports, protocols, and services on networked devices in order to minimize windows of vulnerability available to attackers.'),
(10, 'Data Recovery Capabilities', 'The processes and tools used to properly back up critical information with a proven methodology for timely recovery of it.'),
(11, 'Secure Configuration for Network Devices, such as Firewalls, Routers and Switches', 'Establish, implement, and actively manage (track, report on, correct) the security configuration of network infrastructure devices using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings.'),
(12, 'Boundary Defense', 'Detect/prevent/correct the flow of information transferring networks of different trust levels with a focus on security-damaging data.'),
(13, 'Data Protection', 'The processes and tools used to prevent data exfiltration, mitigate the effects of exfiltrated data, and ensure the privacy and integrity of sensitive information.'),
(14, 'Controlled Access Based on the Need to Know', 'The processes and tools used to track/control/prevent/correct secure access to critical assets (e.g., information, resources, systems) according to the formal determination of which persons, computers, and applications have a need and right to access these critical assets based on an approved classification.'),
(15, 'Wireless Access Control', 'The processes and tools used to track/control/prevent/correct the security use of wireless local area networks (WLANs), access points, and wireless client systems.'),
(16, 'Account Monitoring and Control', 'Actively manage the life cycle of system and application accounts - their creation, use, dormancy, deletion - in order to minimize opportunities for attackers to leverage them.'),
(17, 'Implement a Security Awareness and Training Program', 'For all functional roles in the organization (prioritizing those mission-critical to the business and its security), identify the specific knowledge, skills, and abilities needed to support defense of the enterprise; develop and execute an integrated plan to assess, identify gaps, and remediate through policy, organizational planning, training, and awareness programs.'),
(18, 'Application Software Security', 'Manage the security life cycle of all in-house developed and acquired software in order to prevent, detect, and correct security weaknesses.'),
(19, 'Incident Response and Management', 'Protect the organization\'s information, as well as its reputation, by developing and implementing an incident response infrastructure (e.g., plans, defined roles, training, communications, management oversight) for quickly discovering an attack and then effectively containing the damage, eradicating the attacker\'s presence, and restoring the integrity of the network and systems.'),
(20, 'Penetration Tests and Red Team Exercises', 'Test the overall strength of an organization\'s defense (the technology, the processes, and the people) by simulating the objectives and actions of an attacker.');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_process`
--

CREATE TABLE `parsingbpmn_process` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `xml` varchar(100) NOT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_process`
--

INSERT INTO `parsingbpmn_process` (`id`, `name`, `xml`, `system_id`) VALUES
(20, 'Optimization and innovation in the \"Nominations\" e-gov', 'processes/xml/Optimization_and_innovation_in_the_Nominations_e-gov.bpmn', 3),
(28, 'Job Placement', 'processes/xml/Job_Placement.bpmn', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_system`
--

CREATE TABLE `parsingbpmn_system` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_system`
--

INSERT INTO `parsingbpmn_system` (`id`, `name`) VALUES
(3, 'Regione Campania'),
(4, 'Unicampania');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat`
--

CREATE TABLE `parsingbpmn_threat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat`
--

INSERT INTO `parsingbpmn_threat` (`id`, `name`, `description`) VALUES
(1, 'Fraud', 'Fraud made by human'),
(2, 'Sabotage', 'Intentional actions (non-fulfillment or defective fulfillment of personal duties) aimed to cause disruption or damage of IT Assets'),
(3, 'Vandalism', 'Act of physically damage of IT Assets'),
(4, 'Theft (devices, storage media and documents)\r\n', 'Stealing of information or IT Assets. [Theft of mobile devices (smartphones/ tablets) - Theft of fi9ed hardware - Theft of documents - Theft of backups]'),
(5, 'Information leakage/sharing\r\n', 'Sharing information with unauthorised entities. Loss of information confidentiality due to intentional human actions.'),
(6, 'Unauthorized physical access / Unauthorised entry to premises\r\n', 'Unapproved access to facility.\r\n'),
(7, 'Coercion, extortion or corruption\r\n', 'Actions caused by coercion, extortion or corruption\r\n'),
(8, 'Damage from the warfare\r\n', 'Threats of direct impact of warfare activities\r\n'),
(9, 'Terrorists attack\r\n', 'Threats of bombing or other actions that counts as \"terrorists attacks\"\r\n'),
(10, 'Information leakage/sharing due to human error\r\n', 'Unintentional distribution of private or sensitive data to an unauthorized entity by staff member.\r\n'),
(11, 'Erroneous use or administration of devices and systems\r\n', 'Information leakage / sharing / damage caused by users IT Assets misuse (lack of awareness of application features) or wrong / improperly IT Assets configuration or management\r\n'),
(12, 'Using information from an unreliable source\r\n', 'Bad decision based on unreliable sources of information or unchecked information.\r\n'),
(13, 'Unintentional change of data in an information system\r\n', 'Loss of information integrity due to human error (information system user mistake)\r\n'),
(14, 'Inadequate design and planning or improperly adaptation\r\n', 'Threats caused by improperly IT Assets or business processes design (inadequate specifications of IT products, inadequate usability, insecure interfaces, policy/procedure flows, design errors)\r\n'),
(15, 'Damage caused by a third party \r\n', 'Threats of damage of IT Assets caused by third party \r\n'),
(16, 'Damages resulting from penetration testing\r\n', 'Threats to information systems caused by improperly / inprepare conducting of IT penetration testing\r\n'),
(17, 'Loss of information in the cloud\r\n', 'Threats of loosing information or data stored in the cloud\r\n'),
(18, 'Loss of (integrity of) sensitive information\r\n', 'Threats of loosing information or data (or changing) information classified as sensitive\r\n'),
(19, 'Loss of devices, storage media and documents\r\n', 'Threats of the lack of availability (loosing) of IT Assets and documents\r\n'),
(20, 'Destruction of records\r\n', 'Threats of the lack of availability (destruction) of data and records (information) stored in devices and storage media\r\n'),
(21, 'Disaster (natural earthquakes,floods,landslides, tsunamis,heavy rains,heavy snowfalls,heavy winds)', 'Large scale and large effects natural disasters'),
(22, 'Fire', 'Threat of fire '),
(23, 'Pollution, dust, corrosion\r\n', 'Threat of disruption of work of IT systems (hardware) dur to pollution, dust or corrosion (arising from the air)\r\n'),
(24, 'Thunder stroke\r\n', 'Threat of damage of IT hardware caused by the thunder strike (the electrical overvoltage)\r\n'),
(25, 'Water\r\n', 'Threat of damage of IT hardware caused by the water\r\n'),
(26, 'Explosion\r\n', 'empty\r\n'),
(27, 'Dangerous radiation leak\r\n', 'empty\r\n'),
(28, 'Unfavorable climatic conditions\r\n', 'Threat of disruption of work of IT systems due to climatic conditions that have the negative effect on hardware\r\n'),
(29, 'Major events in the environment\r\n', 'empty\r\n'),
(30, 'Threats from space / Electromagnetic storm\r\n', 'Threats of the negative impact of solar radiation (harmful rays) to a satellites and radio wave communication systems - Electromagnetic storm\r\n'),
(31, 'Wildlife\r\n', 'empty\r\n'),
(32, 'Failure of devices or systems\r\n', 'Threat of failure of IT hardware and/or software assets or its parts\r\n'),
(33, 'Failure or disruption of communication links (communication networks)\r\n', 'Threat of failure or malfunction of communications links \r\n'),
(34, 'Failure or disruption of main supply\r\n', 'Threat of failure or disruption of supply required for information systems\r\n'),
(35, 'Failure or disruption of service providers (supply chain)\r\n', 'Threat of failure or disruption of thire party services required for proper operation of information systems\r\n'),
(36, 'Malfunction of equipment (devices or systems)\r\n', 'Threat of malfunction of IT hardware and/or software assets or its parts\r\n'),
(37, 'Loss of resources\r\n', 'Unavailability of resources (supply) required for proper operation of information system\r\n'),
(38, 'Absence of personnel\r\n', 'Unavailability of key personnel and their competences\r\n'),
(39, 'Strike\r\n', 'Unavailability of staff due strike (large scale absence of personnel)\r\n'),
(40, 'Loss of support services\r\n', 'Unavailability of support services required for proper operation of information system\r\n'),
(41, 'Internet outage\r\n', 'Unavailability of the Internet connection\r\n'),
(42, 'Network outage\r\n', 'Unavailability of communication links\r\n'),
(43, 'War driving\r\n', 'Threat of locating and possible exploite connection to the wireless network\r\n'),
(44, 'Intercepting compromising emissions\r\n', 'Threat of disclosure transmitted information using interception and analysis of compromising emission\r\n'),
(45, 'Interception of information\r\n', 'Threat of interception of information improperly secured in transmission or improperly actions of staff\r\n'),
(46, 'Interfering radiation\r\n', 'Threat of failure of IT hardware or transmission connection due to electromagnetic induction or electromagnetic radiation emitted from an another source\r\n'),
(47, 'Replay of messages\r\n', 'Threat in which valid data transmission is maliciously or fraudulently repeated or delayed\r\n'),
(48, 'Network Reconnaissance, Network traffic manipulation and Information gathering\r\n', 'Threat of identifying information about network to find security weaknesses\r\n'),
(49, 'Man in the middle/ Session hijacking \r\n', 'Threats that relay on alters of communication between two parties\r\n'),
(50, 'Identity theft (Identity Fraud/ Account) \r\n', 'Threat of identity theft action\r\n'),
(51, 'Receive of unsolicited E-mail \r\n', 'Threat of receive of unsolicited E-mail that affect for information security and efficienty of work (SPAM)\r\n'),
(52, 'Denial of service\r\n', 'Threat of Deny of service type attacks at information systems/services\r\n'),
(53, 'Malicious code/ software/ activity\r\n', 'Threat of malicious code or software execution\r\n'),
(54, 'Social Engineering\r\n', 'Phishing attacks, Spear phishing attacks\r\n'),
(55, 'Abuse of Information Leakage\r\n', '? What is difference between others Physical attack (deliberate/ intentional)?\r\n'),
(56, 'Generation and use of rogue certificates\r\n', 'Threat of use of rogue certificates\r\n'),
(57, 'Manipulation of hardware and software\r\n', 'Threat of unauthorized manipulation of hardware and software\r\n'),
(58, 'Manipulation of information\r\n', 'Threat of intentional data manipulation to mislead information systems or somebody or to cover other nefarious activities (loss of integrity of information) \r\n'),
(59, 'Misuse of audit tools\r\n', 'Threat of nefarious actions with use of audit tools (discovery security weaknesses in information systems)\r\n'),
(60, 'Misuse of information/ information systems (including mobile apps)\r\n', 'Threat of nefarious action due to misuse of information / information systems\r\n'),
(61, 'Unauthorized activities\r\n', 'empty\r\n'),
(62, 'Unauthorized installation of software\r\n', 'Threat of unauthorized installation of software\r\n'),
(63, 'Compromising confidential information (data breaches)\r\n', 'Threat of data breach \r\n'),
(64, 'Hoax\r\n', 'Threat of disruption of work due to False rumor and/or a fake warning\r\n'),
(65, 'Remote activity (execution)\r\n', 'Threat of remote activity over controled IT Assets\r\n'),
(66, 'Targeted attacks (APTs etc.)\r\n', 'Threat of sophisticated targetes attack with combination of many attack techniques\r\n'),
(67, 'Failed of bussines process\r\n', 'empty\r\n'),
(68, 'Brute force\r\n', 'empty\r\n'),
(69, 'Abuse of authorizations\r\n', 'empty\r\n'),
(70, 'Violation of laws or regulations / Breach of legislation\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to violation of law or regulations\r\n'),
(71, 'Failure to meet contractual requirements\r\n', 'Threat of finacial penatly or lost of trust of customers and collaborators due to failure to meet contractual requirements\r\n'),
(72, 'Unauthorized use of IPR protected resources\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to improper/illegal use of copyrights material\r\n'),
(73, 'Abuse of personal data\r\n', 'Threat of illegal use personal data\r\n'),
(74, 'Judiciary decisions/court orders\r\n', 'empty\r\n');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_attribute`
--

CREATE TABLE `parsingbpmn_threat_has_attribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat_has_attribute`
--

INSERT INTO `parsingbpmn_threat_has_attribute` (`id`, `attribute_id`, `threat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 3, 3),
(8, 1, 7),
(9, 2, 7),
(10, 3, 7),
(11, 1, 10),
(12, 2, 10),
(13, 3, 10),
(14, 2, 11),
(15, 1, 17),
(16, 2, 17),
(17, 1, 32),
(18, 2, 32),
(19, 1, 33),
(20, 2, 33),
(21, 1, 34),
(22, 2, 34),
(23, 3, 34),
(24, 1, 35),
(25, 2, 35),
(26, 1, 37),
(27, 2, 37),
(28, 3, 37),
(29, 1, 41),
(30, 2, 41),
(31, 1, 45),
(32, 2, 45),
(33, 3, 45),
(34, 2, 49),
(35, 1, 50),
(36, 2, 50),
(37, 3, 58),
(38, 4, 1),
(39, 5, 1),
(40, 6, 1),
(41, 4, 2),
(42, 5, 2),
(43, 6, 2),
(44, 6, 3),
(45, 4, 7),
(46, 5, 7),
(47, 6, 7),
(48, 4, 10),
(49, 5, 10),
(50, 6, 10),
(51, 4, 17),
(52, 5, 17),
(53, 4, 33),
(54, 5, 33),
(55, 4, 34),
(56, 5, 34),
(57, 6, 34),
(58, 4, 35),
(59, 5, 35),
(60, 4, 37),
(61, 5, 37),
(62, 6, 37),
(63, 4, 41),
(64, 5, 41),
(65, 4, 45),
(66, 5, 45),
(67, 6, 45),
(68, 5, 47),
(69, 5, 49),
(70, 4, 50),
(71, 5, 50),
(72, 5, 51),
(73, 5, 52),
(74, 5, 53),
(75, 5, 54),
(76, 6, 58),
(77, 12, 1),
(78, 12, 2),
(79, 12, 3),
(80, 10, 15),
(81, 11, 15),
(82, 10, 16),
(83, 11, 16),
(84, 10, 17),
(85, 10, 32),
(86, 11, 32),
(87, 10, 35),
(88, 11, 35),
(89, 10, 37),
(90, 11, 37),
(91, 10, 41),
(92, 11, 41),
(93, 10, 52),
(94, 11, 52),
(95, 9, 1),
(96, 9, 2),
(97, 9, 3),
(98, 9, 4),
(99, 9, 5),
(100, 9, 7),
(101, 7, 1),
(102, 8, 1),
(103, 7, 2),
(104, 8, 2),
(105, 7, 7),
(106, 8, 7),
(107, 7, 11),
(108, 8, 11),
(109, 7, 17),
(110, 7, 18),
(111, 8, 18),
(112, 7, 20),
(113, 8, 20),
(114, 7, 32),
(115, 8, 32),
(116, 7, 37),
(117, 8, 37),
(118, 7, 38),
(119, 8, 38),
(120, 7, 41),
(121, 8, 42),
(122, 7, 53),
(123, 8, 53),
(124, 14, 11),
(125, 14, 17),
(126, 14, 32),
(127, 14, 33),
(128, 14, 34),
(129, 14, 35),
(130, 14, 37),
(131, 14, 41),
(132, 14, 45),
(133, 14, 49),
(134, 14, 58),
(135, 15, 17),
(136, 15, 33),
(137, 15, 34),
(138, 15, 35),
(139, 15, 37),
(140, 15, 41),
(141, 15, 45),
(142, 15, 47),
(143, 15, 49),
(144, 15, 52),
(145, 15, 58);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_control`
--

CREATE TABLE `parsingbpmn_threat_has_control` (
  `id` int(11) NOT NULL,
  `control_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat_has_control`
--

INSERT INTO `parsingbpmn_threat_has_control` (`id`, `control_id`, `threat_id`) VALUES
(1, 10, 1),
(2, 13, 1),
(3, 16, 1),
(4, 17, 1),
(5, 19, 1),
(6, 6, 2),
(7, 19, 2),
(8, 10, 3),
(9, 14, 3),
(10, 19, 3),
(11, 10, 4),
(12, 13, 4),
(13, 14, 4),
(14, 19, 4),
(15, 10, 5),
(16, 13, 5),
(17, 17, 5),
(18, 19, 5),
(19, 14, 6),
(20, 17, 6),
(21, 19, 6),
(22, 6, 7),
(23, 17, 7),
(24, 19, 7),
(25, 10, 8),
(26, 19, 8),
(27, 10, 9),
(28, 19, 9),
(29, 2, 10),
(30, 3, 10),
(31, 5, 10),
(32, 7, 10),
(33, 9, 10),
(34, 11, 10),
(35, 13, 10),
(36, 17, 10),
(37, 18, 10),
(38, 19, 10),
(39, 20, 10),
(40, 1, 11),
(41, 2, 11),
(42, 4, 11),
(43, 5, 11),
(44, 11, 11),
(45, 16, 11),
(46, 17, 11),
(47, 19, 11),
(48, 3, 12),
(49, 6, 12),
(50, 7, 12),
(51, 8, 12),
(52, 17, 12),
(53, 19, 12),
(54, 20, 12),
(55, 10, 13),
(56, 13, 13),
(57, 19, 13),
(58, 3, 14),
(59, 5, 14),
(60, 9, 14),
(61, 11, 14),
(62, 14, 14),
(63, 19, 14),
(64, 1, 15),
(65, 2, 15),
(66, 3, 15),
(67, 6, 15),
(68, 8, 15),
(69, 9, 15),
(70, 12, 15),
(71, 19, 15),
(72, 3, 16),
(73, 4, 16),
(74, 5, 16),
(75, 6, 16),
(76, 9, 16),
(77, 11, 16),
(78, 12, 16),
(79, 14, 16),
(80, 15, 16),
(81, 16, 16),
(82, 18, 16),
(83, 19, 16),
(84, 20, 16),
(85, 7, 17),
(86, 10, 17),
(87, 19, 17),
(88, 1, 18),
(89, 2, 18),
(90, 3, 18),
(91, 5, 18),
(92, 7, 18),
(93, 8, 18),
(94, 9, 18),
(95, 10, 18),
(96, 11, 18),
(97, 13, 18),
(98, 16, 18),
(99, 18, 18),
(100, 19, 18),
(101, 3, 19),
(102, 7, 19),
(103, 8, 19),
(104, 10, 19),
(105, 13, 19),
(106, 18, 19),
(107, 19, 19),
(108, 1, 20),
(109, 2, 20),
(110, 3, 20),
(111, 6, 20),
(112, 7, 20),
(113, 8, 20),
(114, 10, 20),
(115, 13, 20),
(116, 16, 20),
(117, 18, 20),
(118, 19, 20),
(119, 20, 20),
(120, 10, 21),
(121, 19, 21),
(122, 10, 22),
(123, 19, 22),
(124, 10, 23),
(125, 19, 23),
(126, 10, 24),
(127, 19, 24),
(128, 10, 25),
(129, 19, 25),
(130, 10, 26),
(131, 19, 26),
(132, 10, 27),
(133, 19, 27),
(134, 10, 28),
(135, 19, 28),
(136, 10, 29),
(137, 19, 29),
(138, 10, 30),
(139, 19, 30),
(140, 10, 31),
(141, 19, 31),
(142, 1, 32),
(143, 2, 32),
(144, 5, 32),
(145, 6, 32),
(146, 17, 32),
(147, 19, 32),
(148, 1, 33),
(149, 6, 33),
(150, 10, 33),
(151, 14, 33),
(152, 15, 33),
(153, 19, 33),
(154, 1, 34),
(155, 6, 34),
(156, 19, 34),
(157, 6, 35),
(158, 19, 35),
(159, 1, 36),
(160, 2, 36),
(161, 3, 36),
(162, 6, 36),
(163, 8, 36),
(164, 10, 36),
(165, 13, 36),
(166, 18, 36),
(167, 19, 36),
(168, 20, 36),
(169, 6, 37),
(170, 10, 37),
(171, 19, 37),
(172, 17, 38),
(173, 19, 38),
(174, 17, 39),
(175, 19, 39),
(176, 6, 40),
(177, 19, 40),
(178, 1, 41),
(179, 6, 41),
(180, 10, 41),
(181, 19, 41),
(182, 1, 42),
(183, 6, 42),
(184, 10, 42),
(185, 19, 42),
(186, 1, 43),
(187, 3, 43),
(188, 5, 43),
(189, 6, 43),
(190, 8, 43),
(191, 9, 43),
(192, 11, 43),
(193, 13, 43),
(194, 15, 43),
(195, 19, 43),
(196, 20, 43),
(197, 19, 44),
(198, 3, 45),
(199, 5, 45),
(200, 7, 45),
(201, 8, 45),
(202, 13, 45),
(203, 17, 45),
(204, 18, 45),
(205, 19, 45),
(206, 20, 45),
(207, 19, 46),
(208, 1, 47),
(209, 2, 47),
(210, 3, 47),
(211, 5, 47),
(212, 7, 47),
(213, 8, 47),
(214, 18, 47),
(215, 19, 47),
(216, 20, 47),
(217, 3, 48),
(218, 6, 48),
(219, 9, 48),
(220, 11, 48),
(221, 12, 48),
(222, 19, 48),
(223, 2, 49),
(224, 5, 49),
(225, 13, 49),
(226, 16, 49),
(227, 17, 49),
(228, 19, 49),
(229, 3, 50),
(230, 5, 50),
(231, 7, 50),
(232, 8, 50),
(233, 13, 50),
(234, 14, 50),
(235, 17, 50),
(236, 18, 50),
(237, 19, 50),
(238, 20, 50),
(239, 3, 51),
(240, 5, 51),
(241, 7, 51),
(242, 8, 51),
(243, 13, 51),
(244, 17, 51),
(245, 18, 51),
(246, 19, 51),
(247, 6, 52),
(248, 9, 52),
(249, 11, 52),
(250, 12, 52),
(251, 18, 52),
(252, 19, 52),
(253, 20, 52),
(254, 2, 53),
(255, 3, 53),
(256, 5, 53),
(257, 6, 53),
(258, 7, 53),
(259, 8, 53),
(260, 9, 53),
(261, 10, 53),
(262, 11, 53),
(263, 13, 53),
(264, 17, 53),
(265, 18, 53),
(266, 19, 53),
(267, 20, 53),
(268, 7, 54),
(269, 13, 54),
(270, 17, 54),
(271, 19, 54),
(272, 10, 55),
(273, 13, 55),
(274, 19, 55),
(275, 2, 56),
(276, 6, 56),
(277, 9, 56),
(278, 13, 56),
(279, 19, 56),
(280, 1, 57),
(281, 2, 57),
(282, 3, 57),
(283, 8, 57),
(284, 10, 57),
(285, 12, 57),
(286, 13, 57),
(287, 18, 57),
(288, 19, 57),
(289, 20, 57),
(290, 3, 58),
(291, 4, 58),
(292, 5, 58),
(293, 6, 58),
(294, 7, 58),
(295, 8, 58),
(296, 9, 58),
(297, 13, 58),
(298, 14, 58),
(299, 18, 58),
(300, 19, 58),
(301, 20, 58),
(302, 3, 59),
(303, 5, 59),
(304, 8, 59),
(305, 9, 59),
(306, 12, 59),
(307, 18, 59),
(308, 19, 59),
(309, 20, 59),
(310, 3, 60),
(311, 5, 60),
(312, 8, 60),
(313, 9, 60),
(314, 12, 60),
(315, 18, 60),
(316, 19, 60),
(317, 20, 60),
(318, 4, 61),
(319, 6, 61),
(320, 9, 61),
(321, 10, 61),
(322, 13, 61),
(323, 14, 61),
(324, 15, 61),
(325, 16, 61),
(326, 19, 61),
(327, 2, 62),
(328, 4, 62),
(329, 6, 62),
(330, 9, 62),
(331, 10, 62),
(332, 13, 62),
(333, 14, 62),
(334, 15, 62),
(335, 16, 62),
(336, 18, 62),
(337, 19, 62),
(338, 1, 63),
(339, 2, 63),
(340, 3, 63),
(341, 4, 63),
(342, 5, 63),
(343, 6, 63),
(344, 8, 63),
(345, 9, 63),
(346, 13, 63),
(347, 14, 63),
(348, 17, 63),
(349, 18, 63),
(350, 19, 63),
(351, 20, 63),
(352, 17, 64),
(353, 19, 64),
(354, 5, 65),
(355, 9, 65),
(356, 11, 65),
(357, 19, 65),
(358, 1, 66),
(359, 2, 66),
(360, 3, 66),
(361, 6, 66),
(362, 8, 66),
(363, 9, 66),
(364, 11, 66),
(365, 13, 66),
(366, 18, 66),
(367, 19, 66),
(368, 20, 66),
(369, 17, 67),
(370, 19, 67),
(371, 5, 68),
(372, 6, 68),
(373, 9, 68),
(374, 11, 68),
(375, 12, 68),
(376, 14, 68),
(377, 17, 68),
(378, 18, 68),
(379, 19, 68),
(380, 20, 68),
(381, 4, 69),
(382, 5, 69),
(383, 6, 69),
(384, 11, 69),
(385, 14, 69),
(386, 18, 69),
(387, 19, 69),
(388, 3, 70),
(389, 5, 70),
(390, 6, 70),
(391, 9, 70),
(392, 11, 70),
(393, 13, 70),
(394, 14, 70),
(395, 16, 70),
(396, 17, 70),
(397, 18, 70),
(398, 19, 70),
(399, 20, 70),
(400, 3, 71),
(401, 5, 71),
(402, 6, 71),
(403, 9, 71),
(404, 11, 71),
(405, 13, 71),
(406, 14, 71),
(407, 16, 71),
(408, 17, 71),
(409, 18, 71),
(410, 19, 71),
(411, 20, 71),
(412, 13, 72),
(413, 14, 72),
(414, 17, 72),
(415, 19, 72),
(416, 13, 73),
(417, 14, 73),
(418, 17, 73),
(419, 19, 73),
(420, 19, 74);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indici per le tabelle `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indici per le tabelle `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indici per le tabelle `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indici per le tabelle `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indici per le tabelle `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indici per le tabelle `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indici per le tabelle `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_asset_process_id_51846443_fk_parsingBPMN_process_id` (`process_id`),
  ADD KEY `parsingBPMN_asset_asset_type_id_9aaa4ff6_fk_parsingBP` (`asset_type_id`);

--
-- Indici per le tabelle `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_asset_ha_asset_id_455a16db_fk_parsingBP` (`asset_id`),
  ADD KEY `parsingBPMN_asset_ha_attribute_id_f4204e3a_fk_parsingBP` (`attribute_id`);

--
-- Indici per le tabelle `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_attribut_asset_type_id_d2d4982c_fk_parsingBP` (`asset_type_id`),
  ADD KEY `parsingBPMN_attribut_attribute_value_id_2374791a_fk_parsingBP` (`attribute_value_id`);

--
-- Indici per le tabelle `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_process_system_id_52b775a3_fk_parsingBPMN_system_id` (`system_id`);

--
-- Indici per le tabelle `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingBPMN_threat_h_attribute_id_8e431819_fk_parsingBP` (`attribute_id`),
  ADD KEY `parsingBPMN_threat_h_threat_id_fbeae7da_fk_parsingBP` (`threat_id`);

--
-- Indici per le tabelle `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_h_control_id_7388a9d5_fk_parsingbp` (`control_id`),
  ADD KEY `parsingbpmn_threat_h_threat_id_e0101e51_fk_parsingbp` (`threat_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT per la tabella `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT per la tabella `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limiti per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limiti per la tabella `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD CONSTRAINT `parsingBPMN_asset_asset_type_id_9aaa4ff6_fk_parsingBP` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingBPMN_asset_process_id_51846443_fk_parsingBPMN_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Limiti per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD CONSTRAINT `parsingBPMN_asset_ha_asset_id_455a16db_fk_parsingBP` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingBPMN_asset_ha_attribute_id_f4204e3a_fk_parsingBP` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`);

--
-- Limiti per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD CONSTRAINT `parsingBPMN_attribut_asset_type_id_d2d4982c_fk_parsingBP` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingBPMN_attribut_attribute_value_id_2374791a_fk_parsingBP` FOREIGN KEY (`attribute_value_id`) REFERENCES `parsingbpmn_attribute_value` (`id`);

--
-- Limiti per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD CONSTRAINT `parsingBPMN_process_system_id_52b775a3_fk_parsingBPMN_system_id` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD CONSTRAINT `parsingBPMN_threat_h_attribute_id_8e431819_fk_parsingBP` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`),
  ADD CONSTRAINT `parsingBPMN_threat_h_threat_id_fbeae7da_fk_parsingBP` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  ADD CONSTRAINT `parsingbpmn_threat_h_control_id_7388a9d5_fk_parsingbp` FOREIGN KEY (`control_id`) REFERENCES `parsingbpmn_control` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_h_threat_id_e0101e51_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
