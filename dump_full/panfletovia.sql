/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : panfletovia

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-03-27 15:00:32
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
-- Table structure for `cliente_perfil`
-- ----------------------------
DROP TABLE IF EXISTS `cliente_perfil`;
CREATE TABLE `cliente_perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int(10) unsigned NOT NULL,
  `perfil_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cliente_perfil
-- ----------------------------
INSERT INTO `cliente_perfil` VALUES ('1', '1', '1');
INSERT INTO `cliente_perfil` VALUES ('2', '1', '2');
INSERT INTO `cliente_perfil` VALUES ('3', '1', '3');
INSERT INTO `cliente_perfil` VALUES ('4', '0', '4');
INSERT INTO `cliente_perfil` VALUES ('5', '0', '5');
INSERT INTO `cliente_perfil` VALUES ('6', '0', '6');
INSERT INTO `cliente_perfil` VALUES ('7', '0', '7');
INSERT INTO `cliente_perfil` VALUES ('8', '0', '8');
INSERT INTO `cliente_perfil` VALUES ('9', '0', '9');
INSERT INTO `cliente_perfil` VALUES ('10', '0', '10');
INSERT INTO `cliente_perfil` VALUES ('11', '0', '11');
INSERT INTO `cliente_perfil` VALUES ('12', '0', '12');
INSERT INTO `cliente_perfil` VALUES ('13', '0', '13');
INSERT INTO `cliente_perfil` VALUES ('14', '0', '14');
INSERT INTO `cliente_perfil` VALUES ('15', '0', '15');
INSERT INTO `cliente_perfil` VALUES ('16', '0', '16');
INSERT INTO `cliente_perfil` VALUES ('17', '0', '17');
INSERT INTO `cliente_perfil` VALUES ('18', '0', '18');
INSERT INTO `cliente_perfil` VALUES ('19', '0', '19');
INSERT INTO `cliente_perfil` VALUES ('20', '0', '20');
INSERT INTO `cliente_perfil` VALUES ('21', '0', '21');
INSERT INTO `cliente_perfil` VALUES ('22', '0', '22');
INSERT INTO `cliente_perfil` VALUES ('23', '0', '23');
INSERT INTO `cliente_perfil` VALUES ('24', '0', '24');
INSERT INTO `cliente_perfil` VALUES ('25', '0', '25');
INSERT INTO `cliente_perfil` VALUES ('26', '0', '26');
INSERT INTO `cliente_perfil` VALUES ('27', '0', '27');
INSERT INTO `cliente_perfil` VALUES ('28', '0', '28');
INSERT INTO `cliente_perfil` VALUES ('29', '0', '29');

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
  `fantasia` varchar(30) COLLATE utf8_unicode_ci DEFAULT '',
  `data_nascimento` date NOT NULL DEFAULT '2000-01-01',
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` smallint(5) unsigned DEFAULT NULL,
  `compl` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uf` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ativo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tipo` enum('EMPRESA','CLIENTE','DESIGNER') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EMPRESA',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `senha` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sexo` varchar(1) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1;

