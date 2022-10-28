-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-10-2022 a las 17:13:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kuskatandb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `travel`
--

CREATE TABLE `travel` (
  `idTravel` int(4) NOT NULL,
  `typeTravel` varchar(10) DEFAULT NULL,
  `idBus` int(4) DEFAULT NULL,
  `idDeparture` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `travel`
--

INSERT INTO `travel` (`idTravel`, `typeTravel`, `idBus`, `idDeparture`) VALUES
(2001, 'Round-Trip', 1001, 0),
(2002, 'Round-trip', 1002, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`idTravel`),
  ADD KEY `FK_Travel` (`idBus`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `FK_Travel` FOREIGN KEY (`idBus`) REFERENCES `bus` (`idBus`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
