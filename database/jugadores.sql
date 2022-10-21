-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2022 a las 22:21:07
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
-- Base de datos: `jugadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `equipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `equipo`) VALUES
(1, 'Atlanta Hawks'),
(2, 'Boston Celtics'),
(3, 'Brooklyn Nets'),
(4, 'Charlotte Hornets'),
(5, 'Chicago Bulls'),
(6, 'Cleveland Cavaliers'),
(7, 'Dallas Mavericks'),
(8, 'Denver Nuggets'),
(9, 'Detroit Pistons'),
(10, 'Golden State Warriors'),
(11, 'Indiana Pacers'),
(12, 'Los Angeles Clippers'),
(13, 'Los Angeles Lakers'),
(14, 'Memphis Grizzlies'),
(15, 'Miami Heat'),
(16, 'Milwaukee Bucks'),
(17, 'Minnesota Timberwolves'),
(18, 'New Orleans Pelicans'),
(19, 'New York Knicks'),
(20, 'Oklahoma City Thunder'),
(21, 'Orlando Magic'),
(22, 'Philadelphia 76ers'),
(23, 'Phoenix Suns'),
(24, 'Portland Trail Blazers'),
(25, 'Sacramento Kings'),
(26, 'San Antonio Spurs'),
(27, 'Toronto Raptors'),
(28, 'Utah Jazz'),
(29, 'Washington Wizards'),
(30, 'Houston Rockets'),
(45, 'BOCAAA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_pk` tinyint(4) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `numero` tinyint(4) NOT NULL,
  `id_equipo_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_pk`, `nombre`, `posicion`, `numero`, `id_equipo_fk`) VALUES
(1, 'LEBRON', 'Alero', 6, 6),
(4, 'John Collins', 'Ala-Pivot', 20, 1),
(5, 'Trae Young', 'Base', 11, 1),
(6, 'Dejounte Murray', 'Alero', 5, 1),
(7, 'Marcus Smart', 'Base', 36, 2),
(8, 'Jaylen Brown', 'Escolta', 7, 2),
(9, 'Jayson Tatum', 'Alero', 0, 2),
(10, 'Blake Griffin', 'Ala-Pivot', 91, 2),
(11, 'Al Horford', 'Pivot', 42, 2),
(22, 'Luka Doncic', 'Base', 77, 7),
(24, 'Lionel Messi', 'Escolta', 10, 9),
(25, 'Michael Jordan', 'Escolta', 23, 10),
(26, 'Kevin Durant', 'Alero', 7, 11),
(27, 'Damian Lillard', 'Base', 0, 12),
(28, 'Anthony Davis', 'Ala-Pivot', 23, 13),
(29, 'James Harden', 'Escolta', 13, 14),
(30, 'Manu Ginobili', 'Escolta', 20, 15),
(31, 'Facundo Campazzo', 'Base', 7, 16),
(32, 'Devin Booker', 'Alero', 1, 17),
(33, 'Nikola Jokic', 'Pivot', 15, 18),
(34, 'Chris Paul', 'Base', 3, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `rol`) VALUES
(3, 'admin@admin.com', '$2y$10$9tUWa9BnwcS7DH79MXJgzeRJBDO.2zzSHx5TWo0SXF5Ou9Ek0UCGi', ''),
(4, 'admin@gmail.com', '$2y$10$kU4rBYgpFSXPyjpfNaVM.eRqVtgKG9mV31277keNVLSRmgtnpbQ3u', 'Admin'),
(5, 'admin', '$2y$10$9tUWa9BnwcS7DH79MXJgzeRJBDO.2zzSHx5TWo0SXF5Ou9Ek0UCGi', 'Admin'),
(9, 'asd@gmail.com', '$2y$10$3KBWwT5DEj2qrxbPLhK.C.sUUcoukQUkHlKVTy/TXqmHdXeja3jXC', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_pk`),
  ADD KEY `id_equipo_fk` (`id_equipo_fk`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_pk` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo_fk`) REFERENCES `equipo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
