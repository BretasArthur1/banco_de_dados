-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- tabela de usuarios da arquitetura tutores
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `senha` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'tabela de usuarios da arquitetura tutores';

-- ---
-- Table 'general_forms'
-- Tabela de formulario geral da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `general_forms`;
		
CREATE TABLE `general_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `date_of_birth` VARCHAR NULL DEFAULT NULL,
  `gender` VARCHAR(30) NULL DEFAULT NULL,
  ` education` VARCHAR(30) NULL DEFAULT NULL,
  `type_of_housing` VARCHAR(30) NULL DEFAULT NULL,
  `family_constitution` VARCHAR(50) NULL DEFAULT NULL,
  ` income` DECIMAL NULL DEFAULT NULL,
  `live_in_the_house` INTEGER NULL DEFAULT NULL,
  `address` VARCHAR(30) NULL DEFAULT NULL,
  `choice_of_form` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de formulario geral da arquitetura formularios';

-- ---
-- Table 'user_forms'
-- tabela para salvar os dados do usuario na arquitetura formularios
-- ---

DROP TABLE IF EXISTS `user_forms`;
		
CREATE TABLE `user_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `social name` VARCHAR(30) NULL DEFAULT NULL,
  `cellphone` INTEGER NULL DEFAULT NULL,
  `first name` VARCHAR(30) NULL DEFAULT NULL,
  `last name` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'tabela para salvar os dados do usuario na arquitetura formul';

-- ---
-- Table 'have_forms'
-- Tabela de quem tem cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `have_forms`;
		
CREATE TABLE `have_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `time_with_dog` VARCHAR(30) NULL DEFAULT NULL,
  `first_dog` VARCHAR(10) NULL DEFAULT NULL,
  ` other_pets` VARCHAR(10) NULL DEFAULT NULL,
  `dogs_age` VARCHAR(10) NULL DEFAULT NULL,
  `breed` VARCHAR(10) NULL DEFAULT NULL,
  `where_get` VARCHAR(30) NULL DEFAULT NULL,
  `paid_to_acquire` VARCHAR(5) NULL DEFAULT NULL,
  `age_reached` VARCHAR(30) NULL DEFAULT NULL,
  `dog_personality` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `why_do_have` VARCHAR(100) NULL DEFAULT NULL,
  `others` VARCHAR(50) NULL DEFAULT NULL,
  `characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `decision` VARCHAR(30) NULL DEFAULT NULL,
  `couldnt_keep` VARCHAR(30) NULL DEFAULT NULL,
  `how_vet` VARCHAR(10) NULL DEFAULT NULL,
  `say_about` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem tem cao da arquitetura formularios';

-- ---
-- Table 'dog_forms_have'
-- tabela para preencher dados do cachorro na arquitetura formularios
-- ---

DROP TABLE IF EXISTS `dog_forms_have`;
		
CREATE TABLE `dog_forms_have` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog name` VARCHAR(30) NULL DEFAULT NULL,
  `gender` VARCHAR(30) NULL DEFAULT NULL,
  ` castrated` VARCHAR(30) NULL DEFAULT NULL,
  `belongs_to_you` INTEGER NULL DEFAULT NULL,
  `id_have_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'tabela para preencher dados do cachorro na arquitetura formu';

-- ---
-- Table 'had_forms'
-- Tabela de quem teve cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `had_forms`;
		
CREATE TABLE `had_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dogs_name` VARCHAR(30) NULL DEFAULT NULL,
  `dogs_personality` VARCHAR(30) NULL DEFAULT NULL,
  `time_with_you` INTEGER NULL DEFAULT NULL,
  `first_dog` VARCHAR(30) NULL DEFAULT NULL,
  `other_pets` VARCHAR(30) NULL DEFAULT NULL,
  `pet_age` INTEGER NULL DEFAULT NULL,
  `castrated` VARCHAR(30) NULL DEFAULT NULL,
  `breed` VARCHAR(30) NULL DEFAULT NULL,
  `where_came_from` VARCHAR(30) NULL DEFAULT NULL,
  `pet_price` VARCHAR(30) NULL DEFAULT NULL,
  `why` VARCHAR(30) NULL DEFAULT NULL,
  `characteristics` VARCHAR(30) NULL DEFAULT NULL,
  `name_decision` VARCHAR(30) NULL DEFAULT NULL,
  `most_like` VARCHAR(30) NULL DEFAULT NULL,
  `dont_like` VARCHAR(30) NULL DEFAULT NULL,
  `veterinary` VARCHAR(30) NULL DEFAULT NULL,
  `stopped_living ` VARCHAR(30) NULL DEFAULT NULL,
  `belonged_to_you` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem teve cao da arquitetura formularios';

-- ---
-- Table 'want_forms'
-- Tabela de quem quer ter cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `want_forms`;
		
CREATE TABLE `want_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `characteristics` VARCHAR(100) NULL DEFAULT NULL,
  `live_with_dog` VARCHAR(30) NULL DEFAULT NULL,
  `nickname` VARCHAR(30) NULL DEFAULT NULL,
  `pretend` VARCHAR(30) NULL DEFAULT NULL,
  `include` VARCHAR(30) NULL DEFAULT NULL,
  `what_personality` VARCHAR(30) NULL DEFAULT NULL,
  `research_expenses` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem quer ter cao da arquitetura formularios';

-- ---
-- Table 'null_forms'
-- Tabela de quem nao quer ter cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `null_forms`;
		
CREATE TABLE `null_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dont_want` VARCHAR(100) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem nao quer ter cao da arquitetura formularios';

-- ---
-- Table 'dog_forms_want'
-- Tabela para receber os dados do cachorro da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `dog_forms_want`;
		
CREATE TABLE `dog_forms_want` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_size` VARCHAR(30) NULL DEFAULT NULL,
  ` coat` VARCHAR(30) NULL DEFAULT NULL,
  `color_preference` VARCHAR(30) NULL DEFAULT NULL,
  `gender` VARCHAR(30) NULL DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `breed` VARCHAR(30) NULL DEFAULT NULL,
  `id_want_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela para receber os dados do cachorro da arquitetura form';

-- ---
-- Table 'all_dogs'
-- Tabela para agregar informações de todos os cachorros, reais e fictícios, associados aos usuários
-- ---

DROP TABLE IF EXISTS `all_dogs`;
		
CREATE TABLE `all_dogs` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_name` VARCHAR(30) NULL DEFAULT NULL,
  `gender` VARCHAR(30) NULL DEFAULT NULL,
  `breed` VARCHAR(30) NULL DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `real_or_fictitious` ENUM('real', 'fictitious') NULL DEFAULT 'real',
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela para agregar informações de todos os cachorros, reais';

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `general_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `user_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `have_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `dog_forms_have` ADD FOREIGN KEY (id_have_forms) REFERENCES `have_forms` (`id`);
ALTER TABLE `had_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `want_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `null_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `dog_forms_want` ADD FOREIGN KEY (id_want_forms) REFERENCES `want_forms` (`id`);
ALTER TABLE `all_dogs` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `general_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `have_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dog_forms_have` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `had_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `want_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `null_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dog_forms_want` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `all_dogs` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`name`,`email`,`senha`) VALUES
-- ('','','','');
-- INSERT INTO `general_forms` (`id`,`date_of_birth`,`gender`,` education`,`type_of_housing`,`family_constitution`,` income`,`live_in_the_house`,`address`,`choice_of_form`,`id_users`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO `user_forms` (`id`,`social name`,`cellphone`,`first name`,`last name`,`id_users`) VALUES
-- ('','','','','','');
-- INSERT INTO `have_forms` (`id`,`time_with_dog`,`first_dog`,` other_pets`,`dogs_age`,`breed`,`where_get`,`paid_to_acquire`,`age_reached`,`dog_personality`,`why_do_have`,`others`,`characteristics`,`decision`,`couldnt_keep`,`how_vet`,`say_about`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dog_forms_have` (`id`,`dog name`,`gender`,` castrated`,`belongs_to_you`,`id_have_forms`) VALUES
-- ('','','','','','');
-- INSERT INTO `had_forms` (`id`,`dogs_name`,`dogs_personality`,`time_with_you`,`first_dog`,`other_pets`,`pet_age`,`castrated`,`breed`,`where_came_from`,`pet_price`,`why`,`characteristics`,`name_decision`,`most_like`,`dont_like`,`veterinary`,`stopped_living `,`belonged_to_you`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `want_forms` (`id`,`characteristics`,`live_with_dog`,`nickname`,`pretend`,`include`,`what_personality`,`research_expenses`,`id_users`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `null_forms` (`id`,`dont_want`,`id_users`) VALUES
-- ('','','');
-- INSERT INTO `dog_forms_want` (`id`,`dog_size`,` coat`,`color_preference`,`gender`,`age`,`breed`,`id_want_forms`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `all_dogs` (`id`,`dog_name`,`gender`,`breed`,`age`,`real_or_fictitious`,`id_users`) VALUES
-- ('','','','','','','');