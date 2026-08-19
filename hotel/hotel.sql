-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2026 às 22:33
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `cliente`, `email`, `cpf`) VALUES
(6, 'Matheus Molon', 'cintia@email.com', '123.456.789-42'),
(7, 'Kaique Carmo', 'kaique@email.com', '456.456.789-42'),
(8, 'Pedro Sachetto', 'sachetto67@email.com', '676.676.676-67'),
(9, 'Lucas Ferreira', 'lucas@email.com', '345.456.891-97'),
(10, 'Nerd Raphael', 'nerd6767@email.com', '456.356.559-33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `codhospedagem` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date DEFAULT NULL,
  `horaentrada` time NOT NULL,
  `horasaida` time DEFAULT NULL,
  `Totalhospedagem` decimal(7,2) NOT NULL,
  `codcli` int(11) DEFAULT NULL,
  `codquart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `hospedagem`
--

INSERT INTO `hospedagem` (`codhospedagem`, `dataentrada`, `datasaida`, `horaentrada`, `horasaida`, `Totalhospedagem`, `codcli`, `codquart`) VALUES
(1, '2026-08-01', NULL, '00:53:36', NULL, '138.00', 6, 13),
(2, '2026-08-01', NULL, '00:54:36', NULL, '69.00', 7, 25),
(3, '2026-08-02', NULL, '05:54:56', NULL, '39.00', 9, 14),
(4, '2026-08-03', NULL, '12:55:11', NULL, '10.50', 10, 26),
(5, '2026-08-04', NULL, '13:55:28', NULL, '10.50', 8, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quarto`
--

CREATE TABLE `quarto` (
  `codquarto` int(11) NOT NULL,
  `quarto` varchar(255) NOT NULL,
  `andar` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `quarto`
--

INSERT INTO `quarto` (`codquarto`, `quarto`, `andar`, `tipo`, `status`) VALUES
(13, '11', '1º Andar', 'Individual', 1),
(14, '12', '1º Andar', 'Casal', 0),
(15, '13', '1º Andar', 'Familia + Cama Solteiro', 0),
(16, '14', '1º Andar', 'Familia + 2 camas solteiro', 0),
(17, '21', '2º Andar', 'Familia + Cama Solteiro', 0),
(18, '22', '2º Andar', 'Familia + 2 Camas Solteiro', 0),
(19, '23', '2º Andar', 'Mega Familia', 0),
(20, '24', '2º Andar', 'Suite Presidencial', 0),
(21, '31', '3º Andar', 'Familia + Cama Solteiro', 0),
(22, '32', '3º Andar', 'Familia + Cama Solteiro', 0),
(23, '33', '3º Andar', 'Mega Familia', 0),
(24, '34', '3º Andar', 'Suite Presidencial', 0),
(25, '11', '1º Andar', 'Individual', 0),
(26, '12', '1º Andar', 'Casal', 0),
(27, '13', '1º Andar', 'Familia + Cama Solteiro', 0),
(28, '14', '1º Andar', 'Familia + 2 camas solteiro', 0),
(29, '21', '2º Andar', 'Familia + Cama Solteiro', 0),
(30, '22', '2º Andar', 'Familia + 2 Camas Solteiro', 0),
(31, '23', '2º Andar', 'Mega Familia', 0),
(32, '24', '2º Andar', 'Suite Presidencial', 0),
(33, '31', '3º Andar', 'Familia + Cama Solteiro', 0),
(34, '32', '3º Andar', 'Familia + Cama Solteiro', 0),
(35, '33', '3º Andar', 'Mega Familia', 0),
(36, '34', '3º Andar', 'Suite Presidencial', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`, `qtde`, `tipo`) VALUES
(1, 'Coca Cola Lata', '5.00', 0, 'Bebida'),
(2, 'Coca Cola 2L', '20.00', 0, 'Bebida'),
(3, 'Coca Cola 600', '8.00', 0, 'Bebida'),
(4, 'Cerveja Lata - Skol', '10.50', 0, 'Bebida'),
(5, 'Cerveja Lata - Amstel', '12.90', 0, 'Bebida'),
(6, 'Cerveja Lata - Amstel Ultra', '15.00', 0, 'Bebida'),
(7, 'Porção Fritas Pequena', '25.00', 0, 'Entrada'),
(8, 'Porção Fritas Média', '35.00', 0, 'Entrada'),
(9, 'Porção Fritas Grande', '55.00', 0, 'Entrada'),
(11, 'Massagem Completa', '200.00', 0, 'Cuidados Estéticos'),
(12, 'Almoço - Buffet Completo', '69.00', 0, 'Alimentação'),
(13, 'Jantar - Buffet Completo', '69.00', 0, 'Alimentação'),
(14, 'Café da Manhã- Buffet Completo', '39.00', 0, 'Alimentação'),
(15, 'Coca Cola Lata', '5.00', 0, 'Bebida'),
(16, 'Coca Cola 2L', '20.00', 0, 'Bebida'),
(17, 'Coca Cola 600', '8.00', 0, 'Bebida'),
(18, 'Cerveja Lata - Skol', '10.50', 0, 'Bebida'),
(19, 'Cerveja Lata - Amstel', '12.90', 0, 'Bebida'),
(20, 'Cerveja Lata - Amstel Ultra', '15.00', 0, 'Bebida'),
(21, 'Porção Fritas Pequena', '25.00', 0, 'Entrada'),
(22, 'Porção Fritas Média', '35.00', 0, 'Entrada'),
(23, 'Porção Fritas Grande', '55.00', 0, 'Entrada'),
(24, 'Massagem Simples', '100.00', 0, 'Cuidados Estéticos'),
(25, 'Massagem Completa', '200.00', 0, 'Cuidados Estéticos'),
(26, 'Almoço - Buffet Completo', '69.00', 0, 'Alimentação'),
(27, 'Jantar - Buffet Completo', '69.00', 0, 'Alimentação'),
(28, 'Café da Manhã- Buffet Completo', '39.00', 0, 'Alimentação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicoshospedagem`
--

CREATE TABLE `servicoshospedagem` (
  `codhospedagem` int(11) DEFAULT NULL,
  `codservico` int(11) DEFAULT NULL,
  `datacompra` date NOT NULL,
  `horacompra` time NOT NULL,
  `TotalServico` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servicoshospedagem`
--

INSERT INTO `servicoshospedagem` (`codhospedagem`, `codservico`, `datacompra`, `horacompra`, `TotalServico`) VALUES
(1, 12, '2026-08-09', '10:56:07', NULL),
(2, 26, '2026-08-12', '23:56:28', NULL),
(3, 28, '2026-08-20', '23:56:28', NULL),
(4, 18, '0000-00-00', '00:00:00', NULL),
(5, 4, '2026-08-20', '15:57:12', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`codhospedagem`),
  ADD KEY `codcli` (`codcli`),
  ADD KEY `codquart` (`codquart`);

--
-- Índices para tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`codquarto`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`);

--
-- Índices para tabela `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD KEY `codhospedagem` (`codhospedagem`),
  ADD KEY `codservico` (`codservico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `codhospedagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `quarto`
--
ALTER TABLE `quarto`
  MODIFY `codquarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`codquart`) REFERENCES `quarto` (`codquarto`);

--
-- Limitadores para a tabela `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD CONSTRAINT `servicoshospedagem_ibfk_1` FOREIGN KEY (`codhospedagem`) REFERENCES `hospedagem` (`codhospedagem`),
  ADD CONSTRAINT `servicoshospedagem_ibfk_2` FOREIGN KEY (`codservico`) REFERENCES `servico` (`codservico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
