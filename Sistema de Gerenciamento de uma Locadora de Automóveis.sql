create database LOCADORA_AUTOMOVEIS
--Criação da tabela cliente
create table Cliente(
	CPF	 varchar(14) PRIMARY KEY,
	Nome varchar(50),
	Rua varchar(50),
	N int,
	Cidade varchar(15),
	Estado char(2)
);
--Criação do atributo mutivalorado Email
create table Email(
	Id_Email int PRIMARY KEY,
	Email varchar(50),
	Cliente_cpf varchar(14),
	FOREIGN KEY (Cliente_cpf) REFERENCES Cliente(CPF)
);
--Criação do atributo mutivalorado Telefone
create table Telefone(
	Id_Telefone int PRIMARY KEY,
	Telefone varchar(20),
	Cliente_cpf varchar(14),
	FOREIGN KEY (Cliente_cpf) REFERENCES Cliente(CPF)
);
--Criação da tabela Funcionário
create table Funcionario(
	Matricula int PRIMARY KEY,
	Nome varchar(50),
	Cargo varchar(20),
);
--Criação do relacionamento entre Cliente e Funcionário
create table Atendimento(
	Id_Atendimento int PRIMARY KEY,
	Data_Atendimento date,
	Cliente_cpf varchar(14),
	Funcionario_matricula int,
	FOREIGN KEY (Cliente_cpf) REFERENCES Cliente(CPF),
	FOREIGN KEY (Funcionario_matricula) REFERENCES Funcionario(Matricula)
);
--Criação tabela Aluguel
create table Aluguel(
	Contrato int PRIMARY KEY,
	Data_Retirada date,
	Data_Devolucao date,
	Valor decimal(12,2),
	Km_Incial decimal(10,2),
	Km_Final decimal(10,2),
	Cliente_cpf varchar(14),
	Funcionario_matricula int,
	FOREIGN KEY (Cliente_cpf) REFERENCES Cliente(CPF),
	FOREIGN KEY (Funcionario_matricula) REFERENCES Funcionario(Matricula)
);
--Criação tabela Veículo
create table Veiculo(
	Placa varchar(10) PRIMARY KEY,
	Modelo varchar(50),
	Ano_Fabricacao int,
	Cor varchar(20),
	Situacao varchar(20),
	Aluguel_contrato int,
	FOREIGN KEY (Aluguel_contrato) REFERENCES Aluguel(Contrato)
);
--Criação tabela Tipo de Veículo
create table Tipo_Veiculo(
	Categoria varchar(20) PRIMARY KEY,
	Tarifa_Diaria decimal(10,2),
	Capacidade_Passageiros int,
	Capacidade_PortaMalas int,
	Veiculo_placa varchar(10),
	FOREIGN KEY (Veiculo_placa) REFERENCES Veiculo(Placa)
);
--Inserção de dados na tabela Cliente
INSERT INTO Cliente (CPF, Nome, Rua, N, Cidade, Estado) VALUES
('123.456.789-01', 'Maria da Silva', 'Rua A', 123, 'Cidade1', 'UF'),
('987.654.321-02', 'João Oliveira', 'Rua B', 456, 'Cidade2', 'UF'),
('111.222.333-43', 'Ana Souza', 'Rua C', 789, 'Cidade3', 'UF'),
('555.666.777-84', 'Pedro Santos', 'Rua D', 101, 'Cidade4', 'UF'),
('999.888.777-65', 'Carla Lima', 'Rua E', 202, 'Cidade5', 'UF'),
('444.333.222-16', 'Ricardo Pereira', 'Rua F', 303, 'Cidade6', 'UF'),
('777.888.999-07', 'Lúcia Oliveira', 'Rua G', 404, 'Cidade7', 'UF'),
('222.333.444-58', 'Fernando Silva', 'Rua H', 505, 'Cidade8', 'UF'),
('666.555.444-39', 'Mariana Santos', 'Rua I', 606, 'Cidade9', 'UF'),
('333.222.111-09', 'Roberto Lima', 'Rua J', 707, 'Cidade10', 'UF'),
('888.999.000-18', 'Amanda Oliveira', 'Rua K', 808, 'Cidade11', 'UF'),
('111.000.999-87', 'Gustavo Silva', 'Rua L', 909, 'Cidade12', 'UF'),
('222.333.444-56', 'Camila Souza', 'Rua M', 101, 'Cidade13', 'UF'),
('333.444.555-65', 'Lucas Santos', 'Rua N', 202, 'Cidade14', 'UF'),
('555.444.333-24', 'Tatiane Lima', 'Rua O', 303, 'Cidade15', 'UF'),
('666.777.888-93', 'Rodrigo Pereira', 'Rua P', 404, 'Cidade16', 'UF'),
('777.888.999-02', 'Priscila Oliveira', 'Rua Q', 505, 'Cidade17', 'UF'),
('888.999.000-11', 'Eduardo Silva', 'Rua R', 606, 'Cidade18', 'UF'),
('999.888.777-66', 'Isabel Lima', 'Rua S', 707, 'Cidade19', 'UF'),
('444.333.222-11', 'Alexandre Souza', 'Rua T', 808, 'Cidade20', 'UF');
--Inserção de dados tabela email
INSERT INTO Email (Id_Email, Email, Cliente_cpf) VALUES
(1, 'maria@email.com', '123.456.789-01'),
(2, 'maria.silva@email.com', '123.456.789-01'),
(3, 'joao@email.com', '987.654.321-02'),
(4, 'joao.oliveira@email.com', '987.654.321-02'),
(5, 'ana@email.com', '111.222.333-43'),
(6, 'ana.souza@email.com', '111.222.333-43'),
(7, 'pedro@email.com', '555.666.777-84'),
(8, 'pedro.santos@email.com', '555.666.777-84'),
(9, 'carla@email.com', '999.888.777-65'),
(10, 'carla.lima@email.com', '999.888.777-65'),
(11, 'ricardo@email.com', '444.333.222-16'),
(12, 'ricardo.pereira@email.com', '444.333.222-16'),
(13, 'lucia@email.com', '777.888.999-07'),
(14, 'lucia.oliveira@email.com', '777.888.999-07'),
(15, 'fernando@email.com', '222.333.444-58'),
(16, 'fernando.silva@email.com', '222.333.444-58'),
(17, 'mariana@email.com', '666.555.444-39'),
(18, 'mariana.santos@email.com', '666.555.444-39'),
(19, 'roberto@email.com', '333.222.111-09'),
(20, 'roberto.lima@email.com', '333.222.111-09'),
(21, 'amanda.oliveira@email.com', '888.999.000-18'),
(22, 'gustavo@email.com', '111.000.999-87'),
(23, 'camila@email.com', '222.333.444-56'),
(24, 'camila.souza@email.com', '222.333.444-56'),
(25, 'lucas@email.com', '333.444.555-65'),
(26, 'lucas.santos@email.com', '333.444.555-65'),
(27, 'tatiane@email.com', '555.444.333-24'),
(28, 'tatiane.lima@email.com', '555.444.333-24'),
(29, 'rodrigo@email.com', '666.777.888-93'),
(30, 'rodrigo.pereira@email.com', '666.777.888-93'),
(31, 'priscila.oliveira@email.com', '777.888.999-02'),
(32, 'eduardo@email.com', '888.999.000-11'),
(33, 'eduardo.silva@email.com', '888.999.000-11'),
(34, 'isabel.lima@email.com', '999.888.777-66'),
(35, 'alexandre@email.com', '444.333.222-11');
--Inserção de dados tabela Telefone
INSERT INTO Telefone (Id_Telefone, Telefone, Cliente_cpf) VALUES
(1, '123-45678901', '123.456.789-01'),
(2, '987-65432102', '987.654.321-02'),
(3, '111-22233343', '111.222.333-43'),
(4, '555-66677784', '555.666.777-84'),
(5, '999-88877765', '999.888.777-65'),
(6, '444-33322216', '444.333.222-16'),
(7, '777-88899907', '777.888.999-07'),
(8, '222-33344458', '222.333.444-58'),
(9, '666-55544439', '666.555.444-39'),
(10, '333-22211109', '333.222.111-09'),
(11, '888-99900018', '888.999.000-18'),
(12, '111-00099987', '111.000.999-87'),
(13, '222-33344456', '222.333.444-56'),
(14, '333-44455565', '333.444.555-65'),
(15, '555-44433324', '555.444.333-24'),
(16, '666-77788893', '666.777.888-93'),
(17, '777-88899902', '777.888.999-02'),
(18, '888-99900011', '888.999.000-11'),
(19, '999-88877766', '999.888.777-66'),
(20, '444-33322211', '444.333.222-11');
--Inserção de dados tabela Funcionário
INSERT INTO Funcionario (Matricula, Nome, Cargo) VALUES
(101, 'Carlos Silva', 'Gerente Geral'),
(102, 'Ana Oliveira', 'Atendente de Vendas'),
(103, 'Ricardo Santos', 'Atendente de Vendas'),
(104, 'Mariana Lima', 'Analista de Reservas'),
(105, 'Pedro Pereira', 'Assistente Adm'),
(106, 'Isabel Souza', 'Desenvolvedor Sistem'),
(107, 'Fernando Oliveira', 'Supervisor Logística'),
(108, 'Camila Lima', 'Recursos Humanos'),
(109, 'Gustavo Silva', 'Analista Financeiro'),
(110, 'Lucia Pereira', 'Atendente de Vendas'),
(111, 'Amanda Santos', 'Analista Marketing'),
(112, 'José Oliveira', 'Assistente de Vendas'),
(113, 'Carla Lima', 'Engenheiro Manuten'),
(114, 'Rafael Pereira', 'Técnico Suporte'),
(115, 'Juliana Souza', 'Coordenador Reservas'),
(116, 'Marcos Silva', 'Analista Quali'),
(117, 'Cristina Oliveira', 'Gerente de RH'),
(118, 'Roberto Lima', 'Analista de Sistemas'),
(119, 'Luana Santos', 'Atendente de Vendas'),
(120, 'Felipe Pereira', 'Analista Financeiro');
--Inserção de dados tabela Aluguel
INSERT INTO Aluguel (Contrato, Data_Retirada, Data_Devolucao, Valor, Km_Incial, Km_Final, Cliente_cpf, Funcionario_matricula) VALUES
(1001, '2023-01-15', '2023-01-20', 350.00, 500.50, 600.75, '123.456.789-01', 103),
(1002, '2023-02-10', '2023-02-15', 280.00, 700.25, 800.00, '987.654.321-02', 102),
(1003, '2023-03-05', '2023-03-10', 420.50, 300.75, 400.25, '111.222.333-43', 103),
(1004, '2023-04-20', '2023-04-25', 550.00, 1000.00, 1100.50, '555.666.777-84', 110),
(1005, '2023-05-15', '2023-05-20', 320.00, 450.25, 550.75, '999.888.777-65', 119),
(1006, '2023-06-10', '2023-06-15', 480.75, 850.50, 950.25, '444.333.222-16', 112),
(1007, '2023-07-05', '2023-07-10', 600.00, 200.25, 300.75, '777.888.999-07', 110),
(1008, '2023-08-20', '2023-08-25', 380.00, 600.75, 700.25, '222.333.444-58', 103),
(1009, '2023-09-15', '2023-09-20', 490.50, 950.25, 1050.50, '666.555.444-39', 119),
(1010, '2023-10-10', '2023-10-15', 420.00, 350.50, 450.75, '333.222.111-09', 110),
(1011, '2023-11-05', '2023-11-10', 580.25, 800.00, 900.25, '888.999.000-18', 102),
(1012, '2023-12-20', '2023-12-25', 320.00, 150.25, 250.50, '111.000.999-87', 103),
(1013, '2024-01-15', '2024-01-20', 430.75, 300.75, 400.25, '222.333.444-56', 112),
(1014, '2024-02-10', '2024-02-15', 510.00, 700.25, 800.00, '333.444.555-65', 110),
(1015, '2024-03-05', '2024-03-10', 340.50, 450.25, 550.75, '555.444.333-24', 103),
(1016, '2024-04-20', '2024-04-25', 470.00, 1000.00, 1100.50, '666.777.888-93', 102),
(1017, '2024-05-15', '2024-05-20', 290.00, 200.25, 300.75, '777.888.999-02', 110),
(1018, '2024-06-10', '2024-06-15', 420.75, 850.50, 950.25, '888.999.000-11', 119),
(1019, '2024-07-05', '2024-07-10', 550.00, 600.75, 700.25, '999.888.777-66', 119),
(1020, '2024-08-20', '2024-08-25', 370.00, 950.25, 1050.50, '444.333.222-11', 112);
--Inserção de dados tabela Veículo
INSERT INTO Veiculo (Placa, Modelo, Ano_Fabricacao, Cor, Situacao, Aluguel_contrato) VALUES
('ABC1234', 'Fiat Palio', 2020, 'Prata', 'Disponível', 1001),
('DEF5678', 'Volkswagen Gol', 2019, 'Branco', 'Alugado', 1002),
('GHI9012', 'Ford Fiesta', 2021, 'Azul', 'Manutenção', NULL),
('JKL3456', 'Chevrolet Onix', 2022, 'Preto', 'Disponível', 1003),
('MNO7890', 'Renault Sandero', 2018, 'Vermelho', 'Alugado', 1004),
('PQR1234', 'Toyota Corolla', 2021, 'Prata', 'Disponível', NULL),
('STU5678', 'Hyundai HB20', 2020, 'Cinza', 'Alugado', 1005),
('VWX9012', 'Nissan Versa', 2019, 'Preto', 'Manutenção', NULL),
('YZA3456', 'Honda Civic', 2022, 'Branco', 'Disponível', 1006),
('BCD7890', 'Kia Sportage', 2017, 'Azul', 'Alugado', 1007),
('EFG1234', 'Fiat Uno', 2020, 'Amarelo', 'Manutenção', NULL),
('HIJ5678', 'Volkswagen Polo', 2019, 'Verde', 'Disponível', 1008),
('KLM9012', 'Ford Ka', 2021, 'Prata', 'Alugado', 1009),
('NOP3456', 'Chevrolet Cruze', 2022, 'Preto', 'Manutenção', NULL),
('QRS7890', 'Renault Kwid', 2018, 'Vermelho', 'Disponível', 1010),
('TUV1234', 'Toyota Yaris', 2020, 'Branco', 'Alugado', 1011),
('WXY5678', 'Hyundai Creta', 2019, 'Cinza', 'Manutenção', NULL),
('ZAB9012', 'Nissan Kicks', 2021, 'Azul', 'Disponível', 1012),
('CDE3456', 'Honda Fit', 2017, 'Prata', 'Alugado', 1013),
('FGH7890', 'Kia Seltos', 2020, 'Verde', 'Manutenção', NULL);
--Inserção de dados tabela Tipo de Veículo
INSERT INTO Tipo_Veiculo (Categoria, Tarifa_Diaria, Capacidade_Passageiros, Capacidade_PortaMalas, Veiculo_placa) VALUES
('Econômico', 80.00, 4, 200, 'ABC1234'),
('Compacto', 100.00, 5, 300, 'DEF5678'),
('Sedan', 120.00, 5, 400, 'GHI9012'),
('SUV', 150.00, 7, 500, 'JKL3456'),
('Esportivo', 200.00, 2, 100, 'MNO7890'),
('Luxo', 250.00, 4, 300, 'PQR1234'),
('Hatchback', 90.00, 5, 250, 'STU5678'),
('Crossover', 130.00, 6, 450, 'VWX9012'),
('Van', 180.00, 9, 650, 'YZA3456'),
('Caminhonete', 160.00, 5, 850, 'BCD7890'),
('Conversível', 220.00, 2, 100, 'EFG1234'),
('Coupé', 190.00, 4, 200, 'HIJ5678'),
('Microcarro', 70.00, 2, 150, 'KLM9012'),
('Carro Elétrico', 200.00, 5, 350, 'NOP3456'),
('Jipe', 170.00, 5, 600, 'QRS7890'),
('Minivan', 140.00, 7, 450, 'TUV1234'),
('Picape', 160.00, 5, 850, 'WXY5678'),
('Carro de Luxo', 300.00, 4, 330, 'ZAB9012'),
('Utilitário Esportivo', 180.00, 5, 450, 'CDE3456'),
('Híbrido', 220.00, 5, 300, 'FGH7890');
--Inserção de dados na tabela atendimento (relação entre Cliente e Funcionário)
INSERT INTO Atendimento (Id_Atendimento, Data_Atendimento, Cliente_cpf, Funcionario_matricula) VALUES
(1, '2023-01-15', '123.456.789-01', 101),
(2, '2023-02-10', '987.654.321-02', 102),
(3, '2023-03-05', '111.222.333-43', 103),
(4, '2023-04-20', '555.666.777-84', 104),
(5, '2023-05-15', '999.888.777-65', 105),
(6, '2023-06-10', '444.333.222-16', 106),
(7, '2023-07-05', '777.888.999-07', 107),
(8, '2023-08-20', '222.333.444-58', 108),
(9, '2023-09-15', '666.555.444-39', 109),
(10, '2023-10-10', '333.222.111-09', 110),
(11, '2023-11-05', '888.999.000-18', 111),
(12, '2023-12-20', '111.000.999-87', 112),
(13, '2024-01-15', '222.333.444-56', 113),
(14, '2024-02-10', '333.444.555-65', 114),
(15, '2024-03-05', '555.444.333-24', 115),
(16, '2024-04-20', '666.777.888-93', 116),
(17, '2024-05-15', '777.888.999-02', 117),
(18, '2024-06-10', '888.999.000-11', 118),
(19, '2024-07-05', '999.888.777-66', 119),
(20, '2024-08-20', '444.333.222-11', 120);
--Inicio do Crud
--C - Create (INSERT)
--Criação de Cliente
INSERT INTO Cliente (CPF, Nome, Rua, N, Cidade, Estado) VALUES
('123.456.789-04', 'Maria da Silva', 'Rua A', 123, 'Cidade1', 'UF');

