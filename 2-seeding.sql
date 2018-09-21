-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.14 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de données de la table tpmotte.assessment : ~9 rows (environ)
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
INSERT INTO `assessment` (`id_student`, `id_module`, `attempted`, `passed`, `grade`) VALUES
	(1, 1, '2015-04-21 15:13:13', '2015-04-30 15:13:13', 2),
	(2, 1, '2015-04-21 15:13:13', '2015-04-30 15:13:13', 17),
	(1, 2, '2015-04-24 15:14:33', '2015-04-30 15:13:13', 13),
	(2, 2, '2015-04-24 15:14:33', '2015-04-30 15:13:13', 11),
	(1, 3, '2016-04-21 15:15:35', '2016-04-30 15:15:35', 18),
	(2, 3, '2016-04-21 15:15:35', '2016-04-30 15:15:35', 12),
	(1, 5, '2017-04-21 15:20:02', '2017-04-30 15:20:02', 13),
	(2, 5, '2017-04-21 15:20:57', '2017-04-30 15:20:02', 9),
	(3, 6, '2017-04-21 15:22:07', '2017-04-30 15:20:02', 10);
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;

-- Export de données de la table tpmotte.enrolment : ~7 rows (environ)
/*!40000 ALTER TABLE `enrolment` DISABLE KEYS */;
INSERT INTO `enrolment` (`id_student`, `id_year`, `from`, `to`) VALUES
	(1, 1, '2015-01-01 00:00:00', '2015-12-31 00:00:00'),
	(1, 2, '2016-01-01 00:00:00', '2016-12-31 00:00:00'),
	(1, 3, '2017-01-01 00:00:00', '2017-12-31 00:00:00'),
	(2, 1, '2015-01-01 00:00:00', '2015-12-31 00:00:00'),
	(2, 2, '2016-01-01 00:00:00', '2016-12-31 00:00:00'),
	(2, 3, '2017-01-01 00:00:00', '2017-12-31 00:00:00'),
	(3, 2, '2017-01-01 00:00:00', '2017-12-31 00:00:00');
/*!40000 ALTER TABLE `enrolment` ENABLE KEYS */;

-- Export de données de la table tpmotte.module : ~6 rows (environ)
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` (`id`, `name`, `year`) VALUES
	(1, 'linux', 1),
	(2, 'docker', 1),
	(3, 'symfony', 2),
	(4, 'asp.net core', 2),
	(5, 'aspect oriented architecture', 3),
	(6, 'ddd and hexagonal architecture', 3);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;

-- Export de données de la table tpmotte.student : ~5 rows (environ)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `firstname`, `lastname`) VALUES
	(1, 'Lucas', 'Foussier'),
	(2, 'Rui', 'Chen'),
	(3, 'Damien', 'Bouyeur'),
	(4, 'Antoine', 'Motte'),
	(5, 'Antoine', 'Besnard');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Export de données de la table tpmotte.year : ~3 rows (environ)
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
INSERT INTO `year` (`id`, `label`) VALUES
	(1, 'First year (Bsc)'),
	(2, 'Second year (Bsc Hons)'),
	(3, 'Third year (Msc)');
/*!40000 ALTER TABLE `year` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
