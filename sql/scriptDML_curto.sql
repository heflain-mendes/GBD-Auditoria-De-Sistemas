--cidade
insert into cidade (idCidade, nome, uf) values (4, 'Gainesville', 'FL');
insert into cidade (idCidade, nome, uf) values (5, 'Fullerton', 'CA');
insert into cidade (idCidade, nome, uf) values (6, 'Greensboro', 'NC');
insert into cidade (idCidade, nome, uf) values (7, 'Columbia', 'SC');
insert into cidade (idCidade, nome, uf) values (8, 'New Orleans', 'LA');
insert into cidade (idCidade, nome, uf) values (9, 'Rochester', 'NY');
insert into cidade (idCidade, nome, uf) values (10, 'Birmingham', 'AL');

--endereços
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (1, 1, 'Towne', '7259 Elka Center', '64115533', 777, 'Enterprise-wide fault-tolerant core');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (2, 2, 'Rowland', '196 Mallard Place', '93349559', 52, 'Focused object-oriented system engine');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (3, 3, 'Melrose', '86 Oak Valley Place', '73761803', 978, 'Vision-oriented methodical concept');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (4, 4, 'Havey', '5960 Forest Dale Alley', '24552069', 909, 'Upgradable asynchronous interface');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (5, 5, 'Moose', '44 Kennedy Court', '77541838', 214, 'Configurable 4th generation moderator');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (6, 6, 'Southridge', '81 Dawn Center', '43959414', 434, 'Centralized impactful definition');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (7, 7, 'Rutledge', '46894 Fulton Circle', '87225526', 925, 'Reduced discrete synergy');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (8, 8, 'Randy', '819 Wayridge Avenue', '32602167', 261, 'Focused asymmetric local area network');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (9, 9, 'Oneill', '918 Northport Drive', '33388469', 383, 'Phased demand-driven matrix');
insert into endereco (idEndereco, idCidade, bairro, logradouro, cep, numero, complemento) values (10, 10, 'Express', '67 Green Point', '42697600', 208, 'Universal human-resource info-mediaries');

--usuarios
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (1, 1, 'Pavel Pezey', '1985-02-16', '51321224576', 1, 'ppezey0', 'mxa2Ft2zbZIC');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (2, 2, 'Elvira Lindores', '1982-05-05', '17249956508', 2, 'elindores1', 'HG4b02o');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (3, 3, 'Shandeigh Elverstone', '1995-07-27', '65472993196', 0, 'selverstone2', 'sREi2wcDC5g');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (4, 4, 'Thaddeus Meecher', '1993-04-19', '22004772515', 2, 'tmeecher3', 'I4PS8Z5Nx09');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (5, 5, 'Paxon Jedras', '1980-10-07', '17566394127', 1, 'pjedras4', 'ybKI4pmA0g');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (6, 6, 'Maxie Jacqueme', '1983-04-21', '79971498123', 2, 'mjacqueme5', 'BtQhAkcILAb');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (7, 7, 'Isa Giorgietto', '1989-11-20', '70829914269', 2, 'igiorgietto6', '5jZPc1');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (8, 8, 'Austen Addison', '1985-11-18', '90775293812', 0, 'aaddison7', 'U9sVGeyq');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (9, 9, 'Sherilyn Loadman', '1994-12-30', '78058812588', 1, 'sloadman8', 'NtPkgIYnh7');
insert into usuario (idUsuario, idEndereco, nome, dataNascimento, cpf, nivelDeAcesso, usuario, senha) values (10, 10, 'Prisca Fishbourn', '1978-12-16', '30550055581', 2, 'pfishbourn9', '58DwJONklP');

