/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-21 20:06:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sub_perfil`
-- ----------------------------
DROP TABLE IF EXISTS `sub_perfil`;
CREATE TABLE `sub_perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perfil_id` int(10) unsigned NOT NULL,
  `codigo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;