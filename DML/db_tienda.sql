-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2024 a las 23:01:30
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
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaContratacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `puesto` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fechaContratacion`, `puesto`, `salario`, `email`) VALUES
(1, 'Mario Perez', '1993-12-21', '2023-09-01 17:16:00', 'Ingeniero de software', 2000.00, 'marioperez@gmail.com'),
(2, 'Alexander Montes', '1990-07-04', '2024-02-06 13:15:25', 'Ingeniero de software', 2500.00, 'alexandermontes@gmail.com'),
(3, 'Camilo Vargas', '1995-07-20', '2024-03-05 13:18:22', 'Gerente de proyectos', 3000.00, 'camilovargas@gmail.com'),
(4, 'Sandra Guzman', '1994-08-22', '2022-03-17 17:29:28', 'Gerente de proyectos', 3000.00, 'sandraguzman@gmail.com'),
(5, 'Julieth Perez', '2000-05-15', '2024-03-08 18:34:27', 'Secretario', 800.00, 'juliethperez@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
