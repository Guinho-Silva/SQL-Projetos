--Ex01

SELECT CURRENT_TIMESTAMP AS data_atual;

--EX02

SELECT nome, STRFTIME('%d-%m-%Y',datanascimento)
as Data_formatada FROM TabelaClientes;

--EX03

SELECT * FROM TabelaEmprestimo;

SELECT id_emprestimo, 
       JULIANDAY(DATE(DataInicio, '+' || Prazo || ' days')) - JULIANDAY(DataInicio) AS DiasTotais
FROM TabelaEmprestimo;

--EX04

SELECT nome, datanascimento FROM TabelaClientes;

SELECT nome, STRFTIME('%Y', datanascimento) as Ano_de_nascimento FROM TabelaClientes;

--EX05

SELECT * FROM TabelaEmprestimo;

SELECT * FROM TabelaEmprestimo
WHERE datainicio BETWEEN '2023-01-01' AND '2023-03-31';

--EX06

SELECT * FROM TabelaEmprestimo;

SELECT id_emprestimo, datainicio, 
DATE(DataInicio, '+' || Prazo || ' days')
AS Data_vencimento
FROM TabelaEmprestimo;

--EX07

SELECT * FROM TabelaPagamentos;

SELECT * FROM TabelaPagamentos
ORDER by datapagamento;

--EX08

SELECT * FROM TabelaClientes;

SELECT nome, (STRFTIME('%Y', 'now') - STRFTIME('%Y', datanascimento)) -
(STRFTIME('%m', 'now') < STRFTIME('%m', datanascimento)) AS Idade
FROM TabelaClientes; --Verifica o mes, se ja fez ou não

--EX09

SELECT * from TabelaEmprestimo;

SELECT id_emprestimo, 
       CASE 
           WHEN JULIANDAY(DATE(DataInicio, '+' || Prazo || ' days')) < JULIANDAY('now') THEN 'Vencido'
           ELSE 'No Prazo'
       END AS StatusEmprestimo
FROM TabelaEmprestimo;

--EX10

SELECT * from TabelaEmprestimo;

SELECT id_emprestimo, 
       datainicio, 
       DATE(datainicio, '+30 days') AS ProximoPagamento
FROM TabelaEmprestimo;