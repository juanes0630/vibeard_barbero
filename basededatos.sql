-- MySQL dump 10.13  Distrib 5.7.25, for Linux (i686)
--
-- Host: localhost    Database: vibeard
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `body` text COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `class` varchar(45) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'event-important',
  `start` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `end` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `inicio_normal` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `final_normal` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'ñsakljdhjkasd','sdfasdfsad','http://localhost:8083/Librerias/calendario/descripcion_evento.php?id=1','event-info','1572766800000','1572768000000','03/11/2019 4:40','03/11/2019 5:00'),(2,'Prueba','Prueba','http://localhost:8083/Librerias/calendario/descripcion_evento.php?id=2','event-info','1572741900000','1572741960000','02/11/2019 21:45','02/11/2019 21:46'),(3,' cxvbxcvbx','cvbxcvbcxvb','http://localhost:8083/Librerias/calendario/descripcion_evento.php?id=3','event-info','1572739200000','1572741000000','02/11/2019 21:00','02/11/2019 21:30');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysdiagrams`
--

DROP TABLE IF EXISTS `sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysdiagrams` (
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `definition` longblob,
  PRIMARY KEY (`diagram_id`),
  UNIQUE KEY `uk_principal_name` (`principal_id`,`name`),
  KEY `ix_tmp_autoinc` (`diagram_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysdiagrams`
--

LOCK TABLES `sysdiagrams` WRITE;
/*!40000 ALTER TABLE `sysdiagrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysdiagrams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_barbero_corte`
--

DROP TABLE IF EXISTS `tbl_barbero_corte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_barbero_corte` (
  `docid_barbero` varchar(15) NOT NULL,
  `codigo_producto` int(11) NOT NULL,
  PRIMARY KEY (`docid_barbero`,`codigo_producto`),
  KEY `fk_tbl_barbero_corte_tbl_producto` (`codigo_producto`),
  CONSTRAINT `fk_tbl_barbero_corte_tbl_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `tbl_producto` (`codigo`),
  CONSTRAINT `fk_tbl_barbero_corte_tbl_usuario` FOREIGN KEY (`docid_barbero`) REFERENCES `tbl_usuario` (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_barbero_corte`
--

LOCK TABLES `tbl_barbero_corte` WRITE;
/*!40000 ALTER TABLE `tbl_barbero_corte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_barbero_corte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra_producto`
--

DROP TABLE IF EXISTS `tbl_compra_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra_producto` (
  `codigocompra` int(11) NOT NULL,
  `codigoproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valorunidad` int(11) NOT NULL,
  PRIMARY KEY (`codigocompra`,`codigoproducto`),
  KEY `fk_tbl_compra_producto_tbl_producto` (`codigoproducto`),
  CONSTRAINT `fk_tbl_compra_producto_tbl_compras` FOREIGN KEY (`codigocompra`) REFERENCES `tbl_compras` (`codigo`),
  CONSTRAINT `fk_tbl_compra_producto_tbl_producto` FOREIGN KEY (`codigoproducto`) REFERENCES `tbl_producto` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra_producto`
--

LOCK TABLES `tbl_compra_producto` WRITE;
/*!40000 ALTER TABLE `tbl_compra_producto` DISABLE KEYS */;
INSERT INTO `tbl_compra_producto` VALUES (2,1,12,12000),(2,2,22,23000),(3,1,12,12000);
/*!40000 ALTER TABLE `tbl_compra_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compras`
--

DROP TABLE IF EXISTS `tbl_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compras` (
  `codigo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `proveedor` varchar(15) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ix_tmp_autoinc` (`codigo`),
  KEY `fk_tbl_compras_tbl_proveedor1` (`proveedor`),
  CONSTRAINT `fk_tbl_compras_tbl_proveedor1` FOREIGN KEY (`proveedor`) REFERENCES `tbl_proveedor` (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compras`
--

LOCK TABLES `tbl_compras` WRITE;
/*!40000 ALTER TABLE `tbl_compras` DISABLE KEYS */;
INSERT INTO `tbl_compras` VALUES (1,'2019-01-10','07:28:38','1036545698'),(2,'2019-01-01','22:10:00','1036545698'),(3,'2019-01-01','17:12:00','1036545698');
/*!40000 ALTER TABLE `tbl_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado`
--

DROP TABLE IF EXISTS `tbl_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado`
--

LOCK TABLES `tbl_estado` WRITE;
/*!40000 ALTER TABLE `tbl_estado` DISABLE KEYS */;
INSERT INTO `tbl_estado` VALUES ('01','Disponible'),('02','Reservado');
/*!40000 ALTER TABLE `tbl_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_faq`
--

DROP TABLE IF EXISTS `tbl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_faq` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(3000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_faq`
--

LOCK TABLES `tbl_faq` WRITE;
/*!40000 ALTER TABLE `tbl_faq` DISABLE KEYS */;
INSERT INTO `tbl_faq` VALUES (1,'Â¿Como hacer una reserva?','pregunta por defecto'),(2,'Â¿Como registrarme en Vibeard?','Entra al apartado de registro al lado del login y da click a registrar'),(3,'Â¿Como es un lorem ipsum?','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 									quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 									consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 									proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');
/*!40000 ALTER TABLE `tbl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genero` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES ('01','Masculino'),('02','Femenino');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_informacion`
--

DROP TABLE IF EXISTS `tbl_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_informacion` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `foto` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_informacion`
--

LOCK TABLES `tbl_informacion` WRITE;
/*!40000 ALTER TABLE `tbl_informacion` DISABLE KEYS */;
INSERT INTO `tbl_informacion` VALUES (1,'30% descuento','En Shampoo loreal premium 25ml y tratamientos capilares Schwarzkopf. ','Foto-0410.jpg'),(2,'Fundador','Hace 5 años el señor Julian creo la Peluquería J.A Tendencias','1234'),(3,'Cuando fue creada','Tendencias peluquería esta ubicada hace 5 años en el centro de Rionegro ofreciendo en nuestras instalaciones un excelente servicio con calidad a cargo de nuestro personal altamente calificado en las diferentes áreas  de la belleza y con los mejores productos del mercado.','adaf'),(4,'Ubicacion','en algun lugar de aqui','Dwdqawqdwqwd'),(5,'Horarios de atención','Nuestros horarios de atención son de lunes a jueves de 9: 30 am a 7 pm y los dias viernes y sabado de 9 am a 7 pm ','');
/*!40000 ALTER TABLE `tbl_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `cantidad_existente` int(11) DEFAULT NULL,
  `valor_producto` int(11) NOT NULL,
  `descripcion_corte` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `puntos` int(11) DEFAULT NULL,
  `tipo_producto` varchar(2) NOT NULL,
  `foto1` mediumblob NOT NULL,
  `foto2` mediumblob,
  `foto3` mediumblob,
  `foto4` mediumblob,
  PRIMARY KEY (`codigo`),
  KEY `ix_tmp_autoinc` (`codigo`),
  KEY `fk_tbl_producto_tbl_tipo_producto` (`tipo_producto`),
  CONSTRAINT `fk_tbl_producto_tbl_tipo_producto` FOREIGN KEY (`tipo_producto`) REFERENCES `tbl_tipo_producto` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,'shampoo',3,12000,'Es muy bueno, pa´ que',12,'01','',NULL,NULL,NULL),(2,'Gomina',12,23000,'gomina especial',34,'01',_binary 'IMG-20180402-WA0019.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `nit` varchar(15) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `telefono_fijo` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contacto` varchar(60) NOT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES ('1036545698','loreal','','54789632','13245698874','medellin','@loreal.paris','diana');
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor_producto`
--

DROP TABLE IF EXISTS `tbl_proveedor_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor_producto` (
  `nitproveedor` varchar(15) NOT NULL,
  `codigoproducto` int(11) NOT NULL,
  PRIMARY KEY (`nitproveedor`,`codigoproducto`),
  KEY `fk_tbl_proveedor_producto_tbl_producto` (`codigoproducto`),
  CONSTRAINT `fk_tbl_proveedor_producto_tbl_producto` FOREIGN KEY (`codigoproducto`) REFERENCES `tbl_producto` (`codigo`),
  CONSTRAINT `fk_tbl_proveedor_producto_tbl_proveedpor` FOREIGN KEY (`nitproveedor`) REFERENCES `tbl_proveedor` (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor_producto`
--

LOCK TABLES `tbl_proveedor_producto` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_proveedor_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reserva`
--

DROP TABLE IF EXISTS `tbl_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reserva` (
  `codigo` int(11) NOT NULL,
  `cliente` varchar(15) NOT NULL,
  `barbero` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` varchar(2) NOT NULL,
  `puntos_redimidos` int(11) DEFAULT NULL,
  `tbl_tipo_reserva_Codigo` int(2) NOT NULL,
  PRIMARY KEY (`codigo`,`tbl_tipo_reserva_Codigo`),
  KEY `ix_tmp_autoinc` (`codigo`),
  KEY `fk_tbl_reserva_tbl_usuario` (`cliente`),
  KEY `fk_tbl_reserva_tbl_usuario1` (`barbero`),
  KEY `fk_tbl_reserva_tblestado` (`estado`),
  KEY `fk_tbl_reserva_tbl_tipo_reserva1_idx` (`tbl_tipo_reserva_Codigo`),
  CONSTRAINT `fk_tbl_reserva_tbl_tipo_reserva1` FOREIGN KEY (`tbl_tipo_reserva_Codigo`) REFERENCES `tbl_tipo_reserva` (`Codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_reserva_tbl_usuario` FOREIGN KEY (`cliente`) REFERENCES `tbl_usuario` (`docid`),
  CONSTRAINT `fk_tbl_reserva_tbl_usuario1` FOREIGN KEY (`barbero`) REFERENCES `tbl_usuario` (`docid`),
  CONSTRAINT `fk_tbl_reserva_tblestado` FOREIGN KEY (`estado`) REFERENCES `tbl_estado` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reserva`
--

LOCK TABLES `tbl_reserva` WRITE;
/*!40000 ALTER TABLE `tbl_reserva` DISABLE KEYS */;
INSERT INTO `tbl_reserva` VALUES (1,'1036404796','10354258796','2019-02-05','09:00:00','02',12,1),(2,'1036404796','10354258796','2019-02-05','09:30:00','02',12,1),(3,'1036404796','10354258796','2019-02-05','10:00:00','02',12,1),(4,'1036404796','10354258796','2019-02-05','11:00:00','02',12,1),(5,'123456789','10354258796','2019-02-05','10:30:00','02',11,2),(6,'1036404796','10354258796','2019-02-05','11:30:00','02',12,1),(7,'1036404796','10354258796','2019-02-05','12:00:00','02',12,1),(8,'123456789','10354258796','2019-02-05','13:00:00','02',11,2),(9,'1036404796','10354258796','2019-02-05','19:30:00','02',12,1),(10,'1036404796','10354258796','2019-02-05','12:30:00','02',12,1),(11,'1036404796','10354258796','2019-02-05','14:00:00','02',12,1),(12,'1036404796','10354258796','2019-02-05','16:00:00','02',12,1);
/*!40000 ALTER TABLE `tbl_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_producto`
--

DROP TABLE IF EXISTS `tbl_tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_producto` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_producto`
--

LOCK TABLES `tbl_tipo_producto` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_producto` DISABLE KEYS */;
INSERT INTO `tbl_tipo_producto` VALUES ('01','Objeto'),('02','Servicio');
/*!40000 ALTER TABLE `tbl_tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_reserva`
--

DROP TABLE IF EXISTS `tbl_tipo_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_reserva` (
  `Codigo` int(2) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_reserva`
--

LOCK TABLES `tbl_tipo_reserva` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_reserva` DISABLE KEYS */;
INSERT INTO `tbl_tipo_reserva` VALUES (1,'cabello'),(2,'manicure');
/*!40000 ALTER TABLE `tbl_tipo_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_usuario`
--

DROP TABLE IF EXISTS `tbl_tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_usuario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ix_tmp_autoinc` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_usuario`
--

LOCK TABLES `tbl_tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_usuario` DISABLE KEYS */;
INSERT INTO `tbl_tipo_usuario` VALUES (1,'Barbero'),(2,'Cliente');
/*!40000 ALTER TABLE `tbl_tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
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
  `tipo_de_usuario` int(11) NOT NULL,
  PRIMARY KEY (`docid`),
  KEY `fk_tbl_usuario_tbl_genero` (`genero`),
  KEY `fk_tbl_usuario_tbl_tipo_usuario` (`tipo_de_usuario`),
  CONSTRAINT `fk_tbl_usuario_tbl_genero` FOREIGN KEY (`genero`) REFERENCES `tbl_genero` (`codigo`),
  CONSTRAINT `fk_tbl_usuario_tbl_tipo_usuario` FOREIGN KEY (`tipo_de_usuario`) REFERENCES `tbl_tipo_usuario` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES ('10354258796','kj','Julian','Barbero','@man','234567','1234567','2019-01-18','01',NULL,NULL,NULL,'este no tiene',1),('1036404796','holo2','jhonatan yamid','alzate Gallego','@yoto','5431838','3192934969','2019-01-08','01','20180119_230920.jpg',30,24,'',2),('123456789','hlo','juan esteban','pereira','@juanes','128739123','13452364567','2019-01-01','01',NULL,0,0,'',2);
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venta_producto`
--

DROP TABLE IF EXISTS `tbl_venta_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venta_producto` (
  `codigo_venta` int(11) NOT NULL,
  `codigo_producto` int(11) NOT NULL,
  `valorunidad` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `puntosasignados` int(11) DEFAULT NULL,
  `puntosredimidos` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_venta`,`codigo_producto`),
  KEY `fk_tbl_venta_producto_tbl_producto` (`codigo_producto`),
  CONSTRAINT `fk_tbl_venta_producto_tbl_producto` FOREIGN KEY (`codigo_producto`) REFERENCES `tbl_producto` (`codigo`),
  CONSTRAINT `fk_tbl_venta_producto_tbl_ventas` FOREIGN KEY (`codigo_venta`) REFERENCES `tbl_ventas` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta_producto`
--

LOCK TABLES `tbl_venta_producto` WRITE;
/*!40000 ALTER TABLE `tbl_venta_producto` DISABLE KEYS */;
INSERT INTO `tbl_venta_producto` VALUES (1,1,12000,12,NULL,NULL),(1,2,23000,13364,NULL,NULL);
/*!40000 ALTER TABLE `tbl_venta_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ventas`
--

DROP TABLE IF EXISTS `tbl_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ventas` (
  `codigo` int(11) NOT NULL,
  `cliente` varchar(15) NOT NULL,
  `barbero` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `ix_tmp_autoinc` (`codigo`),
  KEY `fk_tbl_ventas_tbl_usuario` (`cliente`),
  KEY `fk_tbl_ventas_tbl_usuario1` (`barbero`),
  CONSTRAINT `fk_tbl_ventas_tbl_usuario` FOREIGN KEY (`cliente`) REFERENCES `tbl_usuario` (`docid`),
  CONSTRAINT `fk_tbl_ventas_tbl_usuario1` FOREIGN KEY (`barbero`) REFERENCES `tbl_usuario` (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventas`
--

LOCK TABLES `tbl_ventas` WRITE;
/*!40000 ALTER TABLE `tbl_ventas` DISABLE KEYS */;
INSERT INTO `tbl_ventas` VALUES (0,'1036404796','10354258796','2019-01-10','11:00:00'),(1,'1036404796','10354258796','0001-02-20','02:02:00');
/*!40000 ALTER TABLE `tbl_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vta_producto`
--

DROP TABLE IF EXISTS `vta_producto`;
/*!50001 DROP VIEW IF EXISTS `vta_producto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vta_producto` AS SELECT 
 1 AS `codigo`,
 1 AS `nombre`,
 1 AS `cantidad_existente`,
 1 AS `valor_producto`,
 1 AS `descripcion_corte`,
 1 AS `puntos`,
 1 AS `tipo_producto`,
 1 AS `foto1`,
 1 AS `foto2`,
 1 AS `foto3`,
 1 AS `foto4`,
 1 AS `id_tipo_producto`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vta_usuario`
--

DROP TABLE IF EXISTS `vta_usuario`;
/*!50001 DROP VIEW IF EXISTS `vta_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vta_usuario` AS SELECT 
 1 AS `docid`,
 1 AS `clave`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `correo`,
 1 AS `telefono_fijo`,
 1 AS `celular`,
 1 AS `fecha_nacimiento`,
 1 AS `genero`,
 1 AS `foto`,
 1 AS `puntos_acumulados`,
 1 AS `puntos_redimidos`,
 1 AS `certificados`,
 1 AS `tipo_de_usuario`,
 1 AS `codigo`,
 1 AS `sexo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vta_producto`
--

/*!50001 DROP VIEW IF EXISTS `vta_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vta_producto` AS select `p`.`codigo` AS `codigo`,`p`.`nombre` AS `nombre`,`p`.`cantidad_existente` AS `cantidad_existente`,`p`.`valor_producto` AS `valor_producto`,`p`.`descripcion_corte` AS `descripcion_corte`,`p`.`puntos` AS `puntos`,`p`.`tipo_producto` AS `tipo_producto`,`p`.`foto1` AS `foto1`,`p`.`foto2` AS `foto2`,`p`.`foto3` AS `foto3`,`p`.`foto4` AS `foto4`,`tp`.`codigo` AS `id_tipo_producto`,`tp`.`nombre` AS `descripcion` from (`tbl_producto` `p` join `tbl_tipo_producto` `tp` on((`p`.`tipo_producto` = `tp`.`codigo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vta_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vta_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vta_usuario` AS select `u`.`docid` AS `docid`,`u`.`clave` AS `clave`,`u`.`nombre` AS `nombre`,`u`.`apellido` AS `apellido`,`u`.`correo` AS `correo`,`u`.`telefono_fijo` AS `telefono_fijo`,`u`.`celular` AS `celular`,`u`.`fecha_nacimiento` AS `fecha_nacimiento`,`u`.`genero` AS `genero`,`u`.`foto` AS `foto`,`u`.`puntos_acumulados` AS `puntos_acumulados`,`u`.`puntos_redimidos` AS `puntos_redimidos`,`u`.`certificados` AS `certificados`,`u`.`tipo_de_usuario` AS `tipo_de_usuario`,`g`.`codigo` AS `codigo`,`g`.`nombre` AS `sexo` from (`tbl_usuario` `u` join `tbl_genero` `g` on((`u`.`genero` = `g`.`codigo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 21:54:13
