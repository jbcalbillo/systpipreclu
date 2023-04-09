-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2023 a las 09:57:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `systpipreee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_api_key`
--

CREATE TABLE `rcl_api_key` (
  `id` int(10) UNSIGNED NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `ipaddr` varchar(64) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `can_create_tickets` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `can_exec_cron` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_attachment`
--

CREATE TABLE `rcl_attachment` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `type` char(1) NOT NULL,
  `file_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inline` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `lang` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_attachment`
--

INSERT INTO `rcl_attachment` (`id`, `object_id`, `type`, `file_id`, `name`, `inline`, `lang`) VALUES
(8, 14, 'T', 1, NULL, 1, NULL),
(9, 16, 'T', 1, NULL, 1, NULL),
(10, 17, 'T', 1, NULL, 1, NULL),
(11, 18, 'T', 1, NULL, 1, NULL),
(12, 19, 'T', 1, NULL, 1, NULL),
(14, 2, 'C', 3, NULL, 0, NULL),
(19, 26, 'H', 5, NULL, 0, NULL),
(20, 28, 'H', 10, NULL, 0, NULL),
(22, 29, 'H', 11, NULL, 1, NULL),
(23, 31, 'H', 11, NULL, 1, NULL),
(24, 33, 'H', 5, NULL, 0, NULL),
(25, 37, 'H', 12, 'ACFbR7PeLbqHG3dMBHBMfxPNWpPv8yZU9McxElSK6L4iJ_lnv_gY6zc0gexL.pdf', 0, NULL),
(26, 53, 'D', 13, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_audit`
--

CREATE TABLE `rcl_audit` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_type` char(1) NOT NULL DEFAULT '',
  `object_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_audit`
--

INSERT INTO `rcl_audit` (`id`, `object_type`, `object_id`, `event_id`, `staff_id`, `user_id`, `data`, `ip`, `timestamp`) VALUES
(1, 'X', 164, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"show_view_audits\"}', '127.0.0.1', '2023-03-08 13:20:15'),
(2, 'H', 2, 14, 1, 0, '{\"name\":\"Feedback\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:21:27'),
(3, 'H', 1, 14, 1, 0, '{\"name\":\"General Inquiry\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:21:27'),
(4, 'H', 10, 14, 1, 0, '{\"name\":\"Report a Problem\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:21:27'),
(5, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:13'),
(6, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"dept_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:13'),
(7, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"priority_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:13'),
(8, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"status_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:14'),
(9, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"page_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:14'),
(10, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"sequence_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:14'),
(11, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"number_format\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:14'),
(12, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:14'),
(13, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"team_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 13:25:14'),
(14, 'N', 3, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n de la Compa\\u00f1ia\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:26:27'),
(15, 'N', 4, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n de la Organizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:27:07'),
(16, 'N', 1, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n del Contacto\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:28:28'),
(17, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles del Ticket\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:31:16'),
(18, 'N', 0, 1, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:34:00'),
(19, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:35:03'),
(20, 'U', 2, 1, 0, 2, '{\"name\":\"Juan Barrios\",\"person\":\"SYSTEM\"}', '::1', '2023-03-08 13:35:40'),
(21, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 13:35:40'),
(22, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 13:35:40'),
(23, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 13:36:34'),
(24, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:39:42'),
(25, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:40:38'),
(26, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:41:36'),
(27, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:43:45'),
(28, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:44:31'),
(29, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 13:44:45'),
(30, 'T', 2, 1, 0, 2, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 13:45:46'),
(31, 'X', 150, 9, 0, 2, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '::1', '2023-03-08 13:45:49'),
(32, 'X', 152, 9, 0, 2, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '::1', '2023-03-08 13:45:49'),
(33, 'X', 151, 9, 0, 2, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '::1', '2023-03-08 13:45:49'),
(34, 'T', 2, 10, 0, 2, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 13:45:53'),
(35, 'T', 2, 10, 1, 0, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:46:20'),
(36, 'T', 2, 9, 1, 0, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\",\"fields\":{\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"]}}', '127.0.0.1', '2023-03-08 13:46:38'),
(37, 'T', 2, 21, 1, 0, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:46:39'),
(38, 'T', 2, 10, 1, 0, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 13:46:43'),
(39, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 13:48:19'),
(40, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 14:24:01'),
(41, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 14:39:27'),
(42, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 14:40:17'),
(43, 'U', 2, 19, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 15:06:29'),
(44, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 15:06:37'),
(45, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 15:07:43'),
(46, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:13:00'),
(47, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:13:49'),
(48, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:15:01'),
(49, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:16:12'),
(50, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:17:08'),
(51, 'H', 12, 1, 1, 0, '{\"name\":\"Solicitudes Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:19:36'),
(52, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 15:20:51'),
(53, 'N', 0, 1, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:24:18'),
(54, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:25:41'),
(55, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:30:24'),
(56, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 15:30:41'),
(57, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:32:04'),
(58, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:33:24'),
(59, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:37:13'),
(60, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:38:42'),
(61, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:39:21'),
(62, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:41:43'),
(63, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:44:22'),
(64, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:45:43'),
(65, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:47:11'),
(66, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:48:51'),
(67, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 15:57:42'),
(68, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:00:37'),
(69, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:01:40'),
(70, 'H', 12, 9, 1, 0, '{\"name\":\"Alta de Usuario\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 16:02:17'),
(71, 'H', 13, 1, 1, 0, '{\"name\":\"Anexo de Localidad\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:09:33'),
(72, 'H', 12, 9, 1, 0, '{\"name\":\"Alta de Usuario\",\"person\":\"Juan Barrios\",\"key\":\"sequence_id\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 16:10:10'),
(73, 'N', 0, 1, 1, 0, '{\"name\":\"Ingrese localidades a solicitades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:13:00'),
(74, 'N', 9, 9, 1, 0, '{\"name\":\"Ingrese localidades a solicitades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:18:03'),
(75, 'N', 0, 1, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:20:35'),
(76, 'N', 10, 9, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:20:54'),
(77, 'N', 10, 9, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:23:06'),
(78, 'N', 9, 9, 1, 0, '{\"name\":\"Ingrese localidades a solicitades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:26:24'),
(79, 'N', 0, 1, 1, 0, '{\"name\":false,\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:26:50'),
(80, 'N', 0, 1, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:28:44'),
(81, 'N', 0, 1, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:30:06'),
(82, 'N', 9, 9, 1, 0, '{\"name\":\"Ingrese localidades a solicitades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:30:42'),
(83, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:32:01'),
(84, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:37:59'),
(85, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:38:36'),
(86, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:38:47'),
(87, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:40:30'),
(88, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:40:37'),
(89, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:41:11'),
(90, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:41:49'),
(91, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:42:22'),
(92, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:42:45'),
(93, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:43:16'),
(94, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:46:23'),
(95, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:46:46'),
(96, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:47:01'),
(97, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:47:22'),
(98, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 16:47:39'),
(99, 'H', 13, 9, 1, 0, '{\"name\":\"Anexo de Localidad - Asignaci\\u00f3n de Localidad\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 16:48:22'),
(100, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 16:48:40'),
(101, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:06:09'),
(102, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:08:19'),
(103, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:10:14'),
(104, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:11:30'),
(105, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:12:16'),
(106, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:19:46'),
(107, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:20:13'),
(108, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 17:22:23'),
(109, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 17:28:49'),
(110, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 17:32:51'),
(111, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 17:33:05'),
(112, 'H', 14, 1, 1, 0, '{\"name\":\"Alta de pueesto en plataforma\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:37:10'),
(113, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:38:23'),
(114, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:38:37'),
(115, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:40:56'),
(116, 'N', 0, 1, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 17:44:35'),
(117, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 18:51:57'),
(118, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 18:52:19'),
(119, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 18:52:48'),
(120, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 18:53:21'),
(121, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 18:53:42'),
(122, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 18:54:10'),
(123, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:03:30'),
(124, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:03:56'),
(125, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:09:14'),
(126, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:09:26'),
(127, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:11:52'),
(128, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:12:13'),
(129, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:12:28'),
(130, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:13:08'),
(131, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:16:02'),
(132, 'N', 8, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:16:10'),
(133, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:27:24'),
(134, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:27:55'),
(135, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:33:46'),
(136, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:38:58'),
(137, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:41:21'),
(138, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:41:44'),
(139, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:41:53'),
(140, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:42:14'),
(141, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:43:02'),
(142, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:43:55'),
(143, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:48:35'),
(144, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:48:51'),
(145, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:49:16'),
(146, 'N', 0, 1, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 19:55:29'),
(147, 'H', 15, 1, 1, 0, '{\"name\":\"Alta de Sector en Plataforma\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:26:43'),
(148, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 20:27:27'),
(149, 'U', 2, 19, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 20:28:53'),
(150, 'N', 0, 1, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:34:55'),
(151, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:35:08'),
(152, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:35:44'),
(153, 'H', 16, 1, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:36:50'),
(154, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 20:37:10'),
(155, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles del Ticket\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:43:31'),
(156, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:44:15'),
(157, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:44:42'),
(158, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:44:57'),
(159, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:49:02'),
(160, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:49:55'),
(161, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:50:06'),
(162, 'H', 14, 9, 1, 0, '{\"name\":\"Alta de puesto en plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '127.0.0.1', '2023-03-08 20:50:55'),
(163, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 20:53:56'),
(164, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-08 21:19:22'),
(165, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:03:37'),
(166, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:03:48'),
(167, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:04:03'),
(168, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:04:13'),
(169, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:04:28'),
(170, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:05:02'),
(171, 'S', 3, 18, 1, 0, '{\"person\":\"Axell Sosa\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:05:18'),
(172, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 22:05:54'),
(173, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 22:06:27'),
(174, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:11:11'),
(175, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:12:44'),
(176, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:15:56'),
(177, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:21:03'),
(178, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:21:26'),
(179, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-08 22:22:03'),
(180, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 22:22:43'),
(181, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-08 22:22:47'),
(182, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:31:07'),
(183, 'N', 10, 9, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:35:11'),
(184, 'N', 0, 1, 1, 0, '{\"name\":\"Sector\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:38:31'),
(185, 'N', 15, 9, 1, 0, '{\"name\":\"Sector\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:38:59'),
(186, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles del Ticket\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:39:33'),
(187, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles del Ticket\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:39:41'),
(188, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles de solicitud o soporte.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:43:45'),
(189, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles de solicitud o soporte.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:44:32'),
(190, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles de solicitud o soporte.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:44:41'),
(191, 'N', 2, 9, 1, 0, '{\"name\":\"Detalles de solicitud o soporte.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:45:08'),
(192, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:56:38'),
(193, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:59:48'),
(194, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 22:59:59'),
(195, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:00:32'),
(196, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:01:39'),
(197, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:02:14'),
(198, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:02:30'),
(199, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:02:43'),
(200, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:02:56'),
(201, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:03:03'),
(202, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:03:07'),
(203, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:03:45'),
(204, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:04:28'),
(205, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:09:07'),
(206, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:10:54'),
(207, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:12:49'),
(208, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:16:25'),
(209, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:17:20'),
(210, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:17:44'),
(211, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:18:04'),
(212, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:18:21'),
(213, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:18:33'),
(214, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:18:44'),
(215, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:19:01'),
(216, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:19:24'),
(217, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:19:40'),
(218, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:19:44'),
(219, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:00'),
(220, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:04'),
(221, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:24'),
(222, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:34'),
(223, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:42'),
(224, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:45'),
(225, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:51'),
(226, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:20:59'),
(227, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:21:06'),
(228, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:27:53'),
(229, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:32:54'),
(230, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:34:55'),
(231, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:37:16'),
(232, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:37:48'),
(233, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:42:11'),
(234, 'N', 2, 9, 1, 0, '{\"name\":\"Ingresa la informaci\\u00f3n requerida para atender tu solicitud.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:48:01'),
(235, 'N', 2, 9, 1, 0, '{\"name\":\"Ingresa la informaci\\u00f3n requerida para atender tu solicitud.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:50:06'),
(236, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:52:08'),
(237, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:53:14'),
(238, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:53:26'),
(239, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:54:15'),
(240, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:55:30'),
(241, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:57:24'),
(242, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-08 23:58:12'),
(243, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:01:42'),
(244, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:02:29'),
(245, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:07:00'),
(246, 'L', 2, 1, 1, 0, '{\"name\":\"REGI\\u00d3N\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:10:18'),
(247, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:12:48'),
(248, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:13:35'),
(249, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:14:16'),
(250, 'L', 2, 9, 1, 0, '{\"name\":\"REGI\\u00d3N\",\"person\":\"Juan Barrios\",\"key\":\"name\"}', '::1', '2023-03-09 00:16:11'),
(251, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:17:01'),
(252, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:17:49'),
(253, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:17:53'),
(254, 'N', 11, 9, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:18:02'),
(255, 'L', 2, 9, 1, 0, '{\"name\":\"REGIONES DANONE\",\"person\":\"Juan Barrios\",\"key\":\"name\"}', '::1', '2023-03-09 00:24:57'),
(256, 'L', 2, 9, 1, 0, '{\"name\":\"MARCA\",\"person\":\"Juan Barrios\",\"key\":\"name_plural\"}', '::1', '2023-03-09 00:24:57'),
(257, 'N', 0, 1, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:31:03'),
(258, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:35:42'),
(259, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:35:49'),
(260, 'H', 17, 1, 1, 0, '{\"name\":\"testwerw\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:39:44'),
(261, 'S', 2, 9, 1, 0, '{\"name\":\"Karen Barreto\",\"person\":\"Juan Barrios\",\"key\":\"role_id\",\"orm_audit\":true}', '::1', '2023-03-09 00:40:27'),
(262, 'S', 3, 9, 1, 0, '{\"name\":\"Axell Sosa\",\"person\":\"Juan Barrios\",\"key\":\"role_id\",\"orm_audit\":true}', '::1', '2023-03-09 00:40:27'),
(263, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"role_id\",\"orm_audit\":true}', '::1', '2023-03-09 00:40:27'),
(264, 'S', 3, 9, 1, 0, '{\"name\":\"Axell Sosa\",\"person\":\"Juan Barrios\",\"key\":\"role_id\",\"orm_audit\":true}', '::1', '2023-03-09 00:41:50'),
(265, 'S', 3, 9, 1, 0, '{\"name\":\"Axell Sosa\",\"person\":\"Juan Barrios\",\"key\":\"dept_id\",\"orm_audit\":true}', '::1', '2023-03-09 00:41:51'),
(266, 'S', 3, 9, 1, 0, '{\"name\":\"Axell Sosa\",\"person\":\"Juan Barrios\",\"key\":\"Talent Group Department Access Added\"}', '::1', '2023-03-09 00:41:51'),
(267, 'S', 3, 9, 1, 0, '{\"name\":\"Axell Sosa\",\"person\":\"Juan Barrios\",\"key\":\"PIP-Reclutamiento Department Access Added\"}', '::1', '2023-03-09 00:42:34'),
(268, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"extra\",\"orm_audit\":true}', '::1', '2023-03-09 00:42:58'),
(269, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"Talent Group Department Access Removed\"}', '::1', '2023-03-09 00:43:08'),
(270, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"dept_id\",\"orm_audit\":true}', '::1', '2023-03-09 00:43:14'),
(271, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"extra\",\"orm_audit\":true}', '::1', '2023-03-09 00:43:18'),
(272, 'S', 2, 9, 1, 0, '{\"name\":\"Karen Barreto\",\"person\":\"Juan Barrios\",\"key\":\"extra\",\"orm_audit\":true}', '::1', '2023-03-09 00:43:42'),
(273, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:46:37'),
(274, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 00:47:51'),
(275, 'T', 3, 1, 0, 2, '{\"name\":\"275183\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:48:10'),
(276, 'X', 150, 9, 0, 2, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '::1', '2023-03-09 00:48:12'),
(277, 'X', 152, 9, 0, 2, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '::1', '2023-03-09 00:48:12'),
(278, 'X', 151, 9, 0, 2, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '::1', '2023-03-09 00:48:12'),
(279, 'T', 3, 4, 0, 2, '{\"name\":\"275183\",\"person\":\"Juan Barrios\",\"auto\":true}', '::1', '2023-03-09 00:48:16'),
(280, 'T', 3, 10, 0, 2, '{\"name\":\"275183\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:48:19'),
(281, 'T', 3, 10, 1, 0, '{\"name\":\"275183\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:48:31'),
(282, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:49:43'),
(283, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:49:55'),
(284, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:56:55'),
(285, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 00:57:45'),
(286, 'L', 3, 1, 1, 0, '{\"name\":\"REGIONES ADVENTUM\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:01:34'),
(287, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:02:53'),
(288, 'T', 1, 14, 1, 0, '{\"name\":\"633672\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:08:10'),
(289, 'T', 3, 14, 1, 0, '{\"name\":\"275183\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:08:11'),
(290, 'T', 2, 14, 1, 0, '{\"name\":\"CSI-PIP-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:08:12'),
(291, 'L', 4, 1, 1, 0, '{\"name\":\"REGIONES AXIS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:10:16'),
(292, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:14:49'),
(293, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:17:14'),
(294, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:31:29'),
(295, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:32:02'),
(296, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:34:22'),
(297, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:38:58'),
(298, 'T', 4, 1, 0, 2, '{\"name\":\"311921\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:39:56'),
(299, 'T', 4, 4, 0, 2, '{\"name\":\"311921\",\"person\":\"Juan Barrios\",\"auto\":true}', '::1', '2023-03-09 01:39:59'),
(300, 'T', 4, 10, 0, 2, '{\"name\":\"311921\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:40:02'),
(301, 'L', 5, 1, 1, 0, '{\"name\":\"SECTORES ADVENTUM\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:41:45'),
(302, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:45:39'),
(303, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:46:22'),
(304, 'T', 4, 10, 0, 2, '{\"name\":\"311921\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 01:46:25'),
(305, 'N', 0, 1, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:13:30'),
(306, 'N', 21, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:29:23'),
(307, 'N', 21, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:31:10'),
(308, 'N', 21, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:32:28'),
(309, 'N', 21, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:35:09'),
(310, 'H', 17, 14, 1, 0, '{\"name\":\"testwerw\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:35:40'),
(311, 'H', 16, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\",\"key\":\"sequence_id\",\"orm_audit\":true}', '::1', '2023-03-09 02:36:45'),
(312, 'H', 16, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\",\"key\":\"number_format\",\"orm_audit\":true}', '::1', '2023-03-09 02:36:45'),
(313, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 02:39:06'),
(314, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 02:39:09'),
(315, 'T', 4, 14, 1, 0, '{\"name\":\"311921\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:39:20'),
(316, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:41:09'),
(317, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:44:11'),
(318, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:46:42'),
(319, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:46:46'),
(320, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:47:27'),
(321, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:48:05'),
(322, 'N', 0, 1, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:50:43'),
(323, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:51:42'),
(324, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:51:55'),
(325, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:53:29'),
(326, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:54:04'),
(327, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:54:23'),
(328, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:58:46'),
(329, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 02:59:03'),
(330, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:01:41'),
(331, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:01:53'),
(332, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:02:18'),
(333, 'N', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:03:22'),
(334, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:04:35'),
(335, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:05:51'),
(336, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:06:13'),
(337, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:06:40'),
(338, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:06:45'),
(339, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:07:43'),
(340, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:07:59'),
(341, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:08:46'),
(342, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:08:57'),
(343, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:09:43'),
(344, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:10:26'),
(345, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:11:30'),
(346, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:13:07'),
(347, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:13:11'),
(348, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:14:26'),
(349, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:15:54'),
(350, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:17:50'),
(351, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:17:56'),
(352, 'L', 6, 1, 1, 0, '{\"name\":\"SECTOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:19:42'),
(353, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:22:27'),
(354, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:23:14'),
(355, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:26:09'),
(356, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:26:14'),
(357, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:28:48'),
(358, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:32:58'),
(359, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:33:18'),
(360, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:33:59'),
(361, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:34:25'),
(362, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:34:30'),
(363, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:35:10'),
(364, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:35:58'),
(365, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:36:20'),
(366, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:37:06'),
(367, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:37:20'),
(368, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 03:38:42'),
(369, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 13:07:29'),
(370, 'N', 17, 9, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:14:50'),
(371, 'N', 21, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:22:00'),
(372, 'U', 3, 1, 1, 0, '{\"name\":\" ALVAREZ HERNANDEZ JESSICA HATZIRI DE JESUS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:25:23'),
(373, 'U', 3, 14, 1, 0, '{\"name\":\" ALVAREZ HERNANDEZ JESSICA HATZIRI DE JESUS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:25:39'),
(374, 'U', 4, 1, 1, 0, '{\"name\":\"ALVAREZ HERNANDEZ JESSICA HATZIRI DE JESUS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:28:39'),
(375, 'U', 5, 1, 1, 0, '{\"name\":\"ALVAREZ RAMIREZ JESUS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:25');
INSERT INTO `rcl_audit` (`id`, `object_type`, `object_id`, `event_id`, `staff_id`, `user_id`, `data`, `ip`, `timestamp`) VALUES
(376, 'U', 6, 1, 1, 0, '{\"name\":\"AMEZCUA HUERTA EVA MARIANA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:25'),
(377, 'U', 7, 1, 1, 0, '{\"name\":\"CAMPERO BALTAZAR ILIANA CAROLINA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(378, 'U', 8, 1, 1, 0, '{\"name\":\"CASTILLO SERVIN JESSICA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(379, 'U', 9, 1, 1, 0, '{\"name\":\"CERECEDO PEREZ LUIS ALBERTO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(380, 'U', 10, 1, 1, 0, '{\"name\":\"CERVANTES TOSCANO LEONARDO ISMAEL\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(381, 'U', 11, 1, 1, 0, '{\"name\":\"CHAVEZ IZQUIERDO NAYELLY\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(382, 'U', 12, 1, 1, 0, '{\"name\":\"CHAVIRA NU\\u00d1EZ ALEXIS JOSE GUADALUPE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(383, 'U', 13, 1, 1, 0, '{\"name\":\"CISNEROS PEREZ LESLY MARLENE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(384, 'U', 14, 1, 1, 0, '{\"name\":\"CORDERO HERRERA GUADALUPE SARAHI\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(385, 'U', 15, 1, 1, 0, '{\"name\":\"CORTES PEREZ ARMANDO ISIDRO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(386, 'U', 16, 1, 1, 0, '{\"name\":\"COVARRUBIAS TERRAZAS RICARDO DANIEL \",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(387, 'U', 17, 1, 1, 0, '{\"name\":\"CRUZ GALICIA LAURA PAOLA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:26'),
(388, 'U', 18, 1, 1, 0, '{\"name\":\"ESCALANTE VALENZUELA JAMILETH\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:27'),
(389, 'U', 19, 1, 1, 0, '{\"name\":\"FRANCO ENCARNACION ANA PAOLA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:27'),
(390, 'U', 20, 1, 1, 0, '{\"name\":\"GAMI\\u00d1O BARAJAS ALEYDIS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(391, 'U', 21, 1, 1, 0, '{\"name\":\"GARCIA GARCIA ARELI\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(392, 'U', 22, 1, 1, 0, '{\"name\":\"GARCIA TORRES PEDRO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(393, 'U', 23, 1, 1, 0, '{\"name\":\"GARCIA VALDEZ ROSA \",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(394, 'U', 24, 1, 1, 0, '{\"name\":\"GODINEZ JIMENEZ CINTHIA NOHEMI\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(395, 'U', 25, 1, 1, 0, '{\"name\":\"GOMEZ ALMAZAN JENNIFER\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(396, 'U', 26, 1, 1, 0, '{\"name\":\"GONZALEZ CRUZ ANDREA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(397, 'U', 27, 1, 1, 0, '{\"name\":\"GONZALEZ HERNANDEZ SURY SARAY\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(398, 'U', 28, 1, 1, 0, '{\"name\":\"GUDI\\u00d1O ORTIZ MARIA FERNANDA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(399, 'U', 29, 1, 1, 0, '{\"name\":\"GUERRERO BAUTISTA RICARDO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(400, 'U', 30, 1, 1, 0, '{\"name\":\"HEMER ARELLANO MARIO IVAN\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(401, 'U', 31, 1, 1, 0, '{\"name\":\"HERNANDEZ DOMINGUEZ JAVIER\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:28'),
(402, 'U', 32, 1, 1, 0, '{\"name\":\"HERNANDEZ GONZALEZ EDSON ANTONIO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(403, 'U', 33, 1, 1, 0, '{\"name\":\"LAUREANO VALDOVINOS YESENIA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(404, 'U', 34, 1, 1, 0, '{\"name\":\"LINACO LEON ANALLELY\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(405, 'U', 35, 1, 1, 0, '{\"name\":\"LOPEZ BRISE\\u00d1O DIANA PATRICIA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(406, 'U', 36, 1, 1, 0, '{\"name\":\"LOPEZ SAMPAYO GRISELDA MARLENE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(407, 'U', 37, 1, 1, 0, '{\"name\":\"LOPEZ ZAMUDIO DIANA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(408, 'U', 38, 1, 1, 0, '{\"name\":\"MENDOZA ISLAS SUSANA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(409, 'U', 39, 1, 1, 0, '{\"name\":\"MERA ESTRADA EDWIN ALEXIS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(410, 'U', 40, 1, 1, 0, '{\"name\":\"MIRANDA SOTO SAMANTHA ELOISA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(411, 'U', 41, 1, 1, 0, '{\"name\":\"MOGUEL LOPEZ JUDITH\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(412, 'U', 42, 1, 1, 0, '{\"name\":\"MORALES ESCALANTE DANIELA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(413, 'U', 43, 1, 1, 0, '{\"name\":\"MORALES ESTRADA VANESSA JACQUELINE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(414, 'U', 44, 1, 1, 0, '{\"name\":\"MU\\u00d1OZ HERNANDEZ JESSICA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(415, 'U', 45, 1, 1, 0, '{\"name\":\"NIETO RASGADO DANIEL ALEJANDRO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:29'),
(416, 'U', 46, 1, 1, 0, '{\"name\":\"OBANDO SANCHEZ ANDREA GUADALUPE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(417, 'U', 47, 1, 1, 0, '{\"name\":\"OCHOA ORTEGA LAURA DANIELA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(418, 'U', 48, 1, 1, 0, '{\"name\":\"OLMOS SANTIAGO ANGELES\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(419, 'U', 49, 1, 1, 0, '{\"name\":\"OLVERA TLAMANI BRENDA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(420, 'U', 50, 1, 1, 0, '{\"name\":\"OSORIO OSORIO YADIRA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(421, 'U', 51, 1, 1, 0, '{\"name\":\"PERALTA HERNANDEZ CESAR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(422, 'U', 52, 1, 1, 0, '{\"name\":\"PEREZ SANCHEZ RAFAEL\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(423, 'U', 53, 1, 1, 0, '{\"name\":\"PRADO GUZMAN ESTEFANY \",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(424, 'U', 54, 1, 1, 0, '{\"name\":\"RAMIREZ GARCIA JEANNETTE ARACELI\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(425, 'U', 55, 1, 1, 0, '{\"name\":\"REAL SILVA ESMERALDA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(426, 'U', 56, 1, 1, 0, '{\"name\":\"RUIZ GONZALEZ EDGAR ALEJANDRO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(427, 'U', 57, 1, 1, 0, '{\"name\":\"SALAZAR GATICA ALEJANDRA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(428, 'U', 58, 1, 1, 0, '{\"name\":\"SOTO RAMIREZ ANA LETICIA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(429, 'U', 59, 1, 1, 0, '{\"name\":\"TAPIA VAZQUEZ PAOLA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(430, 'U', 60, 1, 1, 0, '{\"name\":\"TOVAR GONZALEZ TANIA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(431, 'U', 61, 1, 1, 0, '{\"name\":\"VAZQUEZ MARTINEZ JOVANI DANIEL\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(432, 'U', 62, 1, 1, 0, '{\"name\":\"VEGA SANCHEZ ANAYELI\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:30'),
(433, 'U', 63, 1, 1, 0, '{\"name\":\"VELAZCO GONZALEZ IRVIN ALEJANDRO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:31'),
(434, 'U', 64, 1, 1, 0, '{\"name\":\"YOSHIMOTO RUGERIO PABLO KAZUO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:30:31'),
(435, 'O', 1, 9, 1, 0, '{\"name\":\"osTicket\",\"person\":\"Juan Barrios\",\"key\":\"Name\"}', '::1', '2023-03-09 13:32:46'),
(436, 'O', 2, 1, 1, 0, '{\"name\":\"TALENT GROUP\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:34:13'),
(437, 'O', 3, 1, 1, 0, '{\"name\":\"IT-STRATEGY\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:35:32'),
(438, 'U', 65, 1, 0, 65, '{\"name\":\"Ana Karen Barreto\",\"person\":\"SISTEMA\"}', '127.0.0.1', '2023-03-09 13:37:31'),
(439, 'X', 150, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-09 13:37:32'),
(440, 'X', 152, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-09 13:37:32'),
(441, 'X', 151, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-09 13:37:32'),
(442, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-09 13:38:32'),
(443, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-09 13:38:39'),
(444, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 13:38:50'),
(445, 'U', 66, 1, 1, 0, '{\"name\":\"Axell Sosa Rodriguez\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:40:40'),
(446, 'U', 34, 9, 0, 34, '{\"name\":\"LINACO LEON ANALLELY\",\"person\":\"SISTEMA\",\"key\":\"Tel\\u00e9fono\"}', '127.0.0.1', '2023-03-09 13:44:28'),
(447, 'U', 34, 9, 0, 34, '{\"name\":\"LINACO LEON ANALLELY\",\"person\":\"SISTEMA\",\"key\":\"Name\"}', '127.0.0.1', '2023-03-09 13:44:28'),
(448, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 13:51:59'),
(449, 'T', 5, 1, 0, 65, '{\"name\":\"CSI-PIP-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 13:52:52'),
(450, 'T', 5, 10, 0, 65, '{\"name\":\"CSI-PIP-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 13:52:59'),
(451, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:53:46'),
(452, 'T', 5, 9, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\",\"fields\":{\"topic_id\":[11,12]}}', '::1', '2023-03-09 13:54:25'),
(453, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:54:31'),
(454, 'T', 5, 20, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:54:58'),
(455, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:55:01'),
(456, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:55:13'),
(457, 'T', 5, 10, 0, 65, '{\"name\":\"CSI-PIP-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 13:55:33'),
(458, 'T', 5, 10, 0, 65, '{\"name\":\"CSI-PIP-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 13:56:17'),
(459, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:56:28'),
(460, 'T', 5, 9, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\",\"fields\":{\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"],\"43\":[null,\"{\\\"key1\\\":\\\"PROYECTO\\\"}\"],\"44\":[null,\"et\"],\"45\":[null,\"{\\\"key2\\\":\\\"USUARIO\\\"}\"],\"46\":[null,\"{\\\"key2\\\":\\\"SOPORTE\\\"}\"]}}', '::1', '2023-03-09 13:57:26'),
(461, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:57:28'),
(462, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:58:35'),
(463, 'T', 5, 20, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:58:55'),
(464, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:58:59'),
(465, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 13:59:28'),
(466, 'T', 5, 10, 0, 65, '{\"name\":\"CSI-PIP-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 13:59:32'),
(467, 'N', 8, 9, 1, 0, '{\"name\":\"Alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:00:33'),
(468, 'T', 5, 10, 0, 65, '{\"name\":\"CSI-PIP-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:00:53'),
(469, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:01:34'),
(470, 'T', 6, 1, 0, 65, '{\"name\":\"SOL-RCL-1\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:03:48'),
(471, 'T', 6, 10, 0, 65, '{\"name\":\"SOL-RCL-1\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:03:55'),
(472, 'T', 7, 1, 0, 65, '{\"name\":\"SOL-RCL-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:04:40'),
(473, 'T', 7, 10, 0, 65, '{\"name\":\"SOL-RCL-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:04:46'),
(474, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:04:55'),
(475, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:05:37'),
(476, 'T', 6, 10, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:08:24'),
(477, 'T', 6, 20, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:09:03'),
(478, 'T', 6, 10, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:09:07'),
(479, 'T', 7, 10, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:09:17'),
(480, 'T', 7, 20, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:09:35'),
(481, 'T', 7, 10, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:09:39'),
(482, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:09:53'),
(483, 'T', 5, 15, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:00'),
(484, 'T', 6, 15, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:00'),
(485, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:01'),
(486, 'T', 5, 15, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:02'),
(487, 'T', 7, 15, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:02'),
(488, 'T', 6, 2, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:03'),
(489, 'T', 7, 2, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:11:04'),
(490, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:12:16'),
(491, 'T', 7, 10, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:12:24'),
(492, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:13:01'),
(493, 'T', 5, 2, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:13:44'),
(494, 'T', 5, 20, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:13:45'),
(495, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:14:07'),
(496, 'T', 7, 10, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:14:13'),
(497, 'T', 7, 10, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:15:23'),
(498, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:15:58'),
(499, 'T', 6, 10, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:16:20'),
(500, 'T', 6, 10, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:16:27'),
(501, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:17:10'),
(502, 'T', 5, 10, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:17:48'),
(503, 'T', 5, 20, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:18:00'),
(504, 'T', 8, 1, 0, 65, '{\"name\":\"CSI-PIP-3\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:20:21'),
(505, 'T', 8, 10, 0, 65, '{\"name\":\"CSI-PIP-3\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:20:28'),
(506, 'T', 9, 1, 0, 65, '{\"name\":\"SOL-RCL-3\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:21:02'),
(507, 'T', 9, 10, 0, 65, '{\"name\":\"SOL-RCL-3\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:21:07'),
(508, 'L', 7, 1, 1, 0, '{\"name\":\"\\u00c1REA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:30:12'),
(509, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:31:47'),
(510, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:31:56'),
(511, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:32:05'),
(512, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:32:33'),
(513, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:32:44'),
(514, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:32:53'),
(515, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:33:33'),
(516, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:33:40'),
(517, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-09 14:33:47'),
(518, 'T', 10, 1, 0, 65, '{\"name\":\"CSI-PIP-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:34:58'),
(519, 'T', 10, 10, 0, 65, '{\"name\":\"CSI-PIP-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:35:03'),
(520, 'T', 11, 1, 0, 65, '{\"name\":\"672163\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:35:29'),
(521, 'T', 11, 10, 0, 65, '{\"name\":\"672163\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:35:35'),
(522, 'T', 12, 1, 0, 65, '{\"name\":\"SOL-RCL-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:36:25'),
(523, 'T', 12, 10, 0, 65, '{\"name\":\"SOL-RCL-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:36:30'),
(524, 'T', 7, 10, 0, 65, '{\"name\":\"SOL-RCL-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:37:29'),
(525, 'T', 7, 9, 0, 65, '{\"name\":\"SOL-RCL-2\",\"person\":\"Ana Karen Barreto\",\"fields\":{\"20\":[\"Soporte Reclutamiento \\/ Anexo de Localidad - Asignaci\\u00f3n de Localidad\",null],\"22\":[[\"Normal\",2],null],\"166\":[null,\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\"],\"58\":[\"{\\\"key5\\\":\\\"CITY CLUB\\\"}\",null],\"60\":[\"{\\\"key1\\\":\\\"REGI\\\\u00d3N 1\\\"}\",null],\"163\":[\"{\\\"70\\\":\\\"DURANGO\\\"}\",null],\"69\":[\"1\",\"0\"]}}', '127.0.0.1', '2023-03-09 14:37:40'),
(526, 'T', 7, 10, 0, 65, '{\"name\":\"SOL-RCL-2\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:37:40'),
(527, 'T', 6, 10, 0, 65, '{\"name\":\"SOL-RCL-1\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:37:49'),
(528, 'T', 12, 10, 0, 65, '{\"name\":\"SOL-RCL-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:38:03'),
(529, 'T', 11, 10, 0, 65, '{\"name\":\"672163\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:38:19'),
(530, 'T', 9, 10, 0, 65, '{\"name\":\"SOL-RCL-3\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:38:49'),
(531, 'T', 12, 10, 0, 65, '{\"name\":\"SOL-RCL-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:39:08'),
(532, 'T', 12, 9, 0, 65, '{\"name\":\"SOL-RCL-4\",\"person\":\"Ana Karen Barreto\",\"fields\":{\"20\":[\"Soporte Reclutamiento \\/ Anexo de Localidad - Asignaci\\u00f3n de Localidad\",null],\"22\":[[\"Normal\",2],null],\"58\":[\"{\\\"key11\\\":\\\"FOOD SERVICE\\\"}\",null],\"60\":[\"{\\\"key5\\\":\\\"REGI\\\\u00d3N 5\\\"}\",null],\"163\":[\"{\\\"70\\\":\\\"DURANGO\\\"}\",null],\"69\":[\"1\",\"0\"]}}', '127.0.0.1', '2023-03-09 14:39:24'),
(533, 'T', 12, 10, 0, 65, '{\"name\":\"SOL-RCL-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:39:25'),
(534, 'T', 11, 10, 0, 65, '{\"name\":\"672163\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:39:34'),
(535, 'T', 11, 9, 0, 65, '{\"name\":\"672163\",\"person\":\"Ana Karen Barreto\",\"fields\":{\"20\":[\"Soporte Reclutamiento \\/ Alta de Sector en Plataforma\",null],\"22\":[[\"Normal\",2],null],\"112\":[\"{\\\"key2\\\":\\\"REGI\\\\u00d3N 2\\\"}\",null]}}', '127.0.0.1', '2023-03-09 14:39:47'),
(536, 'T', 11, 10, 0, 65, '{\"name\":\"672163\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:39:48'),
(537, 'T', 9, 10, 0, 65, '{\"name\":\"SOL-RCL-3\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:39:54'),
(538, 'T', 10, 10, 0, 65, '{\"name\":\"CSI-PIP-4\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:40:00'),
(539, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 14:47:15'),
(540, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 14:47:45'),
(541, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 14:47:49'),
(542, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 14:47:57'),
(543, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:48:13'),
(544, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:48:41'),
(545, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"passwd\",\"orm_audit\":true}', '127.0.0.1', '2023-03-09 14:49:35'),
(546, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"passwdreset\",\"orm_audit\":true}', '127.0.0.1', '2023-03-09 14:49:35'),
(547, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:49:42'),
(548, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:49:50'),
(549, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:50:42'),
(550, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:50:54'),
(551, 'H', 18, 1, 1, 0, '{\"name\":\"talent\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 14:51:56'),
(552, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"PIP-Reclutamiento Department Access Removed\"}', '127.0.0.1', '2023-03-09 14:52:31'),
(553, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:52:35'),
(554, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:52:57'),
(555, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:53:30'),
(556, 'T', 13, 1, 0, 65, '{\"name\":\"982649\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:54:31'),
(557, 'X', 150, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-09 14:54:34'),
(558, 'X', 152, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-09 14:54:34'),
(559, 'X', 151, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-09 14:54:34'),
(560, 'T', 13, 4, 0, 65, '{\"name\":\"982649\",\"person\":\"Ana Karen Barreto\",\"auto\":true}', '127.0.0.1', '2023-03-09 14:54:36'),
(561, 'T', 13, 10, 0, 65, '{\"name\":\"982649\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 14:54:40'),
(562, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:54:49'),
(563, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:55:07'),
(564, 'T', 13, 10, 1, 0, '{\"name\":\"982649\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 14:55:19'),
(565, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:55:30'),
(566, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:55:38'),
(567, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 14:56:22'),
(568, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:56:47'),
(569, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:56:55'),
(570, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '127.0.0.1', '2023-03-09 14:57:23'),
(571, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:57:27'),
(572, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:57:35'),
(573, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 14:57:50'),
(574, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:58:16'),
(575, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:58:24'),
(576, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '127.0.0.1', '2023-03-09 14:58:52'),
(577, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:58:56'),
(578, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 14:59:05'),
(579, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 14:59:12'),
(580, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:00:13'),
(581, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:00:24'),
(582, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '127.0.0.1', '2023-03-09 15:02:38'),
(583, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '127.0.0.1', '2023-03-09 15:02:38'),
(584, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"PIP-Reclutamiento Department Access Added\"}', '127.0.0.1', '2023-03-09 15:03:01'),
(585, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:03:04'),
(586, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:03:12'),
(587, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 15:03:21'),
(588, 'T', 13, 4, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\",\"staff\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:03:52'),
(589, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 15:04:02'),
(590, 'T', 13, 6, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\",\"dept\":\"PIP-Reclutamiento\"}', '127.0.0.1', '2023-03-09 15:04:22'),
(591, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 15:04:27'),
(592, 'T', 13, 9, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\",\"fields\":{\"topic_id\":[18,13]}}', '127.0.0.1', '2023-03-09 15:05:37'),
(593, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 15:05:56'),
(594, 'T', 13, 9, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\",\"fields\":{\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"],\"43\":[null,\"{\\\"key7\\\":\\\"MI RECLU\\\"}\"],\"44\":[null,\"RTFGH\"],\"45\":[null,\"{\\\"key1\\\":\\\"SISTEMA\\\"}\"],\"46\":[null,\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\"]}}', '127.0.0.1', '2023-03-09 15:06:26'),
(595, 'T', 13, 10, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\"}', '127.0.0.1', '2023-03-09 15:06:28'),
(596, 'T', 13, 9, 4, 0, '{\"name\":\"982649\",\"person\":\"Anallely Linaco\",\"fields\":{\"sla_id\":[2,1]}}', '127.0.0.1', '2023-03-09 15:07:03'),
(597, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:10:38'),
(598, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:10:52'),
(599, 'T', 7, 10, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:11:33'),
(600, 'T', 8, 10, 1, 0, '{\"name\":\"CSI-PIP-3\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:12:22'),
(601, 'T', 9, 10, 1, 0, '{\"name\":\"SOL-RCL-3\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:12:35'),
(602, 'T', 13, 10, 1, 0, '{\"name\":\"982649\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:18:54'),
(603, 'T', 13, 9, 1, 0, '{\"name\":\"982649\",\"person\":\"Juan Barrios\",\"fields\":{\"37\":[\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\",\"{\\\"94\\\":\\\"OPERACIONES\\\"}\"]}}', '127.0.0.1', '2023-03-09 15:19:10'),
(604, 'T', 12, 10, 1, 0, '{\"name\":\"SOL-RCL-4\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:19:18'),
(605, 'T', 12, 14, 1, 0, '{\"name\":\"SOL-RCL-4\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:19:31'),
(606, 'T', 11, 10, 1, 0, '{\"name\":\"672163\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:19:38'),
(607, 'T', 11, 9, 1, 0, '{\"name\":\"672163\",\"person\":\"Juan Barrios\",\"fields\":{\"167\":[\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\",\"{\\\"94\\\":\\\"OPERACIONES\\\"}\"]}}', '127.0.0.1', '2023-03-09 15:19:57'),
(608, 'D', 5, 1, 1, 0, '{\"name\":\"OPERACIONES\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:22:09'),
(609, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:22:49'),
(610, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:23:05'),
(611, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:23:18'),
(612, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:24:33'),
(613, 'T', 14, 1, 0, 65, '{\"name\":\"366101\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 15:25:43'),
(614, 'T', 14, 10, 0, 65, '{\"name\":\"366101\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 15:25:48'),
(615, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:25:53'),
(616, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:26:09'),
(617, 'X', 37, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"ticket_autoresponder\"}', '127.0.0.1', '2023-03-09 15:32:14'),
(618, 'X', 38, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"message_autoresponder\"}', '127.0.0.1', '2023-03-09 15:32:15'),
(619, 'X', 73, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"overlimit_notice_active\"}', '127.0.0.1', '2023-03-09 15:32:15'),
(620, 'X', 43, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"ticket_alert_dept_members\"}', '127.0.0.1', '2023-03-09 15:32:15'),
(621, 'X', 47, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"message_alert_dept_manager\"}', '127.0.0.1', '2023-03-09 15:32:15'),
(622, 'X', 48, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"note_alert_active\"}', '127.0.0.1', '2023-03-09 15:32:15'),
(623, 'X', 51, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"note_alert_dept_manager\"}', '127.0.0.1', '2023-03-09 15:32:15'),
(624, 'X', 62, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"assigned_alert_team_lead\"}', '127.0.0.1', '2023-03-09 15:32:16'),
(625, 'X', 63, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"assigned_alert_team_members\"}', '127.0.0.1', '2023-03-09 15:32:16'),
(626, 'X', 52, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_active\"}', '127.0.0.1', '2023-03-09 15:32:16'),
(627, 'X', 53, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_assigned\"}', '127.0.0.1', '2023-03-09 15:32:16'),
(628, 'X', 55, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_dept_members\"}', '127.0.0.1', '2023-03-09 15:32:16'),
(629, 'X', 59, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"overdue_alert_dept_members\"}', '127.0.0.1', '2023-03-09 15:32:16'),
(630, 'X', 32, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"send_sys_errors\"}', '127.0.0.1', '2023-03-09 15:32:17'),
(631, 'N', 0, 1, 1, 0, '{\"name\":\"\\u00c1rea Solicitante\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:37:49'),
(632, 'N', 25, 9, 1, 0, '{\"name\":\"\\u00c1rea Solicitante\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:38:16'),
(633, 'T', 10, 10, 1, 0, '{\"name\":\"CSI-PIP-4\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:40:45'),
(634, 'T', 10, 10, 1, 0, '{\"name\":\"CSI-PIP-4\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:41:16'),
(635, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:41:20'),
(636, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:41:39'),
(637, 'T', 15, 1, 0, 65, '{\"name\":\"CSI-PIP-5\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 15:42:34'),
(638, 'T', 15, 10, 0, 65, '{\"name\":\"CSI-PIP-5\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 15:42:41'),
(639, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:42:48'),
(640, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:43:03'),
(641, 'N', 25, 9, 1, 0, '{\"name\":\"\\u00c1rea Solicitante\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:43:54'),
(642, 'N', 25, 9, 1, 0, '{\"name\":\"\\u00c1rea Solicitante\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:44:08'),
(643, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:44:12'),
(644, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:44:28'),
(645, 'T', 16, 1, 0, 65, '{\"name\":\"CSI-PIP-6\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 15:45:18'),
(646, 'T', 16, 10, 0, 65, '{\"name\":\"CSI-PIP-6\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 15:45:23'),
(647, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:45:27'),
(648, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 15:45:45'),
(649, 'N', 10, 9, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 15:47:30'),
(650, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 16:55:24'),
(651, 'L', 3, 9, 1, 0, '{\"name\":\"REGIONES ADVENTUM\",\"person\":\"Juan Barrios\",\"key\":\"name\"}', '127.0.0.1', '2023-03-09 16:58:26'),
(652, 'L', 6, 9, 1, 0, '{\"name\":\"SECTOR\",\"person\":\"Juan Barrios\",\"key\":\"name_plural\"}', '127.0.0.1', '2023-03-09 17:48:39'),
(653, 'L', 7, 9, 1, 0, '{\"name\":\"\\u00c1REA\",\"person\":\"Juan Barrios\",\"key\":\"name\"}', '127.0.0.1', '2023-03-09 17:49:02'),
(654, 'L', 7, 9, 1, 0, '{\"name\":\"\\u00c1REAS\",\"person\":\"Juan Barrios\",\"key\":\"name_plural\"}', '127.0.0.1', '2023-03-09 17:49:02'),
(655, 'L', 3, 9, 1, 0, '{\"name\":\"REGIONES\",\"person\":\"Juan Barrios\",\"key\":\"name_plural\"}', '127.0.0.1', '2023-03-09 17:49:24'),
(656, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '127.0.0.1', '2023-03-09 17:54:41'),
(657, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '127.0.0.1', '2023-03-09 17:55:51'),
(658, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '127.0.0.1', '2023-03-09 17:56:17'),
(659, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '127.0.0.1', '2023-03-09 17:58:18'),
(660, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '127.0.0.1', '2023-03-09 17:58:30'),
(661, 'N', 15, 9, 1, 0, '{\"name\":\"Sector\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:08:32'),
(662, 'N', 10, 9, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:08:58'),
(663, 'N', 15, 9, 1, 0, '{\"name\":\"Sector\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:09:31'),
(664, 'N', 15, 9, 1, 0, '{\"name\":\"Sector\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:09:38'),
(665, 'N', 0, 1, 1, 0, '{\"name\":\"Regi\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:10:40'),
(666, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:12:13'),
(667, 'N', 25, 9, 1, 0, '{\"name\":\"\\u00c1rea Solicitante\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 18:37:45'),
(668, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 19:48:43'),
(669, 'L', 8, 1, 1, 0, '{\"name\":\"TIPO DE OPERACI\\u00d3N\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 19:49:40'),
(670, 'N', 0, 1, 1, 0, '{\"name\":\"Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 20:00:05'),
(671, 'H', 19, 1, 1, 0, '{\"name\":\"MUESTRA\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-09 20:01:04'),
(672, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-09 20:02:31'),
(673, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 20:02:35'),
(674, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-09 20:03:01'),
(675, 'T', 17, 1, 0, 65, '{\"name\":\"155324\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 20:03:50'),
(676, 'X', 150, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-09 20:03:53'),
(677, 'X', 152, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-09 20:03:53'),
(678, 'X', 151, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-09 20:03:53'),
(679, 'T', 17, 4, 0, 65, '{\"name\":\"155324\",\"person\":\"Ana Karen Barreto\",\"auto\":true}', '127.0.0.1', '2023-03-09 20:03:59'),
(680, 'T', 17, 10, 0, 65, '{\"name\":\"155324\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-09 20:04:02'),
(681, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 03:18:21'),
(682, 'T', 17, 10, 1, 0, '{\"name\":\"155324\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 03:30:20'),
(683, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 04:46:40'),
(684, 'T', 18, 1, 1, 0, '{\"name\":\"CSI-PIP-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 05:31:19'),
(685, 'T', 18, 4, 1, 0, '{\"name\":\"CSI-PIP-7\",\"person\":\"Juan Barrios\",\"staff\":\"Juan Barrios\",\"claim\":true}', '::1', '2023-03-10 05:31:21'),
(686, 'X', 150, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-10 05:31:23'),
(687, 'X', 152, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-10 05:31:23'),
(688, 'X', 151, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-10 05:31:23'),
(689, 'T', 18, 20, 1, 0, '{\"name\":\"CSI-PIP-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 05:31:30'),
(690, 'T', 18, 10, 1, 0, '{\"name\":\"CSI-PIP-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 05:31:33'),
(691, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 14:09:26'),
(692, 'H', 14, 9, 1, 0, '{\"name\":\"Solicitud de alta de puesto en plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '::1', '2023-03-10 14:16:59'),
(693, 'H', 15, 9, 1, 0, '{\"name\":\"Solicitud de alta de Sector en Plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '::1', '2023-03-10 14:17:54'),
(694, 'H', 20, 1, 1, 0, '{\"name\":\"Solicitud\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 14:18:37'),
(695, 'H', 14, 9, 1, 0, '{\"name\":\"Alta de puesto en plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '::1', '2023-03-10 14:19:03'),
(696, 'H', 14, 9, 1, 0, '{\"name\":\"Alta de puesto en plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic_pid\",\"orm_audit\":true}', '::1', '2023-03-10 14:19:04'),
(697, 'H', 15, 9, 1, 0, '{\"name\":\"Solicitud de alta de Sector en Plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic_pid\",\"orm_audit\":true}', '::1', '2023-03-10 14:20:57'),
(698, 'H', 12, 9, 1, 0, '{\"name\":\"Alta de Usuario\",\"person\":\"Juan Barrios\",\"key\":\"topic_pid\",\"orm_audit\":true}', '::1', '2023-03-10 14:21:23'),
(699, 'H', 16, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\",\"key\":\"topic_pid\",\"orm_audit\":true}', '::1', '2023-03-10 14:22:06'),
(700, 'H', 13, 9, 1, 0, '{\"name\":\"Anexo de Localidad - Asignaci\\u00f3n de Localidad\",\"person\":\"Juan Barrios\",\"key\":\"topic_pid\",\"orm_audit\":true}', '::1', '2023-03-10 14:26:16'),
(701, 'H', 15, 9, 1, 0, '{\"name\":\"Alta de Sector en Plataforma\",\"person\":\"Juan Barrios\",\"key\":\"topic\",\"orm_audit\":true}', '::1', '2023-03-10 14:26:31'),
(702, 'H', 19, 14, 1, 0, '{\"name\":\"MUESTRA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 14:27:18'),
(703, 'H', 18, 14, 1, 0, '{\"name\":\"talent\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 14:27:18'),
(704, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 15:09:10'),
(705, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 15:09:12'),
(706, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 15:09:18'),
(707, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 15:09:28'),
(708, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 15:09:43'),
(709, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 15:10:12'),
(710, 'N', 12, 9, 1, 0, '{\"name\":\"Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:11:49'),
(711, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:14:45'),
(712, 'N', 0, 1, 1, 0, '{\"name\":\"Formulario para solicitar alta de localidades o asignaci\\u00f3n de localidades a usuarios.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:20:47'),
(713, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:21:24'),
(714, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:44:29'),
(715, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:49:23'),
(716, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:50:04'),
(717, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:50:51'),
(718, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:52:19'),
(719, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 15:54:16'),
(720, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:01:25'),
(721, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:01:38'),
(722, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:01:53'),
(723, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:03:15'),
(724, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:03:39'),
(725, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:03:42'),
(726, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:11:51'),
(727, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:14:00'),
(728, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:15:51'),
(729, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:16:44'),
(730, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:16:59'),
(731, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 16:17:29'),
(732, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 16:18:36'),
(733, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario para solicitar alta de localidades o asignaci\\u00f3n de localidades a usuarios.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:19:18'),
(734, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario para solicitar alta de localidades o asignaci\\u00f3n de localidades a usuarios.\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:19:21'),
(735, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:19:53'),
(736, 'N', 0, 1, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s puestos?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:21:03'),
(737, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:21:18'),
(738, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:23:10'),
(739, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:23:26'),
(740, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 16:26:44'),
(741, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 16:26:47'),
(742, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:27:26'),
(743, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:27:48'),
(744, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:28:04'),
(745, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:28:06'),
(746, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:29:19'),
(747, 'H', 20, 9, 1, 0, '{\"name\":\"Solicitud\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:34'),
(748, 'H', 11, 9, 1, 0, '{\"name\":\"Soporte Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:35'),
(749, 'H', 13, 9, 1, 0, '{\"name\":\"Anexo de Localidad - Asignaci\\u00f3n de Localidad\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:35'),
(750, 'H', 14, 9, 1, 0, '{\"name\":\"Alta de puesto en plataforma\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:35'),
(751, 'H', 15, 9, 1, 0, '{\"name\":\"Alta de Sector en Plataforma\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:35'),
(752, 'H', 12, 9, 1, 0, '{\"name\":\"Alta de Usuario\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:35'),
(753, 'H', 16, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\",\"key\":\"sort\",\"orm_audit\":true}', '::1', '2023-03-10 16:29:35'),
(754, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:30:42'),
(755, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:30:56'),
(756, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:32:31'),
(757, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:32:37'),
(758, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:33:45'),
(759, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:34:57');
INSERT INTO `rcl_audit` (`id`, `object_type`, `object_id`, `event_id`, `staff_id`, `user_id`, `data`, `ip`, `timestamp`) VALUES
(760, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:35:02'),
(761, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:38:05'),
(762, 'N', 9, 9, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:38:13'),
(763, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:40:43'),
(764, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:41:50'),
(765, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:42:26'),
(766, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:43:48'),
(767, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:44:15'),
(768, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:44:52'),
(769, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:45:04'),
(770, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:57:19'),
(771, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:58:06'),
(772, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s localidades?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 16:58:14'),
(773, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-10 17:10:01'),
(774, 'T', 19, 1, 0, 65, '{\"name\":\"SOL-RCL-5\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:11:38'),
(775, 'X', 150, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-10 17:11:44'),
(776, 'X', 152, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-10 17:11:44'),
(777, 'X', 151, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-10 17:11:44'),
(778, 'T', 19, 10, 0, 65, '{\"name\":\"SOL-RCL-5\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:11:56'),
(779, 'T', 19, 10, 1, 0, '{\"name\":\"SOL-RCL-5\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:12:17'),
(780, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:18:04'),
(781, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:19:01'),
(782, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:22:32'),
(783, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:23:17'),
(784, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:23:34'),
(785, 'T', 20, 1, 0, 65, '{\"name\":\"SOL-RCL-6\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:23:55'),
(786, 'T', 20, 10, 0, 65, '{\"name\":\"SOL-RCL-6\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:24:01'),
(787, 'T', 18, 10, 1, 0, '{\"name\":\"CSI-PIP-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:24:47'),
(788, 'T', 20, 10, 1, 0, '{\"name\":\"SOL-RCL-6\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:25:01'),
(789, 'T', 20, 9, 1, 0, '{\"name\":\"SOL-RCL-6\",\"person\":\"Juan Barrios\",\"fields\":{\"245\":[null,\"{\\\"103\\\":\\\"AXIS\\\",\\\"104\\\":\\\"BACK UP\\\",\\\"106\\\":\\\"CITY CLUB\\\"}\"]}}', '::1', '2023-03-10 17:25:23'),
(790, 'T', 20, 9, 1, 0, '{\"name\":\"SOL-RCL-6\",\"person\":\"Juan Barrios\",\"fields\":{\"246\":[null,\"{\\\"137\\\":\\\"AXIS\\\",\\\"138\\\":\\\"BACK UP\\\",\\\"140\\\":\\\"CITY CLUB\\\"}\"]}}', '::1', '2023-03-10 17:25:33'),
(791, 'T', 20, 10, 0, 65, '{\"name\":\"SOL-RCL-6\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:26:23'),
(792, 'T', 20, 10, 1, 0, '{\"name\":\"SOL-RCL-6\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:26:31'),
(793, 'T', 19, 10, 1, 0, '{\"name\":\"SOL-RCL-5\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:27:32'),
(794, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:29:29'),
(795, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:29:51'),
(796, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:30:18'),
(797, 'N', 30, 9, 1, 0, '{\"name\":\"\\u00bfRequieres cargar m\\u00e1s de una localidad?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:30:23'),
(798, 'N', 10, 9, 1, 0, '{\"name\":\"Marca\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:30:44'),
(799, 'N', 28, 9, 1, 0, '{\"name\":\"Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:31:11'),
(800, 'T', 21, 1, 0, 65, '{\"name\":\"SOL-RCL-7\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:31:56'),
(801, 'T', 21, 10, 0, 65, '{\"name\":\"SOL-RCL-7\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 17:32:03'),
(802, 'T', 19, 10, 1, 0, '{\"name\":\"SOL-RCL-5\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:32:14'),
(803, 'T', 21, 10, 1, 0, '{\"name\":\"SOL-RCL-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:32:29'),
(804, 'T', 21, 9, 1, 0, '{\"name\":\"SOL-RCL-7\",\"person\":\"Juan Barrios\",\"fields\":{\"63\":[null,\"{\\\"105\\\":\\\"BIC\\\"}\"]}}', '::1', '2023-03-10 17:32:42'),
(805, 'T', 21, 9, 1, 0, '{\"name\":\"SOL-RCL-7\",\"person\":\"Juan Barrios\",\"fields\":{\"241\":[null,\"{\\\"139\\\":\\\"BIC\\\"}\"]}}', '::1', '2023-03-10 17:32:49'),
(806, 'T', 21, 10, 1, 0, '{\"name\":\"SOL-RCL-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:32:53'),
(807, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 17:34:35'),
(808, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '::1', '2023-03-10 17:34:52'),
(809, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '::1', '2023-03-10 17:36:24'),
(810, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 17:36:27'),
(811, 'N', 0, 1, 1, 0, '{\"name\":\"ALTA DE PROYECTO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:41:26'),
(812, 'N', 31, 9, 1, 0, '{\"name\":\"ALTA DE PROYECTO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:42:06'),
(813, 'N', 31, 9, 1, 0, '{\"name\":\"ALTA DE PROYECTO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:42:59'),
(814, 'N', 31, 9, 1, 0, '{\"name\":\"ALTA DE PROYECTO\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 17:43:13'),
(815, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:12:51'),
(816, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 18:43:09'),
(817, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:43:40'),
(818, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:54:32'),
(819, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:57:14'),
(820, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:57:35'),
(821, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:58:18'),
(822, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:58:23'),
(823, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 18:58:50'),
(824, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:00:06'),
(825, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:03:34'),
(826, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:04:52'),
(827, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:08:08'),
(828, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:08:51'),
(829, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:09:29'),
(830, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:09:57'),
(831, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:10:11'),
(832, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-10 19:13:02'),
(833, 'T', 21, 10, 0, 65, '{\"name\":\"SOL-RCL-7\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-10 19:13:04'),
(834, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:14:52'),
(835, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:17:02'),
(836, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:19:54'),
(837, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:20:19'),
(838, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:22:45'),
(839, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:22:48'),
(840, 'N', 15, 9, 1, 0, '{\"name\":\"Sector\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:23:42'),
(841, 'N', 26, 9, 1, 0, '{\"name\":\"Regi\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:24:57'),
(842, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:28:05'),
(843, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:31:37'),
(844, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:31:44'),
(845, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:31:51'),
(846, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:32:29'),
(847, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:32:35'),
(848, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:32:39'),
(849, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:33:48'),
(850, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:33:54'),
(851, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:34:43'),
(852, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:34:46'),
(853, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:36:03'),
(854, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:37:18'),
(855, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:37:24'),
(856, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:41:20'),
(857, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:41:26'),
(858, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:43:14'),
(859, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:44:08'),
(860, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:44:58'),
(861, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:45:53'),
(862, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:47:06'),
(863, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:48:07'),
(864, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:50:52'),
(865, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:51:12'),
(866, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:51:17'),
(867, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:52:31'),
(868, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:52:49'),
(869, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:53:47'),
(870, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:55:30'),
(871, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:56:15'),
(872, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:57:14'),
(873, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:57:14'),
(874, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:57:22'),
(875, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:57:38'),
(876, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:58:57'),
(877, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 19:59:48'),
(878, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 20:00:41'),
(879, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 20:01:15'),
(880, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 20:01:19'),
(881, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 21:12:41'),
(882, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:13:21'),
(883, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-10 21:15:46'),
(884, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:22:11'),
(885, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:23:18'),
(886, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:23:27'),
(887, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:32:35'),
(888, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:32:47'),
(889, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:32:55'),
(890, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:37:10'),
(891, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:37:28'),
(892, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:40:00'),
(893, 'N', 0, 1, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos a solicitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:41:03'),
(894, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:41:38'),
(895, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:42:35'),
(896, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:44:30'),
(897, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:47:02'),
(898, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:47:44'),
(899, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:48:18'),
(900, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:51:16'),
(901, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:52:51'),
(902, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:53:14'),
(903, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:53:58'),
(904, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:54:15'),
(905, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:55:07'),
(906, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:55:21'),
(907, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de Alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:55:30'),
(908, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:57:53'),
(909, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:58:48'),
(910, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:59:20'),
(911, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 21:59:53'),
(912, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:00:29'),
(913, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:05:55'),
(914, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:06:00'),
(915, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:07:04'),
(916, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:08:24'),
(917, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:08:24'),
(918, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:10:34'),
(919, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:10:53'),
(920, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:11:11'),
(921, 'N', 9, 14, 1, 0, '{\"name\":\"Alta de Localidades \\/ Asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:11:37'),
(922, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:17:08'),
(923, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:17:57'),
(924, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:19:04'),
(925, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:19:17'),
(926, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:21:24'),
(927, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:21:47'),
(928, 'N', 8, 9, 1, 0, '{\"name\":\"Formulario de alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:24:10'),
(929, 'N', 29, 9, 1, 0, '{\"name\":\"Formulario de alta de localidades \\/ asignaci\\u00f3n de localidad a usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:24:49'),
(930, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:25:13'),
(931, 'N', 8, 9, 1, 0, '{\"name\":\"Formulario de alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:28:53'),
(932, 'N', 8, 9, 1, 0, '{\"name\":\"Formulario de alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:30:53'),
(933, 'N', 8, 9, 1, 0, '{\"name\":\"Formulario de alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:30:57'),
(934, 'N', 8, 9, 1, 0, '{\"name\":\"Formulario de alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:32:32'),
(935, 'N', 0, 1, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:36:37'),
(936, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:37:15'),
(937, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:43:12'),
(938, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:47:08'),
(939, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:48:01'),
(940, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:48:51'),
(941, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del o los usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-10 22:49:20'),
(942, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-10 22:49:38'),
(943, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-11 14:58:26'),
(944, 'N', 13, 9, 1, 0, '{\"name\":\"Alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:03:18'),
(945, 'N', 13, 9, 1, 0, '{\"name\":\"Formulario de alta de Sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:04:58'),
(946, 'N', 0, 1, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:06:54'),
(947, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:07:52'),
(948, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:08:25'),
(949, 'N', 13, 9, 1, 0, '{\"name\":\"Formulario de alta de sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:09:30'),
(950, 'N', 13, 9, 1, 0, '{\"name\":\"Formulario de alta de sector en Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:10:09'),
(951, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:11:06'),
(952, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:14:00'),
(953, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:15:01'),
(954, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:19:38'),
(955, 'N', 17, 14, 1, 0, '{\"name\":\"FORMULARIO X\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:20:01'),
(956, 'N', 11, 14, 1, 0, '{\"name\":\"Localidades\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:20:01'),
(957, 'N', 0, 1, 1, 0, '{\"name\":\"Formulario de anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:28:21'),
(958, 'N', 35, 9, 1, 0, '{\"name\":\"Formulario de anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:29:03'),
(959, 'N', 35, 9, 1, 0, '{\"name\":\"Formulario de anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:30:03'),
(960, 'N', 35, 9, 1, 0, '{\"name\":\"Formulario de anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:31:10'),
(961, 'H', 21, 1, 1, 0, '{\"name\":\"Anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 15:32:22'),
(962, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 16:03:35'),
(963, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 16:04:43'),
(964, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 16:04:50'),
(965, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-11 17:28:03'),
(966, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:29:05'),
(967, 'N', 12, 9, 1, 0, '{\"name\":\"Formulario de alta de puestos en plataforma Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:29:29'),
(968, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:30:17'),
(969, 'N', 0, 1, 1, 0, '{\"name\":\"Agregar permisos de visualizaci\\u00f3n a m\\u00e1s usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:31:03'),
(970, 'N', 36, 9, 1, 0, '{\"name\":\"Agregar permisos de visualizaci\\u00f3n a m\\u00e1s usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:31:35'),
(971, 'N', 36, 9, 1, 0, '{\"name\":\"Agregar permisos de visualizaci\\u00f3n a m\\u00e1s usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:34:53'),
(972, 'N', 36, 9, 1, 0, '{\"name\":\"Agregar permisos de visualizaci\\u00f3n a m\\u00e1s usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:35:07'),
(973, 'H', 22, 1, 1, 0, '{\"name\":\"Asignaci\\u00f3n de permisos de visualizaci\\u00f3n de vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:36:51'),
(974, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:37:34'),
(975, 'N', 0, 1, 1, 0, '{\"name\":\"Formulario de solicitud de capacitaci\\u00f3n a usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 17:40:00'),
(976, 'N', 37, 9, 1, 0, '{\"name\":\"Formulario de solicitud de capacitaci\\u00f3n a usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 18:08:11'),
(977, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 18:10:04'),
(978, 'N', 0, 1, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 18:14:07'),
(979, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 18:24:05'),
(980, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 18:32:47'),
(981, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 18:33:59'),
(982, 'N', 0, 1, 1, 0, '{\"name\":\"Usuario a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:08:25'),
(983, 'H', 23, 1, 1, 0, '{\"name\":\"Capacitaci\\u00f3n a usuarios\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:19:37'),
(984, 'N', 39, 9, 1, 0, '{\"name\":\"Usuario a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:24:13'),
(985, 'N', 39, 9, 1, 0, '{\"name\":\"Usuario a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:25:39'),
(986, 'N', 0, 1, 1, 0, '{\"name\":\"Formulario para solicitar actualizaci\\u00f3n \\/ creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:32:47'),
(987, 'N', 40, 9, 1, 0, '{\"name\":\"Formulario para solicitar actualizaci\\u00f3n \\/ creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:34:45'),
(988, 'N', 40, 9, 1, 0, '{\"name\":\"Formulario para solicitar actualizaci\\u00f3n \\/ creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:37:35'),
(989, 'N', 40, 9, 1, 0, '{\"name\":\"Formulario para solicitar actualizaci\\u00f3n \\/ creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:46:22'),
(990, 'H', 24, 1, 1, 0, '{\"name\":\"Actualizaci\\u00f3n \\/ Creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 19:48:07'),
(991, 'N', 40, 9, 1, 0, '{\"name\":\"Formulario para solicitar actualizaci\\u00f3n \\/ creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:00:05'),
(992, 'N', 0, 1, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:10:10'),
(993, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:12:20'),
(994, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:13:35'),
(995, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:14:03'),
(996, 'N', 8, 9, 1, 0, '{\"name\":\"Formulario de alta de usuario en Plataforma de Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:15:03'),
(997, 'N', 35, 9, 1, 0, '{\"name\":\"Formulario de anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:15:24'),
(998, 'N', 22, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Permisos de visualizaci\\u00f3n\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:16:18'),
(999, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:17:44'),
(1000, 'H', 25, 1, 1, 0, '{\"name\":\"Creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:23:00'),
(1001, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 20:29:34'),
(1002, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-11 21:04:40'),
(1003, 'N', 21, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:04:47'),
(1004, 'N', 21, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:05:04'),
(1005, 'N', 21, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:09:52'),
(1006, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:13:21'),
(1007, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:14:42'),
(1008, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:16:16'),
(1009, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:18:55'),
(1010, 'N', 14, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:19:04'),
(1011, 'N', 21, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:46:48'),
(1012, 'N', 21, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 21:47:19'),
(1013, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-11 22:30:28'),
(1014, 'N', 21, 9, 1, 0, '{\"name\":\"Formulario de asignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-11 22:30:31'),
(1015, 'X', 96, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"schedule_id\"}', '::1', '2023-03-11 22:31:43'),
(1016, 'X', 24, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"autolock_minutes\"}', '::1', '2023-03-11 22:31:43'),
(1017, 'X', 22, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"max_page_size\"}', '::1', '2023-03-11 22:32:53'),
(1018, 'X', 182, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"acl_backend\"}', '::1', '2023-03-11 22:32:53'),
(1019, 'X', 14, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"staff_ip_binding\"}', '::1', '2023-03-11 22:33:35'),
(1020, 'X', 71, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"hide_staff_name\"}', '::1', '2023-03-11 22:33:36'),
(1021, 'X', 72, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"disable_agent_collabs\"}', '::1', '2023-03-11 22:33:36'),
(1022, 'X', 21, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"client_session_timeout\"}', '::1', '2023-03-11 22:34:26'),
(1023, 'X', 190, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clients_only\"}', '::1', '2023-03-11 22:34:26'),
(1024, 'X', 194, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"client_avatar\"}', '::1', '2023-03-11 22:34:26'),
(1025, 'X', 98, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_timezone\"}', '::1', '2023-03-11 22:34:58'),
(1026, 'X', 96, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"schedule_id\"}', '::1', '2023-03-11 22:34:58'),
(1027, 'X', 175, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_locale\"}', '::1', '2023-03-11 22:34:58'),
(1028, 'G', 2, 9, 1, 0, '{\"name\":\"Gracias PIP\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-11 22:36:32'),
(1029, 'G', 2, 9, 1, 0, '{\"name\":\"Gracias PIP\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-11 22:36:32'),
(1030, 'G', 2, 9, 1, 0, '{\"name\":\"Gracias PIP\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '::1', '2023-03-11 22:36:32'),
(1031, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-11 22:37:28'),
(1032, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 00:56:39'),
(1033, 'T', 22, 1, 0, 65, '{\"name\":\"SOL-RCL-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-12 00:57:08'),
(1034, 'X', 150, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-12 00:57:11'),
(1035, 'X', 155, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"config_signature\"}', '127.0.0.1', '2023-03-12 00:57:11'),
(1036, 'X', 152, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-12 00:57:12'),
(1037, 'X', 151, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-12 00:57:12'),
(1038, 'T', 22, 10, 0, 65, '{\"name\":\"SOL-RCL-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-12 00:57:17'),
(1039, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 00:57:36'),
(1040, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 00:59:07'),
(1041, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 01:04:45'),
(1042, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 01:42:16'),
(1043, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 01:44:05'),
(1044, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 01:44:49'),
(1045, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 01:45:02'),
(1046, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 02:38:36'),
(1047, 'G', 1, 9, 1, 0, '{\"name\":\"Landing\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:40:06'),
(1048, 'G', 1, 9, 1, 0, '{\"name\":\"Landing\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:40:06'),
(1049, 'G', 3, 9, 1, 0, '{\"name\":\"Offline\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:41:57'),
(1050, 'G', 3, 9, 1, 0, '{\"name\":\"Offline\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:41:58'),
(1051, 'G', 3, 9, 1, 0, '{\"name\":\"Offline\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:42:31'),
(1052, 'G', 2, 9, 1, 0, '{\"name\":\"Gracias PIP-RECLU\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:44:35'),
(1053, 'G', 2, 9, 1, 0, '{\"name\":\"Gracias PIP-RECLU\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:44:35'),
(1054, 'G', 2, 9, 1, 0, '{\"name\":\"Gracias PIP-RECLU\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:44:35'),
(1055, 'G', 1, 9, 1, 0, '{\"name\":\"Landing\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '127.0.0.1', '2023-03-12 02:45:20'),
(1056, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 03:16:01'),
(1057, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-12 03:16:20'),
(1058, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 03:25:49'),
(1059, 'X', 90, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"system_language\"}', '::1', '2023-03-12 03:26:23'),
(1060, 'X', 175, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_locale\"}', '::1', '2023-03-12 03:26:41'),
(1061, 'X', 176, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"secondary_langs\"}', '::1', '2023-03-12 03:30:05'),
(1062, 'X', 90, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"system_language\"}', '::1', '2023-03-12 03:30:36'),
(1063, 'X', 176, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"secondary_langs\"}', '::1', '2023-03-12 03:30:42'),
(1064, 'X', 175, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_locale\"}', '::1', '2023-03-12 03:30:53'),
(1065, 'X', 90, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"system_language\"}', '::1', '2023-03-12 03:31:28'),
(1066, 'X', 175, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_locale\"}', '::1', '2023-03-12 03:31:37'),
(1067, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 05:13:21'),
(1068, 'X', 98, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_timezone\"}', '::1', '2023-03-12 05:23:26'),
(1069, 'X', 175, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_locale\"}', '::1', '2023-03-12 05:23:50'),
(1070, 'X', 176, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"secondary_langs\"}', '::1', '2023-03-12 05:24:36'),
(1071, 'X', 172, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_storage_bk\"}', '::1', '2023-03-12 05:34:24'),
(1072, 'X', 90, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"system_language\"}', '::1', '2023-03-12 05:53:19'),
(1073, 'X', 98, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_timezone\"}', '::1', '2023-03-12 05:53:32'),
(1074, 'X', 175, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_locale\"}', '::1', '2023-03-12 05:53:40'),
(1075, 'X', 150, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-12 06:55:27'),
(1076, 'X', 152, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-12 06:55:27'),
(1077, 'X', 151, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-12 06:55:27'),
(1078, 'T', 22, 14, 1, 0, '{\"name\":\"SOL-RCL-8\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:38'),
(1079, 'T', 21, 14, 1, 0, '{\"name\":\"SOL-RCL-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:39'),
(1080, 'T', 20, 14, 1, 0, '{\"name\":\"SOL-RCL-6\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:41'),
(1081, 'T', 19, 14, 1, 0, '{\"name\":\"SOL-RCL-5\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:42'),
(1082, 'T', 18, 14, 1, 0, '{\"name\":\"CSI-PIP-7\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:45'),
(1083, 'T', 17, 14, 1, 0, '{\"name\":\"155324\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:48'),
(1084, 'T', 16, 14, 1, 0, '{\"name\":\"CSI-PIP-6\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:50'),
(1085, 'T', 15, 14, 1, 0, '{\"name\":\"CSI-PIP-5\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:53'),
(1086, 'T', 14, 14, 1, 0, '{\"name\":\"366101\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:10:57'),
(1087, 'T', 11, 14, 1, 0, '{\"name\":\"672163\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:11:00'),
(1088, 'T', 13, 14, 1, 0, '{\"name\":\"982649\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:11:04'),
(1089, 'T', 10, 14, 1, 0, '{\"name\":\"CSI-PIP-4\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:11:05'),
(1090, 'T', 9, 14, 1, 0, '{\"name\":\"SOL-RCL-3\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:11:07'),
(1091, 'T', 8, 14, 1, 0, '{\"name\":\"CSI-PIP-3\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:11:09'),
(1092, 'T', 5, 14, 1, 0, '{\"name\":\"CSI-PIP-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:11:56'),
(1093, 'T', 7, 14, 1, 0, '{\"name\":\"SOL-RCL-2\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:12:10'),
(1094, 'T', 6, 14, 1, 0, '{\"name\":\"SOL-RCL-1\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:12:12'),
(1095, 'S', 1, 9, 1, 0, '{\"name\":\"Juan Barrios\",\"person\":\"Juan Barrios\",\"key\":\"max_page_size\",\"orm_audit\":true}', '::1', '2023-03-12 07:29:24'),
(1096, 'S', 1, 9, 1, 0, '{\"name\":\"Juan Barrios\",\"person\":\"Juan Barrios\",\"key\":\"auto_refresh_rate\",\"orm_audit\":true}', '::1', '2023-03-12 07:29:24'),
(1097, 'S', 1, 9, 1, 0, '{\"name\":\"Juan Barrios\",\"person\":\"Juan Barrios\",\"key\":\"extra\",\"orm_audit\":true}', '::1', '2023-03-12 07:29:24'),
(1098, 'B', 2, 9, 1, 0, '{\"name\":\"Muestra (con variables)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:57:31'),
(1099, 'B', 1, 14, 1, 0, '{\"name\":\"What is osTicket (sample)?\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:58:13'),
(1100, 'B', 2, 9, 1, 0, '{\"name\":\"Muestra (con variables)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 07:59:28'),
(1101, 'B', 2, 9, 1, 0, '{\"name\":\"Muestra (con variables)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 08:05:09'),
(1102, 'B', 2, 9, 1, 0, '{\"name\":\"Muestra (con variables)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 08:06:31'),
(1103, 'B', 2, 9, 1, 0, '{\"name\":\"Muestra (con variables)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 08:06:48'),
(1104, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 14:56:38'),
(1105, 'R', 1, 9, 1, 0, '{\"name\":\"Acceso Total\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-12 15:00:57'),
(1106, 'R', 1, 9, 1, 0, '{\"name\":\"Acceso Total\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '::1', '2023-03-12 15:00:57'),
(1107, 'R', 2, 9, 1, 0, '{\"name\":\"Acceso ampliado\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-12 15:01:55'),
(1108, 'R', 2, 9, 1, 0, '{\"name\":\"Acceso ampliado\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '::1', '2023-03-12 15:01:55'),
(1109, 'R', 3, 9, 1, 0, '{\"name\":\"Acceso limitado\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-12 15:15:30'),
(1110, 'R', 3, 9, 1, 0, '{\"name\":\"Acceso limitado\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '::1', '2023-03-12 15:15:30'),
(1111, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"ticket.assign\"}', '::1', '2023-03-12 15:17:22'),
(1112, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"ticket.reply\"}', '::1', '2023-03-12 15:17:22'),
(1113, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"ticket.merge\"}', '::1', '2023-03-12 15:17:22'),
(1114, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"ticket.refer\"}', '::1', '2023-03-12 15:17:22'),
(1115, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"ticket.transfer\"}', '::1', '2023-03-12 15:17:22'),
(1116, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"ticket.link\"}', '::1', '2023-03-12 15:17:22'),
(1117, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"task.assign\"}', '::1', '2023-03-12 15:17:22'),
(1118, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"task.reply\"}', '::1', '2023-03-12 15:17:22'),
(1119, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"task.transfer\"}', '::1', '2023-03-12 15:17:22'),
(1120, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-12 15:17:23'),
(1121, 'R', 4, 9, 1, 0, '{\"name\":\"Dispatcher\",\"person\":\"Juan Barrios\",\"key\":\"notes\",\"orm_audit\":true}', '::1', '2023-03-12 15:17:23'),
(1122, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.create\"}', '::1', '2023-03-12 15:31:49'),
(1123, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.edit\"}', '::1', '2023-03-12 15:31:49'),
(1124, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.delete\"}', '::1', '2023-03-12 15:31:49'),
(1125, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.manage\"}', '::1', '2023-03-12 15:31:49'),
(1126, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.dir\"}', '::1', '2023-03-12 15:31:49'),
(1127, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.create\"}', '::1', '2023-03-12 15:31:49'),
(1128, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.edit\"}', '::1', '2023-03-12 15:31:49');
INSERT INTO `rcl_audit` (`id`, `object_type`, `object_id`, `event_id`, `staff_id`, `user_id`, `data`, `ip`, `timestamp`) VALUES
(1129, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.delete\"}', '::1', '2023-03-12 15:31:50'),
(1130, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"faq.manage\"}', '::1', '2023-03-12 15:31:50'),
(1131, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '::1', '2023-03-12 15:31:50'),
(1132, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '::1', '2023-03-12 15:31:50'),
(1133, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 16:15:40'),
(1134, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.create\"}', '::1', '2023-03-12 16:15:40'),
(1135, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.edit\"}', '::1', '2023-03-12 16:15:40'),
(1136, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.delete\"}', '::1', '2023-03-12 16:15:40'),
(1137, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.manage\"}', '::1', '2023-03-12 16:15:40'),
(1138, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.dir\"}', '::1', '2023-03-12 16:15:40'),
(1139, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.create\"}', '::1', '2023-03-12 16:15:41'),
(1140, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.edit\"}', '::1', '2023-03-12 16:15:41'),
(1141, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.delete\"}', '::1', '2023-03-12 16:15:41'),
(1142, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"faq.manage\"}', '::1', '2023-03-12 16:15:41'),
(1143, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '::1', '2023-03-12 16:15:41'),
(1144, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '::1', '2023-03-12 16:15:41'),
(1145, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.create\"}', '::1', '2023-03-12 16:16:41'),
(1146, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.edit\"}', '::1', '2023-03-12 16:16:41'),
(1147, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.delete\"}', '::1', '2023-03-12 16:16:41'),
(1148, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.manage\"}', '::1', '2023-03-12 16:16:41'),
(1149, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.dir\"}', '::1', '2023-03-12 16:16:41'),
(1150, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.create\"}', '::1', '2023-03-12 16:16:41'),
(1151, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.edit\"}', '::1', '2023-03-12 16:16:41'),
(1152, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.delete\"}', '::1', '2023-03-12 16:16:42'),
(1153, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"faq.manage\"}', '::1', '2023-03-12 16:16:42'),
(1154, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '::1', '2023-03-12 16:16:42'),
(1155, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '::1', '2023-03-12 16:16:42'),
(1156, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.create\"}', '::1', '2023-03-12 16:42:29'),
(1157, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.edit\"}', '::1', '2023-03-12 16:42:29'),
(1158, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.delete\"}', '::1', '2023-03-12 16:42:29'),
(1159, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.manage\"}', '::1', '2023-03-12 16:42:30'),
(1160, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.dir\"}', '::1', '2023-03-12 16:42:30'),
(1161, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.create\"}', '::1', '2023-03-12 16:42:30'),
(1162, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.edit\"}', '::1', '2023-03-12 16:42:30'),
(1163, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.delete\"}', '::1', '2023-03-12 16:42:30'),
(1164, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"faq.manage\"}', '::1', '2023-03-12 16:42:30'),
(1165, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '::1', '2023-03-12 16:42:30'),
(1166, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '::1', '2023-03-12 16:42:30'),
(1167, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.create\"}', '::1', '2023-03-12 16:44:18'),
(1168, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.edit\"}', '::1', '2023-03-12 16:44:19'),
(1169, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.delete\"}', '::1', '2023-03-12 16:44:19'),
(1170, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.manage\"}', '::1', '2023-03-12 16:44:19'),
(1171, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"user.dir\"}', '::1', '2023-03-12 16:44:19'),
(1172, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.create\"}', '::1', '2023-03-12 16:44:19'),
(1173, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.edit\"}', '::1', '2023-03-12 16:44:19'),
(1174, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"org.delete\"}', '::1', '2023-03-12 16:44:19'),
(1175, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"faq.manage\"}', '::1', '2023-03-12 16:44:19'),
(1176, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.departments\"}', '::1', '2023-03-12 16:44:19'),
(1177, 'S', 0, 9, 1, 0, '{\"name\":\" \",\"person\":\"Juan Barrios\",\"key\":\"visibility.agents\"}', '::1', '2023-03-12 16:44:19'),
(1178, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 19:22:30'),
(1179, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 20:38:06'),
(1180, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 21:11:26'),
(1181, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 21:45:04'),
(1182, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 21:48:03'),
(1183, 'I', 1, 9, 1, 0, '{\"name\":\"osTicket Default Template (HTML)\",\"person\":\"Juan Barrios\",\"key\":\"name\"}', '::1', '2023-03-12 21:50:14'),
(1184, 'I', 1, 9, 1, 0, '{\"name\":\"osTicket Default Template (HTML)\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '::1', '2023-03-12 21:50:14'),
(1185, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"message.autoresp\"}', '::1', '2023-03-12 22:02:40'),
(1186, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"message.autoresp\"}', '::1', '2023-03-12 22:02:40'),
(1187, 'B', 2, 9, 1, 0, '{\"name\":\"Muestra (con variables)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-12 22:03:59'),
(1188, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 23:03:18'),
(1189, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-12 23:35:47'),
(1190, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-13 00:27:11'),
(1191, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-13 01:50:24'),
(1192, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.activity.notice\"}', '::1', '2023-03-13 02:10:40'),
(1193, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.autoreply\"}', '::1', '2023-03-13 02:22:07'),
(1194, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.autoresp\"}', '::1', '2023-03-13 02:32:09'),
(1195, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.autoresp\"}', '::1', '2023-03-13 02:32:09'),
(1196, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.notice\"}', '::1', '2023-03-13 02:39:56'),
(1197, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.overlimit\"}', '::1', '2023-03-13 02:45:40'),
(1198, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.overlimit\"}', '::1', '2023-03-13 02:45:40'),
(1199, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.reply\"}', '::1', '2023-03-13 02:50:42'),
(1200, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"note.alert\"}', '::1', '2023-03-13 02:56:19'),
(1201, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"note.alert\"}', '::1', '2023-03-13 02:56:19'),
(1202, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"note.alert\"}', '::1', '2023-03-13 02:57:11'),
(1203, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"message.alert\"}', '::1', '2023-03-13 03:04:51'),
(1204, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"message.alert\"}', '::1', '2023-03-13 03:04:51'),
(1205, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"message.alert\"}', '::1', '2023-03-13 03:10:19'),
(1206, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.alert\"}', '::1', '2023-03-13 03:14:01'),
(1207, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.alert\"}', '::1', '2023-03-13 03:14:01'),
(1208, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.overdue\"}', '::1', '2023-03-13 03:16:56'),
(1209, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.overdue\"}', '::1', '2023-03-13 03:16:56'),
(1210, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"assigned.alert\"}', '::1', '2023-03-13 03:20:36'),
(1211, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"assigned.alert\"}', '::1', '2023-03-13 03:20:36'),
(1212, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"transfer.alert\"}', '::1', '2023-03-13 03:23:09'),
(1213, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"transfer.alert\"}', '::1', '2023-03-13 03:23:10'),
(1214, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"transfer.alert\"}', '::1', '2023-03-13 03:23:21'),
(1215, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"transfer.alert\"}', '::1', '2023-03-13 03:23:21'),
(1216, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-13 03:24:20'),
(1217, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-13 09:08:45'),
(1218, 'G', 12, 9, 1, 0, '{\"name\":\"\\\"Enlace de acceso al Ticket [#%{ticket.number}]\\\"\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 09:44:15'),
(1219, 'G', 12, 9, 1, 0, '{\"name\":\"\\\"Enlace de acceso al Ticket [#%{ticket.number}]\\\"\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 09:44:16'),
(1220, 'G', 9, 9, 1, 0, '{\"name\":\"\\\"Ingresar al sistema de Tickets PIP de %{company.name}\\\"\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 09:47:55'),
(1221, 'G', 9, 9, 1, 0, '{\"name\":\"\\\"Ingresar al sistema de Tickets PIP de %{company.name}\\\"\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 09:47:55'),
(1222, 'G', 8, 9, 1, 0, '{\"name\":\"Acceso al Sistema de Tickets PIP de %{company.name}\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 09:55:33'),
(1223, 'G', 8, 9, 1, 0, '{\"name\":\"Acceso al Sistema de Tickets PIP de %{company.name}\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 09:55:33'),
(1224, 'G', 10, 9, 1, 0, '{\"name\":\"Registro de cuenta\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 09:59:25'),
(1225, 'G', 10, 9, 1, 0, '{\"name\":\"Registro de cuenta\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 09:59:25'),
(1226, 'G', 7, 9, 1, 0, '{\"name\":\"Bienvenido asl Sistema de Tickets PIP de %{company.name}\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 10:03:26'),
(1227, 'G', 7, 9, 1, 0, '{\"name\":\"Bienvenido asl Sistema de Tickets PIP de %{company.name}\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:03:26'),
(1228, 'G', 7, 9, 1, 0, '{\"name\":\"Bienvenido asl Sistema de Tickets PIP de %{company.name}\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:03:50'),
(1229, 'G', 11, 9, 1, 0, '{\"name\":\"\\u00a1Cuenta confirmada!\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 10:09:42'),
(1230, 'G', 11, 9, 1, 0, '{\"name\":\"\\u00a1Cuenta confirmada!\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:09:42'),
(1231, 'G', 12, 9, 1, 0, '{\"name\":\"\\\"Enlace de acceso al Ticket [#%{ticket.number}]\\\"\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:14:37'),
(1232, 'G', 4, 9, 1, 0, '{\"name\":\"Bienvenido al Sistema de Tickets PIP\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 10:38:09'),
(1233, 'G', 4, 9, 1, 0, '{\"name\":\"Bienvenido al Sistema de Tickets PIP\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:38:09'),
(1234, 'G', 6, 9, 1, 0, '{\"name\":\"Autenticacion requerida\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 10:41:01'),
(1235, 'G', 5, 9, 1, 0, '{\"name\":\"Restablecimiento de la contrase\\u00f1a del Sistema de Tickets PIP\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 10:47:43'),
(1236, 'G', 5, 9, 1, 0, '{\"name\":\"Restablecimiento de la contrase\\u00f1a del Sistema de Tickets PIP\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:47:43'),
(1237, 'G', 5, 9, 1, 0, '{\"name\":\"Restablecimiento de la contrase\\u00f1a del Sistema de Tickets PIP\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:48:57'),
(1238, 'G', 13, 9, 1, 0, '{\"name\":\"Autenticaci\\u00f3n de dos factores\",\"person\":\"Juan Barrios\",\"key\":\"name\",\"orm_audit\":true}', '::1', '2023-03-13 10:54:02'),
(1239, 'G', 13, 9, 1, 0, '{\"name\":\"Autenticaci\\u00f3n de dos factores\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-13 10:54:02'),
(1240, 'X', 186, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"require_agent_2fa\"}', '::1', '2023-03-13 10:54:06'),
(1241, 'X', 73, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"overlimit_notice_active\"}', '::1', '2023-03-13 10:55:10'),
(1242, 'X', 170, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"ticket_alert_acct_manager\"}', '::1', '2023-03-13 10:55:10'),
(1243, 'X', 171, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"message_alert_acct_manager\"}', '::1', '2023-03-13 10:55:10'),
(1244, 'X', 76, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"ticket_sequence_id\"}', '::1', '2023-03-13 10:55:11'),
(1245, 'X', 77, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"queue_bucket_counts\"}', '::1', '2023-03-13 10:55:11'),
(1246, 'X', 23, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"max_open_tickets\"}', '::1', '2023-03-13 10:55:11'),
(1247, 'X', 29, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"enable_captcha\"}', '::1', '2023-03-13 10:55:12'),
(1248, 'X', 67, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"require_topic_to_close\"}', '::1', '2023-03-13 10:55:12'),
(1249, 'X', 68, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"show_related_tickets\"}', '::1', '2023-03-13 10:55:12'),
(1250, 'X', 78, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"allow_external_images\"}', '::1', '2023-03-13 10:55:12'),
(1251, 'X', 209, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"allow_client_updates\"}', '::1', '2023-03-13 10:58:17'),
(1252, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-13 11:04:53'),
(1253, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-13 11:22:23'),
(1254, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-13 11:26:10'),
(1255, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-13 15:28:09'),
(1256, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-13 15:30:40'),
(1257, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-13 15:48:35'),
(1258, 'N', 0, 1, 1, 0, '{\"name\":\"Solicitud Alta de Usuario (individual)\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-13 15:50:49'),
(1259, 'N', 42, 9, 1, 0, '{\"name\":\"Solicitud Alta de Usuario (individual)\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-13 15:51:01'),
(1260, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-14 03:54:20'),
(1261, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-14 03:54:51'),
(1262, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 09:16:14'),
(1263, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 09:43:56'),
(1264, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 10:42:32'),
(1265, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 10:49:41'),
(1266, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 10:53:15'),
(1267, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-14 11:20:36'),
(1268, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:24:21'),
(1269, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:25:27'),
(1270, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:26:12'),
(1271, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:26:22'),
(1272, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:28:07'),
(1273, 'L', 9, 1, 1, 0, '{\"name\":\"PERMISOS DE EDICI\\u00d3N DE PLANTILLAS\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:28:32'),
(1274, 'L', 9, 9, 1, 0, '{\"name\":\"PERMISOS DE EDICI\\u00d3N DE PLANTILLAS\",\"person\":\"Juan Barrios\",\"key\":\"sort_mode\"}', '::1', '2023-03-14 11:28:39'),
(1275, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:31:23'),
(1276, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:32:03'),
(1277, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:37:20'),
(1278, 'N', 41, 9, 1, 0, '{\"name\":\"Formulario de creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:37:25'),
(1279, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 11:39:33'),
(1280, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:43:21'),
(1281, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto o puestos\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:45:35'),
(1282, 'X', 176, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"secondary_langs\"}', '::1', '2023-03-14 11:46:49'),
(1283, 'N', 32, 9, 1, 0, '{\"name\":\"Ingrese los datos del puesto\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:47:29'),
(1284, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:53:34'),
(1285, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 11:56:12'),
(1286, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:23:17'),
(1287, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:23:27'),
(1288, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:23:30'),
(1289, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:24:39'),
(1290, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:28:46'),
(1291, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:31:05'),
(1292, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:31:35'),
(1293, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:34:09'),
(1294, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:35:37'),
(1295, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:47:29'),
(1296, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:48:35'),
(1297, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:49:21'),
(1298, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:50:04'),
(1299, 'L', 10, 1, 1, 0, '{\"name\":\"ROLES DE CANELA\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:51:16'),
(1300, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:54:13'),
(1301, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:54:45'),
(1302, 'N', 33, 9, 1, 0, '{\"name\":\"Ingresa los datos del usuario\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 12:56:25'),
(1303, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:03:00'),
(1304, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:03:16'),
(1305, 'N', 34, 9, 1, 0, '{\"name\":\"Ingrese los datos de los sectores bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:04:10'),
(1306, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:05:00'),
(1307, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:05:44'),
(1308, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:06:24'),
(1309, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:07:02'),
(1310, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:07:05'),
(1311, 'N', 38, 9, 1, 0, '{\"name\":\"Ingrese los datos de los usuarios a capacitar bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:10:31'),
(1312, 'N', 36, 9, 1, 0, '{\"name\":\"Ingresa a qui\\u00e9n(s) se les dar\\u00e1 permiso de visualizaci\\u00f3n, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:20:19'),
(1313, 'N', 36, 9, 1, 0, '{\"name\":\"Ingresa a qui\\u00e9n(s) se les dar\\u00e1 permiso de visualizaci\\u00f3n, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:20:33'),
(1314, 'N', 36, 9, 1, 0, '{\"name\":\"Ingresa a qui\\u00e9n(s) se les dar\\u00e1 permiso de visualizaci\\u00f3n, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:20:53'),
(1315, 'N', 36, 9, 1, 0, '{\"name\":\"Ingresa a qui\\u00e9n(s) se les dar\\u00e1 permiso de visualizaci\\u00f3n, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:22:37'),
(1316, 'N', 36, 9, 1, 0, '{\"name\":\"Ingresa a qui\\u00e9n(s) se les dar\\u00e1 permiso de visualizaci\\u00f3n, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:28:17'),
(1317, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:28:52'),
(1318, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:30:08'),
(1319, 'N', 30, 9, 1, 0, '{\"name\":\"Ingresa los datos de las localidades, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:30:21'),
(1320, 'N', 14, 9, 1, 0, '{\"name\":\"Ingresa las vacantes a reasignar, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:35:10'),
(1321, 'N', 14, 9, 1, 0, '{\"name\":\"Ingresa las vacantes a reasignar, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:35:14'),
(1322, 'N', 14, 9, 1, 0, '{\"name\":\"Ingresa las vacantes a reasignar, bas\\u00e1ndote en el siguiente ejemplo:\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-14 13:35:47'),
(1323, 'X', 25, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_smtp_id\"}', '::1', '2023-03-14 13:37:20'),
(1324, 'X', 13, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"isonline\"}', '::1', '2023-03-14 13:47:54'),
(1325, 'X', 13, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"isonline\"}', '::1', '2023-03-14 14:31:12'),
(1326, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-14 16:58:02'),
(1327, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 19:52:43'),
(1328, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 19:53:15'),
(1329, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 19:54:25'),
(1330, 'J', 2, 9, 1, 0, '{\"name\":\"Ana Karen Barreto\",\"person\":\"Juan Barrios\",\"key\":\"password\"}', '127.0.0.1', '2023-03-14 19:55:20'),
(1331, 'J', 3, 9, 1, 0, '{\"name\":\"Axell Sosa Rodriguez\",\"person\":\"Juan Barrios\",\"key\":\"password\"}', '127.0.0.1', '2023-03-14 19:55:59'),
(1332, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"passwd\",\"orm_audit\":true}', '127.0.0.1', '2023-03-14 19:56:43'),
(1333, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"passwdreset\",\"orm_audit\":true}', '127.0.0.1', '2023-03-14 19:56:43'),
(1334, 'S', 5, 9, 1, 0, '{\"name\":\"Griselda L\\u00f3pez\",\"person\":\"Juan Barrios\",\"key\":\"passwd\",\"orm_audit\":true}', '127.0.0.1', '2023-03-14 19:57:22'),
(1335, 'S', 5, 9, 1, 0, '{\"name\":\"Griselda L\\u00f3pez\",\"person\":\"Juan Barrios\",\"key\":\"passwdreset\",\"orm_audit\":true}', '127.0.0.1', '2023-03-14 19:57:22'),
(1336, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 19:58:24'),
(1337, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-14 19:59:57'),
(1338, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 01:50:38'),
(1339, 'S', 1, 9, 1, 0, '{\"name\":\"Juan Barrios\",\"person\":\"Juan Barrios\",\"key\":\"auto_refresh_rate\",\"orm_audit\":true}', '127.0.0.1', '2023-03-15 02:00:16'),
(1340, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:05:17'),
(1341, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:05:41'),
(1342, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-15 04:07:34'),
(1343, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:35:20'),
(1344, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:35:36'),
(1345, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:35:59'),
(1346, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:36:11'),
(1347, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 04:36:46'),
(1348, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 13:17:48'),
(1349, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 13:18:15'),
(1350, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 21:03:28'),
(1351, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-15 21:04:35'),
(1352, 'X', 105, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clientSecret\"}', '::1', '2023-03-15 23:04:34'),
(1353, 'X', 110, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"attr_username\"}', '::1', '2023-03-15 23:04:35'),
(1354, 'X', 105, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clientSecret\"}', '::1', '2023-03-15 23:04:44'),
(1355, 'X', 105, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clientSecret\"}', '::1', '2023-03-15 23:04:50'),
(1356, 'X', 105, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clientSecret\"}', '::1', '2023-03-15 23:05:06'),
(1357, 'X', 120, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clientSecret\"}', '::1', '2023-03-15 23:05:42'),
(1358, 'X', 129, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-15 23:05:45'),
(1359, 'X', 134, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"config_signature\"}', '::1', '2023-03-15 23:05:45'),
(1360, 'X', 131, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-15 23:05:45'),
(1361, 'X', 130, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-15 23:05:45'),
(1362, 'X', 129, 9, 0, 0, '{\"person\":\"SYSTEM\",\"key\":\"access_token\"}', '::1', '2023-03-15 23:05:59'),
(1363, 'X', 130, 9, 0, 0, '{\"person\":\"SYSTEM\",\"key\":\"refresh_token\"}', '::1', '2023-03-15 23:05:59'),
(1364, 'X', 131, 9, 0, 0, '{\"person\":\"SYSTEM\",\"key\":\"expires\"}', '::1', '2023-03-15 23:05:59'),
(1365, 'X', 141, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clientSecret\"}', '::1', '2023-03-15 23:06:30'),
(1366, 'X', 150, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-15 23:06:30'),
(1367, 'X', 152, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-15 23:06:31'),
(1368, 'X', 151, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-15 23:06:31'),
(1369, 'X', 150, 9, 0, 0, '{\"person\":\"SYSTEM\",\"key\":\"access_token\"}', '::1', '2023-03-15 23:06:38'),
(1370, 'X', 151, 9, 0, 0, '{\"person\":\"SYSTEM\",\"key\":\"refresh_token\"}', '::1', '2023-03-15 23:06:39'),
(1371, 'X', 152, 9, 0, 0, '{\"person\":\"SYSTEM\",\"key\":\"expires\"}', '::1', '2023-03-15 23:06:39'),
(1372, 'J', 2, 9, 1, 0, '{\"name\":\"Ana Karen Barreto\",\"person\":\"Juan Barrios\",\"key\":\"password\"}', '::1', '2023-03-15 23:07:28'),
(1373, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-15 23:08:10'),
(1374, 'T', 23, 1, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-15 23:16:49'),
(1375, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-15 23:16:59'),
(1376, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-15 23:36:21'),
(1377, 'T', 23, 20, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\",\"uid\":65}', '127.0.0.1', '2023-03-16 00:04:59'),
(1378, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:04:59'),
(1379, 'X', 150, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-16 00:11:40'),
(1380, 'X', 152, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-16 00:11:41'),
(1381, 'X', 151, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-16 00:11:41'),
(1382, 'T', 23, 20, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\",\"uid\":65}', '127.0.0.1', '2023-03-16 00:11:46'),
(1383, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:11:46'),
(1384, 'T', 23, 20, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\",\"uid\":65}', '127.0.0.1', '2023-03-16 00:12:54'),
(1385, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:12:54'),
(1386, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 00:29:58'),
(1387, 'T', 23, 10, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 00:30:31'),
(1388, 'T', 23, 20, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 00:30:50'),
(1389, 'T', 23, 10, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 00:30:56'),
(1390, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:32:37'),
(1391, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 00:36:18'),
(1392, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:41:41'),
(1393, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:52:36'),
(1394, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:55:01'),
(1395, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 00:55:53'),
(1396, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 01:49:38'),
(1397, 'T', 23, 10, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 01:49:55'),
(1398, 'T', 23, 9, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\",\"fields\":{\"source\":[\"Web\",\"Phone\"]}}', '::1', '2023-03-16 01:50:16'),
(1399, 'T', 23, 9, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\",\"fields\":{\"source\":[\"Phone\",\"Email\"]}}', '::1', '2023-03-16 01:52:26'),
(1400, 'T', 23, 9, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\",\"fields\":{\"source\":[\"Email\",\"API\"]}}', '::1', '2023-03-16 01:57:09'),
(1401, 'T', 23, 9, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\",\"fields\":{\"source\":[\"API\",\"Other\"]}}', '::1', '2023-03-16 01:59:11'),
(1402, 'T', 23, 2, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 01:59:49'),
(1403, 'T', 23, 20, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 01:59:49'),
(1404, 'X', 150, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-16 01:59:50'),
(1405, 'X', 152, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-16 01:59:51'),
(1406, 'X', 151, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-16 01:59:51'),
(1407, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 02:08:44'),
(1408, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 02:17:35'),
(1409, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 02:17:43'),
(1410, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 02:19:51'),
(1411, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 02:31:02'),
(1412, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 02:31:28'),
(1413, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 02:37:14'),
(1414, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 02:40:39'),
(1415, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 02:41:49'),
(1416, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 02:59:02'),
(1417, 'X', 17, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"staff_session_timeout\"}', '::1', '2023-03-16 03:00:58'),
(1418, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"role_id\",\"orm_audit\":true}', '::1', '2023-03-16 03:01:28'),
(1419, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"PIP-Reclutamiento Department Access Added\"}', '::1', '2023-03-16 03:01:38'),
(1420, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"passwd\",\"orm_audit\":true}', '::1', '2023-03-16 03:02:20'),
(1421, 'S', 6, 9, 1, 0, '{\"name\":\"Joaqu\\u00edn Aguilera\",\"person\":\"Juan Barrios\",\"key\":\"passwdreset\",\"orm_audit\":true}', '::1', '2023-03-16 03:02:20'),
(1422, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 03:02:24'),
(1423, 'S', 6, 18, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '::1', '2023-03-16 03:02:31'),
(1424, 'S', 6, 18, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 03:08:53'),
(1425, 'S', 6, 19, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 04:30:38'),
(1426, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 04:33:30'),
(1427, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 04:33:39'),
(1428, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 04:36:17'),
(1429, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 13:16:49'),
(1430, 'S', 6, 19, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '::1', '2023-03-16 13:27:46'),
(1431, 'S', 6, 18, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '::1', '2023-03-16 13:27:53'),
(1432, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 14:04:51'),
(1433, 'T', 23, 10, 0, 65, '{\"name\":\"SOL-RCL-9\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 14:09:21'),
(1434, 'T', 24, 1, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 14:11:51'),
(1435, 'X', 150, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-16 14:11:56'),
(1436, 'X', 152, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-16 14:11:56'),
(1437, 'X', 151, 9, 0, 65, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-16 14:11:56'),
(1438, 'T', 24, 10, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 14:12:07'),
(1439, 'S', 6, 18, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '::1', '2023-03-16 14:12:29'),
(1440, 'T', 24, 10, 6, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Joaqu\\u00edn Aguilera\"}', '::1', '2023-03-16 14:13:16'),
(1441, 'T', 24, 9, 6, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Joaqu\\u00edn Aguilera\",\"fields\":{\"63\":[null,\"{\\\"112\\\":\\\"FOOD SERVICE\\\"}\"]}}', '::1', '2023-03-16 14:14:07'),
(1442, 'T', 24, 9, 6, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Joaqu\\u00edn Aguilera\",\"fields\":{\"46\":[null,\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\"]}}', '::1', '2023-03-16 14:14:21'),
(1443, 'T', 24, 10, 6, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Joaqu\\u00edn Aguilera\"}', '::1', '2023-03-16 14:14:27'),
(1444, 'T', 24, 9, 6, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Joaqu\\u00edn Aguilera\",\"fields\":{\"63\":[\"{\\\"112\\\":\\\"FOOD SERVICE\\\"}\",\"{\\\"111\\\":\\\"ENERGIZER\\\",\\\"112\\\":\\\"FOOD SERVICE\\\"}\"],\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"],\"43\":[null,\"{\\\"key1\\\":\\\"PROYECTO\\\"}\"],\"44\":[null,\"vhvhfg\"],\"45\":[null,\"{\\\"key1\\\":\\\"SISTEMA\\\"}\"]}}', '::1', '2023-03-16 14:17:05'),
(1445, 'T', 24, 10, 6, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Joaqu\\u00edn Aguilera\"}', '::1', '2023-03-16 14:17:08'),
(1446, 'S', 6, 19, 6, 0, '{\"person\":\"Joaqu\\u00edn Aguilera\",\"msg\":\"\"}', '::1', '2023-03-16 14:19:35'),
(1447, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 14:19:55'),
(1448, 'X', 13, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"isonline\"}', '::1', '2023-03-16 14:20:11'),
(1449, 'D', 4, 9, 1, 0, '{\"name\":\"Talent Group\",\"person\":\"Juan Barrios\",\"key\":\"name\"}', '::1', '2023-03-16 14:26:03'),
(1450, 'D', 4, 9, 1, 0, '{\"name\":\"Talent Group\",\"person\":\"Juan Barrios\",\"status\":\"Active\"}', '::1', '2023-03-16 14:26:03'),
(1451, 'X', 13, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"isonline\"}', '::1', '2023-03-16 14:26:56'),
(1452, 'H', 21, 9, 1, 0, '{\"name\":\"Anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:28:21'),
(1453, 'H', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de permisos de visualizaci\\u00f3n de vacantes\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:28:21'),
(1454, 'H', 23, 9, 1, 0, '{\"name\":\"Capacitaci\\u00f3n a usuarios\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:28:21'),
(1455, 'H', 20, 9, 1, 0, '{\"name\":\"Solicitud\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:28:21'),
(1456, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 14:28:27'),
(1457, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 14:28:44'),
(1458, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 14:36:03'),
(1459, 'H', 21, 9, 1, 0, '{\"name\":\"Anexo de Tipo de Operaci\\u00f3n\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:46:48'),
(1460, 'H', 22, 9, 1, 0, '{\"name\":\"Asignaci\\u00f3n de permisos de visualizaci\\u00f3n de vacantes\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:46:48'),
(1461, 'H', 23, 9, 1, 0, '{\"name\":\"Capacitaci\\u00f3n a usuarios\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:46:48'),
(1462, 'H', 20, 9, 1, 0, '{\"name\":\"Solicitud\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 14:46:48'),
(1463, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 16:06:27'),
(1464, 'T', 24, 10, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 16:12:42'),
(1465, 'T', 24, 10, 1, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 16:35:16'),
(1466, 'T', 24, 20, 1, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 16:35:41'),
(1467, 'X', 150, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-16 16:35:43'),
(1468, 'X', 152, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-16 16:35:43'),
(1469, 'X', 151, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-16 16:35:44'),
(1470, 'T', 24, 10, 1, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-16 16:36:01'),
(1471, 'T', 24, 10, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 16:39:34'),
(1472, 'T', 24, 10, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '127.0.0.1', '2023-03-16 18:59:56'),
(1473, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 19:00:36'),
(1474, 'H', 24, 9, 1, 0, '{\"name\":\"Actualizaci\\u00f3n \\/ Creaci\\u00f3n de infograf\\u00edas o manuales\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1475, 'H', 14, 9, 1, 0, '{\"name\":\"Alta de puesto en plataforma\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1476, 'H', 15, 9, 1, 0, '{\"name\":\"Alta de Sector en Plataforma\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1477, 'H', 12, 9, 1, 0, '{\"name\":\"Alta de Usuario\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1478, 'H', 13, 9, 1, 0, '{\"name\":\"Anexo de Localidad - Asignaci\\u00f3n de Localidad\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1479, 'H', 25, 9, 1, 0, '{\"name\":\"Creaci\\u00f3n de plantillas\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1480, 'H', 16, 9, 1, 0, '{\"name\":\"Reasignaci\\u00f3n de Vacantes\",\"person\":\"Juan Barrios\",\"status\":\"Disabled\"}', '::1', '2023-03-16 19:01:36'),
(1481, 'X', 150, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-16 19:02:35'),
(1482, 'X', 152, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-16 19:02:35'),
(1483, 'X', 151, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-16 19:02:35'),
(1484, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 19:05:48'),
(1485, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 19:09:03'),
(1486, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '127.0.0.1', '2023-03-16 19:11:18'),
(1487, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 19:11:40'),
(1488, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 19:12:27'),
(1489, 'J', 2, 9, 1, 0, '{\"name\":\"Ana Karen Barreto\",\"person\":\"Juan Barrios\",\"key\":\"password\"}', '::1', '2023-03-16 19:13:35'),
(1490, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 19:13:46'),
(1491, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:14:02'),
(1492, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:14:10'),
(1493, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:14:30'),
(1494, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:14:35'),
(1495, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:15:11'),
(1496, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:15:18'),
(1497, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:15:25'),
(1498, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:16:37'),
(1499, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:16:43'),
(1500, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:21:20'),
(1501, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:21:27'),
(1502, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:34:49'),
(1503, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 19:34:53'),
(1504, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 22:38:13'),
(1505, 'X', 78, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"allow_external_images\"}', '::1', '2023-03-16 22:39:51');
INSERT INTO `rcl_audit` (`id`, `object_type`, `object_id`, `event_id`, `staff_id`, `user_id`, `data`, `ip`, `timestamp`) VALUES
(1506, 'X', 52, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_active\"}', '::1', '2023-03-16 22:40:56'),
(1507, 'X', 53, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_assigned\"}', '::1', '2023-03-16 22:40:56'),
(1508, 'X', 54, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_dept_manager\"}', '::1', '2023-03-16 22:40:56'),
(1509, 'X', 55, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"transfer_alert_dept_members\"}', '::1', '2023-03-16 22:40:56'),
(1510, 'X', 59, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"overdue_alert_dept_members\"}', '::1', '2023-03-16 22:40:56'),
(1511, 'X', 188, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"agent_avatar\"}', '::1', '2023-03-16 22:41:39'),
(1512, 'X', 27, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"enable_kb\"}', '::1', '2023-03-16 22:42:16'),
(1513, 'X', 190, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clients_only\"}', '::1', '2023-03-16 22:42:32'),
(1514, 'X', 191, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"client_verify_email\"}', '::1', '2023-03-16 22:42:57'),
(1515, 'X', 192, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"allow_auth_tokens\"}', '::1', '2023-03-16 22:42:57'),
(1516, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-16 22:43:01'),
(1517, 'U', 65, 18, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 22:45:07'),
(1518, 'T', 24, 10, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '::1', '2023-03-16 22:45:28'),
(1519, 'T', 24, 10, 0, 65, '{\"name\":\"CSI-PIP-8\",\"person\":\"Ana Karen Barreto\"}', '::1', '2023-03-16 22:45:45'),
(1520, 'U', 65, 19, 0, 65, '{\"person\":\"Ana Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-16 22:46:36'),
(1521, 'U', 67, 1, 0, 67, '{\"name\":\"Juan Carlos Barrios Calbillo\",\"person\":\"SYSTEM\"}', '::1', '2023-03-16 23:00:22'),
(1522, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-16 23:00:22'),
(1523, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-16 23:00:23'),
(1524, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-16 23:37:56'),
(1525, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 00:31:16'),
(1526, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 01:30:55'),
(1527, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 01:31:05'),
(1528, 'T', 25, 1, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 01:51:41'),
(1529, 'X', 150, 9, 0, 67, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '::1', '2023-03-17 01:51:49'),
(1530, 'X', 152, 9, 0, 67, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '::1', '2023-03-17 01:51:49'),
(1531, 'X', 151, 9, 0, 67, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '::1', '2023-03-17 01:51:49'),
(1532, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 01:51:55'),
(1533, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:08:32'),
(1534, 'T', 25, 20, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:10:32'),
(1535, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:10:36'),
(1536, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:11:11'),
(1537, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:11:13'),
(1538, 'X', 188, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"agent_avatar\"}', '::1', '2023-03-17 02:14:42'),
(1539, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:21:15'),
(1540, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:30:24'),
(1541, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:30:35'),
(1542, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:31:21'),
(1543, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:31:29'),
(1544, 'T', 25, 9, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\",\"fields\":{\"22\":[[\"Normal\",2],null],\"40\":[\"9072\",\"9072, 9073\"]}}', '::1', '2023-03-17 02:45:27'),
(1545, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:45:27'),
(1546, 'T', 25, 9, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\",\"fields\":{\"22\":[[\"Normal\",2],null]}}', '::1', '2023-03-17 02:45:46'),
(1547, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:45:46'),
(1548, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:46:23'),
(1549, 'T', 26, 1, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:49:16'),
(1550, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:49:27'),
(1551, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:49:36'),
(1552, 'T', 25, 20, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\",\"uid\":67}', '::1', '2023-03-17 02:50:36'),
(1553, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:50:36'),
(1554, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:50:52'),
(1555, 'T', 25, 9, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\",\"fields\":{\"42\":[null,\"{\\\"key2\\\":\\\"Sistema\\\"}\"]}}', '::1', '2023-03-17 02:51:10'),
(1556, 'T', 25, 9, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\",\"fields\":{\"43\":[null,\"{\\\"key2\\\":\\\"FLUJO DE TRABAJO\\\"}\"]}}', '::1', '2023-03-17 02:51:22'),
(1557, 'T', 25, 9, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\",\"fields\":{\"44\":[null,\"SISTEMA\"]}}', '::1', '2023-03-17 02:51:31'),
(1558, 'T', 25, 9, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\",\"fields\":{\"45\":[null,\"{\\\"key1\\\":\\\"SISTEMA\\\"}\"]}}', '::1', '2023-03-17 02:51:38'),
(1559, 'T', 25, 9, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\",\"fields\":{\"46\":[null,\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\"]}}', '::1', '2023-03-17 02:51:47'),
(1560, 'T', 25, 9, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\",\"fields\":{\"63\":[null,\"{\\\"101\\\":\\\"ASIGNAR TODAS\\\"}\"]}}', '::1', '2023-03-17 02:51:59'),
(1561, 'T', 25, 2, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:52:40'),
(1562, 'T', 25, 20, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:52:41'),
(1563, 'X', 150, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"access_token\"}', '::1', '2023-03-17 02:52:42'),
(1564, 'X', 152, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"expires\"}', '::1', '2023-03-17 02:52:42'),
(1565, 'X', 151, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"refresh_token\"}', '::1', '2023-03-17 02:52:42'),
(1566, 'T', 25, 3, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:53:04'),
(1567, 'T', 25, 20, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\",\"uid\":67}', '::1', '2023-03-17 02:53:07'),
(1568, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:53:07'),
(1569, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:53:25'),
(1570, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:53:36'),
(1571, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:53:39'),
(1572, 'T', 23, 10, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:53:51'),
(1573, 'T', 23, 2, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:54:09'),
(1574, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 02:54:22'),
(1575, 'T', 23, 10, 1, 0, '{\"name\":\"SOL-RCL-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:54:59'),
(1576, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:55:28'),
(1577, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:55:41'),
(1578, 'T', 25, 2, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:55:55'),
(1579, 'T', 25, 20, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 02:55:55'),
(1580, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1581, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1582, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1583, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1584, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1585, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1586, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:38:28'),
(1587, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:40:09'),
(1588, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '::1', '2023-03-17 04:44:03'),
(1589, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:44:13'),
(1590, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:46:07'),
(1591, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:47:08'),
(1592, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 04:50:47'),
(1593, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 04:53:24'),
(1594, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:53:33'),
(1595, 'T', 26, 10, 0, 67, '{\"name\":\"CSI-PIP-10\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 04:57:48'),
(1596, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 04:57:50'),
(1597, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 05:08:35'),
(1598, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 05:08:36'),
(1599, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 05:09:32'),
(1600, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 05:09:40'),
(1601, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '::1', '2023-03-17 05:29:41'),
(1602, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '::1', '2023-03-17 05:31:04'),
(1603, 'L', 1, 9, 1, 0, '{\"name\":\"Ticket Status\",\"person\":\"Juan Barrios\",\"key\":\"notes\"}', '::1', '2023-03-17 05:32:18'),
(1604, 'X', 207, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"default_help_topic\"}', '::1', '2023-03-17 05:33:39'),
(1605, 'X', 37, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"ticket_autoresponder\"}', '::1', '2023-03-17 05:34:13'),
(1606, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"ticket.notice\"}', '::1', '2023-03-17 05:34:48'),
(1607, 'I', 1, 9, 1, 0, '{\"name\":\"Templates PIP-Reclutamiento\",\"person\":\"Juan Barrios\",\"key\":\"message.autoresp\"}', '::1', '2023-03-17 05:35:41'),
(1608, 'X', 38, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"message_autoresponder\"}', '::1', '2023-03-17 05:35:56'),
(1609, 'U', 68, 1, 0, 68, '{\"name\":\"Usuario Demo\",\"person\":\"SISTEMA\"}', '::1', '2023-03-17 05:51:02'),
(1610, 'X', 150, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '::1', '2023-03-17 05:51:04'),
(1611, 'X', 152, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '::1', '2023-03-17 05:51:04'),
(1612, 'X', 151, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '::1', '2023-03-17 05:51:04'),
(1613, 'G', 7, 9, 1, 0, '{\"name\":\"Bienvenido asl Sistema de Tickets PIP de %{company.name}\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-17 05:56:36'),
(1614, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '::1', '2023-03-17 05:58:42'),
(1615, 'G', 11, 9, 1, 0, '{\"name\":\"\\u00a1Cuenta confirmada!\",\"person\":\"Juan Barrios\",\"key\":\"body\",\"orm_audit\":true}', '::1', '2023-03-17 05:59:46'),
(1616, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 06:23:47'),
(1617, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 06:24:06'),
(1618, 'N', 7, 9, 1, 0, '{\"name\":\"Informaci\\u00f3n Reclutamiento\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 06:24:13'),
(1619, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 06:25:32'),
(1620, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-17 06:25:44'),
(1621, 'T', 27, 1, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\"}', '::1', '2023-03-17 06:38:11'),
(1622, 'T', 27, 10, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\"}', '::1', '2023-03-17 06:38:23'),
(1623, 'T', 27, 10, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\"}', '::1', '2023-03-17 06:49:04'),
(1624, 'U', 68, 19, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '::1', '2023-03-17 07:16:32'),
(1625, 'X', 150, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '::1', '2023-03-17 07:18:23'),
(1626, 'X', 152, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '::1', '2023-03-17 07:18:24'),
(1627, 'X', 151, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '::1', '2023-03-17 07:18:24'),
(1628, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '::1', '2023-03-17 07:27:02'),
(1629, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 07:52:24'),
(1630, 'T', 27, 10, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\"}', '::1', '2023-03-17 07:53:37'),
(1631, 'T', 27, 20, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\",\"uid\":68}', '::1', '2023-03-17 07:54:04'),
(1632, 'T', 27, 10, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\"}', '::1', '2023-03-17 07:54:04'),
(1633, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"passwd\",\"orm_audit\":true}', '::1', '2023-03-17 08:05:37'),
(1634, 'S', 4, 9, 1, 0, '{\"name\":\"Anallely Linaco\",\"person\":\"Juan Barrios\",\"key\":\"passwdreset\",\"orm_audit\":true}', '::1', '2023-03-17 08:05:37'),
(1635, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 08:05:46'),
(1636, 'S', 4, 18, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '::1', '2023-03-17 08:05:55'),
(1637, 'T', 27, 10, 4, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Anallely Linaco\"}', '::1', '2023-03-17 08:06:03'),
(1638, 'T', 27, 20, 4, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Anallely Linaco\"}', '::1', '2023-03-17 08:06:42'),
(1639, 'T', 27, 10, 4, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Anallely Linaco\"}', '::1', '2023-03-17 08:06:47'),
(1640, 'T', 27, 4, 4, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Anallely Linaco\",\"staff\":\"Juan Barrios\"}', '::1', '2023-03-17 08:07:32'),
(1641, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 08:08:14'),
(1642, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '::1', '2023-03-17 08:08:38'),
(1643, 'T', 27, 10, 0, 68, '{\"name\":\"CSI-PIP-11\",\"person\":\"Usuario Demo\"}', '::1', '2023-03-17 08:08:42'),
(1644, 'S', 4, 19, 4, 0, '{\"person\":\"Anallely Linaco\",\"msg\":\"\"}', '::1', '2023-03-17 08:08:59'),
(1645, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 08:09:08'),
(1646, 'T', 27, 10, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 08:10:08'),
(1647, 'T', 27, 12, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\",\"add\":{\"65\":{\"name\":\"Ana Karen Barreto\",\"src\":null}}}', '::1', '2023-03-17 08:10:31'),
(1648, 'T', 27, 10, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 08:10:44'),
(1649, 'T', 27, 9, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\",\"fields\":{\"status\":6}}', '::1', '2023-03-17 08:11:32'),
(1650, 'T', 27, 20, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 08:11:32'),
(1651, 'T', 27, 10, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 08:11:38'),
(1652, 'T', 27, 10, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 08:22:06'),
(1653, 'T', 27, 9, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\",\"fields\":{\"45\":[null,\"{\\\"key2\\\":\\\"USUARIO\\\"}\"]}}', '::1', '2023-03-17 08:22:19'),
(1654, 'T', 27, 10, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-17 08:22:23'),
(1655, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 10:07:58'),
(1656, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-17 10:08:10'),
(1657, 'T', 24, 14, 1, 0, '{\"name\":\"CSI-PIP-8\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-17 10:18:21'),
(1658, 'U', 2, 19, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 15:51:14'),
(1659, 'U', 2, 19, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-17 15:51:28'),
(1660, 'T', 27, 10, 1, 0, '{\"name\":\"CSI-PIP-11\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-17 22:36:51'),
(1661, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '::1', '2023-03-17 22:39:43'),
(1662, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '::1', '2023-03-17 22:40:11'),
(1663, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 22:41:16'),
(1664, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-17 22:45:04'),
(1665, 'X', 190, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clients_only\"}', '127.0.0.1', '2023-03-17 22:47:53'),
(1666, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-17 22:48:20'),
(1667, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-17 22:48:43'),
(1668, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-18 00:54:29'),
(1669, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-18 00:54:31'),
(1670, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-18 00:55:12'),
(1671, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-18 00:58:28'),
(1672, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-18 00:59:26'),
(1673, 'X', 190, 9, 1, 0, '{\"person\":\"Juan Barrios\",\"key\":\"clients_only\"}', '127.0.0.1', '2023-03-18 01:01:56'),
(1674, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-18 01:02:18'),
(1675, 'T', 25, 10, 1, 0, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:02:48'),
(1676, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-18 01:03:11'),
(1677, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-18 01:03:13'),
(1678, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '::1', '2023-03-18 01:03:25'),
(1679, 'U', 67, 19, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '::1', '2023-03-18 01:03:45'),
(1680, 'C', 1, 1, 1, 0, '{\"name\":\"ATC\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:10:12'),
(1681, 'Q', 1, 1, 1, 0, '{\"name\":\"No se visualiza id de vacante\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:12:57'),
(1682, 'C', 1, 9, 1, 0, '{\"name\":\"ATC\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:13:37'),
(1683, 'C', 1, 9, 1, 0, '{\"name\":\"FAQ\'S ATC\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:15:00'),
(1684, 'C', 2, 1, 1, 0, '{\"name\":\"FAQ\'S CLIENTE\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:15:30'),
(1685, 'C', 2, 9, 1, 0, '{\"name\":\"FAQ\'S CLIENTE\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:16:25'),
(1686, 'Q', 2, 1, 1, 0, '{\"name\":\"No aparece localidad en el desplegable\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-18 01:17:12'),
(1687, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-18 02:03:48'),
(1688, 'U', 67, 18, 0, 67, '{\"person\":\"Juan Carlos Barrios Calbillo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-18 03:14:40'),
(1689, 'T', 25, 10, 0, 67, '{\"name\":\"CSI-PIP-9\",\"person\":\"Juan Carlos Barrios Calbillo\"}', '127.0.0.1', '2023-03-18 03:14:43'),
(1690, 'S', 2, 18, 2, 0, '{\"person\":\"Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-18 03:15:54'),
(1691, 'X', 191, 9, 2, 0, '{\"person\":\"Karen Barreto\",\"key\":\"client_verify_email\"}', '::1', '2023-03-18 03:17:21'),
(1692, 'X', 192, 9, 2, 0, '{\"person\":\"Karen Barreto\",\"key\":\"allow_auth_tokens\"}', '::1', '2023-03-18 03:17:21'),
(1693, 'X', 150, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-18 03:30:33'),
(1694, 'X', 152, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-18 03:30:34'),
(1695, 'X', 151, 9, 0, 0, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-18 03:30:34'),
(1696, 'S', 2, 19, 2, 0, '{\"person\":\"Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-18 03:36:45'),
(1697, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-18 21:10:17'),
(1698, 'U', 68, 19, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-18 21:11:14'),
(1699, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-18 23:15:21'),
(1700, 'J', 6, 9, 1, 0, '{\"name\":\"Usuario Demo\",\"person\":\"Juan Barrios\",\"key\":\"password\"}', '::1', '2023-03-18 23:44:09'),
(1701, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-18 23:45:28'),
(1702, 'U', 68, 19, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 00:53:36'),
(1703, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 00:54:08'),
(1704, 'T', 28, 1, 0, 68, '{\"name\":\"CSI-PIP-12\",\"person\":\"Usuario Demo\"}', '127.0.0.1', '2023-03-19 01:10:15'),
(1705, 'X', 150, 9, 0, 68, '{\"person\":\"SISTEMA\",\"key\":\"access_token\"}', '127.0.0.1', '2023-03-19 01:10:20'),
(1706, 'X', 152, 9, 0, 68, '{\"person\":\"SISTEMA\",\"key\":\"expires\"}', '127.0.0.1', '2023-03-19 01:10:20'),
(1707, 'X', 151, 9, 0, 68, '{\"person\":\"SISTEMA\",\"key\":\"refresh_token\"}', '127.0.0.1', '2023-03-19 01:10:20'),
(1708, 'T', 28, 10, 0, 68, '{\"name\":\"CSI-PIP-12\",\"person\":\"Usuario Demo\"}', '127.0.0.1', '2023-03-19 01:10:27'),
(1709, 'T', 28, 10, 0, 68, '{\"name\":\"CSI-PIP-12\",\"person\":\"Usuario Demo\"}', '127.0.0.1', '2023-03-19 04:22:27'),
(1710, 'U', 68, 19, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 04:26:10'),
(1711, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 04:38:44'),
(1712, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 04:50:45'),
(1713, 'U', 68, 19, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 04:51:57'),
(1714, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 04:52:42'),
(1715, 'U', 2, 18, 0, 2, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-19 18:42:45'),
(1716, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-20 18:51:19'),
(1717, 'Q', 3, 1, 1, 0, '{\"name\":\"Rechac\\u00e9 una vacante y ya no puedo visualizarla\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 18:58:13'),
(1718, 'Q', 3, 9, 1, 0, '{\"name\":\"Rechac\\u00e9 una vacante y ya no puedo visualizarla\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 18:59:47'),
(1719, 'Q', 4, 1, 1, 0, '{\"name\":\"No puedo asignar una vacante a Reclutador\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:02:09'),
(1720, 'Q', 5, 1, 1, 0, '{\"name\":\"No puedo solicitar cartera\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:03:29'),
(1721, 'Q', 6, 1, 1, 0, '{\"name\":\"No visualizo candidatos en vacantes\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:07:16'),
(1722, 'Q', 7, 1, 1, 0, '{\"name\":\"Material de Apoyo\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:08:13'),
(1723, 'Q', 8, 1, 1, 0, '{\"name\":\"No se visualiza id de vacante (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:10:53'),
(1724, 'Q', 1, 9, 1, 0, '{\"name\":\"No se visualiza id de vacante (ATC)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:12:17'),
(1725, 'Q', 9, 1, 1, 0, '{\"name\":\"No se muestra listado de Plantillas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:13:53'),
(1726, 'Q', 10, 1, 1, 0, '{\"name\":\"No aparece localidad en el desplegable (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:14:50'),
(1727, 'Q', 11, 1, 1, 0, '{\"name\":\"No aparece Supervisor en desplegable de localidad\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:15:39'),
(1728, 'Q', 12, 1, 1, 0, '{\"name\":\"No se puede editar plantilla\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:16:36'),
(1729, 'Q', 13, 1, 1, 0, '{\"name\":\"No visualizo candidatos en vacantes (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:19:46'),
(1730, 'Q', 6, 9, 1, 0, '{\"name\":\"No visualizo candidatos en vacantes (ATC)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:20:35'),
(1731, 'Q', 14, 1, 1, 0, '{\"name\":\"No puedo Programar una Entrevista con Candidato\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:21:38'),
(1732, 'Q', 15, 1, 1, 0, '{\"name\":\"No se visualiza candidatos para retro final (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:23:28'),
(1733, 'Q', 16, 1, 1, 0, '{\"name\":\"No puedo asignar Estatus Viable en Retro Final (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:24:24'),
(1734, 'Q', 17, 1, 1, 0, '{\"name\":\"No puedo asignar Estatus Seleccionado en Retro Final (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:25:45'),
(1735, 'Q', 18, 1, 1, 0, '{\"name\":\"No puedo dar primera retroalimentaci\\u00f3n a candidatos en vacantes sin Preguntas T\\u00e9cnicas (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:26:40'),
(1736, 'Q', 18, 9, 1, 0, '{\"name\":\"No puedo dar primera retroalimentaci\\u00f3n a candidatos en vacantes sin Preguntas T\\u00e9cnicas (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:26:55'),
(1737, 'Q', 19, 1, 1, 0, '{\"name\":\"Material de Apoyo CLIENTE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:28:12'),
(1738, 'Q', 19, 9, 1, 0, '{\"name\":\"Material de Apoyo CLIENTE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:28:22'),
(1739, 'Q', 7, 9, 1, 0, '{\"name\":\"Material de Apoyo ATC\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:29:00'),
(1740, 'C', 3, 1, 1, 0, '{\"name\":\"FAQ\'S CLIENTE ENTREVISTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:30:06'),
(1741, 'C', 3, 9, 1, 0, '{\"name\":\"FAQ\'S CLIENTE ENTREVISTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:30:39'),
(1742, 'Q', 20, 1, 1, 0, '{\"name\":\"No se visualiza id de vacante (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:31:49'),
(1743, 'Q', 21, 1, 1, 0, '{\"name\":\"No aparece localidad en el desplegable (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:32:59'),
(1744, 'Q', 11, 9, 1, 0, '{\"name\":\"No aparece Supervisor en desplegable de localidad (CLIENTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:33:25'),
(1745, 'Q', 2, 9, 1, 0, '{\"name\":\"No aparece localidad en el desplegable\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:34:36'),
(1746, 'Q', 2, 14, 1, 0, '{\"name\":\"No aparece localidad en el desplegable\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:35:10'),
(1747, 'Q', 22, 1, 1, 0, '{\"name\":\"No visualizo candidatos en vacantes (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:37:09'),
(1748, 'Q', 23, 1, 1, 0, '{\"name\":\"No puedo Programar una Entrevista con Candidato (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:50:06'),
(1749, 'Q', 24, 1, 1, 0, '{\"name\":\"No se visualiza candidatos para retro final (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:52:53'),
(1750, 'Q', 25, 1, 1, 0, '{\"name\":\"No puedo asignar Estatus Viable en Retro Final (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:56:27'),
(1751, 'Q', 26, 1, 1, 0, '{\"name\":\"No puedo asignar Estatus Seleccionado en Retro Final (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 19:57:17'),
(1752, 'Q', 27, 1, 1, 0, '{\"name\":\"No puedo dar primera retroalimentaci\\u00f3n a candidatos en vacantes sin Preguntas T\\u00e9cnicas (CLIENTE ENTREVISTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:07:27'),
(1753, 'Q', 28, 1, 1, 0, '{\"name\":\"Material de Apoyo CLIENTE ENTREVISTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:08:23'),
(1754, 'C', 4, 1, 1, 0, '{\"name\":\"FAQ\'S SOLICITANTE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:11:46'),
(1755, 'C', 4, 9, 1, 0, '{\"name\":\"FAQ\'S SOLICITANTE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:12:24'),
(1756, 'C', 1, 9, 1, 0, '{\"name\":\"FAQ\'S ATC\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:12:43'),
(1757, 'C', 4, 9, 1, 0, '{\"name\":\"FAQ\'S SOLICITANTE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:13:05'),
(1758, 'C', 2, 9, 1, 0, '{\"name\":\"FAQ\'S CLIENTE\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:13:24'),
(1759, 'C', 3, 9, 1, 0, '{\"name\":\"FAQ\'S CLIENTE ENTREVISTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:13:42'),
(1760, 'U', 68, 18, 0, 68, '{\"person\":\"Usuario Demo\",\"msg\":\"\"}', '127.0.0.1', '2023-03-20 20:14:19'),
(1761, 'Q', 29, 1, 1, 0, '{\"name\":\"No se visualiza id de vacante (SOLICITANTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:15:29'),
(1762, 'Q', 30, 1, 1, 0, '{\"name\":\"No se muestra listado de Plantillas (SOLICITANTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:16:34'),
(1763, 'Q', 31, 1, 1, 0, '{\"name\":\"No aparece localidad en el desplegable (SOLICITANTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:24:54'),
(1764, 'Q', 32, 1, 1, 0, '{\"name\":\"No aparece Supervisor en desplegable (SOLICITANTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:33:58'),
(1765, 'Q', 33, 1, 1, 0, '{\"name\":\"No se puede editar plantilla (SOLICITANTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:35:17'),
(1766, 'Q', 34, 1, 1, 0, '{\"name\":\"Material de Apoyo (SOLICITANTE)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:36:00'),
(1767, 'C', 5, 1, 1, 0, '{\"name\":\"FAQ\'S RECLUTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:45:28'),
(1768, 'C', 5, 9, 1, 0, '{\"name\":\"FAQ\'S RECLUTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 20:53:43'),
(1769, 'Q', 35, 1, 1, 0, '{\"name\":\"No se visualiza id de vacante (RECLUTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:01:49'),
(1770, 'Q', 36, 1, 1, 0, '{\"name\":\"No puedo publicar una vacante\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:02:52'),
(1771, 'Q', 37, 1, 1, 0, '{\"name\":\"No puedo postular un candidato desde mi reclu o Candidatos en Cartera\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:10:51'),
(1772, 'Q', 38, 1, 1, 0, '{\"name\":\"No puedo guardar Entrevista Profunda\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:12:00'),
(1773, 'Q', 39, 1, 1, 0, '{\"name\":\"No puedo habilitar preguntas t\\u00e9cnicas de Candidato\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:18:22'),
(1774, 'Q', 40, 1, 1, 0, '{\"name\":\"No visualizo candidatos en vacantes (RECLUTADOR)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:19:35'),
(1775, 'Q', 41, 1, 1, 0, '{\"name\":\"Dar de alta Candidatos desde rol Reclutador\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:26:47'),
(1776, 'Q', 42, 1, 1, 0, '{\"name\":\"No puedo dar primera retroalimentaci\\u00f3n a candidato sin Preguntas T\\u00e9cnicas\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:27:58'),
(1777, 'Q', 43, 1, 1, 0, '{\"name\":\"Material de Apoyo RECLUTADOR\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 21:35:34'),
(1778, 'Q', 1, 9, 1, 0, '{\"name\":\"No se visualiza id de vacante (ATC)\",\"person\":\"Juan Barrios\"}', '::1', '2023-03-20 22:44:40'),
(1779, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-21 00:02:34'),
(1780, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-21 00:14:09'),
(1781, 'S', 1, 19, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '::1', '2023-03-21 00:22:29'),
(1782, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-21 00:22:50'),
(1783, 'S', 1, 18, 1, 0, '{\"person\":\"Juan Barrios\",\"msg\":\"\"}', '127.0.0.1', '2023-03-21 01:19:57'),
(1784, 'T', 28, 10, 1, 0, '{\"name\":\"CSI-PIP-12\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-21 02:31:45'),
(1785, 'T', 28, 10, 1, 0, '{\"name\":\"CSI-PIP-12\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-21 02:40:15'),
(1786, 'T', 28, 10, 1, 0, '{\"name\":\"CSI-PIP-12\",\"person\":\"Juan Barrios\"}', '127.0.0.1', '2023-03-21 02:42:01'),
(1787, 'S', 2, 18, 2, 0, '{\"person\":\"Karen Barreto\",\"msg\":\"\"}', '::1', '2023-03-21 02:48:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_canned_response`
--

CREATE TABLE `rcl_canned_response` (
  `canned_id` int(10) UNSIGNED NOT NULL,
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isenabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `lang` varchar(16) NOT NULL DEFAULT 'en_US',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_canned_response`
--

INSERT INTO `rcl_canned_response` (`canned_id`, `dept_id`, `isenabled`, `title`, `response`, `lang`, `notes`, `created`, `updated`) VALUES
(2, 0, 1, 'Muestra (con variables)', '<p>Hola! %{ticket.name.first}, <br /> <br />Tu ticket #%{ticket.number} creado %{ticket.create_date} está en el departamento %{ticket.dept.name}.</p> <p>Y se le está dando el seguimiento correspondiente</p>', 'en_US', NULL, '2023-03-08 12:14:27', '2023-03-12 07:59:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_config`
--

CREATE TABLE `rcl_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `namespace` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_config`
--

INSERT INTO `rcl_config` (`id`, `namespace`, `key`, `value`, `updated`) VALUES
(1, 'core', 'admin_email', 'juan.barrios@it-strategy.mx', '2023-03-08 18:14:35'),
(2, 'core', 'helpdesk_url', 'http://localhost/systpipreee/', '2023-03-08 18:14:35'),
(3, 'core', 'helpdesk_title', 'Sistema de Tickets PIP', '2023-03-08 18:14:35'),
(4, 'core', 'schema_signature', '83a22ba22b1a6a624fcb1da03882ac1b', '2023-03-08 18:14:35'),
(5, 'schedule.1', 'configuration', '{\"holidays\":[4]}', '2023-03-08 18:14:20'),
(6, 'core', 'time_format', 'hh:mm a', '2023-03-08 18:14:21'),
(7, 'core', 'date_format', 'MM/dd/y', '2023-03-08 18:14:21'),
(8, 'core', 'datetime_format', 'MM/dd/y h:mm a', '2023-03-08 18:14:21'),
(9, 'core', 'daydatetime_format', 'EEE, MMM d y h:mm a', '2023-03-08 18:14:21'),
(10, 'core', 'default_priority_id', '2', '2023-03-08 18:14:21'),
(11, 'core', 'enable_daylight_saving', '', '2023-03-08 18:14:21'),
(12, 'core', 'reply_separator', '-- reply above this line --', '2023-03-08 18:14:21'),
(13, 'core', 'isonline', '1', '2023-03-16 20:26:56'),
(14, 'core', 'staff_ip_binding', '0', '2023-03-12 04:33:36'),
(15, 'core', 'staff_max_logins', '4', '2023-03-08 18:14:22'),
(16, 'core', 'staff_login_timeout', '2', '2023-03-08 18:14:22'),
(17, 'core', 'staff_session_timeout', '0', '2023-03-16 09:00:58'),
(18, 'core', 'passwd_reset_period', '', '2023-03-08 18:14:22'),
(19, 'core', 'client_max_logins', '4', '2023-03-08 18:14:22'),
(20, 'core', 'client_login_timeout', '2', '2023-03-08 18:14:22'),
(21, 'core', 'client_session_timeout', '0', '2023-03-12 04:34:26'),
(22, 'core', 'max_page_size', '35', '2023-03-12 04:32:53'),
(23, 'core', 'max_open_tickets', '10', '2023-03-13 16:55:11'),
(24, 'core', 'autolock_minutes', '0', '2023-03-12 04:31:43'),
(25, 'core', 'default_smtp_id', '2', '2023-03-14 19:37:20'),
(26, 'core', 'use_email_priority', '0', '2023-03-08 19:16:23'),
(27, 'core', 'enable_kb', '1', '2023-03-17 04:42:16'),
(28, 'core', 'enable_premade', '1', '2023-03-08 18:14:22'),
(29, 'core', 'enable_captcha', '0', '2023-03-13 16:55:12'),
(30, 'core', 'enable_auto_cron', '0', '2023-03-08 19:16:23'),
(31, 'core', 'enable_mail_polling', '0', '2023-03-08 19:16:23'),
(32, 'core', 'send_sys_errors', '0', '2023-03-09 21:32:17'),
(33, 'core', 'send_sql_errors', '1', '2023-03-08 18:14:22'),
(34, 'core', 'send_login_errors', '1', '2023-03-08 18:14:23'),
(35, 'core', 'save_email_headers', '1', '2023-03-08 18:14:23'),
(36, 'core', 'strip_quoted_reply', '1', '2023-03-08 18:14:23'),
(37, 'core', 'ticket_autoresponder', '1', '2023-03-17 11:34:13'),
(38, 'core', 'message_autoresponder', '1', '2023-03-17 11:35:56'),
(39, 'core', 'ticket_notice_active', '1', '2023-03-08 18:14:23'),
(40, 'core', 'ticket_alert_active', '1', '2023-03-08 18:14:23'),
(41, 'core', 'ticket_alert_admin', '1', '2023-03-08 18:14:23'),
(42, 'core', 'ticket_alert_dept_manager', '1', '2023-03-08 18:14:23'),
(43, 'core', 'ticket_alert_dept_members', '0', '2023-03-09 21:32:15'),
(44, 'core', 'message_alert_active', '1', '2023-03-08 18:14:23'),
(45, 'core', 'message_alert_laststaff', '1', '2023-03-08 18:14:23'),
(46, 'core', 'message_alert_assigned', '1', '2023-03-08 18:14:23'),
(47, 'core', 'message_alert_dept_manager', '0', '2023-03-09 21:32:15'),
(48, 'core', 'note_alert_active', '0', '2023-03-09 21:32:15'),
(49, 'core', 'note_alert_laststaff', '1', '2023-03-08 18:14:23'),
(50, 'core', 'note_alert_assigned', '1', '2023-03-08 18:14:23'),
(51, 'core', 'note_alert_dept_manager', '0', '2023-03-09 21:32:16'),
(52, 'core', 'transfer_alert_active', '1', '2023-03-17 04:40:56'),
(53, 'core', 'transfer_alert_assigned', '1', '2023-03-17 04:40:56'),
(54, 'core', 'transfer_alert_dept_manager', '0', '2023-03-17 04:40:56'),
(55, 'core', 'transfer_alert_dept_members', '1', '2023-03-17 04:40:56'),
(56, 'core', 'overdue_alert_active', '1', '2023-03-08 18:14:23'),
(57, 'core', 'overdue_alert_assigned', '1', '2023-03-08 18:14:23'),
(58, 'core', 'overdue_alert_dept_manager', '1', '2023-03-08 18:14:24'),
(59, 'core', 'overdue_alert_dept_members', '1', '2023-03-17 04:40:56'),
(60, 'core', 'assigned_alert_active', '1', '2023-03-08 18:14:24'),
(61, 'core', 'assigned_alert_staff', '1', '2023-03-08 18:14:24'),
(62, 'core', 'assigned_alert_team_lead', '0', '2023-03-09 21:32:16'),
(63, 'core', 'assigned_alert_team_members', '0', '2023-03-09 21:32:16'),
(64, 'core', 'auto_claim_tickets', '1', '2023-03-08 18:14:24'),
(65, 'core', 'auto_refer_closed', '1', '2023-03-08 18:14:24'),
(66, 'core', 'collaborator_ticket_visibility', '1', '2023-03-08 18:14:24'),
(67, 'core', 'require_topic_to_close', '0', '2023-03-13 16:55:12'),
(68, 'core', 'show_related_tickets', '0', '2023-03-13 16:55:12'),
(69, 'core', 'show_assigned_tickets', '1', '2023-03-08 18:14:24'),
(70, 'core', 'show_answered_tickets', '', '2023-03-08 18:14:24'),
(71, 'core', 'hide_staff_name', '0', '2023-03-12 04:33:36'),
(72, 'core', 'disable_agent_collabs', '0', '2023-03-12 04:33:36'),
(73, 'core', 'overlimit_notice_active', '1', '2023-03-13 16:55:10'),
(74, 'core', 'email_attachments', '1', '2023-03-08 18:14:24'),
(75, 'core', 'ticket_number_format', '######', '2023-03-08 18:14:24'),
(76, 'core', 'ticket_sequence_id', '0', '2023-03-13 16:55:11'),
(77, 'core', 'queue_bucket_counts', '0', '2023-03-13 16:55:11'),
(78, 'core', 'allow_external_images', '1', '2023-03-17 04:39:51'),
(79, 'core', 'task_number_format', '#', '2023-03-08 18:14:25'),
(80, 'core', 'task_sequence_id', '2', '2023-03-08 18:14:25'),
(81, 'core', 'log_level', '2', '2023-03-08 18:14:25'),
(82, 'core', 'log_graceperiod', '12', '2023-03-08 18:14:25'),
(83, 'core', 'client_registration', 'public', '2023-03-08 18:14:25'),
(84, 'core', 'default_ticket_queue', '1', '2023-03-08 18:14:25'),
(85, 'core', 'embedded_domain_whitelist', 'youtube.com, dailymotion.com, vimeo.com, player.vimeo.com, web.microsoftstream.com', '2023-03-08 18:14:25'),
(86, 'core', 'max_file_size', '33554432', '2023-03-08 18:14:25'),
(87, 'core', 'landing_page_id', '1', '2023-03-08 18:14:25'),
(88, 'core', 'thank-you_page_id', '2', '2023-03-08 18:14:25'),
(89, 'core', 'offline_page_id', '3', '2023-03-08 18:14:25'),
(90, 'core', 'system_language', 'es_MX', '2023-03-12 11:53:19'),
(91, 'mysqlsearch', 'reindex', '0', '2023-03-08 18:21:20'),
(92, 'core', 'default_email_id', '1', '2023-03-08 18:14:35'),
(93, 'core', 'alert_email_id', '0', '2023-03-08 19:16:23'),
(94, 'core', 'default_dept_id', '1', '2023-03-08 18:14:35'),
(95, 'core', 'default_sla_id', '1', '2023-03-08 18:14:35'),
(96, 'core', 'schedule_id', '3', '2023-03-12 04:34:58'),
(97, 'core', 'default_template_id', '1', '2023-03-08 18:14:35'),
(98, 'core', 'default_timezone', 'America/Mexico_City', '2023-03-12 11:53:32'),
(99, 'plugin.1.instance.1', 'auth_name', 'Google', '2023-03-08 18:26:27'),
(100, 'plugin.1.instance.1', 'auth_target', '{\"all\":\"Agents and End Users\"}', '2023-03-08 18:26:28'),
(101, 'plugin.1.instance.1', 'auth_service', 'Google', '2023-03-08 18:26:28'),
(102, 'plugin.1.instance.1', 'auth_type', '{\"auth\":\"Authentication\"}', '2023-03-08 18:26:28'),
(103, 'plugin.1.instance.1', 'redirectUri', 'http://localhost/systpipreee/api/auth/oauth2', '2023-03-08 18:26:28'),
(104, 'plugin.1.instance.1', 'clientId', '467369229800-lqtqlv4ud6rrlhrkdra30ud2vc61hlg8.apps.googleusercontent.com', '2023-03-08 18:26:28'),
(105, 'plugin.1.instance.1', 'clientSecret', '$2$JDEkQDwCba0CYwhhW5MwrFrYszjiTsr/OTUnUMLZNkMflaDxHKBNngjxd0g8T4PiYpsnYkFwXDe5YsOLKbHaTFDm7A==', '2023-03-16 05:05:06'),
(106, 'plugin.1.instance.1', 'urlAuthorize', 'https://accounts.google.com/o/oauth2/v2/auth', '2023-03-08 18:26:28'),
(107, 'plugin.1.instance.1', 'urlAccessToken', 'https://oauth2.googleapis.com/token', '2023-03-08 18:26:29'),
(108, 'plugin.1.instance.1', 'urlResourceOwnerDetails', 'https://www.googleapis.com/oauth2/v2/userinfo', '2023-03-08 18:26:29'),
(109, 'plugin.1.instance.1', 'scopes', 'profile https://www.googleapis.com/auth/userinfo.email', '2023-03-08 18:26:29'),
(110, 'plugin.1.instance.1', 'attr_username', 'juan.barrios', '2023-03-16 05:04:35'),
(111, 'plugin.1.instance.1', 'attr_givenname', 'given_name', '2023-03-08 18:26:29'),
(112, 'plugin.1.instance.1', 'attr_surname', 'family_name', '2023-03-08 18:26:29'),
(113, 'plugin.1.instance.1', 'attr_email', 'email', '2023-03-08 18:26:29'),
(114, 'plugin.1.instance.2', 'auth_name', 'Soporte Reclu', '2023-03-08 18:29:59'),
(115, 'plugin.1.instance.2', 'auth_target', '{\"none\":\"None (Disabled)\"}', '2023-03-08 18:29:59'),
(116, 'plugin.1.instance.2', 'auth_service', '', '2023-03-08 18:29:59'),
(117, 'plugin.1.instance.2', 'auth_type', '{\"autho\":\"Authorization\"}', '2023-03-08 18:29:59'),
(118, 'plugin.1.instance.2', 'redirectUri', 'http://localhost/systpipreee/api/auth/oauth2', '2023-03-08 18:29:59'),
(119, 'plugin.1.instance.2', 'clientId', '467369229800-lqtqlv4ud6rrlhrkdra30ud2vc61hlg8.apps.googleusercontent.com', '2023-03-08 18:30:00'),
(120, 'plugin.1.instance.2', 'clientSecret', '$2$JDEkgE6MGunppFZ1GHwNzFamG+x3TCuudbXBGs3d42n/00cEzCAIGMyhvMge/O+EmM/4DrJxJ1m5Cm/EJe+jVBJWIQ==', '2023-03-16 05:05:42'),
(121, 'plugin.1.instance.2', 'urlAuthorize', 'https://accounts.google.com/o/oauth2/v2/auth', '2023-03-08 18:30:00'),
(122, 'plugin.1.instance.2', 'urlAccessToken', 'https://oauth2.googleapis.com/token', '2023-03-08 18:30:00'),
(123, 'plugin.1.instance.2', 'urlResourceOwnerDetails', 'https://www.googleapis.com/gmail/v1/users/me/profile', '2023-03-08 18:30:00'),
(124, 'plugin.1.instance.2', 'scopes', 'https://mail.google.com/', '2023-03-08 18:30:00'),
(125, 'plugin.1.instance.2', 'attr_username', 'emailaddress', '2023-03-08 18:30:00'),
(126, 'plugin.1.instance.2', 'attr_givenname', 'given_name', '2023-03-08 18:30:00'),
(127, 'plugin.1.instance.2', 'attr_surname', 'family_name', '2023-03-08 18:30:00'),
(128, 'plugin.1.instance.2', 'attr_email', 'emailaddress', '2023-03-08 18:30:00'),
(129, 'email.1.account.1', 'access_token', '$2$JDEkYwCgfJGYNLfc303+tB6nQw763ikBV+tS3s7hYESj81Y+rw1KTwbDxcoo8xSupgJ1yZw0jdH61/7Mt2PC0qrxxyZf59kXtduSehxr23ki01j/q5erhqk8WV41IVwajYYWqFx3KC/JWQtxEBcLSdA22g4zZ5NEKsKhZeT+9c+xc246vo8+MFORxxWEU0LGrJaqY/gDJslUNENmuCWnkg6Hknp9tXiczmRbTvorq30xj1zC1d9FBDYZSJ6D6Y2N7fPcssG9p8pX1KQKu2GADXsqcc9kO+A8IBOi6OTDrMbfUnLzbZvI0o5NLu/7GO2Zbnjz', '2023-03-16 05:05:59'),
(130, 'email.1.account.1', 'refresh_token', '$2$JDEkDeM4fjlUeWKPlCwmmlnmirQR85O9hk/0JDoCg5W6lgJkitvf+gsHWWw3QRvHZImwIqKcN8dBOBCeWVxoDk20jAtTHw+s4UiD2KLjJ192sCoHyNR01PWDLzLviWBx514ORqAWdIiNU2BcV2WyBoxEtn2WdJzzrzWh2CnanCCgy1Q=', '2023-03-16 05:05:59'),
(131, 'email.1.account.1', 'expires', '1678946757', '2023-03-16 05:05:59'),
(132, 'email.1.account.1', 'resource_owner_id', '', '2023-03-08 18:31:41'),
(133, 'email.1.account.1', 'resource_owner_email', 'juan.barrios@it-strategy.mx', '2023-03-08 18:31:41'),
(134, 'email.1.account.1', 'config_signature', 'a4915ede9f608b61d913ba34b0abc25a', '2023-03-16 05:05:45'),
(135, 'plugin.1.instance.3', 'auth_name', 'Soporte Reclu', '2023-03-08 18:33:15'),
(136, 'plugin.1.instance.3', 'auth_target', '{\"none\":\"None (Disabled)\"}', '2023-03-08 18:33:15'),
(137, 'plugin.1.instance.3', 'auth_service', '', '2023-03-08 18:33:15'),
(138, 'plugin.1.instance.3', 'auth_type', '{\"autho\":\"Authorization\"}', '2023-03-08 18:33:15'),
(139, 'plugin.1.instance.3', 'redirectUri', 'http://localhost/systpipreee/api/auth/oauth2', '2023-03-08 18:33:15'),
(140, 'plugin.1.instance.3', 'clientId', '467369229800-lqtqlv4ud6rrlhrkdra30ud2vc61hlg8.apps.googleusercontent.com', '2023-03-08 18:33:15'),
(141, 'plugin.1.instance.3', 'clientSecret', '$2$JDEk42DpxonvmJhcaKlOsr3sEzxt0D9kcb9gKzUVLwSuTOYMlpg24I075ugKD82QdvlXo2BNdTJyYVip6AaGrIxYnw==', '2023-03-16 05:06:30'),
(142, 'plugin.1.instance.3', 'urlAuthorize', 'https://accounts.google.com/o/oauth2/v2/auth', '2023-03-08 18:33:15'),
(143, 'plugin.1.instance.3', 'urlAccessToken', 'https://oauth2.googleapis.com/token', '2023-03-08 18:33:16'),
(144, 'plugin.1.instance.3', 'urlResourceOwnerDetails', 'https://www.googleapis.com/gmail/v1/users/me/profile', '2023-03-08 18:33:16'),
(145, 'plugin.1.instance.3', 'scopes', 'https://mail.google.com/', '2023-03-08 18:33:16'),
(146, 'plugin.1.instance.3', 'attr_username', 'emailaddress', '2023-03-08 18:33:16'),
(147, 'plugin.1.instance.3', 'attr_givenname', 'given_name', '2023-03-08 18:33:16'),
(148, 'plugin.1.instance.3', 'attr_surname', 'family_name', '2023-03-08 18:33:16'),
(149, 'plugin.1.instance.3', 'attr_email', 'emailaddress', '2023-03-08 18:33:16'),
(150, 'email.1.account.2', 'access_token', '$2$JDEkuDY4dloc3GnLSdDkdkUwhsNvW1aibAh59mxwBtJ9JKcHnc2lf+ACAQm7h5RI00383c14BYU2tkbUY+HV9DH45+9JLjxKIwQyz51wvquQbdcg6HP8V9PYImYtgVAhPj1lSQ3Icb9ZsJ1T+LqPBdwL8wVOvP4wxI02uF8jgcaST0ZBZsVOQZv9ZnmmQoubeb8xCetTwc5OyxCi4YpD2qsXS8zViHI5DZT8jN/D27efZFm0ZVqvTJdbdDeEOXGlWUUKR3XJOx00e5A8pB9cfuDfj5i9jzb5Ff38iFRSD2DEXpMUfjTeqVw3akhudl/HqKKl', '2023-03-19 07:10:20'),
(151, 'email.1.account.2', 'refresh_token', '$2$JDEkIm7H+sgBWOpa9QGNGNYgYrr1HAFVAVvK2FHQhXIF3UmAl3trZsSHk4ONjRFyGIgGTfnYrpFBLqIp7tN2Ymbm8bLLruEtCcs24GdAHJ9BWrkCACtK+sVtysx5PzHDwtQ00FRyY/rFczkzrF/lnL2vrrVfnyX0aR+gkWqx3LdGdOE=', '2023-03-19 07:10:20'),
(152, 'email.1.account.2', 'expires', '1679213419', '2023-03-19 07:10:20'),
(153, 'email.1.account.2', 'resource_owner_id', '', '2023-03-08 18:33:25'),
(154, 'email.1.account.2', 'resource_owner_email', 'juan.barrios@it-strategy.mx', '2023-03-08 18:33:25'),
(155, 'email.1.account.2', 'config_signature', 'a4915ede9f608b61d913ba34b0abc25a', '2023-03-12 06:57:12'),
(156, 'schedule.4', 'configuration', '{\"holidays\":[]}', '2023-03-08 18:46:02'),
(157, 'schedule.5', 'configuration', '{\"holidays\":[\"4\"]}', '2023-03-08 18:49:32'),
(158, 'schedule.3', 'configuration', '{\"holidays\":[]}', '2023-03-08 18:53:38'),
(160, 'core', 'verify_email_addrs', '1', '2023-03-08 19:16:23'),
(161, 'core', 'accept_unregistered_email', '1', '2023-03-08 19:16:23'),
(162, 'core', 'add_email_collabs', '1', '2023-03-08 19:16:23'),
(164, 'plugin.2.instance.4', 'show_view_audits', '1', '2023-03-08 19:20:15'),
(165, 'core', 'help_topic_sort_mode', 'm', '2023-03-09 08:35:20'),
(167, 'pwreset', 'bmaqweMYSl2uw9_4c0lz9Ca9Uo3BKoRKe0rdHIkvnvpFFJsA', 'c66', '2023-03-09 19:41:17'),
(168, 'pwreset', 'qKG0WjP7UJ3yMZWzFihPDCreJEzqvmeT3WT2OosJus6Wx80I', 'c34', '2023-03-09 19:44:29'),
(169, 'core', 'message_autoresponder_collabs', '1', '2023-03-09 21:32:15'),
(170, 'core', 'ticket_alert_acct_manager', '0', '2023-03-13 16:55:10'),
(171, 'core', 'message_alert_acct_manager', '0', '2023-03-13 16:55:10'),
(172, 'core', 'default_storage_bk', 'F', '2023-03-12 11:34:24'),
(173, 'core', 'force_https', '', '2023-03-12 04:31:43'),
(174, 'core', 'date_formats', '', '2023-03-12 04:31:43'),
(175, 'core', 'default_locale', '', '2023-03-12 11:53:40'),
(176, 'core', 'secondary_langs', '', '2023-03-14 17:46:49'),
(177, 'core', 'enable_avatars', '1', '2023-03-12 04:31:43'),
(178, 'core', 'enable_richtext', '1', '2023-03-12 04:31:43'),
(179, 'core', 'files_req_auth', '1', '2023-03-12 04:31:43'),
(180, 'core', 'allow_iframes', '', '2023-03-12 04:31:43'),
(181, 'core', 'acl', '', '2023-03-12 04:31:43'),
(182, 'core', 'acl_backend', '0', '2023-03-12 04:32:53'),
(183, 'core', 'agent_passwd_policy', ' ', '2023-03-12 04:33:35'),
(184, 'core', 'allow_pw_reset', '1', '2023-03-12 04:33:36'),
(185, 'core', 'pw_reset_window', '30', '2023-03-12 04:33:36'),
(186, 'core', 'require_agent_2fa', '0', '2023-03-13 16:54:07'),
(187, 'core', 'agent_name_format', 'full', '2023-03-12 04:33:36'),
(188, 'core', 'agent_avatar', 'local.ateam', '2023-03-17 08:14:42'),
(189, 'core', 'client_passwd_policy', ' ', '2023-03-12 04:33:48'),
(190, 'core', 'clients_only', '1', '2023-03-18 07:01:56'),
(191, 'core', 'client_verify_email', '1', '2023-03-18 09:17:21'),
(192, 'core', 'allow_auth_tokens', '1', '2023-03-18 09:17:21'),
(193, 'core', 'client_name_format', 'original', '2023-03-12 04:33:49'),
(194, 'core', 'client_avatar', 'gravatar.mm', '2023-03-12 04:34:26'),
(195, 'core', 'client_logo_id', '', '2023-03-12 04:35:50'),
(196, 'core', 'staff_logo_id', '', '2023-03-12 04:35:50'),
(197, 'core', 'staff_backdrop_id', '', '2023-03-12 04:35:50'),
(198, 'plugin.3.instance.5', 'uploadpath', 'C:\\xampp\\htdocs\\systpipreee\\adjuntos', '2023-03-12 11:33:34'),
(199, 'staff.1', 'datetime_format', '', '2023-03-12 13:29:24'),
(200, 'staff.1', 'default_from_name', 'mine', '2023-03-12 13:29:24'),
(201, 'staff.1', 'default_2fa', '', '2023-03-12 13:29:24'),
(202, 'staff.1', 'thread_view_order', '', '2023-03-12 13:29:24'),
(203, 'staff.1', 'default_ticket_queue_id', '0', '2023-03-12 13:29:24'),
(204, 'staff.1', 'reply_redirect', 'Ticket', '2023-03-12 13:29:24'),
(205, 'staff.1', 'img_att_view', 'inline', '2023-03-12 13:29:25'),
(206, 'staff.1', 'editor_spacing', 'double', '2023-03-12 13:29:25'),
(207, 'core', 'default_help_topic', '11', '2023-03-17 11:33:40'),
(208, 'core', 'default_ticket_status_id', '1', '2023-03-13 16:55:11'),
(209, 'core', 'allow_client_updates', '0', '2023-03-13 16:58:17'),
(210, 'core', 'ticket_lock', '', '2023-03-13 16:55:12'),
(211, 'email.1.account.1', 'strict_matching', '1', '2023-03-16 05:05:42'),
(212, 'email.1.account.2', 'strict_matching', '1', '2023-03-16 05:06:30'),
(213, 'core', 'restrict_kb', '', '2023-03-17 04:42:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_content`
--

CREATE TABLE `rcl_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `isactive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT 'other',
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_content`
--

INSERT INTO `rcl_content` (`id`, `isactive`, `type`, `name`, `body`, `notes`, `created`, `updated`) VALUES
(1, 1, 'landing', 'Landing', '<h1>Bienvenido al Sistema de Tickets PIP</h1> <p>Para agilizar las solicitudes de soporte y brindarle un mejor servicio, utilizamos un sistema de tickets de soporte. A cada solicitud de soporte se le asigna un número de ticket único que puede usar para rastrear el progreso y las respuestas en línea. Para su referencia, proporcionamos archivos e historial completos de todas sus solicitudes de soporte. Se requiere una dirección de correo electrónico válida para registrar un ticket.</p>', '<p>La Landing Page se refiere al contenido de la vista inicial del Portal del Cliente. La plantilla modifica el contenido que se ve arriba de los dos enlaces Abrir un nuevo ticket y Verificar el estado del ticket.</p>', '2023-03-08 12:14:25', '2023-03-12 02:45:20'),
(2, 1, 'thank-you', 'Gracias PIP-RECLU', '<div>%{ticket.name}, <br /> <br />Gracias por contactarnos. <br /> <br />Se ha creado una solicitud de ticket de soporte y un representante PIP se comunicará con usted en breve si es necesario. <br /> <br /> Soporte PIP </div>', '<p>Esta plantilla define el contenido que se muestra en la página de agradecimiento después de que un Cliente envía un nuevo ticket en el Portal del Cliente.</p>', '2023-03-08 12:14:25', '2023-03-12 02:44:35'),
(3, 1, 'offline', 'Offline', '<div><h1><span style=\"font-size:medium\">Sistema de Tickets PIP fuera de línea</span></h1> <p>Gracias por su interés en contactarnos.</p> <p>Nuestro servicio de asistencia está fuera de línea en este momento, vuelva a consultar más tarde.</p> </div>', '<p>La página Fuera de línea aparece en el Portal del cliente cuando el Sistema de Tickets PIP está fuera de línea.</p>', '2023-03-08 12:14:25', '2023-03-12 02:42:31'),
(4, 1, 'registration-staff', 'Bienvenido al Sistema de Tickets PIP', '<h3><strong>Hola %{recipient.name.first},</strong></h3> <div>Hemos creado una cuenta para ti en nuestro Sistema de Tickets PIP en %{url}.<br /> <br /> Siga el enlace a continuación para confirmar su cuenta y obtener acceso a sus tickets.<br /> <br /> <a href=\"%%7Blink%7D\">%{link}</a><br /> <br /><span style=\"font-size:small\"><i>Soporte PIP</i></span></div>', 'This template defines the initial email (optional) sent to Agents when an account is created on their behalf.', '2023-03-08 12:14:25', '2023-03-13 10:38:09'),
(5, 1, 'pwreset-staff', 'Restablecimiento de la contraseña del Sistema de Tickets PIP', '<h3><strong>Hola %{staff.name.first},</strong></h3> <div>Se ha enviado una solicitud de restablecimiento de contraseña a tu nombre para el Sistema de Tickets en %{url}.<br /> <br /> Si cree que esto se ha hecho por error, elimine e ignore este correo electrónico. Su cuenta sigue siendo segura y nadie ha tenido acceso a ella. No está bloqueado y su contraseña no se ha restablecido. Alguien podría haber ingresado por error su dirección de correo electrónico.<br /> <br /> Siga el enlace a continuación para iniciar sesión en la mesa de ayuda y cambiar su contraseña.<br /> <br /> <a href=\"%%7Blink%7D\">%{link}</a><br /> <br /> <em style=\"font-size:small\">Soporte PIP</em><br /> </div>', 'This template defines the email sent to Staff who select the <strong>Forgot My Password</strong> link on the Staff Control Panel Log In page.', '2023-03-08 12:14:25', '2023-03-13 10:48:56'),
(6, 1, 'banner-staff', 'Autenticacion requerida', '', 'This is the initial message and banner shown on the Staff Log In page. The first input field refers to the red-formatted text that appears at the top. The latter textarea is for the banner content which should serve as a disclaimer.', '2023-03-08 12:14:26', '2023-03-13 10:41:01'),
(7, 1, 'registration-client', 'Bienvenido asl Sistema de Tickets PIP de %{company.name}', '<h3><strong>Hola %{recipient.name.first},</strong></h3> <div>Hemos creado una cuenta para ti en nuestro Sistema de Tickets PIP en %{url}.<br /> <br /> Sigue el enlace a continuación para confirmar tu cuenta y obtener acceso a tus tickets.<br /> <br /> <a href=\"%%7Blink%7D\">%{link}</a><br /> <br /><span style=\"font-size:small\"><em>Soporte PIP</em></span></div>', 'This template defines the email sent to Clients when their account has been created in the Client Portal or by an Agent on their behalf. This email serves as an email address verification. Please use %{link} somewhere in the body.', '2023-03-08 12:14:26', '2023-03-17 05:56:36'),
(8, 1, 'pwreset-client', 'Acceso al Sistema de Tickets PIP de %{company.name}', '<h3><strong>Hola %{user.name.first},</strong></h3> <div>Se ha enviado una solicitud de restablecimiento de contraseña a tu nombre para el Sistema de Tickets PIP %{url}.<br /> <br /> Si cree que esto se ha hecho por error, elimine e ignore este correo electrónico. Su cuenta sigue siendo segura y nadie ha tenido acceso a ella. No está bloqueado y su contraseña no se ha restablecido. Alguien podría haber ingresado por error su dirección de correo electrónico.<br /> <br /> Siga el enlace a continuación para iniciar sesión en la mesa de ayuda y cambiar su contraseña.<br /> <br /> <a href=\"%%7Blink%7D\">%{link}</a><br /> <br /><span style=\"font-size:small\"><i>Soporte PIP</i></span></div>', 'This template defines the email sent to Clients who select the <strong>Forgot My Password</strong> link on the Client Log In page.', '2023-03-08 12:14:26', '2023-03-13 09:55:33'),
(9, 1, 'banner-client', '\"Ingresar al sistema de Tickets PIP de %{company.name}\"', '<p>Para brindarle un mejor servicio, alentamos a nuestros Clientes a registrarse para obtener acceso a una cuenta.</p>', 'This composes the header on the Client Log In page. It can be useful to inform your Clients about your log in and registration policies.', '2023-03-08 12:14:26', '2023-03-13 09:47:55'),
(10, 1, 'registration-confirm', 'Registro de cuenta', '<div><strong>Gracias por registrarse</strong><br /> <br /> Acabamos de enviarle un correo electrónico a la dirección que ingresó. Siga el enlace en el correo electrónico para confirmar su cuenta y obtener acceso a sus Tickets. </div>', 'This templates defines the page shown to Clients after completing the registration form. The template should mention that the system is sending them an email confirmation link and what is the next step in the registration process.', '2023-03-08 12:14:26', '2023-03-13 09:59:25'),
(11, 1, 'registration-thanks', '¡Cuenta confirmada!', '<div><strong>Gracias por registrarte.</strong><br /> <br /> Has confirmado tu dirección de correo electrónico y activado correctamente tu cuenta. Puedes proceder a abrir un nuevo ticket o administrar los existentes.<br /> <br /><em>Soporte PIP</em></div>', 'This template defines the content displayed after Clients successfully register by confirming their account. This page should inform the user that registration is complete and that the Client can now submit a ticket or access existing tickets.', '2023-03-08 12:14:26', '2023-03-17 05:59:46'),
(12, 1, 'access-link', '\"Enlace de acceso al Ticket [#%{ticket.number}]\"', '<h3><strong>Hola %{recipient.name.first},</strong></h3> <div>Se envió una solicitud de enlace de acceso para el ticket #%{ticket.number} a tu nombre para el Sistema de Tickets PÍP en %{url}.<br /> <br /> Siga el enlace a continuación para verificar el estado del ticket #%{ticket.number}.<br /> <br /> <a href=\"%%7Brecipient.ticket_link%7D\">%{recipient.ticket_link}</a><br /> <br /> If you <strong>did not</strong> make the request, please delete and disregard this email. Your account is still secure and no one has been given access to the ticket. Someone could have mistakenly entered your email address.<br /> <br /> --<br />Soporte PIP</div>', 'This template defines the notification for Clients that an access link was sent to their email. The ticket number and email address trigger the access link.', '2023-03-08 12:14:26', '2023-03-13 10:14:37'),
(13, 1, 'email2fa-staff', 'Autenticación de dos factores', '<h3><strong>Hola %{staff.name.first},</strong></h3> <div>Acaba de iniciar sesión en el Sistema de Tickets en %{url}.<br /> <br /> Use el código de verificación a continuación para terminar de iniciar sesión en el Sistema de Tickets.<br /> <br /> %{otp}<br /> <br /> <em style=\"font-size:small\">Soporte PIP</em><br /> </div>', 'This template defines the email sent to Staff who use Email for Two Factor Authentication', '2023-03-08 12:14:27', '2023-03-13 10:54:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_department`
--

CREATE TABLE `rcl_department` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED DEFAULT NULL,
  `tpl_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sla_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `schedule_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `autoresp_email_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `manager_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `ispublic` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `group_membership` tinyint(1) NOT NULL DEFAULT 0,
  `ticket_auto_response` tinyint(1) NOT NULL DEFAULT 1,
  `message_auto_response` tinyint(1) NOT NULL DEFAULT 0,
  `path` varchar(128) NOT NULL DEFAULT '/',
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_department`
--

INSERT INTO `rcl_department` (`id`, `pid`, `tpl_id`, `sla_id`, `schedule_id`, `email_id`, `autoresp_email_id`, `manager_id`, `flags`, `name`, `signature`, `ispublic`, `group_membership`, `ticket_auto_response`, `message_auto_response`, `path`, `updated`, `created`) VALUES
(1, NULL, 1, 1, 3, 1, 1, 1, 5, 'PIP-Reclutamiento', '<p>Soporte PIP</p>', 1, 1, 1, 1, '/1/', '2023-03-09 00:40:35', '2023-03-08 12:13:55'),
(4, NULL, 0, 2, 5, 1, 1, 4, 5, 'Reclutamiento', '', 1, 1, 1, 1, '/4/', '2023-03-16 14:26:03', '2023-03-08 13:02:23'),
(5, NULL, 0, 0, 0, 1, 0, 0, 4, 'OPERACIONES', '', 1, 1, 1, 1, '/5/', '2023-03-09 15:22:09', '2023-03-09 15:22:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_draft`
--

CREATE TABLE `rcl_draft` (
  `id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL,
  `namespace` varchar(32) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `extra` text DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_draft`
--

INSERT INTO `rcl_draft` (`id`, `staff_id`, `namespace`, `body`, `extra`, `created`, `updated`) VALUES
(1, 2, 'ticket.client.7op2n1k10tae', '<p>gfjghjg</p>', NULL, '2023-03-08 19:45:45', NULL),
(4, 65, 'ticket.client.2iodg1umsnic', '<p>gdfgsdfg</p>', NULL, '2023-03-09 20:20:21', NULL),
(7, 65, 'ticket.client.dkmae8iimq1v', '<p>RGFG</p>', NULL, '2023-03-09 21:42:35', NULL),
(8, 65, 'ticket.client.g3urhme4g98o', 'GDFGHFGD<p></p>', NULL, '2023-03-09 21:45:22', NULL),
(9, 65, 'ticket.client.htf043082q8c', '<p>ss</p>', NULL, '2023-03-10 02:03:50', NULL),
(29, 2147483648, 'ticket.client.glhesi6c0htk', '<p>fghnfgnghfghfghgfhgfhfghfghfghfghfghfghfghfghfghfghfghfghfghfghfg</p>', NULL, '2023-03-13 21:48:15', NULL),
(30, 1, 'tpl.task.activity.alert.1', '<h3><strong>Hi %{recipient.name},</strong></h3>\n<p> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> updated: %{activity.description} <br> <br> %{message} <br> <br> </p><hr>\n<div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system</div>\n<p> <em style=\"color:rgb(127,127,127);font-size:small\">Your friendly Customer Support System</em><br> </p><figure><lt-highlighter contenteditable=\"false\" data-lt-linked=\"1\" style=\"display: none; z-index: 1 !important;\"><lt-div spellcheck=\"false\" class=\"lt-highlighter__wrapper\" style=\"width: 0px !important; height: 21px !important; transform: none !important; transform-origin: 0px 10.5px !important; zoom: 1 !important; margin-left: -9999px !important;\"><lt-div class=\"lt-highlighter__scroll-element\" style=\"top: 0px !important; left: 0px !important; width: 0px !important; height: 21px !important;\"></lt-div></lt-div></lt-highlighter><img src=\"/systpipreee/file.php?key=b56944cb4722cc5cda9d1e23a3ea7fbc&expires=1679011200&signature=52b77f1424ed7d6b3c2c7cbb11d65ae89a88a14c&disposition=inline\" data-cid=\"b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" data-image=\"inom90xdx9t3\"></figure>', NULL, '2023-03-16 05:00:04', NULL),
(37, 67, 'ticket.client.6smq2c7bh8vr', '<p>El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada. <br /></p>', NULL, '2023-03-17 07:27:21', '2023-03-17 07:30:51'),
(48, 68, 'ticket.client.jkad1e6sabn8', '<p>Al intentar ingresar a la plataforma de reclutamiento con mis credenciales jerson.rosas@talent-group.mx je031286 me aparece un error por lo que no me deja acceder</p>', NULL, '2023-03-19 06:57:13', NULL),
(53, 68, 'ticket.client.q1b3qgco0jlg', '', NULL, '2023-03-19 09:57:32', NULL),
(58, 68, 'ticket.client.q1b3qgco0jlg', 'SE GUARDA TU TEXTO AQUÍ Y ESTARÁ DISPONIBLE SI CIERRAS TU VENTANA POR ACCIDENTE, SI CIERRAS SESIÓN SE DESCARTA', NULL, '2023-03-19 10:06:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_email`
--

CREATE TABLE `rcl_email` (
  `email_id` int(11) UNSIGNED NOT NULL,
  `noautoresp` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `priority_id` int(11) UNSIGNED NOT NULL DEFAULT 2,
  `dept_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_email`
--

INSERT INTO `rcl_email` (`email_id`, `noautoresp`, `priority_id`, `dept_id`, `topic_id`, `email`, `name`, `notes`, `created`, `updated`) VALUES
(1, 0, 2, 1, 0, 'soportereclu@gmail.com', 'Soporte Reclu', NULL, '2023-03-08 12:14:34', '2023-03-08 12:27:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_email_account`
--

CREATE TABLE `rcl_email_account` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED NOT NULL,
  `type` enum('mailbox','smtp') NOT NULL DEFAULT 'mailbox',
  `auth_bk` varchar(128) NOT NULL,
  `auth_id` varchar(16) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `host` varchar(128) NOT NULL DEFAULT '',
  `port` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `protocol` enum('IMAP','POP','SMTP','OTHER') NOT NULL DEFAULT 'OTHER',
  `encryption` enum('NONE','AUTO','SSL') NOT NULL DEFAULT 'AUTO',
  `fetchfreq` tinyint(3) UNSIGNED NOT NULL DEFAULT 5,
  `fetchmax` tinyint(4) UNSIGNED DEFAULT 30,
  `postfetch` enum('archive','delete','nothing') NOT NULL DEFAULT 'nothing',
  `archivefolder` varchar(255) DEFAULT NULL,
  `allow_spoofing` tinyint(1) UNSIGNED DEFAULT 0,
  `num_errors` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_error_msg` tinytext DEFAULT NULL,
  `last_error` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_email_account`
--

INSERT INTO `rcl_email_account` (`id`, `email_id`, `type`, `auth_bk`, `auth_id`, `active`, `host`, `port`, `folder`, `protocol`, `encryption`, `fetchfreq`, `fetchmax`, `postfetch`, `archivefolder`, `allow_spoofing`, `num_errors`, `last_error_msg`, `last_error`, `last_activity`, `created`, `updated`) VALUES
(1, 1, 'mailbox', 'oauth2:gmail', '2', 0, 'imap.gmail.com', 993, NULL, 'IMAP', 'AUTO', 5, 30, 'nothing', NULL, 0, 0, NULL, '2023-03-08 12:31:11', NULL, '2023-03-08 12:27:27', '2023-03-08 13:17:33'),
(2, 1, 'smtp', 'oauth2:gmail', '3', 1, 'ssl://smtp.gmail.com', 465, NULL, 'SMTP', 'AUTO', 5, 30, 'nothing', NULL, 0, 0, NULL, '2023-03-08 12:33:16', NULL, '2023-03-08 12:27:27', '2023-03-08 13:18:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_email_template`
--

CREATE TABLE `rcl_email_template` (
  `id` int(11) UNSIGNED NOT NULL,
  `tpl_id` int(11) UNSIGNED NOT NULL,
  `code_name` varchar(32) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_email_template`
--

INSERT INTO `rcl_email_template` (`id`, `tpl_id`, `code_name`, `subject`, `body`, `notes`, `created`, `updated`) VALUES
(1, 1, 'ticket.autoresp', 'Ticket de soporte abierto [#%{ticket.number}]', '<h3><strong>Estimad(a) %{recipient.name.first},</strong></h3> <p>Se ha creado y asignado una solicitud de soporte #%{ticket.number}. Un representante se comunicará con usted lo antes posible. Puedes <a href=\"%%7Brecipient.ticket_link%7D\">ver el progreso de este Ticket en línea.</a></p> <p><br /> </p><div style=\"color:rgb(127, 127, 127)\">Soporte PIP, <br /> %{signature} </div> <hr /> <div style=\"color:rgb(127, 127, 127);font-size:small\"><em>Si desea proporcionar comentarios o información adicional, responda a este correo electrónico o <a href=\"%%7Brecipient.ticket_link%7D\"><span style=\"color:rgb(84, 141, 212)\">inicie sesión en su cuenta</span></a> para obtener un archivo completo de sus solicitudes de soporte.</em></div>', NULL, '2023-03-08 12:14:28', '2023-03-13 02:32:09'),
(2, 1, 'ticket.autoreply', 'Re: %{ticket.subject} [#%{ticket.number}]', '<h3><strong>Estimad(a) %{recipient.name.first},</strong></h3> <p>Se ha creado una solicitud de soporte y se le ha asignado un ticket <a href=\"%%7Brecipient.ticket_link%7D\">#%{ticket.number}</a> con la siguiente respuesta automática <br /> <br /> Tema: <strong>%{ticket.topic.name}</strong> <br />Asunto: <strong>%{ticket.subject}</strong> <br /> <br /> %{response} <br /> <br /> </p><div style=\"color:rgb(127, 127, 127)\"><br /> %{signature}</div> <hr /> <div style=\"color:rgb(127, 127, 127);font-size:small\"><em>Esperamos que esta respuesta haya respondido suficientemente a sus preguntas. Si desea proporcionar comentarios o información adicional, responda a este correo electrónico o <a href=\"%%7Brecipient.ticket_link%7D\"><span style=\"color:rgb(84, 141, 212)\">inicie sesión en su cuenta</span></a> para obtener un archivo completo de sus solicitudes de soporte.</em></div>', NULL, '2023-03-08 12:14:28', '2023-03-13 02:22:07'),
(3, 1, 'message.autoresp', 'Confirmación de mensaje', '<h3><strong>Estimado %{recipient.name.first},</strong></h3> <p>Su respuesta a la solicitud de soporte <a href=\"%%7Brecipient.ticket_link%7D\">#%{ticket.number}</a> ha sido visualizada.<br /> <br /> <br /> Soporte PIP</p> <hr /> <div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>Puedes ver el progreso de la solicitud de soporte <a href=\"%%7Brecipient.ticket_link%7D\">iniciando sesión aquí.</a></em> </div>', NULL, '2023-03-08 12:14:29', '2023-03-17 05:35:41'),
(4, 1, 'ticket.notice', '%{ticket.subject} [#%{ticket.number}]', '<h3><strong>Estimad(a) %{recipient.name.first},</strong></h3> <p>Nuestro equipo de atención al cliente ha creado un ticket, <a href=\"%%7Brecipient.ticket_link%7D\">#%{ticket.number}</a> a su nombre, con los siguientes detalles y resumen: <br /> <br /> Tema: <strong>%{ticket.topic.name}</strong> <br />Asunto: <strong>%{ticket.subject}</strong> <br /> <br /> %{message} <br /> <br /> %{response} <br /> <br /> Si es necesario, un representante se comunicará con usted lo antes posible. También puedes <a href=\"%%7Brecipient.ticket_link%7D\">ver el progreso de este ticket en línea.</a><br /> <br /> </p> <div style=\"color:rgb(127, 127, 127)\">Soporte PIP,<br /><br /></div> <hr /> <div style=\"color:rgb(127, 127, 127);font-size:small\"><em>Si desea proporcionar comentarios o información adicional, responda a este correo electrónico o <a href=\"%%7Brecipient.ticket_link%7D\"><span style=\"color:rgb(84, 141, 212)\">inicie sesión en su cuenta</span></a> para obtener un archivo completo de sus solicitudes de soporte.</em></div>', NULL, '2023-03-08 12:14:29', '2023-03-17 05:34:56'),
(5, 1, 'ticket.overlimit', 'Límite de tickets abiertos alcanzado', '<h3><strong>Estimad(a) %{ticket.name.first},</strong></h3> <p>Ha alcanzado el número máximo de tickets abiertos permitidos. Para poder abrir otro ticket, uno de tus tickets pendientes debe estar cerrado. Para actualizar o agregar comentarios a un ticket abierto, simplemente <a href=\"%%7Burl%7D/tickets.php?e=%%7Bticket.email%7D\">inicie sesión en nuestro Sistema de Tickets.</a>. <br /> <br />Gracias,<br />Soporte PIP</p>', NULL, '2023-03-08 12:14:29', '2023-03-13 02:45:40'),
(6, 1, 'ticket.reply', 'Re: %{ticket.subject} [#%{ticket.number}]', '<h3><strong>Estimad(a) %{recipient.name.first},</strong></h3> <p>%{response} <br /> <br /> </p> <div style=\"color:rgb(127, 127, 127)\"><br /> %{signature} </div> <hr /> <div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>Esperamos que esta respuesta haya respondido suficientemente a sus preguntas. Si no, por favor no envíe otro correo electrónico. En su lugar, responda a este correo electrónico o <a href=\"%%7Brecipient.ticket_link%7D\" style=\"color:rgb(84, 141, 212)\">inicie sesión en su cuenta</a> para un archivo completo de todas sus solicitudes y respuestas de soporte.</em></div>', NULL, '2023-03-08 12:14:29', '2023-03-13 02:50:42'),
(7, 1, 'ticket.activity.notice', 'Re: %{ticket.subject} [#%{ticket.number}]', '<h3><strong>Estimad(a) %{recipient.name.first},</strong></h3> <div><em>%{poster.name}</em> acaba de registrar un mensaje en un ticket en el cual participas. </div> <p><br /> %{message} <br /> <br /> </p><hr /> <div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>Estás recibiendo este correo electrónico porque eres un colaborador en el Ticket <a href=\"%%7Brecipient.ticket_link%7D\" style=\"color:rgb(84, 141, 212)\">#%{ticket.number}</a>. Para participar, simplemente responda a este correo electrónico o <a href=\"%%7Brecipient.ticket_link%7D\" style=\"color:rgb(84, 141, 212)\">da clic aquí</a> para obtener un archivo completo del hilo (respuestas) del Ticket.</em> </div>', NULL, '2023-03-08 12:14:29', '2023-03-13 02:10:40'),
(8, 1, 'ticket.alert', 'Alerta de nuevo ticket', '<h2>Hola %{recipient.name},</h2> <p>Nuevo ticket #%{ticket.number} creado<br /> <br /> </p><table><tbody><tr><td><b>De</b>:</td> <td>%{ticket.name}</td> </tr> <tr><td><strong>Departament</strong>:</td> <td>%{ticket.dept.name}</td> </tr> </tbody> </table> <p><br /> %{message} <br /> <br /> </p><hr /> <div>Para ver o responder al ticket, por favor, <a href=\"%%7Bticket.staff_link%7D\">inicie sesión</a> en el Sistema de Tickets PIP.</div> <p><em style=\"font-size:small\">Soporte PIP</em><br /> </p>', NULL, '2023-03-08 12:14:29', '2023-03-13 03:14:01'),
(9, 1, 'message.alert', 'Alerta de mensaje nuevo', '<h3><strong>Hola %{recipient.name},</strong></h3> <p>Nuevo mensaje adjunto al ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> <br /> <br /> </p> <table><tbody><tr><td><strong>De</strong>:</td> <td>%{poster.name}</td> </tr> <tr><td><strong>Departamento</strong>:</td> <td>%{ticket.dept.name}</td> </tr> </tbody> </table> <p><br /> %{message} <br /> <br /> </p> <hr /> <div>Para ver o responder al ticket, por favor <a href=\"%%7Bticket.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">inicie sesión</span></a> en el sistema de tickets de soporte.</div> <p><em style=\"color:rgb(127,127,127);font-size:small\">Soporte PIP</em><br /> </p>', NULL, '2023-03-08 12:14:30', '2023-03-13 03:10:19'),
(10, 1, 'note.alert', 'Nueva alerta de actividad interna', '<h3><strong>Hola %{recipient.name},</strong></h3> <p>Un agente ha registrado actividad en el ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> <br /> <br /> </p> <table><tbody><tr><td><strong>De</strong>:</td> <td>%{note.poster}</td> </tr> <tr><td><strong>Titulo</strong>:</td> <td>%{note.title}</td> </tr> </tbody> </table> <p><br /> %{note.message} <br /> <br /> </p> <hr /> <p>Para ver/responder al ticket, por favor <a href=\"%%7Bticket.staff_link%7D\">inicie sesión</a> al Sistema de Tickets PIP.<br /> <br /><span style=\"font-size:small\"><em>Soporte PIP</em></span></p>', NULL, '2023-03-08 12:14:30', '2023-03-13 02:57:11'),
(11, 1, 'assigned.alert', 'Ticket asignado a ti', '<h3><strong>Hola %{assignee.name.first},</strong></h3> <p>El Ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> te ha sido asignado por %{assigner.name.short} <br /> <br /> </p> <table><tbody><tr><td><strong>De</strong>:</td> <td>%{ticket.name}</td> </tr> <tr><td><strong>Asunto</strong>:</td> <td>%{ticket.subject}</td> </tr> </tbody> </table> <p><br /> %{comments} <br /> <br /> </p> <hr /> <div>Para ver/responder al ticket, por favor, <a href=\"%%7Bticket.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">inicie sesión</span></a> en el Sistema de Tickets PIP</div> <p><span style=\"font-size:small\"><i>Soporte PIP</i></span></p> ', NULL, '2023-03-08 12:14:30', '2023-03-13 03:20:36'),
(12, 1, 'transfer.alert', 'El Ticket #%{ticket.number} ha sido transferido al departamento de - %{ticket.dept.name}', '<h3>Hola %{recipient.name},</h3> <p>El Ticket <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> ha sido transferido al departamento %{ticket.dept.name} por <strong>%{staff.name.short}</strong> <br /> <br /> </p> <blockquote>%{comments} </blockquote> <hr /> <div>Para ver/responder al ticket, por favor, <a href=\"%%7Bticket.staff_link%7D\">inicie sesión</a> en el Sistema de Tickets PIP.</div> <p><em style=\"font-size:small\">Soporte PIP</em><br /> </p>', NULL, '2023-03-08 12:14:30', '2023-03-13 03:23:22'),
(13, 1, 'ticket.overdue', 'Alerta de ticket caducado', '<h3><strong>Hola %{recipient.name}</strong>,</h3> <p>El ticket, <a href=\"%%7Bticket.staff_link%7D\">#%{ticket.number}</a> está seriamente atrasado. <br /> <br /> Todos debemos trabajar arduamente para garantizar que todos los tickets se atiendan de manera oportuna. <br /> <br />Soporte PIP</p><hr /> <div>Para ver o responder al ticket, <a href=\"%%7Bticket.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">inicie sesión</span></a> en el Sistema de Tickets PIP. Recibes este aviso porque el ticket se te asigna directamente a ti, a un equipo o departamento del que eres miembro.<br /> </div> ', NULL, '2023-03-08 12:14:30', '2023-03-13 03:16:56'),
(14, 1, 'task.alert', 'New Task Alert', '<h2>Hi %{recipient.name},</h2> New task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> created <br /> <br /> <table><tbody><tr><td><strong>Department</strong>: </td> <td>%{task.dept.name} </td> </tr> </tbody> </table> <br /> %{task.description} <br /> <br /> <hr /> <div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\">login</a> to the support system</div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /> <a href=\"https://osticket.com/\"><img width=\"126\" height=\"19\" style=\"width:126px\" alt=\"Powered By osTicket\" src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" /></a>', NULL, '2023-03-08 12:14:30', '2023-03-08 12:14:30'),
(15, 1, 'task.activity.notice', 'Re: %{task.title} [#%{task.number}]', '<h3><strong>Dear %{recipient.name.first},</strong></h3> <div><em>%{poster.name}</em> just logged a message to a task in which you participate. </div> <br /> %{message} <br /> <br /> <hr /> <div style=\"color:rgb(127, 127, 127);font-size:small;text-align:center\"><em>You\'re getting this email because you are a collaborator on task #%{task.number}. To participate, simply reply to this email.</em> </div>', NULL, '2023-03-08 12:14:31', '2023-03-08 12:14:31'),
(16, 1, 'task.activity.alert', 'Task Activity [#%{task.number}] - %{activity.title}', '<h3><strong>Hi %{recipient.name},</strong></h3> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> updated: %{activity.description} <br /> <br /> %{message} <br /> <br /> <hr /> <div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system</div> <em style=\"color:rgb(127,127,127);font-size:small\">Your friendly Customer Support System</em><br /> <img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />', NULL, '2023-03-08 12:14:31', '2023-03-08 12:14:31'),
(17, 1, 'task.assignment.alert', 'Task Assigned to you', '<h3><strong>Hi %{assignee.name.first},</strong></h3> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> has been assigned to you by %{assigner.name.short} <br /> <br /> %{comments} <br /> <br /> <hr /> <div>To view/respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system</div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /> <img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" alt=\"Powered by osTicket\" width=\"126\" height=\"19\" style=\"width:126px\" />', NULL, '2023-03-08 12:14:31', '2023-03-08 12:14:31'),
(18, 1, 'task.transfer.alert', 'Task #%{task.number} transfer - %{task.dept.name}', '<h3>Hi %{recipient.name},</h3> Task <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> has been transferred to the %{task.dept.name} department by <strong>%{staff.name.short}</strong> <br /> <br /> <blockquote>%{comments} </blockquote> <hr /> <div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\">login</a> to the support system. </div> <em style=\"font-size:small\">Your friendly Customer Support System</em> <br /> <a href=\"https://osticket.com/\"><img width=\"126\" height=\"19\" alt=\"Powered By osTicket\" style=\"width:126px\" src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" /></a>', NULL, '2023-03-08 12:14:31', '2023-03-08 12:14:31'),
(19, 1, 'task.overdue.alert', 'Stale Task Alert', '<h3><strong>Hi %{recipient.name}</strong>,</h3> A task, <a href=\"%%7Btask.staff_link%7D\">#%{task.number}</a> is seriously overdue. <br /> <br /> We should all work hard to guarantee that all tasks are being addressed in a timely manner. <br /> <br /> Signed,<br /> %{task.dept.manager.name} <hr /> <div>To view or respond to the task, please <a href=\"%%7Btask.staff_link%7D\"><span style=\"color:rgb(84, 141, 212)\">login</span></a> to the support system. You\'re receiving this notice because the task is assigned directly to you or to a team or department of which you\'re a member.</div> <em style=\"font-size:small\">Your friendly <span style=\"font-size:smaller\">(although with limited patience)</span> Customer Support System</em><br /> <img src=\"cid:b56944cb4722cc5cda9d1e23a3ea7fbc\" height=\"19\" alt=\"Powered by osTicket\" width=\"126\" style=\"width:126px\" />', NULL, '2023-03-08 12:14:31', '2023-03-08 12:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_email_template_group`
--

CREATE TABLE `rcl_email_template_group` (
  `tpl_id` int(11) NOT NULL,
  `isactive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL DEFAULT '',
  `lang` varchar(16) NOT NULL DEFAULT 'en_US',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_email_template_group`
--

INSERT INTO `rcl_email_template_group` (`tpl_id`, `isactive`, `name`, `lang`, `notes`, `created`, `updated`) VALUES
(1, 1, 'Templates PIP-Reclutamiento', 'es_MX', '<p>Default osTicket templates</p>', '2023-03-08 12:14:28', '2023-03-13 03:50:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_event`
--

CREATE TABLE `rcl_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_event`
--

INSERT INTO `rcl_event` (`id`, `name`, `description`) VALUES
(1, 'created', NULL),
(2, 'closed', NULL),
(3, 'reopened', NULL),
(4, 'assigned', NULL),
(5, 'released', NULL),
(6, 'transferred', NULL),
(7, 'referred', NULL),
(8, 'overdue', NULL),
(9, 'edited', NULL),
(10, 'viewed', NULL),
(11, 'error', NULL),
(12, 'collab', NULL),
(13, 'resent', NULL),
(14, 'deleted', NULL),
(15, 'merged', NULL),
(16, 'unlinked', NULL),
(17, 'linked', NULL),
(18, 'login', NULL),
(19, 'logout', NULL),
(20, 'message', NULL),
(21, 'note', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_faq`
--

CREATE TABLE `rcl_faq` (
  `faq_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ispublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `keywords` tinytext DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_faq`
--

INSERT INTO `rcl_faq` (`faq_id`, `category_id`, `ispublished`, `question`, `answer`, `keywords`, `notes`, `created`, `updated`) VALUES
(1, 1, 1, 'No se visualiza id de vacante (ATC)', '<p dir=\"ltr\">Si después de que Cliente o solicitante haya generado una solicitud y esta no es visible desde tu tablero de rol ATC <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FAtencion-Cliente&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw2Gslo0C66VOZpgZ819YOEu\" target=\"_blank\">https://reclutamiento.tiii.mx/Atencion-Cliente,</a> te invitamos a validar que:</p> <hr /> <ul><li dir=\"ltr\"><p dir=\"ltr\">Revisar que tengamos la alerta de Generación de Nueva Vacante como se muestra <a href=\"https://docs.google.com/presentation/d/1GKXWeQDGRYPgY31VI1YdNlsTXDuB0rkF/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">en este archivo</a></p></li><li dir=\"ltr\"><p dir=\"ltr\">Validar si está autorizada en caso de que el proyecto donde fue generada cuente con autorización necesaria de un Autorizador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que nuestro usuario esté asignado a la marca correctamente en plataforma</p></li></ul> <p dir=\"ltr\">En caso de que ya hayas validado la información anterior y presentes aún el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-18 01:12:55', '2023-03-20 22:44:40'),
(3, 1, 1, 'Rechacé una vacante y ya no puedo visualizarla', '<p dir=\"ltr\">En caso de que hayas rechazado una solicitud y no se muestre en tu tablero, favor de validar:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la solicitud ya haya sido modificada por Cliente o Solicitante</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que el estatus de la solicitud sea En Validación de la Solicitud y no tenga estatus de Modificación Solicitud como se muestra <a href=\"https://docs.google.com/presentation/d/1JTQVwndkJSpRKQNrv3xeCYA8xMe7708Y/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">en este archivo</a></p></li><li dir=\"ltr\"><p dir=\"ltr\">Que hayamos recibido la siguiente notificación <a href=\"https://docs.google.com/presentation/d/1lexsmCu2hNxqKLaNimKAorrIjsxLADjX/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">Modificación Vacante</a></p></li></ul> <p dir=\"ltr\">En caso de contar con la alerta y sigues presentando problemas, favor de solicitar apoyo a soporte Reclu a través de esta plataforma para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 18:58:12', '2023-03-20 18:59:46'),
(4, 1, 1, 'No puedo asignar una vacante a Reclutador', '<p dir=\"ltr\">En caso de que no puedas visualizar un Reclutador en el desplegable al momento de asignar una solicitud <a href=\"https://docs.google.com/presentation/d/1g7JQndETjhnCAZy9ALpZhACDIw7fRvnY/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">como en el siguiente archivo</a>, favor de validar:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que el usuario cuente con el rol Reclutador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que el reclutador cuente con la marca asignada al momento de que la solicitud haya sido generada</p></li></ul> <p dir=\"ltr\">En caso de que el usuario si cuente con el rol y marca asignada, favor de solicitar apoyo a soporte Reclu a través de esta plataforma para que se te brinde la atención necesaria. </p>', ' ', NULL, '2023-03-20 19:02:08', '2023-03-20 19:02:08'),
(5, 1, 1, 'No puedo solicitar cartera', '<p>En caso de que no tengas la opción habilitada de solicitar cartera, recuerda que debe haber como mínimo un candidato descartado, <a href=\"https://docs.google.com/presentation/d/16Ngg9vqH4LkH5S0RzGBsvEQldwwQER-D/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">como en el ejemplo de este archivo</a>.</p>', ' ', NULL, '2023-03-20 19:03:28', '2023-03-20 19:03:28'),
(6, 1, 1, 'No visualizo candidatos en vacantes (ATC)', '<p dir=\"ltr\">En caso de que no se visualicen candidatos en una vacante, primero debemos asegurarnos de:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que el reclutador te haya habilitado candidatos</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que al entrar a detalle de la solicitud no se muestre una pantalla blanca, esto significa falta de privilegios para visualizar la marca</p></li></ul> <p dir=\"ltr\">En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria. </p>', ' ', NULL, '2023-03-20 19:07:15', '2023-03-20 19:20:35'),
(7, 1, 1, 'Material de Apoyo ATC', '<p dir=\"ltr\">En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro <a href=\"https://drive.google.com/file/d/1PaGmJ-dA6JISGOw0_ctbY-4BGFeprzLR/view?usp=share_link\" target=\"_blank\">MANUAL DE ROL </a><a href=\"https://drive.google.com/file/d/1PaGmJ-dA6JISGOw0_ctbY-4BGFeprzLR/view?usp=share_link\" target=\"_blank\">ATC</a> o con soporte Reclu.</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Ana Karen Barreto Rodríguez</p> <p dir=\"ltr\">ana.barreto@it-strategy.mx</p> <p dir=\"ltr\">55 5415 8985</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Axell Sosa Rodríguez</p> <p dir=\"ltr\">Axell.sosa@it-strategy.mx</p> <p dir=\"ltr\">55 1814 7476</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Juan Carlos Barrios Calbillo</p> <p dir=\"ltr\">juan.barrios@it-strategy.mx</p> <p dir=\"ltr\">55 1911 4644</p> <p dir=\"ltr\">soporte.reclutamiento@3ti.mx</p>', ' ', NULL, '2023-03-20 19:08:12', '2023-03-20 19:29:00'),
(8, 2, 1, 'No se visualiza id de vacante (CLIENTE)', '<p dir=\"ltr\">Si después de crear una solicitud esta no es visible desde tu tablero de rol Cliente <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FSolicitudes-Cliente&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw3NC3BJ_E1VKC3f4_nsTmHd\" target=\"_blank\">https://reclutamiento.tiii.mx/Solicitudes-Cliente</a> es muy probable que uno de los siguientes puntos no se esté cumpliendo</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido autorizada por el Autorizador asignado al proyecto</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido validada por el usuario Atención a Clientes asignado al proyecto</p></li></ul> <p dir=\"ltr\">En caso de que ya hayas validado con ATC o el autorizador del proyecto, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:10:52', '2023-03-20 19:10:52'),
(9, 2, 1, 'No se muestra listado de Plantillas', '<p>Al momento de crear una solicitud suele haber ocasiones en las que después de seleccionar un proyecto, este no arroje el listado de plantillas correspondientes al proyecto, este error puede llega a suceder por cambios en la configuración de una plantilla, para validar que no se trate de un error, ingresa a <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FPlantillas&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw1-AXqcAi6UqF7wcrCVXd0V\" target=\"_blank\">https://reclutamiento.tiii.mx/Plantillas</a> y revisa que se encuentre en tu tablero la plantilla solicitada, <a href=\"https://docs.google.com/presentation/d/1efkq2U3FDvm95k0UDLuutmj75GMHAtyh/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">como se muestra en este enlace</a>, en caso de que se muestre favor de borrar caché y volver a intentar.</p>', ' ', NULL, '2023-03-20 19:13:52', '2023-03-20 19:13:52'),
(10, 2, 1, 'No aparece localidad en el desplegable (CLIENTE)', '<p>Para estos casos es importarte revisar que el proyecto ya cuente con la localidad creada en RHIN y Seguridad Corporativa, en caso de no contar con la información, pide a soporte Reclu el asesoramiento para consultar esta información, en caso de que la localidad sea nueva, <a href=\"https://docs.google.com/presentation/d/1Gvp0PzGGuhjHQefrdF_NX0sR4JTPje46/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de revisar el siguiente archivo</a>.</p>', ' ', NULL, '2023-03-20 19:14:50', '2023-03-20 19:14:50'),
(11, 2, 1, 'No aparece Supervisor en desplegable de localidad (CLIENTE)', '<p dir=\"ltr\">Cuando no aparezca un Supervisor/Usuario el cual será el encargado de dar retro alimentación a Candidatos de una vacante, es importante validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">El usuario tenga acceso a la plataforma y el rol de Cliente o Cliente Entrevistador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que el usuario cuente con la marca asignada y/o proyecto correctamente</p></li></ul> <p dir=\"ltr\">En caso de que el usuario cumpla con estos puntos, favor de acercarse a soporte Reclu para soporte. En caso de ser usuario de nuevo ingreso, <a href=\"https://docs.google.com/presentation/d/12GY6GxWty1vlen92ATtaGDo6wLpscUKF/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de leer el siguiente archivo</a>.</p>', ' ', NULL, '2023-03-20 19:15:38', '2023-03-20 19:33:24'),
(12, 2, 1, 'No se puede editar plantilla', '<p>Los permisos de plantillas van seguidos de la creación de una plantilla y su asignación a un proyecto en específico, antes de solicitar soporte, favor de revisar <a href=\"https://docs.google.com/presentation/d/1efkq2U3FDvm95k0UDLuutmj75GMHAtyh/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">el archivo de este enlace</a>, en caso de que se visualice la plantilla en tu tablero, pero no cuentes con permisos de edición, <a href=\"https://docs.google.com/presentation/d/1MMpyoZutMtHJSdNk49Vraf8HSqPyh3p_/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de leer el siguiente archivo</a>.</p>', ' ', NULL, '2023-03-20 19:16:36', '2023-03-20 19:16:36'),
(13, 2, 1, 'No visualizo candidatos en vacantes (CLIENTE)', '<p dir=\"ltr\">En caso de que no se visualicen contactos en una vacante, primero debemos asegurarnos de que este haya pasado por los filtros siguientes:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Haber sido habilitado a ATC por reclutador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Haber recibido la notificación de que ATC te ha habilitado un candidato como el ejemplo <a href=\"https://docs.google.com/presentation/d/10SFROjvH2z01-KF7rFbMHIGqRSueMDHt/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">de este enlace</a></p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos, favor de pedir retroalimentación al equipo de ATC o Autorizador designado.</p>', ' ', NULL, '2023-03-20 19:19:44', '2023-03-20 19:19:44'),
(14, 2, 1, 'No puedo Programar una Entrevista con Candidato', '<p dir=\"ltr\">Si se llega a presentar el caso donde no se pueda asignar una entrevista a un candidato, debemos verificar los siguientes puntos:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la entrevista generada no sea en el día actual en la que la estes programando</p></li><li dir=\"ltr\"><p dir=\"ltr\">Haberle asignado a el candidato el estatus de viable en la primer retroalimentación</p></li><li dir=\"ltr\"><p dir=\"ltr\">En caso de haber dado un estatus de Descartado o No Localizado verificar que se haya revertido el estatus correctamente</p></li></ul> <p dir=\"ltr\">Después de haber validado estos puntos y sigas sin poder generar la entrevista favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:21:37', '2023-03-20 19:21:37'),
(15, 2, 1, 'No se visualiza candidatos para retro final (CLIENTE)', '<p dir=\"ltr\">Cuando no se visualizan candidatos en una solicitud en el proceso de retro final debemos validar los siguientes puntos:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Haber brindado estatus Viable a uno o más candidatos</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que ATC haya aceptado la entrevista del candidato generada por Cliente</p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos, favor de pedir retroalimentación al equipo de ATC designado.</p>', ' ', NULL, '2023-03-20 19:23:27', '2023-03-20 19:23:27'),
(16, 2, 0, 'No puedo asignar Estatus Viable en Retro Final (CLIENTE)', '<p dir=\"ltr\">En caso de no poder dar Estatus Viable a un Candidato en la retro final Cliente debemos validar que</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">El candidato no cuente con otro estatus, (No Localizado o Descartado) por parte de Reclutador o ATC</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no se encuentre pausada o cancelada</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que ATC haya aceptado la entrevista del candidato</p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:24:24', '2023-03-20 19:24:24'),
(17, 2, 1, 'No puedo asignar Estatus Seleccionado en Retro Final (CLIENTE)', '<p dir=\"ltr\">En caso de no poder dar Estatus Seleccionado a un Candidato en la retro final Cliente debemos validar que</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">El candidato no cuente con otro estatus, (No Localizado o Descartado) en la Retro Final</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no se encuentre pausada o cancelada</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que no exista otro candidato con el mismo estatus de Seleccionado, Pendiente de Confirmación a Punto de Venta</p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos, favor de <a href=\"https://docs.google.com/presentation/d/1L5NSqQILv74Mjzr4QLCB926lteLEuZDy/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">revisar el siguiente archivo</a>, si se sigue presentando el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:25:44', '2023-03-20 19:25:44'),
(18, 2, 1, 'No puedo dar primera retroalimentación a candidatos en vacantes sin Preguntas Técnicas (CLIENTE)', '<p dir=\"ltr\">En caso de no poder dar primera retroalimentación a un candidato debemos validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">La vacante haya sido creada sin el flujo de trabajo de preguntas técnicas candidato</p></li><li dir=\"ltr\"><p dir=\"ltr\">Haber recibido la notificación Habilitación Candidato Cliente por correo, esto quiere decir que ATC nos ha habilitado un candidato viable</p></li></ul> <p dir=\"ltr\">En caso de que se cumplan estos casos te invitamos a <a href=\"https://docs.google.com/presentation/d/11iRt_H8sJkR_rYt1a-jr0v-pSvvPywK9/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">revisar el siguiente archivo</a> de muestra, si se sigue presentando el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria. </p>', ' ', NULL, '2023-03-20 19:26:40', '2023-03-20 19:26:40'),
(19, 2, 1, 'Material de Apoyo CLIENTE', '<p dir=\"ltr\">En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro <a href=\"https://drive.google.com/file/d/1ZCHLPyr28VObQpHUXeYGQNyTPAK4BCtw/view?usp=share_link\" target=\"_blank\">MANUAL DE ROL CLIENTE</a> o con soporte Reclu.</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Ana Karen Barreto Rodríguez</p> <p dir=\"ltr\">ana.barreto@it-strategy.mx</p> <p dir=\"ltr\">55 5415 8985</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Axell Sosa Rodríguez</p> <p dir=\"ltr\">Axell.sosa@it-strategy.mx</p> <p dir=\"ltr\">55 1814 7476</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Juan Carlos Barrios Calbillo</p> <p dir=\"ltr\">juan.barrios@it-strategy.mx</p> <p dir=\"ltr\">55 1911 4644</p> <p dir=\"ltr\">soporte.reclutamiento@3ti.mx</p>', ' ', NULL, '2023-03-20 19:28:12', '2023-03-20 19:28:22'),
(20, 3, 0, 'No se visualiza id de vacante (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">Si después de crear una solicitud esta no es visible desde tu tablero de rol Cliente Entrevistador <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FSolicitudesJS&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw3q1P1vs1P1hYBwmHv8VjbS\" target=\"_blank\">https://reclutamiento.tiii.mx/SolicitudesJS</a> es muy probable que uno de los siguientes puntos no se esté cumpliendo</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido autorizada por el Autorizador asignado al proyecto</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido validada por el usuario Atención a Clientes asignado al proyecto</p></li></ul> <p dir=\"ltr\">En caso de que ya hayas validado con ATC o el autorizador del proyecto, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:31:48', '2023-03-20 19:31:48'),
(21, 3, 1, 'No aparece localidad en el desplegable (CLIENTE ENTREVISTADOR)', '<p>Para estos casos es importarte revisar que el proyecto ya cuente con la localidad creada en RHIN y Seguridad Corporativa, en caso de no contar con la información, pide a soporte Reclu el asesoramiento para consultar esta información, en caso de que la localidad sea nueva, <a href=\"https://docs.google.com/presentation/d/1Gvp0PzGGuhjHQefrdF_NX0sR4JTPje46/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de revisar el siguiente manual</a>.</p>', ' ', NULL, '2023-03-20 19:32:59', '2023-03-20 19:32:59'),
(22, 3, 1, 'No visualizo candidatos en vacantes (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">En caso de que no se visualicen contactos en una vacante, primero debemos asegurarnos de que este haya pasado por los filtros siguientes:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Haber sido habilitado a ATC por reclutador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Haber recibido la notificación de que ATC te ha habilitado un candidato como el ejemplo <a href=\"https://docs.google.com/presentation/d/10SFROjvH2z01-KF7rFbMHIGqRSueMDHt/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">de este enlace</a></p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos, favor de pedir retroalimentación al equipo de ATC o Autorizador designado.</p>', ' ', NULL, '2023-03-20 19:37:09', '2023-03-20 19:37:09'),
(23, 3, 1, 'No puedo Programar una Entrevista con Candidato (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">Si se llega a presentar el caso donde no se pueda asignar una entrevista a un candidato, debemos verificar los siguientes puntos:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la entrevista generada no sea en el día actual en la que la estes programando</p></li><li dir=\"ltr\"><p dir=\"ltr\">Haberle asignado a el candidato el estatus de viable en la primer retroalimentación</p></li><li dir=\"ltr\"><p dir=\"ltr\">En caso de haber dado un estatus de Descartado o No Localizado verificar que se haya revertido el estatus correctamente</p></li></ul> <p dir=\"ltr\">Después de haber validado estos puntos y sigas sin poder generar la entrevista favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:50:04', '2023-03-20 19:50:04'),
(24, 3, 1, 'No se visualiza candidatos para retro final (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">Cuando no se visualizan candidatos en una solicitud en el proceso de retro final debemos validar los siguientes puntos:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Haber brindado estatus Viable a uno o más candidatos</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que ATC haya aceptado la entrevista del candidato generada por Cliente</p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos favor de pedir retroalimentación al equipo de ATC designado.</p>', ' ', NULL, '2023-03-20 19:52:53', '2023-03-20 19:52:53'),
(25, 3, 1, 'No puedo asignar Estatus Viable en Retro Final (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">En caso de no poder dar Estatus Viable a un Candidato en la retro final Cliente debemos validar que</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">El candidato no cuente con otro estatus, (No Localizado o Descartado) por parte de Reclutador o ATC</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no se encuentre pausada o cancelada</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que ATC haya aceptado la entrevista del candidato</p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:56:27', '2023-03-20 19:56:27'),
(26, 3, 1, 'No puedo asignar Estatus Seleccionado en Retro Final (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">En caso de no poder dar Estatus Seleccionado a un Candidato en la retro final Cliente debemos validar que</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">El candidato no cuente con otro estatus, (No Localizado o Descartado) en la Retro Final</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no se encuentre pausada o cancelada</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que no exista otro candidato con el mismo estatus de Seleccionado, Pendiente de Confirmación a Punto de Venta</p></li></ul> <p dir=\"ltr\">En caso de que no se cumplan estos casos favor de <a href=\"https://docs.google.com/presentation/d/1L5NSqQILv74Mjzr4QLCB926lteLEuZDy/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">revisar el siguiente archivo</a>, si se sigue presentando el problema favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 19:57:16', '2023-03-20 19:57:16'),
(27, 3, 1, 'No puedo dar primera retroalimentación a candidatos en vacantes sin Preguntas Técnicas (CLIENTE ENTREVISTADOR)', '<p dir=\"ltr\">En caso de no poder dar primera retroalimentación a un candidato debemos validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">La vacante haya sido creada sin el flujo de trabajo de preguntas técnicas candidato</p></li><li dir=\"ltr\"><p dir=\"ltr\">Haber recibido la notificación Habilitación Candidato Cliente por correo, esto quiere decir que ATC nos ha habilitado un candidato viable</p></li></ul> <p dir=\"ltr\">En caso de que se cumplan estos casos te invitamos a <a href=\"https://docs.google.com/presentation/d/11iRt_H8sJkR_rYt1a-jr0v-pSvvPywK9/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">revisar el siguiente archivo</a> de muestra, si se sigue presentando el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria. </p>', ' ', NULL, '2023-03-20 20:07:27', '2023-03-20 20:07:27'),
(28, 3, 1, 'Material de Apoyo CLIENTE ENTREVISTADOR', '<p dir=\"ltr\">En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro <a href=\"https://drive.google.com/file/d/1o6z4StAtzEqPRWxOKlM_hlXrv5jAf28j/view?usp=share_link\" target=\"_blank\">MANUAL DE ROL CLIENTE ENTREVISTADOR</a> o con soporte Reclu.</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Ana Karen Barreto Rodríguez</p> <p dir=\"ltr\">ana.barreto@it-strategy.mx</p> <p dir=\"ltr\">55 5415 8985</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Axell Sosa Rodríguez</p> <p dir=\"ltr\">Axell.sosa@it-strategy.mx</p> <p dir=\"ltr\">55 1814 7476</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Juan Carlos Barrios Calbillo</p> <p dir=\"ltr\">juan.barrios@it-strategy.mx</p> <p dir=\"ltr\">55 1911 4644</p> <p dir=\"ltr\">soporte.reclutamiento@3ti.mx</p>', ' ', NULL, '2023-03-20 20:08:22', '2023-03-20 20:08:22'),
(29, 4, 1, 'No se visualiza id de vacante (SOLICITANTE)', '<p dir=\"ltr\">Si después de crear una solicitud esta no es visible desde tu tablero de rol Solicitante <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FSolicitudes-Solicitante&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw0rR3Si0I-kCyVDlCoVcAFg\" target=\"_blank\">https://reclutamiento.tiii.mx/Solicitudes-Solicitante</a> es muy probable que uno de los siguientes puntos no se esté cumpliendo</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido autorizada por el Autorizador asignado al proyecto</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido validada por el usuario Atención a Clientes asignado al proyecto</p></li></ul> <p dir=\"ltr\">En caso de que ya hayas validado con ATC o el autorizador del proyecto, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 20:15:28', '2023-03-20 20:15:28'),
(30, 4, 1, 'No se muestra listado de Plantillas (SOLICITANTE)', '<p>Al momento de crear una solicitud suele haber ocasiones en las que después de seleccionar un proyecto, este no arroje el listado de plantillas correspondientes al proyecto, este error puede llega a suceder por cambios en la configuración de una plantilla, para validar que no se trate de un error, ingresa a <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FPlantillas&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw1-AXqcAi6UqF7wcrCVXd0V\" target=\"_blank\">https://reclutamiento.tiii.mx/Plantillas</a> y revisa que se encuentre en tu tablero la plantilla solicitada, <a href=\"https://docs.google.com/presentation/d/1efkq2U3FDvm95k0UDLuutmj75GMHAtyh/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">como se muestra en este enlace</a>, en caso de que se muestre favor de borrar caché y volver a intentar.</p>', ' ', NULL, '2023-03-20 20:16:33', '2023-03-20 20:16:33'),
(31, 4, 1, 'No aparece localidad en el desplegable (SOLICITANTE)', '<p>Para estos casos es importarte revisar que el proyecto ya cuente con la localidad creada en RHIN y Seguridad Corporativa, en caso de no contar con la información, pide a soporte Reclu el asesoramiento para consultar esta información, en caso de que la localidad sea nueva, <a href=\"https://docs.google.com/presentation/d/1Gvp0PzGGuhjHQefrdF_NX0sR4JTPje46/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de revisar el siguiente manual</a>.</p>', ' ', NULL, '2023-03-20 20:24:53', '2023-03-20 20:24:53'),
(32, 4, 1, 'No aparece Supervisor en desplegable (SOLICITANTE)', '<p dir=\"ltr\">Cuando no aparezca un Supervisor/Usuario el cual será el encargado de dar retro alimentación a Candidatos de una vacante, es importante validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">El usuario tenga acceso a la plataforma y el rol de Cliente Entrevistador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que el usuario cuente con la marca asignada y/o proyecto</p></li></ul> <p dir=\"ltr\">En caso de que el usuario cumpla con estos puntos, favor de acercarse a soporte Reclu para soporte. En caso de ser usuario de nuevo ingreso, <a href=\"https://docs.google.com/presentation/d/12GY6GxWty1vlen92ATtaGDo6wLpscUKF/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de leer el siguiente manual</a>.</p>', ' ', NULL, '2023-03-20 20:33:58', '2023-03-20 20:33:58'),
(33, 4, 1, 'No se puede editar plantilla (SOLICITANTE)', '<p>Los permisos de plantillas van seguidos de la creación de una plantilla y su asignación a un proyecto en específico, antes de solicitar soporte, favor de revisar <a href=\"https://docs.google.com/presentation/d/1efkq2U3FDvm95k0UDLuutmj75GMHAtyh/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">el archivo de este enlace</a>, en caso de que se visualice la plantilla en tu tablero, pero no cuentes con permisos de edición, <a href=\"https://docs.google.com/presentation/d/1MMpyoZutMtHJSdNk49Vraf8HSqPyh3p_/edit?usp=sharing&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">favor de leer el siguiente manual</a>.</p>', ' ', NULL, '2023-03-20 20:35:16', '2023-03-20 20:35:16'),
(34, 4, 1, 'Material de Apoyo (SOLICITANTE)', '<p dir=\"ltr\">En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro <a href=\"https://drive.google.com/file/d/1zVXYFM7kIkahrQzSepLvny1Z5XgchrbD/view?usp=sharing\" target=\"_blank\">MANUAL DE ROL SOLICITANTE</a> o con soporte Reclu.</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Ana Karen Barreto Rodríguez</p> <p dir=\"ltr\">ana.barreto@it-strategy.mx</p> <p dir=\"ltr\">55 5415 8985</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Axell Sosa Rodríguez</p> <p dir=\"ltr\">Axell.sosa@it-strategy.mx</p> <p dir=\"ltr\">55 1814 7476</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Juan Carlos Barrios Calbillo</p> <p dir=\"ltr\">juan.barrios@it-strategy.mx</p> <p dir=\"ltr\">55 1911 4644</p> <p dir=\"ltr\">soporte.reclutamiento@3ti.mx</p> <p dir=\"ltr\"><br /> </p>', ' ', NULL, '2023-03-20 20:36:00', '2023-03-20 20:36:00'),
(35, 5, 0, 'No se visualiza id de vacante (RECLUTADOR)', '<p dir=\"ltr\">Si después de que ATC nos asigna una solicitud y esta no es visible desde tu tablero de rol Reclutador <a href=\"https://www.google.com/url?q=https%3A%2F%2Freclutamiento.tiii.mx%2FSolicitudes-Reclutador&amp;sa=D&amp;sntz=1&amp;usg=AOvVaw0Rp1xllBbiCCTIYptsPPOx\" target=\"_blank\">https://reclutamiento.tiii.mx/Solicitudes-Reclutador</a> te invitamos a validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Revisar que tengamos la alerta de asignación como se muestra <a href=\"https://docs.google.com/presentation/d/1icCVb5ygqAEO4MTsCDGr8aKCNuPRvih0/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">en este archivo</a></p></li><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante se encuentre asignada correctamente a nuestro usuario</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que nuestro usuario esté asignado a la marca correctamente en plataforma</p></li></ul> <p dir=\"ltr\">En caso de que ya hayas validado con ATC la información anterior y sigas presentando problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:01:49', '2023-03-20 21:01:49'),
(36, 5, 1, 'No puedo publicar una vacante', '<p dir=\"ltr\">En caso de que no puedas publicar una vacante, favor de validar:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Si es una solicitud que cuenta con preguntas técnicas, debemos validar que las preguntas indispensables estén establecidas antes de la publicación, <a href=\"https://docs.google.com/presentation/d/1EJtYF2o2yY7vBAiFXDZ8jG9YWFaURnsk/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">como se muestra en este archivo</a></p></li><li dir=\"ltr\"><p dir=\"ltr\">Si es una vacante sin preguntas técnicas debemos revisar que estemos debidamente asignados a la vacante por ATC</p></li></ul> <p dir=\"ltr\">En caso de contar con la alerta, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:02:51', '2023-03-20 21:02:51'),
(37, 5, 1, 'No puedo postular un candidato desde mi reclu o Candidatos en Cartera', '<p dir=\"ltr\">Si no es posible postular un candidato desde Mi Reclu o desde el módulo de Candidatos en cartera, debemos tener en cuenta que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">La vacante no esté Pausada, Cancelada o Cerrada</p></li></ul> <p dir=\"ltr\">En el caso de postular desde candidatos en cartera, la vacante no debe estar en</p> <ul><li><ul><li dir=\"ltr\"><p dir=\"ltr\">Proceso de autorización</p></li><li dir=\"ltr\"><p dir=\"ltr\">Proceso de asignación</p></li><li dir=\"ltr\"><p dir=\"ltr\">No publicadas</p></li><li dir=\"ltr\"><p dir=\"ltr\">Pausadas</p></li><li dir=\"ltr\"><p dir=\"ltr\">Canceladas</p></li><li dir=\"ltr\"><p dir=\"ltr\">Con candidato seleccionado a contratar</p></li><li dir=\"ltr\"><p dir=\"ltr\">En espera de confirmación de punto de venta</p></li><li dir=\"ltr\"><p dir=\"ltr\">Cerradas</p></li></ul></li></ul> <p dir=\"ltr\">En caso de que la vacante no se cumpla con uno de los puntos anteriores, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:10:50', '2023-03-20 21:10:50'),
(38, 5, 1, 'No puedo guardar Entrevista Profunda', '<p dir=\"ltr\">Si no puedes guardar la entrevista profunda de un candidato, debes validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Hayas respondido tus comentarios sobre las responsabilidades de la solicitud y el candidato, ya que son campos obligatorios</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que el candidato cuente con fuente de reclutamiento y reclutador responsable debidamente asignado</p></li></ul> <p dir=\"ltr\">En caso de que se cumplan con estos puntos, favor de solicitar apoyo a soporte Reclu a través de este potal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:12:00', '2023-03-20 21:12:00'),
(39, 5, 1, 'No puedo habilitar preguntas técnicas de Candidato', '<p dir=\"ltr\">Si no puedes guardar la entrevista profunda de un candidato, debes validar que:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Hayas respondido tus comentarios sobre las responsabilidades de la solicitud y el candidato, ya que son campos obligatorios</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que el candidato cuente con fuente de reclutamiento y reclutador responsable debidamente asignado</p></li></ul> <p dir=\"ltr\">En caso de que se cumplan con estos puntos, favor de solicitar apoyo a soporte Reclu a través de este potal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:18:22', '2023-03-20 21:18:22'),
(40, 5, 1, 'No visualizo candidatos en vacantes (RECLUTADOR)', '<p dir=\"ltr\">En caso de que no se visualicen candidatos en una vacante, primero debemos asegurarnos de:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Que la vacante no haya sido reasignada de reclutador</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que al entrar a detalle de la solicitud no se muestre una pantalla blanca, esto significa falta de privilegios para visualizar la marca</p></li></ul> <p dir=\"ltr\">En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal  para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:19:34', '2023-03-20 21:19:34'),
(41, 5, 1, 'Dar de alta Candidatos desde rol Reclutador', '<p dir=\"ltr\">Con la nueva actualización en las funciones del rol Reclutador se añadió el módulo de alta de candidatos, si no recuerdas cómo aquí te dejamos un <a href=\"https://docs.google.com/presentation/d/1w8A1wTSXk4NsnHl_mSYX-gdrfFCYsnOn/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">pequeño archivo</a> con los pasos a seguir.</p> <p dir=\"ltr\">En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:26:46', '2023-03-20 21:26:46'),
(42, 5, 1, 'No puedo dar primera retroalimentación a candidato sin Preguntas Técnicas', '<p dir=\"ltr\">Con la actualización de las funciones de rol reclutador recuerda que para habilitar a un candidato con ATC debes realizar estos pasos:</p> <ul><li dir=\"ltr\"><p dir=\"ltr\">Revisar que la vacante no cuente con el flujo de trabajo de pregunta técnicas candidato</p></li><li dir=\"ltr\"><p dir=\"ltr\">Que se haya brindado la entrevista profunda al candidato y asignado fuente de reclutamiento o reclutador responsable dependiendo el método de reclutamiento</p></li><li dir=\"ltr\"><p dir=\"ltr\">Revisar que se visualice el botón Habilitar en la sección de Primera retroalimentación en el apartado Info Selección del candidato como se muestra en este <a href=\"https://docs.google.com/presentation/d/1PX2yRPRvIM-3LN24m0YyoUdVbKO3eRqp/edit?usp=share_link&amp;ouid=103257422191272452285&amp;rtpof=true&amp;sd=true\" target=\"_blank\">archivo</a></p></li></ul> <p dir=\"ltr\">En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.</p>', ' ', NULL, '2023-03-20 21:27:58', '2023-03-20 21:27:58'),
(43, 5, 1, 'Material de Apoyo RECLUTADOR', '<p dir=\"ltr\">En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro <a href=\"https://drive.google.com/file/d/1EifB6cWLB9Ss2j1EDk5i4VLMRbXTKB4A/view?usp=share_link\" target=\"_blank\">MANUAL DE ROL RECLUTADOR</a> o con soporte Reclu.</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Ana Karen Barreto Rodríguez</p> <p dir=\"ltr\">ana.barreto@it-strategy.mx</p> <p dir=\"ltr\">55 5415 8985</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Axell Sosa Rodríguez</p> <p dir=\"ltr\">Axell.sosa@it-strategy.mx</p> <p dir=\"ltr\">55 1814 7476</p> <p dir=\"ltr\"><br /></p> <p dir=\"ltr\">Juan Carlos Barrios Calbillo</p> <p dir=\"ltr\">juan.barrios@it-strategy.mx</p> <p dir=\"ltr\">55 1911 4644</p> <p dir=\"ltr\">soporte.reclutamiento@3ti.mx</p>', ' ', NULL, '2023-03-20 21:35:34', '2023-03-20 21:35:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_faq_category`
--

CREATE TABLE `rcl_faq_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_pid` int(10) UNSIGNED DEFAULT NULL,
  `ispublic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(125) DEFAULT NULL,
  `description` text NOT NULL,
  `notes` tinytext NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_faq_category`
--

INSERT INTO `rcl_faq_category` (`category_id`, `category_pid`, `ispublic`, `name`, `description`, `notes`, `created`, `updated`) VALUES
(1, NULL, 1, 'FAQ\'S ATC', '<p>En esta sección encontrarás múltiples documentos que te ayudarán a resolver dudas sobre el rol ATC.</p>', '', '2023-03-18 01:10:12', '2023-03-20 20:12:43'),
(2, NULL, 1, 'FAQ\'S CLIENTE', '<p>En esta sección encontrarás múltiples documentos que te ayudarán a resolver dudas sobre el rol CLIENTE.</p>', '', '2023-03-18 01:15:29', '2023-03-20 20:13:24'),
(3, NULL, 1, 'FAQ\'S CLIENTE ENTREVISTADOR', '<p>En esta sección encontrarás múltiples documentos que te ayudarán a resolver dudas sobre el rol CLIENTE. ENTREVISTADOR</p>', '', '2023-03-20 19:30:06', '2023-03-20 20:13:42'),
(4, NULL, 1, 'FAQ\'S SOLICITANTE', '<p>En esta sección encontrarás múltiples documentos que te ayudarán a resolver dudas sobre el rol SOLICITANTE.</p>', '', '2023-03-20 20:11:46', '2023-03-20 20:13:05'),
(5, NULL, 1, 'FAQ\'S RECLUTADOR', '<p>En esta sección encontrarás múltiples documentos que te ayudarán a resolver dudas sobre el rol RECLUTADOR.</p>', '', '2023-03-20 20:45:28', '2023-03-20 20:53:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_faq_topic`
--

CREATE TABLE `rcl_faq_topic` (
  `faq_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_faq_topic`
--

INSERT INTO `rcl_faq_topic` (`faq_id`, `topic_id`) VALUES
(1, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(12, 11),
(13, 11),
(14, 11),
(15, 11),
(17, 11),
(18, 11),
(19, 11),
(21, 11),
(22, 11),
(23, 11),
(24, 11),
(25, 11),
(26, 11),
(27, 11),
(28, 11),
(29, 11),
(30, 11),
(31, 11),
(32, 11),
(33, 11),
(34, 11),
(36, 11),
(37, 11),
(38, 11),
(39, 11),
(40, 11),
(41, 11),
(42, 11),
(43, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_file`
--

CREATE TABLE `rcl_file` (
  `id` int(11) NOT NULL,
  `ft` char(1) NOT NULL DEFAULT 'T',
  `bk` char(1) NOT NULL DEFAULT 'D',
  `type` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(86) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `signature` varchar(86) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `attrs` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_file`
--

INSERT INTO `rcl_file` (`id`, `ft`, `bk`, `type`, `size`, `key`, `signature`, `name`, `attrs`, `created`) VALUES
(1, 'T', 'D', 'image/png', 9452, 'b56944cb4722cc5cda9d1e23a3ea7fbc', 'gjMyblHhAxCQvzLfPBW3EjMUY1AmQQmz', 'powered-by-osticket.png', NULL, '2023-03-08 12:14:09'),
(3, 'T', 'F', 'image/png', 4321, 'nlgyiyOFEkjCA07ZmNwQoYraquspdSZw', 'yOFEkjCA07ZmNwQoN94R5TU_ZuPF2uiZ', 'poweredby.png', NULL, '2023-03-12 08:06:20'),
(5, 'T', 'F', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 167028, 'TW0szNKiF7dxXP6jK_WFpFZXjuPrQrKE', 'NKiF7dxXP6jK_WFp5cYFD0JKuyUWHgDo', '9072 revertir estatus - Anallely Linaco Leon.docx', NULL, '2023-03-17 00:24:16'),
(10, 'T', 'F', 'application/pdf', 1570097, '_Txk-dqgWia3GXptsWIDsWqzSca5nG8A', 'dqgWia3GXptsWIDsmlc_9nPTu3QiHy6w', 'ACFrOgAEuSnxhzo7y2PFRJSg3dLsnAQ5GxYk2v0OvuoGNkeJspBuQVtfjxfD2Tw9tjoDuuZL82zOOknF5CEo-N0prx5IkFtsOOaZxyIW6aP_8Xs6NNV0TJiVoc1dxmpdQHVAOYvLBLOVnwAySb35.pdf', NULL, '2023-03-17 02:49:00'),
(11, 'T', 'F', 'image/png', 96461, 'X5KU2GnP-b6AdNUCsEoQyioQKzYBMc5Y', 'GnP-b6AdNUCsEoQyHabR2LTd-4Qd1Gbt', 'image.png', NULL, '2023-03-17 02:50:21'),
(12, 'T', 'F', 'application/pdf', 554007, '5QPI_8ncn6JW2uNIKnLBpokt1IWtgm34', '8ncn6JW2uNIKnLBpHN2CulOLMLjtbG9J', 'ACFrOgCJ3u-xby0PcmxlUC7G4Jqw4Vj8HOkUvmA_RLo2BIQvZu1PkKeBDO1Of7ADulR7ywA4531l31imVAfEhg6FwAYbR7PeLbqHG3dMBHBMfxPNWpPv8yZU9McxElSK6L4iJ_lnv_gY6zc0gexL.pdf', NULL, '2023-03-19 01:01:03'),
(13, 'T', 'F', 'image/png', 24276, 'jtC0F7ZnfwOlAoqFTYOcAD7isN_jjHZ4', '7ZnfwOlAoqFTYOcAEvwhDvFze8mEcdOO', 'PIP-RECLUTAMIENTO.png', NULL, '2023-03-19 03:57:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_file_chunk`
--

CREATE TABLE `rcl_file_chunk` (
  `file_id` int(11) NOT NULL,
  `chunk_id` int(11) NOT NULL,
  `filedata` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_file_chunk`
--

INSERT INTO `rcl_file_chunk` (`file_id`, `chunk_id`, `filedata`) VALUES
(1, 0, 0x89504e470d0a1a0a0000000d49484452000000da0000002808060000009847e4c900000a43694343504943432070726f66696c65000078da9d53775893f7163edff7650f5642d8f0b1976c81002223ac08c81059a21092006184101240c585880a561415119c4855c482d50a489d88e2a028b867418a885a8b555c38ee1fdca7b57d7aefededfbd7fbbce79ce7fcce79cf0f8011122691e6a26a003952853c3ad81f8f4f48c4c9bd80021548e0042010e6cbc26705c50000f00379787e74b03ffc01af6f00020070d52e2412c7e1ff83ba50265700209100e02212e70b01905200c82e54c81400c81800b053b3640a009400006c797c422200aa0d00ecf4493e0500d8a993dc1700d8a21ca908008d0100992847240240bb00605581522c02c0c200a0ac40222e04c0ae018059b632470280bd0500768e58900f4060008099422ccc0020380200431e13cd03204c03a030d2bfe0a95f7085b8480100c0cb95cd974bd23314b895d01a77f2f0e0e221e2c26cb142611729106609e4229c979b231348e7034cce0c00001af9d1c1fe383f90e7e6e4e1e666e76ceff4c5a2fe6bf06f223e21f1dffebc8c020400104ecfefda5fe5e5d60370c701b075bf6ba95b00da560068dff95d33db09a05a0ad07af98b7938fc401e9ea150c83c1d1c0a0b0bed2562a1bd30e38b3eff33e16fe08b7ef6fc401efedb7af000719a4099adc0a383fd71616e76ae528ee7cb0442316ef7e723fec7857ffd8e29d1e234b15c2c158af15889b850224dc779b952914421c995e212e97f32f11f96fd0993770d00ac864fc04eb607b5cb6cc07eee01028b0e58d27600407ef32d8c1a0b91001067343279f7000093bff98f402b0100cd97a4e30000bce8185ca894174cc608000044a0812ab041070cc114acc00e9cc11dbcc01702610644400c24c03c104206e4801c0aa11896411954c03ad804b5b0031aa0119ae110b4c131380de7e0125c81eb70170660189ec218bc86090441c8081361213a8811628ed822ce0817998e04226148349280a420e988145122c5c872a402a9426a915d4823f22d7214398d5c40fa90dbc820328afc8abc47319481b25103d4027540b9a81f1a8ac6a073d174340f5d8096a26bd11ab41e3d80b6a2a7d14be87574007d8a8e6380d1310e668cd9615c8c87456089581a26c71663e55835568f35631d583776151bc09e61ef0824028b8013ec085e8410c26c82909047584c5843a825ec23b412ba085709838431c2272293a84fb4257a12f9c478623ab1905846ac26ee211e219e255e270e135f9348240ec992e44e0a21259032490b496b48db482da453a43ed210699c4c26eb906dc9dee408b280ac209791b7900f904f92fbc9c3e4b7143ac588e24c09a22452a494124a35653fe504a59f324299a0aa51cda99ed408aa883a9f5a496da076502f5387a91334759a25cd9b1643cba42da3d5d09a696769f7682fe974ba09dd831e4597d097d26be807e9e7e983f4770c0d860d83c7486228196b197b19a718b7192f994ca605d39799c85430d7321b9967980f986f55582af62a7c1591ca12953a9556957e95e7aa545573553fd579aa0b54ab550fab5e567da64655b350e3a909d416abd5a91d55bba936aece5277528f50cf515fa3be5ffd82fa630db2868546a08648a35463b7c6198d2116c63265f15842d6725603eb2c6b984d625bb2f9ec4c7605fb1b762f7b4c534373aa66ac6691669de671cd010ec6b1e0f039d99c4ace21ce0dce7b2d032d3f2db1d66aad66ad7ead37da7adabeda62ed72ed16edebdaef75709d409d2c9df53a6d3af77509ba36ba51ba85badb75cfea3ed363eb79e909f5caf50ee9ddd147f56df4a3f517eaefd6efd11f373034083690196c313863f0cc9063e86b9869b8d1f084e1a811cb68ba91c468a3d149a327b826ee8767e33578173e66ac6f1c62ac34de65dc6b3c61626932dba4c4a4c5e4be29cd946b9a66bad1b4d374ccccc82cdcacd8acc9ec8e39d59c6b9e61bed9bcdbfc8d85a5459cc54a8b368bc796da967ccb05964d96f7ac98563e567956f556d7ac49d65ceb2ceb6dd6576c501b579b0c9b3a9bcbb6a8ad9badc4769b6ddf14e2148f29d229f5536eda31ecfcec0aec9aec06ed39f661f625f66df6cf1dcc1c121dd63b743b7c727475cc766c70bceba4e134c3a9c4a9c3e957671b67a1739df33517a64b90cb1297769717536da78aa76e9f7acb95e51aeebad2b5d3f5a39bbb9bdcadd96dd4ddcc3dc57dabfb4d2e9b1bc95dc33def41f4f0f758e271cce39da79ba7c2f390e72f5e765e595efbbd1e4fb39c269ed6306dc8dbc45be0bdcb7b603a3e3d65facee9033ec63e029f7a9f87bea6be22df3dbe237ed67e997e07fc9efb3bfacbfd8ff8bfe179f216f14e056001c101e501bd811a81b3036b031f049904a50735058d05bb062f0c3e15420c090d591f72936fc017f21bf96333dc672c9ad115ca089d155a1bfa30cc264c1ed6118e86cf08df107e6fa6f94ce9ccb60888e0476c88b81f69199917f97d14292a32aa2eea51b453747174f72cd6ace459fb67bd8ef18fa98cb93bdb6ab6727667ac6a6c526c63ec9bb880b8aab8817887f845f1971274132409ed89e4c4d8c43d89e37302e76c9a339ce49a54967463aee5dca2b917e6e9cecb9e773c593559907c3885981297b23fe5832042502f184fe5a76e4d1d13f2849b854f45bea28da251b1b7b84a3c92e69d5695f638dd3b7d43fa68864f4675c633094f522b79911992b923f34d5644d6deaccfd971d92d39949c949ca3520d6996b42bd730b728b74f662b2b930de479e66dca1b9387caf7e423f973f3db156c854cd1a3b452ae500e164c2fa82b785b185b78b848bd485ad433df66feeaf9230b82167cbd90b050b8b0b3d8b87859f1e022bf45bb16238b5317772e315d52ba647869f0d27dcb68cbb296fd50e2585255f26a79dcf28e5283d2a5a5432b82573495a994c9cb6eaef45ab9631561956455ef6a97d55b567f2a17955fac70aca8aef8b046b8e6e2574e5fd57cf5796ddadade4ab7caedeb48eba4eb6eacf759bfaf4abd6a41d5d086f00dad1bf18de51b5f6d4ade74a17a6af58ecdb4cdcacd03356135ed5bccb6acdbf2a136a3f67a9d7f5dcb56fdadabb7bed926dad6bfdd777bf30e831d153bdeef94ecbcb52b78576bbd457df56ed2ee82dd8f1a621bbabfe67eddb847774fc59e8f7ba57b07f645efeb6a746f6cdcafbfbfb2096d52368d1e483a70e59b806fda9bed9a77b5705a2a0ec241e5c127dfa67c7be350e8a1cec3dcc3cddf997fb7f508eb48792bd23abf75ac2da36da03da1bdefe88ca39d1d5e1d47beb7ff7eef31e36375c7358f579ea09d283df1f9e48293e3a764a79e9d4e3f3dd499dc79f74cfc996b5d515dbd6743cf9e3f1774ee4cb75ff7c9f3dee78f5df0bc70f422f762db25b74bad3dae3d477e70fde148af5b6feb65f7cbed573cae74f44deb3bd1efd37ffa6ac0d573d7f8d72e5d9f79bdefc6ec1bb76e26dd1cb825baf5f876f6ed17770aee4cdc5d7a8f78affcbedafdea07fa0fea7fb4feb165c06de0f860c060cfc3590fef0e09879efe94ffd387e1d247cc47d52346238d8f9d1f1f1b0d1abdf264ce93e1a7b2a713cfca7e56ff79eb73abe7dffde2fb4bcf58fcd8f00bf98bcfbfae79a9f372efaba9af3ac723c71fbcce793df1a6fcadcedb7defb8efbadfc7bd1f9928fc40fe50f3d1fa63c7a7d04ff73ee77cfefc2ff784f3fb803925110000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000032869545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e362d633031342037392e3135363739372c20323031342f30382f32302d30393a35333a30322020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f70204343203230313420284d6163696e746f7368292220786d704d4d3a496e7374616e636549443d22786d702e6969643a36453243393544454136373331314534424443444446393146414639344441352220786d704d4d3a446f63756d656e7449443d22786d702e6469643a3645324339354446413637333131453442444344444639314641463934444135223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a4346413734453446413637313131453442444344444639314641463934444135222073745265663a646f63756d656e7449443d22786d702e6469643a4346413734453530413637313131453442444344444639314641463934444135222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3e8bfef6ca0000170b4944415478daec5d099c53d5d53f2f7b32c9646680617118905d3637d0cfad282aa82d0af6f3b3b62ef52bd6d685ba206eb54a15c1adf6538b52b4d53a564454a42c0565d132a86c82a0ac82ec8b0233ccc24c9297f7dd9bfc6f73e64e92c90c5071ccf9fd0e249397f7eebbf7fccff99f73efbb31860f1f4e593936a4da74d2d8eeef53b17f2f51c4fd5d6b7e4ba19385ee177a9bd0ed8d3e832534dfa4d2351ebafaad3cb2d92cb219cd636c6d59f3ceca11920b849e27f4c742af68f4b7a342f34c5ab8de4d3f9b12a4b0005d7301991447d63ebed7e2125a283457a85d680d22d2be26463405995d8dfeb63f4a4b44241bfa463e5902642d7d518a5a59a065e5bb29ad849e2a7480d0d384b617ea05e024bb89080d093d287495d0e94267093d90c1b9edf85f82b4a2d19451006dc65617ed2bb3538f76618a449b57c76781f6fd908e42af14fabf42bb65f89dde42af12ba4ce848a10bd21c9b23741803f3bb42c709fd6d4657921015003b74c8205f8ed9ec4096cdd19abf7884de2e74210cbf5b13ce2123e05ca1f7e37cc9e45788921c3af703d80d47b3a049b3b739e989d21c2aca8d36cb81c802adf94a6ba15385fe41e87147c04e1e018dbc00399da49b4542ef4d13b97e2d343fed999d16d57ee3a0498b7dd426b779e56559ead8fce504a16f0aed7584cf7b2e72bbbd426b01b8d6691c763f8a97fa1f4c471bb71db4d194b51e6a17c8022d2bdf1d9151e695a30032253ee47c99caef285ecd1c9b92df0aea58e88fc672b3e654d2cf52c7e62d922af6ff96ae2de3d152a1cb8556b1bfcb4249cb3a47ca54cc23fec93569fe1a0f4522061946f31d946c443be65c5fe470befd736aca64f19193f5427f227487d00e427f29f432e477dfc4efcf8abbf76094e6adf4d0a4955e9ab6d14d6e41218de63cac59cb3e86bc9e11a592eda79019f60aab6b74f54de64a7725f9bb9c3c2eff0fddc2c342bf04555c47f142493f11e7a6935d00cc6fc6d0f4e55e07fdf4a502ba654690262ef791d76191c76135efb1cd9af7b123d2a36f3e14a4903d4c5eabd1fe5d468e9edadf4a854e04008347b9f9e385be56871afaa22171232119c50e96dbe9c036173d58eaa7399b5c541532c8efb2a87bab08990263d1e68db32cd08e297a61086bb36cb4fa4031f5cfdf127b9da104845ea3fd4d4694a1145f62d5e62837fd39a1a312ad11912b274aabd67b68f1976eea901fa1055b5cf468690eb5f34763343127271eb14debfb31b68eb3cf3e3b6be1c7904c9bbf8cdedcdd8bfab7d824dc7cc67ef02c8a97dd95940178df20b66c10dae22834572ed31a416ad58808c2729de2e37372c914579db5c94d0b05d00c579472dd227ab5689eab3eb211ed3b99a75994e7aa8a17452c8f30de8c5cbe5c31ef62ef1f12ba04afe522e12784be91c178cbfcea75d04c59ccc8a37839df29b412f95e5b009b50f45856e70c820e4e58e1a5cdbb9d542822598fb689758bdf57906581760c8add885255d843353541f2d84399d04759363f91bdff40e8abda316b8456537c82399dc849ee0758cae8a3c42a907244ca2280f64ca18384ce8e013d2a401834e9ab3d4eca775a146a19891539be2570c9f6ca2561edf17e8fd079420f6581969598f8edb5b4a2a20d95ecec4bc33b7f4854eb6fe82b8329be1e51c95f11c5b874a1d4eb1489196349ec559ec8b142229456daaac856673e4cca761457a653e2319b7cf258bbb6ee70d1b0c979b4eda09d5a78a37252ad1dc527b723a0b029fd0bc5579a48aa5b20d48df6ca08bab109dd2823f23d4207328afb43a1dbb240cb4a4c2c11481c24cbddb528f11b149f074e29329aa9b027170fbf9be498ae1ab5d42f2acff027725a9f4b44dcfb561e9d2828dfd567098c1db2c59b107b80c650935d6159c720b96adf8a3d42b39d0a22347e6e80566e7752f7b691588e46f155ff72517315ce904a64e4dc041a7abef437147f22e079a13765a963568e8a14b8aae9fdbddde8e4e00eea259442fe5460cb038553f24fd03b5d4e4e79b15819de7a37e2b61e731cb4d17df302f4e4877e6a2fa8dfac0d6eaa0e1bb4b7d246c37ad7d0c80b2a880ec46696db89e6b48c3529d7dc459ee8a1454b7cf4d66a0f15b73415c808f91c01340d492ef2c2969478b6cddbc42e8c6ac0361b88a8474a8e475ff786d39891055a7a31601c4e78e3508ae33c38a6065efec82418369376d40468555911f50aec8d47b6e4f36a72deac2f5eef448ea58ba461dd539aa3db9a496dc2b74c9c951b1afb5e20669d9d5acb0286413336ba636b0f0f08a0e57b2c1a39a052dcb14057b55125a0b05ae464f3b7d718e3576df6866f9e9627724b8a1dc74af68af65530c33759dea7447e26172aaf07d8f2d1ff9587317effe985263d50483a09efc76581d6b0c8817e01b98f7cd46434c59f3ae6d287e2eb0adbe3987b8ed4c5a30254c7b92b68b22cf38b88d6397777aacd7ae4fc5800afbf04fdd2e5062d874b80cc4e2f52dbf0cdcfcccc0ddd332d488581682b9f61150b70796d762bd2ca67c9a7a537b7f24523f3b63ae9ea92022ab9f28004db12ea5a3b78f906d7ce817715c92a89af4b71a83857e05180cc0580c8b63c04f07b589e269dd2a39478505452cf3b50c49120fc239c979b9ab225c2b727ed19c8482fbc648196a22641f179a90ef83f999517a0b2e54c6ac8870b36e1903d22b2391ca174391a5fa8bb32491e24dbf500e94bed2cda2d22d96801b2179ef9672eddfe76b0b038dfbcc9618b3da8d99e5d4d562a17442d7ab263303a7ff27a3779dfc9a347cfaf282f793dbf7cd2a75e5bb9d3bab66361e41671813ed1ba516a8bd0c729be624497afd96b79839f4a40e3fdd66398e5a44b96b7a1a0a36c657f16680d4b84d1c50329a8e341786e19fd761f8d46380d934ab69d4277772a25476c5ecd96cc8b2af944fb4c56dcfe86aa20972951d378c0e631d74e1054f1376fe69dd12edf7cce65a753a256ec3e5e84d1c8fce807422f911a8ed2bdc707cd715345def6c53e3b2ddeee143431fa74aff6a111a66944c5e7938d3855947d271fd11922f44f42cf107a9d9623f19ccdc5de77a2f8960b76383bb984ec1f49ba463ec83a18d4b91011b312e3b080e24f103444e5e5b3729782d606e18cc653dd6df22ea6f814462125a638e48a9b49ac827922faba9386a78be18465db2a1c48e04e45c366a3027435c5e74b1623c1ae4c929b0c42e2e7c54517c13311e3d936500895a0cbfd248a1156373203f6e33b1edce81e50221931fac393c8b9a0f9e0f2c40ca115dab91e83d4055c7913a8d520e42816aa72ff22aa57b23e139d9583aadd7a16fa53f17d1b8b14ea7c3f419fc8364ea3f88a0c79ce8b700e3948ab9200a2ad8a1ec436c2310c8b361fcaa750d41e075a7d69cd220fa78db2523706c512259206de4fdee8c48dfbedd18b1f6b4355216a2f403631e0b27a09ca27f3895b847ea5e577d7a3fa375600715fae2bf67dea986f5e651834221436b6898ebdc2a80ff47384fe1db6f421c5d75c72e2ca6b9e4a4e02ad54f29724409351f74eaabfae53c9f9a0a5e9e6cc241b795a285f16f53aeb7be9c0e4130757012c94a40db7012f8310b975b9041a73d60e7886e7d1b07168e80fd817e682e7abd02e9fde7d099e8a8b1cec6728be625b1ad673f04c37e3fc5246a1e42baf251fa128c1df47c33822f03412a47281ea29da3556c218168236498fd91946f50d3aef200658523e39b1da513b4729dab412efefa6f813c05e96d34cc8b052c6238bccd32e637f1b05e02fc2a0f5c0352f64d4497a6639b92ce79be6087d4f672b3e7b38be06b2be7871ef2aeaeec06bb9825edf5a6035a2ca72b975c0dc751efabacaa016bee81d22924990cd455b7507548b5cb50ad1718cc8df66e5ba2de90ccfb5e2cdba2f49342538b47b30c63722572b6ba01fab01bc54858c47615fe9641302433ab6f6a80632d9c6e1b8df7600dd59ecf3b5c82dbba3df7bc0b6fa30c79f4eec3656fdf1c2e0fb2131fd9a798817019a020040814c469979e8401f3af63a78e6103aac2f2b459fc3ae752e5e0710663d300809b25718c85622628510a64bd01935ac3347a0ed8468741e0cb823c02bc1f5193e3f0bf7e0c7bd3d82f698308e7d309ece1974a0c9bcd710b4750dfe5688b6ca39ac298c6674d1bc7e3bbc9e579f395874c874c68a23290a364578fd3972a2f3e138b8bc1feb5f4b80cc1fa5671704e80e919715e644fb8a9cec06ac9abf2b09c8b8bc0a1b90ece15aadf4fe759aef2d40df47f0dd4ccaf2a9a2dd4d1ac8c2601fd2f15e4ef10d825e461008a5c8ab09c7ddc8decf60202314b8ce624ce54644da7e9478d68e40379f84d31f053ac9dbfe216cf23119c06c1a979527fe394070298b6203e1010650624ee65550aef371ace2acf701040bf1fe7480e838189d92229627aa0d5c2621c2aa05b2b7e3264f4747d78262de0b6e1d66605d0bca3012e7e8064e3d1c6d3f9112cf6bf5c2ebdb1958ef46243f1714b5b1320614fc62500a15b106c1d89570b6309819eb7bf5124541196f68bf8c7caeea64f9591eebb7452cc7716a51659830d7ed5460d2cb4b7c3462662e15e444c9668bf5878cda6fb3e89e4ed444f87fc381aad2fd3d6c2c75d98131b95ca3a48d957614df558b8bbcee50b09a77c042ae475ffb293117a700bb034e9f6fa9b00481a196a51043d8e712c47fc6e726d281fbd8e79781cd3c0150717eff36aaaeb29d636d5a989ec0e6623ec609945c04a35586f104a302ff82272018f879f83e21dcb646bee447b42c0705cd47e408b2ca4d4f16c966200fca017551e7ec0bc0d5e0fd6e78aaa9888aaa48f019724c173cdc348a3f662fe517a07152a683ea124acabf078dc9a41225650522a389c8328e1d73211cd6a78c21a81caf27f37ecbeb700d234a65110fe5b92b523d759dcbfa6d03a35e4abe821155927ca8b2ca46ef6f709343bcf60bfa28685f6f16493399cc5d0e70754234fb2bae712ea2d6431897028db6495bd9494d9b6754116d288bfc0446f287469c672f22ea5896b7ae41fff05d99af003323b0a82949ce3507e3ad72d801acc063d3a87dcaaae347dafb8540a90340511bbe7c00bac2450128884e919ee57794d8cca5150cfe7544ce4b0096fe68d42ae459aa43a5112e8331dbe0557258343c9e79a2c5cc903bb2c8f95f42bf40874431707e166d78de56cbdeaf03e8bb6708b4355a65f22b78d0e3e048b602cc27c3500d44e9beac9feb806c77ad9ffa04f6500719cdcc64f978ec3e5d68f716fcad428bb09bd50f47bcbed447afadf052b7c2887cc8d260fd9ce98f51ec8113ea0276f011a2dbd3a0c00f42bf86432c45eeb688524ff8672a03b5f72f36f2fb39a070aa382103c4ad8ce613ec94afa07122425a0c3435781d4832c5a2072d473aa09949383325a9bed524f1827c998b1b615919db190015013c1edcb4a45abd19c857b39bd80f301bec26aad1e6cf61546ecde055b9d8c3a2d35a749a9d1213a6657008aa1ad8d4690e2345bf998c46a836ce06fde90c2adb07ed5c0be7f36f17bead26482709903dd06336b96d2210c4b636a85710e9c61cdc4a561451530f712aeab2a862a793a62cf3519ba0a99e64b6b17bce34d2f07b72b2b11c08ca7521c6b21fe8d71046a16ea3a62de8b592cc17963761aeed4cadb89183ea376940e37b509e4ce996ae252490c206281dd0f42771fbb063b6800214c31b77609e946040f90c8835180809b40b1065f6c0b0d4e31a97b2c8f239c01566d5a3a19a975625f508aeafa2939d4d2896c3abfa71ce61f0faea7307bedf17f75180e8a8775ecb0c9377d20a1c525a30c7b28b45cd4fe0746e60c587c5e897b86559063dde6d2e15f9f7922706325faafd434e60c6ae8a2821966bc7fb4dd0c48dfb1d34759d9bba251ebc3429b18f48a65b1cf8d02f11aa3b191b01f5fd107d5c8cfe389b152ae458fc8cd4063d4d77680d1a740ad1135c2722dc0ac684ec5a7e1b4d33b513812d39d938da523889a41f0e67865f4075574e7fc0e634bab2ea939acfb99b356235cbf3545e520c63530f10560268a762e03e62002318e48fd8353aa12cfb77cc6354a7a8506d619dd70ff9a2fabc27a620fe0f45096530c35815d48e42498b46785c791dbe95c055ecf522ad38a1728e1fe3f55bfc8445de723a217f0b051d358864494196c768ed275a345774b0b681b6af67ce3413e986b2f676e43cc751fd5d882df4ff5c140706e2d8412812351560116d0e2caf09e79a8cc2899256a81afa5864afd12aa6e750628ef53ca61742252bfb23632e562aa0e911ed14508e1994982c56d59979283a8c00b04623227c4675378699c1aa6c2b0028bf96b4efc580f462f3149fb282cc6078da975052fd1237d59d150f2a29f92e5e5528e85c8ece9c8af73b0186b6e884ab50d0990083790305971e1ac01b0299eac7f1e8fc001c886acb1bec3899a7fd1ac704d01f1ff393dedd7901d9648551e665a99fae1e0c5af309c6454fc0b7fddb68c206752988d0d0eeb5b468bb33b6210e9b5b5355c427a8e15f8c198871fc1ba2f5c7282efd94524f0eaf42d1621cf2ba579b18d1b668efafd48b470dc84e14abd6c0299eceeee90e7c56a61546fc68ffc126445deef4ea453413206b8f12797f366877e2f517a03ddfe0c43f44a9bd279bb3b99575fc622de1547310fb984795b29479ad7988ac07603897a20cdf1dc73c850a612b56c20d68f73209f31f11789aab31d7d1964d41bc817997296cde6b24b8fcb3ac1c1d4891c3799937fc1cfd740da2956acb48f4012f362dd34ac075263c7d22a251c4956e407bb36af04b1ab52e60112d4eb1420605da86e99ad3ab687fb54d2f5e95829d5cdf80111531765302c32f474a509421bd360f23a2bda339b611193a4362fdb10bf6f080e6181e44c48d52dd5fcc398df886430d8bfe53555d5345343bbcf218d0421faa6faf22a228f907f8f7507829278ce503ccb570cab20f03d409de9dd39c7b01885012ef340509fee5302c17403a15d14c958d7f815c6a13d55ff0f96718f930388230ee63068b2221dceb2c783737aef11a0a149df09d64fb227e8168e083e793e7ba19f9de7e50953949b8fd2c4653e7d43b6b6d4046323f0a25fb357a7c3afab83568d044eddb43d87447c254455493e57d2dfecb717a1ce77b0aa5fb6949eeb31051bf330cfe23e6cc6474fe2dc621d91c4457440cd223772365261cb09a1af1c0514e44fb7781950c80dd946aed71b2a2d47b70a4a318061e076b9b08a7a3162bdc8f7b180f675a0bc7ab72d0a56c0cabc122fc6c8e6d246cdb702449123f8031bb603cc9f8cb3a2493ea07ec4269e6629642939d635d9acedd806b38718db0768d43946492579315e87855de0f27b91f799ebfc0a118aca0f05192e90e2e07883d6f0419858133b581568598202596fe7c46f5d73d8a56ca072bad9e18248b45275e391b4ff5374bed01cf4cf51c83e8bdb25a1b850e19e4c8abb349ce3478f88761b0cfc24195e13ecec4679dd08fb7b3b3be00605f0b631c073a1ac1980d46b42844e49d7e184033d1b73329b1be533ab8df205f3f08f0b580935ca84d29e8b4ee1938d67e782f03c6efc1c64621d5506ee97f702f07d8bde502d8250c685b70dd8b5865732cdabec491a20a6965904cd311981fc9440ef7814a4b4b728fd675944198294ac0772202f664b4b1fef2a5785eb618cce257c8fb0a700fd310c9e624b9c60044f728a22d8b5d069d5d14a2d33a86686bb99de76984fc6433febf15aa8ff12bf0ee3bd8df556efe340a4bc9b650280350c768fdebd70a3b5e061ebbc6b2942c075d7c9e018458becbabb105547709569ec6de760004bc10750baabf8fe0be9e625328c114d5d9965a3f3d0c6718607892dad1a135c04d59391a92835c53816c33a8653a59096ae6426ea976a14a3597730306fb7ad27f9d53d0c62e27d4d2259b6a68cc9c80005a3d5ff01aa2f3a598f66801606f06655b9ae2bacb29f123f132a76907b0ec039d9f4dc937d7998e625618f7f515ab844e4074f253fd5f195d8aebfd08ff7766154875cd994865a6e37f0b6dd0e9ffdb486b06205ab544dbbdf8ee2728989d838ab91f4e541ebb15e77c5f3be722b4eb564a4c8dc99469bef1f2cb2ff742688ca0911bb3b838e222a9c62fe12177c2fb7f9aecc0ebca4635e5fc7654212b51c1ad2f4193464f0fd298d21cea10349b439f1a70306a43950a4acc2736b8a3519a7ed40b377644332fd84235a8aad540db5a2070c9e3cbfe5f800100b3e0af98735d4afd0000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_filter`
--

CREATE TABLE `rcl_filter` (
  `id` int(11) UNSIGNED NOT NULL,
  `execorder` int(10) UNSIGNED NOT NULL DEFAULT 99,
  `isactive` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `flags` int(10) UNSIGNED DEFAULT 0,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `match_all_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `stop_onmatch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `target` enum('Any','Web','Email','API') NOT NULL DEFAULT 'Any',
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_filter`
--

INSERT INTO `rcl_filter` (`id`, `execorder`, `isactive`, `flags`, `status`, `match_all_rules`, `stop_onmatch`, `target`, `email_id`, `name`, `notes`, `created`, `updated`) VALUES
(1, 99, 1, 0, 0, 0, 0, 'Email', 0, 'SYSTEM BAN LIST', 'Internal list for email banning. Do not remove', '2023-03-08 12:14:07', '2023-03-08 12:14:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_filter_action`
--

CREATE TABLE `rcl_filter_action` (
  `id` int(11) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(24) NOT NULL,
  `configuration` text DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_filter_action`
--

INSERT INTO `rcl_filter_action` (`id`, `filter_id`, `sort`, `type`, `configuration`, `updated`) VALUES
(1, 1, 1, 'reject', '[]', '2023-03-08 12:14:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_filter_rule`
--

CREATE TABLE `rcl_filter_rule` (
  `id` int(11) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `what` varchar(32) NOT NULL,
  `how` enum('equal','not_equal','contains','dn_contain','starts','ends','match','not_match') NOT NULL,
  `val` varchar(255) NOT NULL,
  `isactive` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `notes` tinytext NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_filter_rule`
--

INSERT INTO `rcl_filter_rule` (`id`, `filter_id`, `what`, `how`, `val`, `isactive`, `notes`, `created`, `updated`) VALUES
(1, 1, 'email', 'equal', 'test@example.com', 1, '', '0000-00-00 00:00:00', '2023-03-08 12:14:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_form`
--

CREATE TABLE `rcl_form` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(8) NOT NULL DEFAULT 'G',
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `instructions` varchar(512) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_form`
--

INSERT INTO `rcl_form` (`id`, `pid`, `type`, `flags`, `title`, `instructions`, `name`, `notes`, `created`, `updated`) VALUES
(1, NULL, 'U', 1, 'Información del Contacto', NULL, '', NULL, '2023-03-08 12:13:55', '2023-03-08 13:28:28'),
(2, NULL, 'T', 1, 'Ingresa la información requerida para atender tu solicitud.', '<p><br /></p>', '', '&lt;p&gt;&lt;br /&gt;&lt;/p&gt;', '2023-03-08 12:13:59', '2023-03-08 23:48:01'),
(3, NULL, 'C', 1, 'Información de la Compañia', '<p><br /></p>', '', NULL, '2023-03-08 12:14:00', '2023-03-08 13:26:27'),
(4, NULL, 'O', 1, 'Información de la Organización', '<p><br /></p>', '', NULL, '2023-03-08 12:14:01', '2023-03-08 13:27:06'),
(5, NULL, 'A', 1, 'Task Details', 'Please Describe The Issue', '', 'This form is used to create a task.', '2023-03-08 12:14:04', '2023-03-08 12:14:04'),
(6, NULL, 'L1', 0, 'Ticket Status Properties', 'Properties that can be set on a ticket status.', '', NULL, '2023-03-08 12:14:05', '2023-03-08 12:14:05'),
(7, NULL, 'G', 1, 'Información Reclutamiento', NULL, '', NULL, '2023-03-08 13:34:00', '2023-03-08 13:34:00'),
(8, NULL, 'G', 1, 'Formulario de alta de usuario en Plataforma de Reclutamiento', '<p>En este formulario puedes ingresar los datos para solicitar el alta de uno o varios usuarios  a uno o varios proyectos. Recuerda que cada rol se configura de manera diferente. Para agilizar el llenado puedes pegar desde tu excel la información, si es un solo usuario, llena el formulario que se encuentra al final de la sección. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></', '', NULL, '2023-03-08 15:24:18', '2023-03-11 20:15:03'),
(9, NULL, 'G', 3, 'Alta de Localidades / Asignación de localidad a usuario', '', '', NULL, '2023-03-08 16:13:00', '2023-03-10 22:11:37'),
(10, NULL, 'G', 1, 'Marca', NULL, '', NULL, '2023-03-08 16:20:35', '2023-03-08 16:20:35'),
(11, NULL, 'G', 3, 'Localidades', '<p>En caso de solicitar más localidades para el mismo proyecto, favor de ingresarlas en el siguiente formulario:</p>', '', NULL, '2023-03-08 16:30:07', '2023-03-11 15:20:01'),
(12, NULL, 'G', 1, 'Formulario de alta de puestos en plataforma Reclutamiento', '<p>En este formulario puedes ingresar los datos para solicitar el alta de puestos  a uno o varios proyectos. Para agilizar el llenado puedes pegar desde tu excel la información, si es un solo puesto, llena el formulario que se encuentra al final de la sección. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-08 17:44:35', '2023-03-10 22:25:13'),
(13, NULL, 'G', 1, 'Formulario de alta de sector en Reclutamiento', '<p>En este formulario puedes ingresar los datos necesarios para solicitar el alta de sectores nuevos a uno o varios proyectos existentes. Para agilizar el llenado puedes pegar desde tu excel la información. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-08 19:55:29', '2023-03-11 15:09:30'),
(14, NULL, 'G', 1, 'Ingresa las vacantes a reasignar, basándote en el siguiente ejemplo:', '<figure><img src=\"images/reasignar.png\" alt=\"image\" data-image=\"mjt7ovv7zh8e\" /></figure>', '', NULL, '2023-03-08 20:34:56', '2023-03-14 13:35:14'),
(15, NULL, 'G', 1, 'Sector', NULL, '', NULL, '2023-03-08 22:38:31', '2023-03-08 22:38:31'),
(16, NULL, 'L2', 1, 'REGIÓN Properties', NULL, '', NULL, '2023-03-09 00:10:18', '2023-03-09 00:10:18'),
(17, NULL, 'G', 3, 'FORMULARIO X', NULL, '', NULL, '2023-03-09 00:31:03', '2023-03-11 15:20:01'),
(18, NULL, 'L3', 1, 'REGIONES ADVENTUM Properties', NULL, '', NULL, '2023-03-09 01:01:34', '2023-03-09 01:01:34'),
(19, NULL, 'L4', 1, 'REGIONES AXIS Properties', NULL, '', NULL, '2023-03-09 01:10:16', '2023-03-09 01:10:16'),
(20, NULL, 'L5', 1, 'SECTORES ADVENTUM Properties', NULL, '', NULL, '2023-03-09 01:41:45', '2023-03-09 01:41:45'),
(21, NULL, 'G', 1, 'Formulario de asignación de Vacantes', '<p>En este formulario puedes ingresar los datos necesarios para solicitar reasignación de vacantes a uno varios usuarios de la plataforma. Para agilizar el llenado puedes pegar desde tu excel la información. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-09 02:13:30', '2023-03-11 21:09:52'),
(22, NULL, 'G', 1, 'Formulario de asignación de Permisos de visualización', '<p>En este formulario puedes ingresar los datos para solicitar los permisos de visualización de vacantes a uno o más usuarios. Para agilizar el llenado puedes pegar desde tu excel la información, si es un solo puesto, llena el formulario que se encuentra al final de la sección. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-09 02:50:44', '2023-03-11 20:16:18'),
(23, NULL, 'L6', 1, 'SECTOR Properties', NULL, '', NULL, '2023-03-09 03:19:42', '2023-03-09 03:19:42'),
(24, NULL, 'L7', 1, 'ÁREA Properties', NULL, '', NULL, '2023-03-09 14:30:11', '2023-03-09 14:30:11'),
(25, NULL, 'G', 1, 'Área Solicitante', NULL, '', NULL, '2023-03-09 15:37:49', '2023-03-09 15:37:49'),
(26, NULL, 'G', 1, 'Región', NULL, '', NULL, '2023-03-09 18:10:40', '2023-03-09 18:10:40'),
(27, NULL, 'L8', 1, 'TIPO DE OPERACIÓN Properties', NULL, '', NULL, '2023-03-09 19:49:40', '2023-03-09 19:49:40'),
(28, NULL, 'G', 1, 'Tipo de Operación', NULL, '', NULL, '2023-03-09 20:00:05', '2023-03-09 20:00:05'),
(29, NULL, 'G', 1, 'Formulario de alta de localidades / asignación de localidad a usuario', '<p>En este formulario puedes ingresar los datos necesarios para solicitar el alta de localidades nuevas a uno o varios proyectos o la asignación de localidades a usuarios. Para agilizar el llenado puedes pegar desde tu excel la información. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a><br /></p>', '', NULL, '2023-03-10 15:20:48', '2023-03-10 22:24:49'),
(30, NULL, 'G', 1, 'Ingresa los datos de las localidades, basándote en el siguiente ejemplo:', '<figure><img src=\"images/localidad.png\" alt=\"image\" data-image=\"pw0grb0w7sgm\" /></figure>', '', NULL, '2023-03-10 16:21:03', '2023-03-14 13:30:21'),
(31, NULL, 'G', 1, 'ALTA DE PROYECTO', NULL, '', NULL, '2023-03-10 17:41:27', '2023-03-10 17:41:27'),
(32, NULL, 'G', 1, 'Ingrese los datos del puesto', '', '', NULL, '2023-03-10 21:41:03', '2023-03-14 11:47:29'),
(33, NULL, 'G', 1, 'Ingresa los datos del usuario', '', '', NULL, '2023-03-10 22:36:37', '2023-03-14 12:48:35'),
(34, NULL, 'G', 1, 'Ingrese los datos de los sectores basándote en el siguiente ejemplo:', '<figure><img src=\"images/sector.png\" alt=\"image\" data-image=\"08889awo6dbl\" /></figure>', '', NULL, '2023-03-11 15:06:54', '2023-03-14 12:31:35'),
(35, NULL, 'G', 1, 'Formulario de anexo de Tipo de Operación', '<p>En este formulario puedes ingresar los datos necesarios para solicitar el alta de tipo de operación a una marca existente.¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-11 15:28:21', '2023-03-11 15:31:09'),
(36, NULL, 'G', 1, 'Ingresa a quién(s) se les dará permiso de visualización, basándote en el siguiente ejemplo:', '<figure><img src=\"images/visualizador.png\" alt=\"image\" data-image=\"o7i170dsf2jb\" /></figure>', '', NULL, '2023-03-11 17:31:03', '2023-03-14 13:28:17'),
(37, NULL, 'G', 1, 'Formulario de solicitud de capacitación a usuarios', '<p>En este formulario puedes ingresar los datos necesarios para solicitar capacitación a usuarios para el uso de la plataforma de Reclutamiento. Para agilizar el llenado puedes pegar desde tu excel la información. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-11 17:40:00', '2023-03-11 17:40:00'),
(38, NULL, 'G', 1, 'Ingrese los datos de los usuarios a capacitar basándote en el siguiente ejemplo:', '<figure><img src=\"images/capacitarusuario.png\" alt=\"image\" data-image=\"gy4dody4mq4v\" /></figure>', '', NULL, '2023-03-11 18:14:07', '2023-03-14 13:10:31'),
(39, NULL, 'G', 1, 'Usuario a capacitar', NULL, '', NULL, '2023-03-11 19:08:25', '2023-03-11 19:08:25'),
(40, NULL, 'G', 1, 'Formulario para solicitar actualización / creación de infografías o manuales', NULL, '', NULL, '2023-03-11 19:32:47', '2023-03-11 19:32:47'),
(41, NULL, 'G', 1, 'Formulario de creación de plantillas', '<p>En este formulario puedes ingresar los datos necesarios para solicitar la creación de plantillas para la plataforma de Reclutamiento. Puedes cargar hasta 3 plantillas por solicitud. ¿Dudas de cómo llenarlo? <a href=\"https://sites.google.com/3ti.mx/webreclutamiento/sistema-de-tickets-pip?authuser=0\" target=\"_blank\">Entra al siguiente enlace y ve el manual</a></p>', '', NULL, '2023-03-11 20:10:10', '2023-03-11 20:17:44'),
(42, NULL, 'G', 1, 'Solicitud Alta de Usuario (individual)', NULL, '', NULL, '2023-03-13 15:50:49', '2023-03-13 15:50:49'),
(43, NULL, 'L9', 1, 'PERMISOS DE EDICIÓN DE PLANTILLAS Properties', NULL, '', NULL, '2023-03-14 11:28:31', '2023-03-14 11:28:31'),
(44, NULL, 'L10', 1, 'ROLES DE CANELA Properties', NULL, '', NULL, '2023-03-14 12:51:16', '2023-03-14 12:51:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_form_entry`
--

CREATE TABLE `rcl_form_entry` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` int(11) UNSIGNED NOT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` char(1) NOT NULL DEFAULT 'T',
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `extra` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_form_entry`
--

INSERT INTO `rcl_form_entry` (`id`, `form_id`, `object_id`, `object_type`, `sort`, `extra`, `created`, `updated`) VALUES
(1, 4, 1, 'O', 1, NULL, '2023-03-08 12:14:07', '2023-03-08 12:14:07'),
(2, 3, NULL, 'C', 1, NULL, '2023-03-08 12:14:36', '2023-03-08 12:14:36'),
(3, 1, 1, 'U', 1, NULL, '2023-03-08 12:14:37', '2023-03-08 12:14:37'),
(5, 1, 2, 'U', 1, NULL, '2023-03-08 13:35:39', '2023-03-08 13:35:39'),
(13, 1, 4, 'U', 0, NULL, '2023-03-09 13:28:39', '2023-03-12 07:34:54'),
(14, 1, 5, 'U', 1, NULL, '2023-03-09 13:30:25', '2023-03-09 13:30:25'),
(15, 1, 6, 'U', 1, NULL, '2023-03-09 13:30:25', '2023-03-09 13:30:25'),
(16, 1, 7, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(17, 1, 8, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(18, 1, 9, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(19, 1, 10, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(20, 1, 11, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(21, 1, 12, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(22, 1, 13, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(23, 1, 14, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(24, 1, 15, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(25, 1, 16, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(26, 1, 17, 'U', 1, NULL, '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(27, 1, 18, 'U', 1, NULL, '2023-03-09 13:30:27', '2023-03-09 13:30:27'),
(28, 1, 19, 'U', 1, NULL, '2023-03-09 13:30:27', '2023-03-09 13:30:27'),
(29, 1, 20, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(30, 1, 21, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(31, 1, 22, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(32, 1, 23, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(33, 1, 24, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(34, 1, 25, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(35, 1, 26, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(36, 1, 27, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(37, 1, 28, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(38, 1, 29, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(39, 1, 30, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(40, 1, 31, 'U', 1, NULL, '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(41, 1, 32, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(42, 1, 33, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(43, 1, 34, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(44, 1, 35, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(45, 1, 36, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(46, 1, 37, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(47, 1, 38, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(48, 1, 39, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(49, 1, 40, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(50, 1, 41, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(51, 1, 42, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(52, 1, 43, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(53, 1, 44, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(54, 1, 45, 'U', 1, NULL, '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(55, 1, 46, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(56, 1, 47, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(57, 1, 48, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(58, 1, 49, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(59, 1, 50, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(60, 1, 51, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(61, 1, 52, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(62, 1, 53, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(63, 1, 54, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(64, 1, 55, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(65, 1, 56, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(66, 1, 57, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(67, 1, 58, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(68, 1, 59, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(69, 1, 60, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(70, 1, 61, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(71, 1, 62, 'U', 1, NULL, '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(72, 1, 63, 'U', 1, NULL, '2023-03-09 13:30:31', '2023-03-09 13:30:31'),
(73, 1, 64, 'U', 1, NULL, '2023-03-09 13:30:31', '2023-03-09 13:30:31'),
(74, 4, 2, 'O', 1, NULL, '2023-03-09 13:34:12', '2023-03-09 13:34:12'),
(75, 4, 3, 'O', 1, NULL, '2023-03-09 13:35:31', '2023-03-09 13:35:31'),
(76, 1, 65, 'U', 1, NULL, '2023-03-09 13:37:30', '2023-03-09 13:37:30'),
(77, 1, 66, 'U', 1, NULL, '2023-03-09 13:40:40', '2023-03-09 13:40:40'),
(141, 2, 23, 'T', 3, '{\"disable\":[20,21,22]}', '2023-03-15 23:16:48', '2023-03-15 23:16:48'),
(142, 25, 23, 'T', 1, '{\"disable\":[]}', '2023-03-15 23:16:49', '2023-03-15 23:16:49'),
(143, 8, 23, 'T', 1, '{\"disable\":[]}', '2023-03-15 23:16:49', '2023-03-15 23:16:49'),
(144, 33, 23, 'T', 2, '{\"disable\":[]}', '2023-03-15 23:16:49', '2023-03-15 23:16:49'),
(149, 1, 67, 'U', 1, NULL, '2023-03-16 23:00:21', '2023-03-16 23:00:21'),
(150, 2, 25, 'T', 2, '{\"disable\":[]}', '2023-03-17 01:51:38', '2023-03-17 01:51:38'),
(151, 10, 25, 'T', 1, '{\"disable\":[]}', '2023-03-17 01:51:39', '2023-03-17 01:51:39'),
(152, 25, 25, 'T', 1, '{\"disable\":[]}', '2023-03-17 01:51:39', '2023-03-17 01:51:39'),
(153, 7, 25, 'T', 3, '{\"disable\":[37,38]}', '2023-03-17 01:51:40', '2023-03-17 01:51:40'),
(154, 2, 26, 'T', 2, '{\"disable\":[]}', '2023-03-17 02:49:14', '2023-03-17 02:49:14'),
(155, 10, 26, 'T', 1, '{\"disable\":[]}', '2023-03-17 02:49:14', '2023-03-17 02:49:14'),
(156, 25, 26, 'T', 1, '{\"disable\":[]}', '2023-03-17 02:49:15', '2023-03-17 02:49:15'),
(157, 7, 26, 'T', 3, '{\"disable\":[37,38]}', '2023-03-17 02:49:15', '2023-03-17 02:49:15'),
(158, 1, 68, 'U', 1, NULL, '2023-03-17 05:51:01', '2023-03-17 05:51:01'),
(159, 2, 27, 'T', 2, '{\"disable\":[]}', '2023-03-17 06:38:08', '2023-03-17 06:38:08'),
(160, 10, 27, 'T', 1, '{\"disable\":[]}', '2023-03-17 06:38:09', '2023-03-17 06:38:09'),
(161, 25, 27, 'T', 1, '{\"disable\":[]}', '2023-03-17 06:38:09', '2023-03-17 06:38:09'),
(162, 7, 27, 'T', 3, '{\"disable\":[37]}', '2023-03-17 06:38:09', '2023-03-17 06:38:09'),
(163, 2, 28, 'T', 2, '{\"disable\":[]}', '2023-03-19 01:10:14', '2023-03-19 01:10:14'),
(164, 10, 28, 'T', 1, '{\"disable\":[]}', '2023-03-19 01:10:14', '2023-03-19 01:10:14'),
(165, 25, 28, 'T', 1, '{\"disable\":[]}', '2023-03-19 01:10:15', '2023-03-19 01:10:15'),
(166, 7, 28, 'T', 3, '{\"disable\":[37]}', '2023-03-19 01:10:15', '2023-03-19 01:10:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_form_entry_values`
--

CREATE TABLE `rcl_form_entry_values` (
  `entry_id` int(11) UNSIGNED NOT NULL,
  `field_id` int(11) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `value_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_form_entry_values`
--

INSERT INTO `rcl_form_entry_values` (`entry_id`, `field_id`, `value`, `value_id`) VALUES
(1, 28, 'Colina de Mocusari 33, Boulevares, 53140 Naucalpan de Juárez, Méx.', NULL),
(1, 29, '5553080231', NULL),
(1, 30, 'https://www.triplei.mx/', NULL),
(1, 31, NULL, NULL),
(2, 23, 'Idea Market Solutions', NULL),
(2, 24, 'https://www.idmkt.mx/', NULL),
(2, 25, '5543549331', NULL),
(2, 26, NULL, NULL),
(5, 3, NULL, NULL),
(5, 4, NULL, NULL),
(13, 3, '5625516025', NULL),
(13, 4, NULL, NULL),
(14, 3, '5575002347', NULL),
(14, 4, NULL, NULL),
(15, 3, '5554313047', NULL),
(15, 4, NULL, NULL),
(16, 3, '4422265681', NULL),
(16, 4, NULL, NULL),
(17, 3, '5536778903', NULL),
(17, 4, NULL, NULL),
(18, 3, '4421270360', NULL),
(18, 4, NULL, NULL),
(19, 3, '5561221813', NULL),
(19, 4, NULL, NULL),
(20, 3, '5513849238', NULL),
(20, 4, NULL, NULL),
(21, 3, '5548841688', NULL),
(21, 4, NULL, NULL),
(22, 3, NULL, NULL),
(22, 4, NULL, NULL),
(23, 3, '5540448202', NULL),
(23, 4, NULL, NULL),
(24, 3, '5561221816', NULL),
(24, 4, NULL, NULL),
(25, 3, '5549447554', NULL),
(25, 4, NULL, NULL),
(26, 3, '5561221810', NULL),
(26, 4, NULL, NULL),
(27, 3, '5540440051', NULL),
(27, 4, NULL, NULL),
(28, 3, '5579695909', NULL),
(28, 4, NULL, NULL),
(29, 3, NULL, NULL),
(29, 4, NULL, NULL),
(30, 3, '5545334730', NULL),
(30, 4, NULL, NULL),
(31, 3, '5625516022', NULL),
(31, 4, NULL, NULL),
(32, 3, '5554553814', NULL),
(32, 4, NULL, NULL),
(33, 3, '6862346318', NULL),
(33, 4, NULL, NULL),
(34, 3, '5554526802', NULL),
(34, 4, NULL, NULL),
(35, 3, '5580274058', NULL),
(35, 4, NULL, NULL),
(36, 3, '5574553571', NULL),
(36, 4, NULL, NULL),
(37, 3, NULL, NULL),
(37, 4, NULL, NULL),
(38, 3, '5580109495', NULL),
(38, 4, NULL, NULL),
(39, 3, '5519107827', NULL),
(39, 4, NULL, NULL),
(40, 3, '5561221817', NULL),
(40, 4, NULL, NULL),
(41, 3, '5554076288', NULL),
(41, 4, NULL, NULL),
(42, 3, '5585733462', NULL),
(42, 4, NULL, NULL),
(43, 3, '', NULL),
(43, 4, NULL, NULL),
(44, 3, '5579323872', NULL),
(44, 4, NULL, NULL),
(45, 3, '5561221812', NULL),
(45, 4, NULL, NULL),
(46, 3, '5579191140', NULL),
(46, 4, NULL, NULL),
(47, 3, '3315329200', NULL),
(47, 4, NULL, NULL),
(48, 3, '5561221814', NULL),
(48, 4, NULL, NULL),
(49, 3, '5579086129', NULL),
(49, 4, NULL, NULL),
(50, 3, '5561163430', NULL),
(50, 4, NULL, NULL),
(51, 3, '5530693749', NULL),
(51, 4, NULL, NULL),
(52, 3, NULL, NULL),
(52, 4, NULL, NULL),
(53, 3, '5580032239', NULL),
(53, 4, NULL, NULL),
(54, 3, '5532241100', NULL),
(54, 4, NULL, NULL),
(55, 3, '5535199928', NULL),
(55, 4, NULL, NULL),
(56, 3, '5519170531', NULL),
(56, 4, NULL, NULL),
(57, 3, '5544554031', NULL),
(57, 4, NULL, NULL),
(58, 3, '5538883629', NULL),
(58, 4, NULL, NULL),
(59, 3, '4421943562', NULL),
(59, 4, NULL, NULL),
(60, 3, '5541886299', NULL),
(60, 4, NULL, NULL),
(61, 3, '5580292562', NULL),
(61, 4, NULL, NULL),
(62, 3, '5511412282', NULL),
(62, 4, NULL, NULL),
(63, 3, NULL, NULL),
(63, 4, NULL, NULL),
(64, 3, NULL, NULL),
(64, 4, NULL, NULL),
(65, 3, '5580702501', NULL),
(65, 4, NULL, NULL),
(66, 3, '5514957064', NULL),
(66, 4, NULL, NULL),
(67, 3, NULL, NULL),
(67, 4, NULL, NULL),
(68, 3, '5516942838', NULL),
(68, 4, NULL, NULL),
(69, 3, '5580789578', NULL),
(69, 4, NULL, NULL),
(70, 3, '5578586871', NULL),
(70, 4, NULL, NULL),
(71, 3, '5579323873', NULL),
(71, 4, NULL, NULL),
(72, 3, NULL, NULL),
(72, 4, NULL, NULL),
(73, 3, '8121536011', NULL),
(73, 4, NULL, NULL),
(74, 28, NULL, NULL),
(74, 29, '5553080231', NULL),
(74, 30, 'https://www.triplei.mx/', NULL),
(74, 31, NULL, NULL),
(75, 28, NULL, NULL),
(75, 29, NULL, NULL),
(75, 30, NULL, NULL),
(75, 31, NULL, NULL),
(76, 3, NULL, NULL),
(76, 4, NULL, NULL),
(77, 3, NULL, NULL),
(77, 4, NULL, NULL),
(141, 20, 'Solicitud / Alta de Usuario', NULL),
(141, 22, 'Normal', 2),
(142, 171, '{\"94\":\"OPERACIONES\"}', NULL),
(143, 263, '{\"key2\":\"Dar retroalimentaci\\u00f3n a Candidatos\"}', NULL),
(144, 264, 'JUAN BARRIOS', NULL),
(144, 297, 'juan@barrios.mx', NULL),
(144, 298, '{\"188\":\"CLIENTE ENTREVISTADOR\"}', NULL),
(144, 299, '{\"102\":\"ADVENTUM\"}', NULL),
(144, 300, '{\"97\":\"REGI\\u00d3N 3\"}', NULL),
(149, 3, NULL, NULL),
(149, 4, NULL, NULL),
(150, 20, 'Solicitud de revertir proceso en vacante', NULL),
(150, 22, 'Normal', 2),
(151, 63, '{\"101\":\"ASIGNAR TODAS\"}', NULL),
(152, 171, '{\"94\":\"OPERACIONES\"}', NULL),
(153, 36, '{\"key1\":\"Plataforma de Reclutamiento\"}', NULL),
(153, 37, NULL, NULL),
(153, 38, NULL, NULL),
(153, 39, '{\"key1\":\"Google Chrome\"}', NULL),
(153, 40, '9072, 9073', NULL),
(153, 41, 'Versión. 71448', NULL),
(153, 42, '{\"key2\":\"Sistema\"}', NULL),
(153, 43, '{\"key2\":\"FLUJO DE TRABAJO\"}', NULL),
(153, 44, 'SISTEMA', NULL),
(153, 45, '{\"key1\":\"SISTEMA\"}', NULL),
(153, 46, '{\"key1\":\"INCIDENCIA \\/ BUG\"}', NULL),
(154, 20, 'No sube info de candidato a Mi Reclu', NULL),
(154, 22, 'Normal', 2),
(155, 63, NULL, NULL),
(156, 171, '{\"94\":\"OPERACIONES\"}', NULL),
(157, 36, '{\"key2\":\"Mi Reclu\"}', NULL),
(157, 37, NULL, NULL),
(157, 38, NULL, NULL),
(157, 39, '{\"key1\":\"Google Chrome\"}', NULL),
(157, 40, '8747', NULL),
(157, 41, 'Versión. 05481', NULL),
(157, 42, NULL, NULL),
(157, 43, NULL, NULL),
(157, 44, NULL, NULL),
(157, 45, NULL, NULL),
(157, 46, NULL, NULL),
(158, 3, '5519114644', NULL),
(158, 4, NULL, NULL),
(159, 20, 'Solicitud de revertir proceso en vacante', NULL),
(159, 22, 'Normal', 2),
(160, 63, NULL, NULL),
(161, 171, '{\"94\":\"OPERACIONES\"}', NULL),
(162, 36, '{\"key1\":\"Plataforma de Reclutamiento\"}', NULL),
(162, 37, NULL, NULL),
(162, 38, '{\"135\":\"N\\/A\"}', NULL),
(162, 39, '{\"key1\":\"Google Chrome\"}', NULL),
(162, 40, '9072', NULL),
(162, 41, 'Versión. 71448', NULL),
(162, 42, NULL, NULL),
(162, 43, NULL, NULL),
(162, 44, NULL, NULL),
(162, 45, '{\"key2\":\"USUARIO\"}', NULL),
(162, 46, NULL, NULL),
(163, 20, 'No puedo accesar a la plataforma', NULL),
(163, 22, 'Normal', 2),
(164, 63, NULL, NULL),
(165, 171, '{\"94\":\"OPERACIONES\"}', NULL),
(166, 36, '{\"key1\":\"Plataforma de Reclutamiento\"}', NULL),
(166, 37, NULL, NULL),
(166, 38, '{\"135\":\"N\\/A\"}', NULL),
(166, 39, '{\"key1\":\"Google Chrome\"}', NULL),
(166, 40, 'N/A', NULL),
(166, 41, 'Versión. 71448', NULL),
(166, 42, NULL, NULL),
(166, 43, NULL, NULL),
(166, 44, NULL, NULL),
(166, 45, NULL, NULL),
(166, 46, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_form_field`
--

CREATE TABLE `rcl_form_field` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` int(11) UNSIGNED NOT NULL,
  `flags` int(10) UNSIGNED DEFAULT 1,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `label` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `configuration` text DEFAULT NULL,
  `sort` int(11) UNSIGNED NOT NULL,
  `hint` varchar(512) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_form_field`
--

INSERT INTO `rcl_form_field` (`id`, `form_id`, `flags`, `type`, `label`, `name`, `configuration`, `sort`, `hint`, `created`, `updated`) VALUES
(1, 1, 489395, 'text', 'Correo', 'email', '{\"size\":40,\"length\":64,\"validator\":\"email\"}', 1, NULL, '2023-03-08 12:13:56', '2023-03-08 13:28:28'),
(2, 1, 489395, 'text', 'Nombre Completo', 'name', '{\"size\":40,\"length\":64}', 2, NULL, '2023-03-08 12:13:57', '2023-03-08 13:28:28'),
(3, 1, 13057, 'phone', 'Teléfono', 'phone', NULL, 3, NULL, '2023-03-08 12:13:58', '2023-03-08 13:28:28'),
(4, 1, 12289, 'memo', 'Notas', 'notes', '{\"rows\":4,\"cols\":40}', 4, NULL, '2023-03-08 12:13:58', '2023-03-08 13:28:29'),
(20, 2, 489265, 'text', 'Asunto', 'subject', '{\"size\":40,\"length\":50}', 1, NULL, '2023-03-08 12:13:59', '2023-03-08 13:31:16'),
(21, 2, 480547, 'thread', 'Detalle', 'message', '{\"attachments\":true,\"size\":41943040,\"mimetypes\":null,\"extensions\":\"\",\"max\":\"\"}', 2, '<p>Ingresa los detalles sobre los motivos de la apertura del ticket.</p>', '2023-03-08 12:13:59', '2023-03-16 22:39:42'),
(22, 2, 274609, 'priority', 'Nivel de Prioridad', 'priority', NULL, 3, NULL, '2023-03-08 12:14:00', '2023-03-08 13:31:16'),
(23, 3, 291249, 'text', 'Nombre de la compañia', 'name', '{\"size\":40,\"length\":64}', 1, NULL, '2023-03-08 12:14:00', '2023-03-08 13:26:27'),
(24, 3, 274705, 'text', 'Sitio Web', 'website', '{\"size\":40,\"length\":64}', 2, NULL, '2023-03-08 12:14:00', '2023-03-08 13:26:27'),
(25, 3, 274705, 'phone', 'Teléfono', 'phone', '{\"ext\":false}', 3, NULL, '2023-03-08 12:14:00', '2023-03-08 13:26:27'),
(26, 3, 12545, 'memo', 'Dirección', 'address', '{\"rows\":2,\"cols\":40,\"html\":false,\"length\":100}', 4, NULL, '2023-03-08 12:14:00', '2023-03-08 13:26:27'),
(27, 4, 489395, 'text', 'Nombre', 'name', '{\"size\":40,\"length\":64}', 1, NULL, '2023-03-08 12:14:01', '2023-03-08 13:27:07'),
(28, 4, 13057, 'memo', 'Dirección', 'address', '{\"rows\":2,\"cols\":40,\"length\":100,\"html\":false}', 2, NULL, '2023-03-08 12:14:02', '2023-03-08 13:27:07'),
(29, 4, 13057, 'phone', 'Teléfono', 'phone', NULL, 3, NULL, '2023-03-08 12:14:02', '2023-03-08 13:27:07'),
(30, 4, 13057, 'text', 'Sitio Web', 'website', '{\"size\":40,\"length\":0}', 4, NULL, '2023-03-08 12:14:03', '2023-03-08 13:27:07'),
(31, 4, 12289, 'memo', 'Notas', 'notes', '{\"rows\":4,\"cols\":40}', 5, NULL, '2023-03-08 12:14:03', '2023-03-08 13:27:07'),
(32, 5, 487601, 'text', 'Title', 'title', '{\"size\":40,\"length\":50}', 1, NULL, '2023-03-08 12:14:04', '2023-03-08 12:14:04'),
(33, 5, 413939, 'thread', 'Description', 'description', NULL, 2, 'Details on the reason(s) for creating the task.', '2023-03-08 12:14:04', '2023-03-08 12:14:04'),
(34, 6, 487665, 'state', 'Estatus', 'state', '{\"prompt\":\"Estado del Ticket.\"}', 1, NULL, '2023-03-08 12:14:05', '2023-03-09 17:55:52'),
(35, 6, 471073, 'memo', 'Descripción', 'description', '{\"cols\":\"40\",\"rows\":\"2\",\"length\":\"100\",\"html\":false,\"placeholder\":\"\"}', 3, NULL, '2023-03-08 12:14:05', '2023-03-09 17:55:52'),
(36, 7, 14081, 'choices', 'Plataforma', 'rclplat', '{\"choices\":\"key1:Plataforma de Reclutamiento\\r\\nkey2:Mi Reclu\",\"default\":\"key1\",\"prompt\":\"\",\"multiselect\":false}', 1, NULL, '2023-03-08 13:34:00', '2023-03-08 13:34:54'),
(37, 7, 14081, 'list-7', 'Área Solicitante', 'areaglo', '{\"choices\":\"key1:Talent Group\\r\\nkey2:Operaciones\",\"default\":\"key1\",\"prompt\":\"\",\"multiselect\":false}', 2, NULL, '2023-03-08 13:39:42', '2023-03-09 14:32:53'),
(38, 7, 14081, 'list-2', 'Marca', 'rclmarca', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 3, NULL, '2023-03-08 13:40:38', '2023-03-17 06:24:03'),
(39, 7, 14081, 'choices', 'Navegador', 'rclnave', '{\"choices\":\"key1:Google Chrome\\r\\nkey2:Fire Fox\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 4, NULL, '2023-03-08 13:40:38', '2023-03-08 13:43:06'),
(40, 7, 13057, 'text', 'Id Vacante', 'rclidvac', '{\"size\":\"16\",\"length\":\"30\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 5, NULL, '2023-03-08 13:41:36', '2023-03-08 13:43:13'),
(41, 7, 13057, 'text', 'Versión de la Plataforma', 'rclverplat', '{\"size\":\"16\",\"length\":\"30\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 6, NULL, '2023-03-08 13:41:36', '2023-03-08 13:43:18'),
(42, 7, 28673, 'choices', 'Módulo', 'rclmodul', '{\"choices\":\"key1:Configuraci\\u00f3n\\r\\nkey2:Sistema\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 7, NULL, '2023-03-08 13:43:45', '2023-03-08 13:44:29'),
(43, 7, 28673, 'choices', 'Clasificación', 'rclcla', '{\"choices\":\"key1:PROYECTO\\r\\nkey2:FLUJO DE TRABAJO\\r\\nkey3:NOTIFICACIONES\\r\\nkey4:VACANTES \\/ SOLICITUDES\\r\\nkey5:SOLICITUDES ADMINISTRATIVAS\\r\\nkey6:DATA\\r\\nkey7:MI RECLU\\r\\nkey8:GENERAL\\r\\nkey9:ERROR USUARIO\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 8, NULL, '2023-03-08 15:13:00', '2023-03-08 15:14:00'),
(44, 7, 28673, 'text', 'Sección', 'rclsecc', '{\"size\":\"16\",\"length\":\"30\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 9, NULL, '2023-03-08 15:13:49', '2023-03-08 15:14:19'),
(45, 7, 28673, 'choices', 'Atribución', 'rclatri', '{\"choices\":\"key1:SISTEMA\\r\\nkey2:USUARIO\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 10, NULL, '2023-03-08 15:15:01', '2023-03-08 15:15:24'),
(46, 7, 28673, 'choices', 'Incidencia o Soporte', 'rclios', '{\"choices\":\"key1:INCIDENCIA \\/ BUG\\r\\nkey2:SOPORTE\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 11, NULL, '2023-03-08 15:16:12', '2023-03-08 15:16:32'),
(62, 9, 14081, 'text', 'Nombre de Localidad', 'altloc6', '{\"size\":\"40\",\"length\":\"30\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 7, NULL, '2023-03-08 16:18:03', '2023-03-09 14:31:57'),
(63, 10, 28673, 'list-2', 'Marca', 'rclmarca', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-08 16:20:35', '2023-03-10 17:30:42'),
(64, 9, 13057, 'text', 'Asignar a:', '', '{\"size\":\"60\",\"length\":\"45\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"Ingrese nombre de Cliente Entrevistador\"}', 8, NULL, '2023-03-08 16:26:24', '2023-03-10 15:14:29'),
(65, 11, 12545, 'text', 'Localidad 2:', '', '{\"size\":\"16\",\"length\":\"30\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 1, NULL, '2023-03-08 16:30:07', '2023-03-09 00:08:20'),
(66, 11, 12545, 'text', 'Asignar a:', '', '{\"size\":\"16\",\"length\":\"100\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 2, NULL, '2023-03-08 16:30:07', '2023-03-09 00:08:11'),
(67, 11, 13057, 'text', 'Localidad 3:', '', NULL, 3, NULL, '2023-03-08 16:30:07', '2023-03-08 16:47:39'),
(68, 11, 13057, 'text', 'Asignar a:', '', NULL, 4, NULL, '2023-03-08 16:30:07', '2023-03-08 16:47:39'),
(69, 9, 13569, 'bool', '¿Es localidad nueva?', 'altloc5', '{\"desc\":\"\"}', 6, NULL, '2023-03-08 16:37:59', '2023-03-09 14:31:57'),
(70, 11, 13057, 'text', 'Localidad 4:', '', NULL, 5, NULL, '2023-03-08 16:42:22', '2023-03-08 16:47:39'),
(71, 11, 13057, 'text', 'Asignar a:', '', NULL, 6, NULL, '2023-03-08 16:42:22', '2023-03-08 16:47:39'),
(72, 11, 13057, 'text', 'Localidad 5:', '', NULL, 7, NULL, '2023-03-08 16:42:45', '2023-03-08 16:42:45'),
(73, 11, 13057, 'text', 'Asignar a:', '', NULL, 8, NULL, '2023-03-08 16:42:45', '2023-03-08 16:42:45'),
(74, 11, 13057, 'text', 'Localidad 6:', '', NULL, 9, NULL, '2023-03-08 16:43:16', '2023-03-08 16:43:16'),
(75, 11, 13057, 'text', 'Asignar a:', '', NULL, 10, NULL, '2023-03-08 16:43:16', '2023-03-08 16:43:16'),
(76, 11, 13057, 'text', 'Localidad 7:', '', NULL, 11, NULL, '2023-03-08 16:46:23', '2023-03-08 16:46:23'),
(77, 11, 13057, 'text', 'Asignar a:', '', NULL, 12, NULL, '2023-03-08 16:46:23', '2023-03-08 16:46:23'),
(78, 11, 13057, 'text', 'Localidad 8:', '', NULL, 13, NULL, '2023-03-08 16:46:46', '2023-03-08 16:46:46'),
(79, 11, 13057, 'text', 'Asignar a:', '', NULL, 14, NULL, '2023-03-08 16:46:46', '2023-03-08 16:46:46'),
(80, 11, 13057, 'text', 'Localidad 9:', '', NULL, 15, NULL, '2023-03-08 16:47:01', '2023-03-08 16:47:01'),
(81, 11, 13057, 'text', 'Asignar a:', '', NULL, 16, NULL, '2023-03-08 16:47:01', '2023-03-08 16:47:01'),
(82, 11, 13057, 'text', 'Localidad 10:', '', NULL, 17, NULL, '2023-03-08 16:47:22', '2023-03-08 16:47:22'),
(83, 11, 13057, 'text', 'Asignar a:', '', NULL, 18, NULL, '2023-03-08 16:47:22', '2023-03-08 16:47:22'),
(114, 14, 14081, 'memo', 'Ingresa tus datos', 'reavac1', '{\"cols\":\"600\",\"rows\":\"9\",\"length\":\"\",\"html\":true,\"placeholder\":\"Recuerda solo pegar tu informaci\\u00f3n\"}', 1, NULL, '2023-03-08 20:34:56', '2023-03-14 13:35:45'),
(122, 15, 28673, 'list-6', 'Sector', 'rclsector', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-08 22:38:31', '2023-03-10 19:23:37'),
(133, 17, 14081, 'list-2', 'MARCA', 'marcavar', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 00:31:03', '2023-03-09 00:34:23'),
(139, 19, 14081, 'list-4', 'REGION 2', 'reg2axi', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":{\"29\":\"REGION 2\"}}', 2, NULL, '2023-03-09 01:11:10', '2023-03-09 01:37:43'),
(140, 19, 14081, 'list-4', 'REGION 3', 'reg3axi', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":{\"30\":\"REGION 3\"}}', 3, NULL, '2023-03-09 01:11:10', '2023-03-09 01:37:43'),
(141, 17, 14081, 'list-4', 'AXIS', 'regaxisglo', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 2, NULL, '2023-03-09 01:17:14', '2023-03-09 01:34:22'),
(145, 17, 14081, 'list-5', 'SECTORES ADVENTUM', 'regadvglo', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 3, NULL, '2023-03-09 01:31:29', '2023-03-09 01:45:39'),
(148, 20, 13569, 'list-5', 'SECTORES ADV', 'sectoradv', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 01:41:46', '2023-03-09 01:44:51'),
(151, 21, 14081, 'text', 'id vacante', 'asigvac1', '{\"size\":\"70\",\"length\":\"45\",\"validator\":\"number\",\"regex\":\"\",\"validator-error\":\"Solo ingrese n\\u00fameros de Id vacantes\",\"placeholder\":\"\"}', 1, NULL, '2023-03-09 02:13:30', '2023-03-11 21:46:39'),
(152, 21, 13569, 'text', 'Cliente Entrevistador a Asignar', 'asigvac2', '{\"size\":\"70\",\"length\":\"70\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 2, NULL, '2023-03-09 02:13:30', '2023-03-11 21:46:28'),
(153, 21, 4353, 'break', '¿Requieres asignar más vacantes al mismo Cliente o a más usuarios?', '', '[]', 3, '<p><strong>Utiliza el siguiente formulario</strong><br /></p>', '2023-03-09 02:31:10', '2023-03-11 21:47:25'),
(155, 22, 13569, 'text', 'Nombre del usuario', 'asigper1', '{\"size\":\"70\",\"length\":\"70\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 1, NULL, '2023-03-09 02:50:44', '2023-03-11 18:09:51'),
(156, 22, 13569, 'text', 'Correo del usuario', 'asigper2', '{\"size\":\"70\",\"length\":\"30\",\"validator\":\"email\",\"regex\":\"\",\"validator-error\":\"Favor de ingresar un correo v\\u00e1lido\",\"placeholder\":\"\"}', 2, NULL, '2023-03-09 02:50:44', '2023-03-11 18:10:01'),
(157, 22, 30465, 'list-2', 'Selecciona las marcas a la que se le dará acceso.', 'asigper3', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 3, '<p>Recuerda que los permisos de visualización son globales, por lo cual el usuario podrá visualizar todos los proyectos al asignarle una marca</p>', '2023-03-09 02:51:43', '2023-03-11 20:16:18'),
(158, 22, 14081, 'list-3', 'Selecciona las regiones a las que se les dará acceso', 'asigper4', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 4, NULL, '2023-03-09 02:58:46', '2023-03-11 20:16:18'),
(162, 22, 13057, 'break', 'Si vas a cargar permisos a más de un usuario utiliza el siguiente formulario', '', NULL, 5, NULL, '2023-03-09 03:03:22', '2023-03-11 18:10:04'),
(165, 17, 13057, 'list-6', 'fgfg', '', NULL, 4, NULL, '2023-03-09 13:14:50', '2023-03-09 13:14:50'),
(167, 13, 14081, 'files', 'Adjunta la imágen del sector, tal cual como se muestra en RHIN', 'areaglo', '{\"size\":33554432,\"mimetypes\":{\"image\":\"Images\"},\"extensions\":\"\",\"max\":\"\"}', 1, NULL, '2023-03-09 14:33:33', '2023-03-11 15:09:38'),
(168, 24, 12289, 'list-7', 'RECLUTAMIENTO', 'areaglo1', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 15:16:20', '2023-03-17 00:33:02'),
(169, 24, 12289, 'list-7', 'OPERACIONES', 'areaglo2', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 2, NULL, '2023-03-09 15:16:20', '2023-03-10 05:26:49'),
(171, 25, 14081, 'list-7', 'Ingresa el área a la que perteneces', 'reclareas', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 15:37:49', '2023-03-09 18:37:45'),
(172, 18, 12289, 'list-3', 'REGIÓN 1', 'reg1glo', NULL, 2, NULL, '2023-03-09 16:59:38', '2023-03-09 16:59:38'),
(173, 18, 12289, 'list-3', 'REGIÓN 2', 'reg2glo', NULL, 3, NULL, '2023-03-09 16:59:38', '2023-03-09 16:59:38'),
(174, 18, 12289, 'list-3', 'REGIÓN 3', 'reg3glo', NULL, 4, NULL, '2023-03-09 17:00:14', '2023-03-09 17:00:14'),
(175, 18, 12289, 'list-3', 'REGIÓN 4', 'reg4glo', NULL, 5, NULL, '2023-03-09 17:00:14', '2023-03-09 17:00:14'),
(176, 18, 12289, 'list-3', 'REGIÓN 5', 'reg5glo', NULL, 6, NULL, '2023-03-09 17:00:52', '2023-03-09 17:00:52'),
(177, 18, 12289, 'list-3', 'REGIÓN 6', 'reg6glo', NULL, 7, NULL, '2023-03-09 17:00:52', '2023-03-09 17:00:52'),
(178, 16, 12289, 'list-2', 'GENERAL / ASIGNAR TODAS', 'mar1glo', NULL, 1, NULL, '2023-03-09 17:08:35', '2023-03-17 06:21:43'),
(179, 16, 12289, 'list-2', 'ADVENTUM', 'mar2glo', NULL, 2, NULL, '2023-03-09 17:08:35', '2023-03-09 17:08:35'),
(180, 16, 12289, 'list-2', 'AXIS', 'mar3glo', NULL, 3, NULL, '2023-03-09 17:09:38', '2023-03-09 17:09:38'),
(181, 16, 12289, 'list-2', 'BACK UP', 'mar4glo', NULL, 4, NULL, '2023-03-09 17:09:38', '2023-03-09 17:09:38'),
(182, 16, 12289, 'list-2', 'BIC', 'mar5glo', NULL, 5, NULL, '2023-03-09 17:10:20', '2023-03-09 17:10:20'),
(183, 16, 12289, 'list-2', 'CITY CLUB', 'mar6glo', NULL, 6, NULL, '2023-03-09 17:10:20', '2023-03-09 17:10:20'),
(184, 16, 12289, 'list-2', 'DANONE', 'mar7glo', NULL, 7, NULL, '2023-03-09 17:11:01', '2023-03-09 17:11:01'),
(185, 16, 12289, 'list-2', 'DEL MONTE', 'mar8glo', NULL, 8, NULL, '2023-03-09 17:11:01', '2023-03-09 17:11:01'),
(186, 16, 12289, 'list-2', 'EGSA', 'mar9glo', NULL, 9, NULL, '2023-03-09 17:11:41', '2023-03-09 17:11:41'),
(187, 16, 12289, 'list-2', 'ENERGIZER', 'mar10glo', NULL, 10, NULL, '2023-03-09 17:11:41', '2023-03-09 17:11:41'),
(188, 16, 12289, 'list-2', 'FOOD SERVICE', 'mar11glo', NULL, 11, NULL, '2023-03-09 17:12:12', '2023-03-09 17:12:12'),
(189, 16, 12289, 'list-2', 'GRANVITA', 'mar12glo', NULL, 12, NULL, '2023-03-09 17:12:13', '2023-03-09 17:12:13'),
(190, 16, 12289, 'list-2', 'GRUMA', 'mar13glo', NULL, 13, NULL, '2023-03-09 17:13:14', '2023-03-09 17:13:14'),
(191, 16, 12289, 'list-2', 'HALO', 'mar14glo', NULL, 14, NULL, '2023-03-09 17:13:14', '2023-03-09 17:13:14'),
(192, 16, 12289, 'list-2', 'MANIOBRAS', 'mar15glo', NULL, 15, NULL, '2023-03-09 17:13:53', '2023-03-09 17:13:53'),
(193, 16, 12289, 'list-2', 'MARS', 'mar16glo', NULL, 16, NULL, '2023-03-09 17:13:53', '2023-03-09 17:13:53'),
(194, 16, 12289, 'list-2', 'NUTRIOLI', 'mar17glo', NULL, 17, NULL, '2023-03-09 17:14:40', '2023-03-09 17:14:40'),
(195, 16, 12289, 'list-2', 'RHEIN LOGISTICS', 'mar18glo', NULL, 18, NULL, '2023-03-09 17:14:40', '2023-03-09 17:14:40'),
(196, 16, 12289, 'list-2', 'RIDE TUKO', 'mar19glo', NULL, 19, NULL, '2023-03-09 17:15:09', '2023-03-09 17:15:09'),
(197, 16, 12289, 'list-2', 'SOLUGLOB', 'mar20glo', NULL, 20, NULL, '2023-03-09 17:15:09', '2023-03-09 17:15:09'),
(198, 16, 12289, 'list-2', 'SPLENDA', 'mar21glo', NULL, 21, NULL, '2023-03-09 17:15:27', '2023-03-09 17:15:27'),
(199, 16, 12289, 'list-2', 'TRIPLE I CONFIDENCIAL', 'mar22glo', NULL, 22, NULL, '2023-03-09 17:16:12', '2023-03-09 17:16:12'),
(200, 16, 12289, 'list-2', 'TRIPLE I OPERATIVO', 'mar23glo', NULL, 23, NULL, '2023-03-09 17:16:12', '2023-03-09 17:16:12'),
(201, 16, 12289, 'list-2', 'TUM', 'mar24glo', NULL, 24, NULL, '2023-03-09 17:16:50', '2023-03-09 17:16:50'),
(202, 16, 12289, 'list-2', 'UPFIELD', 'mar25glo', NULL, 25, NULL, '2023-03-09 17:16:50', '2023-03-09 17:16:50'),
(203, 16, 12289, 'list-2', 'VPC', 'mar26glo', NULL, 26, NULL, '2023-03-09 17:17:28', '2023-03-09 17:17:28'),
(204, 16, 12289, 'list-2', 'ZACATE PROMOTION', 'mar27glo', NULL, 27, NULL, '2023-03-09 17:17:28', '2023-03-09 17:17:28'),
(205, 16, 12289, 'list-2', 'RECLUTAMIENTO', 'mar28glo', NULL, 28, NULL, '2023-03-09 17:25:12', '2023-03-09 17:25:12'),
(206, 16, 12289, 'list-2', 'N/A', 'mar29glo', NULL, 29, NULL, '2023-03-09 17:29:29', '2023-03-09 17:29:29'),
(207, 23, 12289, 'list-6', 'AGUASCALIENTES', 'sec1glo', NULL, 2, NULL, '2023-03-09 17:31:51', '2023-03-09 17:35:07'),
(208, 23, 12289, 'list-6', 'BAJA CALIFORNIA', 'sec2glo', NULL, 3, NULL, '2023-03-09 17:31:51', '2023-03-09 17:35:07'),
(209, 23, 12289, 'list-6', 'BAJA CALIFORNIA SUR', 'sec3glo', NULL, 4, NULL, '2023-03-09 17:32:21', '2023-03-09 17:35:08'),
(210, 23, 12289, 'list-6', 'CAMPECHE', 'sec4glo', NULL, 5, NULL, '2023-03-09 17:32:21', '2023-03-09 17:35:08'),
(211, 23, 12289, 'list-6', 'CHIAPAS', 'sec5glo', NULL, 6, NULL, '2023-03-09 17:32:57', '2023-03-09 17:35:08'),
(212, 23, 12289, 'list-6', 'CHIHUAHUA', 'sec6glo', NULL, 7, NULL, '2023-03-09 17:32:57', '2023-03-09 17:35:08'),
(213, 23, 12289, 'list-6', 'CIUDAD DE MÉXICO', 'sec7glo', NULL, 8, NULL, '2023-03-09 17:33:30', '2023-03-09 17:35:08'),
(214, 23, 12289, 'list-6', 'COAHUILA', 'sec8glo', NULL, 9, NULL, '2023-03-09 17:33:30', '2023-03-09 17:35:08'),
(215, 23, 12289, 'list-6', 'COLIMA', 'sec9glo', NULL, 10, NULL, '2023-03-09 17:34:01', '2023-03-09 17:35:08'),
(216, 23, 12289, 'list-6', 'DURANGO', 'sec10glo', NULL, 11, NULL, '2023-03-09 17:34:01', '2023-03-09 17:35:08'),
(217, 23, 12289, 'list-6', 'GUANAJUATO', 'sec11glo', NULL, 12, NULL, '2023-03-09 17:34:36', '2023-03-09 17:35:08'),
(218, 23, 12289, 'list-6', 'GUERRERO', 'sec12glo', NULL, 13, NULL, '2023-03-09 17:34:36', '2023-03-09 17:35:08'),
(219, 23, 12289, 'list-6', 'HIDALGO', 'sec13glo', NULL, 14, NULL, '2023-03-09 17:35:08', '2023-03-09 17:35:08'),
(220, 23, 12289, 'list-6', 'JALISCO', 'sec14glo', NULL, 15, NULL, '2023-03-09 17:35:08', '2023-03-09 17:35:08'),
(221, 23, 12289, 'list-6', 'MÉXICO', 'sec15glo', NULL, 16, NULL, '2023-03-09 17:36:01', '2023-03-09 17:36:01'),
(222, 23, 12289, 'list-6', 'MICHOACÁN', 'sec16glo', NULL, 17, NULL, '2023-03-09 17:36:01', '2023-03-09 17:36:01'),
(223, 23, 12289, 'list-6', 'MORELOS', 'sec17glo', NULL, 18, NULL, '2023-03-09 17:36:30', '2023-03-09 17:36:30'),
(224, 23, 12289, 'list-6', 'NAYARIT', 'sec18glo', NULL, 19, NULL, '2023-03-09 17:36:30', '2023-03-09 17:36:30'),
(225, 23, 12289, 'list-6', 'NUEVO LEÓN', 'sec19glo', NULL, 20, NULL, '2023-03-09 17:37:07', '2023-03-09 17:37:07'),
(226, 23, 12289, 'list-6', 'OAXACA', 'sec20glo', NULL, 21, NULL, '2023-03-09 17:37:07', '2023-03-09 17:37:07'),
(227, 23, 12289, 'list-6', 'PUEBLA', 'sec21glo', NULL, 22, NULL, '2023-03-09 17:37:39', '2023-03-09 17:37:39'),
(228, 23, 12289, 'list-6', 'QUERÉTARO', 'sec22glo', NULL, 23, NULL, '2023-03-09 17:37:39', '2023-03-09 17:37:39'),
(229, 23, 12289, 'list-6', 'QUINTANA ROO', 'sec23glo', NULL, 24, NULL, '2023-03-09 17:38:29', '2023-03-09 17:38:29'),
(230, 23, 12289, 'list-6', 'SAN LUIS POTOSÍ', 'sec24glo', NULL, 25, NULL, '2023-03-09 17:38:29', '2023-03-09 17:38:29'),
(231, 23, 12289, 'list-6', 'SINALOA', 'sec25glo', NULL, 26, NULL, '2023-03-09 17:39:01', '2023-03-09 17:39:01'),
(232, 23, 12289, 'list-6', 'SONORA', 'sec26glo', NULL, 27, NULL, '2023-03-09 17:39:01', '2023-03-09 17:39:01'),
(233, 23, 12289, 'list-6', 'TABASCO', 'sec27glo', NULL, 28, NULL, '2023-03-09 17:39:33', '2023-03-09 17:39:33'),
(234, 23, 12289, 'list-6', 'TAMAULIPAS', 'sec28glo', NULL, 29, NULL, '2023-03-09 17:39:33', '2023-03-09 17:39:33'),
(235, 23, 12289, 'list-6', 'TLAXCALA', 'sec29glo', NULL, 30, NULL, '2023-03-09 17:40:15', '2023-03-09 17:40:15'),
(236, 23, 12289, 'list-6', 'VERACRUZ', 'sec30glo', NULL, 31, NULL, '2023-03-09 17:40:15', '2023-03-09 17:40:15'),
(237, 23, 12289, 'list-6', 'YUCATÁN', 'sec31glo', NULL, 32, NULL, '2023-03-09 17:40:50', '2023-03-09 17:40:50'),
(238, 23, 12289, 'list-6', 'ZACATECAS', 'sec32glo', NULL, 33, NULL, '2023-03-09 17:40:50', '2023-03-09 17:40:50'),
(239, 26, 28673, 'list-3', 'Región', 'rclregion', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 18:10:40', '2023-03-10 19:24:53'),
(240, 27, 13569, 'list-2', 'MARCA', 'rclmarca', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 19:51:07', '2023-03-09 19:51:21'),
(241, 28, 28673, 'list-8', 'Tipo de Operación', 'tipoper', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-09 20:00:05', '2023-03-10 17:31:08'),
(243, 29, 14081, 'choices', 'Elije el tipo de Solicitud', 'tipsolloc', '{\"choices\":\"key1:Alta de Localidad\\r\\nkey2:Asignaci\\u00f3n de Localidad a usuario\\r\\nkey3:Ambas\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 1, NULL, '2023-03-10 16:30:42', '2023-03-10 19:20:19'),
(244, 30, 13057, 'memo', 'Ingresa tus datos', '', '{\"cols\":\"600\",\"rows\":\"9\",\"length\":\"\",\"html\":true,\"placeholder\":\"\"}', 1, '<p>Recuerda solo pegar la información.</p>', '2023-03-10 16:33:45', '2023-03-10 22:08:50'),
(248, 31, 13057, 'text', 'PUESTO', '', NULL, 1, NULL, '2023-03-10 17:41:27', '2023-03-10 17:41:27'),
(249, 31, 13057, 'list-3', 'REGIÓN ASIGNADA', '', NULL, 2, NULL, '2023-03-10 17:41:27', '2023-03-10 17:41:27'),
(250, 31, 13057, 'text', 'MARCA', '', NULL, 3, NULL, '2023-03-10 17:42:06', '2023-03-10 17:42:06'),
(251, 31, 13057, 'files', 'anexe evidencia de RHIN', '', '{\"size\":33554432,\"mimetypes\":{\"image\":\"Images\"},\"extensions\":\"\",\"max\":\"\"}', 4, NULL, '2023-03-10 17:42:06', '2023-03-10 17:42:21'),
(252, 31, 13057, 'text', 'TIPO SW OPERACION', '', NULL, 5, NULL, '2023-03-10 17:42:59', '2023-03-10 17:42:59'),
(253, 31, 13057, 'files', 'anexe evidencia de RHIN', '', '{\"size\":33554432,\"mimetypes\":{\"image\":\"Images\"},\"extensions\":\"\",\"max\":\"\"}', 6, NULL, '2023-03-10 17:42:59', '2023-03-10 17:43:08'),
(254, 12, 14081, 'choices', 'Elije el tipo de solicitud', 'tipsolpues', '{\"choices\":\"key1:Alta de puesto\\r\\nkey2:Modificaci\\u00f3n a puesto existente\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 1, '<p><br /></p>', '2023-03-10 21:32:55', '2023-03-10 21:55:19'),
(255, 32, 13057, 'memo', 'Ingresa tus datos', '', '{\"cols\":\"600\",\"rows\":\"9\",\"length\":\"\",\"html\":true,\"placeholder\":\"\"}', 1, '<p>Recuerda solo pegar la información.</p>', '2023-03-10 21:41:03', '2023-03-10 22:10:51'),
(258, 32, 13057, 'break', 'Si solo requieres el alta de un puesto, llena este formulario', '', NULL, 2, NULL, '2023-03-10 22:17:08', '2023-03-10 22:17:08'),
(259, 32, 14081, 'list-2', 'Marca del puesto', 'marcpues', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 3, NULL, '2023-03-10 22:17:57', '2023-03-14 11:45:35'),
(260, 32, 14081, 'list-8', 'Tipo de operación', 'topopues', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 4, NULL, '2023-03-10 22:17:57', '2023-03-14 11:45:35'),
(261, 32, 13057, 'list-3', 'Región', '', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 5, NULL, '2023-03-10 22:19:04', '2023-03-10 22:19:15'),
(262, 32, 14081, 'text', 'Nombre del Puesto', 'puespues', '{\"size\":\"100\",\"length\":\"45\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 6, NULL, '2023-03-10 22:21:24', '2023-03-14 11:47:27'),
(263, 8, 13057, 'choices', '¿Que funciones tendrá el usuario?', '', '{\"choices\":\"key1:Levantar Solicitudes\\r\\nkey2:Dar retroalimentaci\\u00f3n a Candidatos\\r\\nkey3:Reclutar Candidatos\\r\\nkey4:Autorizar \\/ Validar vacantes\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":true}', 1, NULL, '2023-03-10 22:28:53', '2023-03-11 20:15:01'),
(264, 33, 14081, 'text', 'Nombre del usuario', 'nomalu', '{\"size\":\"70\",\"length\":\"50\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 1, NULL, '2023-03-10 22:37:15', '2023-03-14 12:56:24'),
(265, 34, 13057, 'memo', 'Ingresa tus datos', '', '{\"cols\":\"600\",\"rows\":\"9\",\"length\":\"\",\"html\":true,\"placeholder\":\"\"}', 1, '<p>Recuerda solo pegar la información aquí, usando el ejemplo de la imagen.</p>', '2023-03-11 15:07:52', '2023-03-14 12:34:05'),
(266, 34, 13057, 'break', 'Si solo deseas agregar un solo sector, utiliza el siguiente formulario', '', NULL, 2, NULL, '2023-03-11 15:11:06', '2023-03-11 15:11:06'),
(267, 34, 13057, 'list-2', 'Marca del Sector', '', NULL, 3, NULL, '2023-03-11 15:14:00', '2023-03-11 15:14:00'),
(268, 34, 13057, 'list-8', 'Tipo de Operación', '', NULL, 4, NULL, '2023-03-11 15:14:00', '2023-03-11 15:14:00'),
(269, 34, 13057, 'list-3', 'Región', '', NULL, 5, NULL, '2023-03-11 15:15:01', '2023-03-11 15:15:01'),
(270, 34, 13057, 'text', 'Nombre del Sector a dar de alta', '', '{\"size\":\"70\",\"length\":\"45\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 6, NULL, '2023-03-11 15:15:01', '2023-03-11 15:18:58'),
(271, 35, 14081, 'list-2', 'Marca del tipo de operación a registrar', 'marcatip', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-11 15:28:21', '2023-03-11 15:30:03'),
(272, 35, 14081, 'text', 'Nombre del tipo de Operación a registrar', 'tipopnew', '{\"size\":\"70\",\"length\":\"45\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 2, NULL, '2023-03-11 15:29:03', '2023-03-11 15:30:03'),
(273, 36, 13057, 'memo', 'Ingresa tus datos', '', '{\"cols\":\"600\",\"rows\":\"9\",\"length\":\"\",\"html\":true,\"placeholder\":\"\"}', 1, '<p>Recuerda solo pegar la información</p>', '2023-03-11 17:31:03', '2023-03-11 17:31:28'),
(274, 37, 14081, 'choices', '¿Qué tipo de funciones realizará el usuario?', 'funcio', '{\"choices\":\"key1:Levantar Solicitudes\\r\\nkey2:Dar Retroalimentaci\\u00f3n a Candidatos\\r\\nkey3:Reclutar y habilitar candidatos a ATC\\r\\nkey4:Habilitar candidatos a Cliente\\r\\nkey5:Autorizar \\/ Validar vacantes\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":true}', 1, '<p>Puede seleccionar más de una opción</p>', '2023-03-11 17:40:00', '2023-03-11 17:49:14'),
(275, 38, 13057, 'memo', 'Ingresa tus datos', '', NULL, 1, NULL, '2023-03-11 18:14:07', '2023-03-11 18:14:07'),
(276, 38, 13057, 'break', 'Si la capacitación es para un solo usuario, llena el siguiente formulario', '', NULL, 3, NULL, '2023-03-11 18:24:05', '2023-03-14 13:03:00'),
(277, 39, 13057, 'text', 'Nombre del usuario a capacitar', '', '{\"size\":\"70\",\"length\":\"45\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 1, NULL, '2023-03-11 19:08:26', '2023-03-11 19:24:56'),
(278, 39, 13057, 'text', 'Correo del usuario a capacitar', '', '{\"size\":\"70\",\"length\":\"45\",\"validator\":\"email\",\"regex\":\"\",\"validator-error\":\"Ingrese un correo electr\\u00f3nico v\\u00e1lido\",\"placeholder\":\"\"}', 2, NULL, '2023-03-11 19:08:26', '2023-03-11 19:25:25'),
(279, 39, 13057, 'text', 'Jefe Directo', '', '{\"size\":\"70\",\"length\":\"45\",\"validator\":\"\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 3, NULL, '2023-03-11 19:08:26', '2023-03-11 19:25:36'),
(280, 39, 13057, 'datetime', 'Fecha y hora de capacitación', '', '{\"time\":true,\"timezone\":\"America\\/Mexico_City\",\"gmt\":true,\"min\":0,\"max\":0,\"future\":true}', 4, NULL, '2023-03-11 19:08:26', '2023-03-11 19:24:11'),
(281, 40, 14081, 'choices', 'Elije el tipo de solicitud', 'creaact', '{\"choices\":\"kay1:Actualizaci\\u00f3n de Manual \\/ Infograf\\u00eda\\r\\nkey:Creaci\\u00f3n de Manual \\/ Infograf\\u00eda\",\"default\":\"\",\"prompt\":\"\",\"multiselect\":false}', 1, NULL, '2023-03-11 19:32:47', '2023-03-11 19:54:55'),
(282, 40, 13057, 'files', 'Adjunta copia del material que deseas que se actualice', '', NULL, 2, NULL, '2023-03-11 19:34:45', '2023-03-11 19:34:45'),
(283, 40, 13057, 'memo', 'Si es nuevo manual o actualización describe a detalle lo que necesitas', '', '{\"cols\":\"600\",\"rows\":\"9\",\"length\":\"\",\"html\":true,\"placeholder\":\"S\\u00e9 lo m\\u00e1s detallado posible:\"}', 3, '<p>Sé lo más detallado posible sobre tu solicitud de actualización o creación de material de apoyo</p>', '2023-03-11 19:37:35', '2023-03-11 19:59:08'),
(284, 41, 13057, 'files', 'Adjunta tu plantilla demo #1', '', NULL, 2, NULL, '2023-03-11 20:10:10', '2023-03-14 11:26:13'),
(285, 41, 13057, 'list-3', '¿En qué regiones se debe dar de alta esta plantilla?', '', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 3, NULL, '2023-03-11 20:10:10', '2023-03-14 11:26:13'),
(286, 41, 13057, 'files', 'Adjunta tu plantilla demo #2', '', NULL, 4, NULL, '2023-03-11 20:12:20', '2023-03-14 11:26:13'),
(287, 41, 13057, 'list-3', '¿En qué regiones se debe dar de alta esta plantilla?', '', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 5, NULL, '2023-03-11 20:12:20', '2023-03-14 11:26:13'),
(288, 41, 13057, 'files', 'Adjunta tu plantilla demo #3', '', NULL, 6, NULL, '2023-03-11 20:13:35', '2023-03-14 11:26:13'),
(289, 41, 13057, 'list-3', '¿En qué regiones se debe dar de alta esta plantilla?', '', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 7, NULL, '2023-03-11 20:13:35', '2023-03-14 11:26:13'),
(290, 42, 13057, 'text', 'nombre', '', NULL, 1, NULL, '2023-03-13 15:50:49', '2023-03-13 15:50:49'),
(291, 42, 13057, 'text', 'Correo Electrónico', '', NULL, 2, NULL, '2023-03-13 15:50:50', '2023-03-13 15:50:50'),
(292, 42, 13057, 'choices', 'roles', '', NULL, 3, NULL, '2023-03-13 15:50:50', '2023-03-13 15:50:50'),
(293, 42, 13057, 'list-2', 'marcas', '', NULL, 4, NULL, '2023-03-13 15:50:50', '2023-03-13 15:50:50'),
(294, 41, 14081, 'list-2', '¿A qué marca pertenecen las plantillas?', 'marcaplan', '{\"multiselect\":false,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 1, NULL, '2023-03-14 11:25:27', '2023-03-14 11:26:13'),
(295, 41, 13057, 'list-9', '¿Qué tipo de permisos de edición requieres?', '', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 8, NULL, '2023-03-14 11:28:08', '2023-03-14 11:31:43'),
(296, 41, 13057, 'memo', 'Ingresa los nombres de las personas a quienes se les darán los permisos', '', '{\"cols\":\"300\",\"rows\":\"4\",\"length\":\"\",\"html\":true,\"placeholder\":\"\"}', 9, NULL, '2023-03-14 11:28:08', '2023-03-14 11:32:00'),
(297, 33, 14081, 'text', 'Correo del usuario', 'correalu', '{\"size\":\"70\",\"length\":\"50\",\"validator\":\"email\",\"regex\":\"\",\"validator-error\":\"\",\"placeholder\":\"\"}', 2, NULL, '2023-03-14 12:47:30', '2023-03-14 12:48:31'),
(298, 33, 14081, 'list-10', 'Rol asignado', 'rolalu', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 3, NULL, '2023-03-14 12:47:30', '2023-03-14 12:54:23'),
(299, 33, 14081, 'list-2', 'Marcas Asignadas', 'maralu', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 4, NULL, '2023-03-14 12:50:04', '2023-03-14 12:54:32'),
(300, 33, 14081, 'list-3', 'Regiones asignadas', 'regalu', '{\"multiselect\":true,\"widget\":\"dropdown\",\"validator-error\":\"\",\"prompt\":\"\",\"default\":null}', 5, NULL, '2023-03-14 12:50:04', '2023-03-14 12:54:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_group`
--

CREATE TABLE `rcl_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `flags` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(120) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_help_topic`
--

CREATE TABLE `rcl_help_topic` (
  `topic_id` int(11) UNSIGNED NOT NULL,
  `topic_pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `noautoresp` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED DEFAULT 0,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `priority_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `staff_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `team_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sla_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sequence_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic` varchar(128) NOT NULL DEFAULT '',
  `number_format` varchar(32) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_help_topic`
--

INSERT INTO `rcl_help_topic` (`topic_id`, `topic_pid`, `ispublic`, `noautoresp`, `flags`, `status_id`, `priority_id`, `dept_id`, `staff_id`, `team_id`, `sla_id`, `page_id`, `sequence_id`, `sort`, `topic`, `number_format`, `notes`, `created`, `updated`) VALUES
(11, 0, 1, 0, 3, 1, 2, 1, 0, 1, 1, 2, 3, 2, 'Soporte Reclutamiento', 'CSI-PIP-#', '<p>Report an inability access a physical or virtual asset</p>', '2023-03-08 12:14:07', '2023-03-10 16:29:34'),
(12, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 6, 'Alta de Usuario', 'SOL-RCL-#', NULL, '2023-03-08 15:19:35', '2023-03-16 19:01:36'),
(13, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 3, 'Anexo de Localidad - Asignación de Localidad', 'SOL-RCL-#', NULL, '2023-03-08 16:09:33', '2023-03-16 19:01:36'),
(14, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 4, 'Alta de puesto en plataforma', 'SOL-RCL-#', NULL, '2023-03-08 17:37:10', '2023-03-16 19:01:36'),
(15, 20, 1, 0, 0, 1, 2, 1, 0, 1, 1, 2, 0, 5, 'Alta de Sector en Plataforma', NULL, NULL, '2023-03-08 20:26:43', '2023-03-16 19:01:36'),
(16, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 7, 'Reasignación de Vacantes', 'SOL-RCL-#', NULL, '2023-03-08 20:36:50', '2023-03-16 19:01:36'),
(20, 0, 0, 0, 0, 1, 2, 1, 0, 1, 1, 2, 0, 1, 'Solicitud', NULL, NULL, '2023-03-10 14:18:37', '2023-03-16 14:28:21'),
(21, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 2, 'Anexo de Tipo de Operación', 'SOL-RCL-#', NULL, '2023-03-11 15:32:22', '2023-03-16 14:28:21'),
(22, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 2, 'Asignación de permisos de visualización de vacantes', 'SOL-RCL-#', NULL, '2023-03-11 17:36:50', '2023-03-16 14:28:21'),
(23, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 2, 'Capacitación a usuarios', 'SOL-RCL-#', NULL, '2023-03-11 19:19:36', '2023-03-16 14:28:21'),
(24, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 2, 'Actualización / Creación de infografías o manuales', 'SOL-RCL-#', NULL, '2023-03-11 19:48:07', '2023-03-16 19:01:36'),
(25, 20, 1, 0, 1, 1, 2, 1, 0, 1, 1, 2, 4, 2, 'Creación de plantillas', 'SOL-RCL-#', NULL, '2023-03-11 20:23:00', '2023-03-16 19:01:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_help_topic_form`
--

CREATE TABLE `rcl_help_topic_form` (
  `id` int(11) UNSIGNED NOT NULL,
  `topic_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `extra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_help_topic_form`
--

INSERT INTO `rcl_help_topic_form` (`id`, `topic_id`, `form_id`, `sort`, `extra`) VALUES
(1, 1, 2, 1, '{\"disable\":[]}'),
(2, 2, 2, 1, '{\"disable\":[]}'),
(3, 10, 2, 1, '{\"disable\":[]}'),
(4, 11, 2, 3, '{\"disable\":[]}'),
(5, 11, 7, 4, '{\"disable\":[37]}'),
(6, 12, 2, 4, '{\"disable\":[20,21,22]}'),
(7, 12, 8, 2, '{\"disable\":[]}'),
(8, 13, 2, 8, '{\"disable\":[20,21,22]}'),
(11, 14, 2, 4, '{\"disable\":[20,21,22]}'),
(12, 15, 2, 8, '{\"disable\":[20,21,22]}'),
(13, 15, 13, 2, '{\"disable\":[]}'),
(15, 16, 2, 4, '{\"disable\":[20,21,22]}'),
(16, 16, 14, 3, '{\"disable\":[]}'),
(17, 14, 12, 1, '{\"disable\":[254]}'),
(20, 17, 2, 1, '{\"disable\":[20,21,22]}'),
(21, 17, 17, 2, '{\"disable\":[]}'),
(22, 16, 21, 2, '{\"disable\":[]}'),
(23, 18, 2, 1, '{\"disable\":[]}'),
(24, 18, 7, 2, '{\"disable\":[]}'),
(25, 11, 25, 2, '{\"disable\":[]}'),
(26, 11, 10, 1, '{\"disable\":[]}'),
(27, 19, 2, 1, '{\"disable\":[]}'),
(28, 19, 10, 2, '{\"disable\":[]}'),
(29, 19, 28, 3, '{\"disable\":[]}'),
(30, 19, 26, 4, '{\"disable\":[]}'),
(31, 19, 15, 5, '{\"disable\":[]}'),
(32, 20, 2, 1, '{\"disable\":[]}'),
(40, 13, 29, 1, '{\"disable\":[]}'),
(41, 13, 30, 3, '{\"disable\":[]}'),
(42, 13, 25, 2, '{\"disable\":[]}'),
(48, 13, 10, 4, '{\"disable\":[]}'),
(49, 13, 28, 5, '{\"disable\":[]}'),
(50, 13, 26, 6, '{\"disable\":[]}'),
(51, 13, 15, 7, '{\"disable\":[]}'),
(52, 14, 32, 3, '{\"disable\":[255]}'),
(53, 14, 25, 2, '{\"disable\":[]}'),
(54, 14, 10, 5, '{\"disable\":[]}'),
(55, 14, 28, 6, '{\"disable\":[]}'),
(56, 14, 26, 7, '{\"disable\":[]}'),
(57, 12, 33, 3, '{\"disable\":[]}'),
(58, 15, 34, 3, '{\"disable\":[266,267,268,269,270]}'),
(59, 15, 10, 4, '{\"disable\":[]}'),
(60, 15, 26, 5, '{\"disable\":[]}'),
(61, 15, 28, 6, '{\"disable\":[]}'),
(62, 15, 15, 7, '{\"disable\":[]}'),
(63, 15, 25, 1, '{\"disable\":[]}'),
(64, 21, 2, 3, '{\"disable\":[20,21,22]}'),
(65, 21, 25, 1, '{\"disable\":[]}'),
(66, 21, 35, 2, '{\"disable\":[]}'),
(67, 21, 10, 4, '{\"disable\":[]}'),
(68, 21, 28, 5, '{\"disable\":[]}'),
(69, 22, 25, 1, '{\"disable\":[]}'),
(70, 22, 22, 2, '{\"disable\":[155,156,157,158]}'),
(71, 22, 36, 3, '{\"disable\":[]}'),
(72, 22, 10, 4, '{\"disable\":[]}'),
(73, 22, 2, 5, '{\"disable\":[20,21,22]}'),
(74, 23, 25, 1, '{\"disable\":[]}'),
(75, 23, 37, 2, '{\"disable\":[]}'),
(77, 23, 39, 4, '{\"disable\":[]}'),
(78, 23, 2, 5, '{\"disable\":[20,21,22]}'),
(79, 23, 38, 3, '{\"disable\":[]}'),
(80, 24, 25, 1, '{\"disable\":[]}'),
(81, 24, 40, 2, '{\"disable\":[]}'),
(82, 24, 2, 3, '{\"disable\":[20,21,22]}'),
(83, 25, 25, 1, '{\"disable\":[]}'),
(84, 25, 10, 2, '{\"disable\":[]}'),
(85, 25, 41, 3, '{\"disable\":[]}'),
(86, 25, 2, 4, '{\"disable\":[20,21,22]}'),
(87, 16, 25, 1, '{\"disable\":[]}'),
(88, 12, 25, 1, '{\"disable\":[]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_list`
--

CREATE TABLE `rcl_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_plural` varchar(255) DEFAULT NULL,
  `sort_mode` enum('Alpha','-Alpha','SortCol') NOT NULL DEFAULT 'Alpha',
  `masks` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(16) DEFAULT NULL,
  `configuration` text NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_list`
--

INSERT INTO `rcl_list` (`id`, `name`, `name_plural`, `sort_mode`, `masks`, `type`, `configuration`, `notes`, `created`, `updated`) VALUES
(1, 'Ticket Status', 'Ticket Statuses', 'SortCol', 13, 'ticket-status', '{\"handler\":\"TicketStatusList\"}', '<p>Ticket statuses</p>', '2023-03-08 12:14:05', '2023-03-17 05:32:18'),
(2, 'MARCA', 'MARCAS', 'SortCol', 0, NULL, '', NULL, '2023-03-09 00:10:18', '2023-03-09 00:24:57'),
(3, 'REGIONES', 'REGIONES', 'Alpha', 0, NULL, '', NULL, '2023-03-09 01:01:34', '2023-03-09 17:49:24'),
(4, 'REGIONES AXIS', NULL, 'Alpha', 0, NULL, '', NULL, '2023-03-09 01:10:16', '2023-03-09 01:10:16'),
(5, 'SECTORES ADVENTUM', NULL, 'Alpha', 0, NULL, '', NULL, '2023-03-09 01:41:45', '2023-03-09 01:41:45'),
(6, 'SECTOR', 'SECTORES', 'Alpha', 0, NULL, '', NULL, '2023-03-09 03:19:42', '2023-03-09 17:48:39'),
(7, 'ÁREAS', 'ÁREAS', 'Alpha', 0, NULL, '', NULL, '2023-03-09 14:30:11', '2023-03-09 17:49:03'),
(8, 'TIPO DE OPERACIÓN', 'TIPO DE OPERACIONES', 'Alpha', 0, NULL, '', NULL, '2023-03-09 19:49:40', '2023-03-09 19:49:40'),
(9, 'PERMISOS DE EDICIÓN DE PLANTILLAS', NULL, 'SortCol', 0, NULL, '', NULL, '2023-03-14 11:28:31', '2023-03-14 11:28:39'),
(10, 'ROLES DE CANELA', NULL, 'SortCol', 0, NULL, '', NULL, '2023-03-14 12:51:15', '2023-03-14 12:51:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_list_items`
--

CREATE TABLE `rcl_list_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) DEFAULT NULL,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `value` varchar(255) NOT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `properties` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_list_items`
--

INSERT INTO `rcl_list_items` (`id`, `list_id`, `status`, `value`, `extra`, `sort`, `properties`) VALUES
(1, NULL, 1, 'REGION 1 DANONE', NULL, 1, '{\"130\":null}'),
(2, NULL, 1, 'ADVENTUM', NULL, 1, '[]'),
(3, NULL, 1, 'AXIS', NULL, 0, '[]'),
(4, NULL, 1, 'BIC', 'b', 1, '[]'),
(5, NULL, 1, 'CITY CLUB', 'a', 1, '[]'),
(6, NULL, 1, 'DANONE', 'a', 1, '[]'),
(7, NULL, 1, 'DEL MONTE', 'a', 1, '[]'),
(8, NULL, 1, 'EGSA', 'a', 1, '[]'),
(9, NULL, 1, 'ENERGIZER', 'a', 1, '[]'),
(10, NULL, 1, 'GRANVITA', 'a', 1, '[]'),
(11, NULL, 1, 'GRUMA', 'a', 1, '[]'),
(12, NULL, 1, 'GRUMA AS-BORRAR', 'a', 1, '[]'),
(13, NULL, 1, 'HALO', 'a', 1, '[]'),
(14, NULL, 1, 'MANIOBRAS', 'a', 1, '[]'),
(15, NULL, 1, 'MARS', 'a', 1, '[]'),
(16, NULL, 1, 'NUTRIOLI', 'a', 1, '[]'),
(17, NULL, 1, 'PIP PRUEBAS', 'a', 1, '[]'),
(18, NULL, 1, 'RHEIN LOGISTICS', 'a', 1, '[]'),
(19, NULL, 1, 'RIDE TUKO', 'a', 1, '[]'),
(20, NULL, 1, 'SOLUGLOB', 'a', 1, '[]'),
(21, NULL, 1, 'SPLENDA', 'a', 1, '[]'),
(22, NULL, 1, 'TRIPLE I CONFIDENCIAL', 'a', 1, '[]'),
(23, NULL, 1, 'TRIPLE I OPERATIVO', 'a', 1, '[]'),
(24, NULL, 1, 'TUM', 'a', 1, '[]'),
(25, NULL, 1, 'UPFIELD', 'a', 1, '[]'),
(26, NULL, 1, 'VPC', 'a', 1, '[]'),
(27, NULL, 1, 'REGIÓN 3', NULL, 1, '{\"146\":\"{\\\"27\\\":\\\"REGI\\\\u00d3N 3\\\"}\",\"147\":null}'),
(28, NULL, 1, 'REGIÓN 4', NULL, 1, '{\"146\":null,\"147\":\"{\\\"28\\\":\\\"REGI\\\\u00d3N 4\\\"}\"}'),
(29, 4, 1, 'REGION 2', NULL, 1, '{\"139\":\"{\\\"29\\\":\\\"REGION 2\\\"}\",\"140\":\"\"}'),
(30, 4, 1, 'REGION 3', NULL, 1, '{\"139\":null,\"140\":\"{\\\"30\\\":\\\"REGION 3\\\"}\"}'),
(31, NULL, 1, 'ADVENTUM', 'ADVENTUM', 2, '{\"142\":\"{\\\"31\\\":\\\"ADVENTUM\\\"}\",\"143\":null,\"144\":\"{\\\"27\\\":\\\"REGI\\\\u00d3N 3\\\",\\\"28\\\":\\\"REGI\\\\u00d3N 4\\\"}\"}'),
(32, NULL, 1, 'AXIS', 'AXIS', 4, '{\"142\":\"{\\\"32\\\":\\\"AXIS\\\"}\",\"143\":\"{\\\"29\\\":\\\"REGION 2\\\"}\",\"144\":null}'),
(33, NULL, 1, 'BACK UP', 'BACK UP', 5, '{\"142\":\"{\\\"33\\\":\\\"BACK UP\\\"}\"}'),
(34, NULL, 1, 'BIC', 'BIC', 6, '{\"142\":\"{\\\"34\\\":\\\"BIC\\\"}\"}'),
(35, NULL, 1, 'CITY CLUB', 'CITY CLUB', 7, '{\"142\":\"{\\\"35\\\":\\\"CITY CLUB\\\"}\"}'),
(36, NULL, 1, 'DANONE', 'DANONE', 8, '{\"142\":\"{\\\"32\\\":\\\"AXIS\\\"}\"}'),
(37, NULL, 1, 'DEL MONTE', 'DEL MONTE', 9, '{\"142\":\"{\\\"31\\\":\\\"ADVENTUM\\\"}\"}'),
(38, NULL, 1, 'EGSA', 'EGSA', 10, '[]'),
(39, NULL, 1, 'ENERGIZER', 'ENERGIZER', 11, '[]'),
(40, NULL, 1, 'GRANVITA', 'GRANVITA', 12, '[]'),
(41, NULL, 1, 'GRUMA', 'GRUMA', 13, '[]'),
(42, NULL, 1, 'GRUMA AS-BORRAR', 'GRUMA AS-BORRAR', 1, '[]'),
(43, NULL, 1, 'HALO', 'HALO', 14, '[]'),
(44, NULL, 1, 'MANIOBRAS', 'MANIOBRAS', 15, '[]'),
(45, NULL, 1, 'MARS', 'MARS', 16, '[]'),
(46, NULL, 1, 'NUTRIOLI', 'NUTRIOLI', 17, '[]'),
(47, NULL, 1, 'PIP PRUEBAS', 'PIP PRUEBAS', 1, '[]'),
(48, NULL, 1, 'RHEIN LOGISTICS', 'RHEIN LOGISTICS', 18, '[]'),
(49, NULL, 1, 'RIDE TUKO', 'RIDE TUKO', 19, '[]'),
(50, NULL, 1, 'SOLUGLOB', 'SOLUGLOB', 20, '[]'),
(51, NULL, 1, 'SPLENDA', 'SPLENDA', 21, '[]'),
(52, NULL, 1, 'TRIPLE I CONFIDENCIAL', 'TRIPLE I CONFIDENCIAL', 22, '[]'),
(53, NULL, 1, 'TRIPLE I OPERATIVO', 'TRIPLE I OPERATIVO', 23, '[]'),
(54, NULL, 1, 'TUM', 'TUM', 24, '[]'),
(55, NULL, 1, 'UPFIELD', 'UPFIELD', 25, '[]'),
(56, NULL, 1, 'VPC', 'VPC', 26, '[]'),
(57, 5, 1, 'QUERETARO 2', NULL, 1, '{\"148\":null,\"149\":null,\"150\":null}'),
(58, 5, 1, 'QUERETARO 1', NULL, 1, '{\"148\":null,\"149\":null,\"150\":null}'),
(59, 5, 1, 'GUANAJUATO', NULL, 1, '{\"148\":null,\"149\":null,\"150\":null}'),
(60, NULL, 1, 'TODAS LAS MARCAS', NULL, 1, '{\"178\":\"{\\\"60\\\":\\\"TODAS LAS MARCAS\\\"}\",\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(61, 6, 1, 'AGUASCALIENTES', 'AGUASCALIENTES', 1, '{\"207\":\"{\\\"61\\\":\\\"AGUASCALIENTES\\\"}\",\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(62, 6, 1, 'BAJA CALIFORNIA', 'BAJA CALIFORNIA', 1, '{\"207\":null,\"208\":\"{\\\"62\\\":\\\"BAJA CALIFORNIA\\\"}\",\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(63, 6, 1, 'BAJA CALIFORNIA SUR', 'BAJA CALIFORNIA SUR', 1, '{\"207\":null,\"208\":null,\"209\":\"{\\\"63\\\":\\\"BAJA CALIFORNIA SUR\\\"}\",\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(64, 6, 1, 'CAMPECHE', 'CAMPECHE', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":\"{\\\"64\\\":\\\"CAMPECHE\\\"}\",\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(65, 6, 1, 'CHIAPAS', 'CHIAPAS', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":\"{\\\"65\\\":\\\"CHIAPAS\\\"}\",\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(66, 6, 1, 'CHIHUAHUA', 'CHIHUAHUA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":\"{\\\"66\\\":\\\"CHIHUAHUA\\\"}\",\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(67, 6, 1, 'CIUDAD DE MÉXICO', 'CIUDAD DE MÉXICO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":\"{\\\"67\\\":\\\"CIUDAD DE M\\\\u00c9XICO\\\"}\",\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(68, 6, 1, 'COAHUILA', 'COAHUILA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":\"{\\\"68\\\":\\\"COAHUILA\\\"}\",\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(69, 6, 1, 'COLIMA', 'COLIMA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":\"{\\\"69\\\":\\\"COLIMA\\\"}\",\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(70, 6, 1, 'DURANGO', 'DURANGO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":\"{\\\"70\\\":\\\"DURANGO\\\"}\",\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(71, 6, 1, 'GUANAJUATO', 'GUANAJUATO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":\"{\\\"71\\\":\\\"GUANAJUATO\\\"}\",\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(72, 6, 1, 'GUERRERO', 'GUERRERO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":\"{\\\"72\\\":\\\"GUERRERO\\\"}\",\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(73, 6, 1, 'HIDALGO', 'HIDALGO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":\"{\\\"73\\\":\\\"HIDALGO\\\"}\",\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(74, 6, 1, 'JALISCO', 'JALISCO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":\"{\\\"74\\\":\\\"JALISCO\\\"}\",\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(75, 6, 1, 'MÉXICO', 'MÉXICO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":\"{\\\"75\\\":\\\"M\\\\u00c9XICO\\\"}\",\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(76, 6, 1, 'MICHOACÁN', 'MICHOACÁN', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":\"{\\\"76\\\":\\\"MICHOAC\\\\u00c1N\\\"}\",\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(77, 6, 1, 'MORELOS', 'MORELOS', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":\"{\\\"77\\\":\\\"MORELOS\\\"}\",\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(78, 6, 1, 'NAYARIT', 'NAYARIT', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":\"{\\\"78\\\":\\\"NAYARIT\\\"}\",\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(79, 6, 1, 'NUEVO LEÓN', 'NUEVO LEÓN', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":\"{\\\"79\\\":\\\"NUEVO LE\\\\u00d3N\\\"}\",\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(80, 6, 1, 'OAXACA', 'OAXACA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":\"{\\\"80\\\":\\\"OAXACA\\\"}\",\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(81, 6, 1, 'PUEBLA', 'PUEBLA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":\"{\\\"81\\\":\\\"PUEBLA\\\"}\",\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(82, 6, 1, 'QUERÉTARO', 'QUERÉTARO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":\"{\\\"82\\\":\\\"QUER\\\\u00c9TARO\\\"}\",\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(83, 6, 1, 'QUINTANA ROO', 'QUINTANA ROO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":\"{\\\"83\\\":\\\"QUINTANA ROO\\\"}\",\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(84, 6, 1, 'SAN LUIS POTOSÍ', 'SAN LUIS POTOSÍ', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":\"{\\\"84\\\":\\\"SAN LUIS POTOS\\\\u00cd\\\"}\",\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(85, 6, 1, 'SINALOA', 'SINALOA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":\"{\\\"85\\\":\\\"SINALOA\\\"}\",\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(86, 6, 1, 'SONORA', 'SONORA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":\"{\\\"86\\\":\\\"SONORA\\\"}\",\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(87, 6, 1, 'TABASCO', 'TABASCO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":\"{\\\"87\\\":\\\"TABASCO\\\"}\",\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(88, 6, 1, 'TAMAULIPAS', 'TAMAULIPAS', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":\"{\\\"88\\\":\\\"TAMAULIPAS\\\"}\",\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(89, 6, 1, 'TLAXCALA', 'TLAXCALA', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":\"{\\\"89\\\":\\\"TLAXCALA\\\"}\",\"236\":null,\"237\":null,\"238\":null}'),
(90, 6, 1, 'VERACRUZ', 'VERACRUZ', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":\"{\\\"90\\\":\\\"VERACRUZ\\\"}\",\"237\":null,\"238\":null}'),
(91, 6, 1, 'YUCATÁN', 'YUCATÁN', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":\"{\\\"91\\\":\\\"YUCAT\\\\u00c1N\\\"}\",\"238\":null}'),
(92, 6, 1, 'ZACATECAS', 'ZACATECAS', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":\"{\\\"92\\\":\\\"ZACATECAS\\\"}\"}'),
(93, 7, 1, 'RECLUTAMIENTO', NULL, 1, '{\"168\":\"{\\\"93\\\":\\\"RECLUTAMIENTO\\\"}\",\"169\":null}'),
(94, 7, 1, 'OPERACIONES', NULL, 1, '{\"168\":null,\"169\":\"{\\\"94\\\":\\\"OPERACIONES\\\"}\"}'),
(95, 3, 1, 'REGIÓN 1', NULL, 1, '{\"172\":\"{\\\"95\\\":\\\"REGI\\\\u00d3N 1\\\"}\",\"173\":null,\"174\":null,\"175\":null,\"176\":null,\"177\":null}'),
(96, 3, 1, 'REGIÓN 2', NULL, 1, '{\"172\":null,\"173\":\"{\\\"96\\\":\\\"REGI\\\\u00d3N 2\\\"}\",\"174\":null,\"175\":null,\"176\":null,\"177\":null}'),
(97, 3, 1, 'REGIÓN 3', NULL, 1, '{\"172\":null,\"173\":null,\"174\":\"{\\\"97\\\":\\\"REGI\\\\u00d3N 3\\\"}\",\"175\":null,\"176\":null,\"177\":null}'),
(98, 3, 1, 'REGIÓN 4', NULL, 1, '{\"172\":null,\"173\":null,\"174\":null,\"175\":\"{\\\"98\\\":\\\"REGI\\\\u00d3N 4\\\"}\",\"176\":null,\"177\":null}'),
(99, 3, 1, 'REGIÓN 5', NULL, 1, '{\"172\":null,\"173\":null,\"174\":null,\"175\":null,\"176\":\"{\\\"99\\\":\\\"REGI\\\\u00d3N 5\\\"}\",\"177\":null}'),
(100, 3, 1, 'REGIÓN 6', NULL, 1, '{\"172\":null,\"173\":null,\"174\":null,\"175\":null,\"176\":null,\"177\":\"{\\\"100\\\":\\\"REGI\\\\u00d3N 6\\\"}\"}'),
(101, 2, 1, 'GENERAL / ASIGNAR TODAS', 'ASIGNAR TODAS', 3, '{\"178\":\"{\\\"101\\\":\\\"GENERAL \\\\\\/ ASIGNAR TODAS\\\"}\",\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null,\"206\":null}'),
(102, 2, 1, 'ADVENTUM', 'ADVENTUM', 4, '{\"178\":null,\"179\":\"{\\\"102\\\":\\\"ADVENTUM\\\"}\",\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(103, 2, 1, 'AXIS', 'AXIS', 5, '{\"178\":null,\"179\":null,\"180\":\"{\\\"103\\\":\\\"AXIS\\\"}\",\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(104, 2, 1, 'BACK UP', 'BACK UP', 6, '{\"178\":null,\"179\":null,\"180\":null,\"181\":\"{\\\"104\\\":\\\"BACK UP\\\"}\",\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(105, 2, 1, 'BIC', 'BIC', 7, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":\"{\\\"105\\\":\\\"BIC\\\"}\",\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(106, 2, 1, 'CITY CLUB', 'CITY CLUB', 8, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":\"{\\\"106\\\":\\\"CITY CLUB\\\"}\",\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(107, 2, 1, 'DANONE', 'DANONE', 9, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":\"{\\\"107\\\":\\\"DANONE\\\"}\",\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(108, NULL, 1, 'DANONE PROMOTORIA', 'DANONE PROMOTORIA', 9, '[]'),
(109, 2, 1, 'DEL MONTE', 'DEL MONTE', 10, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":\"{\\\"109\\\":\\\"DEL MONTE\\\"}\",\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(110, 2, 1, 'EGSA', 'EGSA', 11, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":\"{\\\"110\\\":\\\"EGSA\\\"}\",\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(111, 2, 1, 'ENERGIZER', 'ENERGIZER', 12, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":\"{\\\"111\\\":\\\"ENERGIZER\\\"}\",\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(112, 2, 1, 'FOOD SERVICE', 'FOOD SERVICE', 13, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":\"{\\\"112\\\":\\\"FOOD SERVICE\\\"}\",\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(113, 2, 1, 'GRANVITA', 'GRANVITA', 14, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":\"{\\\"113\\\":\\\"GRANVITA\\\"}\",\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(114, NULL, 1, 'GRANVITA PSICOMETRICOS', 'GRANVITA PSICOMETRICOS', 15, '[]'),
(115, 2, 1, 'GRUMA', 'GRUMA', 15, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":\"{\\\"115\\\":\\\"GRUMA\\\"}\",\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(116, NULL, 1, 'GRUMA AS20', 'GRUMA AS20', 17, '[]'),
(117, 2, 1, 'HALO', 'HALO', 16, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":\"{\\\"117\\\":\\\"HALO\\\"}\",\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(118, 2, 1, 'MANIOBRAS', 'MANIOBRAS', 17, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":\"{\\\"118\\\":\\\"MANIOBRAS\\\"}\",\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(119, 2, 1, 'MARS', 'MARS', 18, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":\"{\\\"119\\\":\\\"MARS\\\"}\",\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(120, NULL, 1, 'MISSION', 'MISSION', 21, '[]'),
(121, 2, 1, 'NUTRIOLI', 'NUTRIOLI', 19, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":\"{\\\"121\\\":\\\"NUTRIOLI\\\"}\",\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null}'),
(122, NULL, 1, 'PIP PRUEBAS', 'PIP PRUEBAS', 23, '[]'),
(123, 2, 1, 'RECLUTAMIENTO', 'RECLUTAMIENTO', 20, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":\"{\\\"123\\\":\\\"RECLUTAMIENTO\\\"}\"}'),
(124, 2, 1, 'RHEIN LOGISTICS', 'RHEIN LOGISTICS', 21, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":\"{\\\"124\\\":\\\"RHEIN LOGISTICS\\\"}\",\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(125, 2, 1, 'RIDE TUKO', 'RIDE TUKO', 22, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":\"{\\\"125\\\":\\\"RIDE TUKO\\\"}\",\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(126, 2, 1, 'SOLUGLOB', 'SOLUGLOB', 23, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":\"{\\\"126\\\":\\\"SOLUGLOB\\\"}\",\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(127, NULL, 1, 'SOLUGLOB PSICOMETRICO', 'SOLUGLOB PSICOMETRICO', 29, '[]'),
(128, 2, 1, 'SPLENDA', 'SPLENDA', 24, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":\"{\\\"128\\\":\\\"SPLENDA\\\"}\",\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(129, 2, 1, 'TRIPLE I CONFIDENCIAL', 'TRIPLE I CONFIDENCIAL', 31, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":\"{\\\"129\\\":\\\"TRIPLE I CONFIDENCIAL\\\"}\",\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(130, 2, 1, 'TRIPLE I OPERATIVO', 'TRIPLE I OPERATIVO', 32, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":\"{\\\"130\\\":\\\"TRIPLE I OPERATIVO\\\"}\",\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(131, 2, 1, 'TUM', 'TUM', 34, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":\"{\\\"131\\\":\\\"TUM\\\"}\",\"202\":null,\"203\":null,\"204\":null,\"205\":null}'),
(132, 2, 1, 'UPFIELD', 'UPFIELD', 35, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":\"{\\\"132\\\":\\\"UPFIELD\\\"}\",\"203\":null,\"204\":null,\"205\":null}'),
(133, 2, 1, 'VPC', 'VPC', 35, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":\"{\\\"133\\\":\\\"VPC\\\"}\",\"204\":null,\"205\":null}'),
(134, 2, 1, 'ZACATE PROMOTION', 'ZACATE PROMOTION', 37, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":\"{\\\"134\\\":\\\"ZACATE PROMOTION\\\"}\",\"205\":null}'),
(135, 2, 1, 'N/A', 'N/A', 38, '{\"178\":null,\"179\":null,\"180\":null,\"181\":null,\"182\":null,\"183\":null,\"184\":null,\"185\":null,\"186\":null,\"187\":null,\"188\":null,\"189\":null,\"190\":null,\"191\":null,\"192\":null,\"193\":null,\"194\":null,\"195\":null,\"196\":null,\"197\":null,\"198\":null,\"199\":null,\"200\":null,\"201\":null,\"202\":null,\"203\":null,\"204\":null,\"205\":null,\"206\":\"{\\\"135\\\":\\\"N\\\\\\/A\\\"}\"}'),
(136, 8, 1, 'ADVENTUM', 'ADVENTUM', 1, '{\"240\":\"{\\\"102\\\":\\\"ADVENTUM\\\"}\"}'),
(137, 8, 1, 'AXIS', 'AXIS', 1, '{\"240\":\"{\\\"103\\\":\\\"AXIS\\\"}\"}'),
(138, 8, 1, 'BACK UP', 'BACK UP', 1, '{\"240\":\"{\\\"104\\\":\\\"BACK UP\\\"}\"}'),
(139, 8, 1, 'BIC', 'BIC', 1, '{\"240\":\"{\\\"105\\\":\\\"BIC\\\"}\"}'),
(140, 8, 1, 'CITY CLUB', 'CITY CLUB', 1, '{\"240\":\"{\\\"106\\\":\\\"CITY CLUB\\\"}\"}'),
(141, 8, 1, 'DEL MONTE', 'DEL MONTE', 1, '{\"240\":\"{\\\"109\\\":\\\"DEL MONTE\\\"}\"}'),
(142, 8, 1, 'EDS ADMON', 'EDS ADMON', 1, '{\"240\":\"{\\\"117\\\":\\\"HALO\\\"}\"}'),
(143, 8, 1, 'EGSA', 'EGSA', 1, '{\"240\":\"{\\\"110\\\":\\\"EGSA\\\"}\"}'),
(144, 8, 1, 'ENERGIZER', 'ENERGIZER', 1, '{\"240\":\"{\\\"111\\\":\\\"ENERGIZER\\\"}\"}'),
(145, 8, 1, 'FOOD SERVICE', 'FOOD SERVICE', 1, '{\"240\":\"{\\\"128\\\":\\\"SPLENDA\\\"}\"}'),
(146, 8, 1, 'FRESH GARDEN', 'FRESH GARDEN', 1, '{\"240\":\"{\\\"133\\\":\\\"VPC\\\"}\"}'),
(147, 8, 1, 'GRANVITA VENDEDORES', 'GRANVITA VENDEDORES', 1, '{\"240\":\"{\\\"113\\\":\\\"GRANVITA\\\"}\"}'),
(148, 8, 1, 'GRUMA AS-20', 'GRUMA AS-20', 1, '{\"240\":\"{\\\"115\\\":\\\"GRUMA\\\"}\"}'),
(149, 8, 1, 'GRUMA MAYOREO', 'GRUMA MAYOREO', 1, '{\"240\":\"{\\\"115\\\":\\\"GRUMA\\\"}\"}'),
(150, 8, 1, 'JULIO REGALADO', 'JULIO REGALADO', 1, '{\"240\":\"{\\\"132\\\":\\\"UPFIELD\\\"}\"}'),
(151, 8, 1, 'MANIOBRAS', 'MANIOBRAS', 1, '{\"240\":\"{\\\"118\\\":\\\"MANIOBRAS\\\"}\"}'),
(152, 8, 1, 'MARS CHOCOLATE', 'MARS CHOCOLATE', 1, '{\"240\":\"{\\\"119\\\":\\\"MARS\\\"}\"}'),
(153, 8, 1, 'MARS CHOCOLATES XMAS', 'MARS CHOCOLATES XMAS', 1, '{\"240\":\"{\\\"119\\\":\\\"MARS\\\"}\"}'),
(154, 8, 1, 'MARS PETCARE', 'MARS PETCARE', 1, '{\"240\":\"{\\\"119\\\":\\\"MARS\\\"}\"}'),
(155, 8, 1, 'MARS TURIN', 'MARS TURIN', 1, '{\"240\":\"{\\\"119\\\":\\\"MARS\\\"}\"}'),
(156, 8, 1, 'MISSION Q', 'MISSION Q', 1, '{\"240\":\"{\\\"115\\\":\\\"GRUMA\\\"}\"}'),
(157, 8, 1, 'MISSION SEMANAL', 'MISSION SEMANAL', 1, '{\"240\":\"{\\\"115\\\":\\\"GRUMA\\\"}\"}'),
(158, 8, 1, 'NUTRIOLI', 'NUTRIOLI', 1, '{\"240\":\"{\\\"121\\\":\\\"NUTRIOLI\\\"}\"}'),
(159, 8, 1, 'OPERACIONES', 'OPERACIONES', 1, '{\"240\":\"{\\\"130\\\":\\\"TRIPLE I OPERATIVO\\\"}\"}'),
(160, 8, 1, 'PROMOTORIA', 'PROMOTORIA', 1, '{\"240\":\"{\\\"107\\\":\\\"DANONE\\\"}\"}'),
(161, 8, 1, 'REPARTO', 'REPARTO', 1, '{\"240\":\"{\\\"107\\\":\\\"DANONE\\\"}\"}'),
(162, 8, 1, 'RHEIN LOGISTICS', 'RHEIN LOGISTICS', 1, '{\"240\":\"{\\\"124\\\":\\\"RHEIN LOGISTICS\\\"}\"}'),
(163, 8, 1, 'RIDE TUKO', 'RIDE TUKO', 1, '{\"240\":\"{\\\"125\\\":\\\"RIDE TUKO\\\"}\"}'),
(164, 8, 1, 'SBAE SEMANAL', 'SBAE SEMANAL', 1, '{\"240\":\"{\\\"113\\\":\\\"GRANVITA\\\"}\"}'),
(165, 8, 1, 'SEMILLERO', 'SEMILLERO', 1, '{\"240\":\"{\\\"107\\\":\\\"DANONE\\\"}\"}'),
(166, 8, 1, 'SOLUGLOB', 'SOLUGLOB', 1, '{\"240\":\"{\\\"126\\\":\\\"SOLUGLOB\\\"}\"}'),
(167, 8, 1, 'SPLENDA', 'SPLENDA', 1, '{\"240\":\"{\\\"128\\\":\\\"SPLENDA\\\"}\"}'),
(168, 8, 1, 'TUM', 'TUM', 1, '{\"240\":\"{\\\"131\\\":\\\"TUM\\\"}\"}'),
(169, 8, 1, 'UPFIELD', 'UPFIELD', 1, '{\"240\":\"{\\\"132\\\":\\\"UPFIELD\\\"}\"}'),
(170, 8, 1, 'UPFIELD TEMPORAL', 'UPFIELD TEMPORAL', 1, '{\"240\":\"{\\\"132\\\":\\\"UPFIELD\\\"}\"}'),
(171, 8, 1, 'ZACATE PROMOTION', 'ZACATE PROMOTION', 1, '{\"240\":\"{\\\"130\\\":\\\"TRIPLE I OPERATIVO\\\"}\"}'),
(172, 8, 1, 'OTRO', 'OTRO', 1, '{\"240\":null}'),
(173, 6, 1, 'OTRO', 'OTRO', 1, '{\"207\":null,\"208\":null,\"209\":null,\"210\":null,\"211\":null,\"212\":null,\"213\":null,\"214\":null,\"215\":null,\"216\":null,\"217\":null,\"218\":null,\"219\":null,\"220\":null,\"221\":null,\"222\":null,\"223\":null,\"224\":null,\"225\":null,\"226\":null,\"227\":null,\"228\":null,\"229\":null,\"230\":null,\"231\":null,\"232\":null,\"233\":null,\"234\":null,\"235\":null,\"236\":null,\"237\":null,\"238\":null}'),
(174, 9, 1, 'Responsabilidades / Actividades del candidato', NULL, 0, '[]'),
(175, 9, 1, 'Preguntas indispensables en la entrevista para validar experiencia y conocimientos del candidato', NULL, 0, '[]'),
(176, 9, 1, 'Información Adicional', NULL, 0, '[]'),
(177, 9, 1, 'Dirección Solicitud', NULL, 0, '[]'),
(178, 9, 1, 'Información del puesto', NULL, 0, '[]'),
(179, 9, 1, 'Perfil', NULL, 0, '[]'),
(180, 9, 1, 'Paquete de compensación', NULL, 0, '[]'),
(181, 9, 1, 'Idiomas', NULL, 0, '[]'),
(182, 10, 1, 'CLIENTE', NULL, 2, '[]'),
(183, 10, 1, 'ADMINISTRADOR', NULL, 6, '[]'),
(184, 10, 1, 'RECLUTADOR', NULL, 4, '[]'),
(185, 10, 1, 'ATC', NULL, 5, '[]'),
(186, 10, 1, 'AUTORIZADOR', NULL, 7, '[]'),
(187, 10, 1, 'SOLICITANTE', NULL, 1, '[]'),
(188, 10, 1, 'CLIENTE ENTREVISTADOR', NULL, 3, '[]'),
(189, 10, 1, 'VISUALIZADOR', NULL, 8, '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_lock`
--

CREATE TABLE `rcl_lock` (
  `lock_id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expire` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_note`
--

CREATE TABLE `rcl_note` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED DEFAULT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ext_id` varchar(10) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_organization`
--

CREATE TABLE `rcl_organization` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `manager` varchar(16) NOT NULL DEFAULT '',
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `domain` varchar(256) NOT NULL DEFAULT '',
  `extra` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_organization`
--

INSERT INTO `rcl_organization` (`id`, `name`, `manager`, `status`, `domain`, `extra`, `created`, `updated`) VALUES
(1, 'TRIPLE I', '', 8, '', NULL, '2023-03-08 18:14:07', '2023-03-09 19:32:47'),
(2, 'TALENT GROUP', 's1', 0, 'talent-group.mx', NULL, '2023-03-09 19:34:12', '2023-03-09 19:35:00'),
(3, 'IT-STRATEGY', 's1', 8, 'it-strategy.mx', NULL, '2023-03-09 19:35:30', '2023-03-09 19:35:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_organization__cdata`
--

CREATE TABLE `rcl_organization__cdata` (
  `org_id` int(11) UNSIGNED NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `phone` mediumtext DEFAULT NULL,
  `website` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_organization__cdata`
--

INSERT INTO `rcl_organization__cdata` (`org_id`, `name`, `address`, `phone`, `website`, `notes`) VALUES
(1, NULL, 'Colina de Mocusari 33, Boulevares, 53140 Naucalpan de Juárez, Méx.', '5553080231', 'https://www.triplei.mx/', ''),
(2, NULL, '', '5553080231', 'https://www.triplei.mx/', ''),
(3, NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_plugin`
--

CREATE TABLE `rcl_plugin` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `install_path` varchar(60) NOT NULL,
  `isphar` tinyint(1) NOT NULL DEFAULT 0,
  `isactive` tinyint(1) NOT NULL DEFAULT 0,
  `version` varchar(64) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `installed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_plugin`
--

INSERT INTO `rcl_plugin` (`id`, `name`, `install_path`, `isphar`, `isactive`, `version`, `notes`, `installed`) VALUES
(1, 'Oauth2 Client', 'plugins/auth-oauth2.phar', 1, 1, '0.6', '<p>Provides a configurable Oauth2 authentication and authorization backends.  backends.</p>', '2023-03-08 12:21:18'),
(2, 'Help Desk Audit', 'plugins/audit.phar', 1, 1, '0.1', '<p>Provides a configurable mechanism to audit viewing</p>\r\n<p>    and other activity of tickets.</p>', '2023-03-08 13:19:34'),
(3, 'Attachments on the filesystem', 'plugins/storage-fs.phar', 1, 1, '0.3', '<p>Permite almacenar archivos adjuntos en el sistema de archivos</p>', '2023-03-12 05:31:42'),
(4, 'Password Management Policies', 'plugins/auth-password-policy.phar', 1, 0, '0.1', NULL, '2023-03-15 23:03:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_plugin_instance`
--

CREATE TABLE `rcl_plugin_instance` (
  `id` int(11) UNSIGNED NOT NULL,
  `plugin_id` int(11) UNSIGNED NOT NULL,
  `flags` int(10) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_plugin_instance`
--

INSERT INTO `rcl_plugin_instance` (`id`, `plugin_id`, `flags`, `name`, `notes`, `created`, `updated`) VALUES
(1, 1, 1, 'Google', NULL, '2023-03-08 12:26:26', '2023-03-15 23:05:06'),
(2, 1, 1, 'soportereclu@gmail.com (mailbox)', '<p>OAuth2 Authorization for soportereclu@gmail.com</p>', '2023-03-08 12:29:59', '2023-03-15 23:05:42'),
(3, 1, 1, 'soportereclu@gmail.com (smtp)', '<p>OAuth2 Authorization for soportereclu@gmail.com</p>', '2023-03-08 12:33:15', '2023-03-15 23:06:30'),
(4, 2, 1, 'PIP-Audit', NULL, '2023-03-08 13:20:01', '2023-03-08 13:20:19'),
(5, 3, 1, 'Adjuntos', NULL, '2023-03-12 05:33:34', '2023-03-12 05:33:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue`
--

CREATE TABLE `rcl_queue` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `columns_id` int(11) UNSIGNED DEFAULT NULL,
  `sort_id` int(11) UNSIGNED DEFAULT NULL,
  `flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `staff_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(60) DEFAULT NULL,
  `config` text DEFAULT NULL,
  `filter` varchar(64) DEFAULT NULL,
  `root` varchar(32) DEFAULT NULL,
  `path` varchar(80) NOT NULL DEFAULT '/',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue`
--

INSERT INTO `rcl_queue` (`id`, `parent_id`, `columns_id`, `sort_id`, `flags`, `staff_id`, `sort`, `title`, `config`, `filter`, `root`, `path`, `created`, `updated`) VALUES
(1, 0, NULL, 1, 3, 0, 1, 'Abierto', '{\"criteria\":[[\"status__state\",\"includes\",{\"open\":\"Abierto\"}]],\"conditions\":[]}', NULL, 'T', '/1/', '2023-03-08 12:14:11', '2023-03-10 05:24:35'),
(2, 1, NULL, 4, 171, 0, 1, 'Abierto', '{\"criteria\":[[\"isanswered\",\"nset\",null]],\"conditions\":[]}', NULL, 'T', '/1/2/', '2023-03-08 12:14:12', '2023-03-10 03:31:16'),
(3, 1, NULL, 4, 171, 0, 2, 'En proceso de atención', '{\"criteria\":[[\"isanswered\",\"set\",null]],\"conditions\":[]}', NULL, 'T', '/1/3/', '2023-03-08 12:14:13', '2023-03-10 03:41:05'),
(4, 1, NULL, 4, 171, 0, 3, 'Atrasados', '{\"criteria\":[[\"isoverdue\",\"set\",null]],\"conditions\":[]}', NULL, 'T', '/1/4/', '2023-03-08 12:14:13', '2023-03-10 04:47:25'),
(5, 0, NULL, 3, 7, 0, 3, 'Mis Tickets', '{\"criteria\":[[\"assignee\",\"includes\",{\"M\":\"Yo\",\"T\":\"Uno de mis equipos\"}],[\"status__state\",\"includes\",{\"open\":\"Abierto\"}]],\"conditions\":[]}', NULL, 'T', '/5/', '2023-03-08 12:14:13', '2023-03-10 05:37:58'),
(6, 5, NULL, NULL, 175, 0, 1, 'Asignados a mi', '{\"criteria\":[[\"assignee\",\"includes\",{\"M\":\"Yo\"}]],\"conditions\":[]}', NULL, 'T', '/5/6/', '2023-03-08 12:14:14', '2023-03-10 05:37:58'),
(7, 5, NULL, NULL, 47, 0, 2, 'Assigned to Teams', '{\"criteria\":[[\"assignee\",\"!includes\",{\"M\":\"Me\"}]],\"conditions\":[]}', NULL, 'T', '/', '2023-03-08 12:14:15', '2023-03-10 04:53:59'),
(8, 0, NULL, 5, 3, 0, 4, 'Cerrado', '{\"criteria\":[[\"status__state\",\"includes\",{\"closed\":\"Cerrado\"}]],\"conditions\":[]}', NULL, 'T', '/8/', '2023-03-08 12:14:15', '2023-03-10 04:55:12'),
(9, 8, NULL, 5, 47, 0, 1, 'Today', '{\"criteria\":[[\"closed\",\"period\",\"td\"]],\"conditions\":[]}', NULL, 'T', '/', '2023-03-08 12:14:16', '2023-03-10 04:54:15'),
(10, 8, NULL, 5, 47, 0, 2, 'Yesterday', '{\"criteria\":[[\"closed\",\"period\",\"yd\"]],\"conditions\":[]}', NULL, 'T', '/', '2023-03-08 12:14:17', '2023-03-10 04:54:15'),
(11, 8, NULL, 5, 171, 0, 3, 'Esta Semana', '{\"criteria\":[[\"closed\",\"period\",\"tw\"]],\"conditions\":[]}', NULL, 'T', '/8/11/', '2023-03-08 12:14:17', '2023-03-10 04:57:25'),
(12, 8, NULL, 5, 171, 0, 4, 'Este Mes', '{\"criteria\":[[\"closed\",\"period\",\"tm\"]],\"conditions\":[]}', NULL, 'T', '/8/12/', '2023-03-08 12:14:18', '2023-03-10 05:00:23'),
(13, 8, NULL, 6, 47, 0, 5, 'This Quarter', '{\"criteria\":[[\"closed\",\"period\",\"tq\"]],\"conditions\":[]}', NULL, 'T', '/', '2023-03-08 12:14:18', '2023-03-10 04:54:15'),
(14, 8, NULL, 7, 171, 0, 6, 'Este año', '{\"criteria\":[[\"closed\",\"period\",\"ty\"]],\"conditions\":[]}', NULL, 'T', '/8/14/', '2023-03-08 12:14:19', '2023-03-10 05:02:29'),
(19, 0, NULL, NULL, 7, 0, 0, 'TG', '{\"criteria\":[[\"entries__answers!171__value\",\"includes\",{\"93\":\"TALENT GROUP\"}]],\"conditions\":[]}', NULL, 'T', '/19/', '2023-03-10 05:25:09', '2023-03-17 05:36:19'),
(20, 0, NULL, NULL, 7, 0, 0, 'Operaciones', '{\"criteria\":[[\"entries__answers!171__value\",\"includes\",{\"94\":\"OPERACIONES\"}]],\"conditions\":[]}', NULL, 'T', '/20/', '2023-03-10 05:33:49', '2023-03-17 05:36:19'),
(22, 1, NULL, NULL, 171, 0, 0, 'Análisis PIP', '{\"criteria\":[[\"status__id\",\"includes\",{\"6\":\"An\\u00e1lisis PIP\"}]],\"conditions\":[]}', NULL, 'T', '/1/22/', '2023-03-17 08:12:55', '2023-03-17 08:13:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue_column`
--

CREATE TABLE `rcl_queue_column` (
  `id` int(11) UNSIGNED NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `primary` varchar(64) NOT NULL DEFAULT '',
  `secondary` varchar(64) DEFAULT NULL,
  `filter` varchar(32) DEFAULT NULL,
  `truncate` varchar(16) DEFAULT NULL,
  `annotations` text DEFAULT NULL,
  `conditions` text DEFAULT NULL,
  `extra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue_column`
--

INSERT INTO `rcl_queue_column` (`id`, `flags`, `name`, `primary`, `secondary`, `filter`, `truncate`, `annotations`, `conditions`, `extra`) VALUES
(1, 0, 'Ticket #', 'number', NULL, 'link:ticketP', 'wrap', '[{\"c\":\"TicketSourceDecoration\",\"p\":\"b\"}]', '[{\"crit\":[\"isanswered\",\"nset\",null],\"prop\":{\"font-weight\":\"bold\"}}]', NULL),
(2, 0, 'Date Created', 'created', NULL, 'date:full', 'wrap', '[]', '[]', NULL),
(3, 0, 'Subject', 'cdata__subject', NULL, 'link:ticket', 'ellipsis', '[{\"c\":\"TicketThreadCount\",\"p\":\">\"},{\"c\":\"ThreadAttachmentCount\",\"p\":\"a\"},{\"c\":\"OverdueFlagDecoration\",\"p\":\"<\"},{\"c\":\"LockDecoration\",\"p\":\"<\"}]', '[{\"crit\":[\"isanswered\",\"nset\",null],\"prop\":{\"font-weight\":\"bold\"}}]', NULL),
(4, 0, 'User Name', 'user__name', NULL, NULL, 'wrap', '[{\"c\":\"ThreadCollaboratorCount\",\"p\":\">\"}]', '[]', NULL),
(5, 0, 'Priority', 'cdata__priority', NULL, NULL, 'wrap', '[]', '[]', NULL),
(6, 0, 'Status', 'status__id', NULL, NULL, 'wrap', '[]', '[]', NULL),
(7, 0, 'Close Date', 'closed', NULL, 'date:full', 'wrap', '[]', '[]', NULL),
(8, 0, 'Assignee', 'assignee', NULL, NULL, 'wrap', '[]', '[]', NULL),
(9, 0, 'Due Date', 'duedate', 'est_duedate', 'date:human', 'wrap', '[]', '[]', NULL),
(10, 0, 'Last Updated', 'lastupdate', NULL, 'date:full', 'wrap', '[]', '[]', NULL),
(11, 0, 'Department', 'dept_id', NULL, NULL, 'wrap', '[]', '[]', NULL),
(12, 0, 'Last Message', 'thread__lastmessage', NULL, 'date:human', 'wrap', '[]', '[]', NULL),
(13, 0, 'Last Response', 'thread__lastresponse', NULL, 'date:human', 'wrap', '[]', '[]', NULL),
(14, 0, 'Team', 'team_id', NULL, NULL, 'wrap', '[]', '[]', NULL),
(15, 0, 'are', 'entries__answers!166__value', 'entries__answers!166__value', NULL, 'wrap', '[]', '[]', NULL),
(16, 0, 'AREA3', 'entries__answers!171__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(17, 0, 'MARCA', 'entries__answers!63__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(18, 0, 'MARCA', 'entries__answers!63__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(19, 0, 'sec', 'entries__answers!122__value', 'entries__answers!239__value', NULL, 'wrap', '[]', '[]', NULL),
(20, 0, 'Área', 'entries__answers!171__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(21, 0, 'Marca', 'entries__answers!63__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(22, 0, 'Tipo de Operación', 'entries__answers!241__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(23, 0, 'Región', 'entries__answers!239__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(24, 0, 'Asunto', 'topic_id', NULL, NULL, 'wrap', '[]', '[]', NULL),
(25, 0, 'Asunto', 'topic_id', NULL, NULL, 'wrap', '[]', '[]', NULL),
(26, 0, 'Área', 'entries__answers!171__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(27, 0, 'Marca', 'entries__answers!63__value', NULL, NULL, 'wrap', '[]', '[]', NULL),
(28, 0, 'Solicitud', 'topic__topic', NULL, NULL, 'wrap', '[]', '[]', NULL),
(29, 0, 'Fecha de vencimiento', 'duedate', NULL, NULL, 'wrap', '[]', '[]', NULL),
(30, 0, 'Estatus Actual', 'status__id', NULL, NULL, 'wrap', '[]', '[]', NULL),
(31, 0, 'Atribución', 'entries__answers!45__value', NULL, NULL, 'wrap', '[]', '[]', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue_columns`
--

CREATE TABLE `rcl_queue_columns` (
  `queue_id` int(11) UNSIGNED NOT NULL,
  `column_id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL,
  `bits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `heading` varchar(64) DEFAULT NULL,
  `width` int(10) UNSIGNED NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue_columns`
--

INSERT INTO `rcl_queue_columns` (`queue_id`, `column_id`, `staff_id`, `bits`, `sort`, `heading`, `width`) VALUES
(1, 1, 0, 1, 0, 'Ticket', 100),
(1, 2, 0, 1, 1, 'Fecha de Creación', 100),
(1, 4, 0, 1, 5, 'Propietario', 185),
(1, 10, 0, 1, 2, 'Ultima Actualización', 150),
(1, 24, 0, 1, 4, 'Tema de Ayuda', 100),
(1, 26, 0, 1, 3, 'Área', 100),
(1, 27, 0, 1, 6, 'Marca', 100),
(1, 29, 0, 1, 7, 'Fecha de vencimiento', 100),
(2, 1, 0, 1, 0, 'Ticket', 100),
(2, 4, 0, 1, 3, 'Propietario', 185),
(2, 8, 0, 1, 4, 'Asignado a', 160),
(2, 10, 0, 1, 1, 'Última Actualización', 100),
(2, 20, 0, 1, 5, 'Área', 70),
(2, 21, 0, 1, 6, 'Marca', 70),
(2, 22, 0, 1, 7, 'Tipo de Operación', 70),
(2, 25, 0, 1, 2, 'Asunto', 100),
(3, 1, 0, 1, 0, 'Ticket', 100),
(3, 4, 0, 1, 3, 'Propietario', 100),
(3, 8, 0, 1, 4, 'Asignado a', 100),
(3, 10, 0, 1, 1, 'Ultima Actualización', 100),
(3, 20, 0, 1, 5, 'Área', 50),
(3, 22, 0, 1, 7, 'Tipo de Operación', 50),
(3, 24, 0, 1, 2, 'Asunto', 100),
(3, 27, 0, 1, 6, 'Marca', 50),
(4, 1, 0, 1, 0, 'Ticket', 100),
(4, 4, 0, 1, 1, 'Propietario', 100),
(4, 8, 0, 1, 2, 'Asignado a', 160),
(4, 9, 0, 1, 3, 'Fecha de vencimiento', 100),
(4, 26, 0, 1, 4, 'Área', 100),
(5, 1, 0, 1, 0, 'Ticket', 100),
(5, 4, 0, 1, 3, 'Propietario', 185),
(5, 10, 0, 1, 2, 'Ultima Actualización', 150),
(5, 11, 0, 1, 4, 'Departamento', 160),
(5, 20, 0, 1, 5, 'Área', 100),
(5, 21, 0, 1, 6, 'Marca', 100),
(5, 22, 0, 1, 7, 'Tipo de Operación', 100),
(5, 24, 0, 1, 1, 'Asunto', 100),
(6, 1, 0, 1, 0, 'Ticket', 100),
(6, 4, 0, 1, 3, 'Propietario', 185),
(6, 10, 0, 1, 1, 'Ultima Actualización', 150),
(6, 11, 0, 1, 4, 'Departamento', 160),
(6, 20, 0, 1, 5, 'Área', 100),
(6, 21, 0, 1, 6, 'Marca', 100),
(6, 22, 0, 1, 7, 'Tipo de Operación', 100),
(6, 24, 0, 1, 2, 'Asunto', 100),
(7, 1, 0, 1, 1, 'Ticket', 100),
(7, 3, 0, 1, 3, 'Subject', 300),
(7, 4, 0, 1, 4, 'From', 185),
(7, 5, 0, 1, 5, 'Priority', 85),
(7, 10, 0, 1, 2, 'Last Update', 150),
(7, 14, 0, 1, 6, 'Team', 160),
(8, 1, 0, 1, 0, 'Ticket', 100),
(8, 2, 0, 1, 1, 'Fecha de creación', 100),
(8, 4, 0, 1, 4, 'Propietario', 185),
(8, 7, 0, 1, 2, 'Fecha de Cierre', 150),
(8, 8, 0, 1, 6, 'Cerrado por', 160),
(8, 11, 0, 1, 5, 'Departamento', 100),
(8, 24, 0, 1, 3, 'Asunto', 100),
(9, 1, 0, 1, 1, 'Ticket', 100),
(9, 3, 0, 1, 3, 'Subject', 300),
(9, 4, 0, 1, 4, 'From', 185),
(9, 7, 0, 1, 2, 'Date Closed', 150),
(9, 8, 0, 1, 6, 'Closed By', 160),
(10, 1, 0, 1, 1, 'Ticket', 100),
(10, 3, 0, 1, 3, 'Subject', 300),
(10, 4, 0, 1, 4, 'From', 185),
(10, 7, 0, 1, 2, 'Date Closed', 150),
(10, 8, 0, 1, 6, 'Closed By', 160),
(11, 1, 0, 1, 0, 'Ticket', 100),
(11, 2, 0, 1, 1, 'Fecha de Creación', 100),
(11, 4, 0, 1, 4, 'Propietario', 185),
(11, 7, 0, 1, 2, 'Fecha de Cierre', 150),
(11, 8, 0, 1, 6, 'Cerrado por', 160),
(11, 11, 0, 1, 5, 'Departamento', 100),
(11, 24, 0, 1, 3, 'Asunto', 100),
(12, 1, 0, 1, 0, 'Ticket', 100),
(12, 2, 0, 1, 1, 'Fecha de Creación', 100),
(12, 7, 0, 1, 2, 'Fecha de Cierre', 150),
(12, 8, 0, 1, 5, 'Cerrado por', 160),
(12, 11, 0, 1, 4, 'Departamento', 100),
(12, 24, 0, 1, 3, 'Asunto', 100),
(13, 1, 0, 1, 1, 'Ticket', 100),
(13, 3, 0, 1, 3, 'Subject', 300),
(13, 4, 0, 1, 4, 'From', 185),
(13, 7, 0, 1, 2, 'Date Closed', 150),
(13, 8, 0, 1, 6, 'Closed By', 160),
(14, 1, 0, 1, 0, 'Ticket', 100),
(14, 2, 0, 1, 1, 'Fecha de Creación', 100),
(14, 7, 0, 1, 2, 'Fecha de Cierre', 150),
(14, 8, 0, 1, 5, 'Cerrado por', 160),
(14, 11, 0, 1, 4, 'Departamento', 100),
(14, 24, 0, 1, 3, 'Asunto', 100),
(17, 1, 0, 1, 0, 'Number', 85),
(17, 2, 0, 1, 1, 'Created', 120),
(17, 3, 0, 1, 2, 'Subject', 250),
(17, 4, 0, 1, 3, 'From', 150),
(17, 5, 0, 1, 4, 'Priority', 120),
(17, 8, 0, 1, 5, 'Assignee', 100),
(18, 1, 0, 1, 0, 'Ticket', 85),
(18, 1, 1, 1, 0, 'Ticket', 85),
(18, 4, 0, 1, 3, 'Propietario', 150),
(18, 4, 1, 1, 3, 'Propietario', 150),
(18, 7, 0, 1, 6, 'Fecha de Cierre', 100),
(18, 7, 1, 1, 6, 'Fecha de Cierre', 100),
(18, 8, 0, 1, 4, 'Asignado a', 100),
(18, 8, 1, 1, 4, 'Asignado a', 100),
(18, 9, 0, 1, 5, 'Fecha de vencimiento', 100),
(18, 9, 1, 1, 5, 'Fecha de vencimiento', 100),
(18, 20, 0, 1, 2, 'Área', 100),
(18, 20, 1, 1, 2, 'Área', 100),
(18, 24, 0, 1, 1, 'Asunto', 100),
(18, 24, 1, 1, 1, 'Asunto', 100),
(19, 1, 0, 1, 0, 'Ticket', 100),
(19, 4, 0, 1, 4, 'Propietario', 185),
(19, 8, 0, 1, 5, 'Asignado a', 160),
(19, 10, 0, 1, 1, 'Ultima Actualización', 150),
(19, 22, 0, 1, 7, 'Tipo de Operación', 100),
(19, 24, 0, 1, 3, 'Asunto', 100),
(19, 26, 0, 1, 2, 'Área', 100),
(19, 27, 0, 1, 6, 'Marca', 100),
(20, 1, 0, 1, 0, 'Number', 85),
(20, 2, 0, 1, 1, 'Created', 120),
(20, 3, 0, 1, 2, 'Subject', 250),
(20, 4, 0, 1, 3, 'From', 150),
(20, 5, 0, 1, 4, 'Priority', 120),
(20, 8, 0, 1, 5, 'Assignee', 100),
(21, 1, 0, 1, 0, 'Number', 85),
(21, 2, 0, 1, 1, 'Created', 120),
(21, 3, 0, 1, 2, 'Subject', 250),
(21, 4, 0, 1, 3, 'From', 150),
(21, 5, 0, 1, 4, 'Priority', 120),
(21, 8, 0, 1, 5, 'Assignee', 100),
(21, 28, 0, 1, 6, 'Solicitud', 100),
(22, 1, 0, 1, 0, 'Número', 85),
(22, 2, 0, 1, 1, 'Creado', 120),
(22, 3, 0, 1, 2, 'Asunto', 250),
(22, 4, 0, 1, 3, 'Propietario', 150),
(22, 8, 0, 1, 4, 'Procurador', 100),
(22, 9, 0, 1, 5, 'Fecha de Vencimiento', 100),
(22, 30, 0, 1, 6, 'Estatus Actual', 100),
(22, 31, 0, 1, 7, 'Atribución', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue_config`
--

CREATE TABLE `rcl_queue_config` (
  `queue_id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL,
  `setting` text DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue_config`
--

INSERT INTO `rcl_queue_config` (`queue_id`, `staff_id`, `setting`, `updated`) VALUES
(18, 1, '{\"sort_id\":0,\"filter\":\"status__state\",\"inherit-sort\":false,\"inherit-columns\":false,\"criteria\":[[\"isassigned\",\"assigned\",null]]}', '2023-03-10 05:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue_export`
--

CREATE TABLE `rcl_queue_export` (
  `id` int(11) UNSIGNED NOT NULL,
  `queue_id` int(11) UNSIGNED NOT NULL,
  `path` varchar(64) NOT NULL DEFAULT '',
  `heading` varchar(64) DEFAULT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue_export`
--

INSERT INTO `rcl_queue_export` (`id`, `queue_id`, `path`, `heading`, `sort`) VALUES
(1, 8, 'number', 'Número de Ticket', 1),
(2, 8, 'created', 'Fecha de creación', 2),
(3, 8, 'cdata__subject', 'Asunto', 3),
(4, 8, 'user__name', 'De', 4),
(5, 8, 'user__emails__address', 'De correo electrónico', 5),
(6, 8, 'cdata__priority', 'Prioridad', 6),
(7, 8, 'dept_id', 'Departamento', 7),
(8, 8, 'topic_id', 'Temas de ayuda', 8),
(9, 8, 'source', 'Fuente', 9),
(10, 8, 'status__id', 'Estado actual', 10),
(11, 8, 'lastupdate', 'Última actualización', 11),
(12, 8, 'est_duedate', 'Fecha de expiración de SLA', 12),
(13, 8, 'sla_id', 'Plan SLA', 13),
(14, 8, 'duedate', 'Fecha de Vencimiento', 14),
(15, 8, 'closed', 'Fecha de cierre', 15),
(16, 8, 'isoverdue', 'Atrasado', 16),
(17, 8, 'merged', 'Merged', 17),
(18, 8, 'linked', 'Linked', 18),
(19, 8, 'isanswered', 'Respondido', 19),
(20, 8, 'staff_id', 'Agente asignado', 20),
(21, 8, 'team_id', 'Equipo asignado', 21),
(22, 8, 'thread_count', 'Cuenta de hilos', 22),
(23, 8, 'reopen_count', 'Reabrir contador', 23),
(24, 8, 'attachment_count', 'Recuento de datos adjuntos', 24),
(25, 8, 'task_count', 'Task Count', 25),
(26, 17, 'number', 'Número de Ticket', 1),
(27, 17, 'created', 'Fecha de creación', 2),
(28, 17, 'cdata__subject', 'Asunto', 3),
(29, 17, 'user__name', 'De', 4),
(30, 17, 'user__emails__address', 'De correo electrónico', 5),
(31, 17, 'cdata__priority', 'Prioridad', 6),
(32, 17, 'dept_id', 'Departamento', 7),
(33, 17, 'topic_id', 'Temas de ayuda', 8),
(34, 17, 'source', 'Fuente', 9),
(35, 17, 'status__id', 'Estado actual', 10),
(36, 17, 'lastupdate', 'Última actualización', 11),
(37, 17, 'est_duedate', 'Fecha de expiración de SLA', 12),
(38, 17, 'sla_id', 'Plan SLA', 13),
(39, 17, 'duedate', 'Fecha de Vencimiento', 14),
(40, 17, 'closed', 'Fecha de cierre', 15),
(41, 17, 'isoverdue', 'Atrasado', 16),
(42, 17, 'merged', 'Merged', 17),
(43, 17, 'linked', 'Linked', 18),
(44, 17, 'isanswered', 'Respondido', 19),
(45, 17, 'staff_id', 'Agente asignado', 20),
(46, 17, 'team_id', 'Equipo asignado', 21),
(47, 17, 'thread_count', 'Cuenta de hilos', 22),
(48, 17, 'reopen_count', 'Reabrir contador', 23),
(49, 17, 'attachment_count', 'Recuento de datos adjuntos', 24),
(50, 17, 'task_count', 'Task Count', 25),
(51, 1, 'number', 'Número de Ticket', 1),
(52, 1, 'created', 'Fecha de creación', 2),
(53, 1, 'cdata__subject', 'Asunto', 3),
(54, 1, 'user__name', 'De', 4),
(55, 1, 'user__emails__address', 'De correo electrónico', 5),
(56, 1, 'cdata__priority', 'Prioridad', 6),
(57, 1, 'dept_id', 'Departamento', 7),
(58, 1, 'topic_id', 'Temas de ayuda', 8),
(59, 1, 'source', 'Fuente', 9),
(60, 1, 'status__id', 'Estado actual', 10),
(61, 1, 'lastupdate', 'Última actualización', 11),
(62, 1, 'est_duedate', 'Fecha de expiración de SLA', 12),
(63, 1, 'sla_id', 'Plan SLA', 13),
(64, 1, 'duedate', 'Fecha de Vencimiento', 14),
(65, 1, 'closed', 'Fecha de cierre', 15),
(66, 1, 'isoverdue', 'Atrasado', 16),
(67, 1, 'merged', 'Merged', 17),
(68, 1, 'linked', 'Linked', 18),
(69, 1, 'isanswered', 'Respondido', 19),
(70, 1, 'staff_id', 'Agente asignado', 20),
(71, 1, 'team_id', 'Equipo asignado', 21),
(72, 1, 'thread_count', 'Cuenta de hilos', 22),
(73, 1, 'reopen_count', 'Reabrir contador', 23),
(74, 1, 'attachment_count', 'Recuento de datos adjuntos', 24),
(75, 1, 'task_count', 'Task Count', 25),
(76, 5, 'number', 'Número de Ticket', 1),
(77, 5, 'created', 'Fecha de creación', 2),
(78, 5, 'cdata__subject', 'Asunto', 3),
(79, 5, 'user__name', 'De', 4),
(80, 5, 'user__emails__address', 'De correo electrónico', 5),
(81, 5, 'cdata__priority', 'Prioridad', 6),
(82, 5, 'dept_id', 'Departamento', 7),
(83, 5, 'topic_id', 'Temas de ayuda', 8),
(84, 5, 'source', 'Fuente', 9),
(85, 5, 'status__id', 'Estado actual', 10),
(86, 5, 'lastupdate', 'Última actualización', 11),
(87, 5, 'est_duedate', 'Fecha de expiración de SLA', 12),
(88, 5, 'sla_id', 'Plan SLA', 13),
(89, 5, 'duedate', 'Fecha de Vencimiento', 14),
(90, 5, 'closed', 'Fecha de cierre', 15),
(91, 5, 'isoverdue', 'Atrasado', 16),
(92, 5, 'merged', 'Merged', 17),
(93, 5, 'linked', 'Linked', 18),
(94, 5, 'isanswered', 'Respondido', 19),
(95, 5, 'staff_id', 'Agente asignado', 20),
(96, 5, 'team_id', 'Equipo asignado', 21),
(97, 5, 'thread_count', 'Cuenta de hilos', 22),
(98, 5, 'reopen_count', 'Reabrir contador', 23),
(99, 5, 'attachment_count', 'Recuento de datos adjuntos', 24),
(100, 5, 'task_count', 'Task Count', 25),
(101, 18, 'number', 'Número de Ticket', 1),
(102, 18, 'created', 'Fecha de creación', 2),
(103, 18, 'cdata__subject', 'Asunto', 3),
(104, 18, 'user__name', 'De', 4),
(105, 18, 'user__emails__address', 'De correo electrónico', 5),
(106, 18, 'cdata__priority', 'Prioridad', 6),
(107, 18, 'dept_id', 'Departamento', 7),
(108, 18, 'topic_id', 'Temas de ayuda', 8),
(109, 18, 'source', 'Fuente', 9),
(110, 18, 'status__id', 'Estado actual', 10),
(111, 18, 'lastupdate', 'Última actualización', 11),
(112, 18, 'est_duedate', 'Fecha de expiración de SLA', 12),
(113, 18, 'sla_id', 'Plan SLA', 13),
(114, 18, 'duedate', 'Fecha de Vencimiento', 14),
(115, 18, 'closed', 'Fecha de cierre', 15),
(116, 18, 'isoverdue', 'Atrasado', 16),
(117, 18, 'merged', 'Merged', 17),
(118, 18, 'linked', 'Linked', 18),
(119, 18, 'isanswered', 'Respondido', 19),
(120, 18, 'staff_id', 'Agente asignado', 20),
(121, 18, 'team_id', 'Equipo asignado', 21),
(122, 18, 'thread_count', 'Cuenta de hilos', 22),
(123, 18, 'reopen_count', 'Reabrir contador', 23),
(124, 18, 'attachment_count', 'Recuento de datos adjuntos', 24),
(125, 18, 'task_count', 'Task Count', 25),
(126, 19, 'number', 'Número de Ticket', 1),
(127, 19, 'created', 'Fecha de creación', 2),
(128, 19, 'cdata__subject', 'Asunto', 3),
(129, 19, 'user__name', 'De', 4),
(130, 19, 'user__emails__address', 'De correo electrónico', 5),
(131, 19, 'cdata__priority', 'Prioridad', 6),
(132, 19, 'dept_id', 'Departamento', 7),
(133, 19, 'topic_id', 'Temas de ayuda', 8),
(134, 19, 'source', 'Fuente', 9),
(135, 19, 'status__id', 'Estado actual', 10),
(136, 19, 'lastupdate', 'Última actualización', 11),
(137, 19, 'est_duedate', 'Fecha de expiración de SLA', 12),
(138, 19, 'sla_id', 'Plan SLA', 13),
(139, 19, 'duedate', 'Fecha de Vencimiento', 14),
(140, 19, 'closed', 'Fecha de cierre', 15),
(141, 19, 'isoverdue', 'Atrasado', 16),
(142, 19, 'merged', 'Merged', 17),
(143, 19, 'linked', 'Linked', 18),
(144, 19, 'isanswered', 'Respondido', 19),
(145, 19, 'staff_id', 'Agente asignado', 20),
(146, 19, 'team_id', 'Equipo asignado', 21),
(147, 19, 'thread_count', 'Cuenta de hilos', 22),
(148, 19, 'reopen_count', 'Reabrir contador', 23),
(149, 19, 'attachment_count', 'Recuento de datos adjuntos', 24),
(150, 19, 'task_count', 'Task Count', 25),
(151, 20, 'number', 'Número de Ticket', 1),
(152, 20, 'created', 'Fecha de creación', 2),
(153, 20, 'cdata__subject', 'Asunto', 3),
(154, 20, 'user__name', 'De', 4),
(155, 20, 'user__emails__address', 'De correo electrónico', 5),
(156, 20, 'cdata__priority', 'Prioridad', 6),
(157, 20, 'dept_id', 'Departamento', 7),
(158, 20, 'topic_id', 'Temas de ayuda', 8),
(159, 20, 'source', 'Fuente', 9),
(160, 20, 'status__id', 'Estado actual', 10),
(161, 20, 'lastupdate', 'Última actualización', 11),
(162, 20, 'est_duedate', 'Fecha de expiración de SLA', 12),
(163, 20, 'sla_id', 'Plan SLA', 13),
(164, 20, 'duedate', 'Fecha de Vencimiento', 14),
(165, 20, 'closed', 'Fecha de cierre', 15),
(166, 20, 'isoverdue', 'Atrasado', 16),
(167, 20, 'merged', 'Merged', 17),
(168, 20, 'linked', 'Linked', 18),
(169, 20, 'isanswered', 'Respondido', 19),
(170, 20, 'staff_id', 'Agente asignado', 20),
(171, 20, 'team_id', 'Equipo asignado', 21),
(172, 20, 'thread_count', 'Cuenta de hilos', 22),
(173, 20, 'reopen_count', 'Reabrir contador', 23),
(174, 20, 'attachment_count', 'Recuento de datos adjuntos', 24),
(175, 20, 'task_count', 'Task Count', 25),
(176, 21, 'number', 'Número de Ticket', 1),
(177, 21, 'created', 'Fecha de creación', 2),
(178, 21, 'cdata__subject', 'Asunto', 3),
(179, 21, 'user__name', 'De', 4),
(180, 21, 'user__emails__address', 'De correo electrónico', 5),
(181, 21, 'cdata__priority', 'Prioridad', 6),
(182, 21, 'dept_id', 'Departamento', 7),
(183, 21, 'topic_id', 'Temas de ayuda', 8),
(184, 21, 'source', 'Fuente', 9),
(185, 21, 'status__id', 'Estado actual', 10),
(186, 21, 'lastupdate', 'Última actualización', 11),
(187, 21, 'est_duedate', 'Fecha de expiración de SLA', 12),
(188, 21, 'sla_id', 'Plan SLA', 13),
(189, 21, 'duedate', 'Fecha de Vencimiento', 14),
(190, 21, 'closed', 'Fecha de cierre', 15),
(191, 21, 'isoverdue', 'Atrasado', 16),
(192, 21, 'merged', 'Merged', 17),
(193, 21, 'linked', 'Linked', 18),
(194, 21, 'isanswered', 'Respondido', 19),
(195, 21, 'staff_id', 'Agente asignado', 20),
(196, 21, 'team_id', 'Equipo asignado', 21),
(197, 21, 'thread_count', 'Cuenta de hilos', 22),
(198, 21, 'reopen_count', 'Reabrir contador', 23),
(199, 21, 'attachment_count', 'Recuento de datos adjuntos', 24),
(200, 21, 'task_count', 'Task Count', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue_sort`
--

CREATE TABLE `rcl_queue_sort` (
  `id` int(11) UNSIGNED NOT NULL,
  `root` varchar(32) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `columns` text DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue_sort`
--

INSERT INTO `rcl_queue_sort` (`id`, `root`, `name`, `columns`, `updated`) VALUES
(1, NULL, 'Priority + Most Recently Updated', '[\"-cdata__priority\",\"-lastupdate\"]', '2023-03-08 12:14:11'),
(2, NULL, 'Priority + Most Recently Created', '[\"-cdata__priority\",\"-created\"]', '2023-03-08 12:14:11'),
(3, NULL, 'Priority + Due Date', '[\"-cdata__priority\",\"-est_duedate\"]', '2023-03-08 12:14:11'),
(4, NULL, 'Due Date', '[\"-est_duedate\"]', '2023-03-08 12:14:11'),
(5, NULL, 'Closed Date', '[\"-closed\"]', '2023-03-08 12:14:11'),
(6, NULL, 'Create Date', '[\"-created\"]', '2023-03-08 12:14:11'),
(7, NULL, 'Update Date', '[\"-lastupdate\"]', '2023-03-08 12:14:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_queue_sorts`
--

CREATE TABLE `rcl_queue_sorts` (
  `queue_id` int(11) UNSIGNED NOT NULL,
  `sort_id` int(11) UNSIGNED NOT NULL,
  `bits` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_queue_sorts`
--

INSERT INTO `rcl_queue_sorts` (`queue_id`, `sort_id`, `bits`, `sort`) VALUES
(1, 1, 0, 0),
(1, 2, 0, 1),
(1, 3, 0, 2),
(1, 4, 0, 3),
(1, 6, 0, 4),
(1, 7, 0, 5),
(5, 1, 0, 0),
(5, 2, 0, 1),
(5, 3, 0, 2),
(5, 4, 0, 3),
(5, 6, 0, 4),
(5, 7, 0, 5),
(6, 1, 0, 0),
(6, 2, 0, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(7, 1, 0, 0),
(7, 2, 0, 0),
(7, 3, 0, 0),
(7, 4, 0, 0),
(7, 6, 0, 0),
(7, 7, 0, 0),
(8, 1, 0, 0),
(8, 2, 0, 1),
(8, 3, 0, 2),
(8, 4, 0, 3),
(8, 5, 0, 4),
(8, 6, 0, 5),
(8, 7, 0, 6),
(9, 1, 0, 0),
(9, 2, 0, 0),
(9, 3, 0, 0),
(9, 4, 0, 0),
(9, 5, 0, 0),
(9, 6, 0, 0),
(9, 7, 0, 0),
(10, 1, 0, 0),
(10, 2, 0, 0),
(10, 3, 0, 0),
(10, 4, 0, 0),
(10, 5, 0, 0),
(10, 6, 0, 0),
(10, 7, 0, 0),
(11, 1, 0, 0),
(11, 2, 0, 0),
(11, 3, 0, 0),
(11, 4, 0, 0),
(11, 5, 0, 0),
(11, 6, 0, 0),
(11, 7, 0, 0),
(12, 1, 0, 0),
(12, 2, 0, 0),
(12, 3, 0, 0),
(12, 4, 0, 0),
(12, 5, 0, 0),
(12, 6, 0, 0),
(12, 7, 0, 0),
(13, 1, 0, 0),
(13, 2, 0, 0),
(13, 3, 0, 0),
(13, 4, 0, 0),
(13, 5, 0, 0),
(13, 6, 0, 0),
(13, 7, 0, 0),
(14, 1, 0, 0),
(14, 2, 0, 0),
(14, 3, 0, 0),
(14, 4, 0, 0),
(14, 5, 0, 0),
(14, 6, 0, 0),
(14, 7, 0, 0),
(19, 1, 0, 0),
(19, 2, 0, 1),
(19, 3, 0, 2),
(19, 4, 0, 3),
(19, 6, 0, 4),
(19, 7, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_role`
--

CREATE TABLE `rcl_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(64) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_role`
--

INSERT INTO `rcl_role` (`id`, `flags`, `name`, `permissions`, `notes`, `created`, `updated`) VALUES
(1, 1, 'Acceso Total', '{\"ticket.assign\":1,\"ticket.close\":1,\"ticket.create\":1,\"ticket.delete\":1,\"ticket.edit\":1,\"thread.edit\":1,\"ticket.link\":1,\"ticket.markanswered\":1,\"ticket.merge\":1,\"ticket.reply\":1,\"ticket.refer\":1,\"ticket.release\":1,\"ticket.transfer\":1,\"task.assign\":1,\"task.close\":1,\"task.create\":1,\"task.delete\":1,\"task.edit\":1,\"task.reply\":1,\"task.transfer\":1,\"canned.manage\":1}', '<p>Rol con acceso ilimitado</p>', '2023-03-08 12:14:08', '2023-03-12 15:00:56'),
(2, 1, 'Acceso ampliado', '{\"ticket.assign\":1,\"ticket.close\":1,\"ticket.create\":1,\"ticket.edit\":1,\"ticket.link\":1,\"ticket.merge\":1,\"ticket.reply\":1,\"ticket.refer\":1,\"ticket.release\":1,\"ticket.transfer\":1,\"task.assign\":1,\"task.close\":1,\"task.create\":1,\"task.edit\":1,\"task.reply\":1,\"task.transfer\":1,\"canned.manage\":1}', '<p>Rol con acceso ampliado</p>', '2023-03-08 12:14:08', '2023-03-12 15:01:55'),
(3, 1, 'Acceso limitado', '{\"ticket.assign\":1,\"ticket.create\":1,\"ticket.link\":1,\"ticket.merge\":1,\"ticket.refer\":1,\"ticket.release\":1,\"ticket.transfer\":1,\"task.assign\":1,\"task.reply\":1,\"task.transfer\":1}', '<p>Rol con acceso limitado</p>', '2023-03-08 12:14:08', '2023-03-12 15:15:30'),
(4, 1, 'Dispatcher', '{\"ticket.assign\":1,\"ticket.reply\":1,\"ticket.merge\":1,\"ticket.refer\":1,\"ticket.transfer\":1,\"ticket.link\":1,\"task.assign\":1,\"task.reply\":1,\"task.transfer\":1}', '<p>Rol Dispatcher</p>', '2023-03-08 12:14:08', '2023-03-12 15:17:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_schedule`
--

CREATE TABLE `rcl_schedule` (
  `id` int(11) UNSIGNED NOT NULL,
  `flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_schedule`
--

INSERT INTO `rcl_schedule` (`id`, `flags`, `name`, `timezone`, `description`, `created`, `updated`) VALUES
(3, 1, '24/5 PIP-RECLU', NULL, '', '2023-03-08 12:14:20', '2023-03-08 12:53:38'),
(4, 0, 'Calendario Mexa', 'America/Mexico_City', '', '2023-03-08 12:14:20', '2023-03-08 12:46:02'),
(5, 1, '24/5 TG', 'America/Mexico_City', '<p>..</p>', '2023-03-08 12:48:22', '2023-03-08 12:50:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_schedule_entry`
--

CREATE TABLE `rcl_schedule_entry` (
  `id` int(11) UNSIGNED NOT NULL,
  `schedule_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `repeats` varchar(16) NOT NULL DEFAULT 'never',
  `starts_on` date DEFAULT NULL,
  `starts_at` time DEFAULT NULL,
  `ends_on` date DEFAULT NULL,
  `ends_at` time DEFAULT NULL,
  `stops_on` datetime DEFAULT NULL,
  `day` tinyint(4) DEFAULT NULL,
  `week` tinyint(4) DEFAULT NULL,
  `month` tinyint(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_schedule_entry`
--

INSERT INTO `rcl_schedule_entry` (`id`, `schedule_id`, `flags`, `sort`, `name`, `repeats`, `starts_on`, `starts_at`, `ends_on`, `ends_at`, `stops_on`, `day`, `week`, `month`, `created`, `updated`) VALUES
(7, 3, 0, 1, 'Semana PIP', 'weekdays', '2023-01-01', '09:00:00', '2023-01-01', '18:30:59', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2023-03-08 12:53:38'),
(8, 4, 0, 1, 'Año Nuevo', 'yearly', '2023-01-01', '00:00:00', '2023-01-01', '23:59:59', NULL, 1, NULL, 1, '0000-00-00 00:00:00', '2023-03-08 12:46:02'),
(17, 5, 0, 1, 'Semana', 'weekdays', '2023-01-01', '08:30:00', '2023-01-01', '18:30:59', NULL, NULL, NULL, NULL, '2023-03-08 12:49:25', '2023-03-08 12:49:32'),
(18, 4, 0, 1, 'NATALICIO BENITO JUAREZ', 'never', '2023-03-20', '00:00:00', '2023-03-20', '23:59:59', NULL, NULL, NULL, NULL, '2023-03-16 14:22:12', '2023-03-16 14:22:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_sequence`
--

CREATE TABLE `rcl_sequence` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `flags` int(10) UNSIGNED DEFAULT NULL,
  `next` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `increment` int(11) DEFAULT 1,
  `padding` char(1) DEFAULT '0',
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_sequence`
--

INSERT INTO `rcl_sequence` (`id`, `name`, `flags`, `next`, `increment`, `padding`, `updated`) VALUES
(1, 'General Tickets', 1, 1, 1, '0', '0000-00-00 00:00:00'),
(2, 'Tasks Sequence', 1, 1, 1, '0', '0000-00-00 00:00:00'),
(3, 'CSI-PIP', NULL, 13, 1, '0', '2023-03-19 01:10:14'),
(4, 'SOL-RCL', NULL, 10, 1, '0', '2023-03-15 23:16:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_session`
--

CREATE TABLE `rcl_session` (
  `session_id` varchar(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `session_data` blob DEFAULT NULL,
  `session_expire` datetime DEFAULT NULL,
  `session_updated` datetime DEFAULT NULL,
  `user_id` varchar(16) NOT NULL DEFAULT '0' COMMENT 'osTicket staff/client ID',
  `user_ip` varchar(64) NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rcl_session`
--

INSERT INTO `rcl_session` (`session_id`, `session_data`, `session_expire`, `session_updated`, `user_id`, `user_ip`, `user_agent`) VALUES
('00kkacbp7rgoeqlo4u9kna9bec', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2264626631643334316265613066366262363461383963306564336636393332363933316333383031223b733a343a2274696d65223b693a313637393338383132363b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b613a313a7b733a393a22417574685374617465223b733a303a22223b7d733a31313a226f61757468322e75736572223b4e3b7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a33303a222f73797374706970726565652f7363702f64617368626f6172642e706870223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d5f617574687c613a313a7b733a353a227374616666223b613a333a7b733a323a226964223b693a313b733a333a226b6579223b733a33303a226f61757468322e6167656e742e703169313a6a75616e2e62617272696f73223b733a333a22326661223b4e3b7d7d6578743a626b3a69647c733a31373a226f61757468322e6167656e742e70316931223b6578743a626b3a636c6173737c733a32323a224f41757468325374616666417574684261636b656e64223b3a746f6b656e7c613a313a7b733a353a227374616666223b733a37363a2262653230336434643531326266353664323162306439346137633235323932323a313637393338383132313a6635323837363464363234646231323962333263323166626361306362386436223b7d54494d455f424f4d427c693a313637393437303531313b3a3a513a547c693a323b736f72747c613a323a7b693a313b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a323a7b733a31353a2263646174615f5f7072696f72697479223b623a313b733a31303a226c617374757064617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a313b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a33323a225072696f72697479202b204d6f737420526563656e746c792055706461746564223b733a373a22636f6c756d6e73223b733a33343a225b222d63646174615f5f7072696f72697479222c222d6c617374757064617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d693a323b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a313a7b733a31313a226573745f64756564617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a343b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a383a224475652044617465223b733a373a22636f6c756d6e73223b733a31363a225b222d6573745f64756564617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d71636f756e74737c613a313a7b733a34383a22636f756e74732e7175657565732e312e7068366751754778415039616175694c6d39384f4c7a6c74534b777a755a3843223b613a323a7b733a363a22636f756e7473223b613a393a7b733a333a22713232223b643a313b733a323a227131223b643a333b733a323a227132223b643a323b733a323a227133223b643a313b733a323a227134223b643a303b733a333a22713131223b643a303b733a323a227138223b643a323b733a333a22713132223b643a323b733a333a22713134223b643a323b7d733a343a2274696d65223b693a313637393338373939373b7d7d6c61737463726f6e63616c6c7c693a313637393338383031373b, '2023-03-22 02:42:01', '2023-03-21 02:42:06', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('28oimh8ejehjqr03qovr4n91g6', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2266333865626666363934373662383537336139333933663136643063333639303431356461313239223b733a343a2274696d65223b693a313637393338383537363b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f636c69656e747c613a313a7b733a343a2261757468223b613a313a7b733a343a2264657374223b733a32313a222f73797374706970726565652f6f70656e2e706870223b7d7d5f617574687c613a323a7b733a343a2275736572223b4e3b733a353a227374616666223b613a333a7b733a323a226964223b693a323b733a333a226b6579223b733a31373a226c6f63616c3a616e612e6261727265746f223b733a333a22326661223b4e3b7d7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a31373a222f73797374706970726565652f7363702f223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d3a746f6b656e7c613a313a7b733a353a227374616666223b733a37363a2231386435613066633662373665343830633338383633313863363162323039653a313637393338383537363a3833376563353735346635303363666161656530393239666434383937346537223b7d54494d455f424f4d427c693a313637393437343931383b3a3a513a547c693a313b736f72747c613a313a7b693a313b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a323a7b733a31353a2263646174615f5f7072696f72697479223b623a313b733a31303a226c617374757064617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a313b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a33323a225072696f72697479202b204d6f737420526563656e746c792055706461746564223b733a373a22636f6c756d6e73223b733a33343a225b222d63646174615f5f7072696f72697479222c222d6c617374757064617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d71636f756e74737c613a313a7b733a34383a22636f756e74732e7175657565732e322e7068366751754778415039616175694c6d39384f4c7a6c74534b777a755a3843223b613a323a7b733a363a22636f756e7473223b613a393a7b733a333a22713232223b643a313b733a323a227131223b643a333b733a323a227132223b643a323b733a323a227133223b643a313b733a323a227134223b643a303b733a333a22713131223b643a303b733a323a227138223b643a323b733a333a22713132223b643a323b733a333a22713134223b643a323b7d733a343a2274696d65223b693a313637393338383531303b7d7d6c61737463726f6e63616c6c7c693a313637393338383531303b, '2023-03-22 02:49:36', '2023-03-21 02:49:36', '2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('28oq48up0khblsndvqceuses9f', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2263313638623762363264326532383030663835313365373537303735663431396432363164306436223b733a343a2274696d65223b693a313637393337343138343b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d, '2023-03-21 22:38:50', '2023-03-20 22:49:45', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('2c9mqufmamnr66ndj0fkq6clqj', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2264626631643334316265613066366262363461383963306564336636393332363933316333383031223b733a343a2274696d65223b693a313637393338333230383b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b613a313a7b733a393a22417574685374617465223b733a303a22223b7d733a31313a226f61757468322e75736572223b4e3b7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a33303a222f73797374706970726565652f7363702f64617368626f6172642e706870223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d5f617574687c613a313a7b733a353a227374616666223b613a333a7b733a323a226964223b693a313b733a333a226b6579223b733a33303a226f61757468322e6167656e742e703169313a6a75616e2e62617272696f73223b733a333a22326661223b4e3b7d7d6578743a626b3a69647c733a31373a226f61757468322e6167656e742e70316931223b6578743a626b3a636c6173737c733a32323a224f41757468325374616666417574684261636b656e64223b3a746f6b656e7c613a313a7b733a353a227374616666223b733a37363a2234636162336437383338326364386466326165343839383331626339363237393a313637393338333139373a6635323837363464363234646231323962333263323166626361306362386436223b7d54494d455f424f4d427c693a313637393338333230383b3a3a513a547c693a313b736f72747c613a313a7b693a313b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a323a7b733a31353a2263646174615f5f7072696f72697479223b623a313b733a31303a226c617374757064617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a313b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a33323a225072696f72697479202b204d6f737420526563656e746c792055706461746564223b733a373a22636f6c756d6e73223b733a33343a225b222d63646174615f5f7072696f72697479222c222d6c617374757064617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d71636f756e74737c613a313a7b733a34383a22636f756e74732e7175657565732e312e7068366751754778415039616175694c6d39384f4c7a6c74534b777a755a3843223b613a323a7b733a363a22636f756e7473223b613a393a7b733a333a22713232223b643a313b733a323a227131223b643a333b733a323a227132223b643a323b733a323a227133223b643a313b733a323a227134223b643a303b733a333a22713131223b643a303b733a323a227138223b643a323b733a333a22713132223b643a323b733a333a22713134223b643a323b7d733a343a2274696d65223b693a313637393338333230373b7d7d6c61737463726f6e63616c6c7c693a313637393338333230373b5454447c693a313637393338343233313b, '2023-03-21 01:37:11', '2023-03-21 01:35:11', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('3um9vkmnvg4mstkaveet038121', 0x637372667c4e3b3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a31373a222f73797374706970726565652f7363702f223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d, '2023-03-22 00:23:05', '2023-03-21 00:23:05', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('54hu0bh8d593r2joucrufhgege', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2266333166366137323464643165623231323033383033616166303563393436333637623765636265223b733a343a2274696d65223b693a313637393337373135343b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d, '2023-03-21 23:18:23', '2023-03-20 23:39:14', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('5go1o4uahuc2qjmelvjlh161bo', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2232323666306265366332373130343364336635346638646461653861323562376263373834396561223b733a343a2274696d65223b693a313637393336343837353b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d, '2023-03-21 20:14:35', '2023-03-20 20:14:35', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('68fi5r8ddt3sa709sjso2gcbo4', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2234323434336439313464633838313036626234383533323363663766366330316162353363376132223b733a343a2274696d65223b693a313637393338363639373b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d, '2023-03-22 02:18:16', '2023-03-21 02:18:18', '0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('86mb1r0bqlkr7q6q196lhpst2f', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2264343335646530636231303064386530333638353533373235326534666361333530316163643532223b733a343a2274696d65223b693a313637393337393734393b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f617574687c613a313a7b733a353a227374616666223b4e3b7d, '2023-03-22 00:22:29', '2023-03-21 00:22:29', '0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('chi0al9jdvbptpel6k4rte8t50', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2264393264396662333434363532316231663261653031316539663937663338373866356635653534223b733a343a2274696d65223b693a313637393337383032323b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d, '2023-03-21 23:53:39', '2023-03-20 23:53:42', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('iuac6hjfpjht52qs19auhm4n8r', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2231303562303233393836643038346536373765636332666663393138653037613133363839343132223b733a343a2274696d65223b693a313637393337393738363b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f617574687c613a313a7b733a353a227374616666223b4e3b7d, '2023-03-22 00:23:06', '2023-03-21 00:23:06', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('jbg38lci1eiflrq7ch3cit731h', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2235613363303164666532313337353534353266386561613631343337393936386339623438616338223b733a343a2274696d65223b693a313637393336303331313b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d, '2023-03-21 18:46:59', '2023-03-20 18:58:32', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('jlfdcb0l4edj7tf0bhmqfattno', 0x637372667c4e3b3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a33343a222f73797374706970726565652f7363702f7469636b6574732e7068703f69643d3238223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d, '2023-03-22 02:40:28', '2023-03-21 02:40:28', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('kqn24j19cj76dhffkvamo97pd8', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2239396365663030346662626361376433633634323237386663386334633637376163353862336264223b733a343a2274696d65223b693a313637393335393537313b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d, '2023-03-21 18:46:16', '2023-03-20 18:46:16', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('mjc7bcva2kl9llutr2n6ovqelj', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2238333730623263623136333361366533373830393231396434383432376536323161356436303133223b733a343a2274696d65223b693a313637393337313238363b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d, '2023-03-21 22:01:25', '2023-03-20 22:01:26', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('moafc3rdmp6e97p7qp8rrc3hk0', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2231663763643135393162353135626133343932343635333830383562343531386231643338636433223b733a343a2274696d65223b693a313637393338363631313b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f617574687c613a313a7b733a343a2275736572223b4e3b7d, '2023-03-22 02:16:23', '2023-03-21 02:16:51', '0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('ne21m3k66jk46e5c01nmlb2lqi', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2266333865626666363934373662383537336139333933663136643063333639303431356461313239223b733a343a2274696d65223b693a313637393338383531333b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f636c69656e747c613a313a7b733a343a2261757468223b613a313a7b733a343a2264657374223b733a32313a222f73797374706970726565652f6f70656e2e706870223b7d7d5f617574687c613a323a7b733a343a2275736572223b4e3b733a353a227374616666223b613a333a7b733a323a226964223b693a323b733a333a226b6579223b733a31373a226c6f63616c3a616e612e6261727265746f223b733a333a22326661223b4e3b7d7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a31373a222f73797374706970726565652f7363702f223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d3a746f6b656e7c613a313a7b733a353a227374616666223b733a37363a2236326163616235313365366461386362643164626234316134663138313032373a313637393338383530353a3833376563353735346635303363666161656530393239666434383937346537223b7d54494d455f424f4d427c693a313637393338383531353b3a3a513a547c693a313b736f72747c613a313a7b693a313b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a323a7b733a31353a2263646174615f5f7072696f72697479223b623a313b733a31303a226c617374757064617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a313b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a33323a225072696f72697479202b204d6f737420526563656e746c792055706461746564223b733a373a22636f6c756d6e73223b733a33343a225b222d63646174615f5f7072696f72697479222c222d6c617374757064617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d71636f756e74737c613a313a7b733a34383a22636f756e74732e7175657565732e322e7068366751754778415039616175694c6d39384f4c7a6c74534b777a755a3843223b613a323a7b733a363a22636f756e7473223b613a393a7b733a333a22713232223b643a313b733a323a227131223b643a333b733a323a227132223b643a323b733a323a227133223b643a313b733a323a227134223b643a303b733a333a22713131223b643a303b733a323a227138223b643a323b733a333a22713132223b643a323b733a333a22713134223b643a323b7d733a343a2274696d65223b693a313637393338383531303b7d7d6c61737463726f6e63616c6c7c693a313637393338383531303b5454447c693a313637393338383633383b, '2023-03-21 02:50:38', '2023-03-21 02:48:38', '2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('oehuhalfome6dj75sbsp9ec6f7', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2238336461616265393666356264663862303630383231356134386266353264386538663130616431223b733a343a2274696d65223b693a313637393337393235333b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b613a313a7b733a393a22417574685374617465223b733a303a22223b7d733a31313a226f61757468322e75736572223b4e3b7d5f617574687c613a313a7b733a353a227374616666223b613a333a7b733a323a226964223b693a313b733a333a226b6579223b733a31383a226c6f63616c3a6a75616e2e62617272696f73223b733a333a22326661223b4e3b7d7d6578743a626b3a69647c733a31373a226f61757468322e6167656e742e70316931223b6578743a626b3a636c6173737c733a32323a224f41757468325374616666417574684261636b656e64223b5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a31373a222f73797374706970726565652f7363702f223b733a333a226d7367223b733a37323a224861766520796f75722061646d696e6973747261746f72206372656174652061206c6f63616c206163636f756e7420286a6362617272696f733532323240676d61696c2e636f6d29223b7d7d3a746f6b656e7c613a313a7b733a353a227374616666223b733a37363a2265363033653030313564356635633464633936343033343033353664313066303a313637393337393234393a3833376563353735346635303363666161656530393239666434383937346537223b7d54494d455f424f4d427c693a313637393337393235393b3a3a513a547c693a313b736f72747c613a313a7b693a313b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a323a7b733a31353a2263646174615f5f7072696f72697479223b623a313b733a31303a226c617374757064617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a313b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a33323a225072696f72697479202b204d6f737420526563656e746c792055706461746564223b733a373a22636f6c756d6e73223b733a33343a225b222d63646174615f5f7072696f72697479222c222d6c617374757064617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d71636f756e74737c613a313a7b733a34383a22636f756e74732e7175657565732e312e7068366751754778415039616175694c6d39384f4c7a6c74534b777a755a3843223b613a323a7b733a363a22636f756e7473223b613a393a7b733a333a22713232223b643a313b733a323a227131223b643a333b733a323a227132223b643a323b733a323a227133223b643a313b733a323a227134223b643a303b733a333a22713131223b643a303b733a323a227138223b643a323b733a333a22713132223b643a323b733a333a22713134223b643a323b7d733a343a2274696d65223b693a313637393337393235313b7d7d6c61737463726f6e63616c6c7c693a313637393337393235333b5454447c693a313637393337393836373b, '2023-03-21 00:24:27', '2023-03-21 00:22:27', '1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('r482oai7qo6gprevcdai9c7ttv', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2261666461666135336233626236663134623631373632346232633836623962333736303434643833223b733a343a2274696d65223b693a313637393335393937383b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a33373a222f73797374706970726565652f7363702f68656c70746f706963732e7068703f69643d3133223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d5f617574687c613a313a7b733a353a227374616666223b4e3b7d, '2023-03-21 18:52:57', '2023-03-20 18:52:58', '0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36'),
('sldetbklub9p87j2gihabmmfjv', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2263613362633239656665643662663863303137336634646637646438653965613931306564333630223b733a343a2274696d65223b693a313637393337303937313b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d, '2023-03-21 21:36:01', '2023-03-20 21:56:12', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('stiafnhnruu5fq9461i6fem1pj', 0x637372667c613a323a7b733a353a22746f6b656e223b733a34303a2230313739613465303263343166313436306138653565656330653361346435333430373062303233223b733a343a2274696d65223b693a313637393337393737363b7d3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b613a313a7b733a393a22417574685374617465223b733a303a22223b7d733a31313a226f61757468322e75736572223b4e3b7d5f73746166667c613a313a7b733a343a2261757468223b613a323a7b733a343a2264657374223b733a31373a222f73797374706970726565652f7363702f223b733a333a226d7367223b733a32343a22417574656e746963616369c3b36e20526571756572696461223b7d7d5f617574687c613a313a7b733a353a227374616666223b613a333a7b733a323a226964223b693a313b733a333a226b6579223b733a33303a226f61757468322e6167656e742e703169313a6a75616e2e62617272696f73223b733a333a22326661223b4e3b7d7d6578743a626b3a69647c733a31373a226f61757468322e6167656e742e70316931223b6578743a626b3a636c6173737c733a32323a224f41757468325374616666417574684261636b656e64223b3a746f6b656e7c613a313a7b733a353a227374616666223b733a37363a2266323038383563346466303932313536343365336131393661623562356238343a313637393337393737303a6635323837363464363234646231323962333263323166626361306362386436223b7d54494d455f424f4d427c693a313637393337393738313b3a3a513a547c693a313b736f72747c613a313a7b693a313b613a323a7b733a393a227175657565736f7274223b4f3a393a225175657565536f7274223a373a7b733a383a225f636f6c756d6e73223b613a323a7b733a31353a2263646174615f5f7072696f72697479223b623a313b733a31303a226c617374757064617465223b623a313b7d733a363a225f6578747261223b4e3b733a323a226874223b613a353a7b733a323a226964223b693a313b733a343a22726f6f74223b4e3b733a343a226e616d65223b733a33323a225072696f72697479202b204d6f737420526563656e746c792055706461746564223b733a373a22636f6c756d6e73223b733a33343a225b222d63646174615f5f7072696f72697479222c222d6c617374757064617465225d223b733a373a2275706461746564223b733a31393a22323032332d30332d30382031323a31343a3131223b7d733a353a226469727479223b613a303a7b7d733a373a225f5f6e65775f5f223b623a303b733a31313a225f5f64656c657465645f5f223b623a303b733a31323a225f5f64656665727265645f5f223b613a303a7b7d7d733a333a22646972223b693a303b7d7d6366673a636f72657c613a313a7b733a31313a2264625f74696d657a6f6e65223b733a31393a22416d65726963612f4d657869636f5f43697479223b7d71636f756e74737c613a313a7b733a34383a22636f756e74732e7175657565732e312e7068366751754778415039616175694c6d39384f4c7a6c74534b777a755a3843223b613a323a7b733a363a22636f756e7473223b613a393a7b733a333a22713232223b643a313b733a323a227131223b643a333b733a323a227132223b643a323b733a323a227133223b643a313b733a323a227134223b643a303b733a333a22713131223b643a303b733a323a227138223b643a323b733a333a22713132223b643a323b733a333a22713134223b643a323b7d733a343a2274696d65223b693a313637393337393737323b7d7d6c61737463726f6e63616c6c7c693a313637393337393737333b, '2023-03-22 00:22:40', '2023-03-21 00:22:56', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0'),
('to101f2thenp631oa2agba9p1k', 0x637372667c4e3b3a6f617574687c613a323a7b733a31323a226f61757468322e6167656e74223b4e3b733a31313a226f61757468322e75736572223b4e3b7d, '2023-03-22 00:53:10', '2023-03-21 00:53:10', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_sla`
--

CREATE TABLE `rcl_sla` (
  `id` int(11) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `grace_period` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_sla`
--

INSERT INTO `rcl_sla` (`id`, `schedule_id`, `flags`, `grace_period`, `name`, `notes`, `created`, `updated`) VALUES
(1, 3, 1, 24, 'SLA PIP-Reclutamiento', NULL, '2023-03-08 12:13:54', '2023-03-08 12:52:46'),
(2, 5, 1, 24, 'SLA-TG', NULL, '2023-03-08 13:00:15', '2023-03-08 13:00:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_staff`
--

CREATE TABLE `rcl_staff` (
  `staff_id` int(11) UNSIGNED NOT NULL,
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(32) NOT NULL DEFAULT '',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `backend` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(24) NOT NULL DEFAULT '',
  `phone_ext` varchar(6) DEFAULT NULL,
  `mobile` varchar(24) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `lang` varchar(16) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `locale` varchar(16) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0,
  `isvisible` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `onvacation` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `assigned_only` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `show_assigned_tickets` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `change_passwd` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `max_page_size` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `auto_refresh_rate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default_signature_type` enum('none','mine','dept') NOT NULL DEFAULT 'none',
  `default_paper_size` enum('Letter','Legal','Ledger','A4','A3') NOT NULL DEFAULT 'Letter',
  `extra` text DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `passwdreset` datetime DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_staff`
--

INSERT INTO `rcl_staff` (`staff_id`, `dept_id`, `role_id`, `username`, `firstname`, `lastname`, `passwd`, `backend`, `email`, `phone`, `phone_ext`, `mobile`, `signature`, `lang`, `timezone`, `locale`, `notes`, `isactive`, `isadmin`, `isvisible`, `onvacation`, `assigned_only`, `show_assigned_tickets`, `change_passwd`, `max_page_size`, `auto_refresh_rate`, `default_signature_type`, `default_paper_size`, `extra`, `permissions`, `created`, `lastlogin`, `passwdreset`, `updated`) VALUES
(1, 1, 1, 'juan.barrios', 'Juan', 'Barrios', '$2a$08$f9sBwUPFCWeXo8NgwmdGE.dCVLPREiQZsRWPGGDQ9GcoHGInRXbsC', NULL, 'juan.barrios@it-strategy.mx', '', NULL, '', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'none', 'Letter', '{\"browser_lang\":\"es_MX\",\"def_assn_role\":true,\"avatar\":\"1wftsMw0QYSDASsYuFoAE\"}', '{\"user.create\":1,\"user.delete\":1,\"user.edit\":1,\"user.manage\":1,\"user.dir\":1,\"org.create\":1,\"org.delete\":1,\"org.edit\":1,\"faq.manage\":1,\"visibility.agents\":1,\"emails.banlist\":1,\"visibility.departments\":1}', '2023-03-08 12:14:34', '2023-03-21 01:19:58', '2023-03-08 12:14:34', '2023-03-21 01:19:58'),
(2, 1, 4, 'ana.barreto', 'Karen', 'Barreto', '$2a$08$jlhMexIvgfDgu6OKPtx7DOXTEaCyrnUWTXcHUuYTuH/ctWbRoBexG', NULL, 'ana.barreto@it-strategy.mx', '', NULL, '(555) 415-8985', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'none', 'Letter', '{\"def_assn_role\":false,\"browser_lang\":\"es_MX\"}', '{\"user.create\":1,\"user.delete\":1,\"user.edit\":1,\"user.manage\":1,\"user.dir\":1,\"org.create\":1,\"org.delete\":1,\"org.edit\":1,\"faq.manage\":1,\"visibility.agents\":1,\"emails.banlist\":1,\"visibility.departments\":1,\"search.all\":1,\"stats.agents\":1}', '2023-03-08 12:36:48', '2023-03-21 02:48:25', '2023-03-08 12:36:48', '2023-03-21 02:48:25'),
(3, 4, 1, 'axell.sosa', 'Axell', 'Sosa', '$2a$08$VhJ8/tEV1yw6qUsbaOvuXO.o/Uv/sHuntzby7heVZKUxt5AYHN2g.', NULL, 'axell.sosa@it-strategy.mx', '', NULL, '(551) 814-7476', '', NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'none', 'Letter', '{\"def_assn_role\":true,\"browser_lang\":\"es_MX\"}', '{\"user.create\":1,\"user.delete\":1,\"user.edit\":1,\"user.manage\":1,\"user.dir\":1,\"org.create\":1,\"org.delete\":1,\"org.edit\":1,\"faq.manage\":1,\"visibility.agents\":1,\"emails.banlist\":1,\"visibility.departments\":1,\"search.all\":1,\"stats.agents\":1}', '2023-03-08 12:38:19', '2023-03-08 22:05:18', '2023-03-08 12:38:19', '2023-03-09 00:41:51'),
(4, 4, 1, 'anallely.linaco', 'Anallely', 'Linaco', '$2a$08$KSYMfyDDzp5H9cb/4S2g1OQc1LZX0kSyj/ISJffN4OT/le6V0ps5y', NULL, 'anallely.linaco@talent-group.mx', '', NULL, '(556) 111-6752', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'none', 'Letter', '{\"def_assn_role\":true,\"browser_lang\":\"es_MX\"}', '{\"user.create\":1,\"user.edit\":1,\"user.dir\":1,\"org.create\":1,\"org.edit\":1,\"faq.manage\":1,\"visibility.agents\":1,\"visibility.departments\":1}', '2023-03-08 13:07:41', '2023-03-17 08:05:55', '2023-03-17 08:05:37', '2023-03-17 08:05:55'),
(5, 4, 1, 'griselda.lopez', 'Griselda', 'López', '$2a$08$D3HIHbMgPnnzK7khYRMKe.oQs70X322DgTo317Gd0T9jGT1otmo7i', NULL, 'griselda.lopez@talent-group.mx', '', NULL, '(556) 122-1812', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'none', 'Letter', '{\"def_assn_role\":true}', '{\"user.create\":1,\"user.edit\":1,\"user.dir\":1,\"org.create\":1,\"org.edit\":1,\"faq.manage\":1}', '2023-03-08 13:11:49', NULL, '2023-03-14 19:57:22', '2023-03-14 19:57:22'),
(6, 4, 1, 'joaquin.aguilera', 'Joaquín', 'Aguilera', '$2a$08$Z7V831ucboJ2KaRqX2CrMuWcwYKcKMuM4teiITI7B15RBbJENYlm.', NULL, 'joaquin.aguilera@it-strategy.mx', '', NULL, '(552) 265-9137', '', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'none', 'Letter', '{\"def_assn_role\":true,\"browser_lang\":\"es_MX\"}', '{\"user.create\":1,\"user.delete\":1,\"user.edit\":1,\"user.manage\":1,\"user.dir\":1,\"org.create\":1,\"org.delete\":1,\"org.edit\":1,\"faq.manage\":1,\"visibility.agents\":1,\"visibility.departments\":1,\"emails.banlist\":1,\"search.all\":1,\"stats.agents\":1}', '2023-03-08 13:14:03', '2023-03-16 14:12:29', '2023-03-16 03:02:20', '2023-03-16 14:12:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_staff_dept_access`
--

CREATE TABLE `rcl_staff_dept_access` (
  `staff_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_staff_dept_access`
--

INSERT INTO `rcl_staff_dept_access` (`staff_id`, `dept_id`, `role_id`, `flags`) VALUES
(1, 4, 1, 1),
(2, 4, 1, 0),
(3, 1, 1, 0),
(4, 1, 2, 1),
(5, 1, 2, 0),
(6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_syslog`
--

CREATE TABLE `rcl_syslog` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `log_type` enum('Debug','Warning','Error') NOT NULL,
  `title` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `logger` varchar(64) NOT NULL,
  `ip_address` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_syslog`
--

INSERT INTO `rcl_syslog` (`log_id`, `log_type`, `title`, `log`, `logger`, `ip_address`, `created`, `updated`) VALUES
(1, 'Debug', 'osTicket installed!', '¡Felicitaciones, la instalación básica de osTicket fue completada! \n\n¡Gracias por elegir osTicket!', '', '127.0.0.1', '2023-03-08 12:14:43', '2023-03-08 12:14:43'),
(2, 'Error', 'DB Error #1054', '[SELECT A1.* FROM `rcl_sla` A1 ORDER BY A1.`isactive` DESC LIMIT 25] Unknown column \'A1.isactive\' in \'order clause\'<br /> <br /> ---- Backtrace ----<br /> #0 C:\\xampp\\htdocs\\systpipreee\\include\\mysqli.php(207): osTicket-&gt;logDBError(\'DB Error #1054\', \'[SELECT A1.* FR...\')<br /> #1 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(3482): db_query(\'SELECT A1.* FRO...\', true, true)<br /> #2 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(3529): MySqlExecutor-&gt;execute()<br /> #3 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2010): MySqlExecutor-&gt;getArray()<br /> #4 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2054): ModelInstanceManager-&gt;{closure}()<br /> #5 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2033): CallbackSimpleIterator-&gt;next()<br /> #6 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2042): CallbackSimpleIterator-&gt;rewind()<br /> #7 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(1713): CallbackSimpleIterator-&gt;valid()<br /> #8 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(1723): CachedResultSet-&gt;fillTo(9223372036854775807)<br /> #9 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(1739): CachedResultSet-&gt;asArray()<br /> #10 C:\\xampp\\htdocs\\systpipreee\\include\\staff\\slaplans.inc.php(107): CachedResultSet-&gt;getIterator()<br /> #11 C:\\xampp\\htdocs\\systpipreee\\scp\\slas.php(139): require(\'C:\\\\xampp\\\\htdocs...\')<br /> #12 {main}', '', '127.0.0.1', '2023-03-08 12:40:05', '2023-03-08 12:40:05'),
(3, 'Error', 'Error de Mailer', 'Unable to email via Sendmail Unable to send mail: mail(): Failed to connect to mailserver at \"localhost\" port 25, verify your \"SMTP\" and \"smtp_port\" setting in php.ini or use ini_set() ', '', '127.0.0.1', '2023-03-08 12:40:11', '2023-03-08 12:40:11'),
(4, 'Warning', 'Restablecimiento de contraseña de agente', 'Intento de restablecimiento de contraseña por el agente: Karen Barreto<br /><br /> requerido-Usuario-Id: <br /> fuente-Ip: 127.0.0.1<br /> correo electrónico enviado a: ana.barreto@it-strategy.mx<br /> correo email enviado Via: alerts@gmail.com', '', '127.0.0.1', '2023-03-08 13:00:52', '2023-03-08 13:00:52'),
(5, 'Error', 'Error de Mailer', 'Unable to email via Sendmail Unable to send mail: mail(): Failed to connect to mailserver at \"localhost\" port 25, verify your \"SMTP\" and \"smtp_port\" setting in php.ini or use ini_set() ', '', '127.0.0.1', '2023-03-08 13:00:56', '2023-03-08 13:00:56'),
(6, 'Error', 'Error de Mailer', 'Unable to email via Sendmail Unable to send mail: mail(): Failed to connect to mailserver at \"localhost\" port 25, verify your \"SMTP\" and \"smtp_port\" setting in php.ini or use ini_set() ', '', '127.0.0.1', '2023-03-08 13:15:59', '2023-03-08 13:15:59'),
(7, 'Warning', 'Restablecimiento de contraseña de agente', 'Intento de restablecimiento de contraseña por el agente: Karen Barreto<br /><br /> requerido-Usuario-Id: <br /> fuente-Ip: 127.0.0.1<br /> correo electrónico enviado a: ana.barreto@it-strategy.mx<br /> correo email enviado Via: soportereclu@gmail.com', '', '127.0.0.1', '2023-03-08 13:19:15', '2023-03-08 13:19:15'),
(8, 'Warning', 'Audit Log Installation: Add Events', 'Event \'login\' already exists.', '', '127.0.0.1', '2023-03-08 13:19:34', '2023-03-08 13:19:34'),
(9, 'Warning', 'Audit Log Installation: Add Events', 'Event \'logout\' already exists.', '', '127.0.0.1', '2023-03-08 13:19:34', '2023-03-08 13:19:34'),
(10, 'Warning', 'Audit Log Installation: Add Events', 'Event \'message\' already exists.', '', '127.0.0.1', '2023-03-08 13:19:34', '2023-03-08 13:19:34'),
(11, 'Warning', 'Audit Log Installation: Add Events', 'Event \'note\' already exists.', '', '127.0.0.1', '2023-03-08 13:19:34', '2023-03-08 13:19:34'),
(12, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [024441fc467e84f6dbcdb10845a3a750ea6be497] en http://localhost/systpipreee/open.php', '', '127.0.0.1', '2023-03-09 03:28:55', '2023-03-09 03:28:55'),
(13, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [54f49399212b952b03af7da4f92dd5751b618211] en http://localhost/systpipreee/scp/login.php', '', '::1', '2023-03-11 17:27:59', '2023-03-11 17:27:59'),
(14, 'Error', 'DB Error #1054', '[SELECT A1.`id`, A1.`isactive`, A1.`type`, A1.`name`, A1.`body`, A1.`notes`, A1.`created`, A1.`updated`, COUNT(A2.`page_id`) AS `topics` FROM `rcl_content` A1 LEFT JOIN `rcl_help_topic` A2 ON (A1.`id` = A2.`page_id`) WHERE A1.`type` IN (\'other\', \'landing\', \'thank-you\', \'offline\') GROUP BY A1.id ORDER BY A1.`` DESC] Unknown column \'A1.\' in \'order clause\'<br /> <br /> ---- Backtrace ----<br /> #0 C:\\xampp\\htdocs\\systpipreee\\include\\mysqli.php(207): osTicket-&gt;logDBError(\'DB Error #1054\', \'[SELECT A1.`id`...\')<br /> #1 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(3482): db_query(\'SELECT A1.`id`,...\', true, true)<br /> #2 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(3529): MySqlExecutor-&gt;execute()<br /> #3 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2010): MySqlExecutor-&gt;getArray()<br /> #4 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2054): ModelInstanceManager-&gt;{closure}()<br /> #5 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2033): CallbackSimpleIterator-&gt;next()<br /> #6 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(2042): CallbackSimpleIterator-&gt;rewind()<br /> #7 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(1713): CallbackSimpleIterator-&gt;valid()<br /> #8 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(1723): CachedResultSet-&gt;fillTo(9223372036854775807)<br /> #9 C:\\xampp\\htdocs\\systpipreee\\include\\class.orm.php(1739): CachedResultSet-&gt;asArray()<br /> #10 C:\\xampp\\htdocs\\systpipreee\\include\\staff\\pages.inc.php(98): CachedResultSet-&gt;getIterator()<br /> #11 C:\\xampp\\htdocs\\systpipreee\\scp\\pages.php(134): require_once(\'C:\\\\xampp\\\\htdocs...\')<br /> #12 {main}', '', '::1', '2023-03-12 06:55:25', '2023-03-12 06:55:25'),
(15, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [efd515203fefb62000d4a171fc24c16daa91cd20] en http://localhost/systpipreee/scp/login.php', '', '::1', '2023-03-13 09:08:41', '2023-03-13 09:08:41'),
(16, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [a9bffc41cc12324924e920eff8e75fc5799b2694] en http://localhost/systpipreee/scp/login.php', '', '127.0.0.1', '2023-03-15 20:39:11', '2023-03-15 20:39:11'),
(17, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [1178f5ec3d55d884e072e631e3623d1270ddfe4d] en http://localhost/systpipreee/login.php', '', '127.0.0.1', '2023-03-15 23:07:48', '2023-03-15 23:07:48'),
(18, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [365e8cdd849a8a1b51877ff6f792078e567b1a39] en http://localhost/systpipreee/scp/login.php', '', '::1', '2023-03-16 01:49:20', '2023-03-16 01:49:20'),
(19, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [64a6ece865b2c1a49bfe825bb306aebd697ed036] en http://localhost/systpipreee/login.php', '', '::1', '2023-03-16 10:24:07', '2023-03-16 10:24:07'),
(20, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [89946e8d2d5876d93d3f1056a9eb6851c85daa69] en http://localhost/systpipreee/login.php', '', '127.0.0.1', '2023-03-16 13:15:54', '2023-03-16 13:15:54'),
(21, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [b94a54946c4ace97813a81115210e53f01961bf0] en http://localhost/systpipreee/login.php', '', '127.0.0.1', '2023-03-16 19:08:51', '2023-03-16 19:08:51'),
(22, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [8f4a71e3d6122d626a95104afb0bc0570d70035d] en http://localhost/systpipreee/login.php', '', '::1', '2023-03-17 05:13:03', '2023-03-17 05:13:03'),
(23, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [22631b8f6b343722b6a6438845176e7e3d1a861e] en http://localhost/systpipreee/tickets.php?id=27', '', '::1', '2023-03-17 08:08:02', '2023-03-17 08:08:02'),
(24, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [22631b8f6b343722b6a6438845176e7e3d1a861e] en http://localhost/systpipreee/pwreset.php', '', '::1', '2023-03-17 08:51:29', '2023-03-17 08:51:29'),
(25, 'Warning', 'Token CSRF inválido __CSRFToken__', 'Token CSRF invalido [35dc6c7dca35ac2abf5e49cf5c770dddffe102e3] en http://localhost/systpipreee/login.php', '', '::1', '2023-03-17 08:59:17', '2023-03-17 08:59:17'),
(26, 'Warning', 'Intento fallido de inicio de sesión (usuario)', 'Nombre de usuario: jbcalbillo@hotmaI.com IP: 127.0.0.1 Tiempo: Mar 19, 2023, 5:12 am UTC Intentos: 3', '', '127.0.0.1', '2023-03-18 23:12:07', '2023-03-18 23:12:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_task`
--

CREATE TABLE `rcl_task` (
  `id` int(11) UNSIGNED NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT 0,
  `object_type` char(1) NOT NULL,
  `number` varchar(20) DEFAULT NULL,
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `staff_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `team_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lock_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `duedate` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_task__cdata`
--

CREATE TABLE `rcl_task__cdata` (
  `task_id` int(11) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_team`
--

CREATE TABLE `rcl_team` (
  `team_id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(125) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_team`
--

INSERT INTO `rcl_team` (`team_id`, `lead_id`, `flags`, `name`, `notes`, `created`, `updated`) VALUES
(1, 1, 1, 'PIP-Reclutamiento', '<p>Tier 1 support, responsible for the initial iteraction with customers</p>', '2023-03-08 12:14:07', '2023-03-08 13:10:13'),
(2, 0, 1, 'Talent Group', NULL, '2023-03-08 13:07:30', '2023-03-08 13:07:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_team_member`
--

CREATE TABLE `rcl_team_member` (
  `team_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_team_member`
--

INSERT INTO `rcl_team_member` (`team_id`, `staff_id`, `flags`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 0),
(1, 6, 1),
(2, 4, 1),
(2, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread`
--

CREATE TABLE `rcl_thread` (
  `id` int(11) UNSIGNED NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `object_type` char(1) NOT NULL,
  `extra` text DEFAULT NULL,
  `lastresponse` datetime DEFAULT NULL,
  `lastmessage` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_thread`
--

INSERT INTO `rcl_thread` (`id`, `object_id`, `object_type`, `extra`, `lastresponse`, `lastmessage`, `created`) VALUES
(23, 23, 'T', NULL, '2023-03-16 01:59:47', '2023-03-16 00:12:49', '2023-03-15 23:16:48'),
(25, 25, 'T', NULL, '2023-03-17 02:55:53', '2023-03-17 02:53:04', '2023-03-17 01:51:37'),
(26, 26, 'T', NULL, NULL, '2023-03-17 02:49:17', '2023-03-17 02:49:14'),
(27, 27, 'T', NULL, '2023-03-17 08:11:31', '2023-03-17 07:53:54', '2023-03-17 06:38:08'),
(28, 28, 'T', NULL, NULL, '2023-03-19 01:10:17', '2023-03-19 01:10:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread_collaborator`
--

CREATE TABLE `rcl_thread_collaborator` (
  `id` int(11) UNSIGNED NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `thread_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `role` char(1) NOT NULL DEFAULT 'M',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_thread_collaborator`
--

INSERT INTO `rcl_thread_collaborator` (`id`, `flags`, `thread_id`, `user_id`, `role`, `created`, `updated`) VALUES
(1, 3, 27, 65, 'M', '2023-03-17 08:10:31', '2023-03-17 08:10:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread_entry`
--

CREATE TABLE `rcl_thread_entry` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `thread_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `staff_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` char(1) NOT NULL DEFAULT '',
  `flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `poster` varchar(128) NOT NULL DEFAULT '',
  `editor` int(10) UNSIGNED DEFAULT NULL,
  `editor_type` char(1) DEFAULT NULL,
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `format` varchar(16) NOT NULL DEFAULT 'html',
  `ip_address` varchar(64) NOT NULL DEFAULT '',
  `extra` text DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_thread_entry`
--

INSERT INTO `rcl_thread_entry` (`id`, `pid`, `thread_id`, `staff_id`, `user_id`, `type`, `flags`, `poster`, `editor`, `editor_type`, `source`, `title`, `body`, `format`, `ip_address`, `extra`, `recipients`, `created`, `updated`) VALUES
(19, 0, 23, 0, 65, 'M', 64, 'Ana Karen Barreto', NULL, NULL, '', NULL, '<p>dfgdfghdfghdfhdghfhdfghgdfhdfghdfgh</p>', 'html', '127.0.0.1', NULL, NULL, '2023-03-16 00:04:54', '0000-00-00 00:00:00'),
(20, 0, 23, 0, 65, 'M', 64, 'Ana Karen Barreto', NULL, NULL, '', NULL, '<p>dfgdfghdfghdfhdghfhdfghgdfhdfghdfgh</p>', 'html', '127.0.0.1', NULL, NULL, '2023-03-16 00:11:40', '0000-00-00 00:00:00'),
(21, 0, 23, 0, 65, 'M', 64, 'Ana Karen Barreto', NULL, NULL, '', NULL, '<p>dfgdfghdfghdfhdghfhdfghgdfhdfghdfgh</p>', 'html', '127.0.0.1', NULL, NULL, '2023-03-16 00:12:49', '0000-00-00 00:00:00'),
(22, 21, 23, 1, 0, 'R', 576, 'Juan Barrios', NULL, NULL, '', NULL, '<p>dfgffdgdfgdfgdfgfg</p>', 'html', '::1', NULL, '{\"to\":{\"65\":\"Ana Karen Barreto <ana.barreto@it-strategy.mx>\"}}', '2023-03-16 00:30:46', '0000-00-00 00:00:00'),
(23, 21, 23, 1, 0, 'R', 576, 'Juan Barrios', NULL, NULL, '', NULL, '<p>dfdfds</p>', 'html', '::1', NULL, '{\"to\":{\"65\":\"Ana Karen Barreto <ana.barreto@it-strategy.mx>\"}}', '2023-03-16 01:59:47', '0000-00-00 00:00:00'),
(26, 0, 25, 0, 67, 'M', 65, 'Juan Carlos Barrios Calbillo', NULL, NULL, '', NULL, '<p>El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada.</p>', 'html', '::1', NULL, NULL, '2023-03-17 01:51:45', '0000-00-00 00:00:00'),
(27, 26, 25, 1, 0, 'R', 576, 'Juan Barrios', NULL, NULL, '', NULL, '<p><br /></p><blockquote><p>El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada.</p></blockquote> <p><br />Buenas tardes (usuario).</p> <p>El equipo de desarrollo ya está en proceso del cambio del estatus del candidato, en cuanto nos notifiquen te lo haremos saber a la brevedad posible.</p> <p>Saludos cordiales.</p>', 'html', '::1', NULL, '{\"to\":{\"67\":\"Juan Carlos Barrios Calbillo <juan.barrios@it-strategy.mx>\"}}', '2023-03-17 02:10:31', '0000-00-00 00:00:00'),
(28, 0, 26, 0, 67, 'M', 65, 'Juan Carlos Barrios Calbillo', NULL, NULL, '', NULL, '<p>Al dar de alta a un candidato desde la plataforma, la información de Ricardo Hernandez Garcia, como datos personales, calle y número, cv, experiencia laboral y formación, se guarda desde la plataforma pero al irme a MI reclu, para subir su foto ya no me aparece la incluso el % de avance me dice que es del 33% lo que tengo que volver a llenar estos campos en MI reclu para que aparezcan completos en la plataforma</p>', 'html', '::1', NULL, NULL, '2023-03-17 02:49:17', '0000-00-00 00:00:00'),
(29, 0, 25, 0, 67, 'M', 64, 'Juan Carlos Barrios Calbillo', NULL, NULL, '', NULL, '<p>Hola buenos dias Axell:<br />Revisado en la plataforma el candidato ya se encuentra con el Estatus correcto, mil gracias por tu apoyo:</p><figure><img src=\"cid:x5ku2gnp-b6adnucseoqyioqkzybmc5y\" data-image=\"X5KU2GnP-b6AdNUCsEoQyioQKzYBMc5Y\" alt=\"image\" /></figure> <p>Por lo que podemos proceder al cierre de este soporte.SALUDOS!!</p>', 'html', '::1', NULL, NULL, '2023-03-17 02:50:33', '0000-00-00 00:00:00'),
(30, 29, 25, 1, 0, 'R', 576, 'Juan Barrios', NULL, NULL, '', NULL, '<p>Buenos días usuario.</p> <p>Gracias por la retro, se procede al cierre del ticket.<br />Saludos cordiales.</p>', 'html', '::1', NULL, '{\"to\":{\"67\":\"Juan Carlos Barrios Calbillo <juan.barrios@it-strategy.mx>\"}}', '2023-03-17 02:52:39', '0000-00-00 00:00:00'),
(31, 0, 25, 0, 67, 'M', 64, 'Juan Carlos Barrios Calbillo', NULL, NULL, '', NULL, '<p>Hola buenos dias Axell:<br />Revisado en la plataforma el candidato ya se encuentra con el Estatus correcto, mil gracias por tu apoyo:</p><figure><img src=\"cid:x5ku2gnp-b6adnucseoqyioqkzybmc5y\" data-image=\"X5KU2GnP-b6AdNUCsEoQyioQKzYBMc5Y\" alt=\"image\" /></figure> <p>Por lo que podemos proceder al cierre de este soporte.SALUDOS!!</p>', 'html', '::1', NULL, NULL, '2023-03-17 02:53:03', '0000-00-00 00:00:00'),
(32, 31, 25, 1, 0, 'R', 576, 'Juan Barrios', NULL, NULL, '', NULL, '<p>Buenos días usuario.</p> <p>Gracias por la retro, se procede al cierre del ticket.<br />Saludos cordiales.</p>', 'html', '::1', NULL, '{\"to\":{\"67\":\"Juan Carlos Barrios Calbillo <juan.barrios@it-strategy.mx>\"}}', '2023-03-17 02:55:53', '0000-00-00 00:00:00'),
(33, 0, 27, 0, 68, 'M', 65, 'Usuario Demo', NULL, NULL, '', NULL, '<p>El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada.</p>', 'html', '::1', NULL, NULL, '2023-03-17 06:38:12', '0000-00-00 00:00:00'),
(34, 0, 27, 0, 68, 'M', 64, 'Usuario Demo', NULL, NULL, '', NULL, '<p>EN ESPERA DE RETRO</p> <p><br /></p>', 'html', '::1', NULL, NULL, '2023-03-17 07:53:54', '0000-00-00 00:00:00'),
(35, 34, 27, 4, 0, 'R', 576, 'Anallely Linaco', NULL, NULL, '', NULL, '<p><br /></p><blockquote><p>El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada.</p></blockquote> <p>Equipo PIP, me ayudan con sus comentarios.</p>', 'html', '::1', NULL, '{\"to\":{\"68\":\"Usuario Demo <jbcalbillo@hotmail.com>\"}}', '2023-03-17 08:06:41', '0000-00-00 00:00:00'),
(36, 34, 27, 1, 0, 'R', 320, 'Juan Barrios', NULL, NULL, '', NULL, '<p><br /></p> <blockquote><p>EN ANÁLISIS PIP</p></blockquote> <p><br /></p>', 'html', '::1', NULL, '{\"to\":{\"68\":\"Usuario Demo <jbcalbillo@hotmail.com>\"},\"cc\":{\"1\":\"Ana Karen Barreto <ana.barreto@it-strategy.mx>\"}}', '2023-03-17 08:11:31', '0000-00-00 00:00:00'),
(37, 0, 28, 0, 68, 'M', 65, 'Usuario Demo', NULL, NULL, '', NULL, '<p>Al intentar ingresar a la plataforma de reclutamiento con mis credenciales jerson.rosas@talent-group.mx je031286 me aparece un error por lo que no me deja acceder</p>', 'html', '127.0.0.1', NULL, NULL, '2023-03-19 01:10:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread_entry_email`
--

CREATE TABLE `rcl_thread_entry_email` (
  `id` int(11) UNSIGNED NOT NULL,
  `thread_entry_id` int(11) UNSIGNED NOT NULL,
  `email_id` int(11) UNSIGNED DEFAULT NULL,
  `mid` varchar(255) NOT NULL,
  `headers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread_entry_merge`
--

CREATE TABLE `rcl_thread_entry_merge` (
  `id` int(11) UNSIGNED NOT NULL,
  `thread_entry_id` int(11) UNSIGNED NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_thread_entry_merge`
--

INSERT INTO `rcl_thread_entry_merge` (`id`, `thread_entry_id`, `data`) VALUES
(1, 7, '{\"thread\":6}'),
(2, 8, '{\"thread\":7}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread_event`
--

CREATE TABLE `rcl_thread_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `thread_type` char(1) NOT NULL DEFAULT '',
  `event_id` int(11) UNSIGNED DEFAULT NULL,
  `staff_id` int(11) UNSIGNED NOT NULL,
  `team_id` int(11) UNSIGNED NOT NULL,
  `dept_id` int(11) UNSIGNED NOT NULL,
  `topic_id` int(11) UNSIGNED NOT NULL,
  `data` varchar(1024) DEFAULT NULL COMMENT 'Encoded differences',
  `username` varchar(128) NOT NULL DEFAULT 'SYSTEM',
  `uid` int(11) UNSIGNED DEFAULT NULL,
  `uid_type` char(1) NOT NULL DEFAULT 'S',
  `annulled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_thread_event`
--

INSERT INTO `rcl_thread_event` (`id`, `thread_id`, `thread_type`, `event_id`, `staff_id`, `team_id`, `dept_id`, `topic_id`, `data`, `username`, `uid`, `uid_type`, `annulled`, `timestamp`) VALUES
(1, 0, 'T', 1, 0, 0, 1, 1, NULL, 'SYSTEM', 1, 'U', 0, '2023-03-08 12:14:38'),
(2, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Juan Barrios', 2, 'U', 0, '2023-03-08 13:45:46'),
(3, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-08 13:45:48'),
(4, 0, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\",\"fields\":{\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-08 13:46:39'),
(5, 0, 'T', 1, 0, 0, 1, 17, NULL, 'Juan Barrios', 2, 'U', 0, '2023-03-09 00:48:11'),
(6, 0, 'T', 4, 1, 0, 1, 17, '{\"staff\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 00:48:16'),
(7, 1, 'T', 14, 1, 0, 1, 0, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-09 01:08:10'),
(8, 3, 'T', 14, 1, 0, 1, 17, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-09 01:08:12'),
(9, 2, 'T', 14, 1, 1, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-09 01:08:13'),
(10, 0, 'T', 1, 0, 0, 1, 17, NULL, 'Juan Barrios', 2, 'U', 0, '2023-03-09 01:39:57'),
(11, 0, 'T', 4, 1, 0, 1, 17, '{\"staff\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 01:39:59'),
(12, 4, 'T', 14, 1, 0, 1, 0, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-09 02:39:20'),
(13, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 13:52:52'),
(14, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 13:52:53'),
(15, 0, 'T', 9, 1, 1, 1, 12, '{\"topic_id\":[11,12]}', 'juan.barrios', 1, 'S', 0, '2023-03-09 13:54:26'),
(16, 0, 'T', 9, 1, 1, 1, 12, '{\"fields\":{\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"],\"43\":[null,\"{\\\"key1\\\":\\\"PROYECTO\\\"}\"],\"44\":[null,\"et\"],\"45\":[null,\"{\\\"key2\\\":\\\"USUARIO\\\"}\"],\"46\":[null,\"{\\\"key2\\\":\\\"SOPORTE\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-09 13:57:27'),
(17, 0, 'T', 1, 0, 0, 1, 16, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:03:48'),
(18, 0, 'T', 4, 0, 1, 1, 16, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:03:50'),
(19, 0, 'T', 1, 0, 0, 1, 13, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:04:41'),
(20, 0, 'T', 4, 0, 1, 1, 13, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:04:41'),
(21, 0, 'T', 15, 1, 1, 1, 12, '{\"ticket\":\"Ticket #SOL-RCL-1\",\"id\":6}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:11:00'),
(22, 0, 'T', 15, 1, 1, 1, 16, '{\"ticket\":\"Ticket #CSI-PIP-2\",\"id\":5}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:11:00'),
(23, 0, 'T', 15, 1, 1, 1, 12, '{\"ticket\":\"Ticket #SOL-RCL-2\",\"id\":7}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:11:02'),
(24, 0, 'T', 15, 1, 1, 1, 13, '{\"ticket\":\"Ticket #CSI-PIP-2\",\"id\":5}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:11:02'),
(25, 0, 'T', 2, 1, 1, 1, 16, '{\"status\":[3,\"Closed\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:11:03'),
(26, 0, 'T', 2, 1, 1, 1, 13, '{\"status\":[3,\"Closed\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:11:04'),
(27, 0, 'T', 2, 1, 1, 1, 12, '{\"status\":[3,\"Closed\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-09 14:13:44'),
(28, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:20:21'),
(29, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:20:23'),
(30, 0, 'T', 1, 0, 0, 1, 14, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:21:02'),
(31, 0, 'T', 4, 0, 1, 1, 14, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:21:03'),
(32, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:34:58'),
(33, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:34:59'),
(34, 0, 'T', 1, 0, 0, 1, 15, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:35:29'),
(35, 0, 'T', 4, 0, 1, 1, 15, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:35:30'),
(36, 0, 'T', 1, 0, 0, 1, 13, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:36:25'),
(37, 0, 'T', 4, 0, 1, 1, 13, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:36:27'),
(38, 0, 'T', 9, 1, 1, 1, 13, '{\"fields\":{\"20\":[\"Soporte Reclutamiento \\/ Anexo de Localidad - Asignaci\\u00f3n de Localidad\",null],\"22\":[[\"Normal\",2],null],\"166\":[null,\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\"],\"58\":[\"{\\\"key5\\\":\\\"CITY CLUB\\\"}\",null],\"60\":[\"{\\\"key1\\\":\\\"REGI\\\\u00d3N 1\\\"}\",null],\"163\":[\"{\\\"70\\\":\\\"DURANGO\\\"}\",null],\"69\":[\"1\",\"0\"]}}', 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:37:40'),
(39, 0, 'T', 9, 0, 1, 1, 13, '{\"fields\":{\"20\":[\"Soporte Reclutamiento \\/ Anexo de Localidad - Asignaci\\u00f3n de Localidad\",null],\"22\":[[\"Normal\",2],null],\"58\":[\"{\\\"key11\\\":\\\"FOOD SERVICE\\\"}\",null],\"60\":[\"{\\\"key5\\\":\\\"REGI\\\\u00d3N 5\\\"}\",null],\"163\":[\"{\\\"70\\\":\\\"DURANGO\\\"}\",null],\"69\":[\"1\",\"0\"]}}', 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:39:25'),
(40, 0, 'T', 9, 0, 1, 1, 15, '{\"fields\":{\"20\":[\"Soporte Reclutamiento \\/ Alta de Sector en Plataforma\",null],\"22\":[[\"Normal\",2],null],\"112\":[\"{\\\"key2\\\":\\\"REGI\\\\u00d3N 2\\\"}\",null]}}', 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:39:47'),
(41, 0, 'T', 1, 0, 0, 4, 18, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 14:54:31'),
(42, 0, 'T', 4, 4, 0, 4, 18, '{\"staff\":4}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 14:54:36'),
(43, 0, 'T', 4, 1, 0, 4, 18, '{\"staff\":[1,\"Juan Barrios\"]}', 'anallely.linaco', 4, 'S', 0, '2023-03-09 15:03:52'),
(44, 0, 'T', 6, 1, 0, 1, 18, '{\"dept\":\"PIP-Reclutamiento\"}', 'anallely.linaco', 4, 'S', 0, '2023-03-09 15:04:22'),
(45, 0, 'T', 9, 1, 0, 1, 13, '{\"topic_id\":[18,13]}', 'anallely.linaco', 4, 'S', 0, '2023-03-09 15:05:37'),
(46, 0, 'T', 9, 1, 0, 1, 13, '{\"fields\":{\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"],\"43\":[null,\"{\\\"key7\\\":\\\"MI RECLU\\\"}\"],\"44\":[null,\"RTFGH\"],\"45\":[null,\"{\\\"key1\\\":\\\"SISTEMA\\\"}\"],\"46\":[null,\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\"]}}', 'anallely.linaco', 4, 'S', 0, '2023-03-09 15:06:26'),
(47, 0, 'T', 9, 1, 0, 1, 13, '{\"sla_id\":[2,1]}', 'anallely.linaco', 4, 'S', 0, '2023-03-09 15:07:03'),
(48, 0, 'T', 9, 1, 0, 1, 13, '{\"0\":\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\",\"1\":\"{\\\"94\\\":\\\"OPERACIONES\\\"}\",\"fields\":{\"37\":[\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\",\"{\\\"94\\\":\\\"OPERACIONES\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-09 15:19:10'),
(49, 12, 'T', 14, 1, 1, 1, 13, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-09 15:19:31'),
(50, 0, 'T', 9, 1, 1, 1, 15, '{\"0\":\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\",\"1\":\"{\\\"94\\\":\\\"OPERACIONES\\\"}\",\"fields\":{\"167\":[\"{\\\"93\\\":\\\"TALENT GROUP\\\"}\",\"{\\\"94\\\":\\\"OPERACIONES\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-09 15:19:57'),
(51, 0, 'T', 1, 0, 0, 1, 15, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 15:25:43'),
(52, 0, 'T', 4, 0, 1, 1, 15, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 15:25:44'),
(53, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 15:42:34'),
(54, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 15:42:36'),
(55, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 15:45:18'),
(56, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 15:45:19'),
(57, 0, 'T', 1, 0, 0, 1, 19, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-09 20:03:50'),
(58, 0, 'T', 4, 1, 0, 1, 19, '{\"staff\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-09 20:03:59'),
(59, 0, 'T', 1, 1, 0, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-10 05:31:19'),
(60, 0, 'T', 4, 1, 0, 1, 11, '{\"claim\":true}', 'juan.barrios', 1, 'S', 0, '2023-03-10 05:31:21'),
(61, 0, 'T', 1, 0, 0, 1, 13, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-10 17:11:38'),
(62, 0, 'T', 4, 0, 1, 1, 13, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-10 17:11:41'),
(63, 0, 'T', 1, 0, 0, 1, 13, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-10 17:23:55'),
(64, 0, 'T', 4, 0, 1, 1, 13, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-10 17:23:56'),
(65, 0, 'T', 9, 1, 1, 1, 13, '{\"0\":null,\"1\":\"{\\\"103\\\":\\\"AXIS\\\",\\\"104\\\":\\\"BACK UP\\\",\\\"106\\\":\\\"CITY CLUB\\\"}\",\"fields\":{\"245\":[null,\"{\\\"103\\\":\\\"AXIS\\\",\\\"104\\\":\\\"BACK UP\\\",\\\"106\\\":\\\"CITY CLUB\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-10 17:25:23'),
(66, 0, 'T', 9, 1, 1, 1, 13, '{\"0\":null,\"1\":\"{\\\"137\\\":\\\"AXIS\\\",\\\"138\\\":\\\"BACK UP\\\",\\\"140\\\":\\\"CITY CLUB\\\"}\",\"fields\":{\"246\":[null,\"{\\\"137\\\":\\\"AXIS\\\",\\\"138\\\":\\\"BACK UP\\\",\\\"140\\\":\\\"CITY CLUB\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-10 17:25:33'),
(67, 0, 'T', 1, 0, 0, 1, 13, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-10 17:31:57'),
(68, 0, 'T', 4, 0, 1, 1, 13, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-10 17:31:58'),
(69, 0, 'T', 9, 1, 1, 1, 13, '{\"0\":null,\"1\":\"{\\\"105\\\":\\\"BIC\\\"}\",\"fields\":{\"63\":[null,\"{\\\"105\\\":\\\"BIC\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-10 17:32:43'),
(70, 0, 'T', 9, 1, 1, 1, 13, '{\"0\":null,\"1\":\"{\\\"139\\\":\\\"BIC\\\"}\",\"fields\":{\"241\":[null,\"{\\\"139\\\":\\\"BIC\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-10 17:32:49'),
(71, 0, 'T', 1, 0, 0, 1, 16, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-12 00:57:08'),
(72, 0, 'T', 4, 0, 1, 1, 16, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-12 00:57:10'),
(73, 22, 'T', 14, 1, 1, 1, 16, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:38'),
(74, 21, 'T', 14, 1, 1, 1, 13, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:40'),
(75, 20, 'T', 14, 1, 1, 1, 13, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:41'),
(76, 19, 'T', 14, 1, 1, 1, 13, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:42'),
(77, 18, 'T', 14, 1, 0, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:45'),
(78, 17, 'T', 14, 1, 0, 1, 0, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:48'),
(79, 16, 'T', 14, 1, 1, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:50'),
(80, 15, 'T', 14, 1, 1, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:53'),
(81, 14, 'T', 14, 1, 1, 1, 15, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:10:57'),
(82, 11, 'T', 14, 1, 1, 1, 15, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:11:00'),
(83, 13, 'T', 14, 1, 0, 1, 13, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:11:04'),
(84, 10, 'T', 14, 1, 1, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:11:05'),
(85, 9, 'T', 14, 1, 1, 1, 14, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:11:08'),
(86, 8, 'T', 14, 1, 1, 1, 11, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:11:09'),
(87, 5, 'T', 14, 1, 1, 1, 12, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:11:56'),
(88, 7, 'T', 14, 1, 1, 1, 13, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:12:11'),
(89, 6, 'T', 14, 1, 1, 1, 16, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-12 07:12:12'),
(90, 23, 'T', 1, 0, 0, 1, 12, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-15 23:16:49'),
(91, 23, 'T', 4, 0, 1, 1, 12, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-15 23:16:51'),
(92, 23, 'T', 9, 1, 1, 1, 12, '{\"source\":[\"Web\",\"Phone\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-16 01:50:16'),
(93, 23, 'T', 9, 1, 1, 1, 12, '{\"source\":[\"Phone\",\"Email\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-16 01:52:26'),
(94, 23, 'T', 9, 1, 1, 1, 12, '{\"source\":[\"Email\",\"API\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-16 01:57:09'),
(95, 23, 'T', 9, 1, 1, 1, 12, '{\"source\":[\"API\",\"Other\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-16 01:59:11'),
(96, 23, 'T', 2, 1, 1, 1, 12, '{\"status\":[2,\"Resuelto\"]}', 'juan.barrios', 1, 'S', 1, '2023-03-16 01:59:49'),
(97, 0, 'T', 1, 0, 0, 1, 11, NULL, 'Ana Karen Barreto', 65, 'U', 0, '2023-03-16 14:11:51'),
(98, 0, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-16 14:11:54'),
(99, 0, 'T', 9, 6, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"112\\\":\\\"FOOD SERVICE\\\"}\",\"fields\":{\"63\":[null,\"{\\\"112\\\":\\\"FOOD SERVICE\\\"}\"]}}', 'joaquin.aguilera', 6, 'S', 0, '2023-03-16 14:14:07'),
(100, 0, 'T', 9, 6, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\",\"fields\":{\"46\":[null,\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\"]}}', 'joaquin.aguilera', 6, 'S', 0, '2023-03-16 14:14:21'),
(101, 0, 'T', 9, 6, 1, 1, 16, '{\"topic_id\":[11,\"16\"],\"duedate\":[null,\"2023-03-17 14:16:00\"],\"fields\":{\"63\":[\"{\\\"112\\\":\\\"FOOD SERVICE\\\"}\",\"{\\\"111\\\":\\\"ENERGIZER\\\",\\\"112\\\":\\\"FOOD SERVICE\\\"}\"],\"42\":[null,\"{\\\"key1\\\":\\\"Configuraci\\\\u00f3n\\\"}\"],\"43\":[null,\"{\\\"key1\\\":\\\"PROYECTO\\\"}\"],\"44\":[null,\"vhvhfg\"],\"45\":[null,\"{\\\"key1\\\":\\\"SISTEMA\\\"}\"]}}', 'joaquin.aguilera', 6, 'S', 0, '2023-03-16 14:17:05'),
(102, 25, 'T', 1, 0, 0, 1, 11, NULL, 'Juan Carlos Barrios Calbillo', 67, 'U', 0, '2023-03-17 01:51:41'),
(103, 25, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-17 01:51:47'),
(104, 25, 'T', 9, 1, 1, 1, 11, '{\"fields\":{\"22\":[[\"Normal\",2],null],\"40\":[\"9072\",\"9072, 9073\"]}}', 'Juan Carlos Barrios Calbillo', 67, 'U', 0, '2023-03-17 02:45:27'),
(105, 25, 'T', 9, 1, 1, 1, 11, '{\"fields\":{\"22\":[[\"Normal\",2],null]}}', 'Juan Carlos Barrios Calbillo', 67, 'U', 0, '2023-03-17 02:45:46'),
(106, 26, 'T', 1, 0, 0, 1, 11, NULL, 'Juan Carlos Barrios Calbillo', 67, 'U', 0, '2023-03-17 02:49:16'),
(107, 26, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-17 02:49:20'),
(108, 25, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key2\\\":\\\"Sistema\\\"}\",\"fields\":{\"42\":[null,\"{\\\"key2\\\":\\\"Sistema\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:51:10'),
(109, 25, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key2\\\":\\\"FLUJO DE TRABAJO\\\"}\",\"fields\":{\"43\":[null,\"{\\\"key2\\\":\\\"FLUJO DE TRABAJO\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:51:22'),
(110, 25, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"SISTEMA\",\"fields\":{\"44\":[null,\"SISTEMA\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:51:31'),
(111, 25, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key1\\\":\\\"SISTEMA\\\"}\",\"fields\":{\"45\":[null,\"{\\\"key1\\\":\\\"SISTEMA\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:51:39'),
(112, 25, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\",\"fields\":{\"46\":[null,\"{\\\"key1\\\":\\\"INCIDENCIA \\\\\\/ BUG\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:51:47'),
(113, 25, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"101\\\":\\\"ASIGNAR TODAS\\\"}\",\"fields\":{\"63\":[null,\"{\\\"101\\\":\\\"ASIGNAR TODAS\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:51:59'),
(114, 25, 'T', 2, 1, 1, 1, 11, '{\"status\":[2,\"Resuelto\"]}', 'juan.barrios', 1, 'S', 1, '2023-03-17 02:52:40'),
(115, 25, 'T', 3, 1, 1, 1, 11, NULL, 'Juan Carlos Barrios Calbillo', NULL, 'S', 0, '2023-03-17 02:53:05'),
(116, 23, 'T', 2, 1, 1, 1, 12, '{\"status\":[3,\"Cerrado\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:54:09'),
(117, 25, 'T', 2, 1, 1, 1, 11, '{\"status\":[3,\"Cerrado\"]}', 'juan.barrios', 1, 'S', 0, '2023-03-17 02:55:55'),
(118, 27, 'T', 1, 0, 0, 1, 11, NULL, 'Usuario Demo', 68, 'U', 0, '2023-03-17 06:38:11'),
(119, 27, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-17 06:38:13'),
(120, 27, 'T', 4, 1, 1, 1, 11, '{\"staff\":[1,\"Juan Barrios\"]}', 'anallely.linaco', 4, 'S', 0, '2023-03-17 08:07:32'),
(121, 27, 'T', 12, 1, 1, 1, 11, '{\"add\":{\"65\":{\"name\":\"Ana Karen Barreto\"}}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 08:10:31'),
(122, 27, 'T', 9, 1, 1, 1, 11, '{\"status\":6}', 'juan.barrios', 1, 'S', 0, '2023-03-17 08:11:32'),
(123, 27, 'T', 9, 1, 1, 1, 11, '{\"0\":null,\"1\":\"{\\\"key2\\\":\\\"USUARIO\\\"}\",\"fields\":{\"45\":[null,\"{\\\"key2\\\":\\\"USUARIO\\\"}\"]}}', 'juan.barrios', 1, 'S', 0, '2023-03-17 08:22:19'),
(124, 24, 'T', 14, 1, 1, 1, 16, NULL, 'juan.barrios', 1, 'S', 0, '2023-03-17 10:18:21'),
(125, 28, 'T', 1, 0, 0, 1, 11, NULL, 'Usuario Demo', 68, 'U', 0, '2023-03-19 01:10:15'),
(126, 28, 'T', 4, 0, 1, 1, 11, '{\"team\":1}', 'Filtros de Tickets', NULL, 'S', 0, '2023-03-19 01:10:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_thread_referral`
--

CREATE TABLE `rcl_thread_referral` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(11) UNSIGNED NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `object_type` char(1) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_thread_referral`
--

INSERT INTO `rcl_thread_referral` (`id`, `thread_id`, `object_id`, `object_type`, `created`) VALUES
(6, 23, 1, 'S', '2023-03-16 01:59:49'),
(7, 25, 1, 'S', '2023-03-17 02:52:40'),
(8, 27, 4, 'S', '2023-03-17 08:07:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_ticket`
--

CREATE TABLE `rcl_ticket` (
  `ticket_id` int(11) UNSIGNED NOT NULL,
  `ticket_pid` int(11) UNSIGNED DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_email_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sla_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `staff_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `team_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lock_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ip_address` varchar(64) NOT NULL DEFAULT '',
  `source` enum('Web','Email','Phone','API','Other') NOT NULL DEFAULT 'Other',
  `source_extra` varchar(40) DEFAULT NULL,
  `isoverdue` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `isanswered` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `duedate` datetime DEFAULT NULL,
  `est_duedate` datetime DEFAULT NULL,
  `reopened` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_ticket`
--

INSERT INTO `rcl_ticket` (`ticket_id`, `ticket_pid`, `number`, `user_id`, `user_email_id`, `status_id`, `dept_id`, `sla_id`, `topic_id`, `staff_id`, `team_id`, `email_id`, `lock_id`, `flags`, `sort`, `ip_address`, `source`, `source_extra`, `isoverdue`, `isanswered`, `duedate`, `est_duedate`, `reopened`, `closed`, `lastupdate`, `created`, `updated`) VALUES
(23, NULL, 'SOL-RCL-9', 65, 0, 3, 1, 1, 12, 1, 1, 0, 0, 0, 0, '127.0.0.1', 'Other', NULL, 0, 1, NULL, '2023-03-20 13:58:02', NULL, '2023-03-17 02:54:09', '2023-03-17 02:54:09', '2023-03-15 23:16:48', '2023-03-17 02:54:09'),
(25, NULL, 'CSI-PIP-9', 67, 0, 3, 1, 1, 11, 1, 1, 0, 0, 0, 0, '::1', 'Web', NULL, 0, 1, NULL, '2023-03-21 13:58:02', '2023-03-17 02:53:04', '2023-03-17 02:55:54', '2023-03-17 02:55:54', '2023-03-17 01:51:37', '2023-03-17 02:55:55'),
(26, NULL, 'CSI-PIP-10', 67, 0, 1, 1, 1, 11, 0, 1, 0, 0, 0, 0, '::1', 'Web', NULL, 0, 0, NULL, '2023-03-21 13:58:02', NULL, NULL, '2023-03-17 02:49:18', '2023-03-17 02:49:13', '2023-03-17 02:49:21'),
(27, NULL, 'CSI-PIP-11', 68, 0, 6, 1, 1, 11, 1, 1, 0, 0, 0, 0, '::1', 'Web', NULL, 0, 1, NULL, '2023-03-21 13:58:02', NULL, NULL, '2023-03-17 08:22:19', '2023-03-17 06:38:07', '2023-03-17 08:22:19'),
(28, NULL, 'CSI-PIP-12', 68, 0, 1, 1, 1, 11, 0, 1, 0, 0, 0, 0, '127.0.0.1', 'Web', NULL, 0, 0, NULL, '2023-03-22 13:58:02', NULL, NULL, '2023-03-19 01:10:17', '2023-03-19 01:10:14', '2023-03-19 01:10:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_ticket_priority`
--

CREATE TABLE `rcl_ticket_priority` (
  `priority_id` tinyint(4) NOT NULL,
  `priority` varchar(60) NOT NULL DEFAULT '',
  `priority_desc` varchar(30) NOT NULL DEFAULT '',
  `priority_color` varchar(7) NOT NULL DEFAULT '',
  `priority_urgency` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_ticket_priority`
--

INSERT INTO `rcl_ticket_priority` (`priority_id`, `priority`, `priority_desc`, `priority_color`, `priority_urgency`, `ispublic`) VALUES
(1, 'low', 'Low', '#DDFFDD', 4, 1),
(2, 'normal', 'Normal', '#FFFFF0', 3, 1),
(3, 'high', 'High', '#FEE7E7', 2, 1),
(4, 'emergency', 'Emergency', '#FEE7E7', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_ticket_status`
--

CREATE TABLE `rcl_ticket_status` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `state` varchar(16) DEFAULT NULL,
  `mode` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_ticket_status`
--

INSERT INTO `rcl_ticket_status` (`id`, `name`, `state`, `mode`, `flags`, `sort`, `properties`, `created`, `updated`) VALUES
(1, 'Abierto', 'open', 3, 0, 1, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"Tickets Abiertos.\"}', '2023-03-08 12:14:07', '0000-00-00 00:00:00'),
(2, 'Resuelto', 'closed', 1, 0, 6, '{\"allowreopen\":true,\"reopenstatus\":0,\"35\":\"Tickets resueltos.\"}', '2023-03-08 12:14:07', '0000-00-00 00:00:00'),
(3, 'Cerrado', 'closed', 3, 0, 7, '{\"allowreopen\":false,\"reopenstatus\":0,\"35\":\"Tickets cerrados. Los Tickets seguir\\u00e1n siendo accesibles en los paneles de clientes y personal.\"}', '2023-03-08 12:14:08', '0000-00-00 00:00:00'),
(4, 'Archivado', 'archived', 3, 0, 8, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"Los Tickets solo est\\u00e1n disponibles administrativamente, pero ya no se puede acceder a ellos en las colas de Tickets y el panel del cliente.\"}', '2023-03-08 12:14:08', '0000-00-00 00:00:00'),
(5, 'Eliminado', 'deleted', 3, 0, 9, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"Tickets en cola para su eliminaci\\u00f3n. No accesible en las colas de tickets.\"}', '2023-03-08 12:14:08', '0000-00-00 00:00:00'),
(6, 'Análisis PIP', 'open', 1, 0, 2, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"Ticket en proceso de atenci\\u00f3n por parte de Soporte PIP\"}', '2023-03-17 04:43:27', '0000-00-00 00:00:00'),
(7, 'Escalado a equipo de Desarrollo', 'open', 1, 0, 4, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"\"}', '2023-03-17 05:30:27', '0000-00-00 00:00:00'),
(8, 'Pruebas PIP', 'open', 1, 0, 5, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"\"}', '2023-03-17 05:30:57', '0000-00-00 00:00:00'),
(9, 'En espera de retro por parte del cliente', 'open', 1, 0, 3, '{\"allowreopen\":true,\"reopenstatus\":null,\"35\":\"\"}', '2023-03-17 05:32:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_ticket__cdata`
--

CREATE TABLE `rcl_ticket__cdata` (
  `ticket_id` int(11) UNSIGNED NOT NULL,
  `subject` mediumtext DEFAULT NULL,
  `priority` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_ticket__cdata`
--

INSERT INTO `rcl_ticket__cdata` (`ticket_id`, `subject`, `priority`) VALUES
(23, 'Solicitud / Alta de Usuario', '2'),
(25, 'Solicitud de revertir proceso en vacante', '2'),
(26, 'No sube info de candidato a Mi Reclu', '2'),
(27, 'Solicitud de revertir proceso en vacante', '2'),
(28, 'No puedo accesar a la plataforma', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_translation`
--

CREATE TABLE `rcl_translation` (
  `id` int(11) UNSIGNED NOT NULL,
  `object_hash` char(16) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `type` enum('phrase','article','override') DEFAULT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `revision` int(11) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang` varchar(16) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `source_text` text DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_user`
--

CREATE TABLE `rcl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `org_id` int(10) UNSIGNED NOT NULL,
  `default_email_id` int(10) NOT NULL,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_user`
--

INSERT INTO `rcl_user` (`id`, `org_id`, `default_email_id`, `status`, `name`, `created`, `updated`) VALUES
(1, 0, 1, 0, 'osTicket Support', '2023-03-08 12:14:37', '2023-03-09 13:33:03'),
(2, 0, 2, 0, 'Juan Barrios', '2023-03-08 13:35:39', '2023-03-08 13:35:39'),
(4, 0, 4, 0, 'ALVAREZ HERNANDEZ JESSICA HATZIRI DE JESUS', '2023-03-09 13:28:39', '2023-03-09 13:28:39'),
(5, 0, 5, 0, 'ALVAREZ RAMIREZ JESUS', '2023-03-09 13:30:25', '2023-03-09 13:30:25'),
(6, 0, 6, 0, 'AMEZCUA HUERTA EVA MARIANA', '2023-03-09 13:30:25', '2023-03-09 13:30:25'),
(7, 0, 7, 0, 'CAMPERO BALTAZAR ILIANA CAROLINA', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(8, 0, 8, 0, 'CASTILLO SERVIN JESSICA', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(9, 0, 9, 0, 'CERECEDO PEREZ LUIS ALBERTO', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(10, 0, 10, 0, 'CERVANTES TOSCANO LEONARDO ISMAEL', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(11, 0, 11, 0, 'CHAVEZ IZQUIERDO NAYELLY', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(12, 0, 12, 0, 'CHAVIRA NUÑEZ ALEXIS JOSE GUADALUPE', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(13, 0, 13, 0, 'CISNEROS PEREZ LESLY MARLENE', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(14, 0, 14, 0, 'CORDERO HERRERA GUADALUPE SARAHI', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(15, 0, 15, 0, 'CORTES PEREZ ARMANDO ISIDRO', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(16, 0, 16, 0, 'COVARRUBIAS TERRAZAS RICARDO DANIEL ', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(17, 0, 17, 0, 'CRUZ GALICIA LAURA PAOLA', '2023-03-09 13:30:26', '2023-03-09 13:30:26'),
(18, 0, 18, 0, 'ESCALANTE VALENZUELA JAMILETH', '2023-03-09 13:30:27', '2023-03-09 13:30:27'),
(19, 0, 19, 0, 'FRANCO ENCARNACION ANA PAOLA', '2023-03-09 13:30:27', '2023-03-09 13:30:27'),
(20, 0, 20, 0, 'GAMIÑO BARAJAS ALEYDIS', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(21, 0, 21, 0, 'GARCIA GARCIA ARELI', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(22, 0, 22, 0, 'GARCIA TORRES PEDRO', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(23, 0, 23, 0, 'GARCIA VALDEZ ROSA ', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(24, 0, 24, 0, 'GODINEZ JIMENEZ CINTHIA NOHEMI', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(25, 0, 25, 0, 'GOMEZ ALMAZAN JENNIFER', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(26, 0, 26, 0, 'GONZALEZ CRUZ ANDREA', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(27, 0, 27, 0, 'GONZALEZ HERNANDEZ SURY SARAY', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(28, 0, 28, 0, 'GUDIÑO ORTIZ MARIA FERNANDA', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(29, 0, 29, 0, 'GUERRERO BAUTISTA RICARDO', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(30, 0, 30, 0, 'HEMER ARELLANO MARIO IVAN', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(31, 0, 31, 0, 'HERNANDEZ DOMINGUEZ JAVIER', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(32, 0, 32, 0, 'HERNANDEZ GONZALEZ EDSON ANTONIO', '2023-03-09 13:30:28', '2023-03-09 13:30:28'),
(33, 0, 33, 0, 'LAUREANO VALDOVINOS YESENIA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(34, 0, 34, 0, 'Anallely Linaco', '2023-03-09 13:30:29', '2023-03-09 13:44:29'),
(35, 0, 35, 0, 'LOPEZ BRISEÑO DIANA PATRICIA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(36, 0, 36, 0, 'LOPEZ SAMPAYO GRISELDA MARLENE', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(37, 0, 37, 0, 'LOPEZ ZAMUDIO DIANA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(38, 0, 38, 0, 'MENDOZA ISLAS SUSANA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(39, 0, 39, 0, 'MERA ESTRADA EDWIN ALEXIS', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(40, 0, 40, 0, 'MIRANDA SOTO SAMANTHA ELOISA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(41, 0, 41, 0, 'MOGUEL LOPEZ JUDITH', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(42, 0, 42, 0, 'MORALES ESCALANTE DANIELA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(43, 0, 43, 0, 'MORALES ESTRADA VANESSA JACQUELINE', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(44, 0, 44, 0, 'MUÑOZ HERNANDEZ JESSICA', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(45, 0, 45, 0, 'NIETO RASGADO DANIEL ALEJANDRO', '2023-03-09 13:30:29', '2023-03-09 13:30:29'),
(46, 0, 46, 0, 'OBANDO SANCHEZ ANDREA GUADALUPE', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(47, 0, 47, 0, 'OCHOA ORTEGA LAURA DANIELA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(48, 0, 48, 0, 'OLMOS SANTIAGO ANGELES', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(49, 0, 49, 0, 'OLVERA TLAMANI BRENDA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(50, 0, 50, 0, 'OSORIO OSORIO YADIRA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(51, 0, 51, 0, 'PERALTA HERNANDEZ CESAR', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(52, 0, 52, 0, 'PEREZ SANCHEZ RAFAEL', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(53, 0, 53, 0, 'PRADO GUZMAN ESTEFANY ', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(54, 0, 54, 0, 'RAMIREZ GARCIA JEANNETTE ARACELI', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(55, 0, 55, 0, 'REAL SILVA ESMERALDA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(56, 0, 56, 0, 'RUIZ GONZALEZ EDGAR ALEJANDRO', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(57, 0, 57, 0, 'SALAZAR GATICA ALEJANDRA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(58, 0, 58, 0, 'SOTO RAMIREZ ANA LETICIA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(59, 0, 59, 0, 'TAPIA VAZQUEZ PAOLA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(60, 0, 60, 0, 'TOVAR GONZALEZ TANIA', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(61, 0, 61, 0, 'VAZQUEZ MARTINEZ JOVANI DANIEL', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(62, 0, 62, 0, 'VEGA SANCHEZ ANAYELI', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(63, 0, 63, 0, 'VELAZCO GONZALEZ IRVIN ALEJANDRO', '2023-03-09 13:30:30', '2023-03-09 13:30:30'),
(64, 0, 64, 0, 'YOSHIMOTO RUGERIO PABLO KAZUO', '2023-03-09 13:30:31', '2023-03-09 13:30:31'),
(65, 3, 65, 0, 'Ana Karen Barreto', '2023-03-09 13:37:30', '2023-03-09 13:37:30'),
(66, 3, 66, 0, 'Axell Sosa Rodriguez', '2023-03-09 13:40:39', '2023-03-09 13:40:39'),
(67, 3, 67, 0, 'Juan Carlos Barrios Calbillo', '2023-03-16 23:00:20', '2023-03-16 23:00:20'),
(68, 0, 68, 0, 'Usuario Demo', '2023-03-17 05:51:01', '2023-03-17 05:51:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_user_account`
--

CREATE TABLE `rcl_user_account` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `timezone` varchar(64) DEFAULT NULL,
  `lang` varchar(16) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `passwd` varchar(128) CHARACTER SET ascii COLLATE ascii_bin DEFAULT NULL,
  `backend` varchar(32) DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `registered` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_user_account`
--

INSERT INTO `rcl_user_account` (`id`, `user_id`, `status`, `timezone`, `lang`, `username`, `passwd`, `backend`, `extra`, `registered`) VALUES
(1, 2, 1, 'America/Guatemala', NULL, 'jcbarrios5222@gmail.com', NULL, 'oauth2.user.p1i1', '{\"browser_lang\":\"es_MX\"}', '2023-03-08 19:35:40'),
(2, 65, 1, 'America/Mexico_City', NULL, 'ana.barreto', '$2a$08$oc/0bwAMEiTVSB5Nt1W0o.7.2AFh9iD27Xu2fT3H/GGzWF62KOVnm', NULL, '{\"browser_lang\":\"es_MX\"}', '2023-03-09 19:37:31'),
(3, 66, 1, 'America/Mexico_City', NULL, 'axell.sosa', '$2a$08$KoAtbvHi0k6svR/TpkiZz.pIb32j98rowhrVvt29oefGxmSQWqm76', NULL, NULL, '2023-03-09 19:41:16'),
(4, 34, 0, 'America/Mexico_City', NULL, NULL, '$2a$08$xOlt9lYBYhjdPCQgN2FuZea445M1HiYJftSxP8JoHPRjczTjZJd8C', NULL, NULL, '2023-03-09 19:44:29'),
(5, 67, 1, 'America/Mexico_City', NULL, 'juan.barrios@it-strategy.mx', NULL, 'oauth2.user.p1i1', '{\"browser_lang\":\"es_MX\"}', '2023-03-17 05:00:22'),
(6, 68, 1, 'America/Mexico_City', NULL, 'jbcalbillo', '$2a$08$c5xH79DTXcVksq.cetEbquLSSSHXpr1euAbd3yiUkmoTo/PMq0bAO', NULL, '{\"browser_lang\":\"es_MX\"}', '2023-03-17 11:51:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_user_email`
--

CREATE TABLE `rcl_user_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_user_email`
--

INSERT INTO `rcl_user_email` (`id`, `user_id`, `flags`, `address`) VALUES
(1, 1, 0, 'support@osticket.com'),
(2, 2, 0, 'jcbarrios5222@gmail.com'),
(4, 4, 0, 'jessica.alvarez@talent-group.mx'),
(5, 5, 0, 'jesus.alvarez@talent-group.mx'),
(6, 6, 0, 'eva.amezcua@talent-group.mx'),
(7, 7, 0, 'iliana.campero@talent-group.mx'),
(8, 8, 0, 'jessica.castillo@talent-group.mx'),
(9, 9, 0, 'luis.cerecedo@talent-group.mx'),
(10, 10, 0, 'leonardo.cervantes@talent-group.mx'),
(11, 11, 0, 'nayelly.chavez@talent-group.mx'),
(12, 12, 0, 'alexis.chavira@talent-group.mx'),
(13, 13, 0, 'lesly.cisneros@talent-group.mx'),
(14, 14, 0, 'guadalupe.cordero@talent-group.mx'),
(15, 15, 0, 'armando.cortes@talent-group.mx'),
(16, 16, 0, 'ricardo.covarrubias@talent-group.mx'),
(17, 17, 0, 'laura.cruz@talent-group.mx'),
(18, 18, 0, 'jamileth.escalante@talent-group.mx'),
(19, 19, 0, 'ana.franco@talent-group.mx'),
(20, 20, 0, 'aleydis.gamino@talent-group.mx'),
(21, 21, 0, 'areli.garcia@talent-group.mx'),
(22, 22, 0, 'pedro.garcia@talent-group.mx'),
(23, 23, 0, 'rosa.garcia@talent-group.mx'),
(24, 24, 0, 'cinthia.godinez@talent-group.mx'),
(25, 25, 0, 'jennifer.almazan@talent-group.mx'),
(26, 26, 0, 'andrea.gonzalez@talent-group.mx'),
(27, 27, 0, 'sury.gonzalez@talent-group.mx'),
(28, 28, 0, 'maria.gudino@talent-group.mx'),
(29, 29, 0, 'ricardo.guerrero@talent-group.mx'),
(30, 30, 0, 'ivan.hemer@talent-group.mx'),
(31, 31, 0, 'javier.hernandez@talent-group.mx'),
(32, 32, 0, 'edson.hernandez@talent-group.mx'),
(33, 33, 0, 'yesenia.laureano@talent-group.mx'),
(34, 34, 0, 'anallely.linaco@talent-group.mx'),
(35, 35, 0, 'diana.lopez@talent-group.mx'),
(36, 36, 0, 'griselda.lopez@talent-group.mx'),
(37, 37, 0, 'diana.zamudio@talent-group.mx'),
(38, 38, 0, 'susana.mendoza@talent-group.mx'),
(39, 39, 0, 'edwin.mera@talent-group.mx'),
(40, 40, 0, 'samantha.miranda@talent-group.mx'),
(41, 41, 0, 'judith.moguel@talent-group.mx'),
(42, 42, 0, 'daniela.morales@talent-group.mx'),
(43, 43, 0, 'vanessa.morales@talent-group.mx'),
(44, 44, 0, 'jessica.munoz@talent-group.mx'),
(45, 45, 0, 'daniel.nieto@talent-group.mx'),
(46, 46, 0, 'andrea.obando@talent-group.mx'),
(47, 47, 0, 'laura.ochoa@talent-group.mx'),
(48, 48, 0, 'angeles.olmos@talent-group.mx'),
(49, 49, 0, 'brenda.olvera@talent-group.mx'),
(50, 50, 0, 'yadira.osorio@talent-group.mx'),
(51, 51, 0, 'cesar.peralta@talent-group.mx'),
(52, 52, 0, 'rafael.perez@talent-group.mx'),
(53, 53, 0, 'estefany.prado@talent-group.mx'),
(54, 54, 0, 'jeannette.ramirez@talent-group.mx'),
(55, 55, 0, 'esmeralda.real@talent-group.mx'),
(56, 56, 0, 'edgar.ruiz@talent-group.mx'),
(57, 57, 0, 'alejandra.salazar@talent-group.mx'),
(58, 58, 0, 'ana.soto@talent-group.mx'),
(59, 59, 0, 'paola.tapia@talent-group.mx'),
(60, 60, 0, 'tania.tovar@talent-group.mx'),
(61, 61, 0, 'jovani.vazquez@talent-group.mx'),
(62, 62, 0, 'anayeli.vega@talent-group.mx'),
(63, 63, 0, 'irvin.velazco@talent-group.mx'),
(64, 64, 0, 'pablo.yoshimoto@talent-group.mx'),
(65, 65, 0, 'ana.barreto@it-strategy.mx'),
(66, 66, 0, 'axell.sosa@it-strategy.mx'),
(67, 67, 0, 'juan.barrios@it-strategy.mx'),
(68, 68, 0, 'jbcalbillo@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl_user__cdata`
--

CREATE TABLE `rcl_user__cdata` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `email` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `phone` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl_user__cdata`
--

INSERT INTO `rcl_user__cdata` (`user_id`, `email`, `name`, `phone`, `notes`) VALUES
(2, NULL, NULL, '', ''),
(3, NULL, NULL, '', ''),
(4, NULL, NULL, '5625516025', ''),
(5, NULL, NULL, '5575002347', ''),
(6, NULL, NULL, '5554313047', ''),
(7, NULL, NULL, '4422265681', ''),
(8, NULL, NULL, '5536778903', ''),
(9, NULL, NULL, '4421270360', ''),
(10, NULL, NULL, '5561221813', ''),
(11, NULL, NULL, '5513849238', ''),
(12, NULL, NULL, '5548841688', ''),
(13, NULL, NULL, '', ''),
(14, NULL, NULL, '5540448202', ''),
(15, NULL, NULL, '5561221816', ''),
(16, NULL, NULL, '5549447554', ''),
(17, NULL, NULL, '5561221810', ''),
(18, NULL, NULL, '5540440051', ''),
(19, NULL, NULL, '5579695909', ''),
(20, NULL, NULL, '', ''),
(21, NULL, NULL, '5545334730', ''),
(22, NULL, NULL, '5625516022', ''),
(23, NULL, NULL, '5554553814', ''),
(24, NULL, NULL, '6862346318', ''),
(25, NULL, NULL, '5554526802', ''),
(26, NULL, NULL, '5580274058', ''),
(27, NULL, NULL, '5574553571', ''),
(28, NULL, NULL, '', ''),
(29, NULL, NULL, '5580109495', ''),
(30, NULL, NULL, '5519107827', ''),
(31, NULL, NULL, '5561221817', ''),
(32, NULL, NULL, '5554076288', ''),
(33, NULL, NULL, '5585733462', ''),
(34, NULL, NULL, '', ''),
(35, NULL, NULL, '5579323872', ''),
(36, NULL, NULL, '5561221812', ''),
(37, NULL, NULL, '5579191140', ''),
(38, NULL, NULL, '3315329200', ''),
(39, NULL, NULL, '5561221814', ''),
(40, NULL, NULL, '5579086129', ''),
(41, NULL, NULL, '5561163430', ''),
(42, NULL, NULL, '5530693749', ''),
(43, NULL, NULL, '', ''),
(44, NULL, NULL, '5580032239', ''),
(45, NULL, NULL, '5532241100', ''),
(46, NULL, NULL, '5535199928', ''),
(47, NULL, NULL, '5519170531', ''),
(48, NULL, NULL, '5544554031', ''),
(49, NULL, NULL, '5538883629', ''),
(50, NULL, NULL, '4421943562', ''),
(51, NULL, NULL, '5541886299', ''),
(52, NULL, NULL, '5580292562', ''),
(53, NULL, NULL, '5511412282', ''),
(54, NULL, NULL, '', ''),
(55, NULL, NULL, '', ''),
(56, NULL, NULL, '5580702501', ''),
(57, NULL, NULL, '5514957064', ''),
(58, NULL, NULL, '', ''),
(59, NULL, NULL, '5516942838', ''),
(60, NULL, NULL, '5580789578', ''),
(61, NULL, NULL, '5578586871', ''),
(62, NULL, NULL, '5579323873', ''),
(63, NULL, NULL, '', ''),
(64, NULL, NULL, '8121536011', ''),
(65, NULL, NULL, '', ''),
(66, NULL, NULL, '', ''),
(67, NULL, NULL, '', ''),
(68, NULL, NULL, '5519114644', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rcl__search`
--

CREATE TABLE `rcl__search` (
  `object_type` varchar(8) NOT NULL,
  `object_id` int(11) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `rcl__search`
--

INSERT INTO `rcl__search` (`object_type`, `object_id`, `title`, `content`) VALUES
('H', 19, '', 'dfgdfghdfghdfhdghfhdfghgdfhdfghdfgh'),
('H', 20, '', 'dfgdfghdfghdfhdghfhdfghgdfhdfghdfgh'),
('H', 21, '', 'dfgdfghdfghdfhdghfhdfghgdfhdfghdfgh'),
('H', 22, '', 'dfgffdgdfgdfgdfgfg'),
('H', 23, '', 'dfdfds'),
('H', 26, '', 'El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada.'),
('H', 27, '', 'El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada. Buenas tardes (usuario). El equipo de desarrollo ya está en proceso del cambio del estatus del candidato, en cuanto nos notifiquen te lo haremos saber a la brevedad posible. Saludos cordiales.'),
('H', 28, '', 'Al dar de alta a un candidato desde la plataforma, la información de Ricardo Hernandez Garcia, como datos personales, calle y número, cv, experiencia laboral y formación, se guarda desde la plataforma pero al irme a MI reclu, para subir su foto ya no me aparece la incluso el % de avance me dice que es del 33% lo que tengo que volver a llenar estos campos en MI reclu para que aparezcan completos en la plataforma'),
('H', 29, '', 'Hola buenos dias Axell: Revisado en la plataforma el candidato ya se encuentra con el Estatus correcto, mil gracias por tu apoyo: Por lo que podemos proceder al cierre de este soporte.SALUDOS!!'),
('H', 30, '', 'Buenos días usuario. Gracias por la retro, se procede al cierre del ticket. Saludos cordiales.'),
('H', 31, '', 'Hola buenos dias Axell: Revisado en la plataforma el candidato ya se encuentra con el Estatus correcto, mil gracias por tu apoyo: Por lo que podemos proceder al cierre de este soporte.SALUDOS!!'),
('H', 32, '', 'Buenos días usuario. Gracias por la retro, se procede al cierre del ticket. Saludos cordiales.'),
('H', 33, '', 'El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada.'),
('H', 34, '', 'EN ESPERA DE RETRO'),
('H', 35, '', 'El candidato ID 40855 CARLOS ANTONIO MONTES ARAGÓN, se cerró con él la vacante, sin embargo, no se presentó al PDV, por lo que solicitamos su apoyo para revertir el proceso y colocarle el estatus de No se presentó al punto de venta y que la vacante se active a Solicitud publicada. Equipo PIP, me ayudan con sus comentarios.'),
('H', 36, '', 'EN ANÁLISIS PIP'),
('H', 37, '', 'Al intentar ingresar a la plataforma de reclutamiento con mis credenciales jerson.rosas@talent-group.mx je031286 me aparece un error por lo que no me deja acceder'),
('K', 1, 'No se visualiza id de vacante (ATC)', 'Si después de que Cliente o solicitante haya generado una solicitud y esta no es visible desde tu tablero de rol ATC https://reclutamiento.tiii.mx/Atencion-Cliente, te invitamos a validar que: Revisar que tengamos la alerta de Generación de Nueva Vacante como se muestra en este archivo Validar si está autorizada en caso de que el proyecto donde fue generada cuente con autorización necesaria de un Autorizador Que nuestro usuario esté asignado a la marca correctamente en plataforma En caso de que ya hayas validado la información anterior y presentes aún el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 3, 'Rechacé una vacante y ya no puedo visualizarla', 'En caso de que hayas rechazado una solicitud y no se muestre en tu tablero, favor de validar: Que la solicitud ya haya sido modificada por Cliente o Solicitante Que el estatus de la solicitud sea En Validación de la Solicitud y no tenga estatus de Modificación Solicitud como se muestra en este archivo Que hayamos recibido la siguiente notificación Modificación Vacante En caso de contar con la alerta y sigues presentando problemas, favor de solicitar apoyo a soporte Reclu a través de esta plataforma para que se te brinde la atención necesaria.'),
('K', 4, 'No puedo asignar una vacante a Reclutador', 'En caso de que no puedas visualizar un Reclutador en el desplegable al momento de asignar una solicitud como en el siguiente archivo , favor de validar: Que el usuario cuente con el rol Reclutador Que el reclutador cuente con la marca asignada al momento de que la solicitud haya sido generada En caso de que el usuario si cuente con el rol y marca asignada, favor de solicitar apoyo a soporte Reclu a través de esta plataforma para que se te brinde la atención necesaria.'),
('K', 5, 'No puedo solicitar cartera', 'En caso de que no tengas la opción habilitada de solicitar cartera, recuerda que debe haber como mínimo un candidato descartado, como en el ejemplo de este archivo .'),
('K', 6, 'No visualizo candidatos en vacantes (ATC)', 'En caso de que no se visualicen candidatos en una vacante, primero debemos asegurarnos de: Que el reclutador te haya habilitado candidatos Que al entrar a detalle de la solicitud no se muestre una pantalla blanca, esto significa falta de privilegios para visualizar la marca En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 7, 'Material de Apoyo ATC', 'En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro MANUAL DE ROL ATC o con soporte Reclu. Ana Karen Barreto Rodríguez ana.barreto@it-strategy.mx 55 5415 8985 Axell Sosa Rodríguez Axell.sosa@it-strategy.mx 55 1814 7476 Juan Carlos Barrios Calbillo juan.barrios@it-strategy.mx 55 1911 4644 soporte.reclutamiento@3ti.mx'),
('K', 8, 'No se visualiza id de vacante (CLIENTE)', 'Si después de crear una solicitud esta no es visible desde tu tablero de rol Cliente https://reclutamiento.tiii.mx/Solicitudes-Cliente es muy probable que uno de los siguientes puntos no se esté cumpliendo Que la vacante no haya sido autorizada por el Autorizador asignado al proyecto Que la vacante no haya sido validada por el usuario Atención a Clientes asignado al proyecto En caso de que ya hayas validado con ATC o el autorizador del proyecto, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 9, 'No se muestra listado de Plantillas', 'Al momento de crear una solicitud suele haber ocasiones en las que después de seleccionar un proyecto, este no arroje el listado de plantillas correspondientes al proyecto, este error puede llega a suceder por cambios en la configuración de una plantilla, para validar que no se trate de un error, ingresa a https://reclutamiento.tiii.mx/Plantillas y revisa que se encuentre en tu tablero la plantilla solicitada, como se muestra en este enlace , en caso de que se muestre favor de borrar caché y volver a intentar.'),
('K', 10, 'No aparece localidad en el desplegable (CLIENTE)', 'Para estos casos es importarte revisar que el proyecto ya cuente con la localidad creada en RHIN y Seguridad Corporativa, en caso de no contar con la información, pide a soporte Reclu el asesoramiento para consultar esta información, en caso de que la localidad sea nueva, favor de revisar el siguiente archivo .'),
('K', 11, 'No aparece Supervisor en desplegable de localidad (CLIENTE)', 'Cuando no aparezca un Supervisor/Usuario el cual será el encargado de dar retro alimentación a Candidatos de una vacante, es importante validar que: El usuario tenga acceso a la plataforma y el rol de Cliente o Cliente Entrevistador Que el usuario cuente con la marca asignada y/o proyecto correctamente En caso de que el usuario cumpla con estos puntos, favor de acercarse a soporte Reclu para soporte. En caso de ser usuario de nuevo ingreso, favor de leer el siguiente archivo .'),
('K', 12, 'No se puede editar plantilla', 'Los permisos de plantillas van seguidos de la creación de una plantilla y su asignación a un proyecto en específico, antes de solicitar soporte, favor de revisar el archivo de este enlace , en caso de que se visualice la plantilla en tu tablero, pero no cuentes con permisos de edición, favor de leer el siguiente archivo .'),
('K', 13, 'No visualizo candidatos en vacantes (CLIENTE)', 'En caso de que no se visualicen contactos en una vacante, primero debemos asegurarnos de que este haya pasado por los filtros siguientes: Haber sido habilitado a ATC por reclutador Haber recibido la notificación de que ATC te ha habilitado un candidato como el ejemplo de este enlace En caso de que no se cumplan estos casos, favor de pedir retroalimentación al equipo de ATC o Autorizador designado.'),
('K', 14, 'No puedo Programar una Entrevista con Candidato', 'Si se llega a presentar el caso donde no se pueda asignar una entrevista a un candidato, debemos verificar los siguientes puntos: Que la entrevista generada no sea en el día actual en la que la estes programando Haberle asignado a el candidato el estatus de viable en la primer retroalimentación En caso de haber dado un estatus de Descartado o No Localizado verificar que se haya revertido el estatus correctamente Después de haber validado estos puntos y sigas sin poder generar la entrevista favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 15, 'No se visualiza candidatos para retro final (CLIENTE)', 'Cuando no se visualizan candidatos en una solicitud en el proceso de retro final debemos validar los siguientes puntos: Haber brindado estatus Viable a uno o más candidatos Que ATC haya aceptado la entrevista del candidato generada por Cliente En caso de que no se cumplan estos casos, favor de pedir retroalimentación al equipo de ATC designado.'),
('K', 16, 'No puedo asignar Estatus Viable en Retro Final (CLIENTE)', 'En caso de no poder dar Estatus Viable a un Candidato en la retro final Cliente debemos validar que El candidato no cuente con otro estatus, (No Localizado o Descartado) por parte de Reclutador o ATC Que la vacante no se encuentre pausada o cancelada Que ATC haya aceptado la entrevista del candidato En caso de que no se cumplan estos casos favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 17, 'No puedo asignar Estatus Seleccionado en Retro Final (CLIENTE)', 'En caso de no poder dar Estatus Seleccionado a un Candidato en la retro final Cliente debemos validar que El candidato no cuente con otro estatus, (No Localizado o Descartado) en la Retro Final Que la vacante no se encuentre pausada o cancelada Que no exista otro candidato con el mismo estatus de Seleccionado, Pendiente de Confirmación a Punto de Venta En caso de que no se cumplan estos casos, favor de revisar el siguiente archivo , si se sigue presentando el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 18, 'No puedo dar primera retroalimentación a candidatos en vacantes sin Preguntas Técnicas (CLIENTE)', 'En caso de no poder dar primera retroalimentación a un candidato debemos validar que: La vacante haya sido creada sin el flujo de trabajo de preguntas técnicas candidato Haber recibido la notificación Habilitación Candidato Cliente por correo, esto quiere decir que ATC nos ha habilitado un candidato viable En caso de que se cumplan estos casos te invitamos a revisar el siguiente archivo de muestra, si se sigue presentando el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 19, 'Material de Apoyo CLIENTE', 'En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro MANUAL DE ROL CLIENTE o con soporte Reclu. Ana Karen Barreto Rodríguez ana.barreto@it-strategy.mx 55 5415 8985 Axell Sosa Rodríguez Axell.sosa@it-strategy.mx 55 1814 7476 Juan Carlos Barrios Calbillo juan.barrios@it-strategy.mx 55 1911 4644 soporte.reclutamiento@3ti.mx'),
('K', 20, 'No se visualiza id de vacante (CLIENTE ENTREVISTADOR)', 'Si después de crear una solicitud esta no es visible desde tu tablero de rol Cliente Entrevistador https://reclutamiento.tiii.mx/SolicitudesJS es muy probable que uno de los siguientes puntos no se esté cumpliendo Que la vacante no haya sido autorizada por el Autorizador asignado al proyecto Que la vacante no haya sido validada por el usuario Atención a Clientes asignado al proyecto En caso de que ya hayas validado con ATC o el autorizador del proyecto, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 21, 'No aparece localidad en el desplegable (CLIENTE ENTREVISTADOR)', 'Para estos casos es importarte revisar que el proyecto ya cuente con la localidad creada en RHIN y Seguridad Corporativa, en caso de no contar con la información, pide a soporte Reclu el asesoramiento para consultar esta información, en caso de que la localidad sea nueva, favor de revisar el siguiente manual .'),
('K', 22, 'No visualizo candidatos en vacantes (CLIENTE ENTREVISTADOR)', 'En caso de que no se visualicen contactos en una vacante, primero debemos asegurarnos de que este haya pasado por los filtros siguientes: Haber sido habilitado a ATC por reclutador Haber recibido la notificación de que ATC te ha habilitado un candidato como el ejemplo de este enlace En caso de que no se cumplan estos casos, favor de pedir retroalimentación al equipo de ATC o Autorizador designado.'),
('K', 23, 'No puedo Programar una Entrevista con Candidato (CLIENTE ENTREVISTADOR)', 'Si se llega a presentar el caso donde no se pueda asignar una entrevista a un candidato, debemos verificar los siguientes puntos: Que la entrevista generada no sea en el día actual en la que la estes programando Haberle asignado a el candidato el estatus de viable en la primer retroalimentación En caso de haber dado un estatus de Descartado o No Localizado verificar que se haya revertido el estatus correctamente Después de haber validado estos puntos y sigas sin poder generar la entrevista favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 24, 'No se visualiza candidatos para retro final (CLIENTE ENTREVISTADOR)', 'Cuando no se visualizan candidatos en una solicitud en el proceso de retro final debemos validar los siguientes puntos: Haber brindado estatus Viable a uno o más candidatos Que ATC haya aceptado la entrevista del candidato generada por Cliente En caso de que no se cumplan estos casos favor de pedir retroalimentación al equipo de ATC designado.'),
('K', 25, 'No puedo asignar Estatus Viable en Retro Final (CLIENTE ENTREVISTADOR)', 'En caso de no poder dar Estatus Viable a un Candidato en la retro final Cliente debemos validar que El candidato no cuente con otro estatus, (No Localizado o Descartado) por parte de Reclutador o ATC Que la vacante no se encuentre pausada o cancelada Que ATC haya aceptado la entrevista del candidato En caso de que no se cumplan estos casos favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 26, 'No puedo asignar Estatus Seleccionado en Retro Final (CLIENTE ENTREVISTADOR)', 'En caso de no poder dar Estatus Seleccionado a un Candidato en la retro final Cliente debemos validar que El candidato no cuente con otro estatus, (No Localizado o Descartado) en la Retro Final Que la vacante no se encuentre pausada o cancelada Que no exista otro candidato con el mismo estatus de Seleccionado, Pendiente de Confirmación a Punto de Venta En caso de que no se cumplan estos casos favor de revisar el siguiente archivo , si se sigue presentando el problema favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 27, 'No puedo dar primera retroalimentación a candidatos en vacantes sin Preguntas Técnicas (CLIENTE ENTREVISTADOR)', 'En caso de no poder dar primera retroalimentación a un candidato debemos validar que: La vacante haya sido creada sin el flujo de trabajo de preguntas técnicas candidato Haber recibido la notificación Habilitación Candidato Cliente por correo, esto quiere decir que ATC nos ha habilitado un candidato viable En caso de que se cumplan estos casos te invitamos a revisar el siguiente archivo de muestra, si se sigue presentando el problema, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 28, 'Material de Apoyo CLIENTE ENTREVISTADOR', 'En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro MANUAL DE ROL CLIENTE ENTREVISTADOR o con soporte Reclu. Ana Karen Barreto Rodríguez ana.barreto@it-strategy.mx 55 5415 8985 Axell Sosa Rodríguez Axell.sosa@it-strategy.mx 55 1814 7476 Juan Carlos Barrios Calbillo juan.barrios@it-strategy.mx 55 1911 4644 soporte.reclutamiento@3ti.mx'),
('K', 29, 'No se visualiza id de vacante (SOLICITANTE)', 'Si después de crear una solicitud esta no es visible desde tu tablero de rol Solicitante https://reclutamiento.tiii.mx/Solicitudes-Solicitante es muy probable que uno de los siguientes puntos no se esté cumpliendo Que la vacante no haya sido autorizada por el Autorizador asignado al proyecto Que la vacante no haya sido validada por el usuario Atención a Clientes asignado al proyecto En caso de que ya hayas validado con ATC o el autorizador del proyecto, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 30, 'No se muestra listado de Plantillas (SOLICITANTE)', 'Al momento de crear una solicitud suele haber ocasiones en las que después de seleccionar un proyecto, este no arroje el listado de plantillas correspondientes al proyecto, este error puede llega a suceder por cambios en la configuración de una plantilla, para validar que no se trate de un error, ingresa a https://reclutamiento.tiii.mx/Plantillas y revisa que se encuentre en tu tablero la plantilla solicitada, como se muestra en este enlace , en caso de que se muestre favor de borrar caché y volver a intentar.'),
('K', 31, 'No aparece localidad en el desplegable (SOLICITANTE)', 'Para estos casos es importarte revisar que el proyecto ya cuente con la localidad creada en RHIN y Seguridad Corporativa, en caso de no contar con la información, pide a soporte Reclu el asesoramiento para consultar esta información, en caso de que la localidad sea nueva, favor de revisar el siguiente manual .'),
('K', 32, 'No aparece Supervisor en desplegable (SOLICITANTE)', 'Cuando no aparezca un Supervisor/Usuario el cual será el encargado de dar retro alimentación a Candidatos de una vacante, es importante validar que: El usuario tenga acceso a la plataforma y el rol de Cliente Entrevistador Que el usuario cuente con la marca asignada y/o proyecto En caso de que el usuario cumpla con estos puntos, favor de acercarse a soporte Reclu para soporte. En caso de ser usuario de nuevo ingreso, favor de leer el siguiente manual .'),
('K', 33, 'No se puede editar plantilla (SOLICITANTE)', 'Los permisos de plantillas van seguidos de la creación de una plantilla y su asignación a un proyecto en específico, antes de solicitar soporte, favor de revisar el archivo de este enlace , en caso de que se visualice la plantilla en tu tablero, pero no cuentes con permisos de edición, favor de leer el siguiente manual .'),
('K', 34, 'Material de Apoyo (SOLICITANTE)', 'En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro MANUAL DE ROL SOLICITANTE o con soporte Reclu. Ana Karen Barreto Rodríguez ana.barreto@it-strategy.mx 55 5415 8985 Axell Sosa Rodríguez Axell.sosa@it-strategy.mx 55 1814 7476 Juan Carlos Barrios Calbillo juan.barrios@it-strategy.mx 55 1911 4644 soporte.reclutamiento@3ti.mx'),
('K', 35, 'No se visualiza id de vacante (RECLUTADOR)', 'Si después de que ATC nos asigna una solicitud y esta no es visible desde tu tablero de rol Reclutador https://reclutamiento.tiii.mx/Solicitudes-Reclutador te invitamos a validar que: Revisar que tengamos la alerta de asignación como se muestra en este archivo Que la vacante se encuentre asignada correctamente a nuestro usuario Que nuestro usuario esté asignado a la marca correctamente en plataforma En caso de que ya hayas validado con ATC la información anterior y sigas presentando problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 36, 'No puedo publicar una vacante', 'En caso de que no puedas publicar una vacante, favor de validar: Si es una solicitud que cuenta con preguntas técnicas, debemos validar que las preguntas indispensables estén establecidas antes de la publicación, como se muestra en este archivo Si es una vacante sin preguntas técnicas debemos revisar que estemos debidamente asignados a la vacante por ATC En caso de contar con la alerta, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 37, 'No puedo postular un candidato desde mi reclu o Candidatos en Cartera', 'Si no es posible postular un candidato desde Mi Reclu o desde el módulo de Candidatos en cartera, debemos tener en cuenta que: La vacante no esté Pausada, Cancelada o Cerrada En el caso de postular desde candidatos en cartera, la vacante no debe estar en Proceso de autorización Proceso de asignación No publicadas Pausadas Canceladas Con candidato seleccionado a contratar En espera de confirmación de punto de venta Cerradas En caso de que la vacante no se cumpla con uno de los puntos anteriores, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 38, 'No puedo guardar Entrevista Profunda', 'Si no puedes guardar la entrevista profunda de un candidato, debes validar que: Hayas respondido tus comentarios sobre las responsabilidades de la solicitud y el candidato, ya que son campos obligatorios Que el candidato cuente con fuente de reclutamiento y reclutador responsable debidamente asignado En caso de que se cumplan con estos puntos, favor de solicitar apoyo a soporte Reclu a través de este potal para que se te brinde la atención necesaria.'),
('K', 39, 'No puedo habilitar preguntas técnicas de Candidato', 'Si no puedes guardar la entrevista profunda de un candidato, debes validar que: Hayas respondido tus comentarios sobre las responsabilidades de la solicitud y el candidato, ya que son campos obligatorios Que el candidato cuente con fuente de reclutamiento y reclutador responsable debidamente asignado En caso de que se cumplan con estos puntos, favor de solicitar apoyo a soporte Reclu a través de este potal para que se te brinde la atención necesaria.'),
('K', 40, 'No visualizo candidatos en vacantes (RECLUTADOR)', 'En caso de que no se visualicen candidatos en una vacante, primero debemos asegurarnos de: Que la vacante no haya sido reasignada de reclutador Que al entrar a detalle de la solicitud no se muestre una pantalla blanca, esto significa falta de privilegios para visualizar la marca En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 41, 'Dar de alta Candidatos desde rol Reclutador', 'Con la nueva actualización en las funciones del rol Reclutador se añadió el módulo de alta de candidatos, si no recuerdas cómo aquí te dejamos un pequeño archivo con los pasos a seguir. En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 42, 'No puedo dar primera retroalimentación a candidato sin Preguntas Técnicas', 'Con la actualización de las funciones de rol reclutador recuerda que para habilitar a un candidato con ATC debes realizar estos pasos: Revisar que la vacante no cuente con el flujo de trabajo de pregunta técnicas candidato Que se haya brindado la entrevista profunda al candidato y asignado fuente de reclutamiento o reclutador responsable dependiendo el método de reclutamiento Revisar que se visualice el botón Habilitar en la sección de Primera retroalimentación en el apartado Info Selección del candidato como se muestra en este archivo En caso de que tengas problemas, favor de solicitar apoyo a soporte Reclu a través de este portal para que se te brinde la atención necesaria.'),
('K', 43, 'Material de Apoyo RECLUTADOR', 'En caso de que alguna de tus dudas no haya sido aclarada, te invitamos a que revises nuestro MANUAL DE ROL RECLUTADOR o con soporte Reclu. Ana Karen Barreto Rodríguez ana.barreto@it-strategy.mx 55 5415 8985 Axell Sosa Rodríguez Axell.sosa@it-strategy.mx 55 1814 7476 Juan Carlos Barrios Calbillo juan.barrios@it-strategy.mx 55 1911 4644 soporte.reclutamiento@3ti.mx'),
('O', 1, 'TRIPLE I', 'Colina de Mocusari 33, Boulevares, 53140 Naucalpan de Juárez, Méx.\n(555) 308-0231\nhttps://www.triplei.mx/'),
('O', 2, 'TALENT GROUP', '(555) 308-0231\nhttps://www.triplei.mx/'),
('O', 3, 'IT-STRATEGY', ''),
('T', 23, 'SOL-RCL-9 Solicitud / Alta de Usuario', 'Solicitud / Alta de Usuario\nOPERACIONES\nDar retroalimentación a Candidatos\nJUAN BARRIOS\njuan@barrios.mx\nCLIENTE ENTREVISTADOR\nADVENTUM\nREGIÓN 3'),
('T', 25, 'CSI-PIP-9 Solicitud de revertir proceso en vacante', 'Solicitud de revertir proceso en vacante\nOPERACIONES\nPlataforma de Reclutamiento\nGoogle Chrome\n9072, 9073\nVersión. 71448\nSistema\nFLUJO DE TRABAJO\nSISTEMA\nSISTEMA\nINCIDENCIA / BUG'),
('T', 26, 'CSI-PIP-10 No sube info de candidato a Mi Reclu', 'No sube info de candidato a Mi Reclu\nOPERACIONES\nMi Reclu\nGoogle Chrome\n8747\nVersión. 05481'),
('T', 27, 'CSI-PIP-11 Solicitud de revertir proceso en vacante', 'Solicitud de revertir proceso en vacante\nN/A\nOPERACIONES\nPlataforma de Reclutamiento\nGoogle Chrome\n9072\nVersión. 71448\nUSUARIO'),
('T', 28, 'CSI-PIP-12 No puedo accesar a la plataforma', 'No puedo accesar a la plataforma\nN/A\nOPERACIONES\nPlataforma de Reclutamiento\nGoogle Chrome\nN/A\nVersión. 71448'),
('U', 1, 'osTicket Support', ' support@osticket.com'),
('U', 2, 'Juan Barrios', ' jcbarrios5222@gmail.com\njcbarrios5222@gmail.com'),
('U', 4, 'ALVAREZ HERNANDEZ JESSICA HATZIRI DE JESUS', '(562) 551-6025 jessica.alvarez@talent-group.mx\njessica.alvarez@talent-group.mx'),
('U', 5, 'ALVAREZ RAMIREZ JESUS', '(557) 500-2347 jesus.alvarez@talent-group.mx\njesus.alvarez@talent-group.mx'),
('U', 6, 'AMEZCUA HUERTA EVA MARIANA', '(555) 431-3047 eva.amezcua@talent-group.mx\neva.amezcua@talent-group.mx'),
('U', 7, 'CAMPERO BALTAZAR ILIANA CAROLINA', '(442) 226-5681 iliana.campero@talent-group.mx\niliana.campero@talent-group.mx'),
('U', 8, 'CASTILLO SERVIN JESSICA', '(553) 677-8903 jessica.castillo@talent-group.mx\njessica.castillo@talent-group.mx'),
('U', 9, 'CERECEDO PEREZ LUIS ALBERTO', '(442) 127-0360 luis.cerecedo@talent-group.mx\nluis.cerecedo@talent-group.mx'),
('U', 10, 'CERVANTES TOSCANO LEONARDO ISMAEL', '(556) 122-1813 leonardo.cervantes@talent-group.mx\nleonardo.cervantes@talent-group.mx'),
('U', 11, 'CHAVEZ IZQUIERDO NAYELLY', '(551) 384-9238 nayelly.chavez@talent-group.mx\nnayelly.chavez@talent-group.mx'),
('U', 12, 'CHAVIRA NUÑEZ ALEXIS JOSE GUADALUPE', '(554) 884-1688 alexis.chavira@talent-group.mx\nalexis.chavira@talent-group.mx'),
('U', 13, 'CISNEROS PEREZ LESLY MARLENE', ' lesly.cisneros@talent-group.mx\nlesly.cisneros@talent-group.mx'),
('U', 14, 'CORDERO HERRERA GUADALUPE SARAHI', '(554) 044-8202 guadalupe.cordero@talent-group.mx\nguadalupe.cordero@talent-group.mx'),
('U', 15, 'CORTES PEREZ ARMANDO ISIDRO', '(556) 122-1816 armando.cortes@talent-group.mx\narmando.cortes@talent-group.mx'),
('U', 16, 'COVARRUBIAS TERRAZAS RICARDO DANIEL', '(554) 944-7554 ricardo.covarrubias@talent-group.mx\nricardo.covarrubias@talent-group.mx'),
('U', 17, 'CRUZ GALICIA LAURA PAOLA', '(556) 122-1810 laura.cruz@talent-group.mx\nlaura.cruz@talent-group.mx'),
('U', 18, 'ESCALANTE VALENZUELA JAMILETH', '(554) 044-0051 jamileth.escalante@talent-group.mx\njamileth.escalante@talent-group.mx'),
('U', 19, 'FRANCO ENCARNACION ANA PAOLA', '(557) 969-5909 ana.franco@talent-group.mx\nana.franco@talent-group.mx'),
('U', 20, 'GAMIÑO BARAJAS ALEYDIS', ' aleydis.gamino@talent-group.mx\naleydis.gamino@talent-group.mx'),
('U', 21, 'GARCIA GARCIA ARELI', '(554) 533-4730 areli.garcia@talent-group.mx\nareli.garcia@talent-group.mx'),
('U', 22, 'GARCIA TORRES PEDRO', '(562) 551-6022 pedro.garcia@talent-group.mx\npedro.garcia@talent-group.mx'),
('U', 23, 'GARCIA VALDEZ ROSA', '(555) 455-3814 rosa.garcia@talent-group.mx\nrosa.garcia@talent-group.mx'),
('U', 24, 'GODINEZ JIMENEZ CINTHIA NOHEMI', '(686) 234-6318 cinthia.godinez@talent-group.mx\ncinthia.godinez@talent-group.mx'),
('U', 25, 'GOMEZ ALMAZAN JENNIFER', '(555) 452-6802 jennifer.almazan@talent-group.mx\njennifer.almazan@talent-group.mx'),
('U', 26, 'GONZALEZ CRUZ ANDREA', '(558) 027-4058 andrea.gonzalez@talent-group.mx\nandrea.gonzalez@talent-group.mx'),
('U', 27, 'GONZALEZ HERNANDEZ SURY SARAY', '(557) 455-3571 sury.gonzalez@talent-group.mx\nsury.gonzalez@talent-group.mx'),
('U', 28, 'GUDIÑO ORTIZ MARIA FERNANDA', ' maria.gudino@talent-group.mx\nmaria.gudino@talent-group.mx'),
('U', 29, 'GUERRERO BAUTISTA RICARDO', '(558) 010-9495 ricardo.guerrero@talent-group.mx\nricardo.guerrero@talent-group.mx'),
('U', 30, 'HEMER ARELLANO MARIO IVAN', '(551) 910-7827 ivan.hemer@talent-group.mx\nivan.hemer@talent-group.mx'),
('U', 31, 'HERNANDEZ DOMINGUEZ JAVIER', '(556) 122-1817 javier.hernandez@talent-group.mx\njavier.hernandez@talent-group.mx'),
('U', 32, 'HERNANDEZ GONZALEZ EDSON ANTONIO', '(555) 407-6288 edson.hernandez@talent-group.mx\nedson.hernandez@talent-group.mx'),
('U', 33, 'LAUREANO VALDOVINOS YESENIA', '(558) 573-3462 yesenia.laureano@talent-group.mx\nyesenia.laureano@talent-group.mx'),
('U', 34, 'Anallely Linaco', ' anallely.linaco@talent-group.mx'),
('U', 35, 'LOPEZ BRISEÑO DIANA PATRICIA', '(557) 932-3872 diana.lopez@talent-group.mx\ndiana.lopez@talent-group.mx'),
('U', 36, 'LOPEZ SAMPAYO GRISELDA MARLENE', '(556) 122-1812 griselda.lopez@talent-group.mx\ngriselda.lopez@talent-group.mx'),
('U', 37, 'LOPEZ ZAMUDIO DIANA', '(557) 919-1140 diana.zamudio@talent-group.mx\ndiana.zamudio@talent-group.mx'),
('U', 38, 'MENDOZA ISLAS SUSANA', '(331) 532-9200 susana.mendoza@talent-group.mx\nsusana.mendoza@talent-group.mx'),
('U', 39, 'MERA ESTRADA EDWIN ALEXIS', '(556) 122-1814 edwin.mera@talent-group.mx\nedwin.mera@talent-group.mx'),
('U', 40, 'MIRANDA SOTO SAMANTHA ELOISA', '(557) 908-6129 samantha.miranda@talent-group.mx\nsamantha.miranda@talent-group.mx'),
('U', 41, 'MOGUEL LOPEZ JUDITH', '(556) 116-3430 judith.moguel@talent-group.mx\njudith.moguel@talent-group.mx'),
('U', 42, 'MORALES ESCALANTE DANIELA', '(553) 069-3749 daniela.morales@talent-group.mx\ndaniela.morales@talent-group.mx'),
('U', 43, 'MORALES ESTRADA VANESSA JACQUELINE', ' vanessa.morales@talent-group.mx\nvanessa.morales@talent-group.mx'),
('U', 44, 'MUÑOZ HERNANDEZ JESSICA', '(558) 003-2239 jessica.munoz@talent-group.mx\njessica.munoz@talent-group.mx'),
('U', 45, 'NIETO RASGADO DANIEL ALEJANDRO', '(553) 224-1100 daniel.nieto@talent-group.mx\ndaniel.nieto@talent-group.mx'),
('U', 46, 'OBANDO SANCHEZ ANDREA GUADALUPE', '(553) 519-9928 andrea.obando@talent-group.mx\nandrea.obando@talent-group.mx'),
('U', 47, 'OCHOA ORTEGA LAURA DANIELA', '(551) 917-0531 laura.ochoa@talent-group.mx\nlaura.ochoa@talent-group.mx'),
('U', 48, 'OLMOS SANTIAGO ANGELES', '(554) 455-4031 angeles.olmos@talent-group.mx\nangeles.olmos@talent-group.mx'),
('U', 49, 'OLVERA TLAMANI BRENDA', '(553) 888-3629 brenda.olvera@talent-group.mx\nbrenda.olvera@talent-group.mx'),
('U', 50, 'OSORIO OSORIO YADIRA', '(442) 194-3562 yadira.osorio@talent-group.mx\nyadira.osorio@talent-group.mx'),
('U', 51, 'PERALTA HERNANDEZ CESAR', '(554) 188-6299 cesar.peralta@talent-group.mx\ncesar.peralta@talent-group.mx'),
('U', 52, 'PEREZ SANCHEZ RAFAEL', '(558) 029-2562 rafael.perez@talent-group.mx\nrafael.perez@talent-group.mx'),
('U', 53, 'PRADO GUZMAN ESTEFANY', '(551) 141-2282 estefany.prado@talent-group.mx\nestefany.prado@talent-group.mx'),
('U', 54, 'RAMIREZ GARCIA JEANNETTE ARACELI', ' jeannette.ramirez@talent-group.mx\njeannette.ramirez@talent-group.mx'),
('U', 55, 'REAL SILVA ESMERALDA', ' esmeralda.real@talent-group.mx\nesmeralda.real@talent-group.mx'),
('U', 56, 'RUIZ GONZALEZ EDGAR ALEJANDRO', '(558) 070-2501 edgar.ruiz@talent-group.mx\nedgar.ruiz@talent-group.mx'),
('U', 57, 'SALAZAR GATICA ALEJANDRA', '(551) 495-7064 alejandra.salazar@talent-group.mx\nalejandra.salazar@talent-group.mx'),
('U', 58, 'SOTO RAMIREZ ANA LETICIA', ' ana.soto@talent-group.mx\nana.soto@talent-group.mx'),
('U', 59, 'TAPIA VAZQUEZ PAOLA', '(551) 694-2838 paola.tapia@talent-group.mx\npaola.tapia@talent-group.mx'),
('U', 60, 'TOVAR GONZALEZ TANIA', '(558) 078-9578 tania.tovar@talent-group.mx\ntania.tovar@talent-group.mx'),
('U', 61, 'VAZQUEZ MARTINEZ JOVANI DANIEL', '(557) 858-6871 jovani.vazquez@talent-group.mx\njovani.vazquez@talent-group.mx'),
('U', 62, 'VEGA SANCHEZ ANAYELI', '(557) 932-3873 anayeli.vega@talent-group.mx\nanayeli.vega@talent-group.mx'),
('U', 63, 'VELAZCO GONZALEZ IRVIN ALEJANDRO', ' irvin.velazco@talent-group.mx\nirvin.velazco@talent-group.mx'),
('U', 64, 'YOSHIMOTO RUGERIO PABLO KAZUO', '(812) 153-6011 pablo.yoshimoto@talent-group.mx\npablo.yoshimoto@talent-group.mx'),
('U', 65, 'Ana Karen Barreto', ' ana.barreto@it-strategy.mx\nana.barreto@it-strategy.mx'),
('U', 66, 'Axell Sosa Rodriguez', ' axell.sosa@it-strategy.mx\naxell.sosa@it-strategy.mx'),
('U', 67, 'Juan Carlos Barrios Calbillo', ' juan.barrios@it-strategy.mx\njuan.barrios@it-strategy.mx'),
('U', 68, 'Usuario Demo', '(551) 911-4644 jbcalbillo@hotmail.com\njbcalbillo@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rcl_api_key`
--
ALTER TABLE `rcl_api_key`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apikey` (`apikey`),
  ADD KEY `ipaddr` (`ipaddr`);

--
-- Indices de la tabla `rcl_attachment`
--
ALTER TABLE `rcl_attachment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file-type` (`object_id`,`file_id`,`type`),
  ADD UNIQUE KEY `file_object` (`file_id`,`object_id`);

--
-- Indices de la tabla `rcl_audit`
--
ALTER TABLE `rcl_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `object_type` (`object_type`,`object_id`);

--
-- Indices de la tabla `rcl_canned_response`
--
ALTER TABLE `rcl_canned_response`
  ADD PRIMARY KEY (`canned_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `active` (`isenabled`);

--
-- Indices de la tabla `rcl_config`
--
ALTER TABLE `rcl_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `namespace` (`namespace`,`key`);

--
-- Indices de la tabla `rcl_content`
--
ALTER TABLE `rcl_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `rcl_department`
--
ALTER TABLE `rcl_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`pid`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `autoresp_email_id` (`autoresp_email_id`),
  ADD KEY `tpl_id` (`tpl_id`),
  ADD KEY `flags` (`flags`);

--
-- Indices de la tabla `rcl_draft`
--
ALTER TABLE `rcl_draft`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `namespace` (`namespace`);

--
-- Indices de la tabla `rcl_email`
--
ALTER TABLE `rcl_email`
  ADD PRIMARY KEY (`email_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indices de la tabla `rcl_email_account`
--
ALTER TABLE `rcl_email_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `rcl_email_template`
--
ALTER TABLE `rcl_email_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `template_lookup` (`tpl_id`,`code_name`);

--
-- Indices de la tabla `rcl_email_template_group`
--
ALTER TABLE `rcl_email_template_group`
  ADD PRIMARY KEY (`tpl_id`);

--
-- Indices de la tabla `rcl_event`
--
ALTER TABLE `rcl_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `rcl_faq`
--
ALTER TABLE `rcl_faq`
  ADD PRIMARY KEY (`faq_id`),
  ADD UNIQUE KEY `question` (`question`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `ispublished` (`ispublished`);

--
-- Indices de la tabla `rcl_faq_category`
--
ALTER TABLE `rcl_faq_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `ispublic` (`ispublic`);

--
-- Indices de la tabla `rcl_faq_topic`
--
ALTER TABLE `rcl_faq_topic`
  ADD PRIMARY KEY (`faq_id`,`topic_id`);

--
-- Indices de la tabla `rcl_file`
--
ALTER TABLE `rcl_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ft` (`ft`),
  ADD KEY `key` (`key`),
  ADD KEY `signature` (`signature`),
  ADD KEY `type` (`type`),
  ADD KEY `created` (`created`),
  ADD KEY `size` (`size`);

--
-- Indices de la tabla `rcl_file_chunk`
--
ALTER TABLE `rcl_file_chunk`
  ADD PRIMARY KEY (`file_id`,`chunk_id`);

--
-- Indices de la tabla `rcl_filter`
--
ALTER TABLE `rcl_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `email_id` (`email_id`);

--
-- Indices de la tabla `rcl_filter_action`
--
ALTER TABLE `rcl_filter_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_id` (`filter_id`);

--
-- Indices de la tabla `rcl_filter_rule`
--
ALTER TABLE `rcl_filter_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter` (`filter_id`,`what`,`how`,`val`),
  ADD KEY `filter_id` (`filter_id`);

--
-- Indices de la tabla `rcl_form`
--
ALTER TABLE `rcl_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `rcl_form_entry`
--
ALTER TABLE `rcl_form_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_lookup` (`object_type`,`object_id`);

--
-- Indices de la tabla `rcl_form_entry_values`
--
ALTER TABLE `rcl_form_entry_values`
  ADD PRIMARY KEY (`entry_id`,`field_id`);

--
-- Indices de la tabla `rcl_form_field`
--
ALTER TABLE `rcl_form_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `sort` (`sort`);

--
-- Indices de la tabla `rcl_group`
--
ALTER TABLE `rcl_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `rcl_help_topic`
--
ALTER TABLE `rcl_help_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_pid`),
  ADD KEY `topic_pid` (`topic_pid`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `staff_id` (`staff_id`,`team_id`),
  ADD KEY `sla_id` (`sla_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indices de la tabla `rcl_help_topic_form`
--
ALTER TABLE `rcl_help_topic_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic-form` (`topic_id`,`form_id`);

--
-- Indices de la tabla `rcl_list`
--
ALTER TABLE `rcl_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `rcl_list_items`
--
ALTER TABLE `rcl_list_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_item_lookup` (`list_id`);

--
-- Indices de la tabla `rcl_lock`
--
ALTER TABLE `rcl_lock`
  ADD PRIMARY KEY (`lock_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indices de la tabla `rcl_note`
--
ALTER TABLE `rcl_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ext_id` (`ext_id`);

--
-- Indices de la tabla `rcl_organization`
--
ALTER TABLE `rcl_organization`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rcl_organization__cdata`
--
ALTER TABLE `rcl_organization__cdata`
  ADD PRIMARY KEY (`org_id`);

--
-- Indices de la tabla `rcl_plugin`
--
ALTER TABLE `rcl_plugin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `install_path` (`install_path`);

--
-- Indices de la tabla `rcl_plugin_instance`
--
ALTER TABLE `rcl_plugin_instance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin_id` (`plugin_id`);

--
-- Indices de la tabla `rcl_queue`
--
ALTER TABLE `rcl_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indices de la tabla `rcl_queue_column`
--
ALTER TABLE `rcl_queue_column`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rcl_queue_columns`
--
ALTER TABLE `rcl_queue_columns`
  ADD PRIMARY KEY (`queue_id`,`column_id`,`staff_id`);

--
-- Indices de la tabla `rcl_queue_config`
--
ALTER TABLE `rcl_queue_config`
  ADD PRIMARY KEY (`queue_id`,`staff_id`);

--
-- Indices de la tabla `rcl_queue_export`
--
ALTER TABLE `rcl_queue_export`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_id` (`queue_id`);

--
-- Indices de la tabla `rcl_queue_sort`
--
ALTER TABLE `rcl_queue_sort`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rcl_queue_sorts`
--
ALTER TABLE `rcl_queue_sorts`
  ADD PRIMARY KEY (`queue_id`,`sort_id`);

--
-- Indices de la tabla `rcl_role`
--
ALTER TABLE `rcl_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `rcl_schedule`
--
ALTER TABLE `rcl_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rcl_schedule_entry`
--
ALTER TABLE `rcl_schedule_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `repeats` (`repeats`);

--
-- Indices de la tabla `rcl_sequence`
--
ALTER TABLE `rcl_sequence`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rcl_session`
--
ALTER TABLE `rcl_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `updated` (`session_updated`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `rcl_sla`
--
ALTER TABLE `rcl_sla`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `rcl_staff`
--
ALTER TABLE `rcl_staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `issuperuser` (`isadmin`),
  ADD KEY `isactive` (`isactive`),
  ADD KEY `onvacation` (`onvacation`);

--
-- Indices de la tabla `rcl_staff_dept_access`
--
ALTER TABLE `rcl_staff_dept_access`
  ADD PRIMARY KEY (`staff_id`,`dept_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indices de la tabla `rcl_syslog`
--
ALTER TABLE `rcl_syslog`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`);

--
-- Indices de la tabla `rcl_task`
--
ALTER TABLE `rcl_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `created` (`created`),
  ADD KEY `object` (`object_id`,`object_type`),
  ADD KEY `flags` (`flags`);

--
-- Indices de la tabla `rcl_task__cdata`
--
ALTER TABLE `rcl_task__cdata`
  ADD PRIMARY KEY (`task_id`);

--
-- Indices de la tabla `rcl_team`
--
ALTER TABLE `rcl_team`
  ADD PRIMARY KEY (`team_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indices de la tabla `rcl_team_member`
--
ALTER TABLE `rcl_team_member`
  ADD PRIMARY KEY (`team_id`,`staff_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indices de la tabla `rcl_thread`
--
ALTER TABLE `rcl_thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `object_type` (`object_type`);

--
-- Indices de la tabla `rcl_thread_collaborator`
--
ALTER TABLE `rcl_thread_collaborator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collab` (`thread_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `rcl_thread_entry`
--
ALTER TABLE `rcl_thread_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `type` (`type`);

--
-- Indices de la tabla `rcl_thread_entry_email`
--
ALTER TABLE `rcl_thread_entry_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_entry_id` (`thread_entry_id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `email_id` (`email_id`);

--
-- Indices de la tabla `rcl_thread_entry_merge`
--
ALTER TABLE `rcl_thread_entry_merge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_entry_id` (`thread_entry_id`);

--
-- Indices de la tabla `rcl_thread_event`
--
ALTER TABLE `rcl_thread_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_state` (`thread_id`,`event_id`,`timestamp`),
  ADD KEY `ticket_stats` (`timestamp`,`event_id`);

--
-- Indices de la tabla `rcl_thread_referral`
--
ALTER TABLE `rcl_thread_referral`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref` (`object_id`,`object_type`,`thread_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indices de la tabla `rcl_ticket`
--
ALTER TABLE `rcl_ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created` (`created`),
  ADD KEY `closed` (`closed`),
  ADD KEY `duedate` (`duedate`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `sla_id` (`sla_id`),
  ADD KEY `ticket_pid` (`ticket_pid`);

--
-- Indices de la tabla `rcl_ticket_priority`
--
ALTER TABLE `rcl_ticket_priority`
  ADD PRIMARY KEY (`priority_id`),
  ADD UNIQUE KEY `priority` (`priority`),
  ADD KEY `priority_urgency` (`priority_urgency`),
  ADD KEY `ispublic` (`ispublic`);

--
-- Indices de la tabla `rcl_ticket_status`
--
ALTER TABLE `rcl_ticket_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `state` (`state`);

--
-- Indices de la tabla `rcl_ticket__cdata`
--
ALTER TABLE `rcl_ticket__cdata`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indices de la tabla `rcl_translation`
--
ALTER TABLE `rcl_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`lang`),
  ADD KEY `object_hash` (`object_hash`);

--
-- Indices de la tabla `rcl_user`
--
ALTER TABLE `rcl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `default_email_id` (`default_email_id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `rcl_user_account`
--
ALTER TABLE `rcl_user_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `rcl_user_email`
--
ALTER TABLE `rcl_user_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`),
  ADD KEY `user_email_lookup` (`user_id`);

--
-- Indices de la tabla `rcl_user__cdata`
--
ALTER TABLE `rcl_user__cdata`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `rcl__search`
--
ALTER TABLE `rcl__search`
  ADD PRIMARY KEY (`object_type`,`object_id`);
ALTER TABLE `rcl__search` ADD FULLTEXT KEY `search` (`title`,`content`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rcl_api_key`
--
ALTER TABLE `rcl_api_key`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rcl_attachment`
--
ALTER TABLE `rcl_attachment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `rcl_audit`
--
ALTER TABLE `rcl_audit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1788;

--
-- AUTO_INCREMENT de la tabla `rcl_canned_response`
--
ALTER TABLE `rcl_canned_response`
  MODIFY `canned_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rcl_config`
--
ALTER TABLE `rcl_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `rcl_content`
--
ALTER TABLE `rcl_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rcl_department`
--
ALTER TABLE `rcl_department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rcl_draft`
--
ALTER TABLE `rcl_draft`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `rcl_email`
--
ALTER TABLE `rcl_email`
  MODIFY `email_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rcl_email_account`
--
ALTER TABLE `rcl_email_account`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rcl_email_template`
--
ALTER TABLE `rcl_email_template`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `rcl_email_template_group`
--
ALTER TABLE `rcl_email_template_group`
  MODIFY `tpl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rcl_event`
--
ALTER TABLE `rcl_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `rcl_faq`
--
ALTER TABLE `rcl_faq`
  MODIFY `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `rcl_faq_category`
--
ALTER TABLE `rcl_faq_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rcl_file`
--
ALTER TABLE `rcl_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rcl_filter`
--
ALTER TABLE `rcl_filter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rcl_filter_action`
--
ALTER TABLE `rcl_filter_action`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rcl_filter_rule`
--
ALTER TABLE `rcl_filter_rule`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rcl_form`
--
ALTER TABLE `rcl_form`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `rcl_form_entry`
--
ALTER TABLE `rcl_form_entry`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT de la tabla `rcl_form_field`
--
ALTER TABLE `rcl_form_field`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT de la tabla `rcl_group`
--
ALTER TABLE `rcl_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rcl_help_topic`
--
ALTER TABLE `rcl_help_topic`
  MODIFY `topic_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `rcl_help_topic_form`
--
ALTER TABLE `rcl_help_topic_form`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `rcl_list`
--
ALTER TABLE `rcl_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rcl_list_items`
--
ALTER TABLE `rcl_list_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `rcl_lock`
--
ALTER TABLE `rcl_lock`
  MODIFY `lock_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `rcl_note`
--
ALTER TABLE `rcl_note`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rcl_organization`
--
ALTER TABLE `rcl_organization`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rcl_plugin`
--
ALTER TABLE `rcl_plugin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rcl_plugin_instance`
--
ALTER TABLE `rcl_plugin_instance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rcl_queue`
--
ALTER TABLE `rcl_queue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `rcl_queue_column`
--
ALTER TABLE `rcl_queue_column`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `rcl_queue_export`
--
ALTER TABLE `rcl_queue_export`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `rcl_queue_sort`
--
ALTER TABLE `rcl_queue_sort`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rcl_role`
--
ALTER TABLE `rcl_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rcl_schedule`
--
ALTER TABLE `rcl_schedule`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rcl_schedule_entry`
--
ALTER TABLE `rcl_schedule_entry`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `rcl_sequence`
--
ALTER TABLE `rcl_sequence`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rcl_sla`
--
ALTER TABLE `rcl_sla`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rcl_staff`
--
ALTER TABLE `rcl_staff`
  MODIFY `staff_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rcl_syslog`
--
ALTER TABLE `rcl_syslog`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `rcl_task`
--
ALTER TABLE `rcl_task`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rcl_team`
--
ALTER TABLE `rcl_team`
  MODIFY `team_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rcl_thread`
--
ALTER TABLE `rcl_thread`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `rcl_thread_collaborator`
--
ALTER TABLE `rcl_thread_collaborator`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rcl_thread_entry`
--
ALTER TABLE `rcl_thread_entry`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `rcl_thread_entry_email`
--
ALTER TABLE `rcl_thread_entry_email`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rcl_thread_entry_merge`
--
ALTER TABLE `rcl_thread_entry_merge`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rcl_thread_event`
--
ALTER TABLE `rcl_thread_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `rcl_thread_referral`
--
ALTER TABLE `rcl_thread_referral`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `rcl_ticket`
--
ALTER TABLE `rcl_ticket`
  MODIFY `ticket_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `rcl_ticket_priority`
--
ALTER TABLE `rcl_ticket_priority`
  MODIFY `priority_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rcl_ticket_status`
--
ALTER TABLE `rcl_ticket_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `rcl_translation`
--
ALTER TABLE `rcl_translation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rcl_user`
--
ALTER TABLE `rcl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `rcl_user_account`
--
ALTER TABLE `rcl_user_account`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rcl_user_email`
--
ALTER TABLE `rcl_user_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
