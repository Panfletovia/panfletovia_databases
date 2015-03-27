-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: panfletovia
-- ------------------------------------------------------
-- Server version	5.5.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `campanha`
--

DROP TABLE IF EXISTS `campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campanha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha`
--

LOCK TABLES `campanha` WRITE;
/*!40000 ALTER TABLE `campanha` DISABLE KEYS */;
/*!40000 ALTER TABLE `campanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campanha_panfleto`
--

DROP TABLE IF EXISTS `campanha_panfleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campanha_panfleto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha_panfleto`
--

LOCK TABLES `campanha_panfleto` WRITE;
/*!40000 ALTER TABLE `campanha_panfleto` DISABLE KEYS */;
/*!40000 ALTER TABLE `campanha_panfleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campanha_panfleto_consumo`
--

DROP TABLE IF EXISTS `campanha_panfleto_consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campanha_panfleto_consumo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(10) unsigned NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acao` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha_panfleto_consumo`
--

LOCK TABLES `campanha_panfleto_consumo` WRITE;
/*!40000 ALTER TABLE `campanha_panfleto_consumo` DISABLE KEYS */;
/*!40000 ALTER TABLE `campanha_panfleto_consumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campanha_panfleto_recursos`
--

DROP TABLE IF EXISTS `campanha_panfleto_recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campanha_panfleto_recursos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `qtde` int(10) unsigned NOT NULL DEFAULT '0',
  `campanha_id` int(10) unsigned NOT NULL,
  `panfleto_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha_panfleto_recursos`
--

LOCK TABLES `campanha_panfleto_recursos` WRITE;
/*!40000 ALTER TABLE `campanha_panfleto_recursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `campanha_panfleto_recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campanha_panfletos_regras`
--

DROP TABLE IF EXISTS `campanha_panfletos_regras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha_panfletos_regras`
--

LOCK TABLES `campanha_panfletos_regras` WRITE;
/*!40000 ALTER TABLE `campanha_panfletos_regras` DISABLE KEYS */;
/*!40000 ALTER TABLE `campanha_panfletos_regras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!50001 DROP VIEW IF EXISTS `cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cliente` AS SELECT 
 1 AS `id`,
 1 AS `cpf_cnpj`,
 1 AS `pessoa`,
 1 AS `nome`,
 1 AS `fantasia`,
 1 AS `data_nascimento`,
 1 AS `telefone`,
 1 AS `cep`,
 1 AS `logradouro`,
 1 AS `numero`,
 1 AS `compl`,
 1 AS `cidade`,
 1 AS `bairro`,
 1 AS `uf`,
 1 AS `ativo`,
 1 AS `tipo`,
 1 AS `criado_em`,
 1 AS `login`,
 1 AS `senha`,
 1 AS `sexo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cliente_perfil`
--

DROP TABLE IF EXISTS `cliente_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int(10) unsigned NOT NULL,
  `perfil_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_perfil`
--

LOCK TABLES `cliente_perfil` WRITE;
/*!40000 ALTER TABLE `cliente_perfil` DISABLE KEYS */;
INSERT INTO `cliente_perfil` VALUES (1,1,1),(2,1,2),(3,1,3),(4,0,4),(5,0,5),(6,0,6),(7,0,7),(8,0,8),(9,0,9),(10,0,10),(11,0,11),(12,0,12),(13,0,13),(14,0,14),(15,0,15),(16,0,16),(17,0,17),(18,0,18),(19,0,19),(20,0,20),(21,0,21),(22,0,22),(23,0,23),(24,0,24),(25,0,25),(26,0,26),(27,0,27),(28,0,28),(29,0,29);
/*!40000 ALTER TABLE `cliente_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidade`
--

DROP TABLE IF EXISTS `entidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `tipo` enum('EMPRESA','CLIENTE','DESIGNER','PREFEITURA') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EMPRESA',
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `senha` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sexo` varchar(1) CHARACTER SET utf8 NOT NULL,
  `latitude` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT 'latitude da localização da empresa',
  `longitude` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT 'Longitude da localizacao da empresa',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidade`
--

LOCK TABLES `entidade` WRITE;
/*!40000 ALTER TABLE `entidade` DISABLE KEYS */;
INSERT INTO `entidade` VALUES (1,'021.960.140-28','FISICA','Eduardo Masami Kanno','Eduardo','1988-04-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'CLIENTE','2015-03-17 19:20:00','eduardokanno@gmail.com','8ec816b415c5f018935c93fb0bef13b6','M','0','0'),(2,'021.960.140-28','JURIDICA','Padaria e Confeitaria Doce Tentação','Padaria Doce Tentação','1999-10-10','(51) 3582-8421','93320-080','Rua Tapes',1230,NULL,'Novo Hamburgo','Ideal','RS',1,'EMPRESA','2015-03-22 23:20:00','padariatentacao@gmail.com','74c3890e7320cdb5842858f37390d801','M','-29,6920483','-51,130723'),(3,'09.847.181/0001-60','JURIDICA','Prefeitura municipal de NH','Prefeitura de NH','1928-04-05','(51) 3594-9999','93410-340','Rua Guia Lopes',4201,NULL,'Novo Hamburgo','Canudos','RS',1,'PREFEITURA','2015-03-17 19:20:00','prefeituranh@prefeituranh.gov.br','8ec816b415c5f018935c93fb0bef13b6','M','-29,694677','-51,116047'),(4,'13.784.574/0001-40','JURIDICA','Academia Companhia do Corpo LTDA','Academia Companhia do Corpo','2001-02-11','(51) 3036-3263','93510-130','Rua Julio de Castilhos',246,NULL,'Novo Hamburgo','Centro','RS',1,'EMPRESA','2015-03-17 19:20:00','academiadocorpo@gmail.com','8ec816b415c5f018935c93fb0bef13b6','M','-29,682046','-51,128665');
/*!40000 ALTER TABLE `entidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panfleto`
--

DROP TABLE IF EXISTS `panfleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panfleto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panfleto`
--

LOCK TABLES `panfleto` WRITE;
/*!40000 ALTER TABLE `panfleto` DISABLE KEYS */;
/*!40000 ALTER TABLE `panfleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panfleto_layout`
--

DROP TABLE IF EXISTS `panfleto_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panfleto_layout` (
  `modelo_id` int(10) unsigned NOT NULL,
  `link_html` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panfleto_layout`
--

LOCK TABLES `panfleto_layout` WRITE;
/*!40000 ALTER TABLE `panfleto_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `panfleto_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panfleto_modelo`
--

DROP TABLE IF EXISTS `panfleto_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panfleto_modelo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `html_modelo` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `designer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panfleto_modelo`
--

LOCK TABLES `panfleto_modelo` WRITE;
/*!40000 ALTER TABLE `panfleto_modelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `panfleto_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'alimentação'),(2,'supermercados'),(3,'padarias / bistros / cafés'),(4,'moda / fantasias'),(5,'saúde'),(6,'lazer'),(7,'festas / eventos / shows / dan'),(8,'bares'),(9,'cultural'),(10,'histórico'),(11,'Informativo'),(12,'eletroeletrônicos'),(13,'esportes'),(14,'eróticos'),(15,'casa e construção'),(16,'beleza'),(17,'farmácias / drogarias'),(18,'pousadas / hotéis / Motéis'),(19,'acadêmico'),(20,'imobiliárias'),(21,'petShops'),(22,'camping / pesca'),(23,'concessionárias'),(24,'bancos'),(25,'brinquedos'),(26,'musical'),(27,'perfumaria / cosméticos'),(28,'empregos / concursos'),(29,'serviços');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_perfil`
--

DROP TABLE IF EXISTS `sub_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_perfil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perfil_id` int(10) unsigned NOT NULL,
  `codigo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_perfil`
--

LOCK TABLES `sub_perfil` WRITE;
/*!40000 ALTER TABLE `sub_perfil` DISABLE KEYS */;
INSERT INTO `sub_perfil` VALUES (1,5,'Academia'),(2,5,'Pilates'),(3,5,'Clínicas'),(4,6,'Passeios'),(5,6,'Parques'),(6,9,'Livrarias'),(7,9,'Cinemas'),(8,9,'Teatro'),(9,10,'Pontos Turísticos'),(10,10,'Históricos da Cidade'),(11,11,'Pague hoje seu IPVA com 30% de desconto'),(12,16,'SPA'),(13,16,'Salão de Beleza'),(14,19,'Escolas de Idiomas'),(15,19,'Cursos de Extensão'),(16,26,'Instrumentos'),(17,26,'CD\'s'),(18,26,'Aulas de Instrumentos'),(19,26,'Danças'),(20,29,'Manutenção'),(21,29,'Encanador'),(22,29,'Pedreiro'),(23,29,'Detetização');
/*!40000 ALTER TABLE `sub_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'panfletovia'
--

--
-- Dumping routines for database 'panfletovia'
--

--
-- Final view structure for view `cliente`
--

/*!50001 DROP VIEW IF EXISTS `cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente` AS select `entidade`.`id` AS `id`,`entidade`.`cpf_cnpj` AS `cpf_cnpj`,`entidade`.`pessoa` AS `pessoa`,`entidade`.`nome` AS `nome`,`entidade`.`fantasia` AS `fantasia`,`entidade`.`data_nascimento` AS `data_nascimento`,`entidade`.`telefone` AS `telefone`,`entidade`.`cep` AS `cep`,`entidade`.`logradouro` AS `logradouro`,`entidade`.`numero` AS `numero`,`entidade`.`compl` AS `compl`,`entidade`.`cidade` AS `cidade`,`entidade`.`bairro` AS `bairro`,`entidade`.`uf` AS `uf`,`entidade`.`ativo` AS `ativo`,`entidade`.`tipo` AS `tipo`,`entidade`.`criado_em` AS `criado_em`,`entidade`.`login` AS `login`,`entidade`.`senha` AS `senha`,`entidade`.`sexo` AS `sexo` from `entidade` where (`entidade`.`tipo` = 'CLIENTE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-27 19:25:30
