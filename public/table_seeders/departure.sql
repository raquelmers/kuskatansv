-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-10-2022 a las 17:14:56
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
-- Estructura de tabla para la tabla `departure`
--

CREATE TABLE `departure` (
  `idDeparture` int(4) NOT NULL,
  `departPlace` varchar(10) DEFAULT NULL,
  `departDate` date DEFAULT NULL,
  `departTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departure`
--

INSERT INTO `departure` (`idDeparture`, `departPlace`, `departDate`, `departTime`) VALUES
(4001, 'Kuskatan C', '2022-10-26', '07:00:00'),
(4002, 'Kuskatan W', '2022-10-26', '07:00:00'),
(4003, 'Kuskatan E', '2022-10-26', '07:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departure`
--
ALTER TABLE `departure`
  ADD PRIMARY KEY (`idDeparture`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
