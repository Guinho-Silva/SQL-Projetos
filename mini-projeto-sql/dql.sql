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


-- Seleciona funcionários de Vendas com salário >= 6000
SELECT Nome_funcionario, Salario_funcionario 
FROM TabelaFuncionario  
WHERE Departamento = 'Vendas' 
AND Salario_funcionario >= 6000;

-- Seleciona projetos cujo gerente é o funcionário de ID 2
SELECT * 
FROM TabelaProjetos 
WHERE fk_Funcionario = 2;