-- Criação do banco de dados
CREATE DATABASE Mini_Projeto;

-- Seleciona o banco para uso
USE Mini_Projeto;

/* ======================
   DDL - Criação das tabelas
   ====================== */

-- Tabela de funcionários
CREATE TABLE TabelaFuncionario (
    Id_Funcionario INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único do funcionário
    Nome_funcionario VARCHAR(100),                  -- Nome do funcionário
    Departamento VARCHAR(100),                      -- Departamento em que trabalha
    Salario_funcionario DECIMAL(10,2)               -- Salário com duas casas decimais
);

-- Tabela de projetos
CREATE TABLE TabelaProjetos (
    Id_Projeto INT AUTO_INCREMENT PRIMARY KEY,      -- Identificador do projeto
    Nome_Projeto VARCHAR(100),                       -- Nome do projeto
    fk_Funcionario INT,                              -- Funcionário responsável (gerente)
    FOREIGN KEY (fk_Funcionario) 
        REFERENCES TabelaFuncionario(Id_Funcionario) -- Relacionamento com funcionarios
);

/* ======================
   DML - Inserção de dados
   ====================== */

-- Inserção dos funcionários
INSERT INTO TabelaFuncionario (
    Nome_funcionario,
    Departamento,
    Salario_funcionario
)
VALUES
('Heitor Vieira','Financeiro', 4959.22),
('Daniel Campos','Vendas', 3884.44),
('Luiza Dias','TI',8205.78),
('Davi Lucas Moraes','Financeiro',8437.02),
('Pietro Cavalcanti','TI',4946.88),
('Evelyn da Mata','Vendas', 5278.88),
('Isabella Rocha','Marketing',4006.03),
('Sra. Manuela Azevedo','Vendas',6101.88),
('Brenda Cardoso','TI',8853.34),
('Danilo Souza','TI',8242.14);

/* ======================
   DQL - Consultas
   ====================== */

-- Seleciona todos os funcionários
SELECT * 
FROM TabelaFuncionario;

-- Seleciona os nomes dos funcionários do departamento de Vendas
SELECT Nome_funcionario 
FROM TabelaFuncionario 
WHERE Departamento = 'Vendas';

-- Seleciona funcionários com salário maior que 5000
SELECT * 
FROM TabelaFuncionario 
WHERE Salario_funcionario > 5000;

-- Seleciona os departamentos distintos
SELECT DISTINCT Departamento 
FROM TabelaFuncionario;

/* ======================
   DML - Atualização e exclusão
   ====================== */

-- Atualiza o salário dos funcionários do TI para 7500
UPDATE TabelaFuncionario 
SET Salario_funcionario = 7500 
WHERE Departamento = 'TI';

-- Remove funcionários com salário menor que 4000
DELETE FROM TabelaFuncionario 
WHERE Salario_funcionario < 4000;

-- Seleciona funcionários de Vendas com salário >= 6000
SELECT Nome_funcionario, Salario_funcionario 
FROM TabelaFuncionario  
WHERE Departamento = 'Vendas' 
AND Salario_funcionario >= 6000;

/* ======================
   Inserção e consulta de projetos
   ====================== */

-- Inserção dos projetos
INSERT INTO TabelaProjetos (
    Nome_Projeto,
    fk_Funcionario
)
VALUES
('Projeto-Minha-Casa', 2),
('Projeto-Automação_de_IA', 3),
('Projeto-Agentes_de_IA', 4);

-- Seleciona projetos cujo gerente é o funcionário de ID 2
SELECT * 
FROM TabelaProjetos 
WHERE fk_Funcionario = 2;

/* ======================
   Remoção da tabela
   ====================== */

-- Remove a tabela de funcionários (atenção à dependência da FK)
DROP TABLE TabelaProjetos;
DROP TABLE 
TabelaFuncionario;
