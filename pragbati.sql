-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: paginas_pragbati_bd:3306
-- Tiempo de generación: 01-05-2026 a las 04:57:44
-- Versión del servidor: 11.8.5-MariaDB-ubu2404
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pragbati`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Jhaseft', 'jhasesaat@gmail.com', '$2y$12$JQ0sy.ZxMHDCPiLcrw1bQuy4Ti6IvkKALAzRBZYcgYhY44Bw5ZmUu', '2025-11-17 05:55:06', '2025-11-17 05:55:06'),
(2, 'crhis', 'cristofervera110@gmail.com', 'vera123', '2026-01-08 08:23:05', '2026-01-08 08:23:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`id`, `product_id`, `nombre`, `valor`, `created_at`, `updated_at`) VALUES
(2, 4, 'Cilindrada', '1,498 cc.', '2026-01-07 09:28:47', '2026-01-07 09:28:47'),
(3, 4, 'Combustible', 'Gasolina', '2026-01-07 09:28:47', '2026-01-07 09:28:47'),
(4, 2, 'Cilindradas', '2.378 cc.', '2026-01-07 13:32:50', '2026-01-08 03:43:10'),
(5, 2, 'Dirección', 'Asistida hidraúlicamente', '2026-01-07 13:33:06', '2026-01-07 13:33:06'),
(6, 2, 'Combustible\r\n', 'Gasolina', '2026-01-07 13:33:22', '2026-01-07 13:33:22'),
(7, 2, 'Capacidad de Tanque', '70 lts.', '2026-01-07 13:33:38', '2026-01-07 13:33:38'),
(9, 2, 'Capacidad de Carga', '1,050 kgs.', '2026-01-07 13:34:08', '2026-01-07 13:34:08'),
(10, 2, 'Peso Bruto', '2000 kg', '2026-01-08 03:35:56', '2026-01-08 03:35:56'),
(11, 8, 'Motor', 'Cummins ISGe.3-430', '2026-01-08 13:43:23', '2026-01-08 13:43:23'),
(12, 8, 'Torque', '2000 Nm @ (1000-1400 RPM)', '2026-01-08 13:43:36', '2026-01-08 13:43:36'),
(13, 8, 'Potencia', '430ps - 423 HP a 1900RPM', '2026-01-08 13:43:44', '2026-01-08 13:43:44'),
(14, 8, 'Transmisión', 'Mecánica 12JSDX240T', '2026-01-08 13:44:05', '2026-01-08 13:44:05'),
(15, 8, 'Cabina', 'Frontal, Con Camarote', '2026-01-08 13:44:13', '2026-01-08 13:44:13'),
(16, 8, 'Capacidad de Volumen', '15 m3', '2026-01-08 13:44:25', '2026-01-08 13:44:25'),
(17, 9, 'Motor', 'Cummins ISGe.3-430', '2026-01-08 15:04:21', '2026-01-08 15:04:21'),
(18, 9, 'Potencia', '430ps - 423 HP a 1900RPM', '2026-01-08 15:04:28', '2026-01-08 15:04:28'),
(19, 9, 'Torque', '2000 Nm @ (1000-1400 RPM)', '2026-01-08 15:04:35', '2026-01-08 15:04:35'),
(20, 9, 'Transmisión', 'Mecánica tipo fuller', '2026-01-08 15:04:51', '2026-01-08 15:04:51'),
(21, 9, 'Cabina', 'Frontal, Con Camarote', '2026-01-08 15:04:56', '2026-01-08 15:04:56'),
(22, 9, 'Capacidad de Volumen', '20m3', '2026-01-08 15:05:02', '2026-01-08 15:05:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `parent_id`, `image`) VALUES
(9, 'CAMIONETAS', 'camionetas', 'Camionetas 4×2 y 4×4', '2026-01-07 02:59:20', '2026-01-07 02:59:20', NULL, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767754938/ba29b60f-5e70-41d1-b606-8cd02f17f901.png'),
(10, 'CARGA LIGERA', 'carga-ligera', 'Minitruck 1,5 y 2 Ton', '2026-01-07 03:03:49', '2026-01-07 03:03:49', NULL, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767754997/f1dace02-2655-4e76-9381-c6fd15ec700a.png'),
(11, 'CARGA MEDIANA', 'carga-mediana', 'Auman EST-M', '2026-01-07 04:00:13', '2026-01-07 04:00:13', NULL, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767758406/2409b510-c0b5-4a10-a82e-e27d82f165d9.png'),
(13, 'TRACTO CAMIONES', 'tracto-camiones', 'Auman EST y EST-A', '2026-01-07 04:02:30', '2026-01-07 04:02:30', NULL, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767758542/7ddd8772-915b-4d6e-8a54-ce36af6453b3.png'),
(14, 'MINI TRUCK TM3 | 1.5 TON', 'mini-truck-tm3-1-ton', NULL, '2026-01-07 05:18:25', '2026-01-07 05:18:25', 10, NULL),
(15, 'TOYOTA', 'toyota', 'El mas duradero', '2026-01-07 06:46:09', '2026-01-07 06:46:09', 9, NULL),
(17, 'MINI TRUCK TM5 | 2 TON', 'mini-truck-tm5-2-ton', NULL, '2026-01-07 05:18:25', '2026-01-07 05:18:25', 10, NULL),
(18, 'MINIBUSES', 'minibuses', 'Un coche para hacer dinero', '2026-01-08 08:35:29', '2026-01-08 08:35:29', NULL, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767861326/categories/ftm7bdtu1kyw1oayt1at.jpg'),
(19, 'CARGA PESADA', 'carga-pesada', 'Volquetas y Mixers', '2026-01-08 13:40:27', '2026-01-08 13:40:27', NULL, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767879626/categories/fvaul4tozoiqbbd4sumo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_type`
--

CREATE TABLE `multimedia_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_empty` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `multimedia_type`
--

INSERT INTO `multimedia_type` (`id`, `name`, `is_empty`) VALUES
(1, 'General', 0),
(2, 'Galeria', 0),
(3, 'Interior', 0),
(4, 'Exterior', 0),
(5, 'Performance', 0),
(6, 'Seguridad', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `status_id` int(11) NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `longDescription` longtext DEFAULT NULL,
  `available` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `motor` varchar(100) DEFAULT NULL,
  `potencia` varchar(50) DEFAULT NULL,
  `transmision` varchar(50) DEFAULT NULL,
  `peso` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `longDescription`, `available`, `created_at`, `updated_at`, `motor`, `potencia`, `transmision`, `peso`) VALUES
