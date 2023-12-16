-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema abc_corp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema abc_corp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `abc_corp` DEFAULT CHARACTER SET utf8 ;
USE `abc_corp` ;

-- -----------------------------------------------------
-- Table `abc_corp`.`demograficos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abc_corp`.`demograficos` (
  `ID` INT NOT NULL,
  `Employee Number` INT NULL DEFAULT NULL,
  `Date Birth` YEAR NULL DEFAULT NULL,
  `Gender` VARCHAR(45) NULL DEFAULT NULL,
  `Marital Status` VARCHAR(45) NULL DEFAULT NULL,
  `Education` VARCHAR(45) NULL DEFAULT NULL,
  `Education Field` VARCHAR(45) NULL DEFAULT NULL,
  `Total Working Years` INT NULL DEFAULT NULL,
  `Num Companies Worked` INT NULL DEFAULT NULL,
  `Distance From Home` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `abc_corp`.`escalas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abc_corp`.`escalas` (
  `ID` INT NOT NULL,
  `Performance Rating` VARCHAR(45) NULL DEFAULT NULL,
  `Work Life Balance` VARCHAR(45) NULL DEFAULT NULL,
  `Job Satisfaction` VARCHAR(45) NULL DEFAULT NULL,
  `Job Involvement` VARCHAR(45) NULL DEFAULT NULL,
  `Relationship Satisfaction` VARCHAR(45) NULL DEFAULT NULL,
  `Environment Satisfaction` VARCHAR(45) NULL DEFAULT NULL,
  INDEX `fk_escalas_demograficos_idx` (`ID` ASC) VISIBLE,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_escalas_demograficos`
    FOREIGN KEY (`ID`)
    REFERENCES `abc_corp`.`demograficos` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `abc_corp`.`puesto trabajo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abc_corp`.`puesto trabajo` (
  `ID` INT NOT NULL,
  `Attrition` VARCHAR(45) NULL DEFAULT NULL,
  `Job Role` VARCHAR(45) NULL DEFAULT NULL,
  `Job Level` INT NULL DEFAULT NULL,
  `Years At Company` INT NULL DEFAULT NULL,
  `Years With Current Manager` INT NULL DEFAULT NULL,
  `Years Since Last Promotion` INT NULL DEFAULT NULL,
  `Training Times Last Year` INT NULL DEFAULT NULL,
  `Business Travel` VARCHAR(45) NULL DEFAULT NULL,
  `Over Time` VARCHAR(45) NULL DEFAULT NULL,
  INDEX `fk_puesto trabajo_demograficos1_idx` (`ID` ASC) VISIBLE,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_puesto trabajo_demograficos1`
    FOREIGN KEY (`ID`)
    REFERENCES `abc_corp`.`demograficos` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `abc_corp`.`salariales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abc_corp`.`salariales` (
  `ID` INT NOT NULL,
  `Monthly Income` FLOAT NULL DEFAULT NULL,
  `Daily Rate` FLOAT NULL DEFAULT NULL,
  `Hourly Rate` FLOAT NULL DEFAULT NULL,
  `Monthly Rate` FLOAT NULL DEFAULT NULL,
  `Percent Salary Hike` INT NULL DEFAULT NULL,
  `Remote Work` VARCHAR(45) NULL DEFAULT NULL,
  `Stock Option Level` VARCHAR(45) NULL DEFAULT NULL,
  INDEX `fk_salariales_demograficos1_idx` (`ID` ASC) VISIBLE,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_salariales_demograficos1`
    FOREIGN KEY (`ID`)
    REFERENCES `abc_corp`.`demograficos` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
