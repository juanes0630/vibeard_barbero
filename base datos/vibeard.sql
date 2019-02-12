-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2019 a las 04:54:18
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vibeard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sysdiagrams`
--

CREATE TABLE IF NOT EXISTS `sysdiagrams` (
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `principal_id` int(11) NOT NULL,
`diagram_id` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `definition` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_barbero_corte`
--

CREATE TABLE IF NOT EXISTS `tbl_barbero_corte` (
  `docid_barbero` varchar(15) NOT NULL,
  `codigo_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compras`
--

CREATE TABLE IF NOT EXISTS `tbl_compras` (
  `codigo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `proveedor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_compras`
--

INSERT INTO `tbl_compras` (`codigo`, `fecha`, `hora`, `proveedor`) VALUES
(1, '2019-01-10', '07:28:38', '1036545698'),
(2, '2019-01-01', '22:10:00', '1036545698'),
(3, '2019-01-01', '17:12:00', '1036545698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compra_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_compra_producto` (
  `codigocompra` int(11) NOT NULL,
  `codigoproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valorunidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_compra_producto`
--

INSERT INTO `tbl_compra_producto` (`codigocompra`, `codigoproducto`, `cantidad`, `valorunidad`) VALUES
(2, 1, 12, 12000),
(2, 2, 22, 23000),
(3, 1, 12, 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado`
--

CREATE TABLE IF NOT EXISTS `tbl_estado` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estado`
--

INSERT INTO `tbl_estado` (`codigo`, `nombre`) VALUES
('01', 'Disponible'),
('02', 'Reservado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_faq`
--

CREATE TABLE IF NOT EXISTS `tbl_faq` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(3000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_faq`
--

INSERT INTO `tbl_faq` (`codigo`, `nombre`, `descripcion`) VALUES
(1, 'Â¿Como hacer una reserva?', 'pregunta por defecto'),
(2, 'Â¿Como registrarme en Vibeard?', 'Entra al apartado de registro al lado del login y da click a registrar'),
(3, 'Â¿Como es un lorem ipsum?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 									quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 									consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 									proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_genero`
--

CREATE TABLE IF NOT EXISTS `tbl_genero` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_genero`
--

INSERT INTO `tbl_genero` (`codigo`, `nombre`) VALUES
('01', 'Masculino'),
('02', 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_informacion`
--

CREATE TABLE IF NOT EXISTS `tbl_informacion` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `foto` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_informacion`
--

INSERT INTO `tbl_informacion` (`codigo`, `nombre`, `descripcion`, `foto`) VALUES
(1, '30% descuento', 'En Shampoo loreal premium 25ml y tratamientos capilares Schwarzkopf. ', 'Foto-0410.jpg'),
(2, 'Fundador', 'Hace 5 años el señor Julian creo la Peluquería J.A Tendencias', '1234'),
(3, 'Cuando fue creada', 'Tendencias peluquería esta ubicada hace 5 años en el centro de Rionegro ofreciendo en nuestras instalaciones un excelente servicio con calidad a cargo de nuestro personal altamente calificado en las diferentes áreas  de la belleza y con los mejores productos del mercado.', 'adaf'),
(4, 'Ubicacion', 'en algun lugar de aqui', 'Dwdqawqdwqwd'),
(5, 'Horarios de atención', 'Nuestros horarios de atención son de lunes a jueves de 9: 30 am a 7 pm y los dias viernes y sabado de 9 am a 7 pm ', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_producto` (
`codigo` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `cantidad_existente` int(11) DEFAULT NULL,
  `valor_producto` int(11) NOT NULL,
  `descripcion_corte` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `puntos` int(11) DEFAULT NULL,
  `tipo_producto` varchar(2) NOT NULL,
  `foto1` mediumblob NOT NULL,
  `foto2` mediumblob,
  `foto3` mediumblob,
  `foto4` mediumblob
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`codigo`, `nombre`, `cantidad_existente`, `valor_producto`, `descripcion_corte`, `puntos`, `tipo_producto`, `foto1`, `foto2`, `foto3`, `foto4`) VALUES
(1, 'shampoo', 3, 12000, 'Es muy bueno, pa´ que', 12, '01', '', NULL, NULL, NULL),
(2, 'Gomina', 12, 23000, 'gomina especial', 34, '01', 0x494d472d32303138303430322d5741303031392e6a7067, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor`
--

CREATE TABLE IF NOT EXISTS `tbl_proveedor` (
  `nit` varchar(15) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `telefono_fijo` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contacto` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_proveedor`
--

INSERT INTO `tbl_proveedor` (`nit`, `nombre`, `apellidos`, `telefono_fijo`, `celular`, `direccion`, `correo`, `contacto`) VALUES
('1036545698', 'loreal', '', '54789632', '13245698874', 'medellin', '@loreal.paris', 'diana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedor_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_proveedor_producto` (
  `nitproveedor` varchar(15) NOT NULL,
  `codigoproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reserva`
--

CREATE TABLE IF NOT EXISTS `tbl_reserva` (
  `codigo` int(11) NOT NULL,
  `cliente` varchar(15) NOT NULL,
  `barbero` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(2) NOT NULL,
  `puntos_redimidos` int(11) DEFAULT NULL,
  `tbl_tipo_reserva_Codigo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_reserva`
--

INSERT INTO `tbl_reserva` (`codigo`, `cliente`, `barbero`, `fecha`, `hora`, `estado`, `puntos_redimidos`, `tbl_tipo_reserva_Codigo`) VALUES
(1, '1036404796', '10354258796', '2019-02-05', '09:00:00', '02', 12, 1),
(2, '1036404796', '10354258796', '2019-02-05', '09:30:00', '02', 12, 1),
(3, '1036404796', '10354258796', '2019-02-05', '10:00:00', '02', 12, 1),
(4, '1036404796', '10354258796', '2019-02-05', '11:00:00', '02', 12, 1),
(5, '123456789', '10354258796', '2019-02-05', '10:30:00', '02', 11, 2),
(6, '1036404796', '10354258796', '2019-02-05', '11:30:00', '02', 12, 1),
(7, '1036404796', '10354258796', '2019-02-05', '12:00:00', '02', 12, 1),
(8, '123456789', '10354258796', '2019-02-05', '13:00:00', '02', 11, 2),
(9, '1036404796', '10354258796', '2019-02-05', '19:30:00', '02', 12, 1),
(10, '1036404796', '10354258796', '2019-02-05', '12:30:00', '02', 12, 1),
(11, '1036404796', '10354258796', '2019-02-05', '14:00:00', '02', 12, 1),
(12, '1036404796', '10354258796', '2019-02-05', '16:00:00', '02', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_producto` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipo_producto`
--

INSERT INTO `tbl_tipo_producto` (`codigo`, `nombre`) VALUES
('01', 'Objeto'),
('02', 'Servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_reserva`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_reserva` (
  `Codigo` int(2) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_tipo_reserva`
--

INSERT INTO `tbl_tipo_reserva` (`Codigo`, `nombre`) VALUES
(1, 'cabello'),
(2, 'manicure');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_usuario` (
`codigo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_tipo_usuario`
--

INSERT INTO `tbl_tipo_usuario` (`codigo`, `nombre`) VALUES
(1, 'Barbero'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE IF NOT EXISTS `tbl_usuario` (
  `docid` varchar(15) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono_fijo` varchar(10) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(2) NOT NULL,
  `foto` longtext,
  `puntos_acumulados` int(11) DEFAULT NULL,
  `puntos_redimidos` int(11) DEFAULT NULL,
  `certificados` longtext,
  `tipo_de_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`docid`, `clave`, `nombre`, `apellido`, `correo`, `telefono_fijo`, `celular`, `fecha_nacimiento`, `genero`, `foto`, `puntos_acumulados`, `puntos_redimidos`, `certificados`, `tipo_de_usuario`) VALUES
('10354258796', 'kj', 'Julian', 'Barbero', '@man', '234567', '1234567', '2019-01-18', '01', NULL, NULL, NULL, 'este no tiene', 1),
('1036404796', 'holo2', 'jhonatan yamid', 'alzate Gallego', '@yoto', '5431838', '3192934969', '2019-01-08', '01', '20180119_230920.jpg', 30, 24, '', 2),
('123456789', 'hlo', 'juan esteban', 'pereira', '@juanes', '128739123', '13452364567', '2019-01-01', '01', NULL, 0, 0, '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE IF NOT EXISTS `tbl_ventas` (
  `codigo` int(11) NOT NULL,
  `cliente` varchar(15) NOT NULL,
  `barbero` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_ventas`
--

INSERT INTO `tbl_ventas` (`codigo`, `cliente`, `barbero`, `fecha`, `hora`) VALUES
(0, '1036404796', '10354258796', '2019-01-10', '11:00:00'),
(1, '1036404796', '10354258796', '0001-02-20', '02:02:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_venta_producto`
--

CREATE TABLE IF NOT EXISTS `tbl_venta_producto` (
  `codigo_venta` int(11) NOT NULL,
  `codigo_producto` int(11) NOT NULL,
  `valorunidad` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `puntosasignados` int(11) DEFAULT NULL,
  `puntosredimidos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_venta_producto`
--

INSERT INTO `tbl_venta_producto` (`codigo_venta`, `codigo_producto`, `valorunidad`, `cantidad`, `puntosasignados`, `puntosredimidos`) VALUES
(1, 1, 12000, 12, NULL, NULL),
(1, 2, 23000, 13364, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vta_producto`
--
CREATE TABLE IF NOT EXISTS `vta_producto` (
`codigo` int(11)
,`nombre` varchar(40)
,`cantidad_existente` int(11)
,`valor_producto` int(11)
,`descripcion_corte` longtext
,`puntos` int(11)
,`tipo_producto` varchar(2)
,`foto1` mediumblob
,`foto2` mediumblob
,`foto3` mediumblob
,`foto4` mediumblob
,`id_tipo_producto` varchar(2)
,`descripcion` varchar(30)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vta_usuario`
--
CREATE TABLE IF NOT EXISTS `vta_usuario` (
`docid` varchar(15)
,`clave` varchar(20)
,`nombre` varchar(40)
,`apellido` varchar(40)
,`correo` varchar(50)
,`telefono_fijo` varchar(10)
,`celular` varchar(15)
,`fecha_nacimiento` date
,`genero` varchar(2)
,`foto` longtext
,`puntos_acumulados` int(11)
,`puntos_redimidos` int(11)
,`certificados` longtext
,`tipo_de_usuario` int(11)
,`codigo` varchar(2)
,`sexo` varchar(40)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `vta_producto`
--
DROP TABLE IF EXISTS `vta_producto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vta_producto` AS select `p`.`codigo` AS `codigo`,`p`.`nombre` AS `nombre`,`p`.`cantidad_existente` AS `cantidad_existente`,`p`.`valor_producto` AS `valor_producto`,`p`.`descripcion_corte` AS `descripcion_corte`,`p`.`puntos` AS `puntos`,`p`.`tipo_producto` AS `tipo_producto`,`p`.`foto1` AS `foto1`,`p`.`foto2` AS `foto2`,`p`.`foto3` AS `foto3`,`p`.`foto4` AS `foto4`,`tp`.`codigo` AS `id_tipo_producto`,`tp`.`nombre` AS `descripcion` from (`tbl_producto` `p` join `tbl_tipo_producto` `tp` on((`p`.`tipo_producto` = `tp`.`codigo`)));

-- --------------------------------------------------------

--
-- Estructura para la vista `vta_usuario`
--
DROP TABLE IF EXISTS `vta_usuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vta_usuario` AS select `u`.`docid` AS `docid`,`u`.`clave` AS `clave`,`u`.`nombre` AS `nombre`,`u`.`apellido` AS `apellido`,`u`.`correo` AS `correo`,`u`.`telefono_fijo` AS `telefono_fijo`,`u`.`celular` AS `celular`,`u`.`fecha_nacimiento` AS `fecha_nacimiento`,`u`.`genero` AS `genero`,`u`.`foto` AS `foto`,`u`.`puntos_acumulados` AS `puntos_acumulados`,`u`.`puntos_redimidos` AS `puntos_redimidos`,`u`.`certificados` AS `certificados`,`u`.`tipo_de_usuario` AS `tipo_de_usuario`,`g`.`codigo` AS `codigo`,`g`.`nombre` AS `sexo` from (`tbl_usuario` `u` join `tbl_genero` `g` on((`u`.`genero` = `g`.`codigo`)));

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
 ADD PRIMARY KEY (`diagram_id`), ADD UNIQUE KEY `uk_principal_name` (`principal_id`,`name`), ADD KEY `ix_tmp_autoinc` (`diagram_id`);

--
-- Indices de la tabla `tbl_barbero_corte`
--
ALTER TABLE `tbl_barbero_corte`
 ADD PRIMARY KEY (`docid_barbero`,`codigo_producto`), ADD KEY `fk_tbl_barbero_corte_tbl_producto` (`codigo_producto`);

--
-- Indices de la tabla `tbl_compras`
--
ALTER TABLE `tbl_compras`
 ADD PRIMARY KEY (`codigo`), ADD KEY `ix_tmp_autoinc` (`codigo`), ADD KEY `fk_tbl_compras_tbl_proveedor1` (`proveedor`);

--
-- Indices de la tabla `tbl_compra_producto`
--
ALTER TABLE `tbl_compra_producto`
 ADD PRIMARY KEY (`codigocompra`,`codigoproducto`), ADD KEY `fk_tbl_compra_producto_tbl_producto` (`codigoproducto`);

--
-- Indices de la tabla `tbl_estado`
--
ALTER TABLE `tbl_estado`
 ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tbl_genero`
--
ALTER TABLE `tbl_genero`
 ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tbl_informacion`
--
ALTER TABLE `tbl_informacion`
 ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
 ADD PRIMARY KEY (`codigo`), ADD KEY `ix_tmp_autoinc` (`codigo`), ADD KEY `fk_tbl_producto_tbl_tipo_producto` (`tipo_producto`);

--
-- Indices de la tabla `tbl_proveedor`
--
ALTER TABLE `tbl_proveedor`
 ADD PRIMARY KEY (`nit`);

--
-- Indices de la tabla `tbl_proveedor_producto`
--
ALTER TABLE `tbl_proveedor_producto`
 ADD PRIMARY KEY (`nitproveedor`,`codigoproducto`), ADD KEY `fk_tbl_proveedor_producto_tbl_producto` (`codigoproducto`);

--
-- Indices de la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
 ADD PRIMARY KEY (`codigo`,`tbl_tipo_reserva_Codigo`), ADD KEY `ix_tmp_autoinc` (`codigo`), ADD KEY `fk_tbl_reserva_tbl_usuario` (`cliente`), ADD KEY `fk_tbl_reserva_tbl_usuario1` (`barbero`), ADD KEY `fk_tbl_reserva_tblestado` (`estado`), ADD KEY `fk_tbl_reserva_tbl_tipo_reserva1_idx` (`tbl_tipo_reserva_Codigo`);

--
-- Indices de la tabla `tbl_tipo_producto`
--
ALTER TABLE `tbl_tipo_producto`
 ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `tbl_tipo_reserva`
--
ALTER TABLE `tbl_tipo_reserva`
 ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
 ADD PRIMARY KEY (`codigo`), ADD KEY `ix_tmp_autoinc` (`codigo`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
 ADD PRIMARY KEY (`docid`), ADD KEY `fk_tbl_usuario_tbl_genero` (`genero`), ADD KEY `fk_tbl_usuario_tbl_tipo_usuario` (`tipo_de_usuario`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
 ADD PRIMARY KEY (`codigo`), ADD KEY `ix_tmp_autoinc` (`codigo`), ADD KEY `fk_tbl_ventas_tbl_usuario` (`cliente`), ADD KEY `fk_tbl_ventas_tbl_usuario1` (`barbero`);

--
-- Indices de la tabla `tbl_venta_producto`
--
ALTER TABLE `tbl_venta_producto`
 ADD PRIMARY KEY (`codigo_venta`,`codigo_producto`), ADD KEY `fk_tbl_venta_producto_tbl_producto` (`codigo_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sysdiagrams`
--
ALTER TABLE `sysdiagrams`
MODIFY `diagram_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_barbero_corte`
--
ALTER TABLE `tbl_barbero_corte`
ADD CONSTRAINT `fk_tbl_barbero_corte_tbl_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `tbl_producto` (`codigo`),
ADD CONSTRAINT `fk_tbl_barbero_corte_tbl_usuario` FOREIGN KEY (`docid_barbero`) REFERENCES `tbl_usuario` (`docid`);

--
-- Filtros para la tabla `tbl_compras`
--
ALTER TABLE `tbl_compras`
ADD CONSTRAINT `fk_tbl_compras_tbl_proveedor1` FOREIGN KEY (`proveedor`) REFERENCES `tbl_proveedor` (`nit`);

--
-- Filtros para la tabla `tbl_compra_producto`
--
ALTER TABLE `tbl_compra_producto`
ADD CONSTRAINT `fk_tbl_compra_producto_tbl_compras` FOREIGN KEY (`codigocompra`) REFERENCES `tbl_compras` (`codigo`),
ADD CONSTRAINT `fk_tbl_compra_producto_tbl_producto` FOREIGN KEY (`codigoproducto`) REFERENCES `tbl_producto` (`codigo`);

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
ADD CONSTRAINT `fk_tbl_producto_tbl_tipo_producto` FOREIGN KEY (`tipo_producto`) REFERENCES `tbl_tipo_producto` (`codigo`);

--
-- Filtros para la tabla `tbl_proveedor_producto`
--
ALTER TABLE `tbl_proveedor_producto`
ADD CONSTRAINT `fk_tbl_proveedor_producto_tbl_producto` FOREIGN KEY (`codigoproducto`) REFERENCES `tbl_producto` (`codigo`),
ADD CONSTRAINT `fk_tbl_proveedor_producto_tbl_proveedpor` FOREIGN KEY (`nitproveedor`) REFERENCES `tbl_proveedor` (`nit`);

--
-- Filtros para la tabla `tbl_reserva`
--
ALTER TABLE `tbl_reserva`
ADD CONSTRAINT `fk_tbl_reserva_tbl_tipo_reserva1` FOREIGN KEY (`tbl_tipo_reserva_Codigo`) REFERENCES `tbl_tipo_reserva` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_reserva_tbl_usuario` FOREIGN KEY (`cliente`) REFERENCES `tbl_usuario` (`docid`),
ADD CONSTRAINT `fk_tbl_reserva_tbl_usuario1` FOREIGN KEY (`barbero`) REFERENCES `tbl_usuario` (`docid`),
ADD CONSTRAINT `fk_tbl_reserva_tblestado` FOREIGN KEY (`estado`) REFERENCES `tbl_estado` (`codigo`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
ADD CONSTRAINT `fk_tbl_usuario_tbl_genero` FOREIGN KEY (`genero`) REFERENCES `tbl_genero` (`codigo`),
ADD CONSTRAINT `fk_tbl_usuario_tbl_tipo_usuario` FOREIGN KEY (`tipo_de_usuario`) REFERENCES `tbl_tipo_usuario` (`codigo`);

--
-- Filtros para la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
ADD CONSTRAINT `fk_tbl_ventas_tbl_usuario` FOREIGN KEY (`cliente`) REFERENCES `tbl_usuario` (`docid`),
ADD CONSTRAINT `fk_tbl_ventas_tbl_usuario1` FOREIGN KEY (`barbero`) REFERENCES `tbl_usuario` (`docid`);

--
-- Filtros para la tabla `tbl_venta_producto`
--
ALTER TABLE `tbl_venta_producto`
ADD CONSTRAINT `fk_tbl_venta_producto_tbl_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `tbl_producto` (`codigo`),
ADD CONSTRAINT `fk_tbl_venta_producto_tbl_ventas` FOREIGN KEY (`codigo_venta`) REFERENCES `tbl_ventas` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
