--Ex01

SELECT * FROM TabelaColaboradores;

SELECT nomecolaborador, salario, id_departamento FROM TabelaColaboradores
WHERE salario > 4500 and id_departamento = 'D03';


--Ex02

SELECT * FROM TabelaClientes LIMIT 1;

SELECT nome, datanascimento, estado FROM TabelaClientes
WHERE datanascimento < '1990-01-01' or estado =  'SP';

--Ex03

SELECT * FROM TabelaEmprestimo;

SELECT id_emprestimo, datainicio, tipo, valor FROM TabelaEmprestimo
WHERE datainicio BETWEEN '2023-01-01' AND '2023-03-31'
ORDER by valor desc;

--Ex04

SELECT * FROM TabelaClientes;

SELECT nome, datanascimento, cpf
FROM TabelaClientes
WHERE CAST(strftime('%Y','now') AS INTEGER) - CAST(strftime('%Y', datanascimento) AS INTEGER) >= 18;

--Ex05

SELECT * FROM TabelaEmprestimo;

SELECT id_emprestimo, tipo, valor FROM TabelaEmprestimo
WHERE tipo in ('Pessoal', 'Imobiliário')
ORDER by valor DESC;

--Ex06

SELECT * FROM TabelaEmprestimo;

SELECT id_emprestimo, tipo, valor FROM TabelaEmprestimo
WHERE tipo in ('Automóvel', 'Consignado') and valor BETWEEN 10000 AND 50000;

--Ex07

SELECT * FROM TabelaClientes;

SELECT DISTINCT estado FROM TabelaClientes

--Ex08

SELECT * FROM TabelaClientes;

SELECT nome, cpf, cidade, estado FROM TabelaClientes
WHERE estado = 'RJ' or estado = 'BA' and cpf LIKE '6%';

--Ex09

SELECT * FROM TabelaPagamentos;

SELECT id_pagamento, datapagamento, valor, status FROM TabelaPagamentos
WHERE datapagamento BETWEEN '2023-01-01' and '2023-12-31' and valor BETWEEN 500 and 1000;


--Ex10

SELECT * FROM TabelaScoreCredito;


SELECT id_cliente, pontuacao, fonte FROM TabelaScoreCredito
WHERE pontuacao <= 700;
