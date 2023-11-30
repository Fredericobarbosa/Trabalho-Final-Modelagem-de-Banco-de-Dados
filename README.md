# Trabalho Modelagem de Banco de Dados
###  Este repositório contém os artefatos relacionados ao projeto de modelagem de banco de dados para uma Locadora de Automóveis.
---
## Cenário:
### Uma locadora de automóveis, necessita de um banco de dados no qual permita controlar com eficiência a disponibilidade dos veículos, as transações de aluguel, o histórico de cliente e funcionários, além de informações sobre os tipos de veículos oferecidos.
### Sendo preciso no banco ter o cadastro de clientes, possuindo informações como nome, CPF, endereço e telefone. O cadastro dos veículos contendo modelo, placa, ano de fabricação, cor e status. O registro do funcionário que deve possuir nome, o cargo e a matrícula. O cadastro do aluguel do automóvel possuindo o número do contrato de aluguel, a data da retirada e da devolução, o valor do aluguel desse período, tendo a quilometragem inicial e no fim do período a quilometragem rodada. E por fim o sistema deve ter o registro do tipo de veículo, contendo a categoria do automóvel, tarifa diária, a capacidade de passageiros e a capacidade do porta-malas.
---
---
## Modelagem Conceitual: 
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Modelo%20Conceitual.PNG" alt="Diagrama Entidade Relacionamento">

### Entidades:
### 1-) Cliente:
### Atributos:
*	Nome(simples)
*	CPF (atributo chave)
*	Endereço(composto: rua, número,cidade,estado)
*	Telefone(multivalorado)
*	Email(mutivalorado)

### 2-) Veículo:
### Atributos:
*	Modelo(simples)
*	Placa (atributo chave)
*	Ano de Fabricação(simples)
*	Cor(simples)
*	Status (simples: disponível, não disponível, em manutenção)

### 3-) Funcionário:
### Atributos:
*	Nome (simples)
*	Matrícula (atributo chave)
*	Cargo (simples)

### 4-) Aluguel:
### Atributos:
*	Data de Retirada (simples)
*	Data de Devolução (simples)
*	Valor (simples)
*	Quilometragem Inicial (simples)
*	Quilômetros Rodados (derivado)
*	Quilometragem Final (simples)

### 5-) Tipo de veículo:
### Atributos:
*	Categoria (simples: econômico, intermediário, luxo)
*	Tarifa Diária (simples)
*	Capacidade de Passageiros (simples)
*	Capacidade do Porta-Malas (simples)

### Relacionamentos:
*	Cliente-Aluguel (1:N):
#### Um cliente pode realizar vários aluguéis, mas cada aluguel é associado a apenas um cliente.
*	Veículo-Aluguel (1:N):
#### Um veículo pode estar associado a vários aluguéis, mas cada aluguel é atribuído a apenas um veículo.
*	Funcionário-Aluguel (1:N):
#### Um funcionário pode realizar várias transações de aluguel, mas cada aluguel é associado a apenas um funcionário.
*	Veículo-Tipo de Veículo (N:1):
#### Um veículo está associado a um tipo específico de veículo, mas vários veículos podem compartilhar o mesmo tipo.
*	Cliente-Funcionário (N:N):
#### Um funcionário pode atender vários clientes, e um cliente pode ser atendido por vários funcionários.
---
---
## Modelagem Lógica:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Modelo%20logico.PNG" alt="Modelo das tabelas">

