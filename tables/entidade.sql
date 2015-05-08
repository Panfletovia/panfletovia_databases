SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `entidade`;
CREATE TABLE `entidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pessoa` enum('FISICA','JURIDICA') COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fantasia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logradouro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` smallint(5) unsigned DEFAULT NULL,
  `compl` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uf` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ativo` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `tipo` enum('EMPRESA','CLIENTE','DESIGNER') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EMPRESA',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `senha` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sexo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `plataforma` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `versao` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entidade_login` (`login`) USING HASH
) 
ENGINE=InnoDB 
DEFAULT CHARSET=utf8 
COLLATE=utf8_unicode_ci 
CHECKSUM=1;
