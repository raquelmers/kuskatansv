-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-10-2022 a las 17:15:39
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
-- Estructura de tabla para la tabla `arrival`
--

CREATE TABLE `arrival` (
  `idArrival` int(4) NOT NULL,
  `idDeparture` int(4) NOT NULL,
  `arrivalPlace` varchar(50) DEFAULT NULL,
  `arrivalDate` date DEFAULT NULL,
  `arrivalTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arrival`
--

INSERT INTO `arrival` (`idArrival`, `idDeparture`, `arrivalPlace`, `arrivalDate`, `arrivalTime`) VALUES
(6001, 4001, 'Suchitoto, Cuscatlan', '2022-10-26', '08:30:00'),
(6002, 4002, 'Ciudad Barrios, San Miguel', '2022-10-26', '09:00:00'),
(6003, 4003, 'Ilobasco, Sonsonate', '2022-10-26', '09:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`idArrival`,`idDeparture`),
  ADD KEY `FK_Arrival` (`idDeparture`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arrival`
--
ALTER TABLE `arrival`
  ADD CONSTRAINT `FK_Arrival` FOREIGN KEY (`idDeparture`) REFERENCES `departure` (`idDeparture`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
