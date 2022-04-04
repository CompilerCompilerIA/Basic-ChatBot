-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2022 a las 04:30:49
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `memory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iamalive`
--

CREATE TABLE `iamalive` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `bot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `iamalive`
--

INSERT INTO `iamalive` (`id`, `user`, `bot`) VALUES
(1, 'Hi', 'Hello... Pleased to meet you!'),
(2, 'Hello', 'Hi you'),
(3, 'How old are you?', 'I am 3 days old'),
(4, 'What is your name', 'My name is ConsoleBot'),
(5, 'What time is it?', 'Look at your watch'),
(6, 'Where are you from?', 'I\'m from La Paz'),
(7, 'What are you doing?', 'Nothing... what are you doing?'),
(8, 'Do you know how old i am?', 'I am sorry, i dont know how old you are');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `iamalive`
--
ALTER TABLE `iamalive`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `iamalive`
--
ALTER TABLE `iamalive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
