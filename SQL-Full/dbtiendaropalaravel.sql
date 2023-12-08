-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2023 a las 16:05:59
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbtiendaropalaravel`
--
CREATE DATABASE IF NOT EXISTS `dbtiendaropalaravel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbtiendaropalaravel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Camisa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Chaqueta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Parka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Polera', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `comuna` varchar(255) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `coste` double NOT NULL,
  `estado` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Camisa Hombre Amarillo', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Amarillo', 42500, 48, 'Camisa Hombre Amarillo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Camisa Hombre Azul', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Azul', 42500, 194, 'Camisa Hombre Azul.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Camisa Hombre Celeste', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Celeste', 42500, 9, 'Camisa Hombre Celeste.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Camisa Hombre Naranjo', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Naranjo', 42500, 59, 'Camisa Hombre Naranjo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Camisa Hombre Plomo', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Plomo', 42500, 94, 'Camisa Hombre Plomo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Camisa Hombre Rojo', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Rojo', 42500, 11, 'Camisa Hombre Rojo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Camisa Hombre Rosado', 'Marca: Adidas;Tipo: Camisa;Genero: Hombre;Color: Rosado', 42500, 33, 'Camisa Hombre Rosado.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Camisa Mujer Amarillo', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Amarillo', 23000, 19, 'Camisa Mujer Amarillo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Camisa Mujer Azul', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Azul', 23000, 105, 'Camisa Mujer Azul.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Camisa Mujer Celeste', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Celeste', 23000, 77, 'Camisa Mujer Celeste.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Camisa Mujer Naranjo', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Naranjo', 23000, 81, 'Camisa Mujer Naranjo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Camisa Mujer Plomo', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Plomo', 23000, 61, 'Camisa Mujer Plomo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Camisa Mujer Rojo', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Rojo', 23000, 72, 'Camisa Mujer Rojo.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Camisa Mujer Rosado', 'Marca: Nike;Tipo: Camisa;Genero: Mujer;Color: Rosado', 23000, 2, 'Camisa Mujer Rosado.png', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Chaqueta Hombre Amarillo', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Amarillo', 84390, 88, 'Chaqueta Hombre Amarillo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Chaqueta Hombre Azul', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Azul\r\n', 84390, 21, 'Chaqueta Hombre Azul.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Chaqueta Hombre Celeste', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Celeste\r\n', 84390, 56, 'Chaqueta Hombre Celeste.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Chaqueta Hombre Naranjo', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Naranjo\r\n', 84390, 77, 'Chaqueta Hombre Naranjo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Chaqueta Hombre Plomo', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Plomo', 84390, 205, 'Chaqueta Hombre Plomo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Chaqueta Hombre Rojo', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Rojo', 84390, 54, 'Chaqueta Hombre Rojo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Chaqueta Hombre Rosado', 'Marca: Caterpillar;Tipo: Chaqueta;Genero: Hombre;Color: Rosado', 84390, 13, 'Chaqueta Hombre Rosado.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Chaqueta Mujer Amarillo', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Amarillo', 104140, 66, 'Chaqueta Mujer Amarillo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Chaqueta Mujer Azul', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Azul', 104140, 124, 'Chaqueta Mujer Azul.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Chaqueta Mujer Celeste', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Celeste', 104140, 17, 'Chaqueta Mujer Celeste.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Chaqueta Mujer Naranjo', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Naranjo', 104140, 95, 'Chaqueta Mujer Naranjo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Chaqueta Mujer Plomo', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Plomo', 104140, 46, 'Chaqueta Mujer Plomo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Chaqueta Mujer Rojo', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Rojo', 104140, 39, 'Chaqueta Mujer Rojo.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Chaqueta Mujer Rosado', 'Marca: Diadora;Tipo: Chaqueta;Genero: Mujer;Color: Rosado', 104140, 76, 'Chaqueta Mujer Rosado.png', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Parka Hombre Amarillo', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Amarillo', 147870, 91, 'Parka Hombre Amarillo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Parka Hombre Azul', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Azul', 147870, 57, 'Parka Hombre Azul.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Parka Hombre Celeste', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Celeste', 147870, 192, 'Parka Hombre Celeste.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Parka Hombre Naranjo', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Naranjo', 147870, 44, 'Parka Hombre Naranjo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Parka Hombre Plomo', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Plomo', 147870, 9, 'Parka Hombre Plomo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Parka Hombre Rojo', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Rojo', 147870, 42, 'Parka Hombre Rojo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Parka Hombre Rosado', 'Marca: Columbia;Tipo: Parka;Genero: Hombre;Color: Rosado', 147870, 138, 'Parka Hombre Rosado.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Parka Mujer Amarillo', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Amarillo', 152340, 23, 'Parka Mujer Amarillo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Parka Mujer Azul', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Azul', 152340, 5, 'Parka Mujer Azul.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Parka Mujer Celeste', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Celeste', 152340, 36, 'Parka Mujer Celeste.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Parka Mujer Naranjo', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Naranjo', 152340, 66, 'Parka Mujer Naranjo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Parka Mujer Plomo', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Plomo', 152340, 56, 'Parka Mujer Plomo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Parka Mujer Rojo', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Rojo', 152340, 25, 'Parka Mujer Rojo.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Parka Mujer Rosado', 'Marca: Marmot;Tipo: Parka;Genero: Mujer;Color: Rosado', 152340, 117, 'Parka Mujer Rosado.png', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Polera Hombre Amarillo', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Amarillo', 62990, 18, 'Polera Hombre Amarillo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Polera Hombre Azul', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Azul', 62990, 33, 'Polera Hombre Azul.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Polera Hombre CelesMarca: Gucci;Tipo: Polera;Genero: Hombre;Color: Amarillote', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Celeste', 62990, 77, 'Polera Hombre Celeste.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Polera Hombre Naranjo', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Naranjo', 62990, 21, 'Polera Hombre Naranjo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Polera Hombre Plomo', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Plomo', 62990, 103, 'Polera Hombre Plomo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Polera Hombre Rojo', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Rojo', 62990, 71, 'Polera Hombre Rojo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Polera Hombre Rosado', 'Marca: Gucci;Tipo: Polera;Genero: Hombre;Color: Rosado', 62990, 135, 'Polera Hombre Rosado.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Polera Mujer Amarillo', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Amarillo', 15990, 88, 'Polera Mujer Amarillo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Polera Mujer Azul', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Azul', 15990, 69, 'Polera Mujer Azul.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Polera Mujer Celeste', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Celeste', 15990, 6, 'Polera Mujer Celeste.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Polera Mujer Naranjo', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Naranjo', 15990, 55, 'Polera Mujer Naranjo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Polera Mujer Plomo', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Plomo', 15990, 23, 'Polera Mujer Plomo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Polera Mujer Rojo', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Rojo', 15990, 64, 'Polera Mujer Rojo.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Polera Mujer Rosado', 'Marca: Adidas;Tipo: Polera;Genero: Mujer;Color: Rosado', 15990, 10, 'Polera Mujer Rosado.png', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_pedido`
--

CREATE TABLE `producto_pedido` (
  `id` int(11) NOT NULL,
  `unidades` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_usuario`
