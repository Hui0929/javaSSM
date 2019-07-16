/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-06-24 15:28:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '22', '33');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'qqq', '1');
INSERT INTO `student` VALUES ('2', 'aaa', '22');
INSERT INTO `student` VALUES ('5', 'asz', '33');
INSERT INTO `student` VALUES ('6', 'www', '111');
INSERT INTO `student` VALUES ('7', 'wasde', '12321');

-- ----------------------------
-- Table structure for tb_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `neirong` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `acthor` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `kind` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pinglun` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_news
-- ----------------------------
INSERT INTO `tb_news` VALUES ('1', 'a', 'a', 'tom', '6', 'tom', ' ');
INSERT INTO `tb_news` VALUES ('2', 'school1', 'i like my scool', 'tiantian1', '1', 'tiantian1', 'like');
INSERT INTO `tb_news` VALUES ('3', 'school2', 'i like my scool', 'tiantian2', '1', 'tiantian1', null);
INSERT INTO `tb_news` VALUES ('4', 'school3', 'i like my scool', 'tiantian3', '1', 'tiantian1', null);
INSERT INTO `tb_news` VALUES ('5', ' home1', 'i like my  home', 'hh1', '2', 'hh1', null);
INSERT INTO `tb_news` VALUES ('6', ' home2', 'i like my  home', 'hh2', '2', 'hh1', null);
INSERT INTO `tb_news` VALUES ('7', ' home3', 'i like my  home', 'hh3', '2', 'hh1', null);
INSERT INTO `tb_news` VALUES ('8', 'international1', 'i don\'t like my international', 'i1', '3', 'i1', null);
INSERT INTO `tb_news` VALUES ('9', 'international2', 'i don\'t like my international', 'i2', '3', 'i1', null);
INSERT INTO `tb_news` VALUES ('10', 'international3', 'i don\'t like my international', 'i3', '3', 'i1', null);
INSERT INTO `tb_news` VALUES ('11', 'sports1', 'i like my sports', 's1', '4', 's1', null);
INSERT INTO `tb_news` VALUES ('12', 'sports2', 'i like my sports', 's2', '4', 's1', null);
INSERT INTO `tb_news` VALUES ('13', 'sports3', 'i like my sports', 's3', '4', 's1', null);
INSERT INTO `tb_news` VALUES ('14', 'science1', 'i like my science', 'ss1', '5', 'ss1', null);
INSERT INTO `tb_news` VALUES ('15', 'science2', 'i like my science', 'ss2', '5', 'ss1', null);
INSERT INTO `tb_news` VALUES ('16', 'w', 'w', 'we', '6', 'we', null);
INSERT INTO `tb_news` VALUES ('17', 'science3', 'i like my science', 'ss3', '5', 'ss1', null);
INSERT INTO `tb_news` VALUES ('18', '23', '23', 'jiajia', '6', 'jiajia', null);

-- ----------------------------
-- Table structure for zancun
-- ----------------------------
DROP TABLE IF EXISTS `zancun`;
CREATE TABLE `zancun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `neirong` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `acthor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of zancun
-- ----------------------------
INSERT INTO `zancun` VALUES ('1', 'a', 'a', 'a', 'tom');
INSERT INTO `zancun` VALUES ('8', 'e', 'e', 'e', 'bob');
INSERT INTO `zancun` VALUES ('15', 'qqqq', 'qqqq', '3', 'you');
