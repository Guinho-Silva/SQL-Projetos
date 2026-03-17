--Ex01

SELECT * FROM TabelaClientes;

SELECT UPPER(nome) as nome_maiusculo FROM TabelaClientes;

--Ex02

SELECT * FROM TabelaColaboradores;

SELECT LOWER(nomecolaborador) as nome_minusculo FROM TabelaColaboradores;

--Ex03

SELECT * FROM TabelaClientes;

SELECT CONCAT(SUBSTRING(nome, 1, 3), SUBSTRING(cpf, 1, 3)) 
as codigo_cliente
FROM TabelaClientes;

--Ex04
SELECT * FROM TabelaClientes;

SELECT nome, TRIM(LENGTH(nome)) as comprimento FROM TabelaClientes;

--EX05

SELECT * FROM TabelaColaboradores;

SELECT CONCAT(nomecolaborador, '-', cargo) as nome_completo_cargo FROM TabelaColaboradores;

--Ex06

SELECT * FROM TabelaDepartamento;

SELECT REPLACE(nomedepartamento, 'Recursos Humanos', 'RH') as nome_departamento_atualizado
FROM TabelaDepartamento;

--Ex07

SELECT * FROM TabelaEmprestimo;

SELECT CONCAT(tipo, '- ', status, '-R$', valor) as descricao_emprestimo FROM TabelaEmprestimo;

--Ex08

SELECT * FROM TabelaPagamentos;

SELECT CONCAT(id_pagamento, '-', SUBSTRING(status, 1, 3),CONCAT(id_pagamento))
AS identificador_pagamento
FROM TabelaPagamentos;

--Ex09

SELECT * FROM TabelaScoreCredito;

SELECT id_score, fonte, UPPER(REPLACE(
  REPLACE(fonte, 'Boa Vista', 'Boa'),
  'Serasa', 'Ser'))
  as Fonte_abreviada FROM TabelaScoreCredito;
          
--Ex10

SELECT * FROM TabelaEmprestimo;

SELECT id_emprestimo, TRIM(tipo) as tipo FROM TabelaEmprestimo;

--Ex11






