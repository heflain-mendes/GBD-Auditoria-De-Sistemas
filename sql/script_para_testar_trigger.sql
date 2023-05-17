--use o scriptDML_curto para testar as triggers
SET @iduser=1;
SET @host='192.168.170.25';

--teste de auditoria na tabela manutencao
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (11, 1, '2017-07-12', 89125, 'Reverse-engineered modular ability', 4271.89);

Update manutencao SET 
idCaminhaoColeta = 1,
data = '2019-01-01',
quilometragem = 1,
descricao = 'teste',
valor = 1
WHERE idManutencao = 11;

DELETE FROM manutencao WHERE idManutencao = 11;

--teste de auditoria na tabela auxiliarEscala
insert into auxiliarEscala (idAuxiliar, idEscala) values (1, 1);

Update auxiliarEscala
SET idAuxiliar = 2,
idEscala = 1
WHERE idAuxiliar = 1 AND idEscala = 1;

DELETE FROM auxiliarEscala WHERE idAuxiliar = 1 AND idEscala = 1;

--teste de auditoria na tabela zona
insert into zona (idZona, nome) values (11, 'Larry');

Update zona
SET nome = 'teste'
WHERE idZona = 11;

DELETE FROM zona WHERE idZona = 11;