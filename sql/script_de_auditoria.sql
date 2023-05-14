CREATE DATABASE IF NOT EXISTS `Auditoria`;

-- Dicionário de dados
DROP TABLE IF EXISTS `Auditoria`.`data_campo`;

CREATE TABLE `Auditoria`.`data_campo` (
    `CodCampo` INT(10) unsigned NOT NULL AUTO_INCREMENT,
    `NmCampo` VARCHAR(45) NOT NULL,
    `TipoCampo` VARCHAR(45) NOT NULL,
    `TipoChave` VARCHAR(45) NOT NULL,
    `Auditar` BOOLEAN NOT NULL DEFAULT false,
    `CodTabela` INT(10) unsigned NOT NULL DEFAULT '0',
    `SeqCampo` INT(10) unsigned NOT NULL DEFAULT '0',
    PRIMARY KEY (`CodCampo`),
    CONSTRAINT `data_campo_ibfk_1` FOREIGN KEY `data_campo_ibfk_1` (`CodTabela`) REFERENCES `Auditoria`.`data_tabela` (`CodTabela`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

DROP TABLE IF EXISTS `Auditoria`.`data_tabela`;

CREATE TABLE `Auditoria`.`data_tabela` (
    `CodTabela` INT(10) unsigned NOT NULL AUTO_INCREMENT,
    `NmTabela` VARCHAR(45) NULL,
    `NmEsquema` VARCHAR(45) NULL,
    `TriggerInsert` VARCHAR(45) NULL,
    `UsaTriggerInsert` BOOLEAN NULL,
    `TriggerUpdate` VARCHAR(45) NULL,
    `UsaTriggerUpdate` BOOLEAN NULL,
    `TriggerDelete` VARCHAR(45) NULL,
    `UsaTriggerDelete` BOOLEAN NULL,
    PRIMARY KEY (`CodTabela`)
);

-- Store procedure para o povoamento do dicionário de dados
DELIMITER || DROP PROCEDURE IF EXISTS `Auditoria`.`SP_Data_tabela`;

CREATE DEFINER = `root` @`localhost` PROCEDURE `SP_Data_tabela`(in Pschema varchar(45)) 
begin 

    DECLARE PNmTabela VarCHAR(45);

    DECLARE FINAL INT;

    DECLARE CNmTabela CURSOR FOR
    select
        distinct table_name
    from
        information_schema.columns
    where
        table_schema = Pschema;

    DECLARE exit HANDLER FOR NOT FOUND
    SET
        FINAL = 0;

    OPEN CNmTabela;

    REPEAT FETCH CNmTabela INTO PNmTabela;

    INSERT INTO
        Auditoria.Data_tabela
    VALUES
        (
            null,
            PNmTabela,
            Pschema,
            concat('Aud_InS_', PNmTabela),
            false,
            concat('Aud_Upd_', PNmTabela),
            false,
            concat('Aud_Del_', PNmTabela),
            false
        );

    until(FINAL = 0)
    END REPEAT;

    CLOSE CNmTabela;

    commit;

END;

|| DELIMITER;

DELIMITER || 
DROP PROCEDURE IF EXISTS `Auditoria`.`SP_Data_Campo`;

CREATE DEFINER = `root` @`localhost` PROCEDURE `SP_Data_Campo`() 
begin 

    DECLARE PNmColuna VarCHAR(45);

    DECLARE PNmTipoColuna VarCHAR(45);

    DECLARE PNmTipoChave VarCHAR(45);

    DECLARE PCodTabela int;

    DECLARE PSeqColuna int;

    DECLARE FINAL INT;

    DECLARE CNmColuna CURSOR FOR
    select
        C.Column_name,
        C.data_type,
        C.column_key,
        T.CodTabela,
        C.ordinal_position
    from
        information_schema.columns C,
        Auditoria.Data_tabela T
    where
        C.table_schema = T.NmEsquema
        and C.Table_name = T.NmTabela
    order by
        T.CodTabela,
        C.ordinal_position;

    DECLARE exit HANDLER FOR NOT FOUND
    SET
        FINAL = 0;

    OPEN CNmColuna;

    REPEAT FETCH CNmColuna INTO PNmColuna,
    PNmTipoColuna,
    PNmTipoChave,
    PCodTabela,
    PSeqColuna;

    INSERT INTO
        Auditoria.Data_Campo
    VALUES
        (
            null,
            PNmColuna,
            PNmTipoColuna,
            PNmTipoChave,
            true,
            PCodTabela,
            PSeqColuna
        );

    until(FINAL = 0)
    END REPEAT;

    CLOSE CNmColuna;

    commit;

END;

|| DELIMITER;

-- Tabela de auditoria
CREATE DATABASE IF NOT EXISTS `auditoria`;

DROP TABLE IF EXISTS `auditoria`.`transacao`;

CREATE TABLE `auditoria`.`transacao` (
    `T_ID` VARCHAR(37) NOT NULL DEFAULT '',
    `T_ACAO` INT(11) NOT NULL DEFAULT '0',
    `T_HOST` VARCHAR(15) NOT NULL,
    `T_USER_BANCO` VARCHAR(30) NOT NULL,
    `T_USER_APLICACAO` INT(11) NOT NULL DEFAULT '0',
    `T_DATA` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
    `T_TABELA` VARCHAR(45) NOT NULL,
    `T_BANCO` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`T_ID`)
);

DROP TABLE IF EXISTS `auditoria`.`transacao_data`;

CREATE TABLE `auditoria`.`transacao_data` (
    `TD_ID` VARCHAR(37) NOT NULL DEFAULT '',
    `T_ID` VARCHAR(37) NOT NULL DEFAULT '',
    `TD_CAMPO` VARCHAR(45) NOT NULL DEFAULT '',
    `TD_CHAVE` INT(11) NOT NULL DEFAULT '0',
    `TD_OLD_VALOR` VARCHAR(255),
    `TD_NEW_VALOR` VARCHAR(255),
    PRIMARY KEY (`TD_ID`),
    INDEX `T_ID` (`T_ID`),
    CONSTRAINT `transacao_data_ibfk_1` FOREIGN KEY `transacao_data_ibfk_1` (`T_ID`) REFERENCES `auditoria`.`transacao` (`T_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

DROP TABLE IF EXISTS `auditoria`.`transacao_data_blob`;

CREATE TABLE `auditoria`.`transacao_data_blob` (
    `TDB_ID` VARCHAR(37) NOT NULL DEFAULT '',
    `T_ID` VARCHAR(37) NOT NULL DEFAULT '',
    `TDB_CAMPO` VARCHAR(45) NOT NULL DEFAULT '',
    `TDB_CHAVE` INT(11) NOT NULL DEFAULT '0',
    `TDB_OLD_VALOR` BLOB,
    `TDB_NEW_VALOR` BLOB,
    PRIMARY KEY (`TDB_ID`),
    INDEX `T_ID` (`T_ID`),
    CONSTRAINT `transacao_data_blob_ibfk_1` FOREIGN KEY `transacao_data_blob_ibfk_1` (`T_ID`) REFERENCES `auditoria`.`transacao` (`T_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
);