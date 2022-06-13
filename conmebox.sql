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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