-- Criação de Funcionário
INSERT INTO Funcionario (Matricula, Nome, Cargo) VALUES
(121, 'Marcio Funes', 'Atendente de Vendas');

-- Criação de Atendimento
INSERT INTO Atendimento (Id_Atendimento, Data_Atendimento, Cliente_cpf, Funcionario_matricula) VALUES
(21, '2023-11-29', '123.456.789-04', 101);

-- Criação de Aluguel
INSERT INTO Aluguel (Contrato, Data_Retirada, Data_Devolucao, Valor, Km_Incial, Km_Final, Cliente_cpf, Funcionario_matricula)
VALUES
(1021, '2023-11-29', '2023-12-29', 350.00, 500.50, 600.75, '123.456.789-04', 101);

-- Criação de Veículo
INSERT INTO Veiculo (Placa, Modelo, Ano_Fabricacao, Cor, Situacao, Aluguel_contrato) VALUES
('ABC4321', 'Fiat Palio', 2020, 'Prata', 'Disponível', 1021);

-- Criação de TipoVeiculo
INSERT INTO Tipo_Veiculo (Categoria, Tarifa_Diaria, Capacidade_Passageiros, Capacidade_PortaMalas, Veiculo_placa) VALUES
('Econômico1', 80.00, 4, 2, 'ABC4321');