#### Tabelas e tipos de dados:
* Cliente:  CPF(varchar(14)/PK) , Nome(varchar(50)), Rua(varchar(50)), N°(int), Cidade(varchar(15)), Estado(char(2));
* Telefone:  id_telefone(int/PK) , telefone(varchar(20)),  cliente_cpf(varchar(14)/FK);
* E-mail:  id_email(int/PK) , email(varchar(50)),  cliente_cpf(varchar(14)/FK);
* Atendimento: id_atendimento (int/PK), Data Atendimento (Date), cliente_cpf (varchar(14)/FK) , funcionario_matricula(int/FK);
* Funcionário: matrícula(int/PK),  nome(varchar(50)), cargo(varchar(20));
* Aluguel: contrato (int/Pk) , Data Retirada(Date), Data Devolução(Date), Valor(decimal(12,2)), Km Inicial(decimal(10,2)), Km Final(decimal(10,2)), cliente_cpf(varchar(14)/FK) , fucinario_matricula(int/FK);
* Veículo:  placa(varchar(10)/PK),  Modelo(varchar(50)), Ano Fabricação(int), Cor(varchar(20)), Status(varchar(20)), aluguel_contrato(int/FK);
* Tipo Veículo: Categoria (varchar(20)/PK) , Tarifa Diária(decimal(10,2), Capacidade Passageiros(int), Capacidade Porta-Malas(int),  veículo_placa(varchar(10));
---
---
## Dados
#### Inserção de dados em todas as tabelas:
#### Cliente:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Cliente.PNG" alt=" Dados Cliente">

####  Email:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Email.PNG" alt="Dados Email">

#### Telefone:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Telefone.PNG" alt="Dados Telefone">

#### Funcionário:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Funcionario.PNG" alt="Dados Funcionário">

#### Atendimento:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Atendimentos.PNG" alt="Dados Atendimento">

#### Aluguel:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Aluguel.PNG" alt="Dados Aluguel">

#### Veículo:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Veiculos.PNG" alt="Dados Veiculos">

#### Tipo de Veículo:
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Dados%20Tipo%20de%20Veiculo.PNG" alt="Dados Tipo de Veículo">

---
---
## CRUD
#### C - Create (INSERT)
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Create.PNG" alt="Criação d novos dados">

#### R - Read (Select)
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Select%20Clientes.PNG" alt="Seleção dos clientes">

<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Select%20Funcionario.PNG" alt="Seleção Funcionário">

<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Select%20Atendimento.PNG" alt="Seleção Atendimento">

<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Select%20Aluguel.PNG" alt="Seleção Aluguel">

<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Select%20Tipos%20Veiculos.PNG" alt="Seleção Tipo de Veículos">

<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Select%20Veiculo.PNG" alt="Seleção Veículos">

#### U - Update
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Update.PNG" alt="Atualização dos dados">

#### D - Delete
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Delete.PNG" alt="Apagar os dados">

---
## Relatórios:
#### Seleção, filtro e ordenação:
#### 1 Listar todos os clientes e seus respectivos endereços:
#### SELECT CPF, Nome, Rua, N, Cidade, Estado FROM Cliente;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%201.PNG" alt="Filtro 01">

#### 2 Listar os veículos disponíveis para aluguel, planejados pelo ano de fabricação:
#### SELECT Placa, Modelo, Ano_Fabricacao, Cor, Situacao FROM Veiculo WHERE Situacao = 'Disponível' ORDER BY Ano_Fabricacao DESC;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%202.PNG" alt="Filtro 02">

#### 3 Veja os tipos de veículos e suas tarifas diárias em ordem alfabética de categoria:
#### SELECT Categoria, Tarifa_Diaria FROM Tipo_Veiculo ORDER BY Categoria;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%203.PNG" alt="Filtro 03">
 
#### 4 Obtenha a matrícula, nome e cargo de todos os funcionários designados para determinado cargo:
#### SELECT Matricula, Nome, Cargo FROM Funcionario ORDER BY Cargo;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%204.PNG" alt="Filtro 04">

#### 5 Listar os aluguéis com valor superior a R$400, ordenados por dados de retirada:
#### SELECT Contrato, Data_Retirada, Valor FROM Aluguel WHERE Valor > 400.00 ORDER BY Data_Retirada;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%205.PNG" alt="Filtro 05">

#### 6 Veja os atendimentos realizados em 2023, organizados pelos dados de atendimento:
#### SELECT Id_Atendimento, Data_Atendimento FROM Atendimento WHERE YEAR(Data_Atendimento) = 2023 ORDER BY Data_Atendimento;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%206.PNG" alt="Filtro 06">

#### 7 Listar os clientes que alugaram veículos em 2023, planejados pelo nome:
#### SELECT CPF, Nome FROM Cliente WHERE CPF IN (SELECT Cliente_cpf FROM Aluguel WHERE YEAR(Data_Retirada) = 2023) ORDER BY Nome;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%207.PNG" alt="Filtro 07">

#### 8 Veja os tipos de veículos com tarifa diária acima de R$150, ordenados pela tarifa em ordem decrescente:
#### SELECT Categoria, Tarifa_Diaria FROM Tipo_Veiculo WHERE Tarifa_Diaria > 150.00 ORDER BY Tarifa_Diaria DESC;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%208.PNG" alt="Filtro 08">

#### 9 Listar os tipos de veículos com capacidade de passageiros superior a 5, ordenados pela capacidade em ordem decrescente:
#### SELECT Categoria, Capacidade_Passageiros FROM Tipo_Veiculo WHERE Capacidade_Passageiros > 5 ORDER BY Capacidade_Passageiros DESC;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%209.PNG" alt="Filtro 09">

#### 10 Mostre os veículos que ainda não foram oferecidos, exibindo placa, modelo, ano de fabricação e situação, ordenados por ano de fabricação:
#### SELECT Placa, Modelo, Ano_Fabricacao, Situacao FROM Veiculo WHERE Situacao = 'Disponível' OR Situacao IS NULL ORDER BY Ano_Fabricacao;
<img src="https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados/blob/main/Filtro%2010.PNG" alt="Filtro 10">

---
## 🛠️ Construído com:
* Draw.io
* Sqlserver
---
---
## Link do projeto:

https://github.com/Fredericobarbosa/Trabalho-Final-Modelagem-de-Banco-de-Dados
