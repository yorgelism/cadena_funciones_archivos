-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2023 a las 06:56:58
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `archivos_yorgelis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicinas`
--

CREATE TABLE `medicinas` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `presentacion` varchar(50) DEFAULT NULL,
  `componentes` varchar(100) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medicinas`
--

INSERT INTO `medicinas` (`codigo`, `nombre`, `presentacion`, `componentes`, `precio`) VALUES
(1, 'Ibuprofeno', 'Tabletas', 'Ibuprofeno', '15.50'),
(2, 'Paracetamol', 'Jarabe', 'Paracetamol', '12.75'),
(3, 'Omeprazol', 'Cápsulas', 'Omeprazol', '28.00'),
(4, 'Aspirina', 'Tabletas', 'Ácido acetilsalicílico', '10.25'),
(5, 'Amoxicilina', 'Suspensión', 'Amoxicilina', '22.90'),
(6, 'Loratadina', 'Tabletas', 'Loratadina', '18.40'),
(7, 'Cetirizina', 'Jarabe', 'Cetirizina', '16.80'),
(8, 'Dipirona', 'Tabletas', 'Metamizol sódico', '9.50'),
(9, 'Acetaminofén', 'Tabletas', 'Paracetamol', '11.00'),
(10, 'Diclofenaco', 'Gel', 'Diclofenaco sódico', '25.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicinas`
--
ALTER TABLE `medicinas`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
