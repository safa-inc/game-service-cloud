CREATE DATABASE game_sdk CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use game_sdk;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sdk_game_record
-- ----------------------------
DROP TABLE IF EXISTS `sdk_game_record`;
CREATE TABLE `sdk_game_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `round_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `win` double(11,4) DEFAULT '0.0000',
  `bet` double(11,4) DEFAULT '0.0000',
  `game_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `new_balance` double(11,4) DEFAULT '0.0000',
  `old_balance` double(11,4) DEFAULT '0.0000',
  `create_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `locale` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `currency` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of sdk_game_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sdk_transfer_record
-- ----------------------------
DROP TABLE IF EXISTS `sdk_transfer_record`;
CREATE TABLE `sdk_transfer_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `money` double(11,4) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `create_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `old_balance` double(11,4) DEFAULT NULL,
  `new_balance` double(11,4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of sdk_transfer_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sdk_user
-- ----------------------------
DROP TABLE IF EXISTS `sdk_user`;
CREATE TABLE `sdk_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` int DEFAULT NULL,
  `balance` double(11,4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of sdk_user
-- ----------------------------
BEGIN;
INSERT INTO `sdk_user` (`id`, `username`, `locale`, `currency`, `status`, `balance`) VALUES (1, 'test', 'en', 'USD', 1, 100);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
