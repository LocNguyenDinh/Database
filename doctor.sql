-- MySQL Script generated by MySQL Workbench
-- Mon Oct  5 18:21:12 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema doctor
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema doctor
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `doctor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `doctor` ;

-- -----------------------------------------------------
-- Table `doctor`.`doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doctor`.`doctor` (
  `id_doctor` INT NOT NULL AUTO_INCREMENT,
  `name_doctor` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `gender` VARCHAR(20) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `nationality` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `image_profile` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `about` TEXT NULL DEFAULT NULL,
  `address` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `phone` VARCHAR(20) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `education` VARCHAR(20) CHARACTER SET 'utf8' NOT NULL,
  `roles` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `specialities` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `workplace` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `created_at` DATE NULL DEFAULT NULL,
  `updated_at` DATE NULL DEFAULT NULL,
  `end_at` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_doctor`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `doctor`.`awards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doctor`.`awards` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_doctor` INT NOT NULL,
  `year_at` INT NULL DEFAULT NULL,
  `content` VARCHAR(1000) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_doctor` (`id_doctor` ASC) VISIBLE,
  CONSTRAINT `awards_ibfk_1`
    FOREIGN KEY (`id_doctor`)
    REFERENCES `doctor`.`doctor` (`id_doctor`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `doctor`.`experience`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doctor`.`experience` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_doctor` INT NOT NULL,
  `year_start` INT NULL DEFAULT NULL,
  `year_end` INT NULL DEFAULT NULL,
  `content` VARCHAR(1000) CHARACTER SET 'utf8' NOT NULL,
  `in_country` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_doctor` (`id_doctor` ASC) VISIBLE,
  CONSTRAINT `experience_ibfk_1`
    FOREIGN KEY (`id_doctor`)
    REFERENCES `doctor`.`doctor` (`id_doctor`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
