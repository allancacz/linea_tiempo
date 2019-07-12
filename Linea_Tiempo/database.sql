-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2019 a las 19:42:06
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calendario_curso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_estudiante`
--

CREATE TABLE `cursos_estudiante` (
  `id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `semestre` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `carrera` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `telefono` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `categoria` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `title` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `color` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `textColor` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `categoria`, `title`, `descripcion`, `color`, `textColor`, `start`, `end`, `curso_id`) VALUES
(16, 'Tarea', 'Unidad 1', 'test', '#ff0000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(17, 'Tarea', 'Proyecto', 'Proyecto de base de datos', '#0000ff', '#FFFFFF', '2019-06-28 11:00:00', '2019-06-28 11:00:00', NULL),
(18, 'Ensayo', 'Gestores', 'Gestores de bases de datos', '#ff8000', '#FFFFFF', '2019-06-18 12:00:00', '2019-06-18 12:00:00', NULL),
(19, 'Examen', 'Examen Final', 'Ultima oportunidad', '#408080', '#FFFFFF', '2019-07-11 11:00:00', '2019-07-11 11:00:00', NULL),
(20, 'Examen', 'Unidad 2', 'U2', '#400040', '#FFFFFF', '2019-06-05 11:00:00', '2019-06-05 11:00:00', NULL),
(21, 'Tarea', 'Temario', 'Unidad 1', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(22, 'Examen', 'A', 'b', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(23, 'Ensayo', 'B', 'C', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(24, 'Ensayo', 'D', 'E', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(25, 'Ensayo', 'ASDF', 'S', '#ffff00', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(26, 'Examen', 'Y', 'FGB', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(27, 'Examen', 'EJEMPLO', 'ASDF', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL),
(28, 'Examen', 'Unidad 2', 'A', '#ff8000', '#FFFFFF', '2019-06-13 11:00:00', '2019-06-13 11:00:00', NULL),
(29, 'Tarea', 'a', 'a', '#000000', '#FFFFFF', '2019-06-15 11:00:00', '2019-06-15 11:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) COLLATE latin1_spanish_ci NOT NULL,
  `area` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubrica_gral`
--

CREATE TABLE `rubrica_gral` (
  `id` int(11) NOT NULL,
  `campo` varchar(255) COLLATE latin1_spanish_ci NOT NULL COMMENT 'Campo a evaluar',
  `cal_max` int(11) NOT NULL COMMENT 'Calificación máxima',
  `numero_max` int(11) NOT NULL COMMENT 'Número base para criterio de calificación',
  `eventos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubrica_particular`
--

CREATE TABLE `rubrica_particular` (
  `id` int(11) NOT NULL,
  `ortografia` int(11) NOT NULL,
  `autores` int(11) NOT NULL,
  `conclusiones` int(11) NOT NULL,
  `rubricagral_id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `pass` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(255) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `pass`, `tipo`) VALUES
(10, 'tapialugardo@gmail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'maestro'),
(11, 'levitapia_2908@gmail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'maestro'),
(12, 'tapialugardo29@gmail.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'alumno'),
(13, 'allanocc.95@gmail.com', '55a5560f37d53fca2dd4de1032bdc3e1b4a2727c5caf70d80ad7cb30f715afafe415b3ebda3c70da8286734e54a9ea8f02e64fa11a72321e3670b35addbf3cfa', 'alumno'),
(14, 'asd@gmail.com', '0759371eacf09b5cc3831df7bad031032e0cabe1ad06357b6249e8c10149f28d13c2f59a4ace2024f4c5fdd568b121520667733af6d9dd2e70fe1bfeb030c139', 'maestro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_id_fk_curso` (`profesor_id`);

--
-- Indices de la tabla `cursos_estudiante`
--
ALTER TABLE `cursos_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante_id_fk_ce` (`estudiante_id`),
  ADD KEY `curso_id_fk_ce` (`curso_id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id_fk_estudiante` (`user_id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_id_fk_eventos` (`curso_id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id_fk_profesor` (`user_id`);

--
-- Indices de la tabla `rubrica_gral`
--
ALTER TABLE `rubrica_gral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventos_id_fk_rubricagral` (`eventos_id`);

--
-- Indices de la tabla `rubrica_particular`
--
ALTER TABLE `rubrica_particular`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rubricagral_id_fk_particular` (`rubricagral_id`),
  ADD KEY `estudiante_id_fk_particular` (`estudiante_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos_estudiante`
--
ALTER TABLE `cursos_estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubrica_gral`
--
ALTER TABLE `rubrica_gral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rubrica_particular`
--
ALTER TABLE `rubrica_particular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `profesor_id_fk_curso` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cursos_estudiante`
--
ALTER TABLE `cursos_estudiante`
  ADD CONSTRAINT `curso_id_fk_ce` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiante_id_fk_ce` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `usuarios_id_fk_estudiante` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `curso_id_fk_eventos` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `usuarios_id_fk_profesor` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rubrica_gral`
--
ALTER TABLE `rubrica_gral`
  ADD CONSTRAINT `eventos_id_fk_rubricagral` FOREIGN KEY (`eventos_id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rubrica_particular`
--
ALTER TABLE `rubrica_particular`
  ADD CONSTRAINT `estudiante_id_fk_particular` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`),
  ADD CONSTRAINT `rubricagral_id_fk_particular` FOREIGN KEY (`rubricagral_id`) REFERENCES `rubrica_gral` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
