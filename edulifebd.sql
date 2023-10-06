
-- MySQL Script generated by MySQL Workbench
-- Fri Oct  6 10:55:34 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `edulife` DEFAULT CHARACTER SET utf8 ;
USE `edulife` ;

-- -----------------------------------------------------
-- Table `edulife`.`miperfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `edulife`.`miperfil` (
  `idmiperfil` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(60) NOT NULL,
  `apellido1` VARCHAR(45) NOT NULL,
  `apellido2` VARCHAR(45) NOT NULL,
  `plantel` VARCHAR(45) NOT NULL,
  `edad` VARCHAR(45) NOT NULL,
  `grupo` VARCHAR(45) NOT NULL,
  `turno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmiperfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `edulife`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `edulife`.`usuarios` (
  `idusuarios` INT NOT NULL AUTO_INCREMENT,
  `matricula` VARCHAR(60) NOT NULL,
  `usuario` VARCHAR(60) NOT NULL,
  `contraseña` VARCHAR(60) NOT NULL,
  `correo` VARCHAR(60) NOT NULL,
  `miperfil_idmiperfil` INT NOT NULL,
  PRIMARY KEY (`idusuarios`, `matricula`),
  INDEX `fk_usuarios_miperfil_idx` (`miperfil_idmiperfil` ASC),
  CONSTRAINT `fk_usuarios_miperfil`
    FOREIGN KEY (`miperfil_idmiperfil`)
    REFERENCES `edulife`.`miperfil` (`idmiperfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
