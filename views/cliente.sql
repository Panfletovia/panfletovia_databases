DROP TABLE IF EXISTS `cliente`;
DROP VIEW IF EXISTS `cliente`;

CREATE OR REPLACE VIEW `cliente` AS SELECT * FROM `entidade` 
WHERE (`entidade`.`tipo` = 'CLIENTE');