--R - Read (Select)
-- Leitura dos clientes
SELECT CPF, Nome, Estado FROM Cliente;

-- Leitura de todos os funcionários
SELECT * FROM Funcionario;

-- Leitura dos aluguéis
SELECT Contrato, Data_Retirada, Km_Incial, Cliente_cpf, Funcionario_matricula FROM Aluguel;

-- Leitura de todos os veículos
SELECT * FROM Veiculo;

-- Leitura dos tipos de veículos
SELECT Categoria, Tarifa_Diaria FROM Tipo_Veiculo;

-- Leitura de todos os atendimentos
SELECT * FROM Atendimento;

--U - Update
-- Atualização do nome do cliente
UPDATE Cliente
SET Nome = 'João Oliveira'
WHERE CPF = '123.456.789-04';

-- Atualização do cargo do funcionário
UPDATE Funcionario
SET Cargo = 'Gerente de Vendas'
WHERE Matricula = 121;

-- Atualização da data de devolução do aluguel
UPDATE Aluguel
SET Data_Devolucao = '2023-12-26'
WHERE Contrato = 1021;

-- Atualização da cor do veículo
UPDATE Veiculo
SET Cor = 'Azul'
WHERE Placa = 'ABC4321';

-- Atualização da tarifa diária do tipo de veículo
UPDATE Tipo_Veiculo
SET Tarifa_Diaria = 75.00
WHERE Categoria = 'Econômico1';

