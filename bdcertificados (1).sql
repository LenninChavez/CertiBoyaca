-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2018 a las 00:08:49
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcertificados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificados`
--

CREATE TABLE `certificados` (
  `id` int(11) NOT NULL,
  `ciudadano_id` int(11) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `fecha_revision` date DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `user_registro` int(11) DEFAULT NULL,
  `user_aprueba` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `certificados`
--

INSERT INTO `certificados` (`id`, `ciudadano_id`, `fecha_registro`, `estado`, `fecha_revision`, `numero`, `user_registro`, `user_aprueba`) VALUES
(1, 1, '2018-05-02', 2, '2018-05-02', '001', 1, 2),
(2, 2, '2018-05-02', 2, '2018-05-02', '001', 2, 2),
(3, 3, '2018-05-02', 2, '2018-05-08', '002', 2, 2),
(4, 4, '2018-05-02', 1, '2018-05-08', '003', 2, 2),
(5, 5, '2018-05-07', 2, '2018-05-08', '004', 1, 2),
(6, 6, '2018-05-07', 2, '2018-05-07', '005', 2, 2),
(7, 7, '2018-05-08', 2, '2018-05-08', '006', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudadanos`
--

CREATE TABLE `ciudadanos` (
  `id` int(11) NOT NULL,
  `primer_nombre` varchar(100) DEFAULT NULL,
  `segundo_nombre` varchar(100) DEFAULT NULL,
  `primer_apellido` varchar(100) DEFAULT NULL,
  `segundo_apellido` varchar(100) DEFAULT NULL,
  `identificacion` varchar(45) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `sisben` tinyint(1) DEFAULT NULL,
  `certificado_electoral` tinyint(1) DEFAULT NULL,
  `certificado_jac` tinyint(1) DEFAULT NULL,
  `otros_soportes` tinyint(1) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `tramite_id` int(11) DEFAULT NULL,
  `observaciones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudadanos`
--

INSERT INTO `ciudadanos` (`id`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `identificacion`, `departamento_id`, `municipio_id`, `direccion`, `correo`, `sisben`, `certificado_electoral`, `certificado_jac`, `otros_soportes`, `usuario_id`, `tramite_id`, `observaciones`) VALUES
(1, 'luis', 'santiago', 'galdoz', 'mamani', '12312312', 6, 274, 'barrio de colonia', 'luis@gmail.com', 1, 1, 0, 1, 1, 1, 'Todo esta conforme'),
(2, 'karla', 'edit', 'manrique', 'sanchez', '12312323', 6, 274, 'calle callao 340', 'karla@gmail.com', 0, 1, 1, 1, 2, 1, 'todo conforme '),
(3, 'yeny', 'viviana', 'mamani', 'fuentes', '12312343', 3, 128, 'calle moquegua 340', 'yeny@gmail.com', 0, 1, 1, 1, 2, 1, 'todo esta bien'),
(4, 'julio', 'jorge', 'gonzales', 'sanches', '12312344', 2, 4, 'calle arica', 'julio@gmail.com', 0, 1, 1, 1, 2, 1, 'todo esta bien'),
(5, 'juan', 'jorge', 'llanos', 'quispe', '46766565', 6, 274, 'Barrio Mirafloes', 'juan@gmail.com', 1, 1, 1, 1, 1, 1, 'Todo esta conforme'),
(6, 'maria', 'luisa', 'perez', 'alarcon', '12312122', 2, 70, 'brisa de magdalena bajo', 'maria@gmail.com', 1, 1, 0, 1, 2, 1, 'todo esta correcto'),
(7, 'Karla', 'maria', 'rodireguez', 'gonzales', '45787878', 2, 6, 'barrio las malvinas', 'karla@gmail.com', 1, 1, 1, 0, 2, 1, 'todo esta correcto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bolívar'),
(6, 'Boyacá'),
(7, 'Caldas'),
(8, 'Caquetá'),
(9, 'Casanare'),
(10, 'Cauca'),
(11, 'Cesar'),
(12, 'Chocó'),
(13, 'Córdoba'),
(14, 'Cundinamarca'),
(15, 'Güainia'),
(16, 'Guaviare'),
(17, 'Huila'),
(18, 'La Guajira'),
(19, 'Magdalena'),
(20, 'Meta'),
(21, 'Nariño'),
(22, 'Norte de Santander'),
(23, 'Putumayo'),
(24, 'Quindio'),
(25, 'Risaralda'),
(26, 'San Andrés y Providencia'),
(27, 'Santander'),
(28, 'Sucre'),
(29, 'Tolima'),
(30, 'Valle del Cauca'),
(31, 'Vaupés'),
(32, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `nombre`, `departamento_id`) VALUES
(1, 'Leticia', 1),
(2, 'Puerto Nariño', 1),
(3, 'Abejorral', 2),
(4, 'Abriaquí', 2),
(5, 'Alejandria', 2),
(6, 'Amagá', 2),
(7, 'Amalfi', 2),
(8, 'Andes', 2),
(9, 'Angelópolis', 2),
(10, 'Angostura', 2),
(11, 'Anorí', 2),
(12, 'Anzá', 2),
(13, 'Apartadó', 2),
(14, 'Arboletes', 2),
(15, 'Argelia', 2),
(16, 'Armenia', 2),
(17, 'Barbosa', 2),
(18, 'Bello', 2),
(19, 'Belmira', 2),
(20, 'Betania', 2),
(21, 'Betulia', 2),
(22, 'Bolívar', 2),
(23, 'Briceño', 2),
(24, 'Burítica', 2),
(25, 'Caicedo', 2),
(26, 'Caldas', 2),
(27, 'Campamento', 2),
(28, 'Caracolí', 2),
(29, 'Caramanta', 2),
(30, 'Carepa', 2),
(31, 'Carmen de Viboral', 2),
(32, 'Carolina', 2),
(33, 'Caucasia', 2),
(34, 'Cañasgordas', 2),
(35, 'Chigorodó', 2),
(36, 'Cisneros', 2),
(37, 'Cocorná', 2),
(38, 'Concepción', 2),
(39, 'Concordia', 2),
(40, 'Copacabana', 2),
(41, 'Cáceres', 2),
(42, 'Dabeiba', 2),
(43, 'Don Matías', 2),
(44, 'Ebéjico', 2),
(45, 'El Bagre', 2),
(46, 'Entrerríos', 2),
(47, 'Envigado', 2),
(48, 'Fredonia', 2),
(49, 'Frontino', 2),
(50, 'Giraldo', 2),
(51, 'Girardota', 2),
(52, 'Granada', 2),
(53, 'Guadalupe', 2),
(54, 'Guarne', 2),
(55, 'Guatapé', 2),
(56, 'Gómez Plata', 2),
(57, 'Heliconia', 2),
(58, 'Hispania', 2),
(59, 'Itagüí', 2),
(60, 'Ituango', 2),
(61, 'Jardín', 2),
(62, 'Jericó', 2),
(63, 'La Ceja', 2),
(64, 'La Estrella', 2),
(65, 'La Pintada', 2),
(66, 'La Unión', 2),
(67, 'Liborina', 2),
(68, 'Maceo', 2),
(69, 'Marinilla', 2),
(70, 'Medellín', 2),
(71, 'Montebello', 2),
(72, 'Murindó', 2),
(73, 'Mutatá', 2),
(74, 'Nariño', 2),
(75, 'Nechí', 2),
(76, 'Necoclí', 2),
(77, 'Olaya', 2),
(78, 'Peque', 2),
(79, 'Peñol', 2),
(80, 'Pueblorrico', 2),
(81, 'Puerto Berrío', 2),
(82, 'Puerto Nare', 2),
(83, 'Puerto Triunfo', 2),
(84, 'Remedios', 2),
(85, 'Retiro', 2),
(86, 'Ríonegro', 2),
(87, 'Sabanalarga', 2),
(88, 'Sabaneta', 2),
(89, 'Salgar', 2),
(90, 'San Andrés de Cuerquía', 2),
(91, 'San Carlos', 2),
(92, 'San Francisco', 2),
(93, 'San Jerónimo', 2),
(94, 'San José de Montaña', 2),
(95, 'San Juan de Urabá', 2),
(96, 'San Luís', 2),
(97, 'San Pedro', 2),
(98, 'San Pedro de Urabá', 2),
(99, 'San Rafael', 2),
(100, 'San Roque', 2),
(101, 'San Vicente', 2),
(102, 'Santa Bárbara', 2),
(103, 'Santa Fé de Antioquia', 2),
(104, 'Santa Rosa de Osos', 2),
(105, 'Santo Domingo', 2),
(106, 'Santuario', 2),
(107, 'Segovia', 2),
(108, 'Sonsón', 2),
(109, 'Sopetrán', 2),
(110, 'Tarazá', 2),
(111, 'Tarso', 2),
(112, 'Titiribí', 2),
(113, 'Toledo', 2),
(114, 'Turbo', 2),
(115, 'Támesis', 2),
(116, 'Uramita', 2),
(117, 'Urrao', 2),
(118, 'Valdivia', 2),
(119, 'Valparaiso', 2),
(120, 'Vegachí', 2),
(121, 'Venecia', 2),
(122, 'Vigía del Fuerte', 2),
(123, 'Yalí', 2),
(124, 'Yarumal', 2),
(125, 'Yolombó', 2),
(126, 'Yondó (Casabe)', 2),
(127, 'Zaragoza', 2),
(128, 'Arauca', 3),
(129, 'Arauquita', 3),
(130, 'Cravo Norte', 3),
(131, 'Fortúl', 3),
(132, 'Puerto Rondón', 3),
(133, 'Saravena', 3),
(134, 'Tame', 3),
(135, 'Baranoa', 4),
(136, 'Barranquilla', 4),
(137, 'Campo de la Cruz', 4),
(138, 'Candelaria', 4),
(139, 'Galapa', 4),
(140, 'Juan de Acosta', 4),
(141, 'Luruaco', 4),
(142, 'Malambo', 4),
(143, 'Manatí', 4),
(144, 'Palmar de Varela', 4),
(145, 'Piojo', 4),
(146, 'Polonuevo', 4),
(147, 'Ponedera', 4),
(148, 'Puerto Colombia', 4),
(149, 'Repelón', 4),
(150, 'Sabanagrande', 4),
(151, 'Sabanalarga', 4),
(152, 'Santa Lucía', 4),
(153, 'Santo Tomás', 4),
(154, 'Soledad', 4),
(155, 'Suan', 4),
(156, 'Tubará', 4),
(157, 'Usiacuri', 4),
(158, 'Achí', 5),
(159, 'Altos del Rosario', 5),
(160, 'Arenal', 5),
(161, 'Arjona', 5),
(162, 'Arroyohondo', 5),
(163, 'Barranco de Loba', 5),
(164, 'Calamar', 5),
(165, 'Cantagallo', 5),
(166, 'Cartagena', 5),
(167, 'Cicuco', 5),
(168, 'Clemencia', 5),
(169, 'Córdoba', 5),
(170, 'El Carmen de Bolívar', 5),
(171, 'El Guamo', 5),
(172, 'El Peñon', 5),
(173, 'Hatillo de Loba', 5),
(174, 'Magangué', 5),
(175, 'Mahates', 5),
(176, 'Margarita', 5),
(177, 'María la Baja', 5),
(178, 'Mompós', 5),
(179, 'Montecristo', 5),
(180, 'Morales', 5),
(181, 'Norosí', 5),
(182, 'Pinillos', 5),
(183, 'Regidor', 5),
(184, 'Río Viejo', 5),
(185, 'San Cristobal', 5),
(186, 'San Estanislao', 5),
(187, 'San Fernando', 5),
(188, 'San Jacinto', 5),
(189, 'San Jacinto del Cauca', 5),
(190, 'San Juan de Nepomuceno', 5),
(191, 'San Martín de Loba', 5),
(192, 'San Pablo', 5),
(193, 'Santa Catalina', 5),
(194, 'Santa Rosa ', 5),
(195, 'Santa Rosa del Sur', 5),
(196, 'Simití', 5),
(197, 'Soplaviento', 5),
(198, 'Talaigua Nuevo', 5),
(199, 'Tiquisio (Puerto Rico)', 5),
(200, 'Turbaco', 5),
(201, 'Turbaná', 5),
(202, 'Villanueva', 5),
(203, 'Zambrano', 5),
(204, 'Almeida', 6),
(205, 'Aquitania', 6),
(206, 'Arcabuco', 6),
(207, 'Belén', 6),
(208, 'Berbeo', 6),
(209, 'Beteitiva', 6),
(210, 'Boavita', 6),
(211, 'Boyacá', 6),
(212, 'Briceño', 6),
(213, 'Buenavista', 6),
(214, 'Busbanza', 6),
(215, 'Caldas', 6),
(216, 'Campohermoso', 6),
(217, 'Cerinza', 6),
(218, 'Chinavita', 6),
(219, 'Chiquinquirá', 6),
(220, 'Chiscas', 6),
(221, 'Chita', 6),
(222, 'Chitaraque', 6),
(223, 'Chivatá', 6),
(224, 'Chíquiza', 6),
(225, 'Chívor', 6),
(226, 'Ciénaga', 6),
(227, 'Coper', 6),
(228, 'Corrales', 6),
(229, 'Covarachía', 6),
(230, 'Cubará', 6),
(231, 'Cucaita', 6),
(232, 'Cuitiva', 6),
(233, 'Cómbita', 6),
(234, 'Duitama', 6),
(235, 'El Cocuy', 6),
(236, 'El Espino', 6),
(237, 'Firavitoba', 6),
(238, 'Floresta', 6),
(239, 'Gachantivá', 6),
(240, 'Garagoa', 6),
(241, 'Guacamayas', 6),
(242, 'Guateque', 6),
(243, 'Guayatá', 6),
(244, 'Guicán', 6),
(245, 'Gámeza', 6),
(246, 'Izá', 6),
(247, 'Jenesano', 6),
(248, 'Jericó', 6),
(249, 'La Capilla', 6),
(250, 'La Uvita', 6),
(251, 'La Victoria', 6),
(252, 'Labranzagrande', 6),
(253, 'Macanal', 6),
(254, 'Maripí', 6),
(255, 'Miraflores', 6),
(256, 'Mongua', 6),
(257, 'Monguí', 6),
(258, 'Moniquirá', 6),
(259, 'Motavita', 6),
(260, 'Muzo', 6),
(261, 'Nobsa', 6),
(262, 'Nuevo Colón', 6),
(263, 'Oicatá', 6),
(264, 'Otanche', 6),
(265, 'Pachavita', 6),
(266, 'Paipa', 6),
(267, 'Pajarito', 6),
(268, 'Panqueba', 6),
(269, 'Pauna', 6),
(270, 'Paya', 6),
(271, 'Paz de Río', 6),
(272, 'Pesca', 6),
(273, 'Pisva', 6),
(274, 'Puerto Boyacá', 6),
(275, 'Páez', 6),
(276, 'Quipama', 6),
(277, 'Ramiriquí', 6),
(278, 'Rondón', 6),
(279, 'Ráquira', 6),
(280, 'Saboyá', 6),
(281, 'Samacá', 6),
(282, 'San Eduardo', 6),
(283, 'San José de Pare', 6),
(284, 'San Luís de Gaceno', 6),
(285, 'San Mateo', 6),
(286, 'San Miguel de Sema', 6),
(287, 'San Pablo de Borbur', 6),
(288, 'Santa María', 6),
(289, 'Santa Rosa de Viterbo', 6),
(290, 'Santa Sofía', 6),
(291, 'Santana', 6),
(292, 'Sativanorte', 6),
(293, 'Sativasur', 6),
(294, 'Siachoque', 6),
(295, 'Soatá', 6),
(296, 'Socha', 6),
(297, 'Socotá', 6),
(298, 'Sogamoso', 6),
(299, 'Somondoco', 6),
(300, 'Sora', 6),
(301, 'Soracá', 6),
(302, 'Sotaquirá', 6),
(303, 'Susacón', 6),
(304, 'Sutamarchán', 6),
(305, 'Sutatenza', 6),
(306, 'Sáchica', 6),
(307, 'Tasco', 6),
(308, 'Tenza', 6),
(309, 'Tibaná', 6),
(310, 'Tibasosa', 6),
(311, 'Tinjacá', 6),
(312, 'Tipacoque', 6),
(313, 'Toca', 6),
(314, 'Toguí', 6),
(315, 'Topagá', 6),
(316, 'Tota', 6),
(317, 'Tunja', 6),
(318, 'Tunungua', 6),
(319, 'Turmequé', 6),
(320, 'Tuta', 6),
(321, 'Tutasá', 6),
(322, 'Ventaquemada', 6),
(323, 'Villa de Leiva', 6),
(324, 'Viracachá', 6),
(325, 'Zetaquirá', 6),
(326, 'Úmbita', 6),
(327, 'Aguadas', 7),
(328, 'Anserma', 7),
(329, 'Aranzazu', 7),
(330, 'Belalcázar', 7),
(331, 'Chinchiná', 7),
(332, 'Filadelfia', 7),
(333, 'La Dorada', 7),
(334, 'La Merced', 7),
(335, 'La Victoria', 7),
(336, 'Manizales', 7),
(337, 'Manzanares', 7),
(338, 'Marmato', 7),
(339, 'Marquetalia', 7),
(340, 'Marulanda', 7),
(341, 'Neira', 7),
(342, 'Norcasia', 7),
(343, 'Palestina', 7),
(344, 'Pensilvania', 7),
(345, 'Pácora', 7),
(346, 'Risaralda', 7),
(347, 'Río Sucio', 7),
(348, 'Salamina', 7),
(349, 'Samaná', 7),
(350, 'San José', 7),
(351, 'Supía', 7),
(352, 'Villamaría', 7),
(353, 'Viterbo', 7),
(354, 'Albania', 8),
(355, 'Belén de los Andaquíes', 8),
(356, 'Cartagena del Chairá', 8),
(357, 'Curillo', 8),
(358, 'El Doncello', 8),
(359, 'El Paujil', 8),
(360, 'Florencia', 8),
(361, 'La Montañita', 8),
(362, 'Milán', 8),
(363, 'Morelia', 8),
(364, 'Puerto Rico', 8),
(365, 'San José del Fragua', 8),
(366, 'San Vicente del Caguán', 8),
(367, 'Solano', 8),
(368, 'Solita', 8),
(369, 'Valparaiso', 8),
(370, 'Aguazul', 9),
(371, 'Chámeza', 9),
(372, 'Hato Corozal', 9),
(373, 'La Salina', 9),
(374, 'Maní', 9),
(375, 'Monterrey', 9),
(376, 'Nunchía', 9),
(377, 'Orocué', 9),
(378, 'Paz de Ariporo', 9),
(379, 'Pore', 9),
(380, 'Recetor', 9),
(381, 'Sabanalarga', 9),
(382, 'San Luís de Palenque', 9),
(383, 'Sácama', 9),
(384, 'Tauramena', 9),
(385, 'Trinidad', 9),
(386, 'Támara', 9),
(387, 'Villanueva', 9),
(388, 'Yopal', 9),
(389, 'Almaguer', 10),
(390, 'Argelia', 10),
(391, 'Balboa', 10),
(392, 'Bolívar', 10),
(393, 'Buenos Aires', 10),
(394, 'Cajibío', 10),
(395, 'Caldono', 10),
(396, 'Caloto', 10),
(397, 'Corinto', 10),
(398, 'El Tambo', 10),
(399, 'Florencia', 10),
(400, 'Guachené', 10),
(401, 'Guapí', 10),
(402, 'Inzá', 10),
(403, 'Jambaló', 10),
(404, 'La Sierra', 10),
(405, 'La Vega', 10),
(406, 'López (Micay)', 10),
(407, 'Mercaderes', 10),
(408, 'Miranda', 10),
(409, 'Morales', 10),
(410, 'Padilla', 10),
(411, 'Patía (El Bordo)', 10),
(412, 'Piamonte', 10),
(413, 'Piendamó', 10),
(414, 'Popayán', 10),
(415, 'Puerto Tejada', 10),
(416, 'Puracé (Coconuco)', 10),
(417, 'Páez (Belalcazar)', 10),
(418, 'Rosas', 10),
(419, 'San Sebastián', 10),
(420, 'Santa Rosa', 10),
(421, 'Santander de Quilichao', 10),
(422, 'Silvia', 10),
(423, 'Sotara (Paispamba)', 10),
(424, 'Sucre', 10),
(425, 'Suárez', 10),
(426, 'Timbiquí', 10),
(427, 'Timbío', 10),
(428, 'Toribío', 10),
(429, 'Totoró', 10),
(430, 'Villa Rica', 10),
(431, 'Aguachica', 11),
(432, 'Agustín Codazzi', 11),
(433, 'Astrea', 11),
(434, 'Becerríl', 11),
(435, 'Bosconia', 11),
(436, 'Chimichagua', 11),
(437, 'Chiriguaná', 11),
(438, 'Curumaní', 11),
(439, 'El Copey', 11),
(440, 'El Paso', 11),
(441, 'Gamarra', 11),
(442, 'Gonzalez', 11),
(443, 'La Gloria', 11),
(444, 'La Jagua de Ibirico', 11),
(445, 'La Paz (Robles)', 11),
(446, 'Manaure Balcón del Cesar', 11),
(447, 'Pailitas', 11),
(448, 'Pelaya', 11),
(449, 'Pueblo Bello', 11),
(450, 'Río de oro', 11),
(451, 'San Alberto', 11),
(452, 'San Diego', 11),
(453, 'San Martín', 11),
(454, 'Tamalameque', 11),
(455, 'Valledupar', 11),
(456, 'Acandí', 12),
(457, 'Alto Baudó (Pie de Pato)', 12),
(458, 'Atrato (Yuto)', 12),
(459, 'Bagadó', 12),
(460, 'Bahía Solano (Mútis)', 12),
(461, 'Bajo Baudó (Pizarro)', 12),
(462, 'Belén de Bajirá', 12),
(463, 'Bojayá (Bellavista)', 12),
(464, 'Cantón de San Pablo', 12),
(465, 'Carmen del Darién (CURBARADÓ)', 12),
(466, 'Condoto', 12),
(467, 'Cértegui', 12),
(468, 'El Carmen de Atrato', 12),
(469, 'Istmina', 12),
(470, 'Juradó', 12),
(471, 'Lloró', 12),
(472, 'Medio Atrato', 12),
(473, 'Medio Baudó', 12),
(474, 'Medio San Juan (ANDAGOYA)', 12),
(475, 'Novita', 12),
(476, 'Nuquí', 12),
(477, 'Quibdó', 12),
(478, 'Río Iró', 12),
(479, 'Río Quito', 12),
(480, 'Ríosucio', 12),
(481, 'San José del Palmar', 12),
(482, 'Santa Genoveva de Docorodó', 12),
(483, 'Sipí', 12),
(484, 'Tadó', 12),
(485, 'Unguía', 12),
(486, 'Unión Panamericana (ÁNIMAS)', 12),
(487, 'Ayapel', 13),
(488, 'Buenavista', 13),
(489, 'Canalete', 13),
(490, 'Cereté', 13),
(491, 'Chimá', 13),
(492, 'Chinú', 13),
(493, 'Ciénaga de Oro', 13),
(494, 'Cotorra', 13),
(495, 'La Apartada y La Frontera', 13),
(496, 'Lorica', 13),
(497, 'Los Córdobas', 13),
(498, 'Momil', 13),
(499, 'Montelíbano', 13),
(500, 'Monteria', 13),
(501, 'Moñitos', 13),
(502, 'Planeta Rica', 13),
(503, 'Pueblo Nuevo', 13),
(504, 'Puerto Escondido', 13),
(505, 'Puerto Libertador', 13),
(506, 'Purísima', 13),
(507, 'Sahagún', 13),
(508, 'San Andrés Sotavento', 13),
(509, 'San Antero', 13),
(510, 'San Bernardo del Viento', 13),
(511, 'San Carlos', 13),
(512, 'San José de Uré', 13),
(513, 'San Pelayo', 13),
(514, 'Tierralta', 13),
(515, 'Tuchín', 13),
(516, 'Valencia', 13),
(517, 'Agua de Dios', 14),
(518, 'Albán', 14),
(519, 'Anapoima', 14),
(520, 'Anolaima', 14),
(521, 'Apulo', 14),
(522, 'Arbeláez', 14),
(523, 'Beltrán', 14),
(524, 'Bituima', 14),
(525, 'Bogotá D.C.', 14),
(526, 'Bojacá', 14),
(527, 'Cabrera', 14),
(528, 'Cachipay', 14),
(529, 'Cajicá', 14),
(530, 'Caparrapí', 14),
(531, 'Carmen de Carupa', 14),
(532, 'Chaguaní', 14),
(533, 'Chipaque', 14),
(534, 'Choachí', 14),
(535, 'Chocontá', 14),
(536, 'Chía', 14),
(537, 'Cogua', 14),
(538, 'Cota', 14),
(539, 'Cucunubá', 14),
(540, 'Cáqueza', 14),
(541, 'El Colegio', 14),
(542, 'El Peñón', 14),
(543, 'El Rosal', 14),
(544, 'Facatativá', 14),
(545, 'Fosca', 14),
(546, 'Funza', 14),
(547, 'Fusagasugá', 14),
(548, 'Fómeque', 14),
(549, 'Fúquene', 14),
(550, 'Gachalá', 14),
(551, 'Gachancipá', 14),
(552, 'Gachetá', 14),
(553, 'Gama', 14),
(554, 'Girardot', 14),
(555, 'Granada', 14),
(556, 'Guachetá', 14),
(557, 'Guaduas', 14),
(558, 'Guasca', 14),
(559, 'Guataquí', 14),
(560, 'Guatavita', 14),
(561, 'Guayabal de Siquima', 14),
(562, 'Guayabetal', 14),
(563, 'Gutiérrez', 14),
(564, 'Jerusalén', 14),
(565, 'Junín', 14),
(566, 'La Calera', 14),
(567, 'La Mesa', 14),
(568, 'La Palma', 14),
(569, 'La Peña', 14),
(570, 'La Vega', 14),
(571, 'Lenguazaque', 14),
(572, 'Machetá', 14),
(573, 'Madrid', 14),
(574, 'Manta', 14),
(575, 'Medina', 14),
(576, 'Mosquera', 14),
(577, 'Nariño', 14),
(578, 'Nemocón', 14),
(579, 'Nilo', 14),
(580, 'Nimaima', 14),
(581, 'Nocaima', 14),
(582, 'Pacho', 14),
(583, 'Paime', 14),
(584, 'Pandi', 14),
(585, 'Paratebueno', 14),
(586, 'Pasca', 14),
(587, 'Puerto Salgar', 14),
(588, 'Pulí', 14),
(589, 'Quebradanegra', 14),
(590, 'Quetame', 14),
(591, 'Quipile', 14),
(592, 'Ricaurte', 14),
(593, 'San Antonio de Tequendama', 14),
(594, 'San Bernardo', 14),
(595, 'San Cayetano', 14),
(596, 'San Francisco', 14),
(597, 'San Juan de Río Seco', 14),
(598, 'Sasaima', 14),
(599, 'Sesquilé', 14),
(600, 'Sibaté', 14),
(601, 'Silvania', 14),
(602, 'Simijaca', 14),
(603, 'Soacha', 14),
(604, 'Sopó', 14),
(605, 'Subachoque', 14),
(606, 'Suesca', 14),
(607, 'Supatá', 14),
(608, 'Susa', 14),
(609, 'Sutatausa', 14),
(610, 'Tabio', 14),
(611, 'Tausa', 14),
(612, 'Tena', 14),
(613, 'Tenjo', 14),
(614, 'Tibacuy', 14),
(615, 'Tibirita', 14),
(616, 'Tocaima', 14),
(617, 'Tocancipá', 14),
(618, 'Topaipí', 14),
(619, 'Ubalá', 14),
(620, 'Ubaque', 14),
(621, 'Ubaté', 14),
(622, 'Une', 14),
(623, 'Venecia (Ospina Pérez)', 14),
(624, 'Vergara', 14),
(625, 'Viani', 14),
(626, 'Villagómez', 14),
(627, 'Villapinzón', 14),
(628, 'Villeta', 14),
(629, 'Viotá', 14),
(630, 'Yacopí', 14),
(631, 'Zipacón', 14),
(632, 'Zipaquirá', 14),
(633, 'Útica', 14),
(634, 'Inírida', 15),
(635, 'Calamar', 16),
(636, 'El Retorno', 16),
(637, 'Miraflores', 16),
(638, 'San José del Guaviare', 16),
(639, 'Acevedo', 17),
(640, 'Agrado', 17),
(641, 'Aipe', 17),
(642, 'Algeciras', 17),
(643, 'Altamira', 17),
(644, 'Baraya', 17),
(645, 'Campoalegre', 17),
(646, 'Colombia', 17),
(647, 'Elías', 17),
(648, 'Garzón', 17),
(649, 'Gigante', 17),
(650, 'Guadalupe', 17),
(651, 'Hobo', 17),
(652, 'Isnos', 17),
(653, 'La Argentina', 17),
(654, 'La Plata', 17),
(655, 'Neiva', 17),
(656, 'Nátaga', 17),
(657, 'Oporapa', 17),
(658, 'Paicol', 17),
(659, 'Palermo', 17),
(660, 'Palestina', 17),
(661, 'Pital', 17),
(662, 'Pitalito', 17),
(663, 'Rivera', 17),
(664, 'Saladoblanco', 17),
(665, 'San Agustín', 17),
(666, 'Santa María', 17),
(667, 'Suaza', 17),
(668, 'Tarqui', 17),
(669, 'Tello', 17),
(670, 'Teruel', 17),
(671, 'Tesalia', 17),
(672, 'Timaná', 17),
(673, 'Villavieja', 17),
(674, 'Yaguará', 17),
(675, 'Íquira', 17),
(676, 'Albania', 18),
(677, 'Barrancas', 18),
(678, 'Dibulla', 18),
(679, 'Distracción', 18),
(680, 'El Molino', 18),
(681, 'Fonseca', 18),
(682, 'Hatonuevo', 18),
(683, 'La Jagua del Pilar', 18),
(684, 'Maicao', 18),
(685, 'Manaure', 18),
(686, 'Riohacha', 18),
(687, 'San Juan del Cesar', 18),
(688, 'Uribia', 18),
(689, 'Urumita', 18),
(690, 'Villanueva', 18),
(691, 'Algarrobo', 19),
(692, 'Aracataca', 19),
(693, 'Ariguaní (El Difícil)', 19),
(694, 'Cerro San Antonio', 19),
(695, 'Chivolo', 19),
(696, 'Ciénaga', 19),
(697, 'Concordia', 19),
(698, 'El Banco', 19),
(699, 'El Piñon', 19),
(700, 'El Retén', 19),
(701, 'Fundación', 19),
(702, 'Guamal', 19),
(703, 'Nueva Granada', 19),
(704, 'Pedraza', 19),
(705, 'Pijiño', 19),
(706, 'Pivijay', 19),
(707, 'Plato', 19),
(708, 'Puebloviejo', 19),
(709, 'Remolino', 19),
(710, 'Sabanas de San Angel (SAN ANGEL)', 19),
(711, 'Salamina', 19),
(712, 'San Sebastián de Buenavista', 19),
(713, 'San Zenón', 19),
(714, 'Santa Ana', 19),
(715, 'Santa Bárbara de Pinto', 19),
(716, 'Santa Marta', 19),
(717, 'Sitionuevo', 19),
(718, 'Tenerife', 19),
(719, 'Zapayán (PUNTA DE PIEDRAS)', 19),
(720, 'Zona Bananera (PRADO - SEVILLA)', 19),
(721, 'Acacías', 20),
(722, 'Barranca de Upía', 20),
(723, 'Cabuyaro', 20),
(724, 'Castilla la Nueva', 20),
(725, 'Cubarral', 20),
(726, 'Cumaral', 20),
(727, 'El Calvario', 20),
(728, 'El Castillo', 20),
(729, 'El Dorado', 20),
(730, 'Fuente de Oro', 20),
(731, 'Granada', 20),
(732, 'Guamal', 20),
(733, 'La Macarena', 20),
(734, 'Lejanías', 20),
(735, 'Mapiripan', 20),
(736, 'Mesetas', 20),
(737, 'Puerto Concordia', 20),
(738, 'Puerto Gaitán', 20),
(739, 'Puerto Lleras', 20),
(740, 'Puerto López', 20),
(741, 'Puerto Rico', 20),
(742, 'Restrepo', 20),
(743, 'San Carlos de Guaroa', 20),
(744, 'San Juan de Arama', 20),
(745, 'San Juanito', 20),
(746, 'San Martín', 20),
(747, 'Uribe', 20),
(748, 'Villavicencio', 20),
(749, 'Vista Hermosa', 20),
(750, 'Albán (San José)', 21),
(751, 'Aldana', 21),
(752, 'Ancuya', 21),
(753, 'Arboleda (Berruecos)', 21),
(754, 'Barbacoas', 21),
(755, 'Belén', 21),
(756, 'Buesaco', 21),
(757, 'Chachaguí', 21),
(758, 'Colón (Génova)', 21),
(759, 'Consaca', 21),
(760, 'Contadero', 21),
(761, 'Cuaspud (Carlosama)', 21),
(762, 'Cumbal', 21),
(763, 'Cumbitara', 21),
(764, 'Córdoba', 21),
(765, 'El Charco', 21),
(766, 'El Peñol', 21),
(767, 'El Rosario', 21),
(768, 'El Tablón de Gómez', 21),
(769, 'El Tambo', 21),
(770, 'Francisco Pizarro', 21),
(771, 'Funes', 21),
(772, 'Guachavés', 21),
(773, 'Guachucal', 21),
(774, 'Guaitarilla', 21),
(775, 'Gualmatán', 21),
(776, 'Iles', 21),
(777, 'Imúes', 21),
(778, 'Ipiales', 21),
(779, 'La Cruz', 21),
(780, 'La Florida', 21),
(781, 'La Llanada', 21),
(782, 'La Tola', 21),
(783, 'La Unión', 21),
(784, 'Leiva', 21),
(785, 'Linares', 21),
(786, 'Magüi (Payán)', 21),
(787, 'Mallama (Piedrancha)', 21),
(788, 'Mosquera', 21),
(789, 'Nariño', 21),
(790, 'Olaya Herrera', 21),
(791, 'Ospina', 21),
(792, 'Policarpa', 21),
(793, 'Potosí', 21),
(794, 'Providencia', 21),
(795, 'Puerres', 21),
(796, 'Pupiales', 21),
(797, 'Ricaurte', 21),
(798, 'Roberto Payán (San José)', 21),
(799, 'Samaniego', 21),
(800, 'San Bernardo', 21),
(801, 'San Juan de Pasto', 21),
(802, 'San Lorenzo', 21),
(803, 'San Pablo', 21),
(804, 'San Pedro de Cartago', 21),
(805, 'Sandoná', 21),
(806, 'Santa Bárbara (Iscuandé)', 21),
(807, 'Sapuyes', 21),
(808, 'Sotomayor (Los Andes)', 21),
(809, 'Taminango', 21),
(810, 'Tangua', 21),
(811, 'Tumaco', 21),
(812, 'Túquerres', 21),
(813, 'Yacuanquer', 21),
(814, 'Arboledas', 22),
(815, 'Bochalema', 22),
(816, 'Bucarasica', 22),
(817, 'Chinácota', 22),
(818, 'Chitagá', 22),
(819, 'Convención', 22),
(820, 'Cucutilla', 22),
(821, 'Cáchira', 22),
(822, 'Cácota', 22),
(823, 'Cúcuta', 22),
(824, 'Durania', 22),
(825, 'El Carmen', 22),
(826, 'El Tarra', 22),
(827, 'El Zulia', 22),
(828, 'Gramalote', 22),
(829, 'Hacarí', 22),
(830, 'Herrán', 22),
(831, 'La Esperanza', 22),
(832, 'La Playa', 22),
(833, 'Labateca', 22),
(834, 'Los Patios', 22),
(835, 'Lourdes', 22),
(836, 'Mutiscua', 22),
(837, 'Ocaña', 22),
(838, 'Pamplona', 22),
(839, 'Pamplonita', 22),
(840, 'Puerto Santander', 22),
(841, 'Ragonvalia', 22),
(842, 'Salazar', 22),
(843, 'San Calixto', 22),
(844, 'San Cayetano', 22),
(845, 'Santiago', 22),
(846, 'Sardinata', 22),
(847, 'Silos', 22),
(848, 'Teorama', 22),
(849, 'Tibú', 22),
(850, 'Toledo', 22),
(851, 'Villa Caro', 22),
(852, 'Villa del Rosario', 22),
(853, 'Ábrego', 22),
(854, 'Colón', 23),
(855, 'Mocoa', 23),
(856, 'Orito', 23),
(857, 'Puerto Asís', 23),
(858, 'Puerto Caicedo', 23),
(859, 'Puerto Guzmán', 23),
(860, 'Puerto Leguízamo', 23),
(861, 'San Francisco', 23),
(862, 'San Miguel', 23),
(863, 'Santiago', 23),
(864, 'Sibundoy', 23),
(865, 'Valle del Guamuez', 23),
(866, 'Villagarzón', 23),
(867, 'Armenia', 24),
(868, 'Buenavista', 24),
(869, 'Calarcá', 24),
(870, 'Circasia', 24),
(871, 'Cordobá', 24),
(872, 'Filandia', 24),
(873, 'Génova', 24),
(874, 'La Tebaida', 24),
(875, 'Montenegro', 24),
(876, 'Pijao', 24),
(877, 'Quimbaya', 24),
(878, 'Salento', 24),
(879, 'Apía', 25),
(880, 'Balboa', 25),
(881, 'Belén de Umbría', 25),
(882, 'Dos Quebradas', 25),
(883, 'Guática', 25),
(884, 'La Celia', 25),
(885, 'La Virginia', 25),
(886, 'Marsella', 25),
(887, 'Mistrató', 25),
(888, 'Pereira', 25),
(889, 'Pueblo Rico', 25),
(890, 'Quinchía', 25),
(891, 'Santa Rosa de Cabal', 25),
(892, 'Santuario', 25),
(893, 'Providencia', 26),
(894, 'Aguada', 27),
(895, 'Albania', 27),
(896, 'Aratoca', 27),
(897, 'Barbosa', 27),
(898, 'Barichara', 27),
(899, 'Barrancabermeja', 27),
(900, 'Betulia', 27),
(901, 'Bolívar', 27),
(902, 'Bucaramanga', 27),
(903, 'Cabrera', 27),
(904, 'California', 27),
(905, 'Capitanejo', 27),
(906, 'Carcasí', 27),
(907, 'Cepita', 27),
(908, 'Cerrito', 27),
(909, 'Charalá', 27),
(910, 'Charta', 27),
(911, 'Chima', 27),
(912, 'Chipatá', 27),
(913, 'Cimitarra', 27),
(914, 'Concepción', 27),
(915, 'Confines', 27),
(916, 'Contratación', 27),
(917, 'Coromoro', 27),
(918, 'Curití', 27),
(919, 'El Carmen', 27),
(920, 'El Guacamayo', 27),
(921, 'El Peñon', 27),
(922, 'El Playón', 27),
(923, 'Encino', 27),
(924, 'Enciso', 27),
(925, 'Floridablanca', 27),
(926, 'Florián', 27),
(927, 'Galán', 27),
(928, 'Girón', 27),
(929, 'Guaca', 27),
(930, 'Guadalupe', 27),
(931, 'Guapota', 27),
(932, 'Guavatá', 27),
(933, 'Guepsa', 27),
(934, 'Gámbita', 27),
(935, 'Hato', 27),
(936, 'Jesús María', 27),
(937, 'Jordán', 27),
(938, 'La Belleza', 27),
(939, 'La Paz', 27),
(940, 'Landázuri', 27),
(941, 'Lebrija', 27),
(942, 'Los Santos', 27),
(943, 'Macaravita', 27),
(944, 'Matanza', 27),
(945, 'Mogotes', 27),
(946, 'Molagavita', 27),
(947, 'Málaga', 27),
(948, 'Ocamonte', 27),
(949, 'Oiba', 27),
(950, 'Onzaga', 27),
(951, 'Palmar', 27),
(952, 'Palmas del Socorro', 27),
(953, 'Pie de Cuesta', 27),
(954, 'Pinchote', 27),
(955, 'Puente Nacional', 27),
(956, 'Puerto Parra', 27),
(957, 'Puerto Wilches', 27),
(958, 'Páramo', 27),
(959, 'Rio Negro', 27),
(960, 'Sabana de Torres', 27),
(961, 'San Andrés', 27),
(962, 'San Benito', 27),
(963, 'San Gíl', 27),
(964, 'San Joaquín', 27),
(965, 'San José de Miranda', 27),
(966, 'San Miguel', 27),
(967, 'San Vicente del Chucurí', 27),
(968, 'Santa Bárbara', 27),
(969, 'Santa Helena del Opón', 27),
(970, 'Simacota', 27),
(971, 'Socorro', 27),
(972, 'Suaita', 27),
(973, 'Sucre', 27),
(974, 'Suratá', 27),
(975, 'Tona', 27),
(976, 'Valle de San José', 27),
(977, 'Vetas', 27),
(978, 'Villanueva', 27),
(979, 'Vélez', 27),
(980, 'Zapatoca', 27),
(981, 'Buenavista', 28),
(982, 'Caimito', 28),
(983, 'Chalán', 28),
(984, 'Colosó (Ricaurte)', 28),
(985, 'Corozal', 28),
(986, 'Coveñas', 28),
(987, 'El Roble', 28),
(988, 'Galeras (Nueva Granada)', 28),
(989, 'Guaranda', 28),
(990, 'La Unión', 28),
(991, 'Los Palmitos', 28),
(992, 'Majagual', 28),
(993, 'Morroa', 28),
(994, 'Ovejas', 28),
(995, 'Palmito', 28),
(996, 'Sampués', 28),
(997, 'San Benito Abad', 28),
(998, 'San Juan de Betulia', 28),
(999, 'San Marcos', 28),
(1000, 'San Onofre', 28),
(1001, 'San Pedro', 28),
(1002, 'Sincelejo', 28),
(1003, 'Sincé', 28),
(1004, 'Sucre', 28),
(1005, 'Tolú', 28),
(1006, 'Tolú Viejo', 28),
(1007, 'Alpujarra', 29),
(1008, 'Alvarado', 29),
(1009, 'Ambalema', 29),
(1010, 'Anzoátegui', 29),
(1011, 'Armero (Guayabal)', 29),
(1012, 'Ataco', 29),
(1013, 'Cajamarca', 29),
(1014, 'Carmen de Apicalá', 29),
(1015, 'Casabianca', 29),
(1016, 'Chaparral', 29),
(1017, 'Coello', 29),
(1018, 'Coyaima', 29),
(1019, 'Cunday', 29),
(1020, 'Dolores', 29),
(1021, 'Espinal', 29),
(1022, 'Falan', 29),
(1023, 'Flandes', 29),
(1024, 'Fresno', 29),
(1025, 'Guamo', 29),
(1026, 'Herveo', 29),
(1027, 'Honda', 29),
(1028, 'Ibagué', 29),
(1029, 'Icononzo', 29),
(1030, 'Lérida', 29),
(1031, 'Líbano', 29),
(1032, 'Mariquita', 29),
(1033, 'Melgar', 29),
(1034, 'Murillo', 29),
(1035, 'Natagaima', 29),
(1036, 'Ortega', 29),
(1037, 'Palocabildo', 29),
(1038, 'Piedras', 29),
(1039, 'Planadas', 29),
(1040, 'Prado', 29),
(1041, 'Purificación', 29),
(1042, 'Rioblanco', 29),
(1043, 'Roncesvalles', 29),
(1044, 'Rovira', 29),
(1045, 'Saldaña', 29),
(1046, 'San Antonio', 29),
(1047, 'San Luis', 29),
(1048, 'Santa Isabel', 29),
(1049, 'Suárez', 29),
(1050, 'Valle de San Juan', 29),
(1051, 'Venadillo', 29),
(1052, 'Villahermosa', 29),
(1053, 'Villarrica', 29),
(1054, 'Alcalá', 30),
(1055, 'Andalucía', 30),
(1056, 'Ansermanuevo', 30),
(1057, 'Argelia', 30),
(1058, 'Bolívar', 30),
(1059, 'Buenaventura', 30),
(1060, 'Buga', 30),
(1061, 'Bugalagrande', 30),
(1062, 'Caicedonia', 30),
(1063, 'Calima (Darién)', 30),
(1064, 'Calí', 30),
(1065, 'Candelaria', 30),
(1066, 'Cartago', 30),
(1067, 'Dagua', 30),
(1068, 'El Cairo', 30),
(1069, 'El Cerrito', 30),
(1070, 'El Dovio', 30),
(1071, 'El Águila', 30),
(1072, 'Florida', 30),
(1073, 'Ginebra', 30),
(1074, 'Guacarí', 30),
(1075, 'Jamundí', 30),
(1076, 'La Cumbre', 30),
(1077, 'La Unión', 30),
(1078, 'La Victoria', 30),
(1079, 'Obando', 30),
(1080, 'Palmira', 30),
(1081, 'Pradera', 30),
(1082, 'Restrepo', 30),
(1083, 'Riofrío', 30),
(1084, 'Roldanillo', 30),
(1085, 'San Pedro', 30),
(1086, 'Sevilla', 30),
(1087, 'Toro', 30),
(1088, 'Trujillo', 30),
(1089, 'Tulúa', 30),
(1090, 'Ulloa', 30),
(1091, 'Versalles', 30),
(1092, 'Vijes', 30),
(1093, 'Yotoco', 30),
(1094, 'Yumbo', 30),
(1095, 'Zarzal', 30),
(1096, 'Carurú', 31),
(1097, 'Mitú', 31),
(1098, 'Taraira', 31),
(1099, 'Cumaribo', 32),
(1100, 'La Primavera', 32),
(1101, 'Puerto Carreño', 32),
(1102, 'Santa Rosalía', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', NULL),
(2, 'Secretaria', NULL),
(3, 'Auxiliar', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramites`
--

CREATE TABLE `tramites` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tramites`
--

INSERT INTO `tramites` (`id`, `nombre`) VALUES
(1, 'Laboral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `identificacion` varchar(45) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `perfil_id` int(11) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `identificacion`, `direccion`, `telefono`, `usuario`, `password`, `perfil_id`, `fecha_registro`) VALUES
(1, 'yony brondy ', 'mamani fuentes', '46464541', 'Miramar 431', '454541', 'yonilo', '1234', 3, '2018-05-02'),
(2, 'julio jose', 'quiñonez ', '45121214', 'Calle Cuzco 201', '545412', 'juliojose', '1234', 2, '2018-05-02'),
(3, 'juan carlos', 'chambilla ', '41414343', 'Calle Callao 430', '535312', 'admin', 'admin', 1, '2018-05-02'),
(4, 'gean carlos', 'manrique ', '45464546', 'calle arequipa 430', '545445', 'gean', '123456', 3, '2018-05-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ciudadano_idx` (`ciudadano_id`);

--
-- Indices de la tabla `ciudadanos`
--
ALTER TABLE `ciudadanos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_municipio_idx` (`municipio_id`),
  ADD KEY `fk_usuario_idx` (`usuario_id`),
  ADD KEY `fk_tramite_idx` (`tramite_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departamento_idx` (`departamento_id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramites`
--
ALTER TABLE `tramites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perfil_idx` (`perfil_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certificados`
--
ALTER TABLE `certificados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ciudadanos`
--
ALTER TABLE `ciudadanos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1103;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tramites`
--
ALTER TABLE `tramites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `certificados`
--
ALTER TABLE `certificados`
  ADD CONSTRAINT `fk_ciudadano` FOREIGN KEY (`ciudadano_id`) REFERENCES `ciudadanos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ciudadanos`
--
ALTER TABLE `ciudadanos`
  ADD CONSTRAINT `fk_municipio` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tramite` FOREIGN KEY (`tramite_id`) REFERENCES `tramites` (`id`),
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `fk_departamento` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
