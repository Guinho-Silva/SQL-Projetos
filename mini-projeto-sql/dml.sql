
-- Inserção dos funcionários

INSERT INTO `tabelafuncionario` (`Nome_funcionario`, `Departamento`, `Salario_funcionario`) VALUES
('Heitor Vieira', 'Financeiro', 4959.22),
('Luiza Dias', 'TI', 7500.00),
('Davi Lucas Moraes', 'Financeiro', 8437.02),
('Pietro Cavalcanti', 'TI', 7500.00),
('Evelyn da Mata', 'Vendas', 5278.88),
('Isabella Rocha', 'Marketing', 4006.03),
('Sra. Manuela Azevedo', 'Vendas', 6101.88),
('Brenda Cardoso', 'TI', 7500.00),
('Danilo Souza', 'TI', 7500.00);

-- Atualiza o salário dos funcionários do TI para 7500

UPDATE TabelaFuncionario 
SET Salario_funcionario = 7500 
WHERE Departamento = 'TI';

-- Remove funcionários com salário menor que 4000
DELETE FROM TabelaFuncionario 
WHERE Salario_funcionario < 4000;

-- Inserção dos projetos
INSERT INTO TabelaProjetos (
    Nome_Projeto,
    fk_Funcionario
)
VALUES
('Projeto-Minha-Casa', 4),
('Projeto-Automação_de_IA', 3),
('Projeto-Agentes_de_IA', 4);


