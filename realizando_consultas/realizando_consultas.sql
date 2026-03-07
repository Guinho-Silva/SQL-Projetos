--Ex01
SELECT * FROM TabelaClientes;

--Ex02

SELECT * FROM TabelaColaboradores;

SELECT  nomecolaborador, Cargo FROM TabelaColaboradores; 

--Ex03

SELECT * FROM TabelaEmprestimo;

SELECT * FROM TabelaEmprestimo WHERE status = 1;

--Ex04

SELECT * FROM TabelaClientes;

SELECT nome, estado FROM TabelaClientes WHERE estado = 'SP';

--Ex05

SELECT * FROM TabelaColaboradores;

SELECT nomecolaborador, salario FROM TabelaColaboradores WHERE salario > 5000;

--Ex06

SELECT * FROM TabelaEmprestimo;

SELECT *  FROM TabelaEmprestimo WHERE valor >= 10000;

--Ex07

SELECT * FROM TabelaColaboradores;

SELECT nomecolaborador, cargo FROM TabelaColaboradores
ORDER by nomecolaborador;

--Ex07

SELECT * FROM TabelaColaboradores;

SELECT * FROM TabelaColaboradores LIMIT 5;

--Ex08

SELECT * FROM TabelaEmprestimo;

SELECT * FROM TabelaEmprestimo ORDER by  valor desc;

--Ex09

SELECT * FROM TabelaColaboradores

SELECT * FROM TabelaColaboradores WHERE salario > 5000
order by id_colaborador 


