/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-09 12:54:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `panfleto_modelo`
-- ----------------------------
DROP TABLE IF EXISTS `panfleto_modelo`;
CREATE TABLE `panfleto_modelo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `html_modelo` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `designer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panfleto_modelo
-- ----------------------------
