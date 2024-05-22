-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ods11_grp10_PI
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ods11_grp10_PI
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ods11_grp10_PI` DEFAULT CHARACTER SET utf8 ;
USE `Ods11_grp10_PI` ;

-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`Comunidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`Comunidade` (
  `idComunidade` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `localidade` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idComunidade`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `idade` INT NOT NULL,
  `sexo` CHAR(2) NOT NULL,
  `telefone1` VARCHAR(12) NOT NULL,
  `telefone2` VARCHAR(12) NULL,
  `e-mail` VARCHAR(60) NULL,
  `Participa_da_Comunidade_idComunidade` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  INDEX `fk_Usuario_Comunidade_idx` (`Participa_da_Comunidade_idComunidade` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Comunidade`
    FOREIGN KEY (`Participa_da_Comunidade_idComunidade`)
    REFERENCES `Ods11_grp10_PI`.`Comunidade` (`idComunidade`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`CentroComunitario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`CentroComunitario` (
  `idCentroComunitario` INT NOT NULL AUTO_INCREMENT,
  `responsavel` VARCHAR(60) NOT NULL,
  `qtdeVagas` INT NOT NULL,
  `e-mail` VARCHAR(60) NOT NULL,
  `telefone1` VARCHAR(12) NOT NULL,
  `telefone2` VARCHAR(12) NULL,
  `Comunidade_idComunidade` INT NOT NULL,
  PRIMARY KEY (`idCentroComunitario`),
  INDEX `fk_CentroComunitario_Comunidade1_idx` (`Comunidade_idComunidade` ASC) VISIBLE,
  CONSTRAINT `fk_CentroComunitario_Comunidade1`
    FOREIGN KEY (`Comunidade_idComunidade`)
    REFERENCES `Ods11_grp10_PI`.`Comunidade` (`idComunidade`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`Endereco` (
  `CEP` VARCHAR(45) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(10) NULL,
  `complemento` VARCHAR(60) NULL,
  `Endereco_Usuario_idUsuario` INT NOT NULL,
  `CentroComunitario_idCentroComunitario` INT NOT NULL,
  INDEX `fk_Endereco_Usuario1_idx` (`Endereco_Usuario_idUsuario` ASC) VISIBLE,
  INDEX `fk_Endereco_CentroComunitario1_idx` (`CentroComunitario_idCentroComunitario` ASC) VISIBLE,
  CONSTRAINT `fk_Endereco_Usuario1`
    FOREIGN KEY (`Endereco_Usuario_idUsuario`)
    REFERENCES `Ods11_grp10_PI`.`Usuario` (`idUsuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Endereco_CentroComunitario1`
    FOREIGN KEY (`CentroComunitario_idCentroComunitario`)
    REFERENCES `Ods11_grp10_PI`.`CentroComunitario` (`idCentroComunitario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`Pluviometro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`Pluviometro` (
  `idPluviometro` INT NOT NULL AUTO_INCREMENT,
  `local_Pluviometro` VARCHAR(60) NOT NULL,
  `Comunidade_idComunidade` INT NOT NULL,
  PRIMARY KEY (`idPluviometro`),
  INDEX `fk_Pluviometro_Comunidade1_idx` (`Comunidade_idComunidade` ASC) VISIBLE,
  CONSTRAINT `fk_Pluviometro_Comunidade1`
    FOREIGN KEY (`Comunidade_idComunidade`)
    REFERENCES `Ods11_grp10_PI`.`Comunidade` (`idComunidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`Alerta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`Alerta` (
  `idAlerta` INT NOT NULL AUTO_INCREMENT,
  `data/hora` DATETIME NOT NULL,
  `intensidade` VARCHAR(45) NOT NULL,
  `tipoAlerta` VARCHAR(60) NOT NULL,
  `CentroComunitario_idCentroComunitario` INT NOT NULL,
  `Pluviometro_idPluviometro` INT NOT NULL,
  PRIMARY KEY (`idAlerta`),
  INDEX `fk_Alerta_CentroComunitario1_idx` (`CentroComunitario_idCentroComunitario` ASC) VISIBLE,
  INDEX `fk_Alerta_Pluviometro1_idx` (`Pluviometro_idPluviometro` ASC) VISIBLE,
  CONSTRAINT `fk_Alerta_CentroComunitario1`
    FOREIGN KEY (`CentroComunitario_idCentroComunitario`)
    REFERENCES `Ods11_grp10_PI`.`CentroComunitario` (`idCentroComunitario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Alerta_Pluviometro1`
    FOREIGN KEY (`Pluviometro_idPluviometro`)
    REFERENCES `Ods11_grp10_PI`.`Pluviometro` (`idPluviometro`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`Acolhimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`Acolhimento` (
  `idAcolhimento` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NOT NULL,
  `dataInicio` DATETIME NULL,
  `dataFim` DATETIME NULL,
  `Usuario_idUsuario` INT NULL,
  `CentroComunitario_idCentroComunitario` INT NOT NULL,
  PRIMARY KEY (`idAcolhimento`),
  INDEX `fk_Acolhimento_Usuario1_idx` (`Usuario_idUsuario` ASC) VISIBLE,
  INDEX `fk_Acolhimento_CentroComunitario1_idx` (`CentroComunitario_idCentroComunitario` ASC) VISIBLE,
  CONSTRAINT `fk_Acolhimento_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `Ods11_grp10_PI`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Acolhimento_CentroComunitario1`
    FOREIGN KEY (`CentroComunitario_idCentroComunitario`)
    REFERENCES `Ods11_grp10_PI`.`CentroComunitario` (`idCentroComunitario`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ods11_grp10_PI`.`lider_comunitario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ods11_grp10_PI`.`lider_comunitario` (
  `Usuario_idUsuario` INT NOT NULL,
  `Comunidade_idComunidade` INT NOT NULL,
  INDEX `fk_lider_comunitario_Usuario1_idx` (`Usuario_idUsuario` ASC) VISIBLE,
  INDEX `fk_lider_comunitario_Comunidade1_idx` (`Comunidade_idComunidade` ASC) VISIBLE,
  CONSTRAINT `fk_lider_comunitario_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `Ods11_grp10_PI`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lider_comunitario_Comunidade1`
    FOREIGN KEY (`Comunidade_idComunidade`)
    REFERENCES `Ods11_grp10_PI`.`Comunidade` (`idComunidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
