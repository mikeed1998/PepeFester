-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2024 a las 06:17:20
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pepe_fester`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `menu_display` tinyint(1) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `user`, `email`, `password`, `role`, `menu_display`, `activo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@wozial.com', '$2a$10$4RkbKKmavc66IzEvXM6Ek.gH9H.aqsX9F4HWL75ts0ydOChZWvSKy', 1, 1, 1, '7bcbWneSubNyaE2pGrIcVCozYm8yAXH4dmNiQyaBOYKJuQxNGFQQdNWIMgQU', '2020-10-14 23:24:37', '2020-10-14 23:24:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrusels`
--

CREATE TABLE `carrusels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `orden` int(11) NOT NULL DEFAULT 666
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrusels`
--

INSERT INTO `carrusels` (`id`, `titulo`, `subtitulo`, `image`, `url`, `video`, `orden`) VALUES
(45, NULL, NULL, 'aBmNFdh4PLIVTBD5KCbLapbzfebHdI.png', NULL, NULL, 666),
(46, NULL, NULL, 'wGFhlfZIM8LaF18g2MwavkJ1iknL3x.png', NULL, NULL, 666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT 'Edit categoria',
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'categoría01.png',
  `parent` int(11) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `slug`, `image`, `parent`, `activo`, `orden`) VALUES
(10, 'Categoria 1', NULL, 'cQA2pT4Uz0CwJRnWTbSnQvMHGZ1yBp.png', 0, 1, 666),
(11, 'Categoria 2', NULL, 'OSSNRGFQfOPMp7tfCQtqlcHakiLFmz.png', 0, 1, 666),
(12, 'Categoria 3', NULL, 'VEgfUonk6WjK4EdgVnkTqJ5k7zLoCE.png', 0, 1, 666),
(13, 'Categoria 4', NULL, 'GByZzQdVlSWPZRkeYPek7j9n3csqMj.png', 0, 1, 666),
(14, 'categoria 5', NULL, 'kPDF8tQ8fLN2t7ESRt1MjAXVlZF7kU.png', 0, 1, 666),
(16, 'Alexis israel', NULL, 'HMU1Lq94XD10mVgkoRu58IeTgIJWmo.jpg', 0, 1, 666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_detalles`
--

CREATE TABLE `categoria_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `sub_descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `color` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `nombre`, `color`, `created_at`, `updated_at`) VALUES
(1, 'azul', '#0015ff', '2023-08-15 16:00:54', '2023-08-15 16:00:54'),
(2, 'rojo', '#ff0000', '2023-08-15 16:03:39', '2023-08-15 16:03:39'),
(3, 'amarillo', '#908711', '2023-08-15 21:13:34', '2023-08-15 21:13:34'),
(4, 'morado', '#aa00ff', '2023-08-15 23:30:50', '2023-08-15 23:30:50'),
(5, 'morado', '#9c27b0', '2023-09-06 22:05:24', '2023-09-06 22:05:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracions`
--

CREATE TABLE `configuracions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `prodspag` varchar(255) DEFAULT NULL,
  `paypalemail` varchar(255) DEFAULT NULL,
  `destinatario` varchar(255) DEFAULT NULL,
  `destinatario2` varchar(255) DEFAULT NULL,
  `remitente` varchar(255) DEFAULT NULL,
  `remitentepass` varchar(255) DEFAULT NULL,
  `remitentehost` varchar(255) DEFAULT NULL,
  `remitenteport` varchar(6) DEFAULT NULL,
  `remitenteseguridad` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `whatsapp2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `envio` varchar(255) DEFAULT NULL,
  `envioglobal` varchar(255) DEFAULT NULL,
  `iva` varchar(255) DEFAULT NULL,
  `incremento` varchar(255) DEFAULT NULL,
  `mapa` text DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracions`
--

INSERT INTO `configuracions` (`id`, `title`, `description`, `prodspag`, `paypalemail`, `destinatario`, `destinatario2`, `remitente`, `remitentepass`, `remitentehost`, `remitenteport`, `remitenteseguridad`, `telefono`, `whatsapp`, `whatsapp2`, `facebook`, `instagram`, `youtube`, `linkedin`, `envio`, `envioglobal`, `iva`, `incremento`, `mapa`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 'Pepe Fester', 'Descripcion del sitio.', NULL, NULL, 'michaelwozial@gmail.com', 'michaelwozial@outlook.com', 'pepe_fester_admin@proyectoswozial.com', '?a6VJe%KnJnt', 'mail.proyectoswozial.com', '465', NULL, '3333333333', '32323', '', 'https://www.facebook.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3735.26095032911!2d-100.3780338847383!3d20.57739830840845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d344c63af2b2af%3A0x8506d3bdeed8e510!2sAv.%20Luis%20Vega%20Monrroy%20901A%2C%20zona%20dos%20extendida%2C%20Plazas%20del%20Sol%201ra%20Secc%2C%2076099%20Santiago%20de%20Quer%C3%A9taro%2C%20Qro.!5e0!3m2!1ses-419!2smx!4v1635149990350!5m2!1ses-419!2smx\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Avenida Lapizlazuli 2074 int3. Residencial Victoria, Guadalajara, Jalisco, México.', NULL, '2023-11-18 02:17:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `numext` varchar(255) DEFAULT NULL,
  `numint` varchar(255) DEFAULT NULL,
  `entrecalles` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `cp` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `estado_code` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT 'Mexico',
  `favorito` tinyint(1) DEFAULT NULL,
  `user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`id`, `alias`, `calle`, `numext`, `numint`, `entrecalles`, `colonia`, `cp`, `municipio`, `estado`, `estado_code`, `pais`, `favorito`, `user`, `created_at`, `updated_at`) VALUES
