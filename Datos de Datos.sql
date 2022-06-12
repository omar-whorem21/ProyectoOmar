-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para convocatoria
CREATE DATABASE IF NOT EXISTS `convocatoria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `convocatoria`;

-- Volcando estructura para tabla convocatoria.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `codigo_SIS` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `correo_Institucional` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_SIS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla convocatoria.estudiante: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` (`codigo_SIS`, `nombre`, `apellidos`, `direccion`, `telefono`, `correo_Institucional`, `contraseña`) VALUES
	('202001000', 'Alejandra ', 'Rodriguez', 'a', '6464151', '201902500@est.edu.umss', '123'),
	('202001001', 'Alberto', 'Medina', 'ad', '1515', '201902500@est.edu.umss', '123'),
	('202001002', 'Bernardo', 'Perez', 'ad', '123141324', '201902500@est.edu.umss', '123'),
	('202001003', 'Cesar ', 'Grageda', 'ad', '2131242', '201902500@est.edu.umss', '123'),
	('202001004', 'Bequi', 'Arias', 'ad', '5165132', '201902500@est.edu.umss', '123'),
	('202001005', 'Ariel ', 'Mejia', 'ad', '0265126512', '201902500@est.edu.umss', '123'),
	('202001006', 'Daniel ', 'Cosio', 'dad', '15415610', '201902500@est.edu.umss', '123'),
	('202001007', 'Dennis', 'Medrano', 'ad', '15154151', '201902500@est.edu.umss', '123'),
	('202001008', 'Emerson', 'Vilca', 'asd', '026561152', '201902500@est.edu.umss', '123'),
	('202001009', 'Andy', 'Mamani', 'asd', '16541603', '201902500@est.edu.umss', '123'),
	('202001010', 'Boris', 'Quispe', 'utygyu', '9845965156', '201902500@est.edu.umss', '123'),
	('202001011', 'Anuel', 'Zembrano', 'asd', '21652', '201902500@est.edu.umss', '123'),
	('202001012', 'Ana ', 'Vila', 'sdf', '6494156', '201902500@est.edu.umss', '123'),
	('202001013', 'Belinda', 'Araujo', 'ad', '53435', '201902500@est.edu.umss', '123'),
	('202001014', 'Benito', 'Mendes', 'ad', '4654678', '201902500@est.edu.umss', '123'),
	('202001015', 'Carla', 'Soria', 'ad', '78686', '201902500@est.edu.umss', '123'),
	('202001016', 'Connor', 'Morales', 'ad', '435435', '201902500@est.edu.umss', '123'),
	('202001017', 'Angel', 'Cosio', 'ad', '1131313', '201902500@est.edu.umss', '123'),
	('202001018', 'Ascencio', 'Genderson', 'ad', '45354313', '201902500@est.edu.umss', '123'),
	('202001019', 'Aron', 'Vilca', 'ad', '1313235', '201902500@est.edu.umss', '123'),
	('202001020', 'Aida', 'Soliz', 'ad', '13131583', '201902500@est.edu.umss', '123'),
	('202001021', 'Dimar', 'Luque', 'ad', '132557', '201902500@est.edu.umss', '123'),
	('202001022', 'Brayan', 'Quispe', 'ad', '78668', '201902500@est.edu.umss', '123'),
	('202001023', 'Betto', 'Cabeza', 'ad', '786786876', '201902500@est.edu.umss', '123'),
	('202001024', 'Erika', 'Sarmiento', 'ad', '45345378', '201902500@est.edu.umss', '123'),
	('202001025', 'Enso', 'Perez', 'ad', '786786', '201902500@est.edu.umss', '123');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;

-- Volcando estructura para tabla convocatoria.laboratorio
CREATE TABLE IF NOT EXISTS `laboratorio` (
  `item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hrs_academicas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `auxiliatura` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo_aux` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_lab` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_labo` int(11) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nro_identificacion_labo`),
  KEY `FK_laboratorio_estudiante` (`cod_SIS_lab`),
  CONSTRAINT `FK_laboratorio_estudiante` FOREIGN KEY (`cod_SIS_lab`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla convocatoria.laboratorio: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` (`item`, `cantidad`, `hrs_academicas`, `auxiliatura`, `codigo_aux`, `cod_SIS_lab`, `Nro_identificacion_labo`, `habilitado`) VALUES
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001008', 35, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001009', 36, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001010', 37, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001011', 38, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001012', 39, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001013', 40, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001014', 41, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001015', 42, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001016', 43, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001017', 44, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001018', 46, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001019', 47, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001020', 48, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001021', 49, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001022', 50, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001023', 51, b'0');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;

-- Volcando estructura para tabla convocatoria.pizarron
CREATE TABLE IF NOT EXISTS `pizarron` (
  `item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hrs_academicas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `destino` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_pizarra` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_piza` int(11) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nro_identificacion_piza`) USING BTREE,
  KEY `FK_pizarra_estudiante` (`cod_SIS_pizarra`),
  CONSTRAINT `FK_pizarra_estudiante` FOREIGN KEY (`cod_SIS_pizarra`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla convocatoria.pizarron: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `pizarron` DISABLE KEYS */;
INSERT INTO `pizarron` (`item`, `cantidad`, `hrs_academicas`, `destino`, `cod_SIS_pizarra`, `Nro_identificacion_piza`, `habilitado`) VALUES
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001000', 53, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001001', 54, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001003', 55, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001002', 56, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001004', 57, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001005', 58, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001006', 59, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001007', 60, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001025', 61, b'0');
/*!40000 ALTER TABLE `pizarron` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
