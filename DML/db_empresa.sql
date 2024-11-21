-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2024 a las 20:44:02
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
-- Base de datos: `db_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `idInventario` int NOT NULL,
  `codigoProducto` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `fechaFabricacion` date DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidadProducto` int DEFAULT '0',
  `precioCompra` decimal(10,2) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`idInventario`, `codigoProducto`, `nombre`, `descripcion`, `fechaFabricacion`, `fechaRegistro`, `cantidadProducto`, `precioCompra`, `precioVenta`) VALUES
(1, 'PROD001', 'Pantalla Nano 14\"', 'Pantalla Nano 14\" 30 Pines', '2024-02-22', '2024-11-21 20:35:20', 10, 150000.00, 185000.00),
(2, 'PROD002', 'Teclado Lenovo E41-55', 'Teclado para portatil lenovo E41-55', '2021-02-09', '2024-11-21 20:35:20', 15, 50000.00, 65000.00),
(3, 'PROD003', 'Disco Solido 240GB Patriot', 'Disco de estado solido de 240GB Marca Patriot', '2023-10-10', '2024-11-21 20:35:20', 40, 75000.00, 84000.00),
(4, 'PROD004', 'Memoria Ram 4GB DDR4 3200MHZ', 'Memoria Ram 4GB DDR4 3200MHZ ATTCH', '2023-09-20', '2024-11-21 20:35:20', 20, 50000.00, 65000.00),
(5, 'PROD005', 'Bateria para Portatil HP G7-G8', 'Bateria para portatil HP G7-G8', '2024-09-10', '2024-11-21 20:35:20', 5, 100000.00, 130000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `codigoProducto` (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `idInventario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
