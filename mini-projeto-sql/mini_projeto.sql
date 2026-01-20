
--
-- Banco de dados: `mini_projeto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabelafuncionario`
--

CREATE TABLE `tabelafuncionario` (
  `Id_Funcionario` int(11) NOT NULL,
  `Nome_funcionario` varchar(100) DEFAULT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `Salario_funcionario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabelafuncionario`
--

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabelaprojetos`
--

CREATE TABLE `tabelaprojetos` (
  `Id_Projeto` int(11) NOT NULL,
  `Nome_Projeto` varchar(100) DEFAULT NULL,
  `fk_Funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tabelafuncionario`
--
ALTER TABLE `tabelafuncionario`
  ADD PRIMARY KEY (`Id_Funcionario`);

--
-- Índices de tabela `tabelaprojetos`
--
ALTER TABLE `tabelaprojetos`
  ADD PRIMARY KEY (`Id_Projeto`),
  ADD KEY `fk_Funcionario` (`fk_Funcionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tabelafuncionario`
--
ALTER TABLE `tabelafuncionario`
  MODIFY `Id_Funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tabelaprojetos`
--
ALTER TABLE `tabelaprojetos`
  MODIFY `Id_Projeto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tabelaprojetos`
--
ALTER TABLE `tabelaprojetos`
  ADD CONSTRAINT `tabelaprojetos_ibfk_1` FOREIGN KEY (`fk_Funcionario`) REFERENCES `tabelafuncionario` (`Id_Funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