(2, 9, 'TUNLAND E 4X4', 'Deja los obstáculos en el polvo', 'El Aumark S es el mejor compañero para tu negocio. Ideal para el trabajo en la ciudad, o para largas jornadas de trabajo en carretera.  Su diseño y tecnología están especialmente pensados para maximizar el desempeño en las rutas para un eficiente funcionamiento en el transporte.', 1, '2026-01-07 05:10:57', '2026-01-07 09:47:40', 'MOTOR 4G69', ' 134 hp a 5.250 RPM', 'TRANSMISIÓN Manual 5DY', 'CAPACIDAD DE CARGA 1 TON'),
(3, 9, 'TUNLAND G7 4×4', 'La mejor de todas', 'El Aumark S es el mejor compañero para tu negocio. Ideal para el trabajo en la ciudad, o para largas jornadas de trabajo en carretera.  Su diseño y tecnología están especialmente pensados para maximizar el desempeño en las rutas para un eficiente funcionamiento en el transporte.', 1, '2026-01-07 05:16:17', '2026-01-07 09:47:40', 'MOTOR 2.0 TURBO', 'Potencia neta 235hp/ Torque 360Nm', ' transmisión de potencia', 'PESO 1 TN'),
(4, 14, 'TM3  1.5 TON  CARROCERIA', 'El mejor compañero de tu negocio', 'El Aumark S es el mejor compañero para tu negocio. Ideal para el trabajo en la ciudad, o para largas jornadas de trabajo en carretera.  Su diseño y tecnología están especialmente pensados para maximizar el desempeño en las rutas para un eficiente funcionamiento en el transporte.', 1, '2026-01-07 05:19:56', '2026-01-07 16:12:25', 'MOTOR DAM15R', '103 HP a 6000RPM', 'TRANSMISIÓN Manual DAT18R', 'CAPACIDAD DE CARGA 1,5 TON'),
(5, 15, 'Totoya Supra', 'Rapidos y Furiosos', 'El Aumark S es el mejor compañero para tu negocio. Ideal para el trabajo en la ciudad, o para largas jornadas de trabajo en carretera.  Su diseño y tecnología están especialmente pensados para maximizar el desempeño en las rutas para un eficiente funcionamiento en el transporte.', 1, '2026-01-07 06:47:26', '2026-01-07 09:47:40', NULL, NULL, NULL, NULL),
(6, 17, 'TM5 | 2 TON CARROCERÍA\r\n\r\n', 'Más carga, más ganancia', 'El Aumark S es el mejor compañero para tu negocio. Ideal para el trabajo en la ciudad, o para largas jornadas de trabajo en carretera.  Su diseño y tecnología están especialmente pensados para maximizar el desempeño en las rutas para un eficiente funcionamiento en el transporte.', 1, '2026-01-07 05:19:56', '2026-01-07 09:47:41', 'MOTOR DAM15R', '103 HP a 6000RPM', 'TRANSMISIÓN Manual DAT18R', 'CAPACIDAD DE CARGA 1,5 TON'),
(7, 11, 'KING L', 'Minivan de lujo KINGO L con distancia entre ejes extralarga', 'Sobre la base del excelente modelo de la generación anterior, la furgoneta de lujo con batalla súper larga KINGO L amplía el espacio a 20 asientos y la potencia máxima (kW/rpm) es 102/4600-5000, 110/4800, 85/3800. , 110/3400 120/5000, 105/3600, 110/3400, estructura de carrocería monocasco, todos los aspectos pueden satisfacer sus necesidades de recepción de negocios y grupos.', 1, '2026-01-08 08:56:28', '2026-01-08 08:56:28', 'G4BA', '3110', '5 toneladas', '2150'),
(8, 19, 'VOLQUETA  AUMAN GTL 6X4', 'Se encargara fácilmente de los trabajos duros y especializados', 'El camión pesado de foton, su diseño y configuración es específico para un uso de trabajo pesado, se encarga fácilmente de los trabajos duros y especializados.', 1, '2026-01-08 13:42:20', '2026-01-08 13:42:20', 'MOTOR Cummins ISGe.3-430', '430ps - 423 HP a 1900RPM', 'TRANSMISIÓN Mecanica 12JSDX240T', 'CAPACIDAD DE VOLUMEN 15 M3'),
(9, 19, 'VOLQUETA  AUMAN EST 8X4', 'Se encargara fácilmente de los trabajos duros y especializados', 'El camión pesado de foton, su diseño y configuración es específico para un uso de trabajo pesado, se encarga fácilmente de los trabajos duros y especializados.', 1, '2026-01-08 15:02:58', '2026-01-08 15:02:58', 'MOTOR Cummins ISGe3 430', '430ps - 423 HP a 1900RPM', 'TRANSMISIÓN Mecánica tipo fuller', 'CAPACIDAD DE VOLUMEN 20m3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Talla', NULL, NULL),
(2, 'Color', NULL, NULL),
(3, 'Peso', NULL, NULL),
(4, 'Material', NULL, NULL),
(5, 'Capacidad', NULL, NULL),
(6, 'Longitud', NULL, NULL),
(7, 'Ancho', NULL, NULL),
(8, 'Altura', NULL, NULL),
(9, 'Estilo', NULL, NULL),
(10, 'Marca', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `attribute_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'XS', NULL, NULL),
(2, 1, 'S', NULL, NULL),
(3, 1, 'M', NULL, NULL),
(4, 1, 'L', NULL, NULL),
(5, 1, 'XL', NULL, NULL),
(6, 1, 'XXL', NULL, NULL),
(7, 2, 'Rojo', NULL, NULL),
(8, 2, 'Azul', NULL, NULL),
(9, 2, 'Verde', NULL, NULL),
(10, 2, 'Negro', NULL, NULL),
(11, 2, 'Blanco', NULL, NULL),
(12, 2, 'Amarillo', NULL, NULL),
(13, 2, 'Rosa', NULL, NULL),
(14, 3, '100g', NULL, NULL),
(15, 3, '250g', NULL, NULL),
(16, 3, '500g', NULL, NULL),
(17, 3, '1kg', NULL, NULL),
(18, 3, '2kg', NULL, NULL),
(19, 4, 'Algodón', NULL, NULL),
(20, 4, 'Poliéster', NULL, NULL),
(21, 4, 'Cuero', NULL, NULL),
(22, 4, 'Madera', NULL, NULL),
(23, 4, 'Plástico', NULL, NULL),
(24, 5, '250ml', NULL, NULL),
(25, 5, '500ml', NULL, NULL),
(26, 5, '1L', NULL, NULL),
(27, 5, '2L', NULL, NULL),
(28, 6, '10cm', NULL, NULL),
(29, 6, '20cm', NULL, NULL),
(30, 6, '30cm', NULL, NULL),
(31, 6, '50cm', NULL, NULL),
(32, 7, '5cm', NULL, NULL),
(33, 7, '10cm', NULL, NULL),
(34, 7, '15cm', NULL, NULL),
(35, 7, '20cm', NULL, NULL),
(36, 8, '5cm', NULL, NULL),
(37, 8, '10cm', NULL, NULL),
(38, 8, '15cm', NULL, NULL),
(39, 8, '20cm', NULL, NULL),
(40, 9, 'Moderno', NULL, NULL),
(41, 9, 'Clásico', NULL, NULL),
(42, 9, 'Deportivo', NULL, NULL),
(43, 9, 'Vintage', NULL, NULL),
(44, 10, 'Nike', NULL, NULL),
(45, 10, 'Adidas', NULL, NULL),
(46, 10, 'Puma', NULL, NULL),
(47, 10, 'Reebok', NULL, NULL),
(48, 10, 'Sony', NULL, NULL),
(49, 10, 'Samsung', NULL, NULL),
(58, 1, '4', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(59, 1, '6', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(60, 1, '8', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(61, 1, '10', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(62, 1, '12', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(63, 1, '14', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(64, 1, '16', '2025-12-15 16:52:25', '2025-12-15 16:52:25'),
(65, 1, '2XL', '2025-12-15 16:52:25', '2025-12-15 16:52:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_multimedia`
--

CREATE TABLE `product_multimedia` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `multimedia_type_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` enum('image','video') DEFAULT 'image',
  `sort_order` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Volcado de datos para la tabla `product_multimedia`
--

INSERT INTO `product_multimedia` (`id`, `product_id`, `multimedia_type_id`, `url`, `type`, `sort_order`, `created_at`, `updated_at`, `title`, `description`) VALUES
(3, 2, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767762809/75f87210-0fd4-4f24-8ca4-986614fbe641.png', 'image', 1, NULL, NULL, NULL, NULL),
(5, 4, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767763445/246d586c-6a0c-4945-a4e8-96bb028dce61.png', 'image', 1, NULL, NULL, NULL, NULL),
(6, 5, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767768486/f24cf5f5-e069-40bd-895f-0776cb941072.png', 'image', 1, NULL, NULL, NULL, NULL),
(7, 6, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767769678/533a609a-81ae-4669-a200-b057158caa8b.png', 'image', 1, NULL, NULL, NULL, NULL),
(13, 3, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767847576/products/3/lescycnhhr6z3lqgoa7h.png', 'image', 0, '2026-01-08 04:46:15', '2026-01-08 04:46:15', NULL, NULL),
(16, 2, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767848695/products/2/uvylskuyuo455j7twmtx.png', 'image', 0, '2026-01-08 05:04:54', '2026-01-08 05:04:54', NULL, NULL),
(18, 7, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767862591/products/7/whsbk7a107k0tkrorttx.jpg', 'image', 0, '2026-01-08 08:56:34', '2026-01-08 08:56:34', NULL, NULL),
(19, 7, 1, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767862593/products/7/h4ek2tlyukufkuvftegb.jpg', 'image', 0, '2026-01-08 08:56:36', '2026-01-08 08:56:36', NULL, NULL),
(20, 7, 3, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767862668/products/7/vyrlfpahkwd8mx6zjcvw.jpg', 'image', 0, '2026-01-08 08:57:51', '2026-01-08 08:57:51', NULL, NULL),
(21, 8, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767879740/products/8/zsx6mevdganpwucob8sk.png', 'image', 0, '2026-01-08 13:42:21', '2026-01-08 13:42:21', NULL, NULL),
(22, 8, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880017/products/8/tlda9iicdhy0kyn9wqrg.png', 'image', 0, '2026-01-08 13:46:58', '2026-01-08 13:46:58', NULL, NULL),
(23, 8, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880040/products/8/bqctudhivlx1swm1sz4b.png', 'image', 0, '2026-01-08 13:47:21', '2026-01-08 13:47:21', NULL, NULL),
(24, 8, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880058/products/8/zgaz3fryahljwozuevpm.png', 'image', 0, '2026-01-08 13:47:39', '2026-01-08 13:47:39', NULL, NULL),
(25, 8, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880077/products/8/j4wvjwutgxfpibsvc6ju.png', 'image', 0, '2026-01-08 13:47:57', '2026-01-08 13:47:57', NULL, NULL),
(26, 8, 3, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880141/products/8/av8wb7xyomlhoawalvgi.png', 'image', 0, '2026-01-08 13:49:02', '2026-01-08 13:49:02', NULL, NULL),
(27, 8, 3, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880160/products/8/q4vcrqd2zses8mjucs6y.png', 'image', 0, '2026-01-08 13:49:21', '2026-01-08 13:49:21', NULL, NULL),
(28, 8, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880196/products/8/fudl4rgomqjhtako6yno.png', 'image', 0, '2026-01-08 13:49:57', '2026-01-08 13:49:57', NULL, NULL),
(29, 8, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880295/products/8/tcqlzsmu5l0xjzb2uhhf.png', 'image', 0, '2026-01-08 13:51:36', '2026-01-08 13:51:36', NULL, NULL),
(30, 8, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880323/products/8/axqx6n5nabjo4kdwfps5.png', 'image', 0, '2026-01-08 13:52:06', '2026-01-08 13:52:06', NULL, NULL),
(31, 8, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880351/products/8/bfwwj5exp3jbexvocozw.png', 'image', 0, '2026-01-08 13:52:32', '2026-01-08 13:52:32', NULL, NULL),
(32, 8, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880510/products/8/tibie7q025ei3ct4csnz.png', 'image', 0, '2026-01-08 13:55:10', '2026-01-08 13:55:10', NULL, NULL),
(33, 8, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880527/products/8/lr2nfwovgf6jbofaapw6.png', 'image', 0, '2026-01-08 13:55:27', '2026-01-08 13:55:27', NULL, NULL),
(34, 8, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880587/products/8/bge3offvdu7ujwdrfvy1.png', 'image', 0, '2026-01-08 13:56:28', '2026-01-08 13:56:28', NULL, NULL),
(35, 8, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767880609/products/8/r3x7xgupdcxpfwmtqlln.png', 'image', 0, '2026-01-08 13:56:50', '2026-01-08 13:56:50', NULL, NULL),
(38, 8, 5, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767882519/products/8/os9ai2brt3nqbvcfeux5.png', 'image', 0, '2026-01-08 14:28:37', '2026-01-08 14:36:06', 'Motorss', 'CUMMINS ISG. TODA LA INNOVACIÓN Motor global para cargas pesadas El ISGe3-430, es un Motor Euro 3, tiene una cilindrada de 11,8 litros con un rango de potencia de 380 a 500 hp, genera un torque hasta 2300 Nm (1696 lb-ft) y además tiene un potente freno de motor iBrake 2.0 en las válvulas que genera hasta 400hp de potencia de frenado. Su tamaño compacto, con un peso reducido de 860 kg (1896 lb), ofrece una alta relación potencia-peso que es un 30% más alta que el promedio de motores con un rango de potencia similar.'),
(39, 8, 5, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767882922/products/8/jxika25dz9k9g9qsxvub.png', 'image', 0, '2026-01-08 14:35:20', '2026-01-08 14:36:13', 'Transmision', 'FAST GEAR Premium  Este equipo viene equipado con una transmisión de 12 velocidades sincronizadas, que entrega todo el control de la operación al conductor hasta en los camiones mas complicados. Viene equipada con salidas para toma fuerza con diferentes Torques para montar el equipo que necesite.  La transmision viene conectada a un eje doble corona a cubos tipo Mercedes Benz de alta calidad y durabilidad.'),
(40, 8, 6, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767883025/products/8/itwmvs8tsd6q8go8thrf.png', 'image', 0, '2026-01-08 14:37:03', '2026-01-08 14:37:03', 'Seguridad de Cabina', 'La Cabina GTL ya probada en el mercado, tiene todo el Confort que un conductor puede necesitar en largas jornadas de trabajo. tiene asiento con suspensión de aire para el conductor y viene equipada con 1 camarote para descanso.'),
(41, 8, 6, 'https://res.cloudinary.com/dnbklbswg/image/upload/v1767883063/products/8/s6fwqbetlmmigcsszgzk.png', 'image', 0, '2026-01-08 14:37:42', '2026-01-08 14:37:42', 'Seguridad de Frenado', 'Viene equipada con toda la seguridad de frenado internacional de la mano de la marca WABCO. Cuenta con Frenos de Motor en las válvulas, sistema de frenos 100% neumáticos, con bloqueador en el eje trasero.'),
(43, 9, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884624/products/9/enshk4h1gqlaowod3e1f.png', 'image', 0, '2026-01-08 15:03:44', '2026-01-08 15:03:44', NULL, NULL),
(44, 9, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884798/products/9/xiuxet7ie32bf67o8ijn.png', 'image', 0, '2026-01-08 15:06:39', '2026-01-08 15:06:39', NULL, NULL),
(45, 9, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884824/products/9/rdodvtvlw6d3oemwrfyi.png', 'image', 0, '2026-01-08 15:07:05', '2026-01-08 15:07:05', NULL, NULL),
(46, 9, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884838/products/9/o1puexds9nr7bdvb2lwd.png', 'image', 0, '2026-01-08 15:07:20', '2026-01-08 15:07:20', NULL, NULL),
(47, 9, 1, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884861/products/9/qisdp8kuocwttssrkdvj.png', 'image', 0, '2026-01-08 15:07:45', '2026-01-08 15:07:45', NULL, NULL),
(48, 9, 3, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884915/products/9/opbhhts1ft79rqy7pdgz.png', 'image', 0, '2026-01-08 15:08:36', '2026-01-08 15:08:36', NULL, NULL),
(49, 9, 3, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884935/products/9/a1rnrlffucbhlt2r1q9r.png', 'image', 0, '2026-01-08 15:08:56', '2026-01-08 15:08:56', NULL, NULL),
(50, 9, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884966/products/9/dzaad7pdalafnaqch6ws.png', 'image', 0, '2026-01-08 15:09:26', '2026-01-08 15:09:26', NULL, NULL),
(51, 9, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767884978/products/9/oouo16ihhpwcui08xzrd.png', 'image', 0, '2026-01-08 15:09:39', '2026-01-08 15:09:39', NULL, NULL),
(52, 9, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885026/products/9/azpe3blbzo5wlticcvbf.png', 'image', 0, '2026-01-08 15:10:27', '2026-01-08 15:10:27', NULL, NULL),
(53, 9, 4, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885041/products/9/ddlyd0m7erfr6w8klkjb.png', 'image', 0, '2026-01-08 15:10:42', '2026-01-08 15:10:42', NULL, NULL),
(54, 9, 5, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885071/products/9/rowhcqjwnjgitpiizdl1.png', 'image', 0, '2026-01-08 15:11:11', '2026-01-08 15:11:11', 'Motor', 'CUMMINS ISG. TODA LA INNOVACIÓN Motor global para cargas pesadas El ISGe3-430, es un Motor Euro 3, tiene una cilindrada de 11,8 litros con un rango de potencia de 380 a 500 hp, genera un torque hasta 2300 Nm (1696 lb-ft) y además tiene un potente freno de motor iBrake 2.0 en las válvulas que genera hasta 400hp de potencia de frenado. Su tamaño compacto, con un peso reducido de 860 kg (1896 lb), ofrece una alta relación potencia-peso que es un 30% más alta que el promedio de motores con un rango de potencia similar'),
(55, 9, 5, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885088/products/9/nspjfp2jcut7x3dexzfb.png', 'image', 0, '2026-01-08 15:11:29', '2026-01-08 15:11:29', 'Transmisión', 'FAST GEAR Premium Este equipo viene equipado con una transmisión de 12 velocidades sincronizadas, que entrega todo el control de la operación al conductor hasta en los camiones mas complicados. Viene equipada con salidas para toma fuerza con diferentes Torques para montar el equipo que necesite. La transmision viene conectada a un eje doble corona a cubos tipo Mercedes Benz de alta calidad y durabilidad.'),
(56, 9, 6, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885120/products/9/g5zalcnkrshsi7ojnnpu.png', 'image', 0, '2026-01-08 15:12:00', '2026-01-08 15:12:00', 'Seguridad de Cabina', 'La Nueva Cabina EST viene renovada en confort, tecnología y seguridad. Cumple los reglamentos mas rigurosos de seguridad de la Union Europea, cuidando la integridad del condutor y su acompañante. La norma ECE R-29-03 que es la prueba de impacto ante cualquier colisión.'),
(57, 9, 6, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885159/products/9/inkzg84fqfi3sobsw4n5.png', 'image', 0, '2026-01-08 15:12:39', '2026-01-08 15:12:39', 'Seguridad de Frenado', 'La Linea EST Viene equipada con toda la seguridad de frenado internacional de la mano de la marca WABCO. Cuenta con Frenos de Motor en las válvulas, sistema de frenos 100% neumáticos, asistentes de frenado ABS y ademas tiene control de patinaje ASR.'),
(58, 9, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885245/products/9/eakxhp1tpqoaftv5u4yg.png', 'image', 0, '2026-01-08 15:14:06', '2026-01-08 15:14:06', NULL, NULL),
(59, 9, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885278/products/9/zhxzup3skfurs12siykv.png', 'image', 0, '2026-01-08 15:14:38', '2026-01-08 15:14:38', NULL, NULL),
(60, 9, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885288/products/9/xpedk5y4kty8px6s2xqv.png', 'image', 0, '2026-01-08 15:14:48', '2026-01-08 15:14:48', NULL, NULL),
(61, 9, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885296/products/9/xy5upqlskydistqfdiea.png', 'image', 0, '2026-01-08 15:14:57', '2026-01-08 15:14:57', NULL, NULL),
(62, 9, 2, 'https://res.cloudinary.com/dhnbmu0gc/image/upload/v1767885312/products/9/sm58j6w5jiouweridvc8.png', 'image', 0, '2026-01-08 15:15:12', '2026-01-08 15:15:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_values`
--

CREATE TABLE `product_variant_values` (
  `id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0AIe7bRobFgkaYXpDDy2ZN56NO3zYFtkVWcePnDG', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1FrYm1mck5zc3pTS0h1UjdUUHdUZXhaZnhoRkR1Zm5HZ1lYMGJCQyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777450331),
('0naSkxdfA2IvWyAox9FGfGqnTh2pkwJh0GzbzFyD', NULL, '10.11.0.16', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakJXNGJxZzkwOHRFQ2RiTmF1bFZ3RXd6SFlBcmpweDRLYkdYQWtaWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vcHJvZHVjdHMvbWluaWJ1c2VzIjtzOjU6InJvdXRlIjtzOjE4OiJwcm9kdWN0cy5jYXRlZ29yaWEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777584527),
('26KCPnTqNE6t0IcdSNnuToucmsX1kbnQVSzw1XDC', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0x4WU9HS2s4b3hjYWpnZ1FGRFZGNEFka2w5MXpvM0x2eUtjQ3AzSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606373),
('27q0ryS2l34rS3OnzzF1YBqjaagdzs1XKdohaFhE', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmdMd3lTbEVwdXZXQ3dGZ3hGVFdpdTUySHVOMnpyN012NG84TXFIcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777570988),
('3hA0piEt4TqVykDyMHrnv07NBZ851BvYvzTYvDEK', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR20xYUJiemNvUGRxdWduUjBobnJHRWFpUW4zNFhkbjhpaUVIQUM2NSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777461170),
('4GtuHfKOP2W562D6CXV9NH4wiwKd4WMbULZwPGut', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjUyS2VTMFNxa1FXNGNTdDYxeXlJeE9lVEZRMEJtSWxTWllOVmNDYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777518708),
('50RLxto9desQx3bqEDgpwWtocdGTxvAeNuUQPVDS', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmt4RUJ5Ymd2UmVJTnhnTlFLYkpEOVBwWm5SUEZVY3ZHMGFjTW90OCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777565887),
('5Bp4bwCcgOELyqiiIYsleCVnMyr51Mm3mq0tOlyx', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjlnYkVza0JRZElsZklKb0V5b2RFWFFiSnpVVXVRZU05V3pHUmN6VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777479090),
('5ife9oRULPMK3HEY2s5LbHZCWZEugj5Hyy24RRg7', NULL, '10.11.0.16', 'Mozilla/5.0 (compatible; DotBot/1.2; +https://opensiteexplorer.org/dotbot; help@moz.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1EyOTZ1TmdDaG9kb29ESFp1MGFrT2plUld0R0xOS3ByVHFxNmQ5cyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777544929),
('5jNL0WhA9QCqfmxb7nmy3Y90SmBiP4FQPdZpMvgG', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVZDck1ZWnk0OFFISThYOTZKVFp4bjkycjkwdnM5emZYN2piZEhuYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vY2Fycml0by9kYXRhIjtzOjU6InJvdXRlIjtzOjEyOiJjYXJyaXRvLmRhdGEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777510320),
('64SQkpLsZr9OoVcjoHXHbvU53g8HjjTI0tLUBXKg', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEVTTkI3bVZXUTdOVHdIOFBXZnJNOTB5SjhtVVBXSlFGczR2a0JHOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777461547),
('6QXnhwu2YVWjeDrUlaSpdC7MeXUCJXtskTcyU9ix', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG82NVFJSHRFWWVnRTZoa3RoTzgwRW5rdW1HNVgyQzNJaXpDZ1RCMiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777502409),
('8hnJhFRAi228mL49EqFosjGb2ZlR0fJQO2TRH5Oe', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXAxUzZpRUhrRmtQRmp6ZEEwOGRxUVJ2eU5rdEhZU201VElFZGh0VSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777608891),
('9CVTVFQ9v7WcoyiOwkj3mcz66xM5ZJc1ez2nQHKM', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjlsbVFNUFhaVXV3N0JqYWFLWGlVeWJ5Zkc1T1dHWVhGSHJLNk1nZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606834),
('a5FciqAeDWMuuCi7w3KfCgchcwWzHi4wb2VQ5ZGg', NULL, '10.11.0.16', 'Mozilla/5.0 (l9scan/2.0.33a3a313231333a313368393a363031623; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFNKWXlxWXFucERuYzVqWXBQRU9GS2NhU0MyRkhnOTVZM2tOTWQ4MSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606327),
('AbkB4FcquKCo6PDoEtz0Z5GyRYvpxnUwXtdLyEvU', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:125.0) Gecko/20100101 Firefox/125.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2dHdlF4MDBHbXNJNEpqbzlZYzBsa0dGeU1oRzRiOWVqQ3RZcGJJVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606834),
('AH4ICGb9UuPpk27IuXs3dLsFfO5YiP9xpFSIYKJ9', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXlXc0s2bXlhQXd4WWxrSHY2N0lHVERVaVdkTTVlOWF4ekZ5cEc1NSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777476707),
('AtOmXPT6G6wvdFUTG4xikiHZFoxBwbgAr6PSCHDS', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzlTSnhFS2lteWpFOU1XZXdScnFFbDJJZFJTcUpRbTBrcEhlaUtRTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vcHJvZHVjdHMvdG0zLTEtNS10b24tY2Fycm9jZXJpYS80IjtzOjU6InJvdXRlIjtzOjEzOiJwcm9kdWN0cy5zaG93Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777502417),
('caqNnx1Q4C2HMlx1ybFVI23TNWKb77JAC9rD5e78', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXRyWGNiaW5ZSmlVM2pZdXpiNWd4NFVha0l1UVl2eDdRaUJCOGJ0NiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777609306),
('cCmV1TKCLLWgFcyvGHKaM4H3uOhfvZdgENr7TGrU', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWphNFlFbUxVb0N6eG1VOVpxcW1qM25QUVZ6UW1NQTVYYWJPa052NSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777610994),
('cecEpIkESc26nyOhJKrXe775HB6anv98Slao4E7h', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVFpQVhoQ1pnZGgxSlNoT2t4THkwb1V0WWdISnJoV2Y0b2tPeGVFeiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777458622),
('cKu6uKvj9hmEAx6FzPYxldny61Rkp862hIiaJ4bt', NULL, '10.11.0.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.7727.116 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDc3eVRNUVI5R0szNnlXNllWWDdRSjRIY2VaSXhId3hTVXpPS0tzbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777446941),
('d7vATUch2MOqYEMx94T6j2rxbHZfUiInYKSlBV4X', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm9rVm1nakFndW1TMGZmMDd5TTlySkMzQ01RRkl5VjNSbEtIWFFlSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606534),
('DH4KF0i7lYAsS0BBtNRyiw7oifw19JI8g6KMQ844', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2k5ZmlUemR2a3FVck9meVFwQm5keVN1S0NnaUJGTE1KdGJScmpFUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777610893),
('do3WRoy17ZNpYg3S40DyFPqBntGWlpfPEpcpT7Ke', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0IyWHNUOW0xUlZoVUFQZjdlV0d3djAwZjFQYUZqb2pQa2Vuamd4MSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777587628),
('dTpIU3vIaztsIP4NlQQkaFknamFKUyFBUVj448l5', NULL, '10.11.0.16', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.7680.177 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2Q4bTM2WHRubGVJcWF0VlVYNkJlT09paGtmUzRLcXhEeWNPdFlGSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vY2Fycml0by9kYXRhIjtzOjU6InJvdXRlIjtzOjEyOiJjYXJyaXRvLmRhdGEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777446965),
('DWIqfMMzoU4REdbLbthLAx616ujgit0wmG8l5L5X', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUszbWNvYnB1YUYxMDlUb2EzemRlMWo4c05nRUZvSTFVOUw4U2psNSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777523413),
('fBCOEp2EPDpf79lJDN5bwAcwclcf54yGMX7jkfYl', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/122.0.6261.89 Mobile/15E148 Safari/604', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVluNVppTTJHVnR6bWN4SFI3bDlwSXJrOGtQZFJHeHhhZUhtNHFaZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777568438),
('FqfinGkMEgy9uiE2Ef8lmr6epAWFbqFgT3ZGIJPT', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFJYTHpWZ3FMVExadkIxenN0T2RCSmJBQ1o4M2R1OENPdzlUaVBlZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777501772),
('FtOMZ5E9ld8T2wKyAtabbnKmzNZ53q13uWHjUcFq', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1JjYUVBVVl5b0p4N2F1dFd3TFpveTU0ZFlUZXFlR093bUtNNXFrNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777450329),
('G8ZbazsXrw1aIhHLBwUoB8bfagMRtubu5IehrPue', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2d1bkNlZTVVcXpFWEpCck5Ga0FkSzRFdHlxZm9MNXhMc2lFRHpnNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777588205),
('GRKkXLM6GeFTDAwkYGhbQSeykY7MMcbt8hB5wGPb', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT29oYTc3aFc4MWdaMEVJODB6UHlSVWFHc1hUYlhrT2doeVkwM1A3biI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777536105),
('gUP58w2gdpWgFQm986QBXDqdqXKBWUdxr9pVJ0aU', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTVzcWhZMG9LdUdUSkJZMGpMWTBQVEJ2WEJrSmJERkduYW9xNnEzSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NDQ6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vYWRtaW4vVmVudGFzIjt9fQ==', 1777606381),
('hac52JSGMVH6kTkMBQqXChNFnQGvGAmFGAGL4niZ', NULL, '10.11.0.16', 'Mozilla/5.0 (l9scan/2.0.33e27393e2431313e2838313; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzFRSVlFN3dqOG5aUmtxRDhEV1hvMEpvbHlKZlN4eGJKcm95MlFqNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777606363),
('hsYtirVRHZCTEc1SjqWEkIH4AVyIu9tz8iYQCkSt', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQm5UTk4yZDdwRzFFQkZra2VvM29pUVhrYURrdHk0Rnk1OVJraHFlQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777454156),
('HTuf67vAHYUD6dSgTAwb8XYrizxRvdv5YtgkIs33', NULL, '10.11.0.16', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ09uTVR5NHN0RHlnaDBmamdZMVVNRTJkaTJUTEkxekY2WWlWSkpZVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606320),
('HvfMSDnAhL8an3DMaNl0orBDZH3SIFgEtVbVVsBk', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3pGdVdyQ0VjSFdISjVQcXBOb0hyOWV1NUtmN21SMjB2dmpCa3RRZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vY2Fycml0by9kYXRhIjtzOjU6InJvdXRlIjtzOjEyOiJjYXJyaXRvLmRhdGEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777585070),
('Jobm1wFwPLytdLJsljGtZ3av4u8grSQPzNkZg9p1', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkF5SUxhMEc0VTFaa2dDUVlqczdibjBGdFBBVm9Dck8zS3dHYVhNTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777565573),
('l8sRhzeM5xdKzyA7DZXH3lqBQIPcufdDc8HNYP96', NULL, '10.11.0.16', 'User-Agent:Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHRLU3dybnhPaFd1aG14ZWZoWHlTeFRyRXlHbHpUSmdwTlpLTFNXciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777582006),
('lIhMAEtn3eBxbBrThkeskxTuT2Nh1Ows34X3gD4x', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUozVHAzWndHclBpaWVVekg2R1JUeEFyVWVsNElXd3ppZzl0THhUVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777464630),
('LK7juz3eMHSJBI0cnv6dTRvZIuUXi9jAIDn4Lhj3', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Googlebot/2.1; +http://www.google.com/bot.html) Chrome/146.0.7680.177 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmJ4RzNlS09MYmpiTEZISzM5Rmd3amJ5MUtZRFNOaWhwTll5aUQ0aCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vY2Fycml0by9kYXRhIjtzOjU6InJvdXRlIjtzOjEyOiJjYXJyaXRvLmRhdGEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777446965),
('LkoBruZXtUHslXh7NNVoo43r6eOSi0wq77N7AjE6', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEdqWXJ2Um5Xd2FiR3BuT0pVNXNocVhzR2VaTmRHV1ZwSlJkeGV1WSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777478793),
('MDtCZpTYkOtmQbE99ZpOvGweMZnPIDHdYYYnslcQ', NULL, '10.11.0.16', 'Mozilla/5.0 (l9scan/2.0.33a3a303231333a313368393a363031623; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFI5MVJqU2c3djVvbjJuNGRPZVVGZVpQNFJCMThydlE3U0RTU2R5aCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606327),
('MFQynqH6wlD13h1nt4dg9IEVsC2PJ6zdo193DSBU', NULL, '10.11.0.16', 'Mozilla/5.0 (l9scan/2.0.33e27393e2431313e2838313; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmRrY3VkZEZiTWVWeTBwQ0tkR2hrUzZUZFJxUFR5anEySzQxVE8wYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606327),
('mQnRjqTB4jbIhIVSpQY63KMCz6pg1U4xENxjUagG', NULL, '10.11.0.16', 'python-requests/2.32.5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0Zxd0R0aWh5MUV2b3VkdWNtUTJuTU9kUVY4bWJuRW5OZ2VkOElGVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777581305),
('mUV2x1d3zW9pMGr5ezEnHc86rEj9EegkSRl49kO0', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXIxUTNiaTM2Mlk3OHdvdDdjd05YSUxzcVFkOEtpTTJ1clhzT3J6ciI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777450330),
('NKcQz03c4T6VbawNPkJzTw6YPkRzCjmSDkmw271W', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWdlRDB3Yms4RGtkM01RenRvYldNRlZObWpsUzlpUkplMzBtbjVxMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777525174),
('nkxCug6CC97fB6oETN0nEA1reowSbReeSOkRPx1r', NULL, '10.11.0.16', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDI2c2Y5NVlSSkN6Q2E3NVhrV0ZackdVcHhUUUhHU0JtTTh4NXhuZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777510312),
('noJscFX8gfc101dOiuaE2sNoNY1IvjZ9m3nQTEe4', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2JMbUN2TTNKcFNOQkNreEdETE5tbDBsTmdROUhPZnJZNXNqUzFMZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606833),
('nR3eKotcFwqzmV0pi45e1KnQqHLMMfcCDRF2W475', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDljZUFZcUthVzJ5T2Rkd2FzZExscGlxT2J3clU3N3BTblJKUEtTTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777569922),
('oRHCDsTyYp87dQq2PLU8HSe7Rx2LuN8ldTBUai25', NULL, '10.11.0.16', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0JIQ1Uzc0I0YUN3andIcENpaXJSSjBUUlNEVE1QSDJrWkZ0bmJsUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606447),
('PfIekt7ieZ1wMvvGFqUzNnRmuuG4sQ58PPjOW2Vr', NULL, '10.11.0.16', 'Python/3.10 aiohttp/3.11.11', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTI3YkJQTlhHVmN0c1paUVZTaUd5QnA4YTZyNTcyMnprSUREa1I0ZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606379),
('pTGOX2uxJ0eh8ecJGVXjCJnk7xgqqap04ubxaWrJ', NULL, '10.11.0.16', 'curl/7.76.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEptb1plaU8xdndnaWx3NlpLS2tvWVRFTEUzY3dEZ2N0R1h2TWF2YSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777551418),
('Q46FPsQTIQFEXaSrOR4bHuRGvbPNiM1HFeMWE8zz', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamVteGxxQjE0OHI1S1dRUkNxNjNMVG1sNFBnRHpYUXFDdlpuT2VVRCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777501812),
('r9m0sbRXYXnpVC8Ysay2hKDm3wXgvJxaEpsdfu2D', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1E3dUt1NjcxUFc0TEZmVGlxdG1zc0p4eW1pZjFsdXlrd0pXd0ZTdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606325),
('rgoomeGGapx5K8yGgRcc1Lsqv7hpizoZBfRNgdK9', NULL, '10.11.0.16', 'Mozilla/5.0 (compatible; SecurityScanner/1.0)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0ZQR0pyeWp5Y2drOEZhNFE0QUtxMWliRWpXcTBmcmpHYzI0WHdiTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606834),
('RrW8XNzU5Llp2h2b9ClwhWBGg7pc0WmzGDoCDgVL', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkdndWU2aHg4eFdEQ0Y5NGZiNXRPMTFWc3pxSmZYU2d5dmtGMzhEdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777456800),
('rZWDuLEVHz5ft7RQ67HCJBNh4GpbigEd0sZvaV3R', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36/Nutch-1.21-SNAPSHOT', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3ZMTXdzU3BpbDN4RnZValZVSXdJdE5MQ1BuczNmU3BGNVZ0eUxNbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777504926),
('S4LryhPRZU1Isji3l38u9Kl9DaLo2TazpXcqMi3A', NULL, '10.11.0.16', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlZGN3I5R01pRVpnN21RdUxPR2VjeFNrekxOQVA3WUJGWnAzSVNkVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777606320),
('SF2MifkUE5T1PT9gJoYYbrrm6j73vVOXUZg0VKxK', NULL, '10.11.0.16', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFgyRm55OHVudDF2Z0ozdkcyd2RXQnFFUU1SaGdNcHVqMzRUZUxzViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777443530),
('SkSBiAb9GoCuCxIpJgHayQ0J7Rrh8gg9A9B1VKPR', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 920) like Gecko', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGhPeUFnN01zZkJyaWhxYlhMY1NxRGd3VmNqM0ZaM3VJRW1SZ1JWZiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777566079),
('t2dPyABtENWb92ttu2hCjxoSObJl2ct16ttdOhFJ', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnBQcDZnOTdsOVE5TGI5V2VEMkxvWTFCMEdib2lCTm42ZHl1RjMxUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777546176),
('ueOPGnkLJpXVyyV1fOQFPIvBwUPUgtuv036AMIFt', NULL, '10.11.0.16', 'quic-go-HTTP/3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ0hQWWF4d1FKR2VTc05rU0MxdnZJbDlzVkpJOTM1RHZ5cTladHVWciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1777590117),
('UHaUbSrwo2qL6EWcYNpxF33vJfZP97KP57FPU47F', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGxCdUZQR2ZMajBHaFZrcGZ4cFFpaVZYQzJSZjdVcFpOUWc2UnV6QiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777552843),
('vgcYwxsEBwl1fx3A3Ld4MyYaBv47suM6etS3l6Z7', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1RFWHc2UkZOdXVMMjljTjM0T1RNdW8zSDlpZTVJUDlBNEVrRnRtRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777445024),
('VJyP62ktScp66XpDu2who31kr4zdX0sG0IPlLcjA', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2V2QUZIZU1uTXRkd1FHOENKcHVIMVRmUEtXQUJNS00zbVZKZmdCaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777550703),
('vWHWhbzVkmLwRdBqZlQh5qRgkmJTpDZCFbOI5r4f', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVpoR0lEdjhtV1lPdGRLdlRXZlk5YTlndEZGazl3a0JzSTFLcDhyNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777546627),
('W5yCUwboLXOUgnbo7kxblqDg1TIywWTvGl0Cd7dY', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnVhWnB4ZFdiMEVGMVV5T3JuRVdObUlSM09VSll4Wmp5aFIyMFJxcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777444703),
('WH2FqT2bxrDm2xsPGx4r4yZLgbbV11iy5kA2HJxi', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXZvZUhSNmVFMlB0cWhGUXJzUUh1aU5CaTF6OXI4dlM0ZnRHUGQ1eiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777526213),
('x5DymvqyFiZO3OrksqxZ2N9on9mAkr5gs3sfQXVI', NULL, '10.11.0.16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW5aRE1lODVCSU1lNnJsNVR4QVZzN04yMlZxNXBMZWF3dVBRY0xjTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777487454),
('X7VSK1JO4EOZn3TpTB1A96rpngrgxvuH54K7juTX', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWxWQ1JreWJndTdHWGV1NFhldlp2aWxlUGlyVUxUSEJDNVpTYUh3dSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777588014),
('xA5qQpPlEaxQyptXk5jr0T66aEKW4C3XcaVOj4zN', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2s0S2F5WjRyTVRDWnBQTnZreW4zRVlzQXFFaWhQQXV6bEtLajB1RiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777541772),
('XDyGhzpl5pTwvKm39sYn1TpdWoZeCb7je93b9zNt', NULL, '10.11.0.16', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUNsdlIwQ2JxQVVJRWduSXcyRDlEVmxMZTBldHJxU05jR1lidFJPZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777529313),
('ySWAlCyOdqTUzmNrAykFSL0HxmFeWjJdmrvZMY8E', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYndLWEhUV21FZjdaZ2VDSWpwaTBBOW90ZmU0b3NUVVhRM1pEM21heiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20vY2Fycml0by9kYXRhIjtzOjU6InJvdXRlIjtzOjEyOiJjYXJyaXRvLmRhdGEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777585063),
('YzIOhpEiTgmIpQWgQuqZBigklAnz6JFdCIGnoUbr', NULL, '10.11.0.16', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjZMVFVWVURiTVVCeU1ZaEJTdVEySHlNYTJ5dGo0N1hYZXBuU3JQOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly93d3cucHJhZ2F0aW1vdG9yc2JvbGl2aWEuY29tIjtzOjU6InJvdXRlIjtzOjc6IndlbGNvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1777482992),
('ZAspdPBY7IkBewT5n8m0Aq2GDvQZT6oMZaVKh6At', NULL, '10.11.0.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2pwNmNVVWFzWG5LTWRnNWVqelpnNlpVdXg5WG1saFA3eGpBUXNVbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777460857),
('ZAUfXyBe7f5Vukq78eIjtXs2zdKSw22eRLrcfh4C', NULL, '10.11.0.16', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlRhWGpJZlZzN3dzWGlNSmtsTTZJZXJYNGpJZ2NSU0JqY1BFUEFZTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9wcmFnYXRpbW90b3JzYm9saXZpYS5jb20iO3M6NToicm91dGUiO3M6Nzoid2VsY29tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1777573302);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `reference` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_id` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `categories_parent_slug_unique` (`parent_id`,`slug`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `multimedia_type`
--
ALTER TABLE `multimedia_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indices de la tabla `product_multimedia`
--
ALTER TABLE `product_multimedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `idx_multimedia_type_id` (`multimedia_type_id`);

--
-- Indices de la tabla `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_id` (`variant_id`),
  ADD KEY `attribute_value_id` (`attribute_value_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multimedia_type`
--
ALTER TABLE `multimedia_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `product_multimedia`
--
ALTER TABLE `product_multimedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `product_variant_values`
--
ALTER TABLE `product_variant_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD CONSTRAINT `caracteristicas_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `order_statuses` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`id`);

--
-- Filtros para la tabla `product_multimedia`
--
ALTER TABLE `product_multimedia`
  ADD CONSTRAINT `product_multimedia_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_multimedia_ibfk_2` FOREIGN KEY (`multimedia_type_id`) REFERENCES `multimedia_type` (`id`);

--
-- Filtros para la tabla `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD CONSTRAINT `product_variant_values_ibfk_1` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`),
  ADD CONSTRAINT `product_variant_values_ibfk_2` FOREIGN KEY (`attribute_value_id`) REFERENCES `product_attribute_values` (`id`);

--
-- Filtros para la tabla `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
