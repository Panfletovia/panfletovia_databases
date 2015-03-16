/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-09 12:54:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `entidade`
-- ----------------------------
DROP TABLE IF EXISTS `entidade`;
CREATE TABLE `entidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pessoa` enum('FISICA','JURIDICA') COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fantasia` varchar(30) COLLATE utf8_unicode_ci NULL DEFAULT '',
  `data_nascimento` date NOT NULL DEFAULT '2000-01-01',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` smallint(5) unsigned DEFAULT NULL,
  `compl` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uf` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ativo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tipo` enum('EMPRESA','USUARIO','DESIGNER') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EMPRESA',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `senha` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sexo` varchar(1) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1;

-- ----------------------------
-- Records of entidade
-- ----------------------------
