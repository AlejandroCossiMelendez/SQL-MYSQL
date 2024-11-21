-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2024 a las 20:57:24
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `fecHaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCompleto`, `telefono`, `email`, `direccion`, `fecHaRegistro`) VALUES
(1, 'Daniel Perez', '3128534957', 'danielperez@gmail.com', 'Cl 25 #30-21, Medellin, Antioquia', '2024-01-18 18:29:25'),
(2, 'Pedro Suarez', '3012548624', 'pedrosuarez@gmail.com', 'Cr 18G #41H-50, Sincelejo, Sucre', '2023-11-07 18:31:32'),
(3, 'Rocio Marin', '3245826482', 'rociomarin@gmail.com', 'Cl 13 #13-64, Medellin, Antioquia', '2023-11-22 13:22:27'),
(4, 'Julieth Cardenas', '3506576242', 'juliethcardenas@gmail.com', 'Cr 71A #94-13, Medellin, Antioquia', '2024-01-18 20:34:17'),
(5, 'Jesus Villamizar', '3215824678', 'jesusvillamizar@gmail.com', 'Cl 93 #72A-10, Medellin, Antioquia', '2024-01-20 14:23:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
