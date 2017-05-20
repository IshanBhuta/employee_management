/*SQL FOR USER TABLE*/
CREATE TABLE IF NOT EXISTS `employee_management`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `first_name` VARCHAR(225) NOT NULL COMMENT '',
  `last_name` VARCHAR(225) NOT NULL COMMENT '',
  `email` VARCHAR(225) NOT NULL COMMENT '',
  `password` VARCHAR(225) NOT NULL COMMENT '',
  `gender` ENUM('M', 'F') NOT NULL COMMENT '',
  `address` TEXT NULL COMMENT '',
  `authorization_token` TEXT NULL COMMENT '',
  `mobile_no` VARCHAR(225) NULL COMMENT '',
  `department_id` INT NOT NULL COMMENT '',
  `designation_id` INT NOT NULL COMMENT '',
  `crd` DATETIME NOT NULL COMMENT '',
  `upd` DATETIME NOT NULL COMMENT '',
  primary key (id),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC)  COMMENT '')
COMMENT = 'User table which maintain all user related records';

/*SQL FOR SALARY TABLE*/
CREATE TABLE IF NOT EXISTS `employee_management`.`salary` (
  `id` INT NOT NULL COMMENT '',
  `user_id` INT NOT NULL COMMENT '',
  `salary` INT NOT NULL DEFAULT 0 COMMENT '',
  `crd` DATETIME NOT NULL COMMENT '',
  `upd` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
COMMENT = 'Salary table which maintain all user salary related records';

/*SQL FOR SALARY TABLE*/
CREATE TABLE IF NOT EXISTS `employee_management`.`designation` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(225) NOT NULL COMMENT'',
  `crd` DATETIME NOT NULL COMMENT '',
  `upd` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
COMMENT = 'Salary table which maintain all user designation related records';

/*SQL FOR SALARY TABLE*/
CREATE TABLE IF NOT EXISTS `employee_management`.`department` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `name` VARCHAR(225) NOT NULL COMMENT'',
  `crd` DATETIME NOT NULL COMMENT '',
  `upd` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
COMMENT = 'Salary table which maintain all user salary related records';

ALTER TABLE `employee_management`.`user` 
ADD INDEX `department_id` (`department_id` ASC)  COMMENT '';

ALTER TABLE `employee_management`.`user` 
ADD CONSTRAINT `department_id`
  FOREIGN KEY (`department_id`)
  REFERENCES `employee_management`.`department` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

