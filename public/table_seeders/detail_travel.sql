-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-10-2022 a las 17:15:53
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
-- Estructura de tabla para la tabla `detail_travel`
--

CREATE TABLE `detail_travel` (
  `idDetailTravel` int(4) NOT NULL,
  `idTicket` int(4) NOT NULL,
  `idTravel` int(4) NOT NULL,
  `idBus` int(4) NOT NULL,
  `idDeparture` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detail_travel`
--

INSERT INTO `detail_travel` (`idDetailTravel`, `idTicket`, `idTravel`, `idBus`, `idDeparture`) VALUES
(7001, 2001, 2001, 1001, 4001),
(7002, 2002, 2002, 1002, 4002);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detail_travel`
--
ALTER TABLE `detail_travel`
  ADD PRIMARY KEY (`idDetailTravel`),
  ADD KEY `idTravel` (`idTravel`),
  ADD KEY `idBus` (`idBus`),
  ADD KEY `idDeparture` (`idDeparture`),
  ADD KEY `idTicket` (`idTicket`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detail_travel`
--
ALTER TABLE `detail_travel`
  ADD CONSTRAINT `idBus` FOREIGN KEY (`idBus`) REFERENCES `bus` (`idBus`) ON UPDATE CASCADE,
  ADD CONSTRAINT `idDeparture` FOREIGN KEY (`idDeparture`) REFERENCES `departure` (`idDeparture`) ON UPDATE CASCADE,
  ADD CONSTRAINT `idTicket` FOREIGN KEY (`idTicket`) REFERENCES `ticket` (`idTravel`) ON UPDATE CASCADE,
  ADD CONSTRAINT `idTravel` FOREIGN KEY (`idTravel`) REFERENCES `travel` (`idTravel`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*FOREIGN KEYS*/

ALTER TABLE Arrival ADD CONSTRAINT PK_Arrival PRIMARY KEY (idArrival,idDeparture);
ALTER TABLE Travel ADD CONSTRAINT FK_Travel FOREIGN KEY (idBus) REFERENCES Bus (idBus);
ALTER TABLE Counter ADD CONSTRAINT FK_Counter FOREIGN KEY (idUser) REFERENCES User (idUser);
ALTER TABLE Passenger ADD CONSTRAINT FK_Passenger FOREIGN KEY (idUser) REFERENCES User (idUser);
ALTER TABLE Ticket ADD CONSTRAINT FK_Ticket FOREIGN KEY (idTravel) REFERENCES Travel (idTravel);
ALTER TABLE Arrival ADD CONSTRAINT FK_Arrival FOREIGN KEY (idDeparture) REFERENCES Departure (idDeparture);
