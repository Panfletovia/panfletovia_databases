/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-09 12:53:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `email`
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `situacao` enum('EM_PROCESSAMENTO','PROCESSADO','CANCELADO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EM_PROCESSAMENTO',
  `usuario_id` int(10) unsigned NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `assunto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensagem` text COLLATE utf8_unicode_ci,
  `processado_em` datetime DEFAULT NULL,
  `observacoes` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of email
-- ----------------------------