-- Atualização da data de atendimento
UPDATE Atendimento
SET Data_Atendimento = '2023-11-28'
WHERE Id_Atendimento = 21;

--D - Delete
-- Exclusão de um cliente
DELETE FROM Cliente
WHERE CPF = '123.456.789-04';

-- Exclusão de um funcionário
DELETE FROM Funcionario
WHERE Matricula = 121;

-- Exclusão de um aluguel
DELETE FROM Aluguel
WHERE Contrato = 1021;

-- Exclusão de um veículo
DELETE FROM Veiculo
WHERE Placa = 'ABC4321';

-- Exclusão de um tipo de veículo
DELETE FROM Tipo_Veiculo
WHERE Categoria = 'Econômico1';

-- Exclusão de um atendimento
DELETE FROM Atendimento
WHERE Id_Atendimento = 21;

--Seleção, filtro e ordenação
--1 Listar todos os clientes e seus respectivos endereços:
SELECT CPF, Nome, Rua, N, Cidade, Estado FROM Cliente;

--2 Listar os veículos disponíveis para aluguel, planejados pelo ano de fabricação:
SELECT Placa, Modelo, Ano_Fabricacao, Cor, Situacao FROM Veiculo
WHERE Situacao = 'Disponível' ORDER BY Ano_Fabricacao DESC;

