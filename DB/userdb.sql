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
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `last_name` VARCHAR(20) NOT NULL,
  `password` VARCHAR(60) NOT NULL,
  `account_status` VARCHAR(15) NULL DEFAULT 'active',
  `job_title` VARCHAR(25) NULL,
  `salary` INT NULL DEFAULT 0,
  `num_visits` INT NULL DEFAULT 0,
  `user_url` VARCHAR(500) NULL,
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
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `userdb`;
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (1, 'username', 'first.last@email.com', 'Larry', 'Kong', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (2, 'username', 'first.last@email.com', 'Lisa', 'Gibson', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (4, 'username', 'first.last@email.com', 'Buffy', 'Hua', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (5, 'username', 'first.last@email.com', 'Steve', 'Striker', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (6, 'username', 'first.last@email.com', 'Diane', 'Martindale', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (7, 'username', 'first.last@email.com', 'Dutch', 'LaFever', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (8, 'username', 'first.last@email.com', 'Lisa', 'Kong', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (9, 'username', 'first.last@email.com', 'Mitchel', 'Welch', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (10, 'username', 'first.last@email.com', 'Susan', 'Turner', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (14, 'username', 'first.last@email.com', 'Ginger', 'Bijur', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (15, 'username', 'first.last@email.com', 'Anthony', 'Goffi', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (16, 'username', 'first.last@email.com', 'Anthony', 'Kuehn', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (23, 'username', 'first.last@email.com', 'Greg', 'Reik', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (24, 'username', 'first.last@email.com', 'Brenda', 'Christensen', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (25, 'username', 'first.last@email.com', 'Mike', 'Ramberg', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (26, 'username', 'first.last@email.com', 'Leroy', 'Gibson', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (30, 'username', 'first.last@email.com', 'Valerie', 'Goodseat', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (31, 'username', 'first.last@email.com', 'Magda', 'Burrell', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (32, 'username', 'first.last@email.com', 'Dan', 'Storms', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (33, 'username', 'first.last@email.com', 'Marty', 'Suitt', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (34, 'username', 'first.last@email.com', 'James', 'Springsteen', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (35, 'username', 'first.last@email.com', 'Venkat', 'Fishback', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (41, 'username', 'first.last@email.com', 'Dave', 'Marsh', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (42, 'username', 'first.last@email.com', 'Richard', 'Bower', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (43, 'username', 'first.last@email.com', 'Chu Chi', 'Kooser', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (44, 'username', 'first.last@email.com', 'Jeff', 'Sutton', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (45, 'username', 'first.last@email.com', 'Bai', 'Hua', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (46, 'username', 'first.last@email.com', 'William', 'Tingvold', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (51, 'username', 'first.last@email.com', 'Dave', 'Tyler', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (52, 'username', 'first.last@email.com', 'Tom', 'Mutschler', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (53, 'username', 'first.last@email.com', 'Marcy', 'Divine', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (54, 'username', 'first.last@email.com', 'Jeff', 'Tirpak', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (55, 'username', 'first.last@email.com', 'Michael', 'Shaw', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (56, 'username', 'first.last@email.com', 'Barbara', 'Michelin', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (57, 'username', 'first.last@email.com', 'Reynaldo', 'Cimino', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (58, 'username', 'first.last@email.com', 'Joan', 'Coughlan', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (59, 'username', 'first.last@email.com', 'Jody', 'Fanous', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (60, 'username', 'first.last@email.com', 'David', 'Ferguson', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (61, 'username', 'first.last@email.com', 'Sarah', 'Striker', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (62, 'username', 'first.last@email.com', 'Williams', 'Sobol', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (63, 'username', 'first.last@email.com', 'Chris', 'Ringsdorf', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (64, 'username', 'first.last@email.com', 'Mark', 'Kordonowy', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (65, 'username', 'first.last@email.com', 'Jack', 'Johnson', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (66, 'username', 'first.last@email.com', 'Lynn', 'Hongslo', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (67, 'username', 'first.last@email.com', 'Chris', 'Christensen', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (68, 'username', 'first.last@email.com', 'James', 'Chiarelli', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (69, 'username', 'first.last@email.com', 'Peter', 'Cheatham', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (70, 'username', 'first.last@email.com', 'Larry', 'Hiner', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (71, 'username', 'first.last@email.com', 'Pat', 'Sager', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (72, 'username', 'first.last@email.com', 'Dan', 'Werle', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (73, 'username', 'first.last@email.com', 'Judith', 'Coulter', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (74, 'username', 'first.last@email.com', 'Bob', 'Spearman', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (75, 'username', 'first.last@email.com', 'Dave', 'Sandlier', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (76, 'username', 'first.last@email.com', 'Douglas', 'Sandberg', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (77, 'username', 'first.last@email.com', 'Doug', 'Campbell', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (78, 'username', 'first.last@email.com', 'Dave', 'Martindale', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (79, 'username', 'first.last@email.com', 'Douglas', 'Engberg', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (80, 'username', 'first.last@email.com', 'Doug', 'Selders', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (81, 'username', 'first.last@email.com', 'Heer', 'Trujillo', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (88, 'username', 'first.last@email.com', 'Steve ', 'O\'Connor', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (89, 'username', 'first.last@email.com', 'Allan', 'Aurand', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (93, 'username', 'first.last@email.com', 'Robert', 'Ng', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (94, 'username', 'first.last@email.com', 'Rebecca', 'Corrigan', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (95, 'username', 'first.last@email.com', 'Rick', 'Wilms', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (96, 'username', 'first.last@email.com', 'Howard', 'Sanchez', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (97, 'username', 'first.last@email.com', 'Rick', 'Rapoza', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (98, 'username', 'first.last@email.com', 'Joe', 'Dotts', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (99, 'username', 'first.last@email.com', 'Craig', 'Brock', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (100, 'username', 'first.last@email.com', 'Keith', 'Spivey', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (101, 'username', 'first.last@email.com', 'James', 'Sabbe', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (111, 'username', 'first.last@email.com', 'Diane', 'LaFever', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (112, 'username', 'first.last@email.com', 'Caroline', 'Anthony', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (113, 'username', 'first.last@email.com', 'Mahnaz', 'Jones', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (114, 'username', 'first.last@email.com', 'Sandra', 'Estrada III', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (115, 'username', 'first.last@email.com', 'Robbi', 'Almeida', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (116, 'username', 'first.last@email.com', 'Ronaly', 'Alper', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (117, 'username', 'first.last@email.com', 'Lenora', 'Cochran', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (118, 'username', 'first.last@email.com', 'Constance', 'Strawhun', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (119, 'username', 'first.last@email.com', 'Laura', 'Brooks', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (120, 'username', 'first.last@email.com', 'Garnic', 'Rogers', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (121, 'username', 'first.last@email.com', 'Eleanor', 'Hill', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');
INSERT INTO `user` (`id`, `username`, `email`, `first_name`, `last_name`, `password`, `account_status`, `job_title`, `salary`, `num_visits`, `user_url`) VALUES (122, 'username', 'first.last@email.com', 'Barb', 'Vaughn', 'passwd', 'active', 'Job Title', 89965, 10, 'http://www.robcodes.pro');

COMMIT;