-- ----------------------------
-- Records of entidade
-- ----------------------------
INSERT INTO `entidade` VALUES ('1', '021.960.140-28', 'FISICA', 'Eduardo Masami Kanno', 'Eduardo', '1988-04-07', null, null, null, null, null, null, null, null, '1', 'CLIENTE', '2015-03-17 16:20:00', 'eduardokanno@gmail.com', '8ec816b415c5f018935c93fb0bef13b6', 'M');

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
  `link_html` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
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
  `html_modelo` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `designer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panfleto_modelo
-- ----------------------------

-- ----------------------------
-- Table structure for `perfil`
-- ----------------------------
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of perfil
-- ----------------------------
INSERT INTO `perfil` VALUES ('1', 'alimentação');
INSERT INTO `perfil` VALUES ('2', 'supermercados');
INSERT INTO `perfil` VALUES ('3', 'padarias / bistros / cafés');
INSERT INTO `perfil` VALUES ('4', 'moda / fantasias');
INSERT INTO `perfil` VALUES ('5', 'saúde');
INSERT INTO `perfil` VALUES ('6', 'lazer');
INSERT INTO `perfil` VALUES ('7', 'festas / eventos / shows / dan');
INSERT INTO `perfil` VALUES ('8', 'bares');
INSERT INTO `perfil` VALUES ('9', 'cultural');
INSERT INTO `perfil` VALUES ('10', 'histórico');
INSERT INTO `perfil` VALUES ('11', 'Informativo');
INSERT INTO `perfil` VALUES ('12', 'eletroeletrônicos');
INSERT INTO `perfil` VALUES ('13', 'esportes');
INSERT INTO `perfil` VALUES ('14', 'eróticos');
INSERT INTO `perfil` VALUES ('15', 'casa e construção');
INSERT INTO `perfil` VALUES ('16', 'beleza');
INSERT INTO `perfil` VALUES ('17', 'farmácias / drogarias');
INSERT INTO `perfil` VALUES ('18', 'pousadas / hotéis / Motéis');
INSERT INTO `perfil` VALUES ('19', 'acadêmico');
INSERT INTO `perfil` VALUES ('20', 'imobiliárias');
INSERT INTO `perfil` VALUES ('21', 'petShops');
INSERT INTO `perfil` VALUES ('22', 'camping / pesca');
INSERT INTO `perfil` VALUES ('23', 'concessionárias');
INSERT INTO `perfil` VALUES ('24', 'bancos');
INSERT INTO `perfil` VALUES ('25', 'brinquedos');
INSERT INTO `perfil` VALUES ('26', 'musical');
INSERT INTO `perfil` VALUES ('27', 'perfumaria / cosméticos');
INSERT INTO `perfil` VALUES ('28', 'empregos / concursos');
INSERT INTO `perfil` VALUES ('29', 'serviços');

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

-- ----------------------------
-- Records of sub_perfil
-- ----------------------------
INSERT INTO `sub_perfil` VALUES ('1', '5', 'Academia');
INSERT INTO `sub_perfil` VALUES ('2', '5', 'Pilates');
INSERT INTO `sub_perfil` VALUES ('3', '5', 'Clínicas');
INSERT INTO `sub_perfil` VALUES ('4', '6', 'Passeios');
INSERT INTO `sub_perfil` VALUES ('5', '6', 'Parques');
INSERT INTO `sub_perfil` VALUES ('6', '9', 'Livrarias');
INSERT INTO `sub_perfil` VALUES ('7', '9', 'Cinemas');
INSERT INTO `sub_perfil` VALUES ('8', '9', 'Teatro');
INSERT INTO `sub_perfil` VALUES ('9', '10', 'Pontos Turísticos');
INSERT INTO `sub_perfil` VALUES ('10', '10', 'Históricos da Cidade');
INSERT INTO `sub_perfil` VALUES ('11', '11', 'Pague hoje seu IPVA com 30% de desconto');
INSERT INTO `sub_perfil` VALUES ('12', '16', 'SPA');
INSERT INTO `sub_perfil` VALUES ('13', '16', 'Salão de Beleza');
INSERT INTO `sub_perfil` VALUES ('14', '19', 'Escolas de Idiomas');
INSERT INTO `sub_perfil` VALUES ('15', '19', 'Cursos de Extensão');
INSERT INTO `sub_perfil` VALUES ('16', '26', 'Instrumentos');
INSERT INTO `sub_perfil` VALUES ('17', '26', 'CD\'s');
INSERT INTO `sub_perfil` VALUES ('18', '26', 'Aulas de Instrumentos');
INSERT INTO `sub_perfil` VALUES ('19', '26', 'Danças');
INSERT INTO `sub_perfil` VALUES ('20', '29', 'Manutenção');
INSERT INTO `sub_perfil` VALUES ('21', '29', 'Encanador');
INSERT INTO `sub_perfil` VALUES ('22', '29', 'Pedreiro');
INSERT INTO `sub_perfil` VALUES ('23', '29', 'Detetização');

-- ----------------------------
-- View structure for `cliente`
-- ----------------------------
DROP VIEW IF EXISTS `cliente`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cliente` AS select `entidade`.`id` AS `id`,`entidade`.`cpf_cnpj` AS `cpf_cnpj`,`entidade`.`pessoa` AS `pessoa`,`entidade`.`nome` AS `nome`,`entidade`.`fantasia` AS `fantasia`,`entidade`.`data_nascimento` AS `data_nascimento`,`entidade`.`telefone` AS `telefone`,`entidade`.`cep` AS `cep`,`entidade`.`logradouro` AS `logradouro`,`entidade`.`numero` AS `numero`,`entidade`.`compl` AS `compl`,`entidade`.`cidade` AS `cidade`,`entidade`.`bairro` AS `bairro`,`entidade`.`uf` AS `uf`,`entidade`.`ativo` AS `ativo`,`entidade`.`tipo` AS `tipo`,`entidade`.`criado_em` AS `criado_em`,`entidade`.`login` AS `login`,`entidade`.`senha` AS `senha`,`entidade`.`sexo` AS `sexo` from `entidade` where (`entidade`.`tipo` = 'CLIENTE');
