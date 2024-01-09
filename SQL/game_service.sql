CREATE DATABASE game_service CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use game_service;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gs_fee_bill
-- ----------------------------
DROP TABLE IF EXISTS `gs_fee_bill`;
CREATE TABLE `gs_fee_bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_user` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `create_time` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `money` double(11,4) DEFAULT '0.0000',
  `fee_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `period` int DEFAULT '0',
  `status` int DEFAULT '0',
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `period_start_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `bet` double(11,4) DEFAULT '0.0000',
  `win` double(11,4) DEFAULT '0.0000',
  `period_end_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_ind` (`service_user`,`currency`,`period_start_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_fee_bill
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_fee_bill_settle
-- ----------------------------
DROP TABLE IF EXISTS `gs_fee_bill_settle`;
CREATE TABLE `gs_fee_bill_settle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_id` int DEFAULT '0',
  `balance` double(11,4) DEFAULT '0.0000',
  `new_balance` double(11,4) DEFAULT '0.0000',
  `status` int DEFAULT '0',
  `create_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `money` double(11,4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_bill_id` (`bill_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_fee_bill_settle
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_fee_set
-- ----------------------------
DROP TABLE IF EXISTS `gs_fee_set`;
CREATE TABLE `gs_fee_set` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_user` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `period` int DEFAULT '1' COMMENT '1.day\n2.month\n3.year',
  `money` double(11,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `create_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_service_name` (`service_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_fee_set
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance`;
CREATE TABLE `gs_game_chance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT '0.0000',
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `min_win` double(20,4) DEFAULT '0.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `game_id_idx` (`game_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance
-- ----------------------------
BEGIN;
INSERT INTO `gs_game_chance` (`id`, `game_id`, `freespin`, `rotator`, `min_money`, `max_money`, `game_chance`, `base_money`, `is_random`, `bom_game_chance`, `bom_min_money`, `bom_max_money`, `freespin_min`, `freespin_max`, `status`, `max_win`, `min_win`, `gamble`) VALUES (1, 'BASE', 0.0000, 0.0000, 0.0100, 1.0000, 0.7900, 1.0000, 1, 0.2000, 0.1000, 1.3000, 0.0000, 9999.0000, 1, 2000.0000, 0.0000, 0.4000);
INSERT INTO `gs_game_chance` (`id`, `game_id`, `freespin`, `rotator`, `min_money`, `max_money`, `game_chance`, `base_money`, `is_random`, `bom_game_chance`, `bom_min_money`, `bom_max_money`, `freespin_min`, `freespin_max`, `status`, `max_win`, `min_win`, `gamble`) VALUES (2, '5bf661bf80797a00112ea73c', 0.9000, 0.0000, 0.0100, 1.0000, 0.7999, 1.0000, 1, 0.0000, 0.1000, 999.0000, 0.0000, 9999.0000, 1, 2000.0000, 0.0000, 0.4000);
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_freespin
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_freespin`;
CREATE TABLE `gs_game_chance_freespin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT '0.0000',
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `min_win` double(20,4) DEFAULT '0.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `game_id_idx` (`game_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_freespin
-- ----------------------------
BEGIN;
INSERT INTO `gs_game_chance_freespin` (`id`, `game_id`, `freespin`, `rotator`, `min_money`, `max_money`, `game_chance`, `base_money`, `is_random`, `bom_game_chance`, `bom_min_money`, `bom_max_money`, `freespin_min`, `freespin_max`, `status`, `max_win`, `min_win`, `gamble`) VALUES (1, 'BASE', 0.0010, 0.0000, 0.1000, 1.1000, 1.0000, 1.0000, 1, 0.0070, 2.0000, 6.0000, 2.0000, 6.0000, 1, 1000.0000, 0.0000, 0.1000);
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_freespin_next
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_freespin_next`;
CREATE TABLE `gs_game_chance_freespin_next` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT '0.0000',
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `min_win` double(20,4) DEFAULT '0.0000',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `game_id_idx` (`game_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_freespin_next
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_next
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_next`;
CREATE TABLE `gs_game_chance_next` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT '0.0000',
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `min_win` double(20,4) DEFAULT '0.0000',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `game_id_idx` (`game_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_next
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_user`;
CREATE TABLE `gs_game_chance_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT '0.0000',
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `min_win` double(20,4) DEFAULT '0.0000',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `game_id_idx` (`username`,`s_username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_user_freespin
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_user_freespin`;
CREATE TABLE `gs_game_chance_user_freespin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT NULL,
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `min_win` double(20,4) DEFAULT '0.0000',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `game_id_idx` (`username`,`s_username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_user_freespin
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_user_freespin_next
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_user_freespin_next`;
CREATE TABLE `gs_game_chance_user_freespin_next` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT '0.0000',
  `rotator` double(10,4) DEFAULT '0.0000',
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `game_chance` double(10,4) DEFAULT '0.0000',
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin_min` double(10,4) DEFAULT '0.0000',
  `freespin_max` double(10,4) DEFAULT '0.0000',
  `status` int DEFAULT '1',
  `min_win` double(20,4) DEFAULT '0.0000',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `game_id_idx` (`username`,`s_username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_user_freespin_next
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_chance_user_next
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_chance_user_next`;
CREATE TABLE `gs_game_chance_user_next` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin` double(10,4) DEFAULT NULL,
  `rotator` double(10,4) DEFAULT NULL,
  `min_money` double(10,4) DEFAULT NULL,
  `max_money` double(10,4) DEFAULT NULL,
  `game_chance` double(10,4) DEFAULT NULL,
  `base_money` double(10,4) DEFAULT '1.0000',
  `is_random` int DEFAULT '0',
  `bom_game_chance` double(10,4) DEFAULT '0.0000',
  `bom_min_money` double(10,4) DEFAULT '0.0000',
  `bom_max_money` double(10,4) DEFAULT '0.0000',
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `freespin_min` double(10,4) DEFAULT NULL,
  `freespin_max` double(10,4) DEFAULT NULL,
  `status` int DEFAULT '1',
  `min_win` double(20,4) DEFAULT '0.0000',
  `max_win` double(20,4) DEFAULT '9999.0000',
  `gamble` double(11,4) DEFAULT '0.0000' COMMENT 'gamble',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `game_id_idx` (`username`,`s_username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_chance_user_next
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_config_properties
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_config_properties`;
CREATE TABLE `gs_game_config_properties` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `application` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `profile` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `label` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_config_properties
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_freespin_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_freespin_user`;
CREATE TABLE `gs_game_freespin_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `t_record_id` int DEFAULT '0',
  `round_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `session_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `win` double(20,2) DEFAULT '0.00',
  `s_round_id` int DEFAULT '0',
  `record_id` int DEFAULT '0',
  `is_trigger` int DEFAULT '0',
  `freespin_remain` int DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `freespin_remain_total` int DEFAULT '0',
  `total_win` double(20,2) DEFAULT '0.00',
  `bet_lines` int DEFAULT '0',
  `bet_one` double(20,2) DEFAULT '0.00',
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ind_username_susername` (`s_username`,`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_freespin_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_interaction_record
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_interaction_record`;
CREATE TABLE `gs_game_interaction_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `session_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `balance` double(20,2) DEFAULT '0.00',
  `round_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `bet_total` double(10,2) DEFAULT '0.00',
  `win` double(10,2) DEFAULT '0.00',
  `create_time` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `currency` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `locale` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `bet_lines` int DEFAULT '0',
  `bet_one` double(10,2) DEFAULT '0.00',
  `status` int DEFAULT '0',
  `source_round` int DEFAULT '0',
  `freespin_remain` int DEFAULT '0',
  `is_freespin` int DEFAULT '0',
  `trigger_spins` int DEFAULT '0',
  `old_balance` double(20,2) DEFAULT '0.00',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ind_username_susername` (`s_username`,`username`) USING BTREE,
  KEY `ind_create_time` (`create_time`) USING BTREE,
  KEY `ind_game_id` (`game_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_interaction_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_list
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_list`;
CREATE TABLE `gs_game_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `line` int DEFAULT NULL,
  `status` int DEFAULT '1',
  `game_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `game_class` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `local_game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `game_version_origin` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `symbol` int DEFAULT NULL,
  `game_version` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_list
-- ----------------------------
BEGIN;
INSERT INTO `gs_game_list` (`id`, `game_id`, `line`, `status`, `game_name`, `game_class`, `local_game_id`, `game_version_origin`, `symbol`, `game_version`) VALUES (1, '5bf661bf80797a00112ea73c', 6, 1, 'Cheeky Monkeys', 'auto2', '5c6d33b78c30e70001b0bc60', '1.0', NULL, '08c81dd3c59a288c9d26e2c77e2b2e10');
COMMIT;


-- ----------------------------
-- Table structure for gs_game_record_everyday
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_record_everyday`;
CREATE TABLE `gs_game_record_everyday` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bet` double(11,5) DEFAULT '0.00000',
  `win` double(11,5) DEFAULT '0.00000',
  `cwin` double(11,5) DEFAULT '0.00000',
  `date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `create_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `game_count` int DEFAULT NULL,
  `freespin_count` int DEFAULT NULL,
  `freespin_win` double(11,4) DEFAULT NULL,
  `user_count` int DEFAULT '0',
  `game_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_id` (`currency`,`date`,`game_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_record_everyday
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_screen
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_screen`;
CREATE TABLE `gs_game_screen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `screen` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `win` double DEFAULT NULL,
  `bet` double DEFAULT NULL,
  `freespin` int DEFAULT NULL,
  `rotations` int DEFAULT NULL,
  `win_lines` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `line` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_screen` (`screen`) USING BTREE,
  KEY `idx_line` (`line`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_screen
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_session
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_session`;
CREATE TABLE `gs_game_session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `session_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `create_time` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` int DEFAULT NULL,
  `callback_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `update_time` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_session
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_support_type
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_support_type`;
CREATE TABLE `gs_game_support_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_support_type
-- ----------------------------
BEGIN;
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (1, 'currency', 'USD', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (2, 'currency', 'JP', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (3, 'locale', 'zh', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (4, 'locale', 'en', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (5, 'locale', 'vi', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (6, 'locale', 'id', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (7, 'locale', 'th', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (8, 'locale', 'ko', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (9, 'locale', 'ja', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (10, 'currency', 'MYR', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (11, 'currency', 'THB', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (12, 'currency', 'IDR', 1);
INSERT INTO `gs_game_support_type` (`id`, `type`, `name`, `status`) VALUES (13, 'currency', 'CNY', 1);
COMMIT;

-- ----------------------------
-- Table structure for gs_game_user_info
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_user_info`;
CREATE TABLE `gs_game_user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` int DEFAULT '1',
  `create_time` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_user_suser` (`username`,`s_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Records of gs_game_user_info
-- ----------------------------
BEGIN;
INSERT INTO `gs_game_user_info` (`id`, `username`, `s_username`, `locale`, `currency`, `status`, `create_time`) VALUES (1, 'test', 'test', 'en', 'USD', 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gs_game_user_record_everyday
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_user_record_everyday`;
CREATE TABLE `gs_game_user_record_everyday` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bet` double(11,5) DEFAULT '0.00000',
  `win` double(11,5) DEFAULT '0.00000',
  `cwin` double(11,5) DEFAULT '0.00000',
  `date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `create_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `game_count` int DEFAULT NULL,
  `freespin_count` int DEFAULT NULL,
  `freespin_win` double(11,4) DEFAULT NULL,
  `game_count_unique` int DEFAULT '0',
  `freespin_count_unique` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_id` (`username`,`s_username`,`currency`,`date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_user_record_everyday
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_game_win_info
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_win_info`;
CREATE TABLE `gs_game_win_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `screen` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `lines` int DEFAULT NULL,
  `record_id` int DEFAULT NULL,
  `game_chance` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `server_chance_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `game_class` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `round_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `bet_total` double(10,4) DEFAULT NULL,
  `win` double(10,4) DEFAULT NULL,
  `service_chance` double(10,4) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `s_username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `use_chance` double(10,4) DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `exception` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `game_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `min_money` double(10,4) DEFAULT '0.0000',
  `max_money` double(10,4) DEFAULT '0.0000',
  `min_win` double(20,4) DEFAULT '1.0000',
  `max_win` double(20,4) DEFAULT '1.0000',
  `final_chance` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `bet_one` double(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_win_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_office_log
-- ----------------------------
DROP TABLE IF EXISTS `gs_office_log`;
CREATE TABLE `gs_office_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `controller` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `action` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `module` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `parameter` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `option_user` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `session` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `cookie` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_office_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gs_office_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_office_user`;
CREATE TABLE `gs_office_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` int DEFAULT '1',
  `service_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `default_currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ind_user_service` (`service_user`,`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_office_user
-- ----------------------------
BEGIN;
INSERT INTO `gs_office_user` (`id`, `username`, `password`, `role`, `status`, `service_user`, `default_currency`) VALUES (1, 'admin', '7fef6171469e80d32c0559f88b377245', 'admin', 1, 'ALL', 'USD');
COMMIT;

-- ----------------------------
-- Table structure for gs_service_user
-- ----------------------------
DROP TABLE IF EXISTS `gs_service_user`;
CREATE TABLE `gs_service_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT 'ROLE_USER',
  `status` int DEFAULT '1',
  `callback_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `password_m` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` int DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_service_user
-- ----------------------------
BEGIN;
INSERT INTO `gs_service_user` (`id`, `username`, `password`, `role`, `status`, `callback_url`, `password_m`, `type`) VALUES (1, 'test', '$2a$10$VnmRJeZrve.YGs/kiSDrBu25Wn/VaHNnGH0NTGgxXLkXzlfBi2X5e', 'ROLE_USER', 1, '{\"bet\":\"http://game-service-customer-java:8081/gameSeamless/callback/bet\",\n\"freespinBet\":\"http://game-service-customer-java:8081/gameSeamless/callback/freespinBet\",\n\"handshake\":\"http://game-service-customer-java:8081/gameSeamless/callback/handshake\"}', '123456789', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
