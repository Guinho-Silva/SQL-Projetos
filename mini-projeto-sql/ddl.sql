CREATE DATABASE Mini_Projeto;

USE Mini_Projeto;



CREATE TABLE `tabelafuncionario` (
  `Id_Funcionario` int PRIMARY KEY AUTOINCREMENT,
  `Nome_funcionario` varchar(100),
  `Departamento` varchar(100),
  `Salario_funcionario` decimal(10,2)
);


CREATE TABLE `tabelaprojetos` (
  `Id_Projeto` int PRIMARY KEY AUTOINCREMENT,
  `Nome_Projeto` varchar(100),
  `fk_Funcionario` int,
  CONSTRAINT fk_funcionario
    FOREIGN KEY(fk_Funcionario)
    REFERENCES tabelafuncionario(Id_Funcionario)
);