CREATE TRIGGER Aud_Ins_manutencao
BEFORE INSERT ON `alegreMaisLimpo`.`manutencao` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    1,
    @host,
    user(),
    @iduser,
    now(),
    'manutencao',
    'alegreMaisLimpo'
);

INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
)
values(
    UUID(),
    @T_ID,
    'idManutencao',
    1,
    null,
    NEW.idManutencao
),(
    UUID(),
    @T_ID,
    'idCaminhaoColeta',
    2,
    null,
    NEW.idCaminhaoColeta
),(
    UUID(),
    @T_ID,
    'data',
    3,
    null,
    NEW.data
),(
    UUID(),
    @T_ID,
    'quilometragem',
    3,
    null,
    NEW.quilometragem
),(
    UUID(),
    @T_ID,
    'descricao',
    3,
    null,
    NEW.descricao
),(
    UUID(),
    @T_ID,
    'valor',
    3,
    null,
    NEW.valor
);
END; 

CREATE TRIGGER Aud_Upd_manutencao
BEFORE UPDATE  ON `alegreMaisLimpo`.`manutencao` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    2,
    @host,
    user(),
    @iduser,
    now(),
    'manutencao',
    'alegreMaisLimpo'
);

INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
) values (
    UUID(),
    @T_ID,
    'idManutencao',
    1,
    OLD.idManutencao,
    NEW.idManutencao
);

IF OLD.idCaminhaoColeta <> NEW.idCaminhaoColeta then
    INSERT INTO
    Auditoria.transacao_data (
        TD_ID,
        T_ID,
        TD_CAMPO,
        TD_CHAVE,
        TD_OLD_VALOR,
        TD_NEW_VALOR
    ) values (
        UUID(),
        @T_ID,
        'idCaminhaoColeta',
        2,
        OLD.idCaminhaoColeta,
        NEW.idCaminhaoColeta
    );
end if;

IF OLD.data <> NEW.data then
    INSERT INTO
    Auditoria.transacao_data (
        TD_ID,
        T_ID,
        TD_CAMPO,
        TD_CHAVE,
        TD_OLD_VALOR,
        TD_NEW_VALOR
    ) values (
        UUID(),
        @T_ID,
        'data',
        3,
        OLD.data,
        NEW.data
    );
end if;

IF OLD.quilometragem <> NEW.quilometragem then
    INSERT INTO
    Auditoria.transacao_data (
        TD_ID,
        T_ID,
        TD_CAMPO,
        TD_CHAVE,
        TD_OLD_VALOR,
        TD_NEW_VALOR
    ) values (
        UUID(),
        @T_ID,
        'quilometragem',
        3,
        OLD.quilometragem,
        NEW.quilometragem
    );
end if;

IF OLD.descricao <> NEW.descricao then
    INSERT INTO
    Auditoria.transacao_data (
        TD_ID,
        T_ID,
        TD_CAMPO,
        TD_CHAVE,
        TD_OLD_VALOR,
        TD_NEW_VALOR
    ) values (
        UUID(),
        @T_ID,
        'descricao',
        3,
        OLD.descricao,
        NEW.descricao
    );
end if;

IF OLD.valor <> NEW.valor then
    INSERT INTO
    Auditoria.transacao_data (
        TD_ID,
        T_ID,
        TD_CAMPO,
        TD_CHAVE,
        TD_OLD_VALOR,
        TD_NEW_VALOR
    ) values  (
        UUID(),
        @T_ID,
        'valor',
        3,
        OLD.valor,
        NEW.valor
    );
end if;
END;

CREATE TRIGGER Aud_Del_manutencao
BEFORE DELETE ON `alegreMaisLimpo`.`manutencao` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    3,
    @host,
    user(),
    @iduser,
    now(),
    'manutencao',
    'alegreMaisLimpo'
);

INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
)
values(
    UUID(),
    @T_ID,
    'idManutencao',
    1,
    OLD.idManutencao,
    null
),(
    UUID(),
    @T_ID,
    'idCaminhaoColeta',
    2,
    OLD.idCaminhaoColeta,
    null
),(
    UUID(),
    @T_ID,
    'data',
    3,
    OLD.data,
    null
),(
    UUID(),
    @T_ID,
    'quilometragem',
    3,
    OLD.quilometragem,
    null
),(
    UUID(),
    @T_ID,
    'descricao',
    3,
    OLD.descricao,
   	null
),(
    UUID(),
    @T_ID,
    'valor',
    3,
    OLD.valor,
    null
);
END; 

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CREATE TRIGGER Aud_Ins_auxiliarEscala
BEFORE INSERT ON `alegreMaisLimpo`.`auxiliarEscala` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    1,
    @host,
    user(),
    @iduser,
    now(),
    'auxiliarEscala',
    'alegreMaisLimporio'
);

INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
)
values(
    UUID(),
    @T_ID,
    'idAuxiliar',
    1,
    null,
    NEW.idAuxiliar
),(
    UUID(),
    @T_ID,
    'idEscala',
    1,
    null,
    NEW.idEscala
);
END; 

CREATE TRIGGER Aud_upd_auxiliarEscala 
BEFORE UPDATE ON `alegreMaisLimpo`.`auxiliarEscala` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    2,
    @host,
    user(),
    @iduser,
    now(),
    'auxiliarEscala',
    'alegreMaisLimpo'
);

IF OLD.idAuxiliar <> NEW.idAuxiliar then
INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
) values (
    UUID(),
    @T_ID,
    'idAuxiliar',
    1,
    OLD.idAuxiliar,
    NEW.idAuxiliar
);
end if;

IF OLD.idEscala<>NEW.idEscala then
INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
) values (
    UUID(),
    @T_ID,
    'idEscala',
    1,
    OLD.idEscala,
    NEW.idEscala
);
end if;
END;  

CREATE TRIGGER Aud_Del_auxiliarEscala
BEFORE DELETE ON `alegreMaisLimpo`.`auxiliarEscala` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT  INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    3,
    @host,
    user(),
    @iduser,
    now(),
    'auxiliarEscala',
    'alegreMaisLimporio'
);

INSERT  INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
)
values(
    UUID(),
    @T_ID,
    'idAuxiliar',
    1,
    OLD.idAuxiliar,
    null
),(
    UUID(),
    @T_ID,
    'idEscala',
    1,
    OLD.idEscala,
    null
);
END; 

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CREATE TRIGGER Aud_Ins_zona
BEFORE INSERT ON `alegreMaisLimpo`.`zona` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    1,
    @host,
    user(),
    @iduser,
    now(),
    'zona',
    'alegreMaisLimporio'
);

INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
)
values(
    UUID(),
    @T_ID,
    'idZona',
    1,
    null,
    NEW.idZona
),(
    UUID(),
    @T_ID,
    'nome',
    1,
    null,
    NEW.nome
);
END; 

CREATE TRIGGER Aud_upd_zona
BEFORE UPDATE ON `alegreMaisLimpo`.`zona` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    2,
    @host,
    user(),
    @iduser,
    now(),
    'zona',
    'alegreMaisLimpo'
);

IF OLD.idZona <> NEW.idZona then
INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
) values (
    UUID(),
    @T_ID,
    'idZona',
    1,
    OLD.idZona,
    NEW.idZona
);
end if;

IF OLD.nome <> NEW.nome then
INSERT INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
) values (
    UUID(),
    @T_ID,
    'nome',
    3,
    OLD.nome,
    NEW.nome
);
END if;
END;  

CREATE TRIGGER Aud_Del_zona
BEFORE DELETE ON `alegreMaisLimpo`.`zona` FOR EACH ROW 
BEGIN
set
    @T_ID = UUID();

INSERT  INTO
Auditoria.transacao(
    T_ID,
    T_ACAO,
    T_HOST,
    T_USER_BANCO,
    T_USER_APLICACAO,
    T_DATA,
    T_TABELA,
    T_BANCO
) values (
    @T_ID,
    3,
    @host,
    user(),
    @iduser,
    now(),
    'zona',
    'alegreMaisLimporio'
);

INSERT  INTO
Auditoria.transacao_data (
    TD_ID,
    T_ID,
    TD_CAMPO,
    TD_CHAVE,
    TD_OLD_VALOR,
    TD_NEW_VALOR
)
values(
    UUID(),
    @T_ID,
    '',
    1,
    OLD.idZona,
    null
),(
    UUID(),
    @T_ID,
    '',
    1,
    OLD.nome,
    null
);
END; 
