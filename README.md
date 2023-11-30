# Trabalho Modelagem de Banco de Dados
###  Este repositório contém os artefatos relacionados ao projeto de modelagem de banco de dados para uma Locadora de Automóveis.
---
## Cenário:
### Uma locadora de automóveis, necessita de um banco de dados no qual permita controlar com eficiência a disponibilidade dos veículos, as transações de aluguel, o histórico de cliente e funcionários, além de informações sobre os tipos de veículos oferecidos.
### Sendo preciso no banco ter o cadastro de clientes, possuindo informações como nome, CPF, endereço e telefone. O cadastro dos veículos contendo modelo, placa, ano de fabricação, cor e status. O registro do funcionário que deve possuir nome, o cargo e a matrícula/id. O cadastro do aluguel do automóvel possuindo o número do contrato de aluguel, a data da retirada e da devolução, o valor do aluguel desse período, tendo a quilometragem inicial e no fim do período a quilometragem rodada. E por fim o sistema deve ter o registro do tipo de veículo, contendo a categoria do automóvel, tarifa diária, a capacidade de passageiros e a capacidade do porta-malas.
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
## Modelagem Lógica
---
---
## Dados
---
---
## CRUD
---
## Relatórios.
---
---
## 🛠️ Construído com
* Draw.io
* Sqlserver
---
---
## Link do projeto
```



