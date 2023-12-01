/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.2.211-MySQL8.0
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.2.211:3306
 Source Schema         : d3code

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 20/11/2023 16:04:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for off_language
-- ----------------------------
DROP TABLE IF EXISTS `off_language`;
CREATE TABLE `off_language`  (
  `language_id` int NOT NULL AUTO_INCREMENT COMMENT '语言ID',
  `lang` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '语言标志;语言标志如（en、zh）',
  `en_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '语言英文名称',
  `dialect` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方言;语言方言(如西班牙语；方言Español)',
  `flag_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '旗帜',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序字段',
  `is_enable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否可用',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_by_uid` int NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by_uid` int NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`language_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '语言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of off_language
-- ----------------------------
INSERT INTO `off_language` VALUES (1, 'zh', 'Chinese', '简体中文', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/zh.svg', 1, 1, 0, 1, '2023-09-09 17:07:28', 1, '2023-09-09 17:07:28');
INSERT INTO `off_language` VALUES (2, 'en', 'English', 'English', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/us.svg', 2, 1, 0, 1, '2023-09-11 10:59:10', 1, '2023-09-11 08:51:36');
INSERT INTO `off_language` VALUES (3, 'kor', 'Korean', '한국어', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/ko.svg', 3, 1, 0, NULL, '2023-09-13 17:01:05', NULL, '2023-09-13 17:01:05');
INSERT INTO `off_language` VALUES (4, 'jp', 'Japanese', '日本語', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/ja.svg', 4, 1, 0, NULL, '2023-09-13 17:01:56', NULL, '2023-09-13 17:01:56');
INSERT INTO `off_language` VALUES (5, 'fra', 'French', 'Français', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/fr.svg', 5, 1, 0, NULL, '2023-09-13 17:02:28', NULL, '2023-09-13 17:02:28');
INSERT INTO `off_language` VALUES (6, 'ara', 'Arabic', 'العربية', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/ar.svg', 6, 1, 0, NULL, '2023-09-13 17:02:59', NULL, '2023-09-13 17:02:59');
INSERT INTO `off_language` VALUES (7, 'spa', 'Spanish', 'Español', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/es.svg', 7, 1, 0, NULL, '2023-09-13 17:08:32', NULL, '2023-09-13 17:08:32');
INSERT INTO `off_language` VALUES (8, 'de', 'German', 'Deutsch', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/de.svg', 8, 1, 0, NULL, '2023-09-13 17:10:02', NULL, '2023-09-13 17:10:02');
INSERT INTO `off_language` VALUES (9, 'th', 'Thai', 'ไทย', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/th.svg', 9, 1, 0, NULL, '2023-09-13 17:12:14', NULL, '2023-09-13 17:12:14');
INSERT INTO `off_language` VALUES (10, 'vie', 'Vietnamese', 'Tiếng Việt', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/vi.svg', 10, 1, 0, NULL, '2023-09-13 17:12:51', NULL, '2023-09-13 17:12:51');
INSERT INTO `off_language` VALUES (11, 'pt', 'Portuguese', 'Português', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/pt.svg', 11, 1, 0, NULL, '2023-09-13 17:13:40', NULL, '2023-09-13 17:13:40');
INSERT INTO `off_language` VALUES (12, 'it', 'Italian', 'Italiano', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/it.svg', 12, 1, 0, NULL, '2023-09-13 17:14:33', NULL, '2023-09-13 17:14:33');
INSERT INTO `off_language` VALUES (13, 'hi', 'Hindi', 'हिन्दी', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/hi.svg', 13, 1, 0, NULL, '2023-09-13 17:15:24', NULL, '2023-09-13 17:15:24');
INSERT INTO `off_language` VALUES (14, 'id', 'Indonesian', 'Bahasa Indonesia', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/id.svg', 14, 1, 0, NULL, '2023-09-13 17:15:53', NULL, '2023-09-13 17:15:53');
INSERT INTO `off_language` VALUES (15, 'ru', 'Russian', 'Русский', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/ru.svg', 15, 1, 0, NULL, '2023-09-13 17:16:38', NULL, '2023-09-13 17:16:38');
INSERT INTO `off_language` VALUES (16, 'pl', 'Polish', 'Polski', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/pl.svg', 16, 1, 0, NULL, '2023-09-13 17:17:18', NULL, '2023-09-13 17:17:18');
INSERT INTO `off_language` VALUES (17, 'nl', 'Dutch', 'Nederlands', 'https://tentech.oss-cn-shenzhen.aliyuncs.com/flags/nl.svg', 17, 1, 0, NULL, '2023-09-13 17:18:29', NULL, '2023-09-13 17:18:29');

SET FOREIGN_KEY_CHECKS = 1;
