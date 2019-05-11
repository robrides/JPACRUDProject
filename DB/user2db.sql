-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema userdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `userdb` ;

-- -----------------------------------------------------
-- Schema userdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `userdb` DEFAULT CHARACTER SET utf8 ;
USE `userdb` ;

-- -----------------------------------------------------
-- Table `junk`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `junk` ;

CREATE TABLE IF NOT EXISTS `junk` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS useruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'useruser'@'localhost' IDENTIFIED BY '#3@Us3ruser#3@';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'useruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `junk`
-- -----------------------------------------------------
START TRANSACTION;
USE `userdb`;
INSERT INTO `junk` (`id`, `data`) VALUES (1, 'somedata');

COMMIT;

