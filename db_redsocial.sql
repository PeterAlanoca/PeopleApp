-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2016 a las 02:07:46
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_redsocial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE IF NOT EXISTS `publicacion` (
`id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `id_usuario`, `contenido`, `tipo`, `fecha`) VALUES
(34, 1, '1111111.mp4', 'mp4', '01/07/2016 08:55:10'),
(35, 1, 'asasa.jpg', 'jpg', '01/07/2016 08:55:32'),
(36, 2, 'vintage_eiffel_tower_wallpaper_hd.jpg', 'jpg', '01/07/2016 08:56:21'),
(44, 1, '13494929_1085177018196684_9118990738137856434_n.png', 'png', '01/07/2016 10:33:11'),
(45, 1, '13533235_1763122787235372_8553434447402920243_n.jpg', 'jpg', '01/07/2016 10:35:30'),
(47, 1, 'tumblr_mlyji2F4BJ1qbogk6o1_500.gif', 'gif', '01/07/2016 10:58:03'),
(48, 1, '13494929_1085177018196684_9118990738137856434_n.png', 'png', '01/07/2016 13:59:19'),
(51, 1, 'asasa.mp4', 'mp4', '01/07/2016 19:50:11'),
(52, 1, 'fondo.jpg', 'jpg', '01/07/2016 19:51:16'),
(53, 2, 'hola que tal', 'tal', '01/07/2016 19:56:34'),
(54, 1, 'as.mp4', 'mp4', '01/07/2016 20:00:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `siguiendo` varchar(100) NOT NULL,
  `seguidores` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `password`, `nombre`, `apellido`, `correo`, `foto`, `siguiendo`, `seguidores`) VALUES
(1, 'PeterAlanoca', '12345678', 'Peter', 'Alanoca', 'peter.alanoca@gmail.com', 'fotop.jpg', '12', '1'),
(2, 'GuilmarMamani', '87654321', 'Guilmar', 'Mamani', 'guilmar.mamani@gmail.com', 'fotog.jpg', '22', '1'),
(3, 'LuisCoria', 'qwertyui', 'Luis', 'Coria Suma', 'luis.coria@gmail.com', 'fotol.jpg', '1', '1'),
(4, 'franz.yapu', '11111111', 'Franz', 'Yapu Mamani', 'franz.yapu@gmail.com', 'fotoy.jpg', '1', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
