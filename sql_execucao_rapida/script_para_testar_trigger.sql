SET @iduser=1;
SET @host='192.168.170.25';

--manutencao
Update manutencao SET 
idCaminhaoColeta = 101,
data = '2019-01-01',
quilometragem = 1,
descricao = 'teste',
valor = 1
WHERE idManutencao = 1001;

INSERT INTO manutencao (idCaminhaoColeta, data, quilometragem, descricao, valor) VALUES (1, '2019-01-01', 1, 'teste', 1);

DELETE FROM manutencao WHERE idManutencao = 1;


Update auxiliarEscala
SET idAuxiliar = 2,
idEscala = 2
WHERE idAuxiliar = 1 AND idEscala = 1;

INSERT INTO auxiliarEscala (idAuxiliar, idEscala) VALUES (1, 1);

DELETE FROM auxiliarEscala WHERE idAuxiliar = 1 AND idEscala = 1;


Update zona
SET nome = 'teste'
WHERE idZona = 1;

INSERT INTO zona (nome) VALUES ('teste');

DELETE FROM zona WHERE idZona = 1;

