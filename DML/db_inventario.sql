-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2024 a las 22:53:49
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
-- Base de datos: `db_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL,
  `nombreEmpresa` varchar(100) NOT NULL,
  `nombreContacto` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombreEmpresa`, `nombreContacto`, `telefono`, `direccion`, `pais`) VALUES
(1, 'Computec Sincelejo', 'Alejandro Cossi', '3128178195', 'Barrio Ford', 'Colombia'),
(2, 'Marq Café\n', 'Mario Vitula', '3214586522', 'Cl. 67 #55 - 61, La Candelaria, Medellín, La Candelaria, Medellín, Antioquia', 'Colombia'),
(3, 'ALINEACIONES Y SUSPENSIONES GR\n', 'Rosmary Vargas', '3505789585', 'Cl. 67 #48a-78, Aranjuez, Medellín, Aranjuez, Medellín, Antioquia', 'Colombia'),
(4, 'Constructores Henao Patiño S.A.S.\n', 'Alexander Henao', '3016519056', 'Cra. 50B #67-93, Aranjuez, Medellín, Aranjuez, Medellín, Antioquia', 'Colombia'),
(5, 'Chillax cocktails\n', 'Yalime Sandrey', '3245576868', 'Cl 66 #50-27, La Candelaria, Medellín, La Candelaria, Medellín, Antioquia', 'Colombia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
