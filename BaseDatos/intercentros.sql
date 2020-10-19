-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2020 a las 19:18:14
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intercentros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes`
--

CREATE TABLE `asistentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentessesiones`
--

CREATE TABLE `asistentessesiones` (
  `id` int(11) NOT NULL,
  `fk_sesion` int(11) NOT NULL,
  `fk_asistente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacioneventos`
--

CREATE TABLE `calificacioneventos` (
  `id` int(11) NOT NULL,
  `fk_eventos` int(11) NOT NULL,
  `fk_asistente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `puntaje` int(11) NOT NULL,
  `observacion` varchar(60) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacionsesiones`
--

CREATE TABLE `calificacionsesiones` (
  `id` int(11) NOT NULL,
  `fk_sesion` int(11) NOT NULL,
  `fk_asistente` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canal`
--

CREATE TABLE `canal` (
  `id` int(11) NOT NULL,
  `fk_eventos` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `canal`
--

INSERT INTO `canal` (`id`, `fk_eventos`, `nombre`) VALUES
(3, 4, 'Main'),
(4, 4, 'Side');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `fk_admin` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `fk_admin`, `nombre`, `descripcion`, `fecha`, `updated_at`, `created_at`) VALUES
(2, 1, 'senasoft', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Expedita pariatur itaque eos repudiandae, non amet, velit neque corrupti omnis nam quas sapiente odio fugiat dolorum eaque tenetur hic exercitationem? Fuga.', '2020-10-21', '2020-10-19', '2020-10-19'),
(3, 1, 'senasoft', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Expedita pariatur itaque eos repudiandae, non amet, velit neque corrupti omnis nam quas sapiente odio fugiat dolorum eaque tenetur hic exercitationem? Fuga.', '2020-10-20', '2020-10-19', '2020-10-19'),
(4, 1, 'Worlskill', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Expedita pariatur itaque eos repudiandae, non amet, velit neque corrupti omnis nam quas sapiente odio fugiat dolorum eaque tenetur hic exercitationem? Fuga.', '2020-10-21', '2020-10-19', '2020-10-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `fk_eventos` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fk_canal` int(11) NOT NULL,
  `capacidad` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id`, `fk_eventos`, `nombre`, `fk_canal`, `capacidad`) VALUES
(11, 4, 'sala A', 3, 20),
(12, 4, 'Sala B', 4, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `id` int(11) NOT NULL,
  `fk_tiposesion` int(11) NOT NULL,
  `fk_eventos` int(11) NOT NULL,
  `titulo` varchar(60) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `orador` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fk_sala` int(11) NOT NULL,
  `costo` int(11) NOT NULL,
  `horaInicio` datetime NOT NULL,
  `horaFin` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposesion`
--

CREATE TABLE `tiposesion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tiposesion`
--

INSERT INTO `tiposesion` (`id`, `nombre`) VALUES
(1, 'Charla'),
(2, 'Taller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovoleto`
--

CREATE TABLE `tipovoleto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tipovoleto`
--

INSERT INTO `tipovoleto` (`id`, `nombre`) VALUES
(1, 'normal'),
(2, 'madrugador'),
(3, 'V.I.P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'demo1@worldskill.com', NULL, '$2y$10$Pb5x.Ex4xu3oaH.INkDxmeMKSqoyJPV35/19J1BPWb52MTeoSqxmO', NULL, '2020-10-19 19:13:51', '2020-10-19 19:13:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voletos`
--

CREATE TABLE `voletos` (
  `id` int(11) NOT NULL,
  `fk_eventos` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `costo` bigint(50) NOT NULL,
  `fk_tipovoleto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fechacierre` date NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `voletos`
--

INSERT INTO `voletos` (`id`, `fk_eventos`, `nombre`, `costo`, `fk_tipovoleto`, `cantidad`, `fechacierre`, `updated_at`, `created_at`) VALUES
(1, 4, 'Voleto1', 23344, 1, 2443, '2020-10-22', '2020-10-19', '2020-10-19'),
(2, 4, 'Voleto2', 454545, 2, 233, '2020-10-21', '2020-10-19', '2020-10-19'),
(3, 4, 'Voleto N°3', 120000, 1, 50, '2020-10-29', '2020-10-19', '2020-10-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistentessesiones`
--
ALTER TABLE `asistentessesiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sesion` (`fk_sesion`),
  ADD KEY `fk_asistente` (`fk_asistente`);

--
-- Indices de la tabla `calificacioneventos`
--
ALTER TABLE `calificacioneventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_evento` (`fk_eventos`),
  ADD KEY `fk_asistente` (`fk_asistente`);

--
-- Indices de la tabla `calificacionsesiones`
--
ALTER TABLE `calificacionsesiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sesion` (`fk_sesion`),
  ADD KEY `fk_asiste` (`fk_asistente`);

--
-- Indices de la tabla `canal`
--
ALTER TABLE `canal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_evento` (`fk_eventos`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_admin` (`fk_admin`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eventos` (`fk_eventos`),
  ADD KEY `fk_canal` (`fk_canal`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tiposesion` (`fk_tiposesion`),
  ADD KEY `fk_sala` (`fk_sala`),
  ADD KEY `fk_eventos` (`fk_eventos`);

--
-- Indices de la tabla `tiposesion`
--
ALTER TABLE `tiposesion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipovoleto`
--
ALTER TABLE `tipovoleto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `voletos`
--
ALTER TABLE `voletos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_evento` (`fk_eventos`),
  ADD KEY `fk_tipovoleto` (`fk_tipovoleto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistentes`
--
ALTER TABLE `asistentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistentessesiones`
--
ALTER TABLE `asistentessesiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calificacioneventos`
--
ALTER TABLE `calificacioneventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calificacionsesiones`
--
ALTER TABLE `calificacionsesiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canal`
--
ALTER TABLE `canal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposesion`
--
ALTER TABLE `tiposesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipovoleto`
--
ALTER TABLE `tipovoleto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `voletos`
--
ALTER TABLE `voletos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistentessesiones`
--
ALTER TABLE `asistentessesiones`
  ADD CONSTRAINT `asistentessesiones_ibfk_1` FOREIGN KEY (`fk_sesion`) REFERENCES `sesiones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asistentessesiones_ibfk_2` FOREIGN KEY (`fk_asistente`) REFERENCES `asistentes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacioneventos`
--
ALTER TABLE `calificacioneventos`
  ADD CONSTRAINT `calificacioneventos_ibfk_1` FOREIGN KEY (`fk_eventos`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacioneventos_ibfk_2` FOREIGN KEY (`fk_asistente`) REFERENCES `asistentes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacionsesiones`
--
ALTER TABLE `calificacionsesiones`
  ADD CONSTRAINT `calificacionsesiones_ibfk_1` FOREIGN KEY (`fk_asistente`) REFERENCES `asistentes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacionsesiones_ibfk_2` FOREIGN KEY (`fk_sesion`) REFERENCES `sesiones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `canal`
--
ALTER TABLE `canal`
  ADD CONSTRAINT `canal_ibfk_1` FOREIGN KEY (`fk_eventos`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`fk_admin`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`fk_eventos`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salas_ibfk_2` FOREIGN KEY (`fk_canal`) REFERENCES `canal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD CONSTRAINT `sesiones_ibfk_1` FOREIGN KEY (`fk_eventos`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sesiones_ibfk_2` FOREIGN KEY (`fk_tiposesion`) REFERENCES `tiposesion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `voletos`
--
ALTER TABLE `voletos`
  ADD CONSTRAINT `voletos_ibfk_1` FOREIGN KEY (`fk_eventos`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `voletos_ibfk_2` FOREIGN KEY (`fk_tipovoleto`) REFERENCES `tipovoleto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
