-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 10-06-2020 a las 23:36:57
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arquitectura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_personas` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dispositivo` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id_personas`, `nombre`, `dispositivo`, `estado`, `fecha`) VALUES
(1, 'Carlos', 'Luz-Sala', 'ENCENDIDO\r\n', '2020-06-10 20:00:54'),
(2, 'Carlos', 'Luz-Sala', 'APAGADO\r\n', '2020-06-10 20:01:17'),
(3, 'Carlos', 'Luz-Sala', 'APAGADO\r\n', '2020-06-10 20:01:48'),
(4, 'Carlos', 'Estufa', 'APAGADO\r\n', '2020-06-10 20:03:11'),
(5, 'Carlos', 'Estufa', 'APAGADO\r\n', '2020-06-10 20:03:49'),
(6, 'Carlos', 'Computadora', 'ENCENDIDO\r\n', '2020-06-10 20:05:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_personas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_personas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
