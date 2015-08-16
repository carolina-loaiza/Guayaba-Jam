-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-08-2015 a las 07:51:27
-- Versión del servidor: 5.5.41-log
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `guayabadata`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(50) NOT NULL,
  `costo` varchar(255) NOT NULL,
  `banda` varchar(50) NOT NULL,
  `canciones` varchar(255) NOT NULL,
  `fecha_ingreso` int(10) unsigned NOT NULL,
  `etiquetas` varchar(255) NOT NULL,
  `cant_vendidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`nombre`, `descripcion`, `img`, `costo`, `banda`, `canciones`, `fecha_ingreso`, `etiquetas`, `cant_vendidos`) VALUES
('Ave Negra', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/ave_negra/ave_negra/cover.jpg', '$6', 'Ave Negra', 'CSI, Tengo Una Nenita, Estoy Enfermo, Nena Sin Ritmo, Indio Comido, Sapos, Perdiendo El Control, Tu Cucu Y Yo, Buck Cherry', 1421111318, 'garage, punk, rock n roll', 52),
('Cry Out Loud', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/las_robertas/cry_out_loud/cover.jpg', '$4', 'Las Robertas', 'History is Done, In Between Buses, Street Feelings, The Curse, Ballroom, Ghost Lover, Damn'' 92, V for you, Back to the End', 1433034518, 'c86, garage, indie pop', 84),
('Demo I', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/rabia/demo_I/cover.png', '$3', 'Rabia', 'Calles Negras, Sol, Miseria, Insommnio, Somnolencia, Sombras, Desgracia', 1427332118, 'garage punk, hardcore punk, powerviolence', 25),
('Florian Droids', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/florian_droids/florian_droids/cover.jpg', '$5', 'Florian Droids', 'Larvas Salvajes, Ciencia Fricción, Monos Tuertos, La Fábula de los Dos Androides, Lonely Days, Obertura del Súper Himen Sangrante, Nada es Real I • El umbral del sueño, Nada es Real II • Interludio alucinante, Nada es Real III • Delirio al despertar, Nada', 1424826518, 'automata, psychedelic rock, rock', 62),
('La pequeña Muerte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/niño_koi/la_pequeña_muerte/cover.jpg', '$10', 'Niño Koi', 'El último rey de Talamanca, Unio naturalis, Adónde está la noche, I, Giulietta Guicciardi, Mátalos a todos, 3 AM, II, El sueño de la razón, Pequeña París', 1427332118, 'experimental, instrumental, instrumental rock', 78),
('Monte', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/monte/monte/cover.jpg', '$3', 'Monte', 'Imperios, Neón Furioso, Ciudad Blanca, Ulises, Vapor', 1428368918, 'ambient, garage rock, noise', 95),
('Sí, San José', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam imperdiet', 'bandas/los_problemas/si_san_jose/cover.jpg', '$1', 'Los Problemas', 'La Playa, Volar Alto', 1427332118, 'indie, lofi, post-rock', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bandas`
--

CREATE TABLE IF NOT EXISTS `bandas` (
  `nombre` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cant_fans` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bandas`
--

INSERT INTO `bandas` (`nombre`, `img`, `descripcion`, `cant_fans`) VALUES
('Ave Negra', 'bandas/ave_negra/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 85),
('Florian Droids', 'bandas/florian_droids/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 525),
('Las Robertas', 'bandas/las_robertas/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 594),
('Los Problemas', 'bandas/los_problemas/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 845),
('Mal Pais', 'bandas/malpais.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 452),
('Monte', 'bandas/monte/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 564),
('Niño Koi', 'bandas/niño_koi/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 525),
('Rabia', 'bandas/rabia/photo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 955);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mercaderia`
--

CREATE TABLE IF NOT EXISTS `mercaderia` (
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(50) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `banda` varchar(50) NOT NULL,
  `fecha_ingreso` int(10) unsigned NOT NULL,
  `cant_vendidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mercaderia`
--

INSERT INTO `mercaderia` (`nombre`, `descripcion`, `img`, `costo`, `banda`, `fecha_ingreso`, `cant_vendidos`) VALUES
('Camisas de Florian Droids', 'Variedad diseños de camisas de Florian Droids. Se venden por separado.', 'bandas/florian_droids/camisas.jpg', '$10', 'Florian Droids', 1433552918, 76),
('CD Dissected Affair de Las Robertas', 'Disco Compacto. Álbum Dissected Affair de la banda Las Robertas.', 'bandas/las_robertas/disco.jpg', '$10', 'Las Robertas', 1437008918, 88),
('CD Florian Droids de Florian Droids', 'Disco Compacto. Álbum homónimo debut de la banda Florian Droids.', 'bandas/florian_droids/disco.jpg', '$7', 'Florian Droids', 1435712918, 96),
('Disco de Vinilo San José (Single) de Monte', 'Disco de vinilo con el single San José de la banda Monte. Incluye letra de la canción.', 'bandas/monte/vinilo01.jpg', '$10', 'Monte', 1436144918, 81),
('Pines de Las Robertas', 'Variedad de pines de la banda Las Robertas. Se venden  por separado.', 'bandas/las_robertas/pines.jpg', '$1', 'Las Robertas', 1436144918, 65);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(10) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `album_favoritos` varchar(255) NOT NULL,
  `banda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`usuario`, `contrasena`, `foto`, `descripcion`, `album_favoritos`, `banda`) VALUES
('karo_801chan', 'soycarolin', 'proyecto_js_php/users/02.jpg', 'Soy Carolina y me gusta la moda. Tengo 23 años y estudio diseño de moda en la UCreativa. Me encanta la música nacional!', 'Florian Droids, Sí, San José, Demo I', 'No'),
('rivk_17', 'soyricardo', 'proyecto_js_php/users/01.jpg', 'Me llamo Ricardo. Me encanta el cine y estudio comunicaciones en la UCR. Tengo 29 años y vivo en Cartago. Si les gusta el Rock, cheequeen mi banda Monte. Chuzo!', 'La Pequeña Muerte, Monte, Demo I', 'Monte'),
('tb_08', 'soytatiana', 'proyecto_js_php/users/03.jpg', 'Hola! Me llamo Tatiana y tengo 22 años. Soy estudiante de medicina y me gusta el pop y el rock.', 'Cry Out Loud, Ave Negra, Demo I', 'No');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
 ADD PRIMARY KEY (`nombre`), ADD KEY `banda` (`banda`);

--
-- Indices de la tabla `bandas`
--
ALTER TABLE `bandas`
 ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `mercaderia`
--
ALTER TABLE `mercaderia`
 ADD PRIMARY KEY (`nombre`), ADD KEY `banda` (`banda`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
 ADD PRIMARY KEY (`usuario`), ADD KEY `banda` (`banda`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`banda`) REFERENCES `bandas` (`nombre`);

--
-- Filtros para la tabla `mercaderia`
--
ALTER TABLE `mercaderia`
ADD CONSTRAINT `mercaderia_ibfk_1` FOREIGN KEY (`banda`) REFERENCES `bandas` (`nombre`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
