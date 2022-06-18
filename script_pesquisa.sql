-- MySQL Script generated by MySQL Workbench
-- qui 02 jun 2022 14:10:41
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbpesquisa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbpesquisa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbpesquisa` DEFAULT CHARACTER SET utf8 ;
USE `dbpesquisa` ;

-- -----------------------------------------------------
-- Table `dbpesquisa`.`pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpesquisa`.`pessoa` (
  `cod_pessoa` INT NOT NULL,
  `genero` VARCHAR(45) NULL,
  `data_nascimento` DATE NULL,
  PRIMARY KEY (`cod_pessoa`),
  UNIQUE INDEX `cod_pessoa_UNIQUE` (`cod_pessoa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbpesquisa`.`hobbie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpesquisa`.`hobbie` (
  `cod_hobbie` INT NOT NULL AUTO_INCREMENT,
  `hobbie` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_hobbie`),
  UNIQUE INDEX `hobbie_UNIQUE` (`hobbie` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbpesquisa`.`bebida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpesquisa`.`bebida` (
  `cod_bebida` INT NOT NULL AUTO_INCREMENT,
  `bebida` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_bebida`),
  UNIQUE INDEX `bebida_UNIQUE` (`bebida` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbpesquisa`.`clima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpesquisa`.`clima` (
  `cod_clima` INT NOT NULL AUTO_INCREMENT,
  `clima` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_clima`),
  UNIQUE INDEX `clima_UNIQUE` (`clima` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbpesquisa`.`animal_estimacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpesquisa`.`animal_estimacao` (
  `cod_animal_estimacao` INT NOT NULL AUTO_INCREMENT,
  `animal_estimacao` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_animal_estimacao`),
  UNIQUE INDEX `animal_estimacao_UNIQUE` (`animal_estimacao` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbpesquisa`.`pesquisa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpesquisa`.`pesquisa` (
  `cod_pesquisa` INT NOT NULL AUTO_INCREMENT,
  `data_pesquisa` VARCHAR(45) NULL,
  `cod_pessoa` INT NOT NULL,
  `cod_animal_estimacao` INT NOT NULL,
  `cod_bebida` INT NOT NULL,
  `cod_hobbie` INT NOT NULL,
  `cod_clima` INT NOT NULL,
  PRIMARY KEY (`cod_pesquisa`),
  INDEX `fk_pesquisa_pessoa_idx` (`cod_pessoa` ASC) VISIBLE,
  INDEX `fk_pesquisa_animal_estimacao1_idx` (`cod_animal_estimacao` ASC) VISIBLE,
  INDEX `fk_pesquisa_bebida1_idx` (`cod_bebida` ASC) VISIBLE,
  INDEX `fk_pesquisa_hobbie1_idx` (`cod_hobbie` ASC) VISIBLE,
  INDEX `fk_pesquisa_clima1_idx` (`cod_clima` ASC) VISIBLE,
  CONSTRAINT `fk_pesquisa_pessoa`
    FOREIGN KEY (`cod_pessoa`)
    REFERENCES `dbpesquisa`.`pessoa` (`cod_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_animal_estimacao1`
    FOREIGN KEY (`cod_animal_estimacao`)
    REFERENCES `dbpesquisa`.`animal_estimacao` (`cod_animal_estimacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_bebida1`
    FOREIGN KEY (`cod_bebida`)
    REFERENCES `dbpesquisa`.`bebida` (`cod_bebida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_hobbie1`
    FOREIGN KEY (`cod_hobbie`)
    REFERENCES `dbpesquisa`.`hobbie` (`cod_hobbie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pesquisa_clima1`
    FOREIGN KEY (`cod_clima`)
    REFERENCES `dbpesquisa`.`clima` (`cod_clima`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