--3 Veja os tipos de veículos e suas tarifas diárias em ordem alfabética de categoria:
SELECT Categoria, Tarifa_Diaria FROM Tipo_Veiculo ORDER BY Categoria;
 
--4 Obtenha a matrícula, nome e cargo de todos os funcionários designados para determinado cargo:
SELECT Matricula, Nome, Cargo FROM Funcionario ORDER BY Cargo;

--5 Listar os aluguéis com valor superior a R$400, ordenados por dados de retirada:
SELECT Contrato, Data_Retirada, Valor FROM Aluguel WHERE Valor > 400.00 ORDER BY Data_Retirada;

--6 Veja os atendimentos realizados em 2023, organizados pelos dados de atendimento:
SELECT Id_Atendimento, Data_Atendimento FROM Atendimento WHERE YEAR(Data_Atendimento) = 2023
ORDER BY Data_Atendimento;

--7 Listar os clientes que alugaram veículos em 2023, planejados pelo nome:
SELECT CPF, Nome FROM Cliente
WHERE CPF IN (SELECT Cliente_cpf FROM Aluguel WHERE YEAR(Data_Retirada) = 2023)
ORDER BY Nome;

--8 Veja os tipos de veículos com tarifa diária acima de R$150, ordenados pela tarifa em ordem decrescente:
SELECT Categoria, Tarifa_Diaria
FROM Tipo_Veiculo
WHERE Tarifa_Diaria > 150.00
ORDER BY Tarifa_Diaria DESC;

--9 Listar os tipos de veículos com capacidade de passageiros superior a 5, ordenados pela capacidade em ordem decrescente:
SELECT Categoria, Capacidade_Passageiros
FROM Tipo_Veiculo
WHERE Capacidade_Passageiros > 5
ORDER BY Capacidade_Passageiros DESC;

--10 Mostre os veículos que ainda não foram oferecidos, exibindo placa, modelo, ano de fabricação e situação, ordenados por ano de fabricação:
SELECT Placa, Modelo, Ano_Fabricacao, Situacao FROM Veiculo
WHERE Situacao = 'Disponível' OR Situacao IS NULL
ORDER BY Ano_Fabricacao;