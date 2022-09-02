/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `caseplace_test_table` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '---',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Id_collection` int(10) unsigned DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO `caseplace_test_table` (`Id`, `Name`, `Date`, `Id_collection`, `Price`) VALUES
	(1, 'Товар 1', '2022-08-23 17:00:00', 2, 10.00),
	(2, 'Товар 2', '2022-08-09 17:00:00', 1, 101.00),
	(3, 'Товар 3', '2022-08-04 17:00:00', 3, 102.00),
	(4, 'Товар 4', '2022-08-22 17:00:00', 7, 10.00),
	(5, 'Товар 5', '2022-08-03 17:00:00', 2, 10.00),
	(6, 'Товар 6', '2022-08-09 17:00:00', 2, 50.00),
	(7, 'Товар 7', '2022-08-04 17:00:00', 2, 10.00),
	(8, 'Товар 8', '2022-08-21 17:00:00', 1, 101.00),
	(9, 'Товар 9', '2022-08-30 17:00:00', 3, 102.00),
	(10, 'Товар 10', '2022-08-23 17:00:00', 7, 10.00),
	(11, 'Товар 11', '2022-08-26 17:00:00', 2, 10.00),
	(12, 'Товар 12', '2022-08-26 17:00:00', 2, 20.00),
	(14, 'Товар 14', '2022-08-20 17:00:00', 2, 10.00),
	(15, 'Товар 15', '2022-08-20 17:00:00', 1, 101.00),
	(16, 'Товар 16', '2022-08-10 17:00:00', 3, 102.00),
	(17, 'Товар 17', '2022-08-18 17:00:00', 7, 10.00),
	(18, 'Товар 18', '2022-08-26 17:00:00', 2, 10.00),
	(19, 'Товар 19', '2022-08-14 17:00:00', 2, 55.00),
	(20, 'Товар 20', '2022-08-22 17:00:00', 2, 10.00),
	(21, 'Товар 21', '2022-08-05 17:00:00', 1, 101.00),
	(22, 'Товар 22', '2022-08-21 17:00:00', 3, 102.00),
	(23, 'Товар 23', '2022-08-24 17:00:00', 7, 10.00),
	(24, 'Товар 24', '2022-08-27 17:00:00', 2, 10.00),
	(25, 'Товар 25', '2022-08-29 17:00:00', 2, 3.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
