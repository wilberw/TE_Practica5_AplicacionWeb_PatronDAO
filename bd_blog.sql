-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2021 a las 22:35:17
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `fecha`, `titulo`, `contenido`) VALUES
(1, '2021-02-11', 'Programacion desde 0', 'Si eres una persona curiosa y quieres aprender todo acerca de la programacion este sitio es para ti'),
(2, '2021-01-09', 'Entel', 'Alta velocidad de navegación en Internet. Revisa tu correo, descarga imágenes, música, peliculas, videos, programas y más, sin restricciones e ilimitadamente. Tarifas económicas y con variedad de planes de acuerdo a tus necesidades.'),
(3, '2021-03-19', 'Gmail', 'Gmail o Google mail es un servicio de correo electrÃ³nico gratuito proporcionado por el motor de bÃºsqueda Google. EstÃ¡ disponible en mÃ¡s de 50 idiomas y se financia mediante publicidad. Con Gmail, los mensajes de correo electrÃ³nico se pueden enviar y recibir a travÃ©s de una interfaz de navegador en un equipo domÃ©stico. TambiÃ©n se puede utilizar con smartphones (iOS y Android) o tablets. Existe versiÃ³n de pago de Gmail sin publicidad para oficinas y empresas.'),
(5, '2021-04-29', 'Facebook', 'Facebook es una red social gratuita que permite a los usuarios interconectarse para interactuar y compartir contenidos a travÃ©s de internet. Fue lanzada en 2004. Su fundador es Mark Zuckerberg.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'wilber', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
