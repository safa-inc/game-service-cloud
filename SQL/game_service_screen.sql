CREATE DATABASE game_service_screen CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use game_service_screen;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gs_game_configs
-- ----------------------------
DROP TABLE IF EXISTS `gs_game_configs`;
CREATE TABLE `gs_game_configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '1',
  `config` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `game_class` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `custom_class` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of gs_game_configs
-- ----------------------------
BEGIN;
INSERT INTO `gs_game_configs` (`id`, `status`, `config`, `game_class`, `custom_class`) VALUES (1, 1, '{\"remaining\":10,\"betLine\":0,\"bet\":1,\"wildCards\":[1,2],\"bonus\":0,\"bonusCount\":2,\"scatter\":12,\"scatterCount\":3,\"screenEvery\":3,\"symbols\":[{\"index\":1,\"name\":\"W01\",\"isWild\":true},{\"index\":2,\"name\":\"W05\",\"isWild\":true},{\"index\":3,\"name\":\"M1\"},{\"index\":4,\"name\":\"M2\"},{\"index\":5,\"name\":\"M3\"},{\"index\":6,\"name\":\"D4\"},{\"index\":7,\"name\":\"D5\"},{\"index\":8,\"name\":\"D6\"},{\"index\":9,\"name\":\"D7\"},{\"index\":10,\"name\":\"IS1\",\"isPairing\":true},{\"index\":11,\"name\":\"IS2\",\"isPairing\":true},{\"index\":12,\"name\":\"SC\",\"isScatter\":true,\"triggerFreespins\":true},{\"index\":13,\"name\":\"SC1\",\"isScatter\":true,\"triggerFreespins\":true}],\"payRules\":[[0,0,15,50,200,200],[0,0,15,50,200,200],[0,0,12,30,90,90],[0,0,10,25,75,75],[0,0,8,20,60,60],[0,0,3,8,20,20],[0,0,3,7,15,15],[0,0,2,6,12,12],[0,0,2,5,10,10],[0,0,0,0,0],[0,0,0,0,0],[0,0,0],[0]],\"payLines\":[[[0,1],[1,1],[2,1],[3,1],[4,1],[5,1]],[[0,0],[1,0],[2,0],[3,0],[4,0],[5,0]],[[0,2],[1,2],[2,2],[3,2],[4,2],[5,2]],[[0,0],[1,1],[2,2],[3,1],[4,0],[5,0]],[[0,2],[1,1],[2,0],[3,1],[4,2],[5,2]],[[0,1],[1,2],[2,2],[3,2],[4,1],[5,1]],[[0,1],[1,0],[2,0],[3,0],[4,1],[5,1]],[[0,0],[1,0],[2,1],[3,0],[4,0],[5,0]],[[0,2],[1,2],[2,1],[3,2],[4,2],[5,2]],[[0,1],[1,0],[2,1],[3,0],[4,1],[5,1]]],\"displayNo\":{\"1\":\"W01\",\"2\":\"W05\",\"3\":\"M1\",\"4\":\"M2\",\"5\":\"M3\",\"6\":\"D4\",\"7\":\"D5\",\"8\":\"D6\",\"9\":\"D7\",\"10\":\"IS1\",\"11\":\"IS2\",\"12\":\"SC\",\"13\":\"SC1\"},\"paySet\":{\"W01\":{\"1\":0,\"2\":0,\"3\":15,\"4\":50,\"5\":200,\"6\":200},\"W05\":{\"1\":0,\"2\":0,\"3\":15,\"4\":50,\"5\":200,\"6\":200},\"M1\":{\"1\":0,\"2\":0,\"3\":12,\"4\":30,\"5\":90,\"6\":90},\"M2\":{\"1\":0,\"2\":0,\"3\":10,\"4\":25,\"5\":75,\"6\":75},\"M3\":{\"1\":0,\"2\":0,\"3\":8,\"4\":20,\"5\":60,\"6\":60},\"D4\":{\"1\":0,\"2\":0,\"3\":3,\"4\":8,\"5\":20,\"6\":20},\"D5\":{\"1\":0,\"2\":0,\"3\":3,\"4\":7,\"5\":15,\"6\":15},\"D6\":{\"1\":0,\"2\":0,\"3\":2,\"4\":6,\"5\":12,\"6\":12},\"D7\":{\"1\":0,\"2\":0,\"3\":2,\"4\":5,\"5\":10,\"6\":10},\"IS1\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0},\"IS2\":{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":0},\"SC\":{\"1\":0,\"2\":0,\"3\":0},\"SC1\":{\"1\":0}},\"betStepsList\":[0.01,0.02,0.03,0.05,0.1,0.2,0.3,0.5,1,2,3,5,10,20,30,50],\"rca\":[],\"fresspinCanTrigger\":false}', 'auto2', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
