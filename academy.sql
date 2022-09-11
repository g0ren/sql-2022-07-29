SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `academy` DEFAULT CHARACTER SET utf8 ;
USE `academy` ;

-- -----------------------------------------------------
-- Table `academy`.`Groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academy`.`Groups` (
  `idGroups` INT NOT NULL AUTO_INCREMENT,
  `Name` NVARCHAR(10) NOT NULL,
  `Rating` INT NOT NULL, 
  CHECK (`Rating` >= 0 and `Rating` <= 5),
  `Year` INT NOT NULL, 
  CHECK (`Year` >= 1 and `Year` <= 5),
  PRIMARY KEY (`idGroups`),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `academy`.`Departments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academy`.`Departments` (
  `idDepartments` INT NOT NULL AUTO_INCREMENT,
  `Funding` INT NOT NULL DEFAULT 0, 
  CHECK (`Funding` >= 0),
  `Name` NVARCHAR(100) NOT NULL,
  PRIMARY KEY (`idDepartments`),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `academy`.`Faculties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academy`.`Faculties` (
  `idFaculties` INT NOT NULL AUTO_INCREMENT,
  `Name` NVARCHAR(100) NOT NULL,
  PRIMARY KEY (`idFaculties`),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `academy`.`Teachers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `academy`.`Teachers` (
    `idTeachers` INT NOT NULL AUTO_INCREMENT,
    `EmploymentDate` DATE NOT NULL,
    CHECK (`EmploymentDate` >= '1990-01-01'),
    `Salary` INT NOT NULL,
    CHECK (`Salary` > 0),
    `Surname` NVARCHAR(100) NOT NULL,
    PRIMARY KEY (`idTeachers`)
)  ENGINE=INNODB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
