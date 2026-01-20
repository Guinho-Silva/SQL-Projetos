
-- Inserção dos funcionários

INSERT INTO `tabelafuncionario` (`Id_Funcionario`, `Nome_funcionario`, `Departamento`, `Salario_funcionario`) VALUES
(1, 'Heitor Vieira', 'Financeiro', 4959.22),
(3, 'Luiza Dias', 'TI', 7500.00),
(4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
(5, 'Pietro Cavalcanti', 'TI', 7500.00),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
(9, 'Brenda Cardoso', 'TI', 7500.00),
(10, 'Danilo Souza', 'TI', 7500.00);

-- Atualiza o salário dos funcionários do TI para 7500

UPDATE TabelaFuncionario 
SET Salario_funcionario = 7500 
WHERE Departamento = 'TI';

-- Remove funcionários com salário menor que 4000
DELETE FROM TabelaFuncionario 
WHERE Salario_funcionario < 4000;

-- Inserção dos projetos
INSERT INTO TabelaProjetos (
    Id_Projeto,
    Nome_Projeto,
    fk_Funcionario
)
VALUES
(1, 'Projeto-Minha-Casa', 4),
(2, 'Projeto-Automação_de_IA', 3),
(3, 'Projeto-Agentes_de_IA', 4);


