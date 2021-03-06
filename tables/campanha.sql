/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-09 12:53:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `campanha`
-- ----------------------------
DROP TABLE IF EXISTS `campanha`;
CREATE TABLE `campanha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of campanha
-- ----------------------------
