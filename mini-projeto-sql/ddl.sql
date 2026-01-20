CREATE DATABASE Mini_Projeto;

USE Mini_Projeto;



CREATE TABLE `tabelafuncionario` (
  `Id_Funcionario` int(11) NOT NULL,
  `Nome_funcionario` varchar(100) DEFAULT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `Salario_funcionario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tabelaprojetos` (
  `Id_Projeto` int(11) NOT NULL,
  `Nome_Projeto` varchar(100) DEFAULT NULL,
  `fk_Funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;