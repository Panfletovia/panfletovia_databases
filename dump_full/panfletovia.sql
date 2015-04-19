/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-04-18 18:32:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `campanha`
-- ----------------------------
DROP TABLE IF EXISTS `campanha`;
CREATE TABLE `campanha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of campanha
-- ----------------------------

-- ----------------------------
-- Table structure for `campanha_panfleto`
-- ----------------------------
DROP TABLE IF EXISTS `campanha_panfleto`;
CREATE TABLE `campanha_panfleto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of campanha_panfleto
-- ----------------------------

-- ----------------------------
-- Table structure for `campanha_panfleto_consumo`
-- ----------------------------
DROP TABLE IF EXISTS `campanha_panfleto_consumo`;
CREATE TABLE `campanha_panfleto_consumo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(10) unsigned NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acao` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of campanha_panfleto_consumo
-- ----------------------------

-- ----------------------------
-- Table structure for `campanha_panfleto_recursos`
-- ----------------------------
DROP TABLE IF EXISTS `campanha_panfleto_recursos`;
CREATE TABLE `campanha_panfleto_recursos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `qtde` int(10) unsigned NOT NULL DEFAULT '0',
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of campanha_panfleto_recursos
-- ----------------------------

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

-- ----------------------------
-- Table structure for `entidade`
-- ----------------------------
DROP TABLE IF EXISTS `entidade`;
CREATE TABLE `entidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pessoa` enum('FISICA','JURIDICA') COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fantasia` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1;

-- ----------------------------
-- Records of entidade
-- ----------------------------

-- ----------------------------
-- Table structure for `panfleto`
-- ----------------------------
DROP TABLE IF EXISTS `panfleto`;
CREATE TABLE `panfleto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panfleto
-- ----------------------------

-- ----------------------------
-- Table structure for `panfleto_layout`
-- ----------------------------
DROP TABLE IF EXISTS `panfleto_layout`;
CREATE TABLE `panfleto_layout` (
  `modelo_id` int(10) unsigned NOT NULL,
  `link_html` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panfleto_layout
-- ----------------------------

-- ----------------------------
-- Table structure for `panfleto_modelo`
-- ----------------------------
DROP TABLE IF EXISTS `panfleto_modelo`;
CREATE TABLE `panfleto_modelo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `html_modelo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `designer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panfleto_modelo
-- ----------------------------

-- ----------------------------
-- Table structure for `perfil_caracteristicas`
-- ----------------------------
DROP TABLE IF EXISTS `perfil_caracteristicas`;
CREATE TABLE `perfil_caracteristicas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of perfil_caracteristicas
-- ----------------------------

-- ----------------------------
-- Table structure for `usuario_perfil`
-- ----------------------------
DROP TABLE IF EXISTS `usuario_perfil`;
CREATE TABLE `usuario_perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(10) unsigned NOT NULL,
  `usuario_caracteristica_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usuario_perfil
-- ----------------------------
