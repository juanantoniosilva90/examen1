-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema examen1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema examen1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `examen1` DEFAULT CHARACTER SET utf8 ;
USE `examen1` ;

-- -----------------------------------------------------
-- Table `examen1`.`Transaccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examen1`.`Transaccion` (
  `idTransaccion` INT NOT NULL,
  `idEmpresa` INT NOT NULL,
  `nombreDocumento` VARCHAR(45) NOT NULL,
  `fechaRegistro` DATE NOT NULL,
  `Estado` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idTransaccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examen1`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examen1`.`Empresa` (
  `idEmpresa` INT NOT NULL,
  `ruc` VARCHAR(45) NOT NULL,
  `RazonSocial` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpresa`),
  CONSTRAINT `idEmpresa`
    FOREIGN KEY (`idEmpresa`)
    REFERENCES `examen1`.`Transaccion` (`idTransaccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `examen1`.`Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `examen1`.`Respuesta` (
  `idRespuesta` INT NOT NULL,
  `idTransaccion` INT NOT NULL,
  `codigodespuesta` VARCHAR(20) NOT NULL,
  `descripcionRespuesta` VARCHAR(45) NOT NULL,
  `fechaRespuesta` DATE NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRespuesta`),
  CONSTRAINT `idTransaccion`
    FOREIGN KEY ()
    REFERENCES `examen1`.`Transaccion` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