(1, 'Alexis Garcia R', 'Faro faro', '3016', NULL, 'Arrecife y lapizlazuli', 'Satnta Eduwiges', '44580', 'Guadalajara', 'Jalisco', NULL, 'Mexico', NULL, 4, '2023-08-18 14:32:46', '2023-09-06 22:12:02'),
(2, 'Jesus R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mexico', NULL, 7, '2023-08-21 13:10:52', '2023-08-21 13:11:01'),
(3, 'Abel', 'Cordillera', '1313', NULL, 'Perla', 'Independencia', '4440', 'Guadalajara', 'Jalisco', NULL, 'Mexico', NULL, 8, '2023-08-23 23:35:09', '2023-08-23 23:42:06'),
(4, 'Michael', 'Av. Siempre viva', '23', '22', 'uno y dos', 'bonita', '44344', 'Guadalajara', 'Jalisco', NULL, 'Mexico', NULL, 9, '2023-10-19 23:29:07', '2023-11-07 22:56:37'),
(5, 'Wozial', 'Av. Lapizlazuli', '2074', '3', 'Av. Esmeralda y Perla', 'Victoria', '33224', 'Guadalajara', 'Jalisco', NULL, 'Mexico', NULL, 10, '2023-12-12 20:25:48', '2023-12-12 20:27:54'),
(6, 'A', 'c', '12', '33333333535454', 'ee', 'ina', '11223', 'aa', 'a', NULL, 'Mexico', NULL, 11, '2023-12-13 02:29:52', '2023-12-13 02:41:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elementos`
--

CREATE TABLE `elementos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `elemento` varchar(255) NOT NULL,
  `texto` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contenido` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `seccion` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `elementos`
--

INSERT INTO `elementos` (`id`, `elemento`, `texto`, `imagen`, `url`, `contenido`, `activo`, `orden`, `seccion`) VALUES
(58, 'fester logo', NULL, 'LAqH3g7AaRNrk3rtkTzA0Mq9TnZvib.png', NULL, 1, 1, 666, 1),
(59, 'fester imagen', NULL, 'wOSsOekkSZRADeST4DuGzMGycKiIRd.png', NULL, 1, 1, 666, 1),
(60, 'fester titulo', 'SERVICIOS DE APLICACIÓN', NULL, NULL, 0, 1, 666, 1),
(61, 'fester texto', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iusto laboriosam consectetur doloremque. Architecto quae fugiat in assumenda corrupti accusamus nobis eveniet animi. Ut dolores quidem, veniam dolore voluptate eveniet delectus beatae atque rem sapiente temporibus nemo reprehenderitex explicabo provident.', NULL, NULL, 0, 1, 666, 1),
(64, 'contacto texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam sit earum unde aspernatur optio, ipsum nesciunt! Molestias, inventore? Error, minima.3233fd\n                            22', NULL, NULL, 0, 1, 666, 1),
(65, 'tienda', NULL, NULL, NULL, 0, 1, 666, 2),
(66, 'proyectos texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam sit earum unde aspernatur optio, ipsum nesciunt! Molestias, inventore? Error, minima.ds', NULL, NULL, 0, 1, 666, 3),
(67, 'contacto texto', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Asperiores qui sint alias nostrum, voluptatibus nisi!', NULL, NULL, 0, 1, 666, 4),
(68, 'contacto correo', NULL, 'zo4ktx3KsO6Ml6dyDqOqxJizxzTGwc.png', NULL, 0, 1, 666, 1),
(69, 'contacto direccion', NULL, NULL, NULL, 0, 1, 666, 4),
(70, 'contacto telefono', NULL, NULL, NULL, 0, 1, 666, 4),
(71, 'contacto whatsapp', NULL, NULL, NULL, 0, 1, 666, 4),
(72, 'contacto facebook', NULL, NULL, NULL, 0, 1, 666, 4),
(73, 'contacto instagram', NULL, NULL, NULL, 0, 1, 666, 4),
(74, 'contacto mapa', NULL, NULL, NULL, 0, 1, 666, 4),
(75, 'soluciones texto', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', NULL, NULL, 0, 1, 666, 5),
(76, 'punto de venta texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto explicabo numquam ipsam quia molestiae veritatis eum corporis hic eos delectus?s', NULL, NULL, 0, 1, 666, 6),
(77, 'subdistribuidor portada', NULL, 'U4hx8dJdznPrdSRVdGECy6tGJpMrCD.png', NULL, 1, 1, 666, 7),
(78, 'subdistribuidor texto', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iusto laboriosam consectetur doloremque. Architecto quae fugiat in assumenda corrupti accusamus nobis eveniet animi. Ut dolores quidem, veniam dolore voluptate eveniet delectus beatae atque rem sapiente temporibus nemo reprehenderit quibusdam consequuntur nam accusamus autem maxime error! Corrupti dicta velit ex explicabo provident.dfs22', NULL, NULL, 0, 1, 666, 7),
(79, 'nosotros portada', NULL, 'uyCA6lDTT5Ild7JLpBpmMlJX1A9KAR.png', NULL, 1, 1, 666, 8),
(80, 'nosotros texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, non! Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam impedit laudantium animi deserunt ullam alias aperiam, amet, consequatur suscipit id quae iusto sint quam explicabo ut modi libero. Recusandae est numquam corporis saepe repellat sunt, tenetur culpa quis suscipit nesciunt quod esse quam facilis ipsam quaerat laudantium, libero consequatur modi.1', NULL, NULL, 0, 1, 666, 8),
(83, 'Misión - icono', NULL, 'kjGnbokJlWuQ2mj1gVENGIEGqIVnay.png', NULL, 1, 1, 666, 8),
(84, 'Misión - Imagen', NULL, 'WQofY0ZBhqLziJrvV5X7y9OFEbENO6.png', NULL, 1, 1, 666, 8),
(85, 'Misión - Titulo', 'MISIÓN1', NULL, NULL, 0, 1, 666, 8),
(86, 'Misión - Texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in reprehenderit ipsam aliquid, aut consequuntur officia perferendis quod eaque dignissimos!1', NULL, NULL, 0, 1, 666, 8),
(87, 'Valores - Icono', NULL, 'htgjl0hRuGIBXzbyuJpAPp09xLvyNb.png', NULL, 1, 1, 666, 8),
(88, 'Valores - Imagen', NULL, 'wzJzSr95yfk6M05IVRunrwayjHbat7.png', NULL, 1, 1, 666, 8),
(89, 'Valores - Titulo', 'VALORES1', NULL, NULL, 0, 1, 666, 8),
(90, 'Valores - Texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in reprehenderit ipsam aliquid, aut consequuntur officia perferendis quod eaque dignissimos!1', NULL, NULL, 0, 1, 666, 8),
(91, 'Visión - Icono', NULL, '21UKIHPonc3V6NT7eIUdLR16YFYHSP.png', NULL, 1, 1, 666, 8),
(92, 'Visión - Imagen', NULL, 'v4OuWWMXjII7oOh8StCzRQWqWQH3gb.png', NULL, 1, 1, 666, 8),
(93, 'Visión - Titulo', 'VISIÓN1', '', NULL, 0, 1, 666, 8),
(94, 'Visión - Texto', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in reprehenderit ipsam aliquid, aut consequuntur officia perferendis quod eaque dignissimos!1', NULL, NULL, 0, 1, 666, 8),
(95, 'nosotros portada 2', NULL, 'UZskMR6bwbdUaquZ7EWiblPunr097y.png', NULL, 1, 1, 666, 8),
(96, 'nosotros texto 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, non! Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam impedit laudantium animi deserunt ullam alias aperiam, amet, consequatur suscipit id quae iusto sint quam explicabo ut modi libero. Recusandae est numquam corporis saepe repellat sunt, tenetur culpa quis suscipit nesciunt quod esse quam facilis ipsam quaerat laudantium, libero consequatur modi.1', NULL, NULL, 0, 1, 666, 8),
(97, 'contacto imagen', NULL, '1VPwrDgZkWDUNzHw0t6UiKbqUNpiRu.png', NULL, 1, 1, 666, 4),
(98, 'Contacto Imagen Home', NULL, 'cZw2NtUhMj13D71FZCcQ9bz9EGh8xl.png', NULL, 1, 1, 666, 1),
(99, 'mapa contacto', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16761.18441515513!2d-103.43609324626344!3d20.664317983074593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8428aea94a0b5af5%3A0x9638b3c7e65a7b39!2sMetropolitano%2C%20P.%C2%BA%20del%20Sereno%2C%20Parque%20Sereno%2C%20Rinconada%20del%20Parque%2C%2045030%20Zapopan%2C%20Jal.!5e0!3m2!1ses-419!2smx!4v1699368099741!5m2!1ses-419!2smx', NULL, NULL, 0, 1, 666, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `inicio` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `imagen`, `titulo`, `subtitulo`, `descripcion`, `whatsapp`, `facebook`, `instagram`, `inicio`, `activo`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'E3KevLhtepFk8skHlpXCq62nuDTp5d.png', 'Soy Alejandra', 'Acesor Profecional', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam numquam modi quibusdam repellat exercitationem laborum dolorem eum fugit mollitia ad?a', NULL, NULL, NULL, 0, 1, 666, NULL, NULL),
(2, 'imagen_04.png', 'Soy Alejandra', 'Acesor Profecional', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam numquam modi quibusdam repellat exercitationem laborum dolorem eum fugit mollitia ad?', NULL, NULL, NULL, 0, 1, 666, NULL, NULL),
(3, 'imagen_04.png', 'Soy Alejandra', 'Acesor Profecionall', 'Lorem ipsum dolor sit, amet aconsectetur adipisicing elit. Ullam numquam modi quibusdam repellat exercitationem laborum dolorem eum fugit mollitia ad?', NULL, NULL, NULL, 0, 1, 666, NULL, NULL),
(4, 'imagen_04.png', 'Soy Alejandra', 'Acesor Profecional', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam numquam modi quibusdam repellat exercitationem laborum dolorem eum fugit mollitia ad?', NULL, NULL, NULL, 0, 1, 666, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `numext` varchar(255) DEFAULT NULL,
  `numint` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `cp` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `rfc`, `mail`, `razon_social`, `calle`, `numext`, `numint`, `colonia`, `cp`, `municipio`, `estado`, `user`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta` text NOT NULL,
  `orden` int(11) NOT NULL DEFAULT 666,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `faqs`
--

INSERT INTO `faqs` (`id`, `pregunta`, `respuesta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'primera', '<p>ddsssssssssssssss dsssssss</p>', 666, '2023-11-08 22:59:14', '2023-11-08 22:59:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icono` varchar(255) DEFAULT 'icono1.png',
  `titulo` varchar(255) DEFAULT 'Herramienta nueva',
  `descripcion` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `inicio` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`id`, `icono`, `titulo`, `descripcion`, `pdf`, `inicio`, `activo`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'icono1.png', 'Herramienta nuevaaaa', NULL, 'V8ZnWJGESHITlYcBGqEJ08IAz30Ygh.pdf', 0, 1, 666, NULL, NULL),
(2, 'icono1.png', 'Herramienta nuevaa', NULL, 'VqvDlymGErWHBxs0XkavmT0TOgZgMA.pdf', 0, 1, 666, NULL, NULL),
(3, 'icono1.png', 'Herramienta nuevaa', NULL, NULL, 0, 1, 666, NULL, NULL),
(4, 'icono1.png', 'Herramienta nueva', NULL, NULL, 0, 1, 666, NULL, NULL),
(5, 'icono1.png', 'Herramienta nueva', NULL, NULL, 0, 1, 666, NULL, NULL),
(6, 'icono1.png', 'Herramienta nueva', NULL, NULL, 0, 1, 666, NULL, NULL),
(7, 'icono1.png', 'Herramienta nueva', NULL, NULL, 0, 1, 666, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logoequipos`
--

CREATE TABLE `logoequipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `inicio` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logoequipos`
--

INSERT INTO `logoequipos` (`id`, `imagen`, `titulo`, `inicio`, `activo`, `orden`, `created_at`, `updated_at`) VALUES
(3, 'uWiSPJiPILkxlePx6tCKRKVHYxrm44.png', NULL, 0, 1, 666, NULL, NULL),
(5, '7rQxMppmAbWWoiyjyJATdSi8M4VZkJ.png', NULL, 0, 1, 666, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_13_163806_create_admins_table', 1),
(5, '2020_10_14_181530_create_configuracions_table', 1),
(6, '2020_12_08_170359_create_carrusels_table', 1),
(7, '2020_12_09_193424_create_politicas_table', 1),
(8, '2020_12_16_000636_create_faqs_table', 1),
(9, '2021_02_02_175759_create_seccions_table', 1),
(10, '2021_02_02_175823_create_elementos_table', 1),
(13, '2021_10_27_064531_create_categorias_table', 2),
(19, '2021_04_01_184932_create_productos_table', 3),
(20, '2021_04_02_200200_create_productos_photos_table', 3),
(24, '2022_07_18_203052_create_vacantes_table', 4),
(28, '2022_10_26_181015_create_categoria_detalles_table', 5),
(29, '2023_03_27_183730_create_services_table', 5),
(30, '2023_03_28_063647_create_herramientas_table', 6),
(31, '2023_03_28_223646_create_equipos_table', 7),
(32, '2023_03_30_152644_create_logoequipos_table', 8),
(33, '2023_08_15_094644_create_colores_table', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` char(36) NOT NULL,
  `estatus` int(11) DEFAULT NULL,
  `guia` varchar(255) DEFAULT NULL,
  `linkguia` text DEFAULT NULL,
  `domicilio` bigint(20) UNSIGNED NOT NULL,
  `factura` tinyint(1) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double(9,2) NOT NULL,
  `iva` double(9,2) NOT NULL,
  `total` double(9,2) NOT NULL,
  `envio` double(9,2) DEFAULT NULL,
  `comprobante` varchar(255) DEFAULT NULL,
  `cupon` varchar(255) DEFAULT NULL,
  `cancelado` tinyint(1) DEFAULT 0,
  `usuario` bigint(20) UNSIGNED NOT NULL,
  `data` text DEFAULT NULL,
  `envia_resp` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `uid`, `estatus`, `guia`, `linkguia`, `domicilio`, `factura`, `cantidad`, `importe`, `iva`, `total`, `envio`, `comprobante`, `cupon`, `cancelado`, `usuario`, `data`, `envia_resp`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 'ord_2usQgqe8yg2U9FmY4', 1, NULL, NULL, 4, NULL, 1, 230.00, 0.00, 230.00, 100.00, NULL, NULL, 0, 9, '{\"22\":{\"id\":22,\"categoria\":7,\"nombre\":\"fdsdsdsdsdsdsdsds\",\"precio\":130,\"descripcion\":\"fdfdfdfdfdfdfd\",\"imagen\":\"XbLFzU2lqz3sRKQ6hXAf6LHFKY7CPu.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:00:03', '2023-11-08 22:00:03'),
(8, 'ord_2usQkhKVKr8wPcaaG', 1, NULL, NULL, 4, NULL, 1, 230.00, 0.00, 230.00, 100.00, NULL, NULL, 0, 9, '{\"22\":{\"id\":22,\"categoria\":7,\"nombre\":\"fdsdsdsdsdsdsdsds\",\"precio\":130,\"descripcion\":\"fdfdfdfdfdfdfd\",\"imagen\":\"XbLFzU2lqz3sRKQ6hXAf6LHFKY7CPu.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:05:05', '2023-11-08 22:05:05'),
(9, 'ord_2usQq9Peu97y1sppF', 1, NULL, NULL, 4, NULL, 1, 230.00, 0.00, 230.00, 100.00, NULL, NULL, 0, 9, '{\"22\":{\"id\":22,\"categoria\":7,\"nombre\":\"fdsdsdsdsdsdsdsds\",\"precio\":130,\"descripcion\":\"fdfdfdfdfdfdfd\",\"imagen\":\"XbLFzU2lqz3sRKQ6hXAf6LHFKY7CPu.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:10:56', '2023-11-08 22:10:56'),
(10, 'ord_2usQyTUfuKhaNEBgs', 1, NULL, NULL, 4, NULL, 1, 1120.22, 0.00, 1120.22, 100.00, NULL, NULL, 0, 9, '{\"24\":{\"id\":24,\"categoria\":8,\"nombre\":\"Proyecto 4\",\"precio\":1020.22,\"descripcion\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"imagen\":\"vk78Qwtc52ORM2Bo4wjQKWRQwPEXBY.jpg\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:21:48', '2023-11-08 22:21:48'),
(11, 'ord_2usR3q2JABp72mmpt', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:27:32', '2023-11-08 22:27:32'),
(12, 'ord_2usR4WFCDqmPFYAhS', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:28:26', '2023-11-08 22:28:26'),
(13, 'ord_2usR7ptL9hvsFvWCh', 1, NULL, NULL, 4, NULL, 1, 230.00, 0.00, 230.00, 100.00, NULL, NULL, 0, 9, '{\"22\":{\"id\":22,\"categoria\":7,\"nombre\":\"fdsdsdsdsdsdsdsds\",\"precio\":130,\"descripcion\":\"fdfdfdfdfdfdfd\",\"imagen\":\"XbLFzU2lqz3sRKQ6hXAf6LHFKY7CPu.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 22:32:47', '2023-11-08 22:32:47'),
(14, 'ord_2usS64AjM5TnvYpMA', 1, NULL, NULL, 4, NULL, 1, 330.23, 0.00, 330.23, 100.00, NULL, NULL, 0, 9, '{\"23\":{\"id\":23,\"categoria\":7,\"nombre\":\"producto 3\",\"precio\":230.23,\"descripcion\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"imagen\":\"U7VRTQm1rKb9nfvYHe4n8WyDXuMAxW.jpg\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:46:25', '2023-11-08 23:46:25'),
(15, 'ord_2usS82sQZRZPzFKAU', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:48:58', '2023-11-08 23:48:58'),
(16, 'ord_2usS8rAm3Dmt7rZSR', 1, NULL, NULL, 4, NULL, 1, 1120.22, 0.00, 1120.22, 100.00, NULL, NULL, 0, 9, '{\"24\":{\"id\":24,\"categoria\":8,\"nombre\":\"Proyecto 4\",\"precio\":1020.22,\"descripcion\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"imagen\":\"vk78Qwtc52ORM2Bo4wjQKWRQwPEXBY.jpg\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:50:03', '2023-11-08 23:50:03'),
(17, 'ord_2usSARm86rwPcSHgH', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:52:08', '2023-11-08 23:52:08'),
(18, 'ord_2usSBBGhKhnbbRWnv', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:53:06', '2023-11-08 23:53:06'),
(19, 'ord_2usSCTtDQm1BgsrkE', 1, NULL, NULL, 4, NULL, 1, 1120.22, 0.00, 1120.22, 100.00, NULL, NULL, 0, 9, '{\"24\":{\"id\":24,\"categoria\":8,\"nombre\":\"Proyecto 4\",\"precio\":1020.22,\"descripcion\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"imagen\":\"vk78Qwtc52ORM2Bo4wjQKWRQwPEXBY.jpg\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:54:47', '2023-11-08 23:54:47'),
(20, 'ord_2usSF7UJPGswjQ8Ls', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-08 23:58:16', '2023-11-08 23:58:16'),
(21, 'ord_2usSNTNceLXMYZR52', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:07:52', '2023-11-09 00:07:52'),
(22, 'ord_2usSPeT2vbQK9mzN6', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:09:26', '2023-11-09 00:09:26'),
(23, 'ord_2usSRnkMuXpMLz7Ea', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:12:13', '2023-11-09 00:12:13'),
(24, 'ord_2usST9sNwsPdFCxev', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:14:02', '2023-11-09 00:14:02'),
(25, 'ord_2usSUNk2w1RuJMqdN', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:15:38', '2023-11-09 00:15:38'),
(26, 'ord_2usSdtZrZgJDxRfPz', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:28:05', '2023-11-09 00:28:05'),
(27, 'ord_2usSepnGEiRbjrsDW', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:29:19', '2023-11-09 00:29:19'),
(28, 'ord_2usSgmnPQ8uvTVpQ6', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:31:53', '2023-11-09 00:31:53'),
(29, 'ord_2usShNrMEJXyCNCst', 1, NULL, NULL, 4, NULL, 2, 2580.44, 0.00, 2580.44, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":2}}', NULL, NULL, '2023-11-09 00:32:39', '2023-11-09 00:32:39'),
(30, 'ord_2usSmQ9FmJQxwZbVS', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 00:37:55', '2023-11-09 00:37:55'),
(31, 'ord_2usin6WnmPCSBjbG8', 1, NULL, NULL, 4, NULL, 1, 1340.22, 0.00, 1340.22, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":1}}', NULL, NULL, '2023-11-09 20:53:55', '2023-11-09 20:53:55'),
(32, 'ord_2usjx5XEpHd7zrX19', 1, NULL, NULL, 4, NULL, 3, 2810.67, 0.00, 2810.67, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"existencias\":2},\"23\":{\"id\":23,\"categoria\":7,\"nombre\":\"producto 3\",\"precio\":230.23,\"descripcion\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velitNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"imagen\":\"U7VRTQm1rKb9nfvYHe4n8WyDXuMAxW.jpg\",\"existencias\":1}}', NULL, NULL, '2023-11-09 22:22:56', '2023-11-09 22:22:56'),
(33, 'ord_2ut4rMkzw3AmcsnYe', 1, NULL, NULL, 4, NULL, 3, 3820.66, 0.00, 3820.66, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"presentacion\":\"30KG\",\"existencias\":\"3\"}}', NULL, NULL, '2023-11-10 22:18:22', '2023-11-10 22:18:22'),
(34, 'ord_2ut57UFpQtLSYB166', 1, NULL, NULL, 4, NULL, 2, 2580.44, 0.00, 2580.44, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"presentacion\":\"40KG\",\"existencias\":\"2\"}}', NULL, NULL, '2023-11-10 22:38:11', '2023-11-10 22:38:11'),
(35, 'ord_2ut5PebiSQ17EfF67', 1, NULL, NULL, 4, NULL, 2, 2580.44, 0.00, 2580.44, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"UNO\",\"precio\":1240.22,\"descripcion\":\"El trozo de texto est\\u00e1ndar de Lorem Ipsum usado desde el a\\u00f1o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \\\"de Finibus Bonorum et Malorum\\\" por Cicero son tambi\\u00e9n reproducidas en su forma original exacta, acompa\\u00f1adas por versiones en Ingl\\u00e9s de la traducci\\u00f3n realizada en 1914 por H. Rackham.\\nsdsdd\",\"imagen\":\"TlR99kUTNhDk9Svn9XmTWSzrO48kN0.png\",\"presentacion\":\"40KG\",\"existencias\":\"2\"}}', NULL, NULL, '2023-11-10 22:59:22', '2023-11-10 22:59:22'),
(36, 'ord_2uvLj9EWLNuS3sqm7', 1, NULL, NULL, 4, NULL, 4, 9296.00, 0.00, 9296.00, 100.00, NULL, NULL, 0, 9, '{\"29\":{\"id\":29,\"categoria\":\"14\",\"nombre\":\"Fester CR-66\",\"precio\":\"2299.00\",\"descripcion\":\"Impermeabilizante elastom\\u00e9rico base agua de secado r\\u00e1pido\\r\\n\\r\\nFester A es un impermeabilizante elastom\\u00e9rico que debido a su tecnolog\\u00eda de r\\u00e1pido secado, permite hacer la impermeabilizaci\\u00f3n completa en un solo d\\u00eda. Es elaborado a base de resinas acr\\u00edlicas, pigmentos inorg\\u00e1nicos, agregados minerales y aditivos especiales que le proporcionan secado r\\u00e1pido, excelentes caracter\\u00edsticas de impermeabilidad, resistencia a rayos UV, adherencia en superficie humeda, etc.\",\"imagen\":\"u0sV0uVkpMK3LTPNnpaj5VJkS31yl9.png\",\"presentacion\":\"10kg\",\"existencias\":\"1\"},\"28\":{\"id\":28,\"categoria\":\"14\",\"nombre\":\"Fester CR-66\",\"precio\":\"2299.00\",\"descripcion\":\"Impermeabilizante elastom\\u00e9rico base agua de secado r\\u00e1pido\\r\\n\\r\\nFester A es un impermeabilizante elastom\\u00e9rico que debido a su tecnolog\\u00eda de r\\u00e1pido secado, permite hacer la impermeabilizaci\\u00f3n completa en un solo d\\u00eda. Es elaborado a base de resinas acr\\u00edlicas, pigmentos inorg\\u00e1nicos, agregados minerales y aditivos especiales que le proporcionan secado r\\u00e1pido, excelentes caracter\\u00edsticas de impermeabilidad, resistencia a rayos UV, adherencia en superficie humeda, etc.\",\"imagen\":\"Fvootlr5PsrzDmoSWojiT6L5ahwX8V.png\",\"presentacion\":\"20kg\",\"existencias\":3}}', NULL, NULL, '2023-11-17 21:13:31', '2023-11-17 21:13:31'),
(37, 'ord_2v4Z8xWnagLJafTnq', 1, NULL, NULL, 5, NULL, 3, 2700.00, 0.00, 2700.00, 100.00, NULL, NULL, 0, 10, '{\"37\":{\"id\":37,\"categoria\":\"18\",\"nombre\":\"Fester Epoxine 100\",\"precio\":\"1000.00\",\"descripcion\":\"Recubrimiento ep\\u00f3xico termofijo, poliam\\u00eddico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.\",\"imagen\":\"XJ6CyYRHpDA2loYOlZ3nhbdu4r4fjf.png\",\"presentacion\":\"4L con 830ml\",\"existencias\":\"2\"},\"39\":{\"id\":39,\"categoria\":\"14\",\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":\"600.00\",\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"3.8L\",\"existencias\":\"1\"}}', NULL, NULL, '2023-12-13 00:14:00', '2023-12-13 00:14:00'),
(38, 'ord_2v4b6g9MC5sSR4KKz', 1, NULL, NULL, 6, NULL, 1, 1100.00, 0.00, 1100.00, 100.00, NULL, NULL, 0, 11, '{\"37\":{\"id\":37,\"categoria\":\"18\",\"nombre\":\"Fester Epoxine 100\",\"precio\":\"1000.00\",\"descripcion\":\"Recubrimiento ep\\u00f3xico termofijo, poliam\\u00eddico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.\",\"imagen\":\"XJ6CyYRHpDA2loYOlZ3nhbdu4r4fjf.png\",\"presentacion\":\"4L con 3.17L\",\"existencias\":\"1\"}}', NULL, NULL, '2023-12-13 02:42:53', '2023-12-13 02:42:53'),
(39, 'ord_2v4d6zLh6zcVNHeYu', 1, NULL, NULL, 6, NULL, 1, 700.00, 0.00, 700.00, 100.00, NULL, NULL, 0, 11, '{\"39\":{\"id\":39,\"categoria\":\"14\",\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":\"600.00\",\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"1L\",\"existencias\":\"1\"}}', NULL, NULL, '2023-12-13 05:15:11', '2023-12-13 05:15:11'),
(40, 'ord_dsdsds', 1, NULL, NULL, 4, NULL, 1, 700.00, 0.00, 700.00, 100.00, NULL, NULL, 0, 9, '{\"39\":{\"id\":39,\"categoria\":14,\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":600,\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"1L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-01-31 21:43:57', '2024-01-31 21:43:57'),
(41, '3YA7294505801691W', 1, NULL, NULL, 4, NULL, 1, 700.00, 0.00, 700.00, 100.00, NULL, NULL, 0, 9, '{\"39\":{\"id\":39,\"categoria\":14,\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":600,\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"1L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-01-31 23:18:02', '2024-01-31 23:18:02'),
(42, '4DF82916J12790003', 1, NULL, NULL, 4, NULL, 2, 1700.00, 0.00, 1700.00, 100.00, NULL, NULL, 0, 9, '{\"37\":{\"id\":37,\"categoria\":18,\"nombre\":\"Fester Epoxine 100\",\"precio\":1000,\"descripcion\":\"Recubrimiento ep\\u00f3xico termofijo, poliam\\u00eddico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.\",\"imagen\":\"XJ6CyYRHpDA2loYOlZ3nhbdu4r4fjf.png\",\"presentacion\":\"4L con 3.17L\",\"existencias\":\"1\"},\"39\":{\"id\":39,\"categoria\":14,\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":600,\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"1L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-01-31 23:35:22', '2024-01-31 23:35:22'),
(43, '9SL92848R63116337', 1, NULL, NULL, 4, NULL, 2, 1300.00, 0.00, 1300.00, 100.00, NULL, NULL, 0, 9, '{\"39\":{\"id\":39,\"categoria\":14,\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":600,\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"1L\",\"existencias\":\"2\"}}', NULL, NULL, '2024-01-31 23:55:08', '2024-01-31 23:55:08'),
(44, 'ord_2vMEX9xugxo7j4HPo', 1, NULL, NULL, 4, NULL, 1, 700.00, 0.00, 700.00, 100.00, NULL, NULL, 0, 9, '{\"39\":{\"id\":39,\"categoria\":14,\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":600,\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua\\r\\n\\r\\nEs una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png\",\"presentacion\":\"1L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-02 00:40:51', '2024-02-02 00:40:51'),
(45, 'ord_2vNqTRP177ZpUNvk4', 1, NULL, NULL, 4, NULL, 4, 3100.00, 0.00, 3100.00, 100.00, NULL, NULL, 0, 9, '{\"14\":{\"id\":14,\"categoria\":7,\"nombre\":\"Fester Acriton ProShield\",\"precio\":800,\"descripcion\":\"Impermeabilizante acr\\u00edlico elastom\\u00e9rico base agua de secado extra r\\u00e1pido que revoluciona la tecnolog\\u00eda logrando el mejor balance de propiedades mec\\u00e1nicas; adem\\u00e1s de secado extra r\\u00e1pido* y propiedades de hidro-repelencia y perleo con tecnolog\\u00eda Proshield\\u00ae.\",\"imagen\":\"dYW52CMzgTJGSxa9s62qiHgw0AukcN.png\",\"presentacion\":\"19L\",\"existencias\":3},\"13\":{\"id\":13,\"categoria\":6,\"nombre\":\"Imperf\\u00e1cil Repelente de Agua\",\"precio\":600,\"descripcion\":\"Emulsi\\u00f3n protectora de superficies base agua Es una emulsi\\u00f3n base agua que crea una barrera protectora impermeable que impide el paso del agua a trav\\u00e9s de las superficies porosas.\",\"imagen\":\"INLi6J4crKFfkeku34BN8IJMPmQfsY.png\",\"presentacion\":\"3.8L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-06 22:18:49', '2024-02-06 22:18:49'),
(46, '735558186K434240R', 1, NULL, NULL, 4, NULL, 1, 1050.00, 0.00, 1050.00, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"Fester A\",\"precio\":950,\"descripcion\":\"Impermeabilizante elastom\\u00e9rico base agua de secado r\\u00e1pido. Fester A es un impermeabilizante elastom\\u00e9rico que debido a su tecnolog\\u00eda de r\\u00e1pido secado, permite hacer la impermeabilizaci\\u00f3n completa en un solo d\\u00eda. Es elaborado a base de resinas acr\\u00edlicas, pigmentos inorg\\u00e1nicos, agregados minerales y aditivos especiales que le proporcionan secado r\\u00e1pido, excelentes caracter\\u00edsticas de impermeabilidad, resistencia a rayos UV, adherencia en superficie h\\u00fameda, etc.\",\"imagen\":\"igC1a2D5xbcjpHgvIy7yBZE8803quz.png\",\"presentacion\":\"5 a\\u00f1os: cubeta 4L y cubeta 19L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-06 22:22:53', '2024-02-06 22:22:53'),
(47, 'ord_2vNqeP4rxP7sQsMAi', 1, NULL, NULL, 4, NULL, 1, 700.00, 0.00, 700.00, 100.00, NULL, NULL, 0, 9, '{\"16\":{\"id\":16,\"categoria\":8,\"nombre\":\"Fester Blanc\",\"precio\":600,\"descripcion\":\"Recubrimiento protector y decorativo el\\u00e1stico. Producto formulado a base de resinas 100% acr\\u00edlicas y pigmentos seleccionados que le proporcionan propiedades de elasticidad, reflectividad, protecci\\u00f3n y duraci\\u00f3n.\",\"imagen\":\"9ijX379UeONJemiIOjFryXWnIDpoAa.png\",\"presentacion\":\"19L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-06 22:33:10', '2024-02-06 22:33:10'),
(48, 'ord_2vNvX2ADdhvitGUoH', 1, NULL, NULL, 4, NULL, 2, 1700.00, 0.00, 1700.00, 100.00, NULL, NULL, 0, 9, '{\"14\":{\"id\":14,\"categoria\":7,\"nombre\":\"Fester Acriton ProShield\",\"precio\":800,\"descripcion\":\"Impermeabilizante acr\\u00edlico elastom\\u00e9rico base agua de secado extra r\\u00e1pido que revoluciona la tecnolog\\u00eda logrando el mejor balance de propiedades mec\\u00e1nicas; adem\\u00e1s de secado extra r\\u00e1pido* y propiedades de hidro-repelencia y perleo con tecnolog\\u00eda Proshield\\u00ae.\",\"imagen\":\"dYW52CMzgTJGSxa9s62qiHgw0AukcN.png\",\"presentacion\":\"19L\",\"existencias\":\"2\"}}', NULL, NULL, '2024-02-07 04:43:16', '2024-02-07 04:43:16'),
(49, '6T4881683E757291K', 1, NULL, NULL, 4, NULL, 1, 1050.00, 0.00, 1050.00, 100.00, NULL, NULL, 0, 9, '{\"15\":{\"id\":15,\"categoria\":7,\"nombre\":\"Fester A\",\"precio\":950,\"descripcion\":\"Impermeabilizante elastom\\u00e9rico base agua de secado r\\u00e1pido. Fester A es un impermeabilizante elastom\\u00e9rico que debido a su tecnolog\\u00eda de r\\u00e1pido secado, permite hacer la impermeabilizaci\\u00f3n completa en un solo d\\u00eda. Es elaborado a base de resinas acr\\u00edlicas, pigmentos inorg\\u00e1nicos, agregados minerales y aditivos especiales que le proporcionan secado r\\u00e1pido, excelentes caracter\\u00edsticas de impermeabilidad, resistencia a rayos UV, adherencia en superficie h\\u00fameda, etc.\",\"imagen\":\"igC1a2D5xbcjpHgvIy7yBZE8803quz.png\",\"presentacion\":\"7 a\\u00f1os: cubeta 19L\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-07 04:46:45', '2024-02-07 04:46:45'),
(50, 'ord_2vPfYwTHeM35WuitX', 1, NULL, NULL, 4, NULL, 1, 3769.08, 0.00, 3769.08, 100.00, NULL, NULL, 0, 9, '{\"134\":{\"id\":134,\"categoria\":24,\"nombre\":\"FESTERMIP APP PS 4.0\",\"precio\":3669.08,\"descripcion\":\"Ideal para impermeabilizar techos de concreto, que ser\\u00e1n \\r\\nrecubiertos con morteros, carpetas de rodamiento o alg\\u00fan \\r\\nrecubrimiento p\\u00e9treo como enladrillado, recubrimientos \\r\\ncer\\u00e1micos, adoquines, acabados de piedra, etc.\\r\\n\\u2022 Recomendado para la impermeabilizaci\\u00f3n de jardineras que \\r\\nposteriormente ser\\u00e1n repelladas con un mortero.\\r\\n\\u2022 Para charolas de ba\\u00f1o, espejos de agua y cimentaciones. \\r\\n\\u2022 Como primera capa en sistemas reforzados que llevar\\u00e1n \\r\\ncomo segunda capa Festermip APP PS gravilla.\\r\\n\\u2022 Para el refuerzo o tratamiento de puntos cr\\u00edticos.\\r\\n\\u2022 Para impermeabilizar \\u00e1reas completas expuestas a la \\r\\nintemperie y que se tenga considerada la aplicaci\\u00f3n de un \\r\\nacabado reflectivo como Festerblanc o Festalum, consultar \\r\\nhojas t\\u00e9cnicas.\\r\\n\\u2022 Como impermeabilizante para superficies horizontales, \\r\\ninclinadas y verticales de concreto, madera, pamac\\u00f3n, fibra \\r\\nde vidrio, pre-colados, etc. \\r\\n\\u2022 Estructuras bajo tierra.\\r\\n\\u2022 Sitios bajo inmersi\\u00f3n constante.\\r\\n\\u2022 Ideal para impermeabilizar superficies en cualquier tipo de \\r\\nclima tomando en consideraci\\u00f3n que ser\\u00e1 recubierto.\",\"imagen\":\"jKtCeR6zDLkeQCmnBKP26LqHvNVwjO.png\",\"presentacion\":\"ROLLO 1 X 10M APP PS 4.0 LISO\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-09 11:11:15', '2024-02-09 11:11:15'),
(51, '43U413364L853660M', 1, NULL, NULL, 4, NULL, 1, 406.24, 0.00, 406.24, 100.00, NULL, NULL, 0, 9, '{\"143\":{\"id\":143,\"categoria\":25,\"nombre\":\"FESTEGRAL 5KG\",\"precio\":306.24,\"descripcion\":\"USOS\\r\\n\\u2022 Para la adici\\u00f3n a las mezclas de concreto o morteros, en \\r\\nelementos expuestos al contacto eventual o permanente con \\r\\nel agua o la humedad.\\r\\n\\u2022 Para morteros con cemento o cal.\\r\\n\\u2022 Disminuye notablemente, la permeabilidad en los elementos \\r\\nde concreto o mortero\\r\\n\\u2022 Festegral contiene un aditivo reductor de agua, por lo que \\r\\nmejora la relaci\\u00f3n agua\\/cemento, al permitir la reducci\\u00f3n del \\r\\n4% al 6% en el consumo de agua\\r\\n\\u2022 Favorece los acabados de los elementos de concreto o \\r\\nmortero, al mejorar la trabajabilidad de las mezclas\\r\\n\\u2022 Reduce el sangrado\\r\\n\\u2022 Libre de cloruro de calcio\\r\\n\\u2022 Aumenta la durabilidad\\r\\n\\u2022 Reduce el ataque por sulfatos\",\"imagen\":\"ptxEdkQ6uj7Rf8NvLwojeCUlPu3uLB.png\",\"presentacion\":\"BOLSA 5KG\",\"existencias\":\"1\"}}', NULL, NULL, '2024-02-09 11:14:56', '2024-02-09 11:14:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalles`
--

CREATE TABLE `pedido_detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double(9,2) NOT NULL,
  `importe` double(9,2) NOT NULL,
  `total` double(9,2) NOT NULL,
  `pedido` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `color` bigint(20) UNSIGNED DEFAULT NULL,
  `log` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `politicas`
--

CREATE TABLE `politicas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `politicas`
--

INSERT INTO `politicas` (`id`, `titulo`, `descripcion`, `archivo`, `created_at`, `updated_at`) VALUES
(1, 'Aviso de Privacidad', NULL, NULL, NULL, '2022-03-31 17:19:19'),
(2, 'Métodos de Pago', NULL, NULL, NULL, NULL),
(3, 'Devoluciones', NULL, NULL, NULL, NULL),
(4, 'Terminos y Condiciones', NULL, NULL, NULL, NULL),
(5, 'Garantias', NULL, NULL, NULL, NULL),
(6, 'Políticas de Envio', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentaciones_productos`
--

CREATE TABLE `presentaciones_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT 'Producto nuevo',
  `descripcion` text DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `portada` varchar(255) DEFAULT 'producto_01.png',
  `pdf` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` varchar(255) DEFAULT '$0.00',
  `color` int(11) DEFAULT NULL,
  `inicio` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `categoria`, `portada`, `pdf`, `cantidad`, `precio`, `color`, `inicio`, `activo`, `orden`, `created_at`, `updated_at`) VALUES
(41, 'Producto Nuevo', 'Si no sabes qué es Amazon Renewed o productos reacondicionados o renovados de Amazon, ve mi experiencia de compra en este video porque gracias a ello puedes comprar celulares, videojuegos, televisores, relojes inteligentes, tablets, computadoras y más tecnología de forma segura y económica.', '10', 'Vba0fT6YTSAurKK5nhpGpfhemmypm3.png', NULL, 0, '1000', 2, 0, 1, 666, '2023-08-15 22:18:04', '2023-09-06 21:45:26'),
(42, 'Producto nuevo', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final', '11', 'QyOMXMycVYRqcwt4cOM1myc9siQXnm.png', NULL, 0, '100', 4, 1, 1, 666, '2023-08-16 06:40:42', '2023-09-06 22:06:01'),
(43, 'Nuevo producto', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final', '12', 'j82pZ7nWisc4nWMsFU2GaOsZibJt4a.png', NULL, 3, '4000', 1, 1, 1, 666, '2023-08-16 06:41:37', '2023-08-21 08:30:06'),
(44, 'Producto nuevo', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final', '10', '125MYWliSIDRrKN1JcYMewHAELeUK5.png', NULL, 4, '4000', 3, 1, 1, 666, '2023-08-16 06:42:45', '2023-08-21 08:30:07'),
(45, 'Producto nuevo', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final', '10', 'Jf5WBgAtLq2lGmqgmDmHlXtUk9LoWC.png', NULL, 6, '4000', 1, 1, 1, 666, '2023-08-16 06:43:13', '2023-08-21 08:30:25'),
(46, 'Producto nuevo', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final', '10', 'ILlnt4Vt6n0umkEsGH01Jj68DYbMjk.png', NULL, 10, '4000', 4, 1, 1, 666, '2023-08-16 06:43:51', '2023-08-21 16:54:34'),
(47, 'Producto nuevo', 'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final', '14', 'ch5oJEXKERGkqBNRC6BKpj972tdv2h.png', NULL, 4, '4000', 4, 1, 1, 666, '2023-08-16 06:44:29', '2023-09-06 21:45:05'),
(49, 'Perrito huevo', 'descripcion de mi perrito', '12', 'q9v3zSutfQbA6ksrpcXrw3Yo08Ptyl.png', NULL, 9, '50', 5, 0, 1, 666, '2023-09-06 22:07:34', '2023-09-06 22:11:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_photos`
--

CREATE TABLE `productos_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `orden` int(11) NOT NULL DEFAULT 666
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos_photos`
--

INSERT INTO `productos_photos` (`id`, `producto`, `titulo`, `image`, `orden`) VALUES
(21, 34, NULL, 'XoIafc4wHYCS78YxMNFh3ANqW1u1TP.png', 666),
(22, 36, NULL, 'oyVDQb3T19zLoJqHywOFePvll0R2R8.png', 666),
(29, 41, NULL, 'CZmbC3ssxkZ7yGsm25KNdAzGxYNc4P.jpg', 666),
(30, 41, NULL, 'QfoYsPPKAv84LIZY2jQCWl8MxndMNI.jpg', 666),
(31, 41, NULL, 'DtnGMTU21qnqGFBkS6RDIoAeWZwxoE.jpg', 666),
(32, 49, NULL, 'eYfvigh4SocJhT8cs7TsA61kFH0zPd.png', 666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_presentacions`
--

CREATE TABLE `producto_presentacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tamanio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_relacions`
--

CREATE TABLE `producto_relacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `otroProducto` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_sizes`
--

CREATE TABLE `producto_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tamanio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_variantes`
--

CREATE TABLE `producto_variantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `presentacion` bigint(20) UNSIGNED NOT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `precio` varchar(255) NOT NULL,
  `descuento` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `tipo_envio` varchar(255) DEFAULT NULL,
  `peso` varchar(255) DEFAULT NULL,
  `largo` varchar(255) DEFAULT NULL,
  `ancho` varchar(255) DEFAULT NULL,
  `alto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_categoria_pepes`
--

CREATE TABLE `p_f_categoria_pepes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `icono` text DEFAULT NULL,
  `aux` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_categoria_pepes`
--

INSERT INTO `p_f_categoria_pepes` (`id`, `categoria`, `icono`, `aux`, `created_at`, `updated_at`) VALUES
(10, 'IMPERMEABILIZANTES ACRILICOS', 'A9jF0Q9bcQmKSVnqcigPXdhbSSKLDY.png', NULL, '2024-02-09 03:37:25', '2024-02-09 03:37:25'),
(11, 'IMPERMEABILIZANTES HÁGALO USTED MISMO', 'ftr9ecjqaYbynW1cNyJBaoh9XI7VBV.png', NULL, '2024-02-09 03:38:13', '2024-02-09 03:38:13'),
(12, 'IMPERMEABILIZANTES ASFÁLTICOS', 'fGRHKrZjEa1yo8VJLOcsh32xDTeRxr.png', NULL, '2024-02-09 03:38:36', '2024-02-09 03:38:36'),
(13, 'IMPERMEABILIZANTES PREFABRICADOS', 'NkTmpO9SgGxCGKD5ElObAPoB7znQ0X.png', NULL, '2024-02-09 03:38:59', '2024-02-09 03:38:59'),
(14, 'IMPERMEABILIZANTES CEMENTOSOS', 'PG6FJ2bLDv4EJ5itMKKTMEbhwOJg8o.png', NULL, '2024-02-09 03:39:14', '2024-02-09 03:39:14'),
(15, 'IMPERMEABILIZANTES OTROS', 'AtHY3Ei1RUhOFJMs3F17Solgh62AQh.png', NULL, '2024-02-09 03:39:15', '2024-02-09 03:56:21'),
(16, 'PRODUCTOS PARA CONCRETO', 'c2zcDdWc1CoaOY784TKWSAJFmeK5tO.png', NULL, '2024-02-09 03:39:39', '2024-02-09 03:56:27'),
(17, 'ESPECIALIDADES', 'ngVuq7ptoYtJJEhYWjm8CwDTyMLHkf.png', NULL, '2024-02-09 03:39:54', '2024-02-09 03:56:31'),
(18, 'ANCLAJES QUÍMICOS', 'vU0D6295vMymeoVLAsSza41fY6ajJz.png', NULL, '2024-02-09 03:40:11', '2024-02-09 03:56:38'),
(19, 'SELLADORES', 'I1hGMnEbtkifqrQSUnCXj3SNGFCxpv.png', NULL, '2024-02-09 03:40:31', '2024-02-09 03:56:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_categoria_productos`
--

CREATE TABLE `p_f_categoria_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `icono` text DEFAULT NULL,
  `aux` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_categoria_productos`
--

INSERT INTO `p_f_categoria_productos` (`id`, `categoria`, `icono`, `aux`, `created_at`, `updated_at`) VALUES
(14, 'Impermeabilizante', 'LzXRdnvR3auU9TrHDx76eQvV3R53lr.png', NULL, '2023-11-16 21:56:59', '2023-11-17 21:49:06'),
(15, 'Adhesivos de concreto', 'i3pRSMlRgNCUnJTRvxcwhWmIwjgwxk.png', NULL, '2023-11-16 21:57:46', '2023-11-16 23:20:44'),
(16, 'Auxiliares y aditivos de concreto', 'zSTuNClXnWLulogjsvCQQDvX0vX4kf.png', NULL, '2023-11-16 21:58:08', '2023-11-16 23:20:58'),
(17, 'Grounts y anclajes', 'qaeLcT3zMM5HEUePLfYOCitwnoJgOx.png', NULL, '2023-11-16 21:58:30', '2023-11-16 23:21:10'),
(18, 'Selladores y resanadores', 'B0KOqpzwgdXO6IKaOftOrs6dVhTQtf.png', NULL, '2023-11-16 21:58:49', '2023-11-16 23:21:25'),
(19, 'Otra categoria', 'PtaaBpkVD1eEqzb3ZmDykYa9JavCNG.png', NULL, '2023-11-16 21:59:04', '2023-11-16 23:21:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_galerias`
--

CREATE TABLE `p_f_galerias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `galeria` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_galeria_producto_imagenes`
--

CREATE TABLE `p_f_galeria_producto_imagenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `galeria` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_necesidades`
--

CREATE TABLE `p_f_necesidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_sector` int(11) DEFAULT NULL,
  `sector` text DEFAULT NULL,
  `necesidades` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_necesidades`
--

INSERT INTO `p_f_necesidades` (`id`, `tipo_sector`, `sector`, `necesidades`, `created_at`, `updated_at`) VALUES
(1, 1, 'hogar', 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.sdsdsd1', '2023-10-31 00:56:22', '2023-11-18 02:33:30'),
(2, 1, 'hogar', 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.1', '2023-10-31 02:24:17', '2023-11-18 02:33:32'),
(3, 2, 'privado', 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.sdsdsds1', '2023-10-31 02:24:28', '2023-11-18 02:34:09'),
(5, 2, 'privado', 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.1', '2023-10-31 02:24:42', '2023-11-18 02:34:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_presentacion_productos`
--

CREATE TABLE `p_f_presentacion_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_presentacion_productos`
--

INSERT INTO `p_f_presentacion_productos` (`id`, `producto`, `presentacion`, `created_at`, `updated_at`) VALUES
(47, 37, '4L con 3.17L', '2023-12-12 21:05:39', '2023-12-12 21:05:39'),
(48, 37, '4L con 830ml', '2023-12-12 21:05:39', '2023-12-12 21:05:39'),
(50, 39, '1L', '2023-12-12 21:16:58', '2023-12-12 21:16:58'),
(51, 39, '3.8L', '2023-12-12 21:16:58', '2023-12-12 21:16:58'),
(52, 40, '10 kg', '2023-12-12 21:35:25', '2023-12-12 21:35:25'),
(53, 41, '25 m', '2023-12-12 21:46:24', '2023-12-12 21:46:24'),
(54, 42, '300ml', '2023-12-12 22:23:08', '2023-12-12 22:23:08'),
(55, 43, '19L', '2023-12-12 22:27:37', '2023-12-12 22:27:37'),
(56, 43, '200L', '2023-12-12 22:27:37', '2023-12-12 22:27:37'),
(57, 44, '19 L', '2023-12-12 22:36:21', '2023-12-12 22:36:21'),
(58, 45, '19 L', '2023-12-12 22:42:47', '2023-12-12 22:42:47'),
(59, 46, '3 años: Cubeta 4L y cubeta 19L', '2023-12-12 22:49:15', '2023-12-12 22:49:15'),
(60, 46, '5 años: Cubeta 4L y cubeta 19L', '2023-12-12 22:49:15', '2023-12-12 22:49:15'),
(61, 46, '7 años: Cubeta 19L', '2023-12-12 22:49:15', '2023-12-12 22:49:15'),
(62, 47, '19L', '2023-12-12 22:54:16', '2023-12-12 22:54:16'),
(63, 48, '1 L', '2023-12-12 23:00:31', '2023-12-12 23:00:31'),
(64, 49, 'Complementos', '2023-12-12 23:52:10', '2023-12-12 23:52:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_productos`
--

CREATE TABLE `p_f_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double(8,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `inicio` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_productos`
--

INSERT INTO `p_f_productos` (`id`, `categoria`, `nombre`, `precio`, `descripcion`, `existencias`, `presentacion`, `imagen`, `inicio`, `created_at`, `updated_at`) VALUES
(37, 18, 'Fester Epoxine 100', 1000.00, 'Recubrimiento epóxico termofijo, poliamídico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.', 9, NULL, 'XJ6CyYRHpDA2loYOlZ3nhbdu4r4fjf.png', 1, '2023-12-12 21:05:39', '2024-01-31 23:35:22'),
(39, 14, 'Imperfácil Repelente de Agua', 600.00, 'Emulsión protectora de superficies base agua\r\n\r\nEs una emulsión base agua que crea una barrera protectora impermeable que impide el paso del agua a través de las superficies porosas.', 5, NULL, 'AMbyhjl8wXGrz9q26QFbzMaiclH8kW.png', 1, '2023-12-12 21:16:58', '2024-02-02 00:40:51'),
(40, 16, 'Fester CM-100', NULL, 'Mortero anticorrosivo para tratamiento del acero de refuerzo utilizado en elementos de concreto.\r\n\r\nMortero a base de cemento, agregados minerales, resinas en polvo de alta calidad e inhibidores de corrosión que protegen el acero de refuerzo utilizado en elementos estructurales de concreto.', NULL, NULL, 'qfubq4KePOOfHebF9W49ePDg6UzYDh.png', 1, '2023-12-12 21:35:25', '2023-12-12 21:35:35'),
(41, 17, 'Banda Ojillada de PVC', NULL, 'Sello retenedor de agua en juntas frías por diseño constructivo en elementos de concreto.\r\n\r\nBanda fabricada a base de cloruro de polivinilo (PVC) en forma de tira continua de gran flexibilidad y elasticidad. Su diseño consta de dos semibultos laterales y un bulto central que permiten soportar movimientos de las estructuras.', NULL, NULL, 'VxhTUrNNxpMjFrAHjy0lSJlMPGsosE.png', 1, '2023-12-12 21:46:24', '2023-12-12 21:48:23'),
(42, 18, 'Fester CF 890', NULL, 'Sistema de fijación profesional fórmula poliéster.\r\n\r\nEl sistema de anclaje químico Fester CF 890 es una resina poliéster de última generación ideal para anclar cargas pesadas a elementos difíciles de construcción tales como: roca, concreto, block (bloque) y materiales porosos.', NULL, NULL, '6ZbXKwJMsFwGXpJX6ul1dM60CoWvEL.png', 0, '2023-12-12 22:23:08', '2023-12-12 22:43:12'),
(43, 18, 'Fester Curafest MC 330', NULL, 'Sellador Acrílico para curar concreto o morteros al retirar la cimbra.\r\n\r\nLíquido viscoso color blanco formulado con resinas acrílicas, diseñado para curar concretos o morteros al retirar la cimbra, habiendo transcurrido entre 16 y 24 horas, formando una película que tarda la evaporación del agua remanente', 1, NULL, 'Tl3PD7rD80ZCO3OOYRjrPmEhWVmvkJ.png', 0, '2023-12-12 22:27:37', '2023-12-12 22:43:11'),
(44, 14, 'Fester Acriton ProShield', NULL, 'Impermeabilizante acrílico elastomérico base agua de secado extra rápido que revoluciona la tecnología logrando el mejor balance de propiedades mecánicas; además de secado extra rápido* y propiedades de hidro-repelencia y perleo con tecnología Proshield®.', NULL, NULL, 'chDAGV5S4ShlaWnIbMSBCHOzFYTsSv.png', 0, '2023-12-12 22:36:21', '2024-02-01 21:08:04'),
(45, 15, 'Fester AD', NULL, 'Adhesivo de usos múltiples.\r\n\r\nAdhesivo líquido base agua de color blanco para uso en interiores, formulado con resinas de PVA.', NULL, NULL, 'sF93uzsg9GjmdvfFPzHYPyPKmkr1yV.png', 0, '2023-12-12 22:42:47', '2024-02-01 21:08:05'),
(46, 14, 'Fester A', NULL, 'Impermeabilizante elastomérico base agua de secado rápido.\r\n\r\nFester A es un impermeabilizante elastomérico que debido a su tecnología de rápido secado, permite hacer la impermeabilización completa en un solo día. Es elaborado a base de resinas acrílicas, pigmentos inorgánicos, agregados minerales y aditivos especiales que le proporcionan secado rápido, excelentes características de impermeabilidad, resistencia a rayos UV, adherencia en superficie húmeda, etc.', NULL, NULL, 'nUMnTx1i1VOW4WpBoELVQa39F8jkV6.png', 0, '2023-12-12 22:49:15', '2023-12-13 00:10:32'),
(47, 14, 'Fester Blanc', NULL, 'Recubrimiento protector y decorativo elástico.\r\n\r\nProducto formulado a base de resinas 100% acrílicas y pigmentos seleccionados que le proporcionan propiedades de elasticidad, reflectividad, protección y duración.', NULL, NULL, 'RYZzEWIPDiWvXsO3YPbjbk7ibVfCki.png', 0, '2023-12-12 22:54:16', '2023-12-12 22:54:16'),
(48, 18, 'Imperfácil no más goteras pasta', NULL, 'Reparador asfáltico para goteras\r\n\r\nMaterial de consistencia pastosa, formulado a base de asfalto modificado, solventes especiales de rápida evaporación, rellenos minerales, fibras naturales libres de asbesto y aditivos especiales que le permiten tener excelentes propiedades de adherencia en superficies húmedas o secas.', NULL, NULL, 'oijXilCwAxbRcznmiH46sQTL9TduSU.png', 0, '2023-12-12 23:00:31', '2023-12-12 23:00:31'),
(49, 19, 'Fester Garden', NULL, 'Sistema de elementos plásticos y geo-membranas que en conjunto, conforman la alternativa para atender las necesidades al colocar áreas verdes en los techos, facilitando la salida del agua hacia drenes o bajantes pluviales.                                                                            \r\n\r\nFester Garden ofrece dos sistemas los cuales están relacionados directamente al tipo y tamaño de naturación que va a contener. Fester Garden Extensivo y Fester Garden Intensivo.', NULL, NULL, '8NndgDNsxhS0R5V5JJ8l3AOmLea50l.png', 0, '2023-12-12 23:52:10', '2023-12-12 23:52:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_producto_galeria_pepes`
--

CREATE TABLE `p_f_producto_galeria_pepes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `galeria` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_producto_pepes`
--

CREATE TABLE `p_f_producto_pepes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoria` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double(8,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `inicio` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_producto_pepes`
--

INSERT INTO `p_f_producto_pepes` (`id`, `subcategoria`, `nombre`, `precio`, `descripcion`, `existencias`, `presentacion`, `imagen`, `inicio`, `created_at`, `updated_at`) VALUES
(53, 14, 'FESTER ACRITON SELLADOR', 842.16, 'Para imprimar sellando las superficies que serán impermeabilizadas con los sistemas impermeables acrílicos Fester Acriton y Fester A en superficies tales como: Concreto, mortero, \r\nenladrillados, lámina metálica, etc.\r\n• Para la imprimación de superficies en fachadas y muros, previo a la aplicación de Fester Acriton Fachadas liso o rugoso.\r\n• Listo para usarse directo o en dilución, siguiendo las instrucciones para la aplicación.\r\n• Fácil de aplicar.\r\n• Mejora notablemente la adherencia.\r\n• Sella las superficie porosas.\r\n• Resistente a la alcalinidad del cemento, mortero y de la cal.\r\n• No es inflamable.\r\n• No es tóxico, salvo ingestión.\r\n• Una vez seco es incoloro.', 100, NULL, 'dqQbBzOaLcXNbhI3wUBfaMLPgXzqeW.png', 1, '2024-02-07 11:20:17', '2024-02-09 10:42:45'),
(55, 14, 'FESTER ACRITON SELLADOR', 2929.00, 'Para imprimar sellando las superficies que serán impermeabilizadas con los sistemas impermeables acrílicos Fester Acriton y Fester A en superficies tales como: Concreto, mortero, \r\nenladrillados, lámina metálica, etc.\r\n• Para la imprimación de superficies en fachadas y muros, previo a la aplicación de Fester Acriton Fachadas liso o rugoso.\r\n• Listo para usarse directo o en dilución, siguiendo las instrucciones para la aplicación.\r\n• Fácil de aplicar.\r\n• Mejora notablemente la adherencia.\r\n• Sella las superficie porosas.\r\n• Resistente a la alcalinidad del cemento, mortero y de la cal.\r\n• No es inflamable.\r\n• No es tóxico, salvo ingestión.\r\n• Una vez seco es incoloro', 100, NULL, 'R3wFeDQiCHgaRbF3CLL0MGIEVSWRrp.png', 1, '2024-02-07 11:22:20', '2024-02-09 10:42:46'),
(56, 14, 'FESTER ACRITON RESANADOR', 131.08, 'Como resanador de fisuras, grietas y ranuras en superficies de \r\nconcreto y mortero con anchura y profundidad máxima de \r\n5mm. previo a la aplicación del sistema impermeable acrílico.\r\n• Económico y de fácil aplicación.\r\n• Buena adherencia y durabilidad en el concreto o mortero.\r\n• Una vez seco, resiste contacto con agua mientras llega el \r\nmomento de colocar el sistema impermeable.\r\n• No escurre.\r\n• No es inflamable.\r\n• No es tóxico (salvo ingestión).', 100, NULL, 'oog5xKSWNfPEFbkrtdg1PkpugnrR32.png', 1, '2024-02-07 11:24:00', '2024-02-09 10:49:06'),
(57, 14, 'FESTER ACRITON RESANADOR', 469.80, 'omo resanador de fisuras, grietas y ranuras en superficies de  concreto y mortero con anchura y profundidad máxima de  5mm. previo a la aplicación del sistema impermeable acrílico.\r\n• Económico y de fácil aplicación.\r\n• Buena adherencia y durabilidad en el concreto o mortero.\r\n• Una vez seco, resiste contacto con agua mientras llega el \r\nmomento de colocar el sistema impermeable.\r\n• No escurre.\r\n• No es inflamable.\r\n• No es tóxico (salvo ingestión).', 100, NULL, 'u0iWWtGviLk9bB5cECUVm68pTJv84Y.png', 1, '2024-02-07 11:25:12', '2024-02-09 10:49:09'),
(58, 14, 'FESTER ACRIFLEX', 4382.48, 'Como membrana de refuerzo integral de sistemas impermeables en frío conformados con productos base agua, base solvente, asfálticos, acrílicos o de poliuretano.\r\n• Como refuerzo de puntos críticos en impermeabilizaciones \r\nacrílicas, asfálticas base agua, base solvente o de poliuretano.\r\n• En la aplicación de recubrimientos epóxicos como refuerzo \r\nen las zonas criticas más comunes en elementos constructivos como: Cisternas, albercas, tanques, silos, canales, fuentes, etc.\r\n• Alta resistencia a los esfuerzos de tensión.\r\n• Facilita la adherencia entre las capas que conforman los sistemas impermeables.\r\n• Resiste todo tipo de condiciones climáticas.\r\n• Resiste alta temperaturas, ocasionadas en particular por la \r\nacción de los rayos solares.\r\n• Excelente flexibilidad.\r\n• Refuerza ante los esfuerzos de contracción- dilatación a los \r\nque están sometidos normalmente los sistemas impermeables.\r\n• No le afecta la acción de solventes o álcalis ácidos ligeros, \r\nbacterias o moho', 100, NULL, 'sEN2TMnHX3wwenBvXiGlpgZJBnI3QT.png', 0, '2024-02-07 13:57:57', '2024-02-07 13:57:57'),
(59, 14, 'FESTER REVOFLEX', 3674.88, 'Como membrana de refuerzo integral de sistemas impermeables en frío conformados con productos base agua, \r\nbase solvente, asfálticos, acrílicos o de poliuretano.\r\n• Como refuerzo de puntos críticos en impermeabilizaciones \r\nacrílicas, asfálticas base agua, base solvente o de poliuretano.\r\n• En la aplicación de recubrimientos epóxicos como refuerzo \r\nen las zonas criticas más comunes en elementos constructivos como: Cisternas, albercas, tanques, silos, canales, fuente, \r\netc.\r\n• Alta resistencia a los esfuerzos (tensión). \r\n• Facilita la adherencia entre las capas que conforman los sistemas impermeables.\r\n• Resiste todo tipo de condiciones climáticas.\r\n• Resiste altas temperaturas, ocasionadas en particular por la \r\nacción de los rayos solares.\r\n• Excelente flexibilidad.\r\n• Refuerza ante los esfuerzos de contracción- dilatación a los \r\nque están sometidos normalmente los sistemas impermeables.\r\n• No le afecta la acción de solventes o álcalis ácidos ligeros, \r\nbacterias o moho.', 100, NULL, 'I6EJMIEAP06v1TfO5bX8jYwgQdGfeg.png', 0, '2024-02-07 14:00:38', '2024-02-07 14:00:38'),
(63, 10, 'FESTER ACRITON 4 AÑOS 4L', 842.16, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfálticos, previa aplicación del primer Fester Acriton® Sellador', 10, NULL, NULL, 0, '2024-02-07 14:09:43', '2024-02-07 14:09:43'),
(64, 10, 'FESTER ACRITON 4 AÑOS 4L', 830.56, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfálticos, previa aplicación del primer Fester Acriton® Sellador', 10, NULL, 'A2efKXQZrLsppmnlhXBztusIhAxTZ4.png', 0, '2024-02-07 14:10:34', '2024-02-07 14:10:34'),
(65, 10, 'FESTER ACRITON 4 AÑOS 19L', 2929.00, '• Fester Acriton® se recomienda para impermeabilizar losas de concreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso sobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la radiación solar, haciendo más confortables los interiores y logrando importantes ahorros en energía eléctrica ante el uso de sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado para el mantenimiento de sistemas envejecidos a base de mantos prefabricados, acrílicos o incluso asfálticos, previa aplicación del primer Fester Acriton® Sellador', 10, NULL, 'UHK4NZaNMx0wQVB8CSQL1Pp1UwJGTE.png', 0, '2024-02-07 14:12:43', '2024-02-07 14:12:43'),
(66, 10, 'FESTER ACRITON 4 AÑOS 19L', 2881.44, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'jdhK7UunYnw3Tr1nO2R7I2AYVogeDg.png', 0, '2024-02-07 17:16:05', '2024-02-07 17:16:05'),
(67, 10, 'FESTER ACRITON 6 AÑOS 19L', 3532.20, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, '0tiZaDm5Iwayr4uDKoibYblUexasGP.png', 0, '2024-02-07 17:17:19', '2024-02-07 17:17:19'),
(68, 10, 'FESTER ACRITON 6 AÑOS 200L', 33667.84, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'dj8B9qQIMEIcBPpHA5vTpr0UZB1f4Q.png', 0, '2024-02-07 17:18:11', '2024-02-07 17:18:11'),
(69, 10, 'FESTER ACRITON 6 AÑOS 200L', 33667.84, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'skGYWZY53Am8IdLxmSrEV8Srj8jW5e.png', 0, '2024-02-07 17:18:13', '2024-02-07 17:18:13'),
(70, 10, 'FESTER ACRITON 6 AÑOS 19L', 3485.80, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'NdA9JC7w03CUZD6V2rHbnOc0JPCQaE.png', 0, '2024-02-07 17:19:19', '2024-02-07 17:19:19'),
(71, 10, 'FESTER ACRITON 6 AÑOS 200L', 33244.44, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'uinIHLTyB1oBS36JLmuZ69tU7a2PWY.png', 0, '2024-02-07 17:20:39', '2024-02-07 17:20:39'),
(72, 10, 'FESTER ACRITON 8 AÑOS 4L', 967.44, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'DMpshDdCrvwuRiaF5Ft6QUlvNr3lPL.png', 0, '2024-02-07 17:21:48', '2024-02-07 17:21:48'),
(73, 10, 'FESTER ACRITON 8 AÑOS 19L', 4101.76, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'HntYOOPJYO3fjkPfOfQ6RqqHnAYIAO.png', 0, '2024-02-07 17:22:38', '2024-02-07 17:24:17'),
(74, 10, 'FESTER ACRITON 8 AÑOS 200L', 38174.60, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'zww6qpiEiHone366ee2fLiZQIrn2hK.png', 0, '2024-02-07 17:26:14', '2024-02-07 17:26:14'),
(75, 10, 'FESTER ACRITON 8 AÑOS 4L', 961.64, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'xJm9wSvk4R5Mmw488AsNM6fadVtivL.png', 0, '2024-02-07 17:27:19', '2024-02-07 17:27:19'),
(76, 10, 'FESTER ACRITON 8 AÑOS 4L', 961.64, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'idue0OgGqlK4n4DDnJl1KwfIcuMgze.png', 0, '2024-02-07 17:27:28', '2024-02-07 17:27:28'),
(77, 10, 'FESTER ACRITON 8 AÑOS 19L', 4051.88, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, '04YQ3jaNKn0cp7SVCITHuNHHfppfkr.png', 0, '2024-02-07 17:28:26', '2024-02-07 17:28:26'),
(78, 10, 'FESTER ACRITON 8 AÑOS 200L', 37319.52, '• Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfál', 10, NULL, 'nz7XIAzzzrYA8n4YUKXEJ1IdbXG92a.png', 0, '2024-02-07 17:29:21', '2024-02-07 17:29:21'),
(79, 10, 'FESTER ACRITON 8 AÑOS 19L', 4178.32, 'Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfálticos, previa aplicación del primer Fester Acriton® Sellador.', 10, NULL, 'kKCpFKxCcepOGgW1lYcgGfYoFmxBy0.png', 0, '2024-02-07 17:31:24', '2024-02-07 17:31:24'),
(80, 10, 'FESTER ACRITON 12 AÑOS 19L', 4238.64, 'Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfálticos, previa aplicación del primer Fester Acriton® Sellador.', 10, NULL, 'A0k5CTPdSrtpmbZSjrdVmVOx14rCHk.png', 0, '2024-02-07 17:32:30', '2024-02-07 17:32:30'),
(81, 10, 'FESTER ACRITON 12 AÑOS 19L', 4174.84, 'Fester Acriton® se recomienda para impermeabilizar losas de \r\nconcreto planas ó inclinadas, pero también se usa sobre techumbres de lámina como: metálicas, fibro-cemento e incluso \r\nsobre acabados térmicos de poliestireno y espuma de poliuretano, previa aplicación del primer Fester Acriton® Sellador.\r\n• Fester Acriton® en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla \r\nla radiación solar, haciendo más confortables los interiores y \r\nlogrando importantes ahorros en energía eléctrica ante el uso \r\nde sistemas de aire acondicionado o ventilación.\r\n• Debido a sus propiedades, Fester Acriton® puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos a base de \r\nmantos prefabricados, acrílicos o incluso asfálticos, previa aplicación del primer Fester Acriton® Sellador.', 10, NULL, NULL, 0, '2024-02-07 17:33:15', '2024-02-07 17:33:15'),
(82, 10, 'FESTER ACRITON HÍBRIDO 19L', 5188.68, '• Ampliamente recomendado para la aplicación sobre techos o \r\ncubiertas de lámina en el sector industrial y comercial \r\nimpermeabilizando, protegiendo y alargando \r\nimportantemente la vida útil de las láminas.\r\n• Para techos con losas de concreto horizontales o inclinadas.\r\n• Sobre techos de lámina o concreto con la finalidad de \r\nimpermeabilizar o como sistema reflectivo ya que gracias a \r\nsus propiedades de reflectividad, ayuda a mejorar las \r\ncondiciones interiores disminuyendo la temperatura causada \r\npor los efectos de la radiación solar, generando mayor \r\nconfort e importantes ahorros en energía eléctrica ante la \r\ndisminución del uso de sistemas de aire acondicionado o \r\nventilación. \r\n• Para aplicación en superficies nuevas o para el \r\nmantenimiento sobre sistemas envejecidos, excepto \r\nasfálticos (deben ser retirados), siempre y cuando estén \r\ntotalmente adheridos y previa aplicación del primer Fester \r\nAcriton Sellador', 10, NULL, 'u5srJCM0wXKQEZSSm8RGlMPbAcKETO.png', 0, '2024-02-07 17:35:17', '2024-02-07 17:35:17'),
(83, 12, 'FESTER ACRITON FACHADAS RUGOSO', 3503.20, 'Impermeabilización de fachadas, muros de colindancia y pretiles en los techos, fabricados con tabique, ladrillo, block, \r\nconcreto, placas prefabricadas, etc.\r\n• Sobre acabados como aplanados, texturas y pinturas bien \r\nadheridas.\r\n• Integra en un solo producto las propiedades de proteger, \r\ndecorar e impermeabilizar fachadas de industrias, hoteles, \r\nhospitales, edificios comerciales, casas habitación, etc.\r\n• Por su color blanco, permite reflejar un alto porcentaje de los \r\nrayos solares, logrando obtener ambientes frescos en los \r\ninteriores.\r\n• Garantía de 5 años.\r\n• Cubre fisuras hasta de 1.5 mm. de amplitud sin necesidad de \r\nresane.\r\n• Resistencia a los rayos ultravioleta (UV) y demás condiciones \r\ndel intemperismo.\r\n• No escurre.\r\n• Resiste ambientes salinos y húmedos.\r\n• Resiste movimientos estructurales.\r\n• Excelente poder cubriente.\r\n• Listo para usarse.\r\n• Resistencia a la formación de hongos.\r\n• Fácil de limpiar.\r\n• Excelente adherencia a los diferentes sustratos donde se \r\naplica.\r\n• Libre de solventes. \r\n• No forma barrera de vapor.\r\n• No es tóxico (salvo ingestión) .', 10, NULL, 'Zwi0dmMWhWB34P59cYC0WVURpqdxIm.png', 0, '2024-02-07 17:37:45', '2024-02-07 17:37:45'),
(84, 12, 'FESTER ACRITON FACHADAS LISO', 3248.00, 'Impermeabilización de fachadas, muros de colindancia y pretiles en los techos, fabricados con tabique, ladrillo, block, \r\nconcreto, placas prefabricadas, etc.\r\n• Sobre acabados tales como aplanados, texturas y pinturas \r\nbien adheridas.\r\n• Integra en un solo producto las propiedades de proteger, \r\ndecorar e impermeabilizar fachadas de industrias, hoteles, \r\nhospitales, edificios comerciales, casas habitación, etc.\r\n• Por su color blanco, permite reflejar un alto porcentaje de los \r\nrayos solares, logrando obtener ambientes frescos en los \r\ninteriores.\r\n• Garantía de 5 años.\r\n• Cubre fisuras hasta de 0.5 mm. de amplitud sin necesidad de \r\nresane.\r\n• Resistencia a los rayos ultravioleta (UV) y demás condiciones \r\ndel intemperismo.\r\n• No escurre.\r\n• Resiste ambientes salinos y húmedos.\r\n• Resiste movimientos estructurales ligeros.\r\n• Excelente poder cubriente.\r\n• Listo para usarse.\r\n• Resistencia a la formación de hongos.\r\n• Fácil de limpiar.\r\n• Excelente adherencia \r\n• Libre de solventes. \r\n• No forma barrera de vapor.\r\n• No es tóxico (salvo ingestión) .', 10, NULL, 'iP2pdHX0W8qi9Ru8tmnBSB8kU0NOOP.png', 0, '2024-02-07 17:38:55', '2024-02-07 17:38:55'),
(88, 11, 'FESTER A 3 AÑOS', 1861.80, 'Impermeabilizante para techos y azoteas monolíticas (sin movimiento estructural) horizontales e inclinadas, construidas de \r\nconcreto. \r\n• Como recubrimiento protector en cubiertas de láminas de fibrocemento, galvanizadas ó pintadas, previa aplicación del \r\nFester Sellador acrílico. \r\n• Este producto en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la \r\nradiación solar, haciendo más confortable los interiores y logrando importantes ahorros de energía ante el uso de sistemas de aire acondicionado. \r\n• Debido a sus propiedades, este producto puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos incluso asfálticos, previo retiro de partes falsamente adheridas, lavado de la \r\nsuperficie mediante agua y cepillo, hasta lograr que la superficie quede bien limpia, y aplicando después el Fester Sellador \r\nacrílico.', 10, NULL, 'FInjGEdui5zEFrkqImpLqkCzKoNlVF.png', 0, '2024-02-07 17:47:47', '2024-02-07 17:47:47'),
(89, 11, 'FESTER A 5 AÑOS', 2142.52, 'Impermeabilizante para techos y azoteas monolíticas (sin movimiento estructural) horizontales e inclinadas, construidas de \r\nconcreto. \r\n• Como recubrimiento protector en cubiertas de láminas de fibrocemento, galvanizadas ó pintadas, previa aplicación del \r\nFester Sellador acrílico. \r\n• Este producto en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la \r\nradiación solar, haciendo más confortable los interiores y logrando importantes ahorros de energía ante el uso de sistemas de aire acondicionado. \r\n• Debido a sus propiedades, este producto puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos incluso asfálticos, previo retiro de partes falsamente adheridas, lavado de la \r\nsuperficie mediante agua y cepillo, hasta lograr que la superficie quede bien limpia, y aplicando después el Fester Sellador \r\nacrílico.', 10, NULL, 'NWQmFJLxrL4dalwpjcQppyvDHvFgzO.png', 0, '2024-02-07 17:48:43', '2024-02-07 17:48:43'),
(90, 11, 'FESTER A FIBRATADO 5 AÑOS', 2338.56, 'Impermeabilizante para techos y azoteas monolíticas (sin movimiento estructural) horizontales e inclinadas, construidas de \r\nconcreto. \r\n• Como recubrimiento protector en cubiertas de láminas de fibrocemento, galvanizadas ó pintadas, previa aplicación del \r\nFester Sellador acrílico. \r\n• Este producto en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la \r\nradiación solar, haciendo más confortable los interiores y logrando importantes ahorros de energía ante el uso de sistemas de aire acondicionado. \r\n• Debido a sus propiedades, este producto puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos incluso asfálticos, previo retiro de partes falsamente adheridas, lavado de la \r\nsuperficie mediante agua y cepillo, hasta lograr que la superficie quede bien limpia, y aplicando después el Fester Sellador \r\nacrílico.', 10, NULL, 'bfRP4ZX5TeU9x4ao6deg23nNW9QiaW.png', 0, '2024-02-07 17:49:49', '2024-02-07 17:49:49'),
(91, 11, 'FESTER A 7 AÑOS', 2492.00, 'Impermeabilizante para techos y azoteas monolíticas (sin movimiento estructural) horizontales e inclinadas, construidas de \r\nconcreto. \r\n• Como recubrimiento protector en cubiertas de láminas de fibrocemento, galvanizadas ó pintadas, previa aplicación del \r\nFester Sellador acrílico. \r\n• Este producto en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la \r\nradiación solar, haciendo más confortable los interiores y logrando importantes ahorros de energía ante el uso de sistemas de aire acondicionado. \r\n• Debido a sus propiedades, este producto puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos incluso asfálticos, previo retiro de partes falsamente adheridas, lavado de la \r\nsuperficie mediante agua y cepillo, hasta lograr que la superficie quede bien limpia, y aplicando después el Fester Sellador \r\nacrílico.', 10, NULL, '8CP7YuQqGkv5lMzKeRVHUy1hptWckJ.png', 0, '2024-02-07 17:51:36', '2024-02-07 17:51:36'),
(92, 11, 'FESTER A 3 AÑOS 4L', 436.16, 'Impermeabilizante para techos y azoteas monolíticas (sin movimiento estructural) horizontales e inclinadas, construidas de concreto. \r\n• Como recubrimiento protector en cubiertas de láminas de fibrocemento, galvanizadas ó pintadas, previa aplicación del \r\nFester Sellador acrílico. \r\n• Este producto en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la radiación solar, haciendo más confortable los interiores y logrando importantes ahorros de energía ante el uso de sistemas de aire acondicionado. \r\n• Debido a sus propiedades, este producto puede ser aplicado para el mantenimiento de sistemas envejecidos incluso asfálticos, previo retiro de partes falsamente adheridas, lavado de la superficie mediante agua y cepillo, hasta lograr que la superficie quede bien limpia, y aplicando después el Fester Sellador acrílico.', 10, NULL, 'TzL24keJ0RxwtOWqhZoH9n2dK6UTcY.png', 0, '2024-02-07 17:53:45', '2024-02-07 17:53:45'),
(93, 11, 'FESTER A 5 AÑOS 4L', 506.92, 'Impermeabilizante para techos y azoteas monolíticas (sin movimiento estructural) horizontales e inclinadas, construidas de \r\nconcreto. \r\n• Como recubrimiento protector en cubiertas de láminas de fibrocemento, galvanizadas ó pintadas, previa aplicación del \r\nFester Sellador acrílico. \r\n• Este producto en color blanco, se recomienda para impermeabilizar y lograr la máxima reflectividad con lo que se aísla la \r\nradiación solar, haciendo más confortable los interiores y logrando importantes ahorros de energía ante el uso de sistemas de aire acondicionado. \r\n• Debido a sus propiedades, este producto puede ser aplicado \r\npara el mantenimiento de sistemas envejecidos incluso asfálticos, previo retiro de partes falsamente adheridas, lavado de la \r\nsuperficie mediante agua y cepillo, hasta lograr que la superficie quede bien limpia, y aplicando después el Fester Sellador \r\nacrílico.', 10, NULL, '4au8w5ZY3gOnlYZMYUXVHkxGLi5Wwn.png', 0, '2024-02-07 17:54:55', '2024-02-07 17:54:55'),
(94, 20, 'FESTER MICROFEST 4L', 493.00, 'Como impermeabilizante en losas de concreto armado con \r\npendiente propia.\r\n• Para climas templados y cálidos.\r\n• Por la fácil aplicación y buena durabilidad, Fester Microfest \r\nresulta el material ideal para impermeabilizar techos y \r\nazoteas.\r\n• Excelente adherencia tanto a superficies secas como \r\nhúmedas, por lo que puede ser aplicado en cualquier época \r\ndel año.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No es inflamable.', 10, NULL, 'QUMVYHm6pB9tVUN50tTIDhVUM9Si8j.png', 0, '2024-02-07 17:58:42', '2024-02-07 17:58:42'),
(95, 20, 'FESTER MICROFEST 19L', 1846.72, 'Como impermeabilizante en losas de concreto armado con \r\npendiente propia.\r\n• Para climas templados y cálidos.\r\n• Por la fácil aplicación y buena durabilidad, Fester Microfest \r\nresulta el material ideal para impermeabilizar techos y \r\nazoteas.\r\n• Excelente adherencia tanto a superficies secas como \r\nhúmedas, por lo que puede ser aplicado en cualquier época \r\ndel año.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No es inflamable.', 10, NULL, 'v9hhfkYzBPvNweGnXHG4hOFNLFBnkv.png', 0, '2024-02-07 17:59:22', '2024-02-07 17:59:23'),
(96, 20, 'FESTER MICROFEST 200L', 16279.44, 'Como impermeabilizante en losas de concreto armado con \r\npendiente propia.\r\n• Para climas templados y cálidos.\r\n• Por la fácil aplicación y buena durabilidad, Fester Microfest \r\nresulta el material ideal para impermeabilizar techos y \r\nazoteas.\r\n• Excelente adherencia tanto a superficies secas como \r\nhúmedas, por lo que puede ser aplicado en cualquier época \r\ndel año.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No es inflamable.', 10, NULL, '5YJvg6aLgo29Y0zTl7KdRmU6nFxjsM.png', 0, '2024-02-07 18:00:20', '2024-02-07 18:00:20'),
(97, 20, 'FESTER MICROLATIC 4L', 592.76, 'Adhesivo para placas termoaislantes sobre superficies de \r\nconcreto, metálicas, de madera, paneles de yeso, etc.\r\n• Como parte del sistema para impermeabilizar losas de \r\nconcreto con pendiente propia, coronas de cimentación y \r\nmuros colindantes.\r\n• Como parte del sistema para impermeabilizante especial \r\npara climas fríos y templados.\r\n• Su reforzamiento con elastómeros hace de Fester \r\nMicrolastic el adhesivo idóneo para la colocación de placas \r\ntermoaislantes de poliestireno, además de ser parte de un \r\nsistema impermeable de muy buena durabilidad en el \r\ntratamiento de muros, techos y azoteas.\r\n• Elasticidad y adherencia.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No inflamable.\r\n1.Adhesivo para placas termoaislantes.', 10, NULL, 'O97D33nZlhagsUgc9UiNZQyyiodzQf.png', 0, '2024-02-07 18:01:50', '2024-02-07 18:01:50'),
(98, 20, 'FESTER MICROLASTIC 19L', 2260.84, 'Adhesivo para placas termoaislantes sobre superficies de \r\nconcreto, metálicas, de madera, paneles de yeso, etc.\r\n• Como parte del sistema para impermeabilizar losas de \r\nconcreto con pendiente propia, coronas de cimentación y \r\nmuros colindantes.\r\n• Como parte del sistema para impermeabilizante especial \r\npara climas fríos y templados.\r\n• Su reforzamiento con elastómeros hace de Fester \r\nMicrolastic el adhesivo idóneo para la colocación de placas \r\ntermoaislantes de poliestireno, además de ser parte de un \r\nsistema impermeable de muy buena durabilidad en el \r\ntratamiento de muros, techos y azoteas.\r\n• Elasticidad y adherencia.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No inflamable.\r\n1.Adhesivo para placas termoaislantes.', 10, NULL, 'ujucqCZNAR1O30WEcPDX8Va0xMAfHN.png', 0, '2024-02-07 18:02:42', '2024-02-07 18:02:42'),
(99, 20, 'FESTER MICROLASTIC 200L', 18865.08, 'Adhesivo para placas termoaislantes sobre superficies de \r\nconcreto, metálicas, de madera, paneles de yeso, etc.\r\n• Como parte del sistema para impermeabilizar losas de \r\nconcreto con pendiente propia, coronas de cimentación y \r\nmuros colindantes.\r\n• Como parte del sistema para impermeabilizante especial \r\npara climas fríos y templados.\r\n• Su reforzamiento con elastómeros hace de Fester \r\nMicrolastic el adhesivo idóneo para la colocación de placas \r\ntermoaislantes de poliestireno, además de ser parte de un \r\nsistema impermeable de muy buena durabilidad en el \r\ntratamiento de muros, techos y azoteas.\r\n• Elasticidad y adherencia.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No inflamable.\r\n1.Adhesivo para placas termoaislantes.', 10, NULL, 'Fahj68vhCjEs40TX6ernkNxgGEYX8h.png', 0, '2024-02-07 18:03:24', '2024-02-07 18:03:24'),
(100, 20, 'FESTER MICROSEAL 2F 19L', 2024.20, '• Como impermeabilizante para:\r\n• Superficies horizontales y verticales de concreto, lámina, \r\nmampostería, tabique, etc.\r\n• Coronas de cimentación. \r\n• Como adhesivo para placas termoaislantes en cuartos de \r\nrefrigeración, cubiertas y similares.\r\n• Combinado con arena sílice puede emplearse como renivelador y mortero asfáltico para la reparación de pequeños \r\nhuecos en losas de concreto.\r\n• Como recubrimiento protector y anticorrosivo para \r\nsuperficies metálicas.\r\n• Resiste todo tipo de climas.\r\n• Fester Microseal 2F se caracteriza por ser uno de los \r\nproductos más completos y versátiles en su genero por su \r\nalto desempeño en todo tipo de clima, con alta durabilidad, \r\npreferido por la industria y la construcción para obra nueva \r\ny mantenimiento.\r\n• Excelente adherencia sobre superficies secas o húmedas, \r\npor lo que puede aplicarse en cualquier época del año.\r\n• Recomendado para la protección externa de equipos, \r\ntuberías, tanques metálicos y de concreto, techos de lámina, \r\ncontra la corrosión causada por agentes atmosféricos, sales, \r\nácidos y álcalis ligeros, etc.\r\n• Puede aplicarse sin escurrimiento hasta temperaturas de \r\n45°C; seco resiste temperaturas hasta 70°C sin degradarse.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).', 10, NULL, 'xNkJ1mpp6CUIOlzqxYv2GwZe7BmHwI.png', 0, '2024-02-07 18:06:41', '2024-02-07 18:06:41'),
(101, 20, 'FESTER MICROSEAL 2F 200L', 17723.64, '• Como impermeabilizante para:\r\n• Superficies horizontales y verticales de concreto, lámina, \r\nmampostería, tabique, etc.\r\n• Coronas de cimentación. \r\n• Como adhesivo para placas termoaislantes en cuartos de \r\nrefrigeración, cubiertas y similares.\r\n• Combinado con arena sílice puede emplearse como renivelador y mortero asfáltico para la reparación de pequeños \r\nhuecos en losas de concreto.\r\n• Como recubrimiento protector y anticorrosivo para \r\nsuperficies metálicas.\r\n• Resiste todo tipo de climas.\r\n• Fester Microseal 2F se caracteriza por ser uno de los \r\nproductos más completos y versátiles en su genero por su \r\nalto desempeño en todo tipo de clima, con alta durabilidad, \r\npreferido por la industria y la construcción para obra nueva \r\ny mantenimiento.\r\n• Excelente adherencia sobre superficies secas o húmedas, \r\npor lo que puede aplicarse en cualquier época del año.\r\n• Recomendado para la protección externa de equipos, \r\ntuberías, tanques metálicos y de concreto, techos de lámina, \r\ncontra la corrosión causada por agentes atmosféricos, sales, \r\nácidos y álcalis ligeros, etc.\r\n• Puede aplicarse sin escurrimiento hasta temperaturas de \r\n45°C; seco resiste temperaturas hasta 70°C sin degradarse.\r\n• No necesita calentarse para su aplicación.\r\n• No es tóxico (salvo ingestión).', 10, NULL, 'GKDhutdAZxgZtP8WAW66uoO30VHMQU.png', 0, '2024-02-07 18:07:33', '2024-02-07 18:07:33'),
(102, 20, 'FESTER IMPERFEST E 200L', 13355.08, 'Como impermeabilizante en losas de concreto armado con \r\npendiente propia.\r\n• Facilidad de aplicación en climas cálidos y templado.\r\n• Debido a su bajo costo y gran facilidad de aplicación, Fester \r\nImperfest E es el material ideal para impermeabilizar techos y \r\nazoteas en obra de interés social, autoconstrucción y donde \r\nse requiera un sistema económico.\r\n• Excelente adherencia en superficies secas o húmedas.\r\n• No necesita calentarse para su aplicación.\r\n• No tóxico (salvo ingestión).\r\n• No inflamable.', 10, NULL, 'isvu3C5apQ48vc7U1aHV8IqJDcY1m8.png', 0, '2024-02-07 18:09:13', '2024-02-07 18:09:13'),
(103, 20, 'FESTER IMPERFEST E 19L', 1554.40, 'Como impermeabilizante en losas de concreto armado con \r\npendiente propia.\r\n• Facilidad de aplicación en climas cálidos y templado.\r\n• Debido a su bajo costo y gran facilidad de aplicación, Fester \r\nImperfest E es el material ideal para impermeabilizar techos y \r\nazoteas en obra de interés social, autoconstrucción y donde \r\nse requiera un sistema económico.\r\n• Excelente adherencia en superficies secas o húmedas.\r\n• No necesita calentarse para su aplicación.\r\n• No tóxico (salvo ingestión).\r\n• No inflamable.', 10, NULL, 'xsoIHyAigk1s7LW1pbPvatihd63AWD.png', 0, '2024-02-07 18:10:13', '2024-02-07 18:10:13'),
(104, 20, 'FESTER IMPERFEST E 4L', 435.00, 'Como impermeabilizante en losas de concreto armado con \r\npendiente propia.\r\n• Facilidad de aplicación en climas cálidos y templado.\r\n• Debido a su bajo costo y gran facilidad de aplicación, Fester \r\nImperfest E es el material ideal para impermeabilizar techos y \r\nazoteas en obra de interés social, autoconstrucción y donde \r\nse requiera un sistema económico.\r\n• Excelente adherencia en superficies secas o húmedas.\r\n• No necesita calentarse para su aplicación.\r\n• No tóxico (salvo ingestión).\r\n• No inflamable.', 10, NULL, 'dhdHHN5NR4spDLPLEqMoLFzKNgRPMn.png', 0, '2024-02-07 18:11:04', '2024-02-07 18:11:04'),
(105, 22, 'FESTER IMPERFLEX', 948.88, 'Como refuerzo para sistemas asfálticos conformados con \r\nImperfest E.\r\n• Como refuerzo para tratar los puntos críticos en la \r\nimpermeabilización de sistemas asfálticos en frío.\r\n• Fester Imperflex refuerza los sistemas impermeables \r\nasfálticos con Feter Imperfest E, dándoles resistencia a los \r\nmovimientos moderados que ocurren en una losa de techo. \r\nFavorece la adherencia entre las capas asfálticas \r\nestructurando los sistemas impermeables y \r\nproporcionándoles resistencia a los esfuerzos mecánicos.\r\n• Alta flexibilidad, lo que permite amoldarla a cualquier tipo de \r\nsuperficie.\r\n• Resiste los esfuerzos comunes de contracción-dilatación a los \r\nque están sometidos los sistemas impermeables.\r\n• Resistente las temperaturas típicas al estar expuesta junto \r\ncon el sistema impermeable.\r\n• Absorbe máximo 1% de humedad aún sumergido en agua', 10, NULL, 'qOtHt0AeNDxCQ6E3IHzNBlG9mZrN4E.png', 0, '2024-02-07 18:12:45', '2024-02-07 18:12:45'),
(106, 23, 'FESTER IMPERFEST A TERRACOTA', 2773.56, 'USOS\r\nComo recubrimiento protector para sistemas impermeables \r\nasfálticos con Fester Imperfest “E” .\r\n• Fester Imperfet A Terracota reúne en uno solo, \r\npropiedades de flexibilidad, resistencia al intemperismo y \r\nduración, que sumadas a sus cualidades estéticas lo hacen \r\nun buen acabado protector a base de resinas acrílico – \r\nestirenadas para la protección de sistemas impermeables \r\neconómicos.\r\n• Forma una capa resistente que previene el deterioro \r\nprematuro por intemperización de los sistemas \r\nimpermeables protegiéndolos de la luz UV del sol, \r\nevitando el deterioro prematuro del asfalto. \r\n• Resiste todo tipo de condiciones climáticas y ambientales.\r\n• Buena brochabilidad y rápida aplicación.\r\n• No es tóxico (salvo ingestión).\r\n• No es inflamable.', 10, NULL, 'rpN6w2FC63BZTNHUNh2B8AQNyHtgCS.png', 0, '2024-02-07 18:14:29', '2024-02-07 18:14:29'),
(107, 20, 'FESTER HIDROPRIMER PLUS WB 4L', 702.96, '• Como primario para sistemas Impermeables a base de:\r\n• Fester Vaportite 550, Fester Mip APP y Fester Mip SBS.\r\n• Como primario para selladores asfalticos como: Fester Plastic \r\nCement y Fester Elastofest.\r\n• Alta capacidad de penetración en elementos con poro \r\nabierto, favoreciendo la adherencia de los sistemas \r\nimpermeables. Permite efectuar impermeabilizaciones aun \r\nen temporada de lluvias siempre y cuando la superficie este \r\nseca al menos superficialmente de un día para otro. \r\n• Fester Hidroprimer aplicado y al quedar expuesto a los rayos \r\nsolares por varios días, ayuda a la evaporación de la \r\nhumedad contenida en las losas de concreto, evitando que el \r\nsistema impermeable forme burbujas por el agua atrapada. \r\n• Baja viscosidad. \r\n• No necesita calentarse para su aplicación.\r\n• Rápido secado.', 10, NULL, 'Sg6LndZ33xT0y1RBsqWhYWxnTq5Td7.png', 0, '2024-02-07 18:20:26', '2024-02-07 18:20:26'),
(108, 20, 'FESTER HIDROPRIMER PLUS WB 19L', 2992.80, '• Como primario para sistemas Impermeables a base de:\r\n• Fester Vaportite 550, Fester Mip APP y Fester Mip SBS.\r\n• Como primario para selladores asfalticos como: Fester Plastic \r\nCement y Fester Elastofest.\r\n• Alta capacidad de penetración en elementos con poro \r\nabierto, favoreciendo la adherencia de los sistemas \r\nimpermeables. Permite efectuar impermeabilizaciones aun \r\nen temporada de lluvias siempre y cuando la superficie este \r\nseca al menos superficialmente de un día para otro. \r\n• Fester Hidroprimer aplicado y al quedar expuesto a los rayos \r\nsolares por varios días, ayuda a la evaporación de la \r\nhumedad contenida en las losas de concreto, evitando que el \r\nsistema impermeable forme burbujas por el agua atrapada. \r\n• Baja viscosidad. \r\n• No necesita calentarse para su aplicación.\r\n• Rápido secado.', 10, NULL, 'sVTEMYW5wIIULcoV2jeLaVNcn3dnCQ.png', 0, '2024-02-07 18:21:27', '2024-02-07 18:21:27'),
(109, 20, 'FESTER HIDROPRIMER PLUS WB 200L', 24588.52, '• Como primario para sistemas Impermeables a base de:\r\n• Fester Vaportite 550, Fester Mip APP y Fester Mip SBS.\r\n• Como primario para selladores asfalticos como: Fester Plastic \r\nCement y Fester Elastofest.\r\n• Alta capacidad de penetración en elementos con poro \r\nabierto, favoreciendo la adherencia de los sistemas \r\nimpermeables. Permite efectuar impermeabilizaciones aun \r\nen temporada de lluvias siempre y cuando la superficie este \r\nseca al menos superficialmente de un día para otro. \r\n• Fester Hidroprimer aplicado y al quedar expuesto a los rayos \r\nsolares por varios días, ayuda a la evaporación de la \r\nhumedad contenida en las losas de concreto, evitando que el \r\nsistema impermeable forme burbujas por el agua atrapada. \r\n• Baja viscosidad. \r\n• No necesita calentarse para su aplicación.\r\n• Rápido secado.', 10, NULL, 'Tnacbadegv44BpAYByxqy0BSFMG2Kc.png', 0, '2024-02-07 18:22:17', '2024-02-07 18:22:17'),
(110, 21, 'FESTER PLASTIC CEMENT 1L', 233.16, 'Como sellador de juntas, fisuras, grietas y ranuras en \r\nsuperficies de concreto, para tratamiento de puntos críticos. \r\nEs parte de los sistemas Impermeables asfalticos de \r\naplicación en frío (Base agua o base solvente) y mantos \r\nimpermeables prefabricados).\r\n• Como sellador, resanador y calafateador para los empalmes \r\ntransversales y longitudinales en techumbres de laminas de \r\nfibrocemento, plásticas y metálicas.\r\n• Recomendado para:\r\n• Calafatear tragaluces.\r\n• Reforzar chaflanes, cornisas, canales, etc.\r\n• Sellar traslapes y remates de fieltros utilizados en \r\nimpermeabilización.\r\n• Económico y de sencilla aplicación, Fester Plastic Cement es \r\nun producto altamente versátil, especialmente formulado \r\npara cubrir eficientemente los requerimientos básicos de \r\nsellado y calafateado en cualquiera de los sistemas \r\nimpermeables en frío.\r\n• Buena durabilidad y excelente adherencia sobre cualquier \r\nsuperficie previamente imprimada.\r\n• Una vez seco forma un sello impermeable al agua.\r\n• Resiste todo tipo de condiciones climáticas y ambientales.\r\n• Es plástico y de gran trabajabilidad.\r\n• No es inflamable, una vez seco', 10, NULL, NULL, 0, '2024-02-07 18:23:43', '2024-02-07 18:23:43');
INSERT INTO `p_f_producto_pepes` (`id`, `subcategoria`, `nombre`, `precio`, `descripcion`, `existencias`, `presentacion`, `imagen`, `inicio`, `created_at`, `updated_at`) VALUES
(111, 21, 'FESTER PLASTIC CEMENT 4L', 735.44, 'Como sellador de juntas, fisuras, grietas y ranuras en \r\nsuperficies de concreto, para tratamiento de puntos críticos. \r\nEs parte de los sistemas Impermeables asfalticos de \r\naplicación en frío (Base agua o base solvente) y mantos \r\nimpermeables prefabricados).\r\n• Como sellador, resanador y calafateador para los empalmes \r\ntransversales y longitudinales en techumbres de laminas de \r\nfibrocemento, plásticas y metálicas.\r\n• Recomendado para:\r\n• Calafatear tragaluces.\r\n• Reforzar chaflanes, cornisas, canales, etc.\r\n• Sellar traslapes y remates de fieltros utilizados en \r\nimpermeabilización.\r\n• Económico y de sencilla aplicación, Fester Plastic Cement es \r\nun producto altamente versátil, especialmente formulado \r\npara cubrir eficientemente los requerimientos básicos de \r\nsellado y calafateado en cualquiera de los sistemas \r\nimpermeables en frío.\r\n• Buena durabilidad y excelente adherencia sobre cualquier \r\nsuperficie previamente imprimada.\r\n• Una vez seco forma un sello impermeable al agua.\r\n• Resiste todo tipo de condiciones climáticas y ambientales.\r\n• Es plástico y de gran trabajabilidad.\r\n• No es inflamable, una vez seco', 10, NULL, 'tiXZileNfw6aqF7pXFTnNYBhcbIBfy.png', 0, '2024-02-07 18:25:25', '2024-02-07 18:25:25'),
(112, 21, 'FESTER PLASTIC CEMENT 19L', 2969.60, 'Como sellador de juntas, fisuras, grietas y ranuras en \r\nsuperficies de concreto, para tratamiento de puntos críticos. \r\nEs parte de los sistemas Impermeables asfalticos de \r\naplicación en frío (Base agua o base solvente) y mantos \r\nimpermeables prefabricados).\r\n• Como sellador, resanador y calafateador para los empalmes \r\ntransversales y longitudinales en techumbres de laminas de \r\nfibrocemento, plásticas y metálicas.\r\n• Recomendado para:\r\n• Calafatear tragaluces.\r\n• Reforzar chaflanes, cornisas, canales, etc.\r\n• Sellar traslapes y remates de fieltros utilizados en \r\nimpermeabilización.\r\n• Económico y de sencilla aplicación, Fester Plastic Cement es \r\nun producto altamente versátil, especialmente formulado \r\npara cubrir eficientemente los requerimientos básicos de \r\nsellado y calafateado en cualquiera de los sistemas \r\nimpermeables en frío.\r\n• Buena durabilidad y excelente adherencia sobre cualquier \r\nsuperficie previamente imprimada.\r\n• Una vez seco forma un sello impermeable al agua.\r\n• Resiste todo tipo de condiciones climáticas y ambientales.\r\n• Es plástico y de gran trabajabilidad.\r\n• No es inflamable, una vez seco', 10, NULL, '1P9bbRt6reCpve466nT5BocS5B4wrU.png', 0, '2024-02-07 18:27:04', '2024-02-07 18:27:05'),
(113, 21, 'FESTER PLASTIC CEMENT 200L', 24672.04, 'Como sellador de juntas, fisuras, grietas y ranuras en \r\nsuperficies de concreto, para tratamiento de puntos críticos. \r\nEs parte de los sistemas Impermeables asfalticos de \r\naplicación en frío (Base agua o base solvente) y mantos \r\nimpermeables prefabricados).\r\n• Como sellador, resanador y calafateador para los empalmes \r\ntransversales y longitudinales en techumbres de laminas de \r\nfibrocemento, plásticas y metálicas.\r\n• Recomendado para:\r\n• Calafatear tragaluces.\r\n• Reforzar chaflanes, cornisas, canales, etc.\r\n• Sellar traslapes y remates de fieltros utilizados en \r\nimpermeabilización.\r\n• Económico y de sencilla aplicación, Fester Plastic Cement es \r\nun producto altamente versátil, especialmente formulado \r\npara cubrir eficientemente los requerimientos básicos de \r\nsellado y calafateado en cualquiera de los sistemas \r\nimpermeables en frío.\r\n• Buena durabilidad y excelente adherencia sobre cualquier \r\nsuperficie previamente imprimada.\r\n• Una vez seco forma un sello impermeable al agua.\r\n• Resiste todo tipo de condiciones climáticas y ambientales.\r\n• Es plástico y de gran trabajabilidad.\r\n• No es inflamable, una vez seco', 10, NULL, 'E4pcftushXyOtEaOIc9RuNQjsfZxtW.png', 0, '2024-02-07 18:28:15', '2024-02-07 18:28:15'),
(114, 22, 'FESTERFLEX BOLSA', 194.88, '• Como refuerzo para los sistemas impermeables asfálticos en \r\nfrío, base solvente o base agua.\r\n• Como refuerzo para tratar los puntos críticos en la \r\nimpermeabilización de sistemas asfálticos en frío.\r\n• Festerflex, refuerza los sistemas impermeables asfálticos \r\ndándoles resistencia a los movimientos moderados que \r\nocurren en una losa de techo. Favorece la adherencia entre \r\nlas capas asfálticas estructurando los sistemas \r\nimpermeables y proporcionándoles resistencia a los \r\nesfuerzos mecánicos.\r\n• Alta flexibilidad, lo que le permite amoldarse a cualquier \r\ntipo de superficie.\r\n• Resiste los esfuerzos comunes de contracción-dilatación a los \r\nque están sometidos los sistemas impermeables.\r\n• Resistente las temperaturas típicas al estar expuesta junto \r\ncon el sistema impermeable.\r\n• Absorbe máximo 1% de humedad aún sumergido en agua.', 10, NULL, 'R4U1igVckCV30AbouAV40WNA7D37A9.png', 0, '2024-02-08 02:39:45', '2024-02-08 02:39:45'),
(115, 22, 'FESTERFLEX ROLLO', 1207.56, '• Como refuerzo para los sistemas impermeables asfálticos en frío, base solvente o base agua.\r\n• Como refuerzo para tratar los puntos críticos en la \r\nimpermeabilización de sistemas asfálticos en frío.\r\n• Festerflex, refuerza los sistemas impermeables asfálticos \r\ndándoles resistencia a los movimientos moderados que \r\nocurren en una losa de techo. Favorece la adherencia entre \r\nlas capas asfálticas estructurando los sistemas \r\nimpermeables y proporcionándoles resistencia a los \r\nesfuerzos mecánicos.\r\n• Alta flexibilidad, lo que le permite amoldarse a cualquier \r\ntipo de superficie.\r\n• Resiste los esfuerzos comunes de contracción-dilatación a los que están sometidos los sistemas impermeables.\r\n• Resistente las temperaturas típicas al estar expuesta junto \r\ncon el sistema impermeable.\r\n• Absorbe máximo 1% de humedad aún sumergido en agua.', 10, NULL, 'PaEP3gyvsQVj51INN6TVxNVru6uDse.png', 0, '2024-02-08 03:57:35', '2024-02-08 03:57:35'),
(116, 21, 'FESTER VAPORTITE 550 1L', 313.20, 'Como impermeabilizante para techos, cimentaciones, \ncharolas de baño, cuartos de lavado, jardineras, canalones \npara desagüe de techumbres, fuentes, espejos de agua, \ntaludes o muros de contención, macetones, etc.\n• Como protección anticorrosiva para tuberías enterradas o \nductos de aire acondicionado.\n• Recomendado para aplicación bajo recubrimientos pétreos en pisos o entre-pisos.\n• Como adhesivo, recubrimiento, sellador y barrera de vapor \npara aislamientos térmicos a base de fibra de vidrio, corcho, \nlana mineral y similar (excepto poliestireno expandido).', 10, NULL, 'c3HYiqq5OwwKwWVddvmRUqBf2p3ior.png', 0, '2024-02-08 04:00:24', '2024-02-08 06:56:20'),
(117, 21, 'FESTER VAPORTITE 550 4L', 839.84, 'Como impermeabilizante para techos, cimentaciones, \r\ncharolas de baño, cuartos de lavado, jardineras, canalones \r\npara desagüe de techumbres, fuentes, espejos de agua, \r\ntaludes o muros de contención, macetones, etc.\r\n• Como protección anticorrosiva para tuberías enterradas o \r\nductos de aire acondicionado.\r\n• Recomendado para aplicación bajo recubrimientos pétreos en pisos o entre-pisos.\r\n• Como adhesivo, recubrimiento, sellador y barrera de vapor \r\npara aislamientos térmicos a base de fibra de vidrio, corcho, \r\nlana mineral y similar (excepto poliestireno expandido).', 10, NULL, 'abwWG9ShtJhcECEAN4mz6VklY4TJAe.png', 0, '2024-02-08 04:01:18', '2024-02-08 04:08:09'),
(118, 21, 'FESTER VAPORTITE 550 19L', 3241.04, 'Como impermeabilizante para techos, cimentaciones, \r\ncharolas de baño, cuartos de lavado, jardineras, canalones \r\npara desagüe de techumbres, fuentes, espejos de agua, \r\ntaludes o muros de contención, macetones, etc.\r\n• Como protección anticorrosiva para tuberías enterradas o \r\nductos de aire acondicionado.\r\n• Recomendado para aplicación bajo recubrimientos pétreos en pisos o entre-pisos.\r\n• Como adhesivo, recubrimiento, sellador y barrera de vapor \r\npara aislamientos térmicos a base de fibra de vidrio, corcho, \r\nlana mineral y similar (excepto poliestireno expandido).', 10, NULL, '71e5AdtkoRiURAFubGUw2VwhAUPrbG.png', 0, '2024-02-08 04:02:17', '2024-02-08 04:06:58'),
(119, 21, 'FESTER VAPORTITE 550 200L', 26975.80, 'Como impermeabilizante para techos, cimentaciones, \r\ncharolas de baño, cuartos de lavado, jardineras, canalones \r\npara desagüe de techumbres, fuentes, espejos de agua, \r\ntaludes o muros de contención, macetones, etc.\r\n• Como protección anticorrosiva para tuberías enterradas o \r\nductos de aire acondicionado.\r\n• Recomendado para aplicación bajo recubrimientos pétreos en pisos o entre-pisos.\r\n• Como adhesivo, recubrimiento, sellador y barrera de vapor \r\npara aislamientos térmicos a base de fibra de vidrio, corcho, \r\nlana mineral y similar (excepto poliestireno expandido).', 10, NULL, 'dOodoEAtZHvKQcIQRnvUZrNTLlebu3.png', 0, '2024-02-08 04:04:28', '2024-02-08 04:08:32'),
(120, 23, 'FESTERBLANC BLANCO', 4606.36, 'USOS\r\n• Como recubrimiento reflectivo, protector y decorativo para:\r\n• Sistemas Impermeables asfálticos.\r\n• Como recubrimiento y pintura lavable para superficies en \r\ninteriores y exteriores.', 10, NULL, 'eKYXFEsySoFMAm9qSJhZ968No3znzM.png', 0, '2024-02-08 08:25:14', '2024-02-08 08:25:14'),
(121, 23, 'FESTERBLANC TERRACOTA', 4147.00, 'USOS\r\n• Como recubrimiento reflectivo, protector y decorativo para:\r\n• Sistemas Impermeables asfálticos.\r\n• Como recubrimiento y pintura lavable para superficies en \r\ninteriores y exteriores.', 10, NULL, 'nr6nEsl4QSlXtj365lfGEyYZDJ3FIf.png', 0, '2024-02-08 08:26:07', '2024-02-08 08:26:07'),
(122, 23, 'FESTERBLANC VERDE TENIS', 4882.44, 'USOS\r\n• Como recubrimiento reflectivo, protector y decorativo para:\r\n• Sistemas Impermeables asfálticos.\r\n• Como recubrimiento y pintura lavable para superficies en \r\ninteriores y exteriores.', 10, NULL, '5NrYM8TdXDtaIbky6xc3c6w2rr4mxY.png', 0, '2024-02-08 08:27:06', '2024-02-08 08:27:06'),
(123, 23, 'FESTALUM 4L', 1337.48, 'USOS\r\n• Como recubrimiento protector y reflectivo para sistemas \r\nImpermeables asfálticos.\r\n• Como cubierta anticorrosivo sobre superficies metálicas en:\r\n-Techos de lámina. \r\n-Tuberías.\r\n-Tanques, etc. donde no se tenga la necesidad de resistencia a \r\ncondiciones de abrasión o contacto con solventes.', 10, NULL, NULL, 0, '2024-02-08 08:28:51', '2024-02-08 08:28:51'),
(124, 23, 'FESTALUM 19L', 5300.04, 'USOS\r\n• Como recubrimiento protector y reflectivo para sistemas \r\nImpermeables asfálticos.\r\n• Como cubierta anticorrosivo sobre superficies metálicas en:\r\n-Techos de lámina. \r\n-Tuberías.\r\n-Tanques, etc. donde no se tenga la necesidad de resistencia a \r\ncondiciones de abrasión o contacto con solventes.', 10, NULL, 'ofBNXFtJXmGgVkfzEF4haYi5qBp7DR.png', 0, '2024-02-08 08:30:14', '2024-02-08 08:30:14'),
(125, 23, 'FESTALUM 19L', 5300.04, 'USOS\r\n• Como recubrimiento protector y reflectivo para sistemas \r\nImpermeables asfálticos.\r\n• Como cubierta anticorrosivo sobre superficies metálicas en:\r\n-Techos de lámina. \r\n-Tuberías.\r\n-Tanques, etc. donde no se tenga la necesidad de resistencia a \r\ncondiciones de abrasión o contacto con solventes.', 10, NULL, 'vjKDpeyeELsGxnOGlKQkpII92PAJyA.png', 0, '2024-02-08 08:30:19', '2024-02-08 08:30:19'),
(126, 22, 'FESTER FLET 15', 1157.68, '• Como membrana de refuerzo para impermeabilizaciones en \r\ntrabes o coronas de cimentación. \r\n• Como base para sistemas Impermeables semi-flotados, sobre \r\ncubiertas de madera.\r\n• Para los sistemas impermeables, Fester Felt 15 permite los \r\nmovimientos de las juntas, grietas o fisuras, puenteándolas y evitando que éstas se transmitan a los sistemas \r\nimpermeables y provoquen su rompimiento.\r\n• Para las cimentaciones, combinado con el impermeabilizante elegido, resiste la humedad y salinidad. \r\n• Conjuntamente con el impermeabilizante, evita el ascenso de la humedad y la posterior aparición del salitre en los muros.\r\n• Resiste todo tipo de climas y condiciones ambientales.', 10, NULL, 'FtKCVnjzG2aDk5EJ2mERLhC2c5odQM.png', 0, '2024-02-08 08:32:13', '2024-02-08 08:32:13'),
(128, 24, 'FESTERMIP SBS FV 3.5 GRAVILLA', 1856.00, 'Como capa única en un sistema impermeable prefabricado.\r\n• Para superficies horizontales, inclinadas y verticales de \r\nconcreto, etc.\r\n• Ideal para techos de concreto con pocos detalles, \r\npredominantemente libres de obstáculos.', 10, NULL, '34lnVMs2yt56AdfOxvrr2AasGtIVsT.png', 0, '2024-02-08 09:56:35', '2024-02-08 09:56:35'),
(129, 24, 'FESTERMIP 5 SBS FV 3.5 GRAVILLA', 2672.64, 'Como capa única en un sistema impermeable prefabricado.\r\n• Para superficies horizontales, inclinadas y verticales de \r\nconcreto, etc.\r\n• Ideal para techos de concreto con pocos detalles, \r\npredominantemente libres de obstáculos.', 10, NULL, 'rq6GFx4SHRZMccHbROSLIDx6AV2VvQ.png', 0, '2024-02-08 09:58:28', '2024-02-08 09:58:28'),
(130, 24, 'FESTERMIP 8SBS PS 4.0', 3616.88, '• Como capa única en un sistema impermeable prefabricado.\r\n• Como segunda capa en sistemas reforzados al aplicar sobre \r\nFestermip APP PS liso.\r\n• Como impermeabilizante para superficies horizontales, \r\ninclinadas y verticales de concreto, madera, pamacón, fibra \r\nde vidrio, pre-colados, etc.\r\n• Para áreas como jardineras, faldones, etc. \r\n• Estructuras bajo tierra y sitios en inmersión constante.', 10, NULL, 'Kj1gAVBDbXMfgwgY0F8euJeaYyiLRl.png', 0, '2024-02-08 10:02:18', '2024-02-08 10:02:18'),
(131, 24, 'FESTERMIP 10SBS PS 4.0', 3877.88, '• Como capa única en un sistema impermeable prefabricado.\r\n• Como segunda capa en sistemas reforzados al aplicar sobre \r\nFestermip APP PS liso.\r\n• Como impermeabilizante para superficies horizontales, \r\ninclinadas y verticales de concreto, madera, pamacón, fibra \r\nde vidrio, pre-colados, etc.\r\n• Para áreas como jardineras, faldones, etc. \r\n• Estructuras bajo tierra y sitios en inmersión constante.', 10, NULL, 'TKx9wDNuT2l2O1GTlQkmCtoCB9Pdje.png', 0, '2024-02-08 10:04:05', '2024-02-08 10:04:06'),
(132, 24, 'FESTERMIP 12SBS PS 4.5', 4170.20, '• Como capa única en un sistema impermeable prefabricado.\r\n• Como segunda capa en sistemas reforzados al aplicar sobre \r\nFestermip APP PS liso.\r\n• Como impermeabilizante para superficies horizontales, \r\ninclinadas y verticales de concreto, madera, pamacón, fibra \r\nde vidrio, pre-colados, etc.\r\n• Para áreas como jardineras, faldones, etc. \r\n• Estructuras bajo tierra y sitios en inmersión constante.', 10, NULL, '6BUyPgDs8Q6g7sL103Gf30U1992ygj.png', 0, '2024-02-08 10:10:03', '2024-02-08 10:10:04'),
(133, 24, 'FESTERMIP 15APP PS 4.5', 4224.72, '• Como capa única en un sistema impermeable prefabricado.\r\n• Como segunda capa en sistemas reforzados al aplicar sobre \r\nFestermip APP PS liso.\r\n• Como impermeabilizante para superficies horizontales, \r\ninclinadas y verticales de concreto, madera, pamacón, fibra \r\nde vidrio, pre-colados, etc.\r\n• Para áreas como jardineras, faldones, etc. \r\n• Estructuras bajo tierra y sitios en inmersión constante.', 10, NULL, 'exFNlJqyMx3cQYSFLjDiP6GagCtXxM.png', 0, '2024-02-08 10:51:14', '2024-02-08 10:51:14'),
(134, 24, 'FESTERMIP APP PS 4.0', 3669.08, 'Ideal para impermeabilizar techos de concreto, que serán \r\nrecubiertos con morteros, carpetas de rodamiento o algún \r\nrecubrimiento pétreo como enladrillado, recubrimientos \r\ncerámicos, adoquines, acabados de piedra, etc.\r\n• Recomendado para la impermeabilización de jardineras que \r\nposteriormente serán repelladas con un mortero.\r\n• Para charolas de baño, espejos de agua y cimentaciones. \r\n• Como primera capa en sistemas reforzados que llevarán \r\ncomo segunda capa Festermip APP PS gravilla.\r\n• Para el refuerzo o tratamiento de puntos críticos.\r\n• Para impermeabilizar áreas completas expuestas a la \r\nintemperie y que se tenga considerada la aplicación de un \r\nacabado reflectivo como Festerblanc o Festalum, consultar \r\nhojas técnicas.\r\n• Como impermeabilizante para superficies horizontales, \r\ninclinadas y verticales de concreto, madera, pamacón, fibra \r\nde vidrio, pre-colados, etc. \r\n• Estructuras bajo tierra.\r\n• Sitios bajo inmersión constante.\r\n• Ideal para impermeabilizar superficies en cualquier tipo de \r\nclima tomando en consideración que será recubierto.', 9, NULL, 'jKtCeR6zDLkeQCmnBKP26LqHvNVwjO.png', 0, '2024-02-08 10:53:10', '2024-02-09 11:11:15'),
(135, 24, 'FESTERMIP GARDEN SBS PS 4.0', 4152.80, 'Para techos de concreto, jardineras o cualquier otra área \r\ndonde es necesario impermeabilizar y se tenga considerado \r\ncolocar áreas verdes (pasto, plantas, arbustos, etc.) \r\nconocidos como techos verdes o Roof Garden.\r\n• Para superficies horizontales, inclinadas y verticales de \r\nconcreto, madera, pamacón, fibra de vidrio, pre-colados, \r\netc. donde se requiera colocar un sistema impermeable con \r\nprotección anti raíz.\r\n• Estructuras bajo tierra (muros, cimentaciones, taludes, etc.)', 10, NULL, 'jx9Emo4pge993Cmj8k0fdWzxSNm7zh.png', 0, '2024-02-08 10:55:55', '2024-02-08 10:55:55'),
(136, 14, 'FESTER CR-65', 991.80, 'Para sellar e impermeabilizar paredes de tabique o block, \r\nestructuras de concreto, elementos de mampostería, entre \r\notros. \r\n• Evita el paso del agua y la humedad en superficies \r\nhorizontales y verticales; estructuras expuestas a la humedad \r\ndel subsuelo, agua derivada de la lluvia, escurrimientos o \r\nproveniente de filtraciones. \r\n• Para sellar e impermeabilizar: superficies de concreto \r\nestructuralmente sanas, elementos de concreto expuestos a \r\npresión positiva, negativa, muros interiores y exteriores en \r\nconstrucciones nuevas o envejecidas con presencia de \r\nhumedad y formación de salitre.', 10, NULL, '4yJIK4U8oZx7u6aDfwnOoI5qdKweHJ.png', 0, '2024-02-08 10:58:58', '2024-02-08 10:58:58'),
(137, 14, 'FESTER CR-66 35KG GRIS', 3041.52, 'USOS\r\n• Para impermeabilizar y proteger superficies con o sin \r\nmovimiento, sometidas a presiones hidrostáticas positivas y \r\nnegativas.\r\n• Es barrera de vapor\r\n• Flexible e impermeable\r\n• No necesita agua para su preparación\r\n• Puentea grietas y fisuras existentes hasta 4 mm\r\n• Soporta movimientos de la superficie ocasionados por \r\ncambios de temperatura y humedad\r\n• Secado rápido\r\n• No requiere curado\r\n• Se puede pintar, recubrir con yeso, mortero cerámica o \r\nrecubrimientos epóxicos, etc.\r\n• Para interiores y exteriores\r\n• Aplicación sencilla, práctica y rápida\r\n• Aplicación con brocha, llana o cepillo\r\n• Puede ser aplicado en superficies, al retirar la cimbra \r\ndespués de 72 horas\r\n• Soporta intemperismo, no es necesario recubrirlo\r\n• No contiene solventes ni materiales peligrosos\r\n• Soporta tráfico peatonal ligero\r\n• Resiste presiones positivas hasta 7.5 bar (75 metros de \r\ncolumna de agua) y presión negativa hasta 0.15 bar (1.5 \r\nmetros columna de agua\r\n• Protege al concreto contra la carbonatación y corrosión\r\n• Es resistente a la alcalinidad del concreto y demás materiales \r\nde construcción', 10, NULL, 'UOg3OBSKpyxEhDBP0QriFbE0yBzTuy.png', 0, '2024-02-08 11:01:44', '2024-02-08 11:11:04'),
(138, 26, 'FESTER CR 66 FF 7KG', 990.64, 'SOS\r\n• Para impermeabilizar y proteger superficies con o sin \r\nmovimiento, sometidas a presiones hidrostáticas positivas y \r\nnegativas.\r\n• Es barrera de vapor\r\n• Flexible e impermeable\r\n• No necesita agua para su preparación\r\n• Puentea grietas y fisuras existentes hasta 4 mm\r\n• Soporta movimientos de la superficie ocasionados por \r\ncambios de temperatura y humedad\r\n• Secado rápido\r\n• No requiere curado\r\n• Se puede pintar, recubrir con yeso, mortero cerámica o \r\nrecubrimientos epóxicos, etc.\r\n• Para interiores y exteriores\r\n• Aplicación sencilla, práctica y rápida\r\n• Aplicación con brocha, llana o cepillo\r\n• Puede ser aplicado en superficies, al retirar la cimbra \r\ndespués de 72 horas\r\n• Soporta intemperismo, no es necesario recubrirlo\r\n• No contiene solventes ni materiales peligrosos\r\n• Soporta tráfico peatonal ligero\r\n• Resiste presiones positivas hasta 7.5 bar (75 metros de \r\ncolumna de agua) y presión negativa hasta 0.15 bar (1.5 \r\nmetros columna de agua\r\n• Protege al concreto contra la carbonatación y corrosión\r\n• Es resistente a la alcalinidad del concreto y demás materiales \r\nde construcción', 10, NULL, 'mOWrtSJIZ5h5L6ojIo6ypnzqN0IB2d.png', 0, '2024-02-08 11:10:37', '2024-02-08 11:10:37'),
(139, 26, 'FESTER CR 66 BLANCO', 3184.20, 'Para sellar e impermeabilizar paredes de tabique o block, \r\nestructuras de concreto, elementos de mampostería, entre \r\notros. \r\n• Evita el paso del agua y la humedad en superficies \r\nhorizontales y verticales; estructuras expuestas a la humedad \r\ndel subsuelo, agua derivada de la lluvia, escurrimientos o \r\nproveniente de filtraciones. \r\n• Para sellar e impermeabilizar: superficies de concreto \r\nestructuralmente sanas, elementos de concreto expuestos a \r\npresión positiva, negativa, muros interiores y exteriores en \r\nconstrucciones nuevas o envejecidas con presencia de \r\nhumedad y formación de salitre', 10, NULL, 'iYXhU4kobD8oOr6PgBFcCbKiCr8XqX.png', 0, '2024-02-08 11:22:49', '2024-02-08 11:22:50'),
(140, 26, 'FESTER FERROFEST I', 715.72, 'USOS\r\n• Como Impermeabilizante para:\r\n• Superficies verticales, inclinadas y algunas horizontales de \r\nconcreto, mampostería y tabique\r\n• En los muros como tratamiento preventivo y correctivo \r\ncontra la humedad, manchas y el salitre\r\n• Pisos (bajo recubrimientos pétreos)\r\n• Estructuras bajo tierra\r\n• Sitios en inmersión constante', 10, NULL, 'ansJ3XjBkgDdsVPY6Mu9h1jeJBhSAN.png', 0, '2024-02-08 11:24:15', '2024-02-08 11:24:15'),
(141, 26, 'FESTER FERROFEST I', 1954.60, 'USOS\r\n• Como Impermeabilizante para:\r\n• Superficies verticales, inclinadas y algunas horizontales de \r\nconcreto, mampostería y tabique\r\n• En los muros como tratamiento preventivo y correctivo \r\ncontra la humedad, manchas y el salitre\r\n• Pisos (bajo recubrimientos pétreos)\r\n• Estructuras bajo tierra\r\n• Sitios en inmersión constante', 10, NULL, 'QRN3JWr4bvkOIeRAGbiChc2W7Ickc4.png', 0, '2024-02-08 11:25:09', '2024-02-08 11:25:09'),
(142, 14, 'FESTER GRAL', 143.84, 'USOS\r\n• Para la adición a las mezclas de concreto o morteros, en \r\nelementos expuestos al contacto eventual o permanente con \r\nel agua o la humedad.\r\n• Para morteros con cemento o cal.\r\n• Disminuye notablemente, la permeabilidad en los elementos \r\nde concreto o mortero\r\n• Festegral contiene un aditivo reductor de agua, por lo que \r\nmejora la relación agua/cemento, al permitir la reducción del \r\n4% al 6% en el consumo de agua\r\n• Favorece los acabados de los elementos de concreto o \r\nmortero, al mejorar la trabajabilidad de las mezclas\r\n• Reduce el sangrado\r\n• Libre de cloruro de calcio\r\n• Aumenta la durabilidad\r\n• Reduce el ataque por sulfatos', 10, NULL, 'ryGACglkyqlOApmHDn5BrWFv9Jpwgz.png', 0, '2024-02-08 11:26:10', '2024-02-08 11:26:10'),
(143, 25, 'FESTEGRAL 5KG', 306.24, 'USOS\r\n• Para la adición a las mezclas de concreto o morteros, en \r\nelementos expuestos al contacto eventual o permanente con \r\nel agua o la humedad.\r\n• Para morteros con cemento o cal.\r\n• Disminuye notablemente, la permeabilidad en los elementos \r\nde concreto o mortero\r\n• Festegral contiene un aditivo reductor de agua, por lo que \r\nmejora la relación agua/cemento, al permitir la reducción del \r\n4% al 6% en el consumo de agua\r\n• Favorece los acabados de los elementos de concreto o \r\nmortero, al mejorar la trabajabilidad de las mezclas\r\n• Reduce el sangrado\r\n• Libre de cloruro de calcio\r\n• Aumenta la durabilidad\r\n• Reduce el ataque por sulfatos', 9, NULL, 'ptxEdkQ6uj7Rf8NvLwojeCUlPu3uLB.png', 0, '2024-02-08 11:38:09', '2024-02-09 11:14:56'),
(144, 25, 'FESTEGRAL 20KG', 813.16, 'USOS\r\n• Para la adición a las mezclas de concreto o morteros, en \r\nelementos expuestos al contacto eventual o permanente con \r\nel agua o la humedad.\r\n• Para morteros con cemento o cal.\r\n• Disminuye notablemente, la permeabilidad en los elementos \r\nde concreto o mortero\r\n• Festegral contiene un aditivo reductor de agua, por lo que \r\nmejora la relación agua/cemento, al permitir la reducción del \r\n4% al 6% en el consumo de agua\r\n• Favorece los acabados de los elementos de concreto o \r\nmortero, al mejorar la trabajabilidad de las mezclas\r\n• Reduce el sangrado\r\n• Libre de cloruro de calcio\r\n• Aumenta la durabilidad\r\n• Reduce el ataque por sulfatos', 10, NULL, 'qn7BZlKJIChLTACI7zWvi89VyxycN1.png', 0, '2024-02-08 11:39:11', '2024-02-08 11:39:11'),
(145, 25, 'FESTER CR NANOTECH ADMIX', 4115.68, 'Fester CR -Nanotech Admix es recomendado para utilizarse \r\nen obras de ingeniería hidráulica y civil impermeabilizando el \r\nconcreto o mortero desde las mezclas, en los proyectos \r\ndonde se tendrá contacto con agua o para contenerla en \r\nelementos estructurales incluso bajo tierra, tales como: \r\nCisternas, piletas, tanques, represas, depósitos, plantas de \r\ntratamiento, tuberías de concreto, túneles viales, túneles \r\npara uso hidráulico, silos, registros, cámaras frigoríficas \r\nconstrucciones subterráneas, muelles, escolleras, diques, \r\nacuarios, acueductos, albercas, muros de contención, muros \r\ncolindantes, presas, cimentaciones, celdas de cimentación, \r\nfuentes, espejos de agua, pisos para recibir recubrimientos y \r\nmuchos más.', 10, NULL, 'ZM2dqker8Ikgc12z7khyYXkB3yvLjV.png', 0, '2024-02-08 11:40:26', '2024-02-08 11:40:26'),
(146, 26, 'FESTER CR NANOTECH 99+', 5457.80, 'Fester CR-Nanotech 99+ está diseñado para utilizarse en \r\nobras de ingeniería hidráulica y civil impermeabilizando \r\nestructuras de concreto o mortero que ya están en uso. \r\n• Como tratamiento impermeable preventivo, correctivo y \r\npermanente ante condiciones severas de presión hidrostática \r\nen los proyectos donde se tendrá contacto con agua o para \r\ncontenerla en elementos estructurales incluso bajo tierra, \r\ntales como: Cisternas, piletas, tanques, represas, depósitos, \r\nplantas de tratamiento, tuberías, túneles viales y de uso \r\nhidráulico, silos, registros, cámaras frigoríficas, construcciones \r\nsubterráneas, muelles, escolleras, diques, acuarios, \r\nacueductos, albercas, muros de contención, muros \r\ncolindantes, presas, cimentaciones, celdas de cimentación, \r\nfuentes, espejos de agua, pisos para recibir recubrimientos y \r\nmuchos más.', 10, NULL, 'JWBuD2o9ihfRPmLFx9p8Fg8qEvGPZE.png', 0, '2024-02-08 11:42:26', '2024-02-08 11:42:26'),
(147, 27, 'FESTER CX-01 1L', 235.48, '• Recomendado para su uso en todo tipo de elementos de \r\nconcreto, mortero o mampostería, utilizados para estar en \r\ncontacto o contener el agua, tales como: \r\n• Cisternas, piletas, tanques, represas, depósitos, plantas de \r\ntratamiento, tuberías, túneles viales, túneles para uso \r\nhidráulico, silos, registros, cámaras frigoríficas, construcciones \r\nsubterráneas, muelles, escolleras, diques, acuarios, \r\nacueductos, albercas, muros de contención, muros \r\ncolindantes, presas, celdas de cimentación, fuentes , espejos \r\nde agua y muchos más. \r\n• Como obturador para todo tipo de filtraciones y salidas \r\nfrancas de agua en elementos de concreto y mampostería, en \r\nsecciones tales como: Grietas, fisuras, oquedades, juntas frías \r\no Juntas constructivas. \r\n• Como reparador de rápido fraguado para fisuras, grietas, \r\ndesconchados, chaflanes, huecos y cualquier irregularidad en \r\nel concreto, mortero o mampostería. \r\n• Como parte del sistema impermeable cementoso de alto \r\ndesempeño Fester CR-Nanotech 99+, taponeando y \r\nreparando las filtraciones en elementos de concreto, previo a \r\nla aplicación de la lechada para la impermeabilización \r\ncompleta (consultar ficha Fester CR- Nanotech 99+).', 10, NULL, 'akZY6RAfk2j37nPxpXavAAOcPUtilM.png', 0, '2024-02-08 11:44:03', '2024-02-08 11:44:03'),
(148, 27, 'FESTER CX-01 5kg', 1071.84, '• Recomendado para su uso en todo tipo de elementos de \r\nconcreto, mortero o mampostería, utilizados para estar en \r\ncontacto o contener el agua, tales como: \r\n• Cisternas, piletas, tanques, represas, depósitos, plantas de \r\ntratamiento, tuberías, túneles viales, túneles para uso \r\nhidráulico, silos, registros, cámaras frigoríficas, construcciones \r\nsubterráneas, muelles, escolleras, diques, acuarios, \r\nacueductos, albercas, muros de contención, muros \r\ncolindantes, presas, celdas de cimentación, fuentes , espejos \r\nde agua y muchos más. \r\n• Como obturador para todo tipo de filtraciones y salidas \r\nfrancas de agua en elementos de concreto y mampostería, en \r\nsecciones tales como: Grietas, fisuras, oquedades, juntas frías \r\no Juntas constructivas. \r\n• Como reparador de rápido fraguado para fisuras, grietas, \r\ndesconchados, chaflanes, huecos y cualquier irregularidad en \r\nel concreto, mortero o mampostería. \r\n• Como parte del sistema impermeable cementoso de alto \r\ndesempeño Fester CR-Nanotech 99+, taponeando y \r\nreparando las filtraciones en elementos de concreto, previo a \r\nla aplicación de la lechada para la impermeabilización \r\ncompleta (consultar ficha Fester CR- Nanotech 99+).', 10, NULL, 'aPvkZ2Ht6Tif3RaRQFaYqB4wsaDocP.png', 0, '2024-02-08 11:44:46', '2024-02-08 11:44:46'),
(149, 27, 'FESTER CX-01 25kg', 3831.48, '• Recomendado para su uso en todo tipo de elementos de \r\nconcreto, mortero o mampostería, utilizados para estar en \r\ncontacto o contener el agua, tales como: \r\n• Cisternas, piletas, tanques, represas, depósitos, plantas de \r\ntratamiento, tuberías, túneles viales, túneles para uso \r\nhidráulico, silos, registros, cámaras frigoríficas, construcciones \r\nsubterráneas, muelles, escolleras, diques, acuarios, \r\nacueductos, albercas, muros de contención, muros \r\ncolindantes, presas, celdas de cimentación, fuentes , espejos \r\nde agua y muchos más. \r\n• Como obturador para todo tipo de filtraciones y salidas \r\nfrancas de agua en elementos de concreto y mampostería, en \r\nsecciones tales como: Grietas, fisuras, oquedades, juntas frías \r\no Juntas constructivas. \r\n• Como reparador de rápido fraguado para fisuras, grietas, \r\ndesconchados, chaflanes, huecos y cualquier irregularidad en \r\nel concreto, mortero o mampostería. \r\n• Como parte del sistema impermeable cementoso de alto \r\ndesempeño Fester CR-Nanotech 99+, taponeando y \r\nreparando las filtraciones en elementos de concreto, previo a \r\nla aplicación de la lechada para la impermeabilización \r\ncompleta (consultar ficha Fester CR- Nanotech 99+).', 10, NULL, 'QUegRm88rEASSe2CaDabD1QEIN6TFK.png', 0, '2024-02-08 11:45:58', '2024-02-08 11:45:58'),
(150, 46, 'FESTER SUPERSEAL P 600ML', 314.36, 'Para el sellado de todo tipo de juntas hechas de diversos \r\nmateriales empleados en la construcción y/o para lograr \r\nuniones elásticas, herméticas impermeables y alta durabilidad \r\nen juntas verticales y horizontales. \r\nIdeal para todo tipo de obras de ingeniería civil entre \r\nmateriales porosos o lisos tales como concreto, morteros, \r\nladrillos, mampostería, aluminio, azulejo, madera, mosaico, \r\nlámina galvanizada, etc. \r\nSellos de juntas entre elementos prefabricados.\r\nSellos de juntas en depósitos o tanques para aguas residuales, \r\ndrenajes, tuberías de concreto, canales y túneles, instalaciones \r\npetroleras, etc.', 10, NULL, 'pmnUfA5MLLoo6ji8KFsjnV13TFlFN5.png', 0, '2024-02-08 11:50:46', '2024-02-08 11:50:46'),
(151, 46, 'FESTER SUPERSEAL P 300ML', 216.92, 'ara el sellado de todo tipo de juntas hechas de diversos \r\nmateriales empleados en la construcción y/o para lograr \r\nuniones elásticas, herméticas impermeables y alta durabilidad \r\nen juntas verticales y horizontales. \r\nIdeal para todo tipo de obras de ingeniería civil entre \r\nmateriales porosos o lisos tales como concreto, morteros, \r\nladrillos, mampostería, aluminio, azulejo, madera, mosaico, \r\nlámina galvanizada, etc. \r\nSellos de juntas entre elementos prefabricados.\r\nSellos de juntas en depósitos o tanques para aguas residuales, \r\ndrenajes, tuberías de concreto, canales y túneles, instalaciones \r\npetroleras, etc.', 10, NULL, 'ZLUgtdKnQlr7MlQAOAMvpfFdKajg4y.png', 0, '2024-02-08 11:52:08', '2024-02-08 11:52:08'),
(152, 46, 'FESTER SUPERSEAL 26.5L', 15641.44, 'ara el sellado de todo tipo de juntas hechas de diversos \r\nmateriales empleados en la construcción y/o para lograr \r\nuniones elásticas, herméticas impermeables y alta durabilidad \r\nen juntas verticales y horizontales. \r\nIdeal para todo tipo de obras de ingeniería civil entre \r\nmateriales porosos o lisos tales como concreto, morteros, \r\nladrillos, mampostería, aluminio, azulejo, madera, mosaico, \r\nlámina galvanizada, etc. \r\nSellos de juntas entre elementos prefabricados.\r\nSellos de juntas en depósitos o tanques para aguas residuales, \r\ndrenajes, tuberías de concreto, canales y túneles, instalaciones \r\npetroleras, etc.', 10, NULL, 'xLLPHqDn9yjpQJqydBgjKso7s58pd4.png', 0, '2024-02-08 11:53:41', '2024-02-08 11:53:41'),
(153, 46, 'FESTER SUPERSEAL 19L', 10263.68, 'ara el sellado de todo tipo de juntas hechas de diversos \r\nmateriales empleados en la construcción y/o para lograr \r\nuniones elásticas, herméticas impermeables y alta durabilidad \r\nen juntas verticales y horizontales. \r\nIdeal para todo tipo de obras de ingeniería civil entre \r\nmateriales porosos o lisos tales como concreto, morteros, \r\nladrillos, mampostería, aluminio, azulejo, madera, mosaico, \r\nlámina galvanizada, etc. \r\nSellos de juntas entre elementos prefabricados.\r\nSellos de juntas en depósitos o tanques para aguas residuales, \r\ndrenajes, tuberías de concreto, canales y túneles, instalaciones \r\npetroleras, etc.', 10, NULL, '87CnyRm6v8xbra3XKnsSv7c3cPg0HO.png', 0, '2024-02-08 11:54:50', '2024-02-08 11:54:50'),
(154, 46, 'FESTER SUPERSEAL 825ML', 470.96, 'ara el sellado de todo tipo de juntas hechas de diversos \r\nmateriales empleados en la construcción y/o para lograr \r\nuniones elásticas, herméticas impermeables y alta durabilidad \r\nen juntas verticales y horizontales. \r\nIdeal para todo tipo de obras de ingeniería civil entre \r\nmateriales porosos o lisos tales como concreto, morteros, \r\nladrillos, mampostería, aluminio, azulejo, madera, mosaico, \r\nlámina galvanizada, etc. \r\nSellos de juntas entre elementos prefabricados.\r\nSellos de juntas en depósitos o tanques para aguas residuales, \r\ndrenajes, tuberías de concreto, canales y túneles, instalaciones \r\npetroleras, etc.', 10, NULL, 'NJhQNB4n7mo2y4GWs0XWqYaaSrF41Q.png', 0, '2024-02-08 11:55:55', '2024-02-08 11:55:55'),
(155, 14, 'FESTER ACRITON 10 AÑOS GREEN-SHIELD', 4765.28, 'Impermeabilizante acrílico ecológico de nueva generación\r\n\r\n \r\n\r\nFester Acriton Green-Shield es un impermeabilizante elastomérico, ecológico que contiene polímeros con tecnología exclusiva de Henkel, así como agregados provenientes de la recuperación y reciclaje de plásticos. Además, incorpora aditivos especiales y microesferas que le brindan las mejores propiedades de reflectividad, emisividad y aislamiento térmico manteniendo su blancura a través del tiempo.', 10, NULL, 'HKg839BbvHzsbquPClUTdMs7IExOZT.webp', 0, '2024-02-08 12:06:00', '2024-02-08 12:06:01'),
(156, 15, 'FESTER CL 52', 1208.72, 'Membrana impermeable monocomponente, lista para usarse y de secado extra rápido.\r\nProducto flexible fabricado con polímeros de alta calidad en dispersión acuosa, con agregados, pigmentos y aditivos que le brindan gran rapidez en el secado, alta impermeabilidad y duración.', 10, NULL, 'gdpRDaQqwypKfoRLnoO8qAp1ZvLcJR.webp', 0, '2024-02-08 12:10:33', '2024-02-08 12:10:33'),
(157, 15, 'FESTER CL 52', 4990.32, 'Membrana impermeable monocomponente, lista para usarse y de secado extra rápido.\r\nProducto flexible fabricado con polímeros de alta calidad en dispersión acuosa, con agregados, pigmentos y aditivos que le brindan gran rapidez en el secado, alta impermeabilidad y duración.', 10, NULL, 'A0dO4ZDTt2mMINDVYua91OerU0hzM0.webp', 0, '2024-02-08 12:11:11', '2024-02-08 12:11:11'),
(158, 15, 'FESTER IMPERFACIL CLASICO 3 AÑOS 4L', 491.84, 'Impermeabilizante acrílico base agua\r\nEs un impermeabilizante acrílico base agua ideal para aplicarse sobre techos sin impermeabilizantes anteriores que te protege contra problemas de humedad y filtraciones de agua', 10, NULL, '5AkhxTcjvGbwdszrXXwEFXmC0DmF4C.webp', 0, '2024-02-08 12:13:54', '2024-02-08 12:13:54'),
(159, 15, 'FESTER IMPERFACIL CLASICO 3 AÑOS 19L', 2108.88, 'Impermeabilizante acrílico base agua\r\nEs un impermeabilizante acrílico base agua ideal para aplicarse sobre techos sin impermeabilizantes anteriores que te protege contra problemas de humedad y filtraciones de agua', 10, NULL, 'qIu1dYNuDjHEa5GgAl5EOqRiog8FA1.webp', 0, '2024-02-08 12:15:29', '2024-02-08 12:15:29'),
(160, 15, 'FESTER IMPERFACIL CLASICO 5 AÑOS 4L', 568.40, 'Impermeabilizante acrílico base agua\r\nEs un impermeabilizante acrílico base agua ideal para aplicarse sobre techos sin impermeabilizantes anteriores que te protege contra problemas de humedad y filtraciones de agua', 10, NULL, 'm8NBCs5GvoJgNjb8emmk8030XlXdki.webp', 0, '2024-02-08 12:17:13', '2024-02-08 12:20:42'),
(161, 15, 'FESTER IMPERFACIL CLASICO 5 AÑOS 19L', 2426.72, 'Impermeabilizante acrílico base agua\r\nEs un impermeabilizante acrílico base agua ideal para aplicarse sobre techos sin impermeabilizantes anteriores que te protege contra problemas de humedad y filtraciones de agua', 10, NULL, 'vlXqaIJj7rakLBicyi3FVedGL7c5Mj.webp', 0, '2024-02-08 12:22:13', '2024-02-08 12:22:13'),
(162, 16, 'FESTER IMPERFACIL NMG PASTA', 220.40, 'Reparador asfáltico para goteras\r\nMaterial de consistencia pastosa, formulado a base de asfalto modificado, solventes especiales de rápida evaporación, rellenos minerales, fibras naturales libres de asbesto y aditivos especiales que le permiten tener excelentes propiedades de adherencia en superficies húmedas o secas.\r\nUSOS\r\nIdeal para reparar fisuras, grietas, ranuras y juntas en superficies de concreto, láminas, asfalto, prefabricados, entre otros.', 10, NULL, 'yMI9Em9DtNNkkQuLNChov8jRAvtQ1W.jpg', 0, '2024-02-08 12:25:11', '2024-02-08 12:25:11'),
(163, 17, 'FESTER IMPERFACIL NMG CINTA 1M', 184.44, 'Cinta autoadhesiva reparadora\r\n \r\nCinta impermeable autoadhesiva que se amolda a todas las formas y pega prácticamente sobre cualquier superficie siempre y cuando esté limpia y seca.\r\n\r\n \r\n\r\nUSOS\r\nPara tapar goteras en techos de concreto, tejas, domos, láminas de fibrocemento, cinc o metal, entre otros.\r\nIdeal para juntas en construcción como: ductos, canales de ventilación, entre otros.\r\nPara reparar orificios en la carrocería de: automóviles, camiones o cajas de carga.', 10, NULL, '4MiX19HKryWmeu9PJPBanNKA9dnOpr.webp', 0, '2024-02-08 12:27:47', '2024-02-08 12:27:47'),
(164, 17, 'FESTER IMPERFACIL NMG CINTA 10M', 1016.16, 'Cinta autoadhesiva reparadora\r\n \r\nCinta impermeable autoadhesiva que se amolda a todas las formas y pega prácticamente sobre cualquier superficie siempre y cuando esté limpia y seca.\r\n\r\n \r\n\r\nUSOS\r\nPara tapar goteras en techos de concreto, tejas, domos, láminas de fibrocemento, cinc o metal, entre otros.\r\nIdeal para juntas en construcción como: ductos, canales de ventilación, entre otros.\r\nPara reparar orificios en la carrocería de: automóviles, camiones o cajas de carga.', 10, NULL, 'qorjnzxwmCEqW15iP8cvuublVT6DIK.webp', 0, '2024-02-08 12:30:27', '2024-02-08 12:30:27'),
(165, 18, 'FESTER IMPERFACIL NO MAS SALITRE', 360.76, 'Impermeabilizante cementoso en polvo\r\nEs un producto cementoso en polvo de color gris que al ser mezclado con agua, logra una consistencia cremosa, suave y fácil de aplicar; formando una capa impermeable.\r\n\r\nUSOS\r\nPara impermeabilizar paredes de tabique o block (bloque) y elementos de mampostería (en interiores y exteriores) expuestos a la humedad del subsuelo, al agua de la lluvia y a escurrimientos.\r\nPara impermeabilizar: albercas, cisternas, muros de contención, jardinerías, túneles, sótanos, entre otros. \r\nPara impermeabilizar muros en el interior o exterior de construcciones envejecidas ante la aparición de humedad y formación de salitre.', 10, NULL, 'kmp8CX3I79SmeZanQWVkmGAnxNBR8O.webp', 0, '2024-02-08 12:32:21', '2024-02-08 12:32:21'),
(166, 19, 'FESTER IMPERFACIL REPELENTE AL AGUA', 787.64, 'Emulsión protectora de superficies base agua\r\n \r\n\r\nEs una emulsión base agua que crea una barrera protectora impermeable que impide el paso del agua a través de las superficies porosas\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara uso en interiores y exteriores\r\nSe aplica sobre muros de concreto, ladrillo, cantera, estucos y tejas no tratadas\r\nPara uso en losetas de barro, agregados, adoquín y superficies minerales en general', 10, NULL, 'T7X73ZqPVBLosUTDielVA5FoFZCr5m.webp', 0, '2024-02-08 12:34:58', '2024-02-08 12:34:58'),
(167, 24, 'FESTER FILTRO', 15800.36, 'Laminado de polietileno de alta densidad, que da lugar a un plástico semi-rígido derivado de una mezcla de productos vírgenes y reciclados. El laminado es extruido y moldeado de tal modo que conforma hoyuelos con profundidad aprox. de 7 mm, conformando una cara plana y la otra con salientes para generar espacios de aire entre el sistema impermeable y el sistema de drenes. El laminado va acompañado de una geo – membrana adherida que funge como filtro para permitir el paso del agua reteniendo los finos del substrato.', 10, NULL, 'AOesH2zlgsPfiT6FTPuoelSLDrQWj7.webp', 0, '2024-02-08 12:38:01', '2024-02-08 12:38:01'),
(168, 24, 'FESTER POLIETILENO NEGRO', 10307.76, 'Película de polietileno virgen calibre 600, pentacapa, color negro, formulado con resinas de alta densidad y aditivos UVS. Recomendado para reforzar el sistema Fester Garden, al colocarlo directamente sobre el sistema impermeable.', 10, NULL, '6GDttFy0mOJM5prWp3A92zTKn4RB0v.webp', 0, '2024-02-08 12:39:26', '2024-02-08 12:39:26'),
(169, 24, 'FESTER DRENANTE', 10277.60, 'Laminado de polietileno de alta densidad, que da lugar a un plástico semi-rígido derivado de una mezcla de productos vírgenes y reciclados. El laminado es extruido y moldeado de tal modo que conforma hoyuelos con profundidad aprox. de 7 mm, conformando una cara plana y la otra con salientes para generar espacios de aire entre el sistema impermeable y el sistema de drenes.', 10, NULL, 'qxkYZSRNJWOMUt8dsMyedFVXbzr5kB.webp', 0, '2024-02-08 12:41:01', '2024-02-08 12:41:01'),
(170, 27, 'FESTER INTEGRAL A-Z 1L', 419.92, 'Taponador de fraguado instantáneo.\r\nPasta de color café oscuro, formulada a base de aditivos que aceleran e inducen el fraguado instantáneo en mezclas con concreto. Detiene el flujo de agua en segundos.\r\nUSOS\r\nPara taponar filtraciones y salidas francas de agua.\r\nSella grietas, fisuras y oquedades.\r\nComo resanador de fraguado rápido para concreto.<', 10, NULL, '0E6DJx6xglkiRQ9RK9Mq54RPwQFeZB.webp', 0, '2024-02-08 12:44:24', '2024-02-08 12:46:23'),
(171, 27, 'FESTER INTEGRAL A-Z 4L', 1079.69, 'Taponador de fraguado instantáneo.\r\n\r\n \r\n\r\nPasta de color café oscuro, formulada a base de aditivos que aceleran e inducen el fraguado instantáneo en mezclas con concreto. Detiene el flujo de agua en segundos.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara taponar filtraciones y salidas francas de agua.\r\nSella grietas, fisuras y oquedades.\r\nComo resanador de fraguado rápido para concreto.', 10, NULL, 't5ywJ3dzXpPC0RHPVWm1tNab29yJ2D.webp', 0, '2024-02-08 12:45:37', '2024-02-08 12:46:53'),
(172, 27, 'FESTER INTEGRAL A-Z 19L', 4374.36, 'Taponador de fraguado instantáneo.\r\nPasta de color café oscuro, formulada a base de aditivos que aceleran e inducen el fraguado instantáneo en mezclas con concreto. Detiene el flujo de agua en segundos.\r\n\r\nUSOS\r\nPara taponar filtraciones y salidas francas de agua.\r\nSella grietas, fisuras y oquedades.\r\nComo resanador de fraguado rápido para concreto.', 10, NULL, '4iA9zADR4Gjpc1I2uFDcJzQhtpnJCP.webp', 0, '2024-02-08 12:49:05', '2024-02-08 12:49:05'),
(173, 28, 'FESTER SILICON 4L', 1200.60, 'Repelente incoloro para muros exteriores.\r\n\r\n \r\n\r\nSolución hidrofugante de rápida aplicación compuesta de resina silicona en solvente volátil de alto poder penetrante. Contiene un poderoso agente impregnante que modifica los poros de la superficie a tratar cubriéndolos con silicón, polímero de alta resistencia.\r\n\r\n \r\n\r\nUSOS\r\n\r\nComo repelente de agua y tratamiento protector para muros exteriores de: concreto, tabique, canteras y similares.', 10, NULL, 'iDIRMI8Fki5rsT0KChskDv1cwQEMk1.webp', 0, '2024-02-08 12:51:24', '2024-02-08 12:51:24'),
(174, 28, 'FESTER SILICON 19L', 5179.40, 'Repelente incoloro para muros exteriores.\r\nSolución hidrofugante de rápida aplicación compuesta de resina silicona en solvente volátil de alto poder penetrante. Contiene un poderoso agente impregnante que modifica los poros de la superficie a tratar cubriéndolos con silicón, polímero de alta resistencia.\r\n\r\nUSOS\r\nComo repelente de agua y tratamiento protector para muros exteriores de: concreto, tabique, canteras y similares.', 10, NULL, 'qSko6xYOF3hK99QfvAd7gNB2UNg78e.webp', 0, '2024-02-08 12:52:27', '2024-02-08 12:52:27'),
(175, 28, 'FESTER SILICON 200L', 44682.04, 'Repelente incoloro para muros exteriores.\r\n\r\n \r\n\r\nSolución hidrofugante de rápida aplicación compuesta de resina silicona en solvente volátil de alto poder penetrante. Contiene un poderoso agente impregnante que modifica los poros de la superficie a tratar cubriéndolos con silicón, polímero de alta resistencia.\r\n\r\n \r\n\r\nUSOS\r\n\r\nComo repelente de agua y tratamiento protector para muros exteriores de: concreto, tabique, canteras y similares.', 10, NULL, 'WK2sqKHDQ9EiqaMGJ4uxZPGcRIztbG.webp', 0, '2024-02-08 12:53:59', '2024-02-08 12:53:59'),
(176, 29, 'FESTER SILICON RP-501 3.8L', 923.36, 'Repelente y anti-musgo base agua para muros exteriores e interiores.\r\n\r\n \r\n\r\nSolución hidrofugante base agua que al aplicarse y secar se torna invisible, no alterando la aparicencia original de los materiales de construcción. Elaborada con emulsiones de resinas de silicón de alto desempeño y poder penetrante.\r\n\r\n \r\n\r\nUSOS\r\n\r\nComo repelente de agua y tratamiento protector anti-musgos para muros exteriores e interiores construidos con materiales pétreos (naturales) para la construcción.\r\nIdeal para aplicar en superficies porosas y absorbentes, para lograr su impermeabilidad rechazando el agua.', 10, NULL, 'gGQzA7fiVOIsFptSCdV4OFGEbwCuNd.webp', 0, '2024-02-08 12:55:28', '2024-02-08 12:55:28'),
(177, 29, 'FESTER SILICON RP-501 19L', 4252.56, 'Repelente y anti-musgo base agua para muros exteriores e interiores.\r\nSolución hidrofugante base agua que al aplicarse y secar se torna invisible, no alterando la aparicencia original de los materiales de construcción. Elaborada con emulsiones de resinas de silicón de alto desempeño y poder penetrante.\r\n\r\n \r\n\r\nUSOS\r\nComo repelente de agua y tratamiento protector anti-musgos para muros exteriores e interiores construidos con materiales pétreos (naturales) para la construcción.\r\nIdeal para aplicar en superficies porosas y absorbentes, para lograr su impermeabilidad rechazando el agua.', 10, NULL, '1AyYPPU0GK96ss2UIYOiJoS5yueiLy.webp', 0, '2024-02-08 13:06:25', '2024-02-08 13:06:25'),
(178, 29, 'FESTER SILICON RP-501 200L', 30161.16, 'Repelente y anti-musgo base agua para muros exteriores e interiores.\r\n\r\n \r\n\r\nSolución hidrofugante base agua que al aplicarse y secar se torna invisible, no alterando la aparicencia original de los materiales de construcción. Elaborada con emulsiones de resinas de silicón de alto desempeño y poder penetrante.\r\n\r\n \r\n\r\nUSOS\r\n\r\nComo repelente de agua y tratamiento protector anti-musgos para muros exteriores e interiores construidos con materiales pétreos (naturales) para la construcción.\r\nIdeal para aplicar en superficies porosas y absorbentes, para lograr su impermeabilidad rechazando el agua.', 10, NULL, 'R1tABQjHYXLKN7VcOwbJj4j3CSncKA.webp', 0, '2024-02-08 13:07:01', '2024-02-08 13:07:01'),
(179, 30, 'FESTER EPOXINE 500 AZUL', 6782.52, 'Recubrimiento epóxico de acabado vidriado.\r\n\r\nRecubrimiento epóxico amínico termofijo de dos componentes 100% sólidos (libre de solventes) de media viscosidad, donde no se requiere alta resistencia química. Fester Epoxine® 500 presenta buenas propiedades de adherencia, alta resistencia al desgaste por abrasión y buena resistencia química.\r\n\r\nUSOS\r\nPara recubrir y lograr acabado liso brillante en pisos, muros y losas de: cisternas para agua potable; albercas y espejos de agua; silos para granos; muros de áreas sépticas.', 10, NULL, 'J4JlCHKMPta7dd1XXHM7X1fvocBscK.webp', 0, '2024-02-08 13:09:34', '2024-02-08 13:09:34'),
(180, 30, 'FESTER EPOXINE 500 BLANCO', 6751.20, 'Recubrimiento epóxico de acabado vidriado.\r\n\r\n \r\n\r\nRecubrimiento epóxico amínico termofijo de dos componentes 100% sólidos (libre de solventes) de media viscosidad, donde no se requiere alta resistencia química. Fester Epoxine® 500 presenta buenas propiedades de adherencia, alta resistencia al desgaste por abrasión y buena resistencia química.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara recubrir y lograr acabado liso brillante en pisos, muros y losas de: cisternas para agua potable; albercas y espejos de agua; silos para granos; muros de áreas sépticas.', 10, NULL, 'WhkK0LD1Z6lVbGLIGM0WIoJnQPnCKd.webp', 0, '2024-02-08 13:11:02', '2024-02-08 13:11:02');
INSERT INTO `p_f_producto_pepes` (`id`, `subcategoria`, `nombre`, `precio`, `descripcion`, `existencias`, `presentacion`, `imagen`, `inicio`, `created_at`, `updated_at`) VALUES
(181, 30, 'FESTER EPOXINE 510 TERRACOTA', 6704.80, 'Recubrimiento epóxico con resistencia química y adherencia a superficies húmedas.\r\n\r\n \r\n\r\nRecubrimiento termofijo epóxico poliamínico de dos componentes 100% sólidos (libre de solventes) que al mezclarse producen un compuesto viscoso y al ser aplicado forma una capa de alto brillo protectora con propiedades de durabilidad, dureza y resistencia.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPor las características especiales derivadas de las resinas epóxicas, éste producto está especialmente diseñado como recubrimiento protector sobre metal y superficies húmedas o secas de concreto o mortero, en elementos como: cisternas, tanques, tuberías', 10, NULL, 'KovBhIb0stvlBBoIUBuYiiW6cdWmGw.webp', 0, '2024-02-08 13:12:53', '2024-02-08 13:20:14'),
(182, 30, 'FESTER EPOXINE 500 PRIMER BLANCO', 7196.64, 'Recubrimiento epóxico de acabado vidriado.\r\n\r\n \r\n\r\nRecubrimiento epóxico amínico termofijo de dos componentes 100% sólidos (libre de solventes) de media viscosidad, donde no se requiere alta resistencia química. Fester Epoxine® 500 presenta buenas propiedades de adherencia, alta resistencia al desgaste por abrasión y buena resistencia química.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara recubrir y lograr acabado liso brillante en pisos, muros y losas de: cisternas para agua potable; albercas y espejos de agua; silos para granos; muros de áreas sépticas.', 10, NULL, 'pHseGRvjWYgVAmM8mwcwzSr1K2L792.webp', 0, '2024-02-08 13:22:16', '2024-02-08 13:22:17'),
(183, 31, 'FESTERSIP P 611 WB', 5245.52, 'FESTER SIP P 611 WB es un primario epóxico de aspecto lechoso de dos componentes para sellar e imprimar superficies de concreto previo a la instalación de sistemas impermeables de poliuretano FesterSIP\r\n\r\nUSOS\r\nFesterSIP P 611 WB está recomendado para ser aplicado como primario de los sistemas impermeables de poliuretano FesterSIP en cualquiera de sus configuraciones para superficies de concreto, ya sea para tránsito vehicular y peatonal, o sistema impermeable de alto desempeño.', 10, NULL, 'XT5T8dNcL5laLtKtgVXDoKprmW9Ipy.webp', 0, '2024-02-08 13:29:47', '2024-02-08 13:29:47'),
(184, 31, 'FESTERSIP I 620', 9231.28, 'FESTER SIP I 620 es un impermeabilizante de poliuretano aromático de dos componentes con altos sólidos y viscosidad media para las capas impermeables de los sistemas FesterSIP.\r\n\r\n \r\n\r\nUSOS\r\n\r\nRecomendado para ser aplicado en techos de concreto y entrepisos donde se requiera conformar un sistema impermeable de alto desempeño con resistencia al tránsito vehicular y al tránsito peatonal intenso.\r\n\r\nEs ideal para conformar la capa impermeable y la capa intermedia que recibe el riego de arena de sílice Fester SIP M 640 y Fester SIP MF 640 en los sistemas en que así se recomienda. Además, puede ser aplicado en losas de concreto donde se requiere un sistema impermeable de alta durabilidad y desempeño, así como dar mantenimiento a sistemas impermeables FesterSIP envejecidos', 10, NULL, 'HrICiaEspnY3bWbZnz8EGj5jj4O8kD.webp', 0, '2024-02-08 13:31:29', '2024-02-08 13:31:29'),
(185, 31, 'FESTERSIP R 630 4X4L', 4185.28, 'Mezcla de solventes especialmente diseñada para limpiar y reactivar las superficies entre las capas de los sistemas impermeables de poliuretano Fester SIP.\r\n\r\n \r\n\r\nUSOS\r\n\r\nFester SIP R 630 es recomendado para promover y asegurar la adherencia entre las capas de Fester SIP I 620 y las de Fester SIP A 650 cuando por alguna razón las capas anteriores de estos productos han permanecido aplicadas por tiempo mayor a 12 horas. Además, sirve para la limpieza de equipo y herramientas utilizadas durante la aplicación, antes de que sequen los productos del sistema.', 10, NULL, 'gCZ6yPHMxprfw2z8wYFtzIVV9YsQOO.webp', 0, '2024-02-08 13:34:55', '2024-02-08 13:34:55'),
(186, 31, 'FESTERSIP M 640 25KG', 1075.32, 'FESTER SIP M 640 es una mezcla de arenas de sílice con baja absorción, redondeada, granulometría controlada y libre de humedad.\r\n\r\n \r\n\r\nUSOS\r\n\r\nProductos recomendados para ser utilizados como parte de los sistemas FesterSIP en losas o entrepisos de concreto donde se requiera un perfil antiderrapante e impermeabilizar mediante un sistema que resista tránsito peatonal y/o vehicular sin comprometer sus características impermeables.\r\n\r\nFesterSIP M 640 (malla 14-40) está recomendado para reforzar mecánicamente los sistemas FesterSIP ante condiciones de desgaste por abrasión vehicular o peatonal intenso.\r\n\r\nFesterSIP MF 640 (malla 50-80) está recomendado reforzar mecánicamente los sistemas FesterSIP ante condiciones de desgaste por tránsito peatonal y donde se requiera tener un acabado con textura fina.', 10, NULL, 'qubvvUDohWcYGl4IR5BbI16qhImeki.jpg', 0, '2024-02-08 13:36:30', '2024-02-08 13:36:30'),
(187, 31, 'FESTERSIP MF 640', 2239.96, 'FESTER SIP M 640 es una mezcla de arenas de sílice con baja absorción, redondeada, granulometría controlada y libre de humedad.\r\n\r\n \r\n\r\nUSOS\r\n\r\nProductos recomendados para ser utilizados como parte de los sistemas FesterSIP en losas o entrepisos de concreto donde se requiera un perfil antiderrapante e impermeabilizar mediante un sistema que resista tránsito peatonal y/o vehicular sin comprometer sus características impermeables.\r\n\r\nFesterSIP M 640 (malla 14-40) está recomendado para reforzar mecánicamente los sistemas FesterSIP ante condiciones de desgaste por abrasión vehicular o peatonal intenso.\r\n\r\nFesterSIP MF 640 (malla 50-80) está recomendado reforzar mecánicamente los sistemas FesterSIP ante condiciones de desgaste por tránsito peatonal y donde se requiera tener un acabado con textura fina.', 10, NULL, 'SuHpDqyEHVAv9EYVuihzhW73DN92Tt.jpg', 0, '2024-02-08 13:38:16', '2024-02-08 13:38:16'),
(188, 31, 'FESTERSIP A 650', 11778.64, 'FESTER SIP A 650 es un producto base solvente de dos componentes con altos sólidos para recubrir los sistemas impermeables de poliuretano FesterSIP.\r\n\r\n \r\n\r\nUSOS\r\n\r\nFesterSIP A 650 está recomendado para ser aplicado como recubrimiento y acabado final para los sistemas impermeables de poliuretano FesterSIP protegiéndolos contra los efectos del intemperismo y la abrasión causada por el tránsito vehicular o peatonal.', 10, NULL, '3Egwgt8LUvplVNr0BArqefl6NP4kqy.webp', 0, '2024-02-08 13:39:41', '2024-02-08 13:39:41'),
(189, 31, 'FESTERSIP A 650 SP', 12370.24, 'FESTER SIP A 650 es un producto base solvente de dos componentes con altos sólidos para recubrir los sistemas impermeables de poliuretano FesterSIP.\r\n\r\n \r\n\r\nUSOS\r\n\r\nFesterSIP A 650 está recomendado para ser aplicado como recubrimiento y acabado final para los sistemas impermeables de poliuretano FesterSIP protegiéndolos contra los efectos del intemperismo y la abrasión causada por el tránsito vehicular o peatonal.', 10, NULL, 'jfEnAa2ix0JfgWYG0KknRdGCbEr2yj.webp', 0, '2024-02-08 13:41:12', '2024-02-08 13:41:12'),
(190, 32, 'FESTERBOND 1L', 278.40, 'Adhesivo 100% acrílico de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo de consistencia lechosa, de color blanco, formulado a base de resinas 100% acrílicas. Resiste humedad, tensión, abrasión e impacto. No se torna amarillo ante la intemperie.\r\n\r\n \r\n\r\nUSOS\r\n\r\nAdherente para unir mortero nuevo a concreto viejo, unir mortero o yeso a muros, columnas, trabes, losas, entre otros. Resanes en pisos, muros, grietas, mampostería, aplanados, entre otros.\r\nSellador de superficies porosas como: repellados, serroteados, aplanados rústicos, entre otros; para elementos porosos como block (bloque) tabique, losetas de barro, entre otros.\r\nMejora la calidad de pinturas de cal, cemento, vinílicas o acrílicas. Lechadas: agua + cemento. Morteros: arena + cemento + agua.', 10, NULL, 'ZrbdE2pq2zPVSehfYYc4WFEV0RoP4j.jpg', 0, '2024-02-08 13:42:34', '2024-02-08 13:42:34'),
(191, 32, 'FESTERBOND 4L', 857.24, 'Adhesivo 100% acrílico de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo de consistencia lechosa, de color blanco, formulado a base de resinas 100% acrílicas. Resiste humedad, tensión, abrasión e impacto. No se torna amarillo ante la intemperie.\r\n\r\n \r\n\r\nUSOS\r\n\r\nAdherente para unir mortero nuevo a concreto viejo, unir mortero o yeso a muros, columnas, trabes, losas, entre otros. Resanes en pisos, muros, grietas, mampostería, aplanados, entre otros.\r\nSellador de superficies porosas como: repellados, serroteados, aplanados rústicos, entre otros; para elementos porosos como block (bloque) tabique, losetas de barro, entre otros.\r\nMejora la calidad de pinturas de cal, cemento, vinílicas o acrílicas. Lechadas: agua + cemento. Morteros: arena + cemento + agua.', 10, NULL, 'maJmavpm5bTMrqccmnp5mtU1CGW06p.jpg', 0, '2024-02-08 13:43:45', '2024-02-08 13:43:45'),
(192, 32, 'FESTERBOND 19L', 3318.76, 'Adhesivo 100% acrílico de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo de consistencia lechosa, de color blanco, formulado a base de resinas 100% acrílicas. Resiste humedad, tensión, abrasión e impacto. No se torna amarillo ante la intemperie.\r\n\r\n \r\n\r\nUSOS\r\n\r\nAdherente para unir mortero nuevo a concreto viejo, unir mortero o yeso a muros, columnas, trabes, losas, entre otros. Resanes en pisos, muros, grietas, mampostería, aplanados, entre otros.\r\nSellador de superficies porosas como: repellados, serroteados, aplanados rústicos, entre otros; para elementos porosos como block (bloque) tabique, losetas de barro, entre otros.\r\nMejora la calidad de pinturas de cal, cemento, vinílicas o acrílicas. Lechadas: agua + cemento. Morteros: arena + cemento + agua.', 10, NULL, '2Lc8tVm2wiNnQOvoieVYnMAJWpH6PP.jpg', 0, '2024-02-08 13:44:18', '2024-02-08 13:44:18'),
(193, 32, 'FESTERBOND 200L', 29278.40, 'Adhesivo 100% acrílico de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo de consistencia lechosa, de color blanco, formulado a base de resinas 100% acrílicas. Resiste humedad, tensión, abrasión e impacto. No se torna amarillo ante la intemperie.\r\n\r\n \r\n\r\nUSOS\r\n\r\nAdherente para unir mortero nuevo a concreto viejo, unir mortero o yeso a muros, columnas, trabes, losas, entre otros. Resanes en pisos, muros, grietas, mampostería, aplanados, entre otros.\r\nSellador de superficies porosas como: repellados, serroteados, aplanados rústicos, entre otros; para elementos porosos como block (bloque) tabique, losetas de barro, entre otros.\r\nMejora la calidad de pinturas de cal, cemento, vinílicas o acrílicas. Lechadas: agua + cemento. Morteros: arena + cemento + agua.', 10, NULL, 'JvWnfOGi62FvmBevw4cExLxco2NQMC.jpg', 0, '2024-02-08 13:44:54', '2024-02-08 13:44:54'),
(194, 32, 'FESTER AD 1L', 118.32, 'Adhesivo de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo líquido base agua de color blanco para uso en interiores, formulado con resinas de PVA.\r\n\r\n \r\n\r\nUSOS\r\n\r\nSellador de superficies porosas y absorbentes como concreto, aplanados o mampostería.\r\nAdherente sobre superficies porosas y absorbentes como las anteriormente mencionadas, previo a la aplicación de aplanados o acabados de yeso o morteros base cemento.\r\nFortificador de mezclas que se preparan en obra, para generar acabados de tirol u otros acabados arquitectónicos.', 10, NULL, 'CzMm9gLKRzS6ZVzrLdMxmLGcDfVirp.jpg', 0, '2024-02-08 13:46:12', '2024-02-08 13:46:12'),
(195, 32, 'FESTER AD 3.8L', 392.08, 'Adhesivo de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo líquido base agua de color blanco para uso en interiores, formulado con resinas de PVA.\r\n\r\n \r\n\r\nUSOS\r\n\r\nSellador de superficies porosas y absorbentes como concreto, aplanados o mampostería.\r\nAdherente sobre superficies porosas y absorbentes como las anteriormente mencionadas, previo a la aplicación de aplanados o acabados de yeso o morteros base cemento.\r\nFortificador de mezclas que se preparan en obra, para generar acabados de tirol u otros acabados arquitectónicos.', 10, NULL, 'wOsJdVAx9Zx0rMAsVPFqsazNwGq3Fl.jpg', 0, '2024-02-08 13:46:46', '2024-02-08 13:46:46'),
(196, 32, 'FESTER AD 19L', 1713.32, 'Adhesivo de usos múltiples.\r\n\r\n \r\n\r\nAdhesivo líquido base agua de color blanco para uso en interiores, formulado con resinas de PVA.\r\n\r\n \r\n\r\nUSOS\r\n\r\nSellador de superficies porosas y absorbentes como concreto, aplanados o mampostería.\r\nAdherente sobre superficies porosas y absorbentes como las anteriormente mencionadas, previo a la aplicación de aplanados o acabados de yeso o morteros base cemento.\r\nFortificador de mezclas que se preparan en obra, para generar acabados de tirol u otros acabados arquitectónicos.', 10, NULL, 'EAgIr2Q70DXiHmSftDcZU27zZhONm4.jpg', 0, '2024-02-08 13:47:28', '2024-02-08 13:47:28'),
(197, 32, 'FESTER EPOXINE 220', 1482.48, 'Adhesivo y reparador epóxico para inyección.\r\n\r\n \r\n\r\nAdhesivo epoxi–amínico termofijo de 2 componentes, 100% sólidos (libre de solventes) diseñado especialmente para reestructurar concretos fisurados o agrietados, formando un compuesto muy duro y de gran adhesividad entre las paredes de la grieta del concreto.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara reparar concretos fisurados o agrietados como: columnas, trabes y cimentaciones, muros y losas, carreteras de concreto.', 10, NULL, 'YQuoibO2ZSpiAZLXU3pZsrVG7LnESu.webp', 0, '2024-02-08 13:48:43', '2024-02-08 13:48:43'),
(198, 32, 'FESTER EPOXINE 200', 1788.72, 'Adhesivo epóxico para uniones estructurales.\r\n\r\n \r\n\r\nAdhesivo epóxico termofijo poliamínico de 2 componentes, 100% sólidos (libre de solventes) viscoso, de color amarillento; que al ser aplicado en la superficie de concreto existente (viejo) forma una capa que provee adhesividad, dando continuidad estructural.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara unir concreto nuevo a viejo.\r\nPara reparar y dar continuidad estructural a elementos de concreto.\r\nPara aumentar dimensiones de columnas, trabes y muros.', 10, NULL, 'FTz3QwDZ8qaDJ7SNCh2UiphE2e7ivo.jpg', 0, '2024-02-08 13:49:55', '2024-02-08 13:49:56'),
(199, 32, 'FESTERPOLAST', 2335.08, 'Plaste epóxico para reparaciones de concreto.\r\n\r\n \r\n\r\nProducto epóxico amínico-poliamídico de 2 componentes, 100% sólidos (libre de solventes) diseñado para corregir y detallar defectos o abolladuras en concreto o metal.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara emplastecer superficies dañadas, con huecos o irregularidades.\r\nPara resanar y rellenar grietas y oquedades en elementos de concreto.\r\nComo adhesivo para la colocación de placas prefabricadas de mármol, granito, entre otros.', 10, NULL, 'WZzqD6ArStVC0iFBqrtiDgL3YwgYNM.webp', 0, '2024-02-08 13:51:03', '2024-02-08 13:51:03'),
(200, 32, 'FESTER EPOXINE 300 RESANADOR', 997.60, 'Mortero epóxico para reparaciones en concreto.\r\n\r\n \r\n\r\nMortero termofijo epóxico amínico de 3 componentes, 100% sólidos (libre de solventes) diseñado para la reparación de grietas, fisuras y pequeños baches en el concreto.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara resanar y reparar grietas y juntas en concreto sin movimiento, con ancho y profundidad máxima de 2.5 cm.\r\nPara reparar y perfilar vértices de escalones, losas de piso, pre-colados, muros y elementos estructurales.\r\nEn bacheo de pisos y pavimentos de concreto hidráulico con áreas no mayores de 1000 cm² (36 cm. de diámetro) y profundidad de 1 cm.', 10, NULL, 'BtsEyGk0qGAIshxfERq6ksZQ3JJEJv.webp', 0, '2024-02-08 13:52:22', '2024-02-08 13:52:22'),
(201, 32, 'FESTER EPOXINE 300 PRIMER', 1615.88, 'Primario para Epoxine® 300 Resanador.\r\n\r\n \r\n\r\nPrimario epóxico de 2 componentes, 100% sólidos (libre de solventes) para imprimación del concreto antes de aplicar Fester Epoxine® 300 Resanador.\r\n\r\n \r\n\r\nUSOS\r\n\r\nConcreto o mampostería donde será aplicado Fester Epoxine® 300 Resanador.\r\nElementos de concreto horizontales o verticales donde haya la necesidad de resanes de alto desempeño.\r\nEn general, en elementos de concreto en los que se tengan grietas o desgaste de juntas.', 10, NULL, 'UtzhDYGx2hpq5ZRW1hUisrqeCH9mxl.webp', 0, '2024-02-08 13:53:42', '2024-02-08 13:53:42'),
(202, 33, 'FESTER EPOXINE 600 GROUT', 10944.60, 'Mortero epóxico para anclaje de maquinaria, estructura y equipo.\r\n\r\n \r\n\r\nMortero epóxico termofijo amínico de 3 componentes, 100% sólidos (libre de solventes) que al mezclarse resultan en un producto de rápida catalización; excelente para trabajos pesados, con propiedades de resistencia mecánica y química.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara anclar pernos, ganchos, tornillos, entre otros.\r\nPara recibir equipo pesado, columnas y estructuras metálicas.\r\nPara elaborar bases de equipos y maquinaria que soportarán cargas dinámicas.', 10, NULL, 'NizmxPDvkKFyP2MtBqSkRhiDfIhsUQ.webp', 0, '2024-02-08 13:57:38', '2024-02-08 13:57:38'),
(203, 33, 'FESTER EPOXINE 800 GROUT', 16420.96, 'Mortero epóxico para anclaje de maquinaria, estructura y equipo.\r\n\r\n \r\n\r\nMortero epóxico termofijo de 3 componentes, 100% sólidos (libre de solventes) diseñado para anclaje de equipos donde se requiera alto volumen de relleno base y control en el desarrollo de la reacción exotérmica. Se usa para anclaje de maquinaria y como base para equipo pesado, logrando estabilidad en la nivelación de los equipos.\r\n\r\n \r\n\r\nUSOS\r\n\r\nAnclaje de maquinaria y como basamento para equipo pesado.\r\nAnclaje de pernos, ganchos, bases metálicas, tornillos, entre otros.', 10, NULL, 'ViiOsS1F88GfnJPAgOuess4SripEyT.webp', 0, '2024-02-08 13:59:51', '2024-02-08 14:04:05'),
(204, 33, 'FESTER FERROFEST G 10KG', 658.88, 'Estabilizador de volumen metálico para concreto y mortero.\r\n\r\n \r\n\r\nCompuesto de partículas metálicas selectas y graduadas, además de otros agentes químicos especiales que le proporcionan la propiedad de estabilidad dimensional al combinarse con cemento Pórtland ordinario y agregados minerales.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara asentar y nivelar maquinaria sujeta a vibraciones ligeras.\r\nPara aumentar secciones de elementos estructurales de concreto.\r\nPara anclar pernos, barras, varillas, tornos, entre otros.\r\nResanar todo tipo de superficies de concreto.', 10, NULL, 'r2TCjpH9fbkhAy2gOuxCJ8u92XIHpZ.jpg', 0, '2024-02-08 14:01:51', '2024-02-08 14:01:51'),
(205, 33, 'FESTER FERROFEST G', 1749.28, 'Estabilizador de volumen metálico para concreto y mortero.\r\n\r\n \r\n\r\nCompuesto de partículas metálicas selectas y graduadas, además de otros agentes químicos especiales que le proporcionan la propiedad de estabilidad dimensional al combinarse con cemento Pórtland ordinario y agregados minerales.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara asentar y nivelar maquinaria sujeta a vibraciones ligeras.\r\nPara aumentar secciones de elementos estructurales de concreto.\r\nPara anclar pernos, barras, varillas, tornos, entre otros.\r\nResanar todo tipo de superficies de concreto.', 10, NULL, 'GbPrDOTxLPl0jEvhT1j6ShGUxCZSgQ.jpg', 0, '2024-02-08 14:02:33', '2024-02-08 14:02:33'),
(206, 33, 'FESTERGROUT NM AF', 1233.08, 'Mortero sin contracción. Estabilizador de volumen no metálico.\r\n\r\n \r\n\r\nProducto químico en polvo a base de cemento Pórtland, agregados minerales y aditivos que al mezclarse con agua produce un mortero sin contracciones de alta fluidez y alta resistencia a la compresión (600 Kg./cm² a 28 días)\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara asentar y nivelar maquinaria pesada con poca o nula vibración.\r\nPara anclaje de pernos, barras, varillas y tornillos en concreto o roca.\r\nPara resanes en superficies de concreto.', 10, NULL, '4D9YoRhH89G9bkrTCyJVbeBnBZK5qZ.jpg', 0, '2024-02-08 14:06:32', '2024-02-08 14:06:32'),
(207, 33, 'FESTERGROUT NM 800', 1262.08, 'Mortero sin contracción. Estabilizador de volumen no metálico.\r\n\r\n \r\n\r\nProducto químico en polvo a base de cemento Pórtland, agregados minerales y aditivos que al mezclarse con agua produce un mortero sin contracciones, de alta resistencia a la compresión (f´c = 500 Kg./cm² a 24 horas, 800 Kg./cm² a 28 días) y buena fluidez.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara asentar y nivelar maquinaria pesada.\r\nPara anclaje de pernos, barras, varillas y tornillos en concreto o roca.\r\nPara resanes en superficies de concreto.', 10, NULL, 'MBb0XAHnd8w1puo2yvGvBMDvI2VRXk.jpg', 0, '2024-02-08 14:07:48', '2024-02-08 14:07:48'),
(208, 33, 'FESTERGROUT NM 600 10KG', 415.28, 'Mortero sin contracción. Estabilizador de volumen no metálico.\r\n\r\n \r\n\r\nProducto químico en polvo a base de cemento Pórtland, agregados minerales y aditivos que al mezclarse con agua produce un mortero sin contracciones, de alta resistencia a la compresión (625 Kg./cm² a 28 días) y buena fluidez.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara asentar y nivelar maquinaria pesada con poca o nula vibración.\r\nPara anclaje de pernos, barras, varillas, tornillos en concreto o roca.\r\nPara resanes en superficies de concreto.', 10, NULL, 'uzy5SoxMQ2HnQVkghxB3jGXz9snrmo.webp', 0, '2024-02-08 14:10:20', '2024-02-08 14:10:20'),
(209, 33, 'FESTERGROUT NM 600 30KG', 960.48, 'Mortero sin contracción. Estabilizador de volumen no metálico.\r\n\r\n \r\n\r\nProducto químico en polvo a base de cemento Pórtland, agregados minerales y aditivos que al mezclarse con agua produce un mortero sin contracciones, de alta resistencia a la compresión (625 Kg./cm² a 28 días) y buena fluidez.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara asentar y nivelar maquinaria pesada con poca o nula vibración.\r\nPara anclaje de pernos, barras, varillas, tornillos en concreto o roca.\r\nPara resanes en superficies de concreto.', 10, NULL, 'xDfdCeSkbEMRSJRXx54dwYigpmNJM8.webp', 0, '2024-02-08 14:11:50', '2024-02-08 14:11:50'),
(210, 34, 'FESTER CM-100 MORTERO ANTICORROSIVO', 758.64, 'Mortero anticorrosivo para tratamiento del acero de refuerzo utilizado en elementos de concreto.\r\n\r\n \r\n\r\nMortero a base de cemento, agregados minerales, resinas en polvo de alta calidad e inhibidores de corrosión que protegen el acero de refuerzo utilizado en elementos estructurales de concreto.\r\n\r\n \r\n\r\nUSOS\r\n\r\nComo tratamiento anticorrosivo en el acero de refuerzo.\r\nPreventivamente puede ser aplicado en varillas que quedarán expuestas a la intemperie.\r\nComo puente de adherencia aplicandolo sobre concreto existente y mejorar la aderencia de concreto o mortero nuevo.', 10, NULL, 'icWVJO3NqklAD6WK9OCRcYcXkNhSki.webp', 0, '2024-02-08 14:15:57', '2024-02-08 14:15:57'),
(211, 34, 'FESTER CM-200 REPARADOR 25KG', 1310.80, 'Mortero para la reparación y resane de elementos de concreto.\r\n\r\n \r\n\r\nMortero a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 210 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparación de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nResane y acabado de superficies de concreto.\r\nPuede usarse en columnas, bases, trabes, losas, pisos, pavimentos de concreto, puentes y otras estructuras.', 10, NULL, 'rg5fAil5St0JnlLgxeSuUmYbW7hVH5.webp', 0, '2024-02-08 14:16:58', '2024-02-08 14:19:38'),
(212, 34, 'FESTER CM-200 REPARADOR 5KG', 438.48, 'Mortero para la reparación y resane de elementos de concreto.\r\n\r\n \r\n\r\nMortero a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 210 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparación de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nResane y acabado de superficies de concreto.\r\nPuede usarse en columnas, bases, trabes, losas, pisos, pavimentos de concreto, puentes y otras estructuras.', 10, NULL, 'fwZvxjtSRxbwHW0oI9zmjBIYxPFo9q.webp', 0, '2024-02-08 14:17:37', '2024-02-08 14:20:20'),
(213, 34, 'FESTER CM-200 REPARADOR EXPRESS 25 KG', 1373.44, 'Mortero para la reparación y resane de elementos de concreto.\r\n\r\n \r\n\r\nMortero a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 210 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparación de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nResane y acabado de superficies de concreto.\r\nPuede usarse en columnas, bases, trabes, losas, pisos, pavimentos de concreto, puentes y otras estructuras.', 10, NULL, 'X28g5PDvg5aHFVyDNTF59vUUYehrbo.webp', 0, '2024-02-08 14:18:49', '2024-02-08 14:21:36'),
(214, 34, 'FESTER CM-200 REPARADOR EXPRESS 5KG', 459.36, 'Mortero para la reparación y resane de elementos de concreto.\r\n\r\n \r\n\r\nMortero a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 210 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparación de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nResane y acabado de superficies de concreto.\r\nPuede usarse en columnas, bases, trabes, losas, pisos, pavimentos de concreto, puentes y otras estructuras.', 10, NULL, 'XqzYPnckTr3h3calOnu0r94SB38HcG.webp', 0, '2024-02-08 14:23:14', '2024-02-08 14:23:14'),
(215, 34, 'FESTER CM-200 REPARADOR EXPRESS 6PZAS', 203.00, 'Mortero para la reparación y resane de elementos de concreto.\r\n\r\n \r\n\r\nMortero a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 210 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparación de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nResane y acabado de superficies de concreto.\r\nPuede usarse en columnas, bases, trabes, losas, pisos, pavimentos de concreto, puentes y otras estructuras.', 10, NULL, 'qQOaWciIJH5SBuO1rqcsZpsC8pCKu6.webp', 0, '2024-02-08 14:24:26', '2024-02-08 14:24:26'),
(216, 34, 'FESTER CM-201 REPARADOR ESTRUCTURAL 25KG', 1629.80, 'Mortero de alta resistencia para la reparación de elementos de concreto estructural.\r\n\r\n \r\n\r\nMortero tixotrópico (consistencia pastosa)  a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 460 Kg/cm2.\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparacion de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nRecomendado para uso en elementos de concreto estructural.\r\nPuede usarse en columnas, losas, pavimentos de concreto, puentes, elementos de concreto prefabricado, pretensado.', 10, NULL, 'kZJLKFguvzQ8zLwVGBNVDJrmCIVKfg.webp', 0, '2024-02-08 14:25:35', '2024-02-08 14:25:35'),
(217, 34, 'FESTER CM-201 REPARADOR ESTRUCTURLA 5KG', 540.56, 'Mortero de alta resistencia para la reparación de elementos de concreto estructural.\r\n\r\n \r\n\r\nMortero tixotrópico (consistencia pastosa)  a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 460 Kg/cm2.\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparacion de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en cualquier posición.\r\nRecomendado para uso en elementos de concreto estructural.\r\nPuede usarse en columnas, losas, pavimentos de concreto, puentes, elementos de concreto prefabricado, pretensado.', 10, NULL, 'GihQXuWZ0826JziSar8p9CUjTI3ifk.webp', 0, '2024-02-08 14:26:25', '2024-02-08 14:26:25'),
(218, 34, 'FESTER CM-202 REPARADOR FLUIDO 25KG', 1629.80, 'Mortero fluido de alta resistencia para la reparación de elementos de concreto estructural.\r\n\r\n \r\n\r\nMortero fluido y autocompactable  a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 460 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparacion de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en superficies horizontales y encofradas.', 10, NULL, 'ITZwuTQowfpj19R5tN7lu3Sjrz6Nml.webp', 0, '2024-02-08 14:27:43', '2024-02-08 14:27:43'),
(219, 34, 'FESTER CM-202 REPARADOR FLUIDO', 540.56, 'Mortero fluido de alta resistencia para la reparación de elementos de concreto estructural.\r\n\r\n \r\n\r\nMortero fluido y autocompactable  a base de cemento hidráulico aditivos especiales y agregados de granulometría fina, monocomponente, de fácil aplicación, rápido fraguado, impermeable y sin contracción. Resistencia a la compresión de 460 Kg/cm2\r\n\r\n \r\n\r\nUSOS\r\n\r\nReparacion de oquedades, despostillamientos, baches, agrietamientos y daños ocasionados por oxidación del acero de refuerzo en elementos de concreto en superficies horizontales y encofradas.', 10, NULL, 'USXSd0uYwqJRBeArcdMRQKTh3VrCgM.webp', 0, '2024-02-08 14:28:24', '2024-02-08 14:28:24'),
(220, 35, 'FESTERMIX 4L', 316.68, 'Aditivo que acelera el fraguado inicial e incrementa la resistencia a cortas edades.\r\n\r\n \r\n\r\nCompuesto de color transparente/grisáceo, que activa la hidratación del cemento Pórtland, reduciendo el tiempo de fraguado y aumentando la resistencia a la compresión del concreto a cortas edades (de 24 horas en adelante)\r\n\r\n \r\n\r\nUSOS\r\n\r\nEn obras donde se requiera rapidez de movimiento de cimbra.\r\nEn climas con bajas temperaturas.\r\nEn concretos para elementos pre-colados como: tubos, durmientes, guarniciones, entre otros.', 10, NULL, 'A2bnIW2fk1G02G2JdfbMF2xVVFKLAi.jpg', 0, '2024-02-08 14:29:28', '2024-02-08 14:29:28'),
(221, 35, 'FESTERMIX 19L', 1017.32, 'Aditivo que acelera el fraguado inicial e incrementa la resistencia a cortas edades.\r\n\r\n \r\n\r\nCompuesto de color transparente/grisáceo, que activa la hidratación del cemento Pórtland, reduciendo el tiempo de fraguado y aumentando la resistencia a la compresión del concreto a cortas edades (de 24 horas en adelante)\r\n\r\n \r\n\r\nUSOS\r\n\r\nEn obras donde se requiera rapidez de movimiento de cimbra.\r\nEn climas con bajas temperaturas.\r\nEn concretos para elementos pre-colados como: tubos, durmientes, guarniciones, entre otros.', 10, NULL, 'pCr1z1Wwmtz7vi1r7xTYkKNZBI7KYt.jpg', 0, '2024-02-08 14:30:12', '2024-02-08 14:30:12'),
(222, 35, 'FESTERMIX 200L', 8138.56, 'Aditivo que acelera el fraguado inicial e incrementa la resistencia a cortas edades.\r\n\r\n \r\n\r\nCompuesto de color transparente/grisáceo, que activa la hidratación del cemento Pórtland, reduciendo el tiempo de fraguado y aumentando la resistencia a la compresión del concreto a cortas edades (de 24 horas en adelante)\r\n\r\n \r\n\r\nUSOS\r\n\r\nEn obras donde se requiera rapidez de movimiento de cimbra.\r\nEn climas con bajas temperaturas.\r\nEn concretos para elementos pre-colados como: tubos, durmientes, guarniciones, entre otros.', 10, NULL, 'mHQOCNxaCyrtNmfb31aJDGExExPO0p.jpg', 0, '2024-02-08 14:30:56', '2024-02-08 14:30:56'),
(223, 35, 'FESTER FIBRAFEST 600', 151.95, 'Las microfibras de polipropileno de Fibrafest son la solución para concretos y morteros que presentan problemas de agrietamientos generados por la contracción plástica cuando pierden agua de la superficie de forma acelerada.', 10, NULL, 'oaIkoocPAqEGwiv5cNqO8c0WJSSgpJ.png', 0, '2024-02-08 14:32:42', '2024-02-08 14:32:42'),
(224, 35, 'FESTER FIBRAFEST 100', 32.48, 'Micro fibra de polipropileno para concretos y morteros\r\n\r\n \r\n\r\nFibra de polipropileno 100% virgen en forma de filamentos y tratada con dispersantes. Funciona como refuerzo secundario en concretos y morteros.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara reducir agrietamientos por contracción plástica y térmica en concretos y morteros.\r\n\r\n \r\n\r\nRENDIMIENTO\r\n\r\nBolsa de 600 gramos / 1 m³ de concreto // Bolsa de 100 gramos 1 saco de cemento de 50 kg.', 10, NULL, NULL, 0, '2024-02-08 14:33:37', '2024-02-08 14:33:37'),
(225, 36, 'FESTER CURAFEST MC320', 1417.52, 'Membrana acrílica espreable para curado de concreto y morteros.\r\n\r\n \r\n\r\nEmulsión base agua formulada con resinas acrílicas que al ser aplicado sobre concreto o mortero recién colados forma una película que evita la evaporación excesiva de agua\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara curar elementos de concreto en posición horizontal tales como: pisos y pavimentos de concreto, lozas de techo horizontales e inclinadas, canales de riego, elementos precolados, canchas deportivas, areas reparadas con concreto o mortero.\r\nAl ser libre de parafina no afecta la adherencia del recubrimiento sobre el concreto o mortero endurecido', 10, NULL, 'EcOgDUvgYopNTilfFTmF7254eDKcRB.jpg', 0, '2024-02-08 14:34:55', '2024-02-08 14:34:55'),
(226, 36, 'FESTER CURAFEST MC320', 14330.64, 'Membrana acrílica espreable para curado de concreto y morteros.\r\n\r\n \r\n\r\nEmulsión base agua formulada con resinas acrílicas que al ser aplicado sobre concreto o mortero recién colados forma una película que evita la evaporación excesiva de agua\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara curar elementos de concreto en posición horizontal tales como: pisos y pavimentos de concreto, lozas de techo horizontales e inclinadas, canales de riego, elementos precolados, canchas deportivas, areas reparadas con concreto o mortero.\r\nAl ser libre de parafina no afecta la adherencia del recubrimiento sobre el concreto o mortero endurecido', 10, NULL, 'ul1Cw3vEuDeNcgq9sRxBQSsbfTQiJM.jpg', 0, '2024-02-08 14:35:36', '2024-02-08 14:35:36'),
(227, 36, 'FESTER CURAFEST SELLADOR MC330', 1021.96, 'Sellador Acrílico para curar concreto o morteros al retirar la cimbra.\r\n\r\n \r\n\r\nLíquido viscoso color blanco formulado con resinas acrílicas, diseñado para curar concretos o morteros al retirar la cimbra, habiendo transcurrido entre 16 y 24 horas, formando una película que tarda la evaporación del agua remanente\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara retener la humedad residual en elementos de concreto y morteros al momento de retiro de las cimbras. Recomendado para uso en interiores o exteriores en elementos de cualquier posición tales como: muros divisorios, columnas, cimentaciones, trabes, elementos precolados en todo tipo etc.\r\nAl ser libre de parafina no afecta la adherencia de recubrimientos sobre el concreto o mortero fraguado.', 10, NULL, 'TXY5eUF2pw8LXI4QENNiFkMnITLxOK.jpg', 0, '2024-02-08 14:37:00', '2024-02-08 14:37:00'),
(228, 36, 'FESTER CURAFEST SELLADOR MC330', 10039.80, 'Sellador Acrílico para curar concreto o morteros al retirar la cimbra.\r\n\r\n \r\n\r\nLíquido viscoso color blanco formulado con resinas acrílicas, diseñado para curar concretos o morteros al retirar la cimbra, habiendo transcurrido entre 16 y 24 horas, formando una película que tarda la evaporación del agua remanente\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara retener la humedad residual en elementos de concreto y morteros al momento de retiro de las cimbras. Recomendado para uso en interiores o exteriores en elementos de cualquier posición tales como: muros divisorios, columnas, cimentaciones, trabes, elementos precolados en todo tipo etc.\r\nAl ser libre de parafina no afecta la adherencia de recubrimientos sobre el concreto o mortero fraguado.', 10, NULL, 'ZtjEAvEaQ5vLT1NsI8br2OgBGSfP9Z.jpg', 0, '2024-02-08 14:37:53', '2024-02-08 14:37:53'),
(229, 37, 'FESTER CIMBRAFEST DC-310', 1485.96, 'Desmoldante ecológico para todo tipo de cimbras.\r\n\r\n \r\n\r\nEmulsión base agua formulada con compuestos parafínicos, que evita la adherencia del concreto o mortero a cimbras de madera, plástico o metal, facilita el desmolde y promueve un buen acabado del concreto o mortero alargando la vida útil de la cimbra\r\n\r\n \r\n\r\nUSOS\r\n\r\nRecomendado para aplicarse en cualquier cimbra de madera, metal, fibra de vidrio, casetones de plástico y moldes metálicos nuevos o en uso.\r\nDescimbrado de elementos de concreto o mortero en cualquier posición como muros, losas de techo, columnas, trabes, cimentaciones, estructuras, entrepisos, rampas, escaleras, postes etc.\r\nRecomendado para moldes de elementos de concreto precolados.', 10, NULL, 'zFaOXRnySwZtE5hJFQboYMBQ3meGW5.jpg', 0, '2024-02-08 14:39:27', '2024-02-08 14:39:28'),
(230, 37, 'FESTER CIMBRAFEST DC-310 200L', 13468.76, 'Desmoldante ecológico para todo tipo de cimbras.\r\n\r\n \r\n\r\nEmulsión base agua formulada con compuestos parafínicos, que evita la adherencia del concreto o mortero a cimbras de madera, plástico o metal, facilita el desmolde y promueve un buen acabado del concreto o mortero alargando la vida útil de la cimbra\r\n\r\n \r\n\r\nUSOS\r\n\r\nRecomendado para aplicarse en cualquier cimbra de madera, metal, fibra de vidrio, casetones de plástico y moldes metálicos nuevos o en uso.\r\nDescimbrado de elementos de concreto o mortero en cualquier posición como muros, losas de techo, columnas, trabes, cimentaciones, estructuras, entrepisos, rampas, escaleras, postes etc.\r\nRecomendado para moldes de elementos de concreto precolados.', 10, NULL, 'L7H8e7panZJafE6zt6kQSdmIOBUmle.jpg', 0, '2024-02-08 14:40:13', '2024-02-08 14:40:13'),
(231, 37, 'FESTER CIMBRAFEST DC-350 19L', 1656.48, 'Desmoldante base agua, ecológico y biodegradable para todo tipo de cimbras.\r\n \r\n\r\nEmulsión base agua formulada con compuestos minerales biodegradables, que evita la adherencia del concreto o mortero a cimbras de madera, plástico o metal, facilita el desmolde y promueve un acabado aparente del concreto o mortero libre de manchas y oquedades alargando la vida útil de la cimbra.\r\n\r\n \r\n\r\nUSOS\r\n\r\nEspecialmente diseñado para desmoldar concretos o morteros en los que se aplicará un recubrimiento, al ser libre de parafina no afecta la adherencia de acabados al concreto o mortero.\r\nRecomendado para aplicarse en cualquier cimbra de madera, metal, fibra de vidrio, casetones de plástico y moldes metálicos nuevos o en uso.\r\nDescimbrado de elementos de concreto o mortero en cualquier posición como muros, losas de techo, columnas, trabes, cimentaciones, estructuras, entrepisos, rampas, escaleras, postes etc.\r\nRecomendado para aplicación en moldes de elementos de concreto precolado', 10, NULL, 'A0rndiymdJ5cBA5HwyURvQCz2EKbYU.jpg', 0, '2024-02-08 14:41:08', '2024-02-08 14:41:08'),
(232, 37, 'FESTER CIMBRAFEST DC-350 200L', 16825.80, 'Desmoldante base agua, ecológico y biodegradable para todo tipo de cimbras.\r\n \r\n\r\nEmulsión base agua formulada con compuestos minerales biodegradables, que evita la adherencia del concreto o mortero a cimbras de madera, plástico o metal, facilita el desmolde y promueve un acabado aparente del concreto o mortero libre de manchas y oquedades alargando la vida útil de la cimbra.\r\n\r\n \r\n\r\nUSOS\r\n\r\nEspecialmente diseñado para desmoldar concretos o morteros en los que se aplicará un recubrimiento, al ser libre de parafina no afecta la adherencia de acabados al concreto o mortero.\r\nRecomendado para aplicarse en cualquier cimbra de madera, metal, fibra de vidrio, casetones de plástico y moldes metálicos nuevos o en uso.\r\nDescimbrado de elementos de concreto o mortero en cualquier posición como muros, losas de techo, columnas, trabes, cimentaciones, estructuras, entrepisos, rampas, escaleras, postes etc.\r\nRecomendado para aplicación en moldes de elementos de concreto precolado', 10, NULL, 'p1vdfFiL8lruXuL3k04k5tu56jIj7y.jpg', 0, '2024-02-08 14:42:19', '2024-02-08 14:42:20'),
(233, 38, 'FESTER BANDA FLEX PVC 6\"', 8534.12, 'Sello retenedor de agua en juntas frías por diseño constructivo en elementos de concreto.', 10, NULL, 'o29eXWfc3axClrt6sZ8WCK9Qnaa9V3.png', 0, '2024-02-08 14:43:32', '2024-02-08 14:43:32'),
(234, 38, 'FESTER BANDA FLEX PVC 7.5\"', 10064.16, 'Sello retenedor de agua en juntas frías por diseño constructivo en elementos de concreto.', 10, NULL, 'jMHH7KPhWdMSGyEGqUnNK9yjnotWyK.png', 0, '2024-02-08 14:46:17', '2024-02-08 14:46:17'),
(235, 38, 'FESTER BANDA FLEZ PVC 9\"', 13915.36, 'Sello retenedor de agua en juntas frías por diseño constructivo en elementos de concreto.', 10, NULL, '919T9sFvXFf0Yga2X28Z7KmZNolybc.png', 0, '2024-02-08 14:46:52', '2024-02-09 02:34:46'),
(236, 39, 'FESTER ENDUMIN GRIS NATURAL', 505.76, 'Endurecedor mineral para pisos de concreto.\r\n\r\n \r\n\r\nAgregado mineral no oxidable, de granulometría uniforme y agentes dispersantes que permiten la integración del endurecedor a la superficie del concreto, produciendo un acabado de alta resistencia a la abrasión\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara endurecer superficies de concreto sometidas a abrasión e impacto.\r\nEn pisos de concreto expuestos a tránsito vehicular continuo.\r\n \r\n\r\nVENTAJAS\r\n\r\nAumenta la durabilidad de la superficie del concreto hasta en 8 veces.\r\nReduce la necesidad de reparaciones en el concreto\r\nEvita el desprendimiento del polvo y el desgaste prematuro', 10, NULL, 'Wl3O6KVLf3UPCmQIWlX8OhwOAXQAyK.webp', 0, '2024-02-09 02:37:20', '2024-02-09 02:37:20'),
(237, 40, 'FESTER EPOXINE 900 SELLADOR', 4926.52, 'Producto epóxico de consistencia fluida, de 2 componentes, 100% sólidos (libre de solventes) de color gris claro que al curar se convierte en un junteador semirígido (rellenador) duro pero flexible, para pisos industriales.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara rellenar juntas de concreto con movimiento moderado.\r\nPara relleno de juntas de control y constructivas.\r\nPara reparación de juntas despostilladas y agrietadas.\r\n \r\n\r\nVENTAJAS\r\n\r\nProtege las juntas de concreto contra el desgaste prematuro.\r\nAbsorbe parte de los movimientos de las juntas.\r\nPuede quedar expuesto o recibir recubrimientos de acabado.', 10, NULL, '8DZaHIJbFIbmQtCl68ESYu4KYKIpsI.webp', 0, '2024-02-09 02:42:41', '2024-02-09 02:42:41'),
(238, 40, 'FEXPAN', 844.45, 'Relleno premoldeado para juntas de expansión.\r\n\r\n \r\n\r\nProducto aglomerado de fibras de celulosa impregnada con asfaltos especiales y conservadores. Colocado entre losas de concreto hidráulico y en pavimentos, forma un cojín comprimible que sirve de relleno y base para selladores elásticos.\r\n\r\n \r\n\r\nUSOS\r\n\r\nEn todos los casos donde se requieran juntas de expansión y contracción, por diseño constructivo, como: pisos industriales y pavimentos de concreto hidráulico, pistas y plataformas de aeropuertos, banquetas y andenes de carga y descarga.\r\n\r\n \r\n\r\nRENDIMIENTO\r\n\r\n1.48 m²\r\n\r\n \r\n\r\nVENTAJAS\r\n\r\nNo se pudre por lo que protege la base del piso.\r\nPuede usarse como cimbra perdida, generando secciones uniformes para el sellado de juntas.\r\nPor sus medidas puede adaptarse a cualquier peralte de losa.', 10, NULL, 'jpRLMfrNxACacrp5xocS5irxV0nnaT.webp', 0, '2024-02-09 02:44:27', '2024-02-09 02:44:27'),
(239, 41, 'FESTER ELASTOFEST', 3375.60, 'Sellador de juntas horizontales.\r\n\r\n \r\n\r\nCompuesto asfáltico de consistencia semisólida, modificado con hule sintético para aplicación en caliente. Es resistente a ácidos o álcalis diluidos.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara sellar juntas horizontales en pisos de concreto, patios de maniobras y calles que no estén expuestos a derrame de hidrocarburos como solventes y combustibles.\r\nPisos de depósitos de agua.\r\nBanquetas, plazas y pisos industriales.\r\n \r\n\r\nRENDIMIENTO\r\n\r\n1 kg. de Fester Elastofest llena un volumen aprocimado de 970 cm³\r\nPor cada 30 kg. de Fester Elastofest, se requiere de un litro de Fester Hidroprimer aproximandamente, aunque éste varía dependiendo de las dimensiones de las juntas.', 10, NULL, 'BNEiz4UGBAI9IeDWOGnxGAORGPikUP.jpg', 0, '2024-02-09 02:54:29', '2024-02-09 02:54:29'),
(240, 41, 'FESTER EPOXY-JOINT', 5689.80, 'Junteador epóxico para loseta antiácida.\r\n\r\n \r\n\r\nJunteador/rellenador epóxico de 3 componentes, 100% sólidos (libre de solventes) con excelente resistencia química; diseñado para aplicarse en juntas o boquillas de loseta antiácida y otros tipos de loseta cerámica de uso industrial.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara juntear loseta antiácida, cerámica, baldosas o azulejos de uso industrial.\r\nPara formar una capa adhesiva sobre el concreto antes de recibir las losetas a colocar.\r\n \r\n\r\nVENTAJAS\r\n\r\nNo requiere mano de obra especializada ni primario.\r\nPuede usarse en áreas donde se requieran condiciones sanitarias.\r\nTiene alta resistencia al ataque químico y por bacterias.\r\nNo desprende olores desagradables.', 10, NULL, 'Pczk3dOty0RuQrp0mPAO1br3zrfqQu.webp', 0, '2024-02-09 02:55:21', '2024-02-09 02:55:21'),
(241, 42, 'FESTERMICIDE 4L', 1112.44, 'Tratamiento protector y conservador para madera.\r\n\r\n \r\n\r\nLíquido transparente libre de solventes aromáticos de alta penetración, eficaz contra insectos destructores de madera, que impregna la madera protegiéndola contra comején, polilla y hongos. Evita la putrefacción y agrietamiento por resequedad al tiempo que controla el hongo azul que produce manchas azules, verde-amarillas y grises.\r\n\r\n \r\n\r\nUSOS\r\n\r\nMuebles, esculturas y antigüedades.\r\nPisos de duela o parquet.\r\nMarcos, puertas, ventanas y artesonados.\r\n \r\n\r\nRENDIMIENTO\r\n\r\n1 litro cubre aproximadamente 5 m²\r\n\r\n \r\n\r\nVENTAJAS\r\n\r\nPenetra profundamente en la madera.\r\nPuede ser usado de manera preventiva y correctiva.\r\nNo modifica la apariencia de la madera.', 10, NULL, 'XvLB6FvgUP7WbqZP9aIg7fHIvtpInu.webp', 0, '2024-02-09 02:57:48', '2024-02-09 02:57:48'),
(242, 42, 'FESTERMICIDE 19L', 4526.32, 'Tratamiento protector y conservador para madera.\r\n\r\n \r\n\r\nLíquido transparente libre de solventes aromáticos de alta penetración, eficaz contra insectos destructores de madera, que impregna la madera protegiéndola contra comején, polilla y hongos. Evita la putrefacción y agrietamiento por resequedad al tiempo que controla el hongo azul que produce manchas azules, verde-amarillas y grises.\r\n\r\n \r\n\r\nUSOS\r\n\r\nMuebles, esculturas y antigüedades.\r\nPisos de duela o parquet.\r\nMarcos, puertas, ventanas y artesonados.\r\n \r\n\r\nRENDIMIENTO\r\n\r\n1 litro cubre aproximadamente 5 m²\r\n\r\n \r\n\r\nVENTAJAS\r\n\r\nPenetra profundamente en la madera.\r\nPuede ser usado de manera preventiva y correctiva.\r\nNo modifica la apariencia de la madera.', 10, NULL, 'PmpnILStGQJbccK5Fw330jPEkLy86X.webp', 0, '2024-02-09 03:03:07', '2024-02-09 03:03:07'),
(243, 42, 'FESTERMICIDE 200L', 38020.28, 'Tratamiento protector y conservador para madera.\r\n\r\n \r\n\r\nLíquido transparente libre de solventes aromáticos de alta penetración, eficaz contra insectos destructores de madera, que impregna la madera protegiéndola contra comején, polilla y hongos. Evita la putrefacción y agrietamiento por resequedad al tiempo que controla el hongo azul que produce manchas azules, verde-amarillas y grises.\r\n\r\n \r\n\r\nUSOS\r\n\r\nMuebles, esculturas y antigüedades.\r\nPisos de duela o parquet.\r\nMarcos, puertas, ventanas y artesonados.\r\n \r\n\r\nRENDIMIENTO\r\n\r\n1 litro cubre aproximadamente 5 m²\r\n\r\n \r\n\r\nVENTAJAS\r\n\r\nPenetra profundamente en la madera.\r\nPuede ser usado de manera preventiva y correctiva.\r\nNo modifica la apariencia de la madera.', 10, NULL, 'YAe8XlC4LytErmRYBkNal0qyTTk1s3.webp', 0, '2024-02-09 03:04:58', '2024-02-09 03:04:58'),
(244, 43, 'FESTER EPOXINE 100 BLANCO', 3544.96, 'Recubrimiento epóxico.\r\n\r\n \r\n\r\nRecubrimiento epóxico termofijo, poliamídico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara proteger elementos de concreto, metal y madera en mantenimiento industrial y comercial.\r\nPara proteger y decorar pisos, paredes, estructuras, tanques metálicos y de concreto expuestos a ambientes corrosivos y lavado constante.\r\n \r\n\r\nVENTAJAS\r\n\r\nAdhiere sobre concreto, metal, madera, fibrocemento, entre otros.\r\nForma una capa continua y flexible.\r\nProtege del ataque provocado por humedad, ambientes salinos, diluciones de ácidos ligeros, álcalis, solventes, aceites, entre otros, usados comúnmente en la industria.', 10, NULL, 'oC8UeeM6Y3pcrjvYkKcfQkNtfCtBME.webp', 0, '2024-02-09 03:09:11', '2024-02-09 03:09:49'),
(245, 43, 'FESTER EPOXINE 100 GRIS CONCRETO', 3355.88, 'Recubrimiento epóxico.\r\n\r\n \r\n\r\nRecubrimiento epóxico termofijo, poliamídico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara proteger elementos de concreto, metal y madera en mantenimiento industrial y comercial.\r\nPara proteger y decorar pisos, paredes, estructuras, tanques metálicos y de concreto expuestos a ambientes corrosivos y lavado constante.\r\n \r\n\r\nVENTAJAS\r\n\r\nAdhiere sobre concreto, metal, madera, fibrocemento, entre otros.\r\nForma una capa continua y flexible.\r\nProtege del ataque provocado por humedad, ambientes salinos, diluciones de ácidos ligeros, álcalis, solventes, aceites, entre otros, usados comúnmente en la industria.', 10, NULL, 'OpUYydgVH9cUWzIHFniEkgjr6kONYJ.webp', 0, '2024-02-09 03:12:30', '2024-02-09 03:12:30');
INSERT INTO `p_f_producto_pepes` (`id`, `subcategoria`, `nombre`, `precio`, `descripcion`, `existencias`, `presentacion`, `imagen`, `inicio`, `created_at`, `updated_at`) VALUES
(246, 43, 'FESTER EPOXINE 100 GRIS PERLA', 3529.88, 'Recubrimiento epóxico.\r\n\r\n \r\n\r\nRecubrimiento epóxico termofijo, poliamídico de 2 componentes, con solventes y aditivos, que al mezclarse producen un compuesto de baja viscosidad que una vez aplicado forma una capa protectora y decorativa con propiedades de durabilidad.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara proteger elementos de concreto, metal y madera en mantenimiento industrial y comercial.\r\nPara proteger y decorar pisos, paredes, estructuras, tanques metálicos y de concreto expuestos a ambientes corrosivos y lavado constante.\r\n \r\n\r\nVENTAJAS\r\n\r\nAdhiere sobre concreto, metal, madera, fibrocemento, entre otros.\r\nForma una capa continua y flexible.\r\nProtege del ataque provocado por humedad, ambientes salinos, diluciones de ácidos ligeros, álcalis, solventes, aceites, entre otros, usados comúnmente en la industria.', 10, NULL, 'BABJojAIQ5U8K09FfX3ndIBHRHjQGM.webp', 0, '2024-02-09 03:15:11', '2024-02-09 03:15:11'),
(247, 43, 'FESTER ACRITON RUGOSO GRIS', 3453.32, 'Impermeabilizante acrílico de acabado rugoso para fachadas.\r\n\r\n \r\n\r\nImpermeabilizante acrílico base agua y de acabado rugoso elaborado con resinas acrílicas, pigmentos inorgánicos, agregados minerales y aditivos de primera calidad. El producto está diseñado con la viscosidad ideal para cubrir fisuras en las superficies de muros y fachadas.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPara impermeabilizar fachadas, muros de colindancia y pretiles de azotea.\r\nSe puede aplicar sobre materiales de tabique, ladrillo, block (bloque), concreto, placas prefabricadas, entre otras.\r\nSe puede aplicar sobre recubrimientos como: aplanados, texturas y pinturas bien adheridas.', 10, NULL, '2addoVTV2focjwi7skOKqvn7fZrJkz.png', 0, '2024-02-09 05:38:11', '2024-02-09 05:51:34'),
(248, 44, 'FESTER CF890 ANCLAJE QUÍMICO', 430.36, 'Sistema de fijación profesional fórmula poliéster.\r\n\r\n \r\n\r\nEl sistema de anclaje químico Fester CF 890 es una resina poliéster de última generación ideal para anclar cargas pesadas a elementos difíciles de construcción tales como: roca, concreto, block (bloque) y materiales porosos.\r\n\r\n \r\n\r\nUSOS\r\n\r\nFijado de herrería en general\r\nFijación de elementos para sistemas de climatización\r\n \r\n\r\nVENTAJAS\r\n\r\nFácil de aplicar\r\nSoporta hasta 1 tonelada*\r\nResistencia a vibraciones ligeras', 10, NULL, 'XTdlBWtz9NP57JhVp4TOnjYHBgHFYF.jpg', 0, '2024-02-09 05:39:43', '2024-02-09 05:52:13'),
(249, 44, 'FESTER CF1000 ANCLAJE QUIMICO', 22842.72, 'Anclaje químico 100% epóxico.\r\n\r\n \r\n\r\nEs un sistema 100% epóxico de 2 componentes, libre de solventes, curado rápido, resistente a vibraciones, ataques químicos y con capacidad estructural de alto desempeño.\r\n\r\n \r\n\r\nUSOS\r\n\r\nAnclar y colocar elementos metálicos como varillas de construcción y roscadas principalmente en elementos de concreto.\r\nAnclajes sobre piedras, ladrillos sólidos o ladrillos huecos con ayuda de un tamiz.\r\nAnclajes donde se requieran rápidamente propiedades sobresalientes de adherencia entre el elemento metálico y el sustrato donde se realizó la perforación.\r\nAnclajes que, una vez instalados, podrían estar en contacto con aceites y grasas.', 10, NULL, '2vWDZE2V9FzssXArEwBmDx9VMnQqZt.webp', 0, '2024-02-09 05:41:42', '2024-02-09 05:41:42'),
(250, 45, 'FESTER TAMICES 13 X 100MM', 125.28, 'Es una malla metálica constituida por barras tejidas y que dejan un espacio entre sí por donde se hace pasar el alimento previamente triturado.Las aberturas que deja el tejido y, que en conjunto constituyen la superficie de tamizado, pueden ser de forma distinta, según la clase de tejido.\r\n\r\nTambien es un implemento utilizado en cocina cuya finalidad es separar un elemento de otro.', 10, NULL, 'b8KeeG7WLDnNeph5NUtekpHnfjSkb9.png', 0, '2024-02-09 05:43:40', '2024-02-09 05:43:40'),
(251, 45, 'FESTER BOQUILLAS MEZCLADORAS CF', 1498.72, 'BOQUILLAS MEZCLADORAS', 10, NULL, 'ikM2ztvayALjic12xWPqkL6VTvJKur.png', 0, '2024-02-09 05:47:50', '2024-02-09 05:47:50'),
(252, 48, 'FESTER ESPUMA EXPANSIVA', 259.84, 'Espuma expansiva de poliuretano.\r\n\r\n \r\n\r\nEspuma expansiva de poliuretano en aerosol para sellar y rellenar grandes huecos evitando el paso de aire, agua, insectos, ruido y suciedad en superficies planas e irregulares. \r\n\r\n \r\n\r\nUSOS\r\n\r\nSello y relleno de juntas entre muros, oquedades y estructuras\r\nEmboquillado y Mamposteria\r\nRelleno de grietas constructivas', 10, NULL, 'Xy2ysBWMuVtvxSBeN3t71y0OnRDmTN.jpg', 0, '2024-02-09 05:50:29', '2024-02-09 05:50:29'),
(253, 49, 'FESTER FT 101', 258.68, 'Sellador + Adhesivo\r\n\r\nSella - Pega - Rellena\r\n\r\n \r\n\r\nSellador elástico y adhesivo de un componente para juntas de movimiento moderado, que cura con la humedad del ambiente, para interiores y exteriores, basado en la tecnología Flextec® exclusiva de Henkel.\r\n\r\n \r\n\r\nUSOS\r\n\r\nSella juntas de conexión con moderado movimiento.\r\nEmboquillado y mamposteria.\r\nRelleno de grietas constructivas.\r\nAdhesivo de montaje.', 10, NULL, 'uIDeHYjSkxlXjPQg9JFhkuLvaKeDMm.webp', 0, '2024-02-09 05:55:26', '2024-02-09 05:55:26'),
(254, 49, 'FESTER FT 201', 460.52, 'Sellador para juntas de alto movimiento.\r\n\r\n \r\n\r\nSellador elástico de un componente para juntas de alto movimiento, que cura con la humedad del ambiente, para interiores y exteriores, basado en la tecnología Flextec® exclusiva de Henkel.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPlacas de concreto\r\nFachadas\r\nEstructuras metálicas\r\nPaneles Fibrocemento', 10, NULL, 'Xh5obeYNQv0e5i9NZ2Wh1no6Zu8gfB.jpg', 0, '2024-02-09 06:00:48', '2024-02-09 06:00:48'),
(255, 49, 'FESTER FT 201 280ML', 266.80, 'Sellador para juntas de alto movimiento.\r\n\r\n \r\n\r\nSellador elástico de un componente para juntas de alto movimiento, que cura con la humedad del ambiente, para interiores y exteriores, basado en la tecnología Flextec® exclusiva de Henkel.\r\n\r\n \r\n\r\nUSOS\r\n\r\nPlacas de concreto\r\nFachadas\r\nEstructuras metálicas\r\nPaneles Fibrocemento', 10, NULL, 'mPjpDKLZNbSteDJx8dHAniWfP0jxRp.jpg', 0, '2024-02-09 06:04:09', '2024-02-09 06:04:09'),
(256, 50, 'SISTA BACKER ROD 1/2 381M', 2958.00, 'Sista Backer Rod es una espuma de baja densidad que se puede colocar como fondo de junta en el sellado de\r\n\r\nPisos, paredes, páneles, estructuras hidráulicas, techos y fachadas, entre otros.\r\nElementos prefabricados.\r\nJuntas de pavimento (autopista, estacionamientos, etc.).\r\nConstrucciones de madera.', 10, NULL, '8ppz0LuUcP28LH3oXwRScuLoiXZ4LH.png', 0, '2024-02-09 06:09:06', '2024-02-09 06:09:47'),
(257, 50, 'SISTA BACKER ROD 3/8 320ML', 2701.64, 'Sista Backer Rod es una espuma de baja densidad que se puede colocar como fondo de junta en el sellado de\r\n\r\nPisos, paredes, páneles, estructuras hidráulicas, techos y fachadas, entre otros.\r\nElementos prefabricados.\r\nJuntas de pavimento (autopista, estacionamientos, etc.).\r\nConstrucciones de madera.', 10, NULL, 'vJcmEChMNPXm0g5MoiTgy29Udkvp1y.png', 0, '2024-02-09 06:11:28', '2024-02-09 06:25:27'),
(258, 50, 'SISTA BACKER ROD 1/4 PULG 610M', 2001.00, 'Sista Backer Rod es una espuma de baja densidad que se puede colocar como fondo de junta en el sellado de\r\n\r\nPisos, paredes, páneles, estructuras hidráulicas, techos y fachadas, entre otros.\r\nElementos prefabricados.\r\nJuntas de pavimento (autopista, estacionamientos, etc.).\r\nConstrucciones de madera.', 10, NULL, NULL, 0, '2024-02-09 06:29:54', '2024-02-09 06:29:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_producto_presentacion_pepes`
--

CREATE TABLE `p_f_producto_presentacion_pepes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` bigint(20) UNSIGNED NOT NULL,
  `presentacion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_producto_presentacion_pepes`
--

INSERT INTO `p_f_producto_presentacion_pepes` (`id`, `producto`, `presentacion`, `created_at`, `updated_at`) VALUES
(71, 53, 'Cubeta 4L', '2024-02-07 11:20:17', '2024-02-07 11:20:17'),
(73, 55, 'Cubeta 19L', '2024-02-07 11:22:20', '2024-02-07 11:22:20'),
(74, 56, 'Bote 1L', '2024-02-07 11:24:00', '2024-02-07 11:24:00'),
(75, 57, 'Bote 4L', '2024-02-07 11:25:12', '2024-02-07 11:25:12'),
(76, 58, 'rollo de 1.10m x 100m de largo', '2024-02-07 13:57:57', '2024-02-07 13:57:57'),
(77, 59, 'Rollo de 1.10m x 100m de largo.', '2024-02-07 14:00:38', '2024-02-07 14:00:38'),
(81, 63, 'BLANCO', '2024-02-07 14:09:43', '2024-02-07 14:09:43'),
(82, 64, 'ROJO', '2024-02-07 14:10:34', '2024-02-07 14:10:34'),
(83, 65, 'BLANCO', '2024-02-07 14:12:43', '2024-02-07 14:12:43'),
(84, 66, 'ROJO', '2024-02-07 17:16:05', '2024-02-07 17:16:05'),
(85, 67, 'BLANCO', '2024-02-07 17:17:19', '2024-02-07 17:17:19'),
(86, 68, 'BLANCO', '2024-02-07 17:18:11', '2024-02-07 17:18:11'),
(87, 69, 'BLANCO', '2024-02-07 17:18:13', '2024-02-07 17:18:13'),
(88, 70, 'ROJO', '2024-02-07 17:19:19', '2024-02-07 17:19:19'),
(89, 71, 'ROJO', '2024-02-07 17:20:39', '2024-02-07 17:20:39'),
(90, 72, 'BLANCO', '2024-02-07 17:21:48', '2024-02-07 17:21:48'),
(91, 73, 'BLANCO', '2024-02-07 17:22:38', '2024-02-07 17:22:38'),
(92, 74, 'BLANCO', '2024-02-07 17:26:14', '2024-02-07 17:26:14'),
(93, 75, 'ROJO', '2024-02-07 17:27:19', '2024-02-07 17:27:19'),
(94, 76, 'ROJO', '2024-02-07 17:27:28', '2024-02-07 17:27:28'),
(95, 77, 'ROJO', '2024-02-07 17:28:26', '2024-02-07 17:28:26'),
(96, 78, 'ROJO', '2024-02-07 17:29:21', '2024-02-07 17:29:21'),
(97, 79, 'VERDE', '2024-02-07 17:31:24', '2024-02-07 17:31:24'),
(98, 80, 'BLANCO', '2024-02-07 17:32:30', '2024-02-07 17:32:30'),
(99, 81, 'ROJO', '2024-02-07 17:33:15', '2024-02-07 17:33:15'),
(100, 82, 'BLANCO', '2024-02-07 17:35:17', '2024-02-07 17:35:17'),
(101, 83, 'BLANCO 19L', '2024-02-07 17:37:45', '2024-02-07 17:37:45'),
(102, 84, 'BLANCO 19L', '2024-02-07 17:38:55', '2024-02-07 17:38:55'),
(106, 88, '19L BLANCO', '2024-02-07 17:47:47', '2024-02-07 17:47:47'),
(107, 88, '19L ROJO', '2024-02-07 17:47:47', '2024-02-07 17:47:47'),
(108, 89, '19L BLANCO', '2024-02-07 17:48:43', '2024-02-07 17:48:43'),
(109, 89, '19L ROJO', '2024-02-07 17:48:43', '2024-02-07 17:48:43'),
(110, 90, 'BLANCO 19L', '2024-02-07 17:49:49', '2024-02-07 17:49:49'),
(111, 90, 'ROJO 19L', '2024-02-07 17:49:49', '2024-02-07 17:49:49'),
(112, 91, '19L ROJO', '2024-02-07 17:51:36', '2024-02-07 17:51:36'),
(113, 91, '19L BLANCO', '2024-02-07 17:51:36', '2024-02-07 17:51:36'),
(114, 92, 'BLANCO', '2024-02-07 17:53:45', '2024-02-07 17:53:45'),
(115, 92, 'ROJO', '2024-02-07 17:53:45', '2024-02-07 17:53:45'),
(116, 93, 'BLANCO', '2024-02-07 17:54:55', '2024-02-07 17:54:55'),
(117, 93, 'ROJO', '2024-02-07 17:54:55', '2024-02-07 17:54:55'),
(118, 94, '4L', '2024-02-07 17:58:42', '2024-02-07 17:58:42'),
(119, 95, '19L', '2024-02-07 17:59:23', '2024-02-07 17:59:23'),
(120, 96, '200L', '2024-02-07 18:00:20', '2024-02-07 18:00:20'),
(121, 97, '4L', '2024-02-07 18:01:50', '2024-02-07 18:01:50'),
(122, 98, '19L', '2024-02-07 18:02:42', '2024-02-07 18:02:42'),
(123, 99, '200L', '2024-02-07 18:03:24', '2024-02-07 18:03:24'),
(124, 100, '19L', '2024-02-07 18:06:41', '2024-02-07 18:06:41'),
(125, 101, '200L', '2024-02-07 18:07:33', '2024-02-07 18:07:33'),
(126, 102, '200L', '2024-02-07 18:09:13', '2024-02-07 18:09:13'),
(127, 103, '19L', '2024-02-07 18:10:13', '2024-02-07 18:10:13'),
(128, 104, '4L', '2024-02-07 18:11:04', '2024-02-07 18:11:04'),
(129, 105, '984.88', '2024-02-07 18:12:45', '2024-02-07 18:12:45'),
(130, 106, '19L', '2024-02-07 18:14:29', '2024-02-07 18:14:29'),
(131, 107, '4L', '2024-02-07 18:20:26', '2024-02-07 18:20:26'),
(132, 108, '19L', '2024-02-07 18:21:27', '2024-02-07 18:21:27'),
(133, 109, '200L', '2024-02-07 18:22:17', '2024-02-07 18:22:17'),
(134, 110, '1L', '2024-02-07 18:23:43', '2024-02-07 18:23:43'),
(135, 111, '4L', '2024-02-07 18:25:25', '2024-02-07 18:25:25'),
(136, 112, '19L', '2024-02-07 18:27:04', '2024-02-07 18:27:04'),
(137, 113, '200L', '2024-02-07 18:28:15', '2024-02-07 18:28:15'),
(138, 114, '1.1 X 10M', '2024-02-08 02:39:45', '2024-02-08 02:39:45'),
(139, 115, '1.1 x 100 m rollo', '2024-02-08 03:57:35', '2024-02-08 03:57:35'),
(140, 116, 'BOTE 1L', '2024-02-08 04:00:24', '2024-02-08 04:00:24'),
(141, 117, 'BOTE 4L', '2024-02-08 04:01:18', '2024-02-08 04:01:18'),
(142, 118, 'CUBETA 19L', '2024-02-08 04:02:17', '2024-02-08 04:02:17'),
(143, 119, '200L', '2024-02-08 04:04:28', '2024-02-08 04:04:28'),
(144, 120, 'CUBETA 19L', '2024-02-08 08:25:14', '2024-02-08 08:25:14'),
(145, 121, 'CUBETA 19L', '2024-02-08 08:26:07', '2024-02-08 08:26:07'),
(146, 122, 'CUBETA 19L', '2024-02-08 08:27:06', '2024-02-08 08:27:06'),
(147, 123, 'BOTE 4L', '2024-02-08 08:28:51', '2024-02-08 08:28:51'),
(148, 124, 'CUBETA 19L', '2024-02-08 08:30:14', '2024-02-08 08:30:14'),
(149, 125, 'CUBETA 19L', '2024-02-08 08:30:19', '2024-02-08 08:30:19'),
(150, 126, 'ROLLO 44M', '2024-02-08 08:32:13', '2024-02-08 08:32:13'),
(152, 128, 'ROLLO 1 X 10M GRAVILLA BLANCA', '2024-02-08 09:56:35', '2024-02-08 09:56:35'),
(153, 128, 'ROLLO 1 X 10M GRAVILLA ROJA', '2024-02-08 09:56:35', '2024-02-08 09:56:35'),
(154, 129, 'ROLLO 1 X 10M GRAVILLA BLANCA', '2024-02-08 09:58:28', '2024-02-08 09:58:28'),
(155, 129, 'ROLLO 1 X 10M GRAVILLA ROJA', '2024-02-08 09:58:28', '2024-02-08 09:58:28'),
(156, 130, 'ROLLO 1 X 10M GRAVILLA ROJA', '2024-02-08 10:02:18', '2024-02-08 10:02:18'),
(157, 130, 'ROLLO 1 X 10M GRAVILLA BLANCA', '2024-02-08 10:02:18', '2024-02-08 10:02:18'),
(158, 131, 'ROLLO 1 X 10M GRAVILLA BLANCA', '2024-02-08 10:04:05', '2024-02-08 10:04:05'),
(159, 131, 'ROLLO 1 X 10M GRAVILLA ROJA', '2024-02-08 10:04:05', '2024-02-08 10:04:05'),
(160, 132, 'ROLLO 1 X 10M GRAVILLA ROJA', '2024-02-08 10:10:03', '2024-02-08 10:10:03'),
(161, 133, 'ROLLO 1 X 10M GRAVILLA BLANCA', '2024-02-08 10:51:14', '2024-02-08 10:51:14'),
(162, 133, 'ROLLO 1 X 10M GRAVILLA ROJA', '2024-02-08 10:51:14', '2024-02-08 10:51:14'),
(163, 133, 'ROLLO 1 X 10M GRAVILLA VERDE', '2024-02-08 10:51:14', '2024-02-08 10:51:14'),
(164, 134, 'ROLLO 1 X 10M APP PS 4.0 LISO', '2024-02-08 10:53:10', '2024-02-08 10:53:10'),
(165, 135, 'ROLLO 1 X 10M GARDEN', '2024-02-08 10:55:55', '2024-02-08 10:55:55'),
(166, 136, 'SACO 25KG GRIS', '2024-02-08 10:58:58', '2024-02-08 10:58:58'),
(167, 137, '35KG GRIS', '2024-02-08 11:01:44', '2024-02-08 11:01:44'),
(168, 138, 'CR 66 FF GRIS 7KG', '2024-02-08 11:10:37', '2024-02-08 11:10:37'),
(169, 139, 'BLANCO 35KG', '2024-02-08 11:22:49', '2024-02-08 11:22:49'),
(170, 140, 'SACO 10KG', '2024-02-08 11:24:15', '2024-02-08 11:24:15'),
(171, 141, 'SACO 30KG', '2024-02-08 11:25:09', '2024-02-08 11:25:09'),
(172, 142, 'BOLSA 2KG', '2024-02-08 11:26:10', '2024-02-08 11:26:10'),
(173, 143, 'BOLSA 5KG', '2024-02-08 11:38:09', '2024-02-08 11:38:09'),
(174, 144, 'SACO 20KG', '2024-02-08 11:39:11', '2024-02-08 11:39:11'),
(175, 145, 'CUBETA 20KG', '2024-02-08 11:40:26', '2024-02-08 11:40:26'),
(176, 146, 'CUBETA 24KG GRIS', '2024-02-08 11:42:26', '2024-02-08 11:42:26'),
(177, 146, 'CUBETA 24KG BLANCO', '2024-02-08 11:42:26', '2024-02-08 11:42:26'),
(178, 147, 'FESTER CX-01 1L', '2024-02-08 11:44:03', '2024-02-08 11:44:03'),
(179, 148, 'FESTER CX-01 5KG', '2024-02-08 11:44:46', '2024-02-08 11:44:46'),
(180, 149, 'FESTER CX-01 25KG', '2024-02-08 11:45:58', '2024-02-08 11:45:58'),
(181, 150, '600ML NEGRO', '2024-02-08 11:50:46', '2024-02-08 11:50:46'),
(182, 150, '600ML GRIS', '2024-02-08 11:50:46', '2024-02-08 11:50:46'),
(183, 151, '300ML GRIS', '2024-02-08 11:52:08', '2024-02-08 11:52:08'),
(184, 151, '300ML BLANCO', '2024-02-08 11:52:08', '2024-02-08 11:52:08'),
(185, 152, '26.5L GRIS', '2024-02-08 11:53:41', '2024-02-08 11:53:41'),
(186, 153, 'CUBETA 19L', '2024-02-08 11:54:50', '2024-02-08 11:54:50'),
(187, 154, 'GRIS 825ML', '2024-02-08 11:55:55', '2024-02-08 11:55:55'),
(188, 155, '10 AÑOS GREEN SHIELD CUBETA 19L', '2024-02-08 12:06:00', '2024-02-08 12:06:00'),
(189, 156, 'CUBETA 4L', '2024-02-08 12:10:33', '2024-02-08 12:10:33'),
(190, 157, 'CUBETA 19L', '2024-02-08 12:11:11', '2024-02-08 12:11:11'),
(191, 158, 'BOTE 4L BLANCO', '2024-02-08 12:13:54', '2024-02-08 12:13:54'),
(192, 158, 'BOTE 4L ROJO', '2024-02-08 12:13:54', '2024-02-08 12:13:54'),
(193, 159, 'BLANCO CUBETA 19L', '2024-02-08 12:15:29', '2024-02-08 12:15:29'),
(194, 159, 'ROJO CUBETA 19L', '2024-02-08 12:15:29', '2024-02-08 12:15:29'),
(195, 160, '5 AÑOS BLANCO 4L', '2024-02-08 12:17:13', '2024-02-08 12:17:13'),
(196, 160, '5 AÑOS ROJO 4L', '2024-02-08 12:17:13', '2024-02-08 12:17:13'),
(197, 161, '5 AÑOS BLANCO 19L', '2024-02-08 12:22:13', '2024-02-08 12:22:13'),
(198, 161, '5 AÑOS ROJO 19L', '2024-02-08 12:22:13', '2024-02-08 12:22:13'),
(199, 162, 'BOTE 1L', '2024-02-08 12:25:11', '2024-02-08 12:25:11'),
(200, 163, 'ROLLO 1 M', '2024-02-08 12:27:47', '2024-02-08 12:27:47'),
(201, 164, 'ROLLO 10M', '2024-02-08 12:30:27', '2024-02-08 12:30:27'),
(202, 165, 'SACO 5KG', '2024-02-08 12:32:21', '2024-02-08 12:32:21'),
(203, 166, 'BOTE 3.8L', '2024-02-08 12:34:58', '2024-02-08 12:34:58'),
(204, 167, 'ROLLO 2.44 X 20M', '2024-02-08 12:38:01', '2024-02-08 12:38:01'),
(205, 168, 'ROLLO 6 X 33M', '2024-02-08 12:39:26', '2024-02-08 12:39:26'),
(206, 169, 'ROLLO 2.44 X 20M', '2024-02-08 12:41:01', '2024-02-08 12:41:01'),
(207, 170, 'BOTE 1L', '2024-02-08 12:44:24', '2024-02-08 12:44:24'),
(208, 171, 'BOTE 4L', '2024-02-08 12:45:37', '2024-02-08 12:45:37'),
(209, 172, 'CUBETA 19L', '2024-02-08 12:49:05', '2024-02-08 12:49:05'),
(210, 173, 'BOTE 4L', '2024-02-08 12:51:24', '2024-02-08 12:51:24'),
(211, 174, 'BARRIL 19L', '2024-02-08 12:52:27', '2024-02-08 12:52:27'),
(212, 175, '200L', '2024-02-08 12:53:59', '2024-02-08 12:53:59'),
(213, 176, 'BOTE 3.8L', '2024-02-08 12:55:28', '2024-02-08 12:55:28'),
(214, 177, 'BARRIL 19L', '2024-02-08 13:06:25', '2024-02-08 13:06:25'),
(215, 178, '200L', '2024-02-08 13:07:01', '2024-02-08 13:07:01'),
(216, 179, '500 AZUL 4L', '2024-02-08 13:09:34', '2024-02-08 13:09:34'),
(217, 180, '500 BLANCO 4L', '2024-02-08 13:11:02', '2024-02-08 13:11:02'),
(218, 181, '510 TERRACOTA 4L', '2024-02-08 13:12:53', '2024-02-08 13:12:53'),
(219, 182, '4L', '2024-02-08 13:22:16', '2024-02-08 13:22:16'),
(220, 183, '2X5 6L CAJA 2 UNIDADES 5.6L', '2024-02-08 13:29:47', '2024-02-08 13:29:47'),
(221, 184, 'UNIDAD 15L (A+B)', '2024-02-08 13:31:29', '2024-02-08 13:31:29'),
(222, 185, 'CAJA 4 UNIDADES 4L', '2024-02-08 13:34:55', '2024-02-08 13:34:55'),
(223, 186, 'SACO 25KG', '2024-02-08 13:36:30', '2024-02-08 13:36:30'),
(224, 187, 'SACO 25KG', '2024-02-08 13:38:16', '2024-02-08 13:38:16'),
(225, 188, 'A 650 GRIS 11L (A+B)', '2024-02-08 13:39:41', '2024-02-08 13:39:41'),
(226, 189, 'UNIDAD 11L (A+B)', '2024-02-08 13:41:12', '2024-02-08 13:41:12'),
(227, 190, 'BOTE 1L', '2024-02-08 13:42:34', '2024-02-08 13:42:34'),
(228, 191, 'BOTE 4L', '2024-02-08 13:43:45', '2024-02-08 13:43:45'),
(229, 192, 'CUBETA 19L', '2024-02-08 13:44:18', '2024-02-08 13:44:18'),
(230, 193, '200L', '2024-02-08 13:44:54', '2024-02-08 13:44:54'),
(231, 194, 'GARRAFA 1', '2024-02-08 13:46:12', '2024-02-08 13:46:12'),
(232, 195, 'GARRAFA 3.8L', '2024-02-08 13:46:46', '2024-02-08 13:46:46'),
(233, 196, 'CUBETA 19L', '2024-02-08 13:47:28', '2024-02-08 13:47:28'),
(234, 197, 'UNIDAD 1L', '2024-02-08 13:48:43', '2024-02-08 13:48:43'),
(235, 198, 'UNIDAD 1L', '2024-02-08 13:49:55', '2024-02-08 13:49:55'),
(236, 199, 'UNIDAD 2L', '2024-02-08 13:51:03', '2024-02-08 13:51:03'),
(237, 200, 'UNIDAD 1L', '2024-02-08 13:52:22', '2024-02-08 13:52:22'),
(238, 201, 'UNIDAD 1L', '2024-02-08 13:53:42', '2024-02-08 13:53:42'),
(239, 202, 'UNIDAD 65KG', '2024-02-08 13:57:38', '2024-02-08 13:57:38'),
(240, 203, 'UNIDAD 112KG', '2024-02-08 13:59:51', '2024-02-08 13:59:51'),
(241, 204, 'SACO 10 KG', '2024-02-08 14:01:51', '2024-02-08 14:01:51'),
(242, 205, 'SACO 30KG', '2024-02-08 14:02:33', '2024-02-08 14:02:33'),
(243, 206, 'SACO 30KG', '2024-02-08 14:06:32', '2024-02-08 14:06:32'),
(244, 207, 'SACO 30KG', '2024-02-08 14:07:48', '2024-02-08 14:07:48'),
(245, 208, 'SACO 10KG', '2024-02-08 14:10:20', '2024-02-08 14:10:20'),
(246, 209, 'SACO 30KG', '2024-02-08 14:11:50', '2024-02-08 14:11:50'),
(247, 210, 'SACO 10KG', '2024-02-08 14:15:57', '2024-02-08 14:15:57'),
(248, 211, 'SACO 25KG', '2024-02-08 14:16:58', '2024-02-08 14:16:58'),
(249, 212, 'SACO 5KG', '2024-02-08 14:17:37', '2024-02-08 14:17:37'),
(250, 213, 'SACO 25KG', '2024-02-08 14:18:49', '2024-02-08 14:18:49'),
(251, 214, 'CUBETA 5KG', '2024-02-08 14:23:14', '2024-02-08 14:23:14'),
(252, 215, 'CAJA CON 6 BOTES 1L', '2024-02-08 14:24:26', '2024-02-08 14:24:26'),
(253, 216, 'SACO 25KG', '2024-02-08 14:25:35', '2024-02-08 14:25:35'),
(254, 217, 'SACO 5KG', '2024-02-08 14:26:25', '2024-02-08 14:26:25'),
(255, 218, 'SACO 25KG', '2024-02-08 14:27:43', '2024-02-08 14:27:43'),
(256, 219, 'SACO 25KG', '2024-02-08 14:28:24', '2024-02-08 14:28:24'),
(257, 220, 'BOTE 4L', '2024-02-08 14:29:28', '2024-02-08 14:29:28'),
(258, 221, 'CUBETA 19L', '2024-02-08 14:30:12', '2024-02-08 14:30:12'),
(259, 222, '200L', '2024-02-08 14:30:56', '2024-02-08 14:30:56'),
(260, 223, 'BOLSA 600GR', '2024-02-08 14:32:42', '2024-02-08 14:32:42'),
(261, 224, 'BOLSA 100', '2024-02-08 14:33:37', '2024-02-08 14:33:37'),
(262, 225, 'CUBETA 19L', '2024-02-08 14:34:55', '2024-02-08 14:34:55'),
(263, 226, '200L', '2024-02-08 14:35:36', '2024-02-08 14:35:36'),
(264, 227, 'CUBETA 19L', '2024-02-08 14:37:00', '2024-02-08 14:37:00'),
(265, 228, '200L', '2024-02-08 14:37:53', '2024-02-08 14:37:53'),
(266, 229, 'CUBETA 19L', '2024-02-08 14:39:27', '2024-02-08 14:39:27'),
(267, 230, '200L', '2024-02-08 14:40:13', '2024-02-08 14:40:13'),
(268, 231, '19L', '2024-02-08 14:41:08', '2024-02-08 14:41:08'),
(269, 232, '200L', '2024-02-08 14:42:20', '2024-02-08 14:42:20'),
(270, 233, 'ROLLO 25M', '2024-02-08 14:43:32', '2024-02-08 14:43:32'),
(271, 234, 'ROLLO 25M', '2024-02-08 14:46:17', '2024-02-08 14:46:17'),
(272, 235, 'ROLLO 25M', '2024-02-08 14:46:52', '2024-02-08 14:46:52'),
(273, 236, 'SACO 30KG', '2024-02-09 02:37:20', '2024-02-09 02:37:20'),
(274, 237, 'UNIDAD 3.78L', '2024-02-09 02:42:41', '2024-02-09 02:42:41'),
(275, 238, 'HOJA 1.22 X 1.22', '2024-02-09 02:44:27', '2024-02-09 02:44:27'),
(276, 239, 'CUÑETE 30KG', '2024-02-09 02:54:29', '2024-02-09 02:54:29'),
(277, 240, 'UNIDAD 12KG', '2024-02-09 02:55:21', '2024-02-09 02:55:21'),
(278, 241, 'BOTE 4L', '2024-02-09 02:57:48', '2024-02-09 02:57:48'),
(279, 242, 'CUBETA 19L', '2024-02-09 03:03:07', '2024-02-09 03:03:07'),
(280, 243, '200 L', '2024-02-09 03:04:58', '2024-02-09 03:04:58'),
(281, 244, 'UNIDAD 4L', '2024-02-09 03:09:11', '2024-02-09 03:09:11'),
(282, 245, 'UNIDAD 4L', '2024-02-09 03:12:30', '2024-02-09 03:12:30'),
(283, 246, 'UNIDAD 4L', '2024-02-09 03:15:11', '2024-02-09 03:15:11'),
(284, 247, 'CUBETA 19L', '2024-02-09 05:38:11', '2024-02-09 05:38:11'),
(285, 248, 'CARTUCHO 300ML', '2024-02-09 05:39:43', '2024-02-09 05:39:43'),
(286, 249, 'CAJA 12PZAS CARTUCHOS 585M', '2024-02-09 05:41:42', '2024-02-09 05:41:42'),
(287, 250, 'CAJA CON 10 PÁQUETES 5PZAS', '2024-02-09 05:43:40', '2024-02-09 05:43:40'),
(288, 251, 'CAJA C/10 PAQUETES 5 PZAS', '2024-02-09 05:47:50', '2024-02-09 05:47:50'),
(289, 252, 'LATA 750ML', '2024-02-09 05:50:29', '2024-02-09 05:50:29'),
(290, 253, 'GRIS 280ML', '2024-02-09 05:55:26', '2024-02-09 05:55:26'),
(291, 253, 'BLANCO 280ML', '2024-02-09 05:55:26', '2024-02-09 05:55:26'),
(292, 254, 'GRIS 600ML', '2024-02-09 06:00:48', '2024-02-09 06:00:48'),
(293, 255, 'FT 201 GRIS 280ML', '2024-02-09 06:04:09', '2024-02-09 06:04:09'),
(294, 255, 'FT 201 BLANCO 280ML', '2024-02-09 06:04:09', '2024-02-09 06:04:09'),
(295, 256, 'ROLLO 1/2 PULG 381M', '2024-02-09 06:09:06', '2024-02-09 06:09:06'),
(296, 257, 'ROLLO 3/8 PULG DE 320ML', '2024-02-09 06:11:28', '2024-02-09 06:11:28'),
(297, 258, 'ROLLO 1/4 PULG DE 610M', '2024-02-09 06:29:54', '2024-02-09 06:29:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_proyectos`
--

CREATE TABLE `p_f_proyectos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `aux` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_proyectos`
--

INSERT INTO `p_f_proyectos` (`id`, `titulo`, `imagen`, `aux`, `created_at`, `updated_at`) VALUES
(11, 'PEMEX', 'fsmGiyW43AchZ9oKp6mdT93gmZjiUO.png', NULL, '2023-10-28 05:01:15', '2024-02-09 08:22:40'),
(12, 'TORRE DE ENFRIAMIENTO ALTOS HORNOS DE MEXICO', 'deOOKro806T6aNzjbp9eAqVM5ozkfo.png', NULL, '2023-10-28 05:05:47', '2024-02-09 08:23:23'),
(14, 'RECLUSORIO METROPOLITANO', 'zpgQQzPg3fjoF2GtwQKuUmnywxjI1J.png', NULL, '2023-10-28 05:06:14', '2024-02-09 08:24:24'),
(15, 'PLANTA MAZDA SALAMCA', '7UnAZXkkvgVgMeYnLMVdM8oMZPdZEK.png', NULL, '2023-10-28 05:06:27', '2024-02-09 08:24:52'),
(16, 'TERNIUM PESQUERÍA', 'eGwUXJ4zIQ4royOK1xZPOI3sbC86ig.png', NULL, '2023-10-28 05:06:39', '2024-02-09 08:25:22'),
(19, 'PLAZA MORELIA', 'SDCO8gah9TWTlE6W01V0WwoQpyHYE5.png', NULL, '2023-11-18 04:28:25', '2024-02-09 08:26:00'),
(20, 'CONDOMINIOS AV FERROCARRIL DE CUERNAVACA, CDMX', 'oUylyHhqanxdGLlXO9ZWc9Ed0IZilu.png', NULL, '2024-02-09 08:26:46', '2024-02-09 08:26:46'),
(21, 'CASA VEERKAMP ESTACIONAMIENTO', 'VabwBRmRywTVYBc5MaMyEQw4Bsanft.png', NULL, '2024-02-09 08:27:27', '2024-02-09 08:27:27'),
(22, 'MAQUILADORA DE AUTOPARTES', 'u70rX4xjqX2ZjLqpm7ctZmf4PfsuNJ.png', NULL, '2024-02-09 08:27:59', '2024-02-09 08:27:59'),
(23, 'CONDOMINIO PRIVANZA CHICAGO', '74rDXntcHZYbtziwfPIUUAAV8To1Tk.png', NULL, '2024-02-09 08:28:36', '2024-02-09 08:28:36'),
(24, 'PLANTA DE PISOS Y RECUBRIMIENTOS DALTILE', 'IREwyACjYZU5B2PtSAHbUwePhU1Dxy.png', NULL, '2024-02-09 08:31:43', '2024-02-09 08:31:43'),
(25, '\"LOS BERROS\" PLANTA CUTZAMALA CONAGUA', 'EfLokV4xDPNjLDnL1Kz2I8yLeqje8I.png', NULL, '2024-02-09 08:32:16', '2024-02-09 08:32:16'),
(26, 'MORONES PRIETO COMPLEJO VIAL', 'OijgS2k65M75Dd9MuTZxW8uSAfVjNK.png', NULL, '2024-02-09 08:33:08', '2024-02-09 08:33:08'),
(27, 'ESTELA DE LUZ', 'eWPKET61G4QI61gVcx9Grhp1ekGHo8.png', NULL, '2024-02-09 08:33:37', '2024-02-09 08:33:37'),
(28, 'HOTEL FAIRMONT MAYAKOBA', '2jbzprWsoFT712GVXNJy1LaSAywMoj.png', NULL, '2024-02-09 08:34:24', '2024-02-09 08:34:24'),
(29, 'EXPLANADA PAPAL SILAO GTO', 'qMYoq4NARCU7aDH2VNe1zOjam1Wu95.png', NULL, '2024-02-09 08:36:08', '2024-02-09 08:36:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_punto_ventas`
--

CREATE TABLE `p_f_punto_ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `codigo_postal` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `mapa` text DEFAULT NULL,
  `street_view` text DEFAULT NULL,
  `aux` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_punto_ventas`
--

INSERT INTO `p_f_punto_ventas` (`id`, `direccion`, `codigo_postal`, `ciudad`, `estado`, `mapa`, `street_view`, `aux`, `created_at`, `updated_at`) VALUES
(1, 'Camino a las moras #1582', '45645', 'Tlajomulco de Zuñiga', 'Jalisco', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3735.6035976145795!2d-103.48434317897805!3d20.563393827326625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8428ab3315f63fab%3A0x18d947e6919655bf!2sCam.%20a%20las%20Moras%201582%2C%2045645%20Santa%20Anita%2C%20Jal.!5e0!3m2!1sen!2smx!4v1707451791741!5m2!1sen!2smx\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, NULL, '2023-10-31 05:29:42', '2024-02-09 10:10:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_slider_principals`
--

CREATE TABLE `p_f_slider_principals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `texto` text DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_slider_principals`
--

INSERT INTO `p_f_slider_principals` (`id`, `titulo`, `texto`, `foto`, `created_at`, `updated_at`) VALUES
(14, 'Nuestros clientes', NULL, 'hXIVS1MzAS4eqGWbNTZZC8gMrEclo9.png', '2023-12-13 00:08:06', '2024-01-26 22:46:16'),
(15, 'Con quien estamos trabajando', NULL, '6FgQDNOnEW5JqHT0QWcPqhleHSIT1W.png', '2024-01-26 22:50:42', '2024-01-26 22:51:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_solucions`
--

CREATE TABLE `p_f_solucions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icono` text DEFAULT NULL,
  `imagen` text DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_solucions`
--

INSERT INTO `p_f_solucions` (`id`, `icono`, `imagen`, `titulo`, `descripcion`, `created_at`, `updated_at`) VALUES
(8, 'mjmNFVFRCtIzg7NZJdtS0BzVIY7XL7.png', 'psHQYcvajBzRM1kyEi1esXJgf0nmBS.png', 'IMPER Y PINTURA', 'INDUSTRIAL - RESIDENCIAL', '2023-10-31 03:38:10', '2024-02-09 07:06:33'),
(9, 'UcRoPzMKZaiWIxhCoCzMQdoy1w7x2E.png', 'ddgbZs15CYgCdc69miWJ3amI0MgCax.png', 'REMODELACIÓN', NULL, '2023-10-31 03:45:03', '2024-02-09 08:20:44'),
(10, 'fLixbGOSL44J4nYQkSAzoJWGHZTCZf.png', 'QF9TB7mKsdzEksw98K9UNikeFuH6bL.png', 'MANTENIMIENTO INDUSTRIAL', NULL, '2023-11-07 06:10:32', '2024-02-09 08:17:55'),
(12, 'I4YZ6pj8dJzpibZLoXFrvu5iN755Hh.png', 'rYyaUQrdeCkEaNUbVsx7wacIIAvVsc.png', 'CONSTRUCCIÓN', NULL, '2023-11-17 05:24:12', '2024-02-09 08:21:21'),
(14, 'fWGpitrF1f83uYCpVtfDSqwIBZ5uaS.png', 'VLSvC7AJmjbd9amu2tanSg6DLB46GS.png', 'MANTENIMIENTO GENERAL', NULL, '2023-11-18 04:27:27', '2024-02-09 08:20:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_subcategoria_pepes`
--

CREATE TABLE `p_f_subcategoria_pepes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` bigint(20) UNSIGNED NOT NULL,
  `subcategoria` varchar(255) DEFAULT NULL,
  `icono` text DEFAULT NULL,
  `aux` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_subcategoria_pepes`
--

INSERT INTO `p_f_subcategoria_pepes` (`id`, `categoria`, `subcategoria`, `icono`, `aux`, `created_at`, `updated_at`) VALUES
(10, 10, 'ACRITÓN', 'XDu9CvyYYQRNnX2lgxulSklnRotiQg.png', NULL, '2024-02-09 03:41:56', '2024-02-09 03:43:27'),
(11, 10, 'FESTER A', 'ZhLzTxhzQXMI8cxh4WvKn4X6lIvgww.png', NULL, '2024-02-09 03:42:16', '2024-02-09 03:42:16'),
(12, 10, 'ACRITÓN FACHADAS', 'hy1ua1W11FFom2YJqHpkmHI9nKcxd7.png', NULL, '2024-02-09 03:43:11', '2024-02-09 03:43:11'),
(13, 10, 'MEMBRANAS IMPERMEABLES', '9ldVAheipKc6hR8m8TticiIu2gLAs3.png', NULL, '2024-02-09 03:43:53', '2024-02-09 03:43:53'),
(14, 10, 'ACRITÓN COMPLEMENTOS', 'CXELjVTXENtA33ARARrMCbKj50koNU.png', NULL, '2024-02-09 03:44:20', '2024-02-09 03:44:20'),
(15, 11, 'IMPERFÁCIL CLASICO', 'KRNPAitq8cSX62tzVBtadQzVUpTRHd.png', NULL, '2024-02-09 03:50:36', '2024-02-09 03:50:36'),
(16, 11, 'IMPERFÁCIL PASTA NO MÁS GOTERAS', 'chf4ZrCp9bkzngbccIasMcy1a7Ealk.png', NULL, '2024-02-09 03:51:31', '2024-02-09 03:51:31'),
(17, 11, 'IMPERFÁCIL CINTA NO MÁS GOTERAS', 'mn87ozFOT7lTyMClWGJQVcd68ibKNg.png', NULL, '2024-02-09 03:51:54', '2024-02-09 03:51:54'),
(18, 11, 'IMPERFÁCIL PASTA NO MÁS SALITRE', '1ZQRv7YMBUfeIMPqpupmg43c5TRInD.png', NULL, '2024-02-09 03:52:14', '2024-02-09 03:52:14'),
(19, 11, 'IMPERFÁCIL REPELENTE DE AGUA', 'NLLCTU2tJIImR0nCOhWDr3NpmyvjPN.png', NULL, '2024-02-09 03:52:39', '2024-02-09 03:52:39'),
(20, 12, 'ASFALTICOS BASE AGUA', 'JohW91xFNfOJctvHcWusq1yoOiKATn.png', NULL, '2024-02-09 03:53:23', '2024-02-09 03:53:23'),
(21, 12, 'ASFALTICOS BASE SOLVENTE', 'qxsRhRpqC7pKOVUIOUWDAJbx77G71r.png', NULL, '2024-02-09 03:53:44', '2024-02-09 03:53:44'),
(22, 12, 'ASFALTICOS MALLAS', '6X30gR88ka1dSB7FD8y3T7GzI4C8S7.png', NULL, '2024-02-09 03:54:10', '2024-02-09 03:54:10'),
(23, 12, 'ASFALTICOS ACABADOS', 'mM76ghJ4U5h3eRPimDpMrDJjcF6oH7.png', NULL, '2024-02-09 03:54:37', '2024-02-09 03:54:37'),
(24, 13, 'FESTERMIP', '8ROfnUB7b2Oi42dRZR5AF7BzeMORmV.png', NULL, '2024-02-09 03:55:08', '2024-02-09 03:55:08'),
(25, 14, 'INTEGRALES', '9N268k1Frfh16UUWWfLVEXJWv5OxVv.png', NULL, '2024-02-09 03:59:41', '2024-02-09 03:59:41'),
(26, 14, 'LECHADAS', '5fTfqbNCnrSbgaDfhyZfjhFWayY5fO.png', NULL, '2024-02-09 03:59:57', '2024-02-09 03:59:57'),
(27, 14, 'TAPONEADORES', 'QZXHhpQm3KOX2Utl9kc2esJnyDd88E.png', NULL, '2024-02-09 04:00:13', '2024-02-09 04:00:13'),
(28, 15, 'FEXTEX SILICON', 'trKrCxF9UVVXF3V4lDIKwDD7r3RtUJ.png', NULL, '2024-02-09 04:01:04', '2024-02-09 04:01:04'),
(29, 15, 'FEXTEX SILICON RP-501', 'tHRhN6ic490A67K1xNwvkm8h0RIoSg.png', NULL, '2024-02-09 04:01:34', '2024-02-09 04:01:34'),
(30, 15, 'EPOXINES', 'gGL27e0DERrMvreMxieZZ87qoXdpsD.png', NULL, '2024-02-09 04:02:22', '2024-02-09 04:02:22'),
(31, 15, 'FESTERSIP', 'V0vUq6u9DtFUZ7uMRZKBRN6fG6Hq5y.png', NULL, '2024-02-09 04:02:53', '2024-02-09 04:02:53'),
(32, 16, 'ADHESIVOS PARA CONCRETO', 'YoSPI3UnCWIlQYR0o134N36ByPgCIL.png', NULL, '2024-02-09 04:03:23', '2024-02-09 04:03:23'),
(33, 16, 'GROUTS', 'Ioz9g4ZdgMGOz2Xg6QyHaQrUJGboaq.png', NULL, '2024-02-09 04:03:44', '2024-02-09 04:03:44'),
(34, 16, 'REPARACIÓN DE CONCRETO', 'lZRnr7a29NVjzFrdR5Wsi9oUkmKWQA.png', NULL, '2024-02-09 04:04:20', '2024-02-09 04:04:20'),
(35, 16, 'ADITIVOS', 'osHWjxRDA7JRgOmRM0s96bD5995G2o.png', NULL, '2024-02-09 04:04:47', '2024-02-09 04:04:47'),
(36, 16, 'MEMBRANAS DE CURADO', 'EU0BXi65jtV2W1lNdPCkkHA3ENLMQ6.png', NULL, '2024-02-09 04:05:10', '2024-02-09 04:05:10'),
(37, 16, 'DESMOLDANTES', 'C4QLraAhgHK9Ieb9UIYEQQJYMrjrJA.png', NULL, '2024-02-09 04:05:31', '2024-02-09 04:05:31'),
(38, 16, 'BANDAS', 'ootWDIzxgIlwBDusqm0nh2K5uaIMLv.png', NULL, '2024-02-09 04:05:45', '2024-02-09 04:05:45'),
(39, 16, 'ENDURECEDORES', 'TywvVRm7jqJfA5PFh1wdBaCSfxqWrS.png', NULL, '2024-02-09 04:06:00', '2024-02-09 04:06:00'),
(40, 16, 'JUNTAS', 'EJUdtNFGgO07S5JN4IHy6ScPYmUSam.png', NULL, '2024-02-09 04:06:19', '2024-02-09 04:06:19'),
(41, 17, 'SELLADORES', 'aYBeHqUIs32s8AJHKdxpkNghiQWG5u.png', NULL, '2024-02-09 04:06:59', '2024-02-09 04:06:59'),
(42, 17, 'FESTERMICIDE', '9JyAPPKOUclNdTwOGIi3VqIJTumnwl.png', NULL, '2024-02-09 04:07:22', '2024-02-09 04:07:22'),
(43, 17, 'ACABADOS', 'FHlFW1cdBsrV66s2TZ47AoOd3ZKbw4.png', NULL, '2024-02-09 04:07:45', '2024-02-09 04:07:45'),
(44, 18, 'FESTER', 'H6utrfawgE2fb4IKGHY6u83gDesJxO.png', NULL, '2024-02-09 04:08:11', '2024-02-09 04:08:11'),
(45, 18, 'ACCESORIOS', 'LEqeqMs0ExLPRsribAn8cNGPquNjjw.png', NULL, '2024-02-09 04:08:26', '2024-02-09 04:08:26'),
(46, 19, 'FESTER - POLIURETANOS', 'gMoByXbRf6C1JfIgEsubgrYW5WX4P0.png', NULL, '2024-02-09 04:09:12', '2024-02-09 04:09:12'),
(48, 19, 'ESPUMAS EXPANSIVAS', 'nyg4yVJSL2BtkoMRX4mNhEiBYNJE7M.png', NULL, '2024-02-09 04:10:23', '2024-02-09 04:10:23'),
(49, 19, 'FESTER FLEXTEC', 'DcOyUKSRpgY4sJ6Xt1vj9uWnoGstej.png', NULL, '2024-02-09 04:10:49', '2024-02-09 04:10:49'),
(50, 19, 'SISTA BACKER ROD', 'dJNqmfpsRTrDeYy9cPw9KDVEBjjgUV.png', NULL, '2024-02-09 04:11:12', '2024-02-09 04:11:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_f_subdistribuidors`
--

CREATE TABLE `p_f_subdistribuidors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `beneficio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `p_f_subdistribuidors`
--

INSERT INTO `p_f_subdistribuidors` (`id`, `beneficio`, `created_at`, `updated_at`) VALUES
(1, 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.34343443fs22', '2023-10-31 06:27:31', '2023-11-18 08:28:31'),
(2, 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.fs22', '2023-10-31 06:28:19', '2023-11-18 08:28:32'),
(3, 'Lorem, Lorem ipsum dolor sit amet. ipsum dolor sit amet consectetur adipisicing elit. Facere ducimus sed deserunt, porro nam voluptatem.s22', '2023-10-31 06:28:25', '2023-11-18 08:28:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccions`
--

CREATE TABLE `seccions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seccion` varchar(255) NOT NULL,
  `portada` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seccions`
--

INSERT INTO `seccions` (`id`, `seccion`, `portada`, `slug`) VALUES
(1, 'inicio', 'fas fa-home-lg-alt', 'index'),
(2, 'tienda', 'fas fa-hands-helping', 'store'),
(3, 'proyectos', 'fas fa-shield', 'proyects'),
(4, 'contacto', 'fa-solid fa-envelope', 'contact'),
(5, 'soluciones', 'fa-solid fa-check', 'solutios'),
(6, 'puntos', 'fa-solid fa-location-dot', 'pointofsale'),
(7, 'distribuidor', 'fa-solid fa-business-time', 'subdist'),
(8, 'nosotros', 'fa-solid fa-paperclip', 'aboutus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icono` varchar(5000) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `inicio` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `orden` int(11) NOT NULL DEFAULT 666,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `icono`, `titulo`, `descripcion`, `image`, `inicio`, `activo`, `orden`, `created_at`, `updated_at`) VALUES
(14, NULL, 'NOMBRE DEL PROYECTO 1', 'Lorem123', 'T3QoOxzJDwhRSDPfilvlWHLUkjIEik.png', 0, 1, 666, NULL, NULL),
(15, NULL, 'Proyecto 2', 'Descripcion del proyecto 2', '5ZhaBHZn95ORmaTZ0QQBnsRJG5cTGi.jpeg', 0, 1, 666, NULL, NULL),
(16, NULL, 'proyecto 3', 'descripcion proyecto 3', 'riaQm7bhzmsTSY3VlXJhh2BnNGEwmL.png', 0, 1, 666, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `nivel` tinyint(4) NOT NULL DEFAULT 0,
  `puntos` int(11) DEFAULT NULL,
  `distr_code` varchar(255) DEFAULT NULL,
  `referido_by` varchar(255) DEFAULT NULL,
  `distribuidor` tinyint(1) NOT NULL DEFAULT 0,
  `profile` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `role` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `username`, `email`, `email_verified_at`, `telefono`, `facebook`, `empresa`, `avatar`, `rfc`, `nivel`, `puntos`, `distr_code`, `referido_by`, `distribuidor`, `profile`, `activo`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'yahir', 'lopez', '', 'yahir@wozial.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL, 0, NULL, 1, 1, '$2y$10$ixFvI1ajnMzpjT8EhK0KsOzC/I8X5prS5vUZLKCsh2eOf7zllQPim', NULL, '2022-03-01 00:49:39', '2022-03-01 05:10:39', NULL),
(4, 'Alexis i', 'R Garcia', NULL, 'alexis.israel.rg@gmail.com', NULL, '3325141438', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, NULL, '$2y$10$DIla95hgW/B0z6fDgKWEe.hYS1GdunG1P91Ckk13l8PAuGk0eijF2', NULL, '2023-07-27 10:02:59', '2023-08-21 15:26:29', NULL),
(7, 'Jesus', 'Garcia', NULL, 'jesus@wozial.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, NULL, '$2y$10$uMZXbk2X9T/ZK4or9jBRZe74DIwlfSs758I4xCCwZozIrE6caSP7m', NULL, '2023-08-21 19:10:52', '2023-08-21 19:10:52', NULL),
(8, 'Abel', 'Quintero', NULL, 'abel.wozial@hotmail.com', NULL, '3333333333', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, NULL, '$2y$10$GWMjkmrixY2yIgGWrkbhwOcpk79WmlhC7E9y9uNMRtcN9JhwcWMUK', NULL, '2023-08-23 23:35:09', '2023-08-23 23:41:48', NULL),
(9, 'Michael Eduardo', 'Sandoval Pérez', 'mikeed1998', 'mikeed1998@gmail.com', NULL, '3322932239', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, NULL, '$2y$10$61e9mxpY9Hvf.e8erqub0OEFi0vHUUM0wLmazHHo9EDRgW3JkmhFC', NULL, '2023-10-19 23:29:07', '2023-10-19 23:59:20', NULL),
(10, 'Wozial', 'User', NULL, 'user@wozial.com', NULL, '3322332233', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, NULL, '$2y$10$hv.gVInHQbhxga8.2rNo5.McFM5LdIk6WtUP6tLyDsCXFUidNSfgC', NULL, '2023-12-12 20:25:48', '2023-12-12 20:26:46', NULL),
(11, 'Abel', 'Quintero', NULL, 'abel.wozial@gmail.com', NULL, '3322332233', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 1, NULL, '$2y$10$FuLnAZEd6ttw3Zel7F29tOb1Sgu0JPXGDvPo3t3uBYdj//qj50yRy', NULL, '2023-12-13 02:29:52', '2023-12-13 02:42:00', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracions`
--
ALTER TABLE `configuracions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `domicilios`
--
ALTER TABLE `domicilios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `elementos`
--
ALTER TABLE `elementos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_f_categoria_pepes`
--
ALTER TABLE `p_f_categoria_pepes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_f_producto_galeria_pepes`
--
ALTER TABLE `p_f_producto_galeria_pepes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_f_producto_galeria_pepes_producto_foreign` (`producto`);

--
-- Indices de la tabla `p_f_producto_pepes`
--
ALTER TABLE `p_f_producto_pepes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_f_producto_pepes_subcategoria_foreign` (`subcategoria`);

--
-- Indices de la tabla `p_f_producto_presentacion_pepes`
--
ALTER TABLE `p_f_producto_presentacion_pepes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_f_producto_presentacion_pepes_producto_foreign` (`producto`);

--
-- Indices de la tabla `p_f_proyectos`
--
ALTER TABLE `p_f_proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_f_punto_ventas`
--
ALTER TABLE `p_f_punto_ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_f_slider_principals`
--
ALTER TABLE `p_f_slider_principals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_f_solucions`
--
ALTER TABLE `p_f_solucions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p_f_subcategoria_pepes`
--
ALTER TABLE `p_f_subcategoria_pepes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_f_subcategoria_pepes_categoria_foreign` (`categoria`);

--
-- Indices de la tabla `p_f_subdistribuidors`
--
ALTER TABLE `p_f_subdistribuidors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccions`
--
ALTER TABLE `seccions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `p_f_categoria_pepes`
--
ALTER TABLE `p_f_categoria_pepes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `p_f_producto_galeria_pepes`
--
ALTER TABLE `p_f_producto_galeria_pepes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `p_f_producto_pepes`
--
ALTER TABLE `p_f_producto_pepes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT de la tabla `p_f_producto_presentacion_pepes`
--
ALTER TABLE `p_f_producto_presentacion_pepes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de la tabla `p_f_proyectos`
--
ALTER TABLE `p_f_proyectos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `p_f_punto_ventas`
--
ALTER TABLE `p_f_punto_ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `p_f_slider_principals`
--
ALTER TABLE `p_f_slider_principals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `p_f_solucions`
--
ALTER TABLE `p_f_solucions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `p_f_subcategoria_pepes`
--
ALTER TABLE `p_f_subcategoria_pepes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `p_f_subdistribuidors`
--
ALTER TABLE `p_f_subdistribuidors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seccions`
--
ALTER TABLE `seccions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `p_f_producto_galeria_pepes`
--
ALTER TABLE `p_f_producto_galeria_pepes`
  ADD CONSTRAINT `p_f_producto_galeria_pepes_producto_foreign` FOREIGN KEY (`producto`) REFERENCES `p_f_producto_pepes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `p_f_producto_pepes`
--
ALTER TABLE `p_f_producto_pepes`
  ADD CONSTRAINT `p_f_producto_pepes_subcategoria_foreign` FOREIGN KEY (`subcategoria`) REFERENCES `p_f_subcategoria_pepes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `p_f_producto_presentacion_pepes`
--
ALTER TABLE `p_f_producto_presentacion_pepes`
  ADD CONSTRAINT `p_f_producto_presentacion_pepes_producto_foreign` FOREIGN KEY (`producto`) REFERENCES `p_f_producto_pepes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `p_f_subcategoria_pepes`
--
ALTER TABLE `p_f_subcategoria_pepes`
  ADD CONSTRAINT `p_f_subcategoria_pepes_categoria_foreign` FOREIGN KEY (`categoria`) REFERENCES `p_f_categoria_pepes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
