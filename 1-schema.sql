

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour tpmotte
CREATE DATABASE IF NOT EXISTS `tpmotte` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `tpmotte`;

-- Export de la structure de la table tpmotte. assessment
CREATE TABLE IF NOT EXISTS `assessment` (
  `id_student` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `attempted` datetime NOT NULL,
  `passed` datetime DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`attempted`,`id_student`,`id_module`),
  KEY `FK_assessment_student` (`id_student`),
  KEY `FK_assessment_module` (`id_module`),
  CONSTRAINT `FK_assessment_module` FOREIGN KEY (`id_module`) REFERENCES `module` (`id`),
  CONSTRAINT `FK_assessment_student` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tpmotte. enrolment
CREATE TABLE IF NOT EXISTS `enrolment` (
  `id_student` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_student`,`id_year`),
  KEY `FK_enrolment_year` (`id_year`),
  KEY `FK_enrolment_student` (`id_student`),
  CONSTRAINT `FK_enrolment_student` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_enrolment_year` FOREIGN KEY (`id_year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tpmotte. module
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_module_year` (`year`),
  CONSTRAINT `FK_module_year` FOREIGN KEY (`year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tpmotte. student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tpmotte. year
CREATE TABLE IF NOT EXISTS `year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Les données exportées n'étaient pas sélectionnées.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