--auxiliares
insert into auxiliar (idAuxiliar, servicoComunitario) values (1, 1);
insert into auxiliar (idAuxiliar, servicoComunitario) values (2, 1);
insert into auxiliar (idAuxiliar, servicoComunitario) values (3, 1);
insert into auxiliar (idAuxiliar, servicoComunitario) values (4, 1);
insert into auxiliar (idAuxiliar, servicoComunitario) values (5, 0);
insert into auxiliar (idAuxiliar, servicoComunitario) values (6, 1);
insert into auxiliar (idAuxiliar, servicoComunitario) values (7, 1);
insert into auxiliar (idAuxiliar, servicoComunitario) values (8, 0);
insert into auxiliar (idAuxiliar, servicoComunitario) values (9, 0);
insert into auxiliar (idAuxiliar, servicoComunitario) values (10, 0);

--motorista
insert into motorista (idMotorista, numCarteira) values (1, '2931472303');
insert into motorista (idMotorista, numCarteira) values (2, '0101352480');
insert into motorista (idMotorista, numCarteira) values (3, '4165739912');
insert into motorista (idMotorista, numCarteira) values (4, '3558420750');
insert into motorista (idMotorista, numCarteira) values (5, '1896864893');
insert into motorista (idMotorista, numCarteira) values (6, '0951710895');
insert into motorista (idMotorista, numCarteira) values (7, '1252869448');
insert into motorista (idMotorista, numCarteira) values (8, '3311065872');
insert into motorista (idMotorista, numCarteira) values (9, '1430394770');
insert into motorista (idMotorista, numCarteira) values (10, '3137211204');

--zonas
insert into zona (idZona, nome) values (1, 'Mesta');
insert into zona (idZona, nome) values (2, 'Larry');
insert into zona (idZona, nome) values (3, 'Bowman');
insert into zona (idZona, nome) values (4, 'Memorial');
insert into zona (idZona, nome) values (5, 'Ludington');
insert into zona (idZona, nome) values (6, 'Barnett');
insert into zona (idZona, nome) values (7, 'Hoard');
insert into zona (idZona, nome) values (8, 'Arrowood');
insert into zona (idZona, nome) values (9, 'Muir');
insert into zona (idZona, nome) values (10, 'Miller');

--ruas
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (1, 1, 'Longview', 'Mandatory exuding infrastructure', 8, 9);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (2, 2, 'Pankratz', 'Secured national firmware', 3, 125);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (3, 3, 'Daystar', 'Inverse bifurcated forecast', 10, 148);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (4, 4, 'Ludington', 'Open-architected well-modulated focus group', 7, 4);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (5, 5, 'Talisman', 'Business-focused clear-thinking budgetary management', 1, 21);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (6, 6, 'Prentice', 'Streamlined transitional leverage', 6, 27);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (7, 7, 'Huxley', 'Open-architected systemic process improvement', 6, 32);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (8, 8, 'Shopko', 'Monitored tertiary internet solution', 7, 130);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (9, 9, 'Ryan', 'Cross-platform upward-trending throughput', 3, 102);
insert into rua (idRua, idZona, nome, complemento, qtdLatasLixo, qtdCasas) values (10, 10, 'Bellgrove', 'Ameliorated tangible ability', 8, 102);

--caminhoes
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (1, 2, 'VHOHBHF', 'LTD Crown Victoria', 1986, 63429, 'Ford');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (2, 2, 'MXH9UVC', 'C-Class', 2006, 197517, 'Mercedes-Benz');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (3, 3, 'MEGMMO2', 'Camaro', 1976, 133749, 'Chevrolet');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (4, 1, 'NGMY5NK', 'Camaro', 2002, 39845, 'Chevrolet');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (5, 1, 'BOL82W1', 'Forester', 2009, 105110, 'Subaru');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (6, 2, 'HZRAS96', 'Pathfinder', 1994, 138135, 'Nissan');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (7, 3, 'TZ8I7A2', 'Mustang', 1996, 180979, 'Ford');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (8, 1, 'F7XB3LN', 'Corvette', 2011, 140468, 'Chevrolet');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (9, 1, 'NW2UQOK', 'Sentra', 2004, 8581, 'Nissan');
insert into caminhaoColeta (idCaminhaoColeta, situacao, placa, modelo, ano, quilometragem, marca) values (10, 3, 'SL5VBAH', 'Tundra', 2008, 37627, 'Toyota');