--

CREATE TABLE `producto_usuario` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `telefono`, `correo`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '553189041', 'ventas@adidas.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Nike', '847201294', 'ventas@nike.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Caterpillar', '738212942', 'ventas@caterpillar.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Columbia', '772188009', 'ventas@columbia.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Diadora', '325637892', 'ventas@diadora.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Marmot', '996423471', 'ventas@marmot.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Gucci', '426735890', 'ventas@gucci.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `primer_nombre` varchar(255) NOT NULL,
  `segundo_nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `correo`, `clave`, `tipo`, `primer_nombre`, `segundo_nombre`, `apellido_paterno`, `apellido_materno`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'daniel@falso.local', '$2y$10$6wndH8iZ4pTeBGjIfc/lmOvFirEiq/7UnAFE861O0Ziw7fC7.yqK2', 'Administrador', 'Daniel', 'Andres', 'Alvarez', 'Zamorano', 'Daniel.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'esteban@falso.local', '$2y$10$xymcZXJWRI8GYQUu7OL7OeFBW7PC4IgyZZF6otN3sfW9mCsFWBKcG', 'Cliente', 'Esteban', 'Rodrigo', 'Alvarez', 'Zamorano', 'Esteban.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`,`usuario_id`),
  ADD KEY `fk_pedido_usuario1_idx` (`usuario_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`,`categoria_id`),
  ADD KEY `fk_producto_categoria_idx` (`categoria_id`);

--
-- Indices de la tabla `producto_pedido`
--
ALTER TABLE `producto_pedido`
  ADD PRIMARY KEY (`id`,`pedido_id`,`producto_id`),
  ADD KEY `fk_producto_has_pedido_pedido1_idx` (`pedido_id`),
  ADD KEY `fk_producto_has_pedido_producto1_idx` (`producto_id`);

--
-- Indices de la tabla `producto_usuario`
--
ALTER TABLE `producto_usuario`
  ADD PRIMARY KEY (`id`,`producto_id`,`usuario_id`),
  ADD KEY `fk_producto_usuario_producto1_idx` (`producto_id`),
  ADD KEY `fk_producto_usuario_usuario1_idx` (`usuario_id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_UNIQUE` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `producto_pedido`
--
ALTER TABLE `producto_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `producto_usuario`
--
ALTER TABLE `producto_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedido_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_pedido`
--
ALTER TABLE `producto_pedido`
  ADD CONSTRAINT `fk_producto_has_pedido_pedido1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_has_pedido_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_usuario`
--
ALTER TABLE `producto_usuario`
  ADD CONSTRAINT `fk_producto_usuario_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_usuario_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
