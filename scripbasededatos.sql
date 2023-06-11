CREATE DATABASE sis15;

CREATE TABLE `departamento` (
  `id_dep` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dep`)
) ;

CREATE TABLE `empleado` (
  `id_emp` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_emp`),
  KEY `id_depar` (`id_dep`),
  CONSTRAINT `id_depar` FOREIGN KEY (`id_dep`) REFERENCES `departamento` (`id_dep`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
