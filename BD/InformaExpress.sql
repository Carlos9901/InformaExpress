-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2020 a las 06:24:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `innovaccion`
--

CREATE DATABASE IF NOT EXISTS `InformaExpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `InformaExpress`;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizacion_paciente`
--

CREATE TABLE `actualizacion_paciente` (
  `id_Actual` int(11) NOT NULL,
  `id_Paciente` int(11) NOT NULL,
  `id_Estado` int(11) NOT NULL,
  `fecha_Actual` datetime NOT NULL,
  `comentarios_Actual` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_Depart` int(11) NOT NULL,
  `nombre_Depart` varchar(100) NOT NULL,
  `descripcion_Depart` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_ingreso`
--

CREATE TABLE `detalles_ingreso` (
  `id_Ingres` int(11) NOT NULL,
  `id_Pacien` int(11) NOT NULL,
  `id_Medico` int(11) NOT NULL,
  `id_Unidad` int(11) NOT NULL,
  `fecha_Ingreso` datetime NOT NULL,
  `comentarios_Ingres` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_paciente`
--

CREATE TABLE `estado_paciente` (
  `id_Estado` int(11) NOT NULL,
  `Nombre_Estado` varchar(250) NOT NULL,
  `Descripcion_Estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `id_Medico` int(11) NOT NULL,
  `id_Unidad` int(11) NOT NULL,
  `id_Depart` int(11) NOT NULL,
  `nombre_Medico` varchar(100) NOT NULL,
  `apellidoP_Medico` varchar(100) NOT NULL,
  `apellidoM_Medico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_Pacien` int(11) NOT NULL,
  `id_Sexo` int(11) NOT NULL,
  `nombre_Pacien` varchar(100) NOT NULL,
  `apellidoP_Pacien` varchar(100) NOT NULL,
  `apellidoM_Pacien` varchar(100) NOT NULL,
  `curp_Pacien` varchar(12) NOT NULL,
  `edad_Pacien` varchar(3) NOT NULL,
  `numero_Telefo` varchar(100) NOT NULL,
  `calle_Pacien` varchar(100) NOT NULL,
  `num_Calle_Pacien` varchar(100) NOT NULL,
  `colonia_Pacien` varchar(100) NOT NULL,
  `nom_fam_Pacien` varchar(100) NOT NULL,
  `tel_Fam_Pacien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo_paciente`
--

CREATE TABLE `sexo_paciente` (
  `id_Sexo` int(11) NOT NULL,
  `nombre_Sexo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medica`
--

CREATE TABLE `unidad_medica` (
  `id_Unidad` int(11) NOT NULL,
  `nombre_Unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actualizacion_paciente`
--
ALTER TABLE `actualizacion_paciente`
  ADD PRIMARY KEY (`id_Actual`),
  ADD KEY `id_Paciente` (`id_Paciente`),
  ADD KEY `id_Estado` (`id_Estado`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_Depart`);

--
-- Indices de la tabla `detalles_ingreso`
--
ALTER TABLE `detalles_ingreso`
  ADD PRIMARY KEY (`id_Ingres`),
  ADD KEY `id_Pacien` (`id_Pacien`),
  ADD KEY `id_Medico` (`id_Medico`),
  ADD KEY `id_Unidad` (`id_Unidad`);

--
-- Indices de la tabla `estado_paciente`
--
ALTER TABLE `estado_paciente`
  ADD PRIMARY KEY (`id_Estado`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id_Medico`),
  ADD KEY `id_Unidad` (`id_Unidad`),
  ADD KEY `id_Seccion` (`id_Depart`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_Pacien`),
  ADD KEY `id_Sexo` (`id_Sexo`);

--
-- Indices de la tabla `sexo_paciente`
--
ALTER TABLE `sexo_paciente`
  ADD PRIMARY KEY (`id_Sexo`);

--
-- Indices de la tabla `unidad_medica`
--
ALTER TABLE `unidad_medica`
  ADD PRIMARY KEY (`id_Unidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actualizacion_paciente`
--
ALTER TABLE `actualizacion_paciente`
  MODIFY `id_Actual` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalles_ingreso`
--
ALTER TABLE `detalles_ingreso`
  MODIFY `id_Ingres` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_paciente`
--
ALTER TABLE `estado_paciente`
  MODIFY `id_Estado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `id_Medico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_Pacien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexo_paciente`
--
ALTER TABLE `sexo_paciente`
  MODIFY `id_Sexo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad_medica`
--
ALTER TABLE `unidad_medica`
  MODIFY `id_Unidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actualizacion_paciente`
--
ALTER TABLE `actualizacion_paciente`
  ADD CONSTRAINT `actualizacion_paciente_ibfk_1` FOREIGN KEY (`id_Estado`) REFERENCES `estado_paciente` (`id_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actualizacion_paciente_ibfk_2` FOREIGN KEY (`id_Paciente`) REFERENCES `paciente` (`id_Pacien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalles_ingreso`
--
ALTER TABLE `detalles_ingreso`
  ADD CONSTRAINT `Medico_FK` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_Medico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalles_ingreso_ibfk_1` FOREIGN KEY (`id_Pacien`) REFERENCES `paciente` (`id_Pacien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalles_ingreso_ibfk_2` FOREIGN KEY (`id_Medico`) REFERENCES `medico` (`id_Medico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalles_ingreso_ibfk_3` FOREIGN KEY (`id_Unidad`) REFERENCES `unidad_medica` (`id_Unidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`id_Medico`) REFERENCES `detalles_ingreso` (`id_medico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medico_ibfk_2` FOREIGN KEY (`id_Unidad`) REFERENCES `unidad_medica` (`id_Unidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medico_ibfk_3` FOREIGN KEY (`id_Depart`) REFERENCES `departamento` (`id_Depart`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_Pacien`) REFERENCES `detalles_ingreso` (`id_pacien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`id_Sexo`) REFERENCES `sexo_paciente` (`id_Sexo`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
