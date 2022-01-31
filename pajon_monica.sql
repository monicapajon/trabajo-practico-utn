-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-07-2021 a las 18:52:28
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pajon_monica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Irán a juicio por organizar un evento multitudinario en plena pandemia y sin medidas sanitarias', 'Los cinco organizadores de la fiesta en Villa Warcalde deberán responder por el delito de violación de las normas sanitarias para evitar la propagación de enfermedades peligrosas.', 'El Juzgado de Control en lo Penal Económico de la ciudad de Córdoba elevó a juicio una causa penal contra cinco personas que, en plena pandemia, organizaron un evento masivo en el establecimiento Pinar del Río con aproximadamente 270 personas, sin cumplir con las medidas sanitarias dispuestas por el Centro de Operaciones de Emergencia (COE). Los imputados Federico Facchin, Juan Diego Faya, Martín Huergo, Matías Horacio Milani y Sebastián Rinaldi deberán responder por el delito de violación de las normas sanitarias para evitar la propagación de enfermedades peligrosas, convalidando la investigación del Fiscal de la UFES.\r\n\r\nEl juez Gustavo Hidalgo señaló que el evento realizado en barrio Villa Warcalde el pasado 9 de julio del año 2020 distó de ser un “mero evento gastronómico” como sostenía la defensa y remarcó que fueron convocados al mismo tres DJ’S, pese a la expresa prohibición dispuesta por la autoridad administrativa en el marco de las flexibilizaciones dispuestas en el sector gastronómico. En este sentido, las autoridades municipales constataron “música a volumen estruendoso, la presencia de un DJ con una consola y varios parlantes ubicados por distintos lugares”. Así se corroboró lo que habían denunciado los vecinos de la zona, quienes alertaron a las autoridades policiales ante la magnitud del evento.'),
(2, 'Aspirantes a la magistratura deberán acreditar capacitación en perspectiva de género', 'El Consejo de la Magistratura de Córdoba ya venía interrogando sobre estos temas a quienes concursaban en la entrevista personal. También tomaba en cuenta este aspecto en la calificación final.', 'A través del Acuerdo n.° 22, el Consejo de la Magistratura de la Provincia dispuso que todas las personas que aspiren a concursar para cubrir vacantes en el Poder Judicial de Córdoba, en el momento de inscribirse, deberán acreditar haber cursado y aprobado la capacitación en género prevista por la Ley Micaela.\r\n\r\nDicha resolución también ordena que quienes integran el Consejo de la Magistratura, en calidad de consejeros, titulares y suplentes, como así también quienes formen parte de las salas examinadoras deberán acreditar su capacitación en género para poder participar en los concursos que el consejo organice. \r\n\r\n'),
(3, 'Ratifican la necesidad de asegurar la mayor prestación presencial posible en el servicio de justicia', 'La resolución de Administración General establece que, en su defecto y por razones de cumplimiento del protocolo sanitario, se reemplazará con la modalidad del teletrabajo', 'Por Resolución de la Administración General, en los términos de las instrucciones impartidas por el Tribunal Superior de Justicia (TSJ), se ratificó la necesidad de asegurar a partir del jueves 22 de julio la mayor prestación presencial posible en el servicio de justicia y que, en su defecto, se reemplace con la modalidad del teletrabajo. \r\n\r\nDicha resolución recuerda las disposiciones adoptadas por el TSJ y por la Administración General, en el sentido de asegurar la mayor presencialidad posible, según las disposiciones restrictivas sanitarias, en consonancia con la modalidad del teletrabajo, a los fines de lograr la mayor eficacia, eficiencia y celeridad en el accionar judicial. \r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'monica', '81dc9bdb52d04dc20036dbd8313ed055');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