--abastecimento
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (2, 2, '2018-01-23', 36.27, 79.96, 220, 9.95);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (1, 1, '2020-07-26', 4.24, 114.74, 249, 8.21);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (3, 3, '2020-08-23', 41.99, 271.49, 353, 2.78);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (4, 4, '2016-12-08', 8.0, 299.55, 295, 7.53);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (5, 5, '2016-07-19', 24.26, 263.4, 462, 10.93);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (6, 6, '2015-03-25', 11.88, 107.89, 190, 2.39);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (7, 7, '2019-05-16', 28.0, 60.9, 282, 2.62);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (8, 8, '2016-10-22', 25.74, 147.43, 311, 6.12);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (9, 9, '2017-01-18', 47.3, 175.86, 492, 9.92);
insert into abastecimento (idAbastecimento, idCaminhaoColeta, data, quantidade, valor, quilometragem, mediaConsumo) values (10, 10, '2019-08-02', 5.3, 185.07, 143, 11.33);

--escalas
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (2, 2, 2, 2, 6, '11:45:51', '13:35:25');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (1, 1, 1, 1, 2, '8:12:02', '15:36:33');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (3, 3, 3, 3, 3, '10:06:14', '17:37:21');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (4, 4, 4, 4, 7, '10:59:46', '18:20:59');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (5, 5, 5, 5, 3, '10:20:52', '18:35:14');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (6, 6, 6, 6, 1, '7:34:03', '12:40:45');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (7, 7, 7, 7, 6, '10:46:26', '18:00:08');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (8, 8, 8, 8, 3, '10:20:59', '14:03:53');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (9, 9, 9, 9, 1, '9:00:24', '15:19:34');
insert into escala (idEscala, idZona, idCaminhaoColeta, idMotorista, diaSemana, horaInicio, horaFim) values (10, 10, 10, 10, 6, '8:16:41', '12:58:48');

--auxiliares Escala
insert into auxiliarEscala (idAuxiliar, idEscala) values (1, 1);
insert into auxiliarEscala (idAuxiliar, idEscala) values (2, 2);
insert into auxiliarEscala (idAuxiliar, idEscala) values (3, 3);
insert into auxiliarEscala (idAuxiliar, idEscala) values (4, 4);
insert into auxiliarEscala (idAuxiliar, idEscala) values (5, 5);
insert into auxiliarEscala (idAuxiliar, idEscala) values (6, 6);
insert into auxiliarEscala (idAuxiliar, idEscala) values (7, 7);
insert into auxiliarEscala (idAuxiliar, idEscala) values (8, 8);
insert into auxiliarEscala (idAuxiliar, idEscala) values (9, 9);
insert into auxiliarEscala (idAuxiliar, idEscala) values (10, 10);

--manutencao
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (1, 1, '2015-12-20', 153703, 'Fundamental tangible challenge', 6370.42);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (2, 2, '2020-10-31', 140689, 'Reduced multi-tasking leverage', 3064.53);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (3, 3, '2019-10-13', 96089, 'Customizable stable orchestration', 2625.15);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (4, 4, '2020-04-25', 55411, 'Exclusive 24 hour data-warehouse', 9035.42);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (5, 5, '2018-10-29', 183393, 'User-centric explicit adapter', 5288.81);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (6, 6, '2019-10-02', 16784, 'Enhanced interactive capability', 1240.41);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (7, 7, '2016-10-13', 101492, 'Advanced heuristic help-desk', 720.57);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (8, 8, '2015-01-30', 49410, 'Multi-lateral user-facing parallelism', 6356.22);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (9, 9, '2016-07-31', 112484, 'Persistent mobile support', 5911.21);
insert into manutencao (idManutencao, idCaminhaoColeta, data, quilometragem, descricao, valor) values (10, 10, '2019-01-13', 151962, 'Grass-roots demand-driven local area network', 3075.44);
