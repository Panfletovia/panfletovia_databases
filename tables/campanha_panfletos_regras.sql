/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-09 12:53:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `campanha_panfletos_regras`
-- ----------------------------
DROP TABLE IF EXISTS `campanha_panfletos_regras`;
CREATE TABLE `campanha_panfletos_regras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  `sexo_alvo` varchar(1) NOT NULL COMMENT 'M (masculino), F(feminino), S(sem restricao)',
  `idade_alvo_min` int(10) unsigned NOT NULL,
  `idade_alvo_max` int(10) unsigned NOT NULL,
  `dias_da_semana_distribuicao` varchar(7) NOT NULL COMMENT '''0'',''1'',''2'',''3'',''4'',''5'',''6''',
  `horario_distribuicao_ini` datetime NOT NULL,
  `horario_distribuicao_fim` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Regras de distribuição dos panfletos';

-- ----------------------------
-- Records of campanha_panfletos_regras
-- ----------------------------
