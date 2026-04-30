-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/04/2026 às 02:12
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carros`
--

CREATE TABLE `carros` (
  `id_novo` int(11) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `modelo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`id_novo`, `marca`, `placa`, `modelo`) VALUES
(2, 'Chevrolet', 'OAV2Q94', 'Onix'),
(3, 'Chevrolet', 'SKC8F91', 'Cruze'),
(4, 'Chevrolet', 'EUV9C25', 'Tracker'),
(5, 'Volkswagen', 'CNB8E80', 'Gol'),
(6, 'Volkswagen', 'WHQ4A54', 'Polo'),
(7, 'Volkswagen', 'ZJC8V88', 'T-Cross'),
(8, 'Fiat', 'RGG9K28', 'Argo'),
(9, 'Fiat', 'BCO7G81', 'Pulse'),
(10, 'Fiat', 'DEV1F82', 'Cronos'),
(11, 'Hyundai', 'LEY6W86', 'HB20'),
(12, 'Hyundai', 'JOT5T54', 'Creta'),
(13, 'Hyundai', 'CDE7M75', 'Tucson'),
(14, 'Toyota', 'DZH5O67', 'Corolla'),
(15, 'Toyota', 'AGI7P92', 'Hilux'),
(16, 'Toyota', 'LDV5W82', 'RAV4'),
(17, 'Honda', 'QVT9H95', 'Civic'),
(18, 'Honda', 'ZOL5I21', 'HR-V'),
(19, 'Honda', 'XFZ9B82', 'Fit'),
(20, 'Renault', 'QWP2G38', 'Kwid'),
(21, 'Renault', 'KMQ6P63', 'Sandero'),
(22, 'Renault', 'FHW6V51', 'Duster'),
(23, 'Jeep', 'TSQ1U35', 'Renegade'),
(24, 'Jeep', 'GNS7J59', 'Compass'),
(25, 'Jeep', 'XVE8H88', 'Commander'),
(26, 'Ford', 'BEC7F45', 'Ka'),
(27, 'Ford', 'LJC4Q73', 'EcoSport'),
(28, 'Ford', 'QRP7R41', 'Ranger'),
(29, 'Nissan', 'IEI4Y90', 'Kicks'),
(30, 'Nissan', 'BCU2B31', 'Versa'),
(31, 'Nissan', 'DVD3H81', 'Frontier'),
(32, 'Peugeot', 'NZD4G74', '208'),
(33, 'Peugeot', 'VWN2F53', '2008'),
(34, 'Mitsubishi', 'PVL3I69', 'Eclipse Cr'),
(35, 'Kia', 'JKX8J62', 'Sportage'),
(36, 'Kia', 'AAB5Y75', 'Stinger'),
(37, 'BMW', 'MRK0C65', '320i'),
(38, 'Mercedes-Benz', 'EHU8R01', 'C200'),
(39, 'Audi', 'MNS9X35', 'A3'),
(40, 'Volkswagen', 'LJY2D86', 'Virtus'),
(41, 'Chevrolet', 'VIN9L83', 'S10'),
(42, 'Fiat', 'OII2U64', 'Strada'),
(43, 'Toyota', 'BEY6T57', 'Yaris'),
(44, 'Honda', 'HJD0V55', 'City'),
(45, 'Hyundai', 'VTA8P22', 'i30'),
(46, 'Volkswagen', 'FMT4V89', 'Nivus'),
(47, 'Fiat', 'VSL2T81', 'Toro'),
(48, 'Jeep', 'PIF1D46', 'Grand Cher'),
(49, 'Chevrolet', 'ZUB3N04', 'Spin'),
(50, 'Ford', 'PVI2M98', 'Territory'),
(51, 'Renault', 'CBQ3K18', 'Captur');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(11) NOT NULL,
  `peca` varchar(50) DEFAULT NULL,
  `quantidade` varchar(50) DEFAULT NULL,
  `matricula_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`id`, `peca`, `quantidade`, `matricula_funcionario`) VALUES
(1, 'Filtro de óleo', '25 unidades', 31),
(2, 'Pastilha de freio dianteira', '18 unidades', 32),
(3, 'Correia dentada', '12 unidades', 33),
(4, 'Bateria automotiva 60Ah', '10 unidades', 34),
(5, 'Vela de ignição', '40 unidades', 35),
(6, 'Amortecedor dianteiro', '8 unidades', 36),
(7, 'Óleo de motor 5W30', '30 unidades', 37),
(8, 'Filtro de ar', '22 unidades', 38),
(9, 'Lâmpada farol H7', '35 unidades', 39),
(10, 'Pneu aro 15', '16 unidades', 40);

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiro`
--

CREATE TABLE `financeiro` (
  `id` int(11) NOT NULL,
  `valor_serivico` double(10,2) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `id_servico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `financeiro`
--

INSERT INTO `financeiro` (`id`, `valor_serivico`, `descricao`, `id_servico`) VALUES
(1, 180.00, 'Pagamento referente à troca de óleo e filtro', 22),
(2, 120.00, 'Pagamento referente ao alinhamento e balanceamento', 22),
(3, 350.00, 'Pagamento referente à troca das pastilhas de freio', 23),
(4, 250.00, 'Pagamento referente à revisão do sistema elétrico', 20),
(5, 780.00, 'Pagamento referente à troca da correia dentada', 25),
(6, 300.00, 'Pagamento referente à manutenção do ar-condicionado', 26),
(7, 420.00, 'Pagamento referente à substituição da bateria', 22),
(8, 650.00, 'Pagamento referente ao reparo da suspensão dianteira', 24),
(9, 150.00, 'Pagamento referente ao diagnóstico eletrônico', 22),
(10, 500.00, 'Pagamento referente à troca de velas e limpeza dos bicos', 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `matricula` int(11) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `endereco` varchar(450) DEFAULT NULL,
  `servico_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`matricula`, `cpf`, `endereco`, `servico_id`) VALUES
(31, '1234567890', 'Rua das Palmeiras, 120 - Centro', 18),
(32, '2345678901', 'Avenida Brasil, 450 - Bairro São José', 12),
(33, '3456789012', 'Rua Santa Catarina, 89 - Vila Nova', 13),
(34, '4567890124', 'Rua João de Souza, 300 - Centro', 14),
(35, '5678901235', 'Avenida das Flores, 750 - Jardim América', 15),
(36, '6789012346', 'Rua Pedro Álvares Cabral, 155 - Bela Vista', 16),
(37, '7890123467', 'Rua XV de Novembro, 980 - Centro', 17),
(38, '8901234678', 'Avenida Independência, 210 - São Cristóvão', 18),
(39, '9012345689', 'Rua Machado de Assis, 64 - Santa Tereza', 19),
(40, '0123456790', 'Rua Tiradentes, 500 - Nossa Senhora Aparecida', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id_novo` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `idade` bigint(3) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id_novo`, `nome`, `cpf`, `idade`, `genero`) VALUES
(2, 'Ana Silva', '813.720.634-55', 66, 'Feminino'),
(3, 'Bruno Souza', '702.745.893-46', 46, 'Masculino'),
(4, 'Carlos Oliveira', '849.817.634-41', 46, 'Masculino'),
(5, 'Daniela Santos', '423.299.088-73', 33, 'Feminino'),
(6, 'Eduardo Lima', '398.969.287-97', 42, 'Masculino'),
(7, 'Fernanda Costa', '577.021.607-72', 44, 'Feminino'),
(8, 'Gabriel Pereira', '838.989.947-75', 36, 'Masculino'),
(9, 'Helena Martins', '133.487.387-92', 44, 'Feminino'),
(10, 'Igor Alves', '288.846.525-61', 21, 'Masculino'),
(11, 'Juliana Rocha', '287.059.102-00', 18, 'Feminino'),
(12, 'Kevin Fernandes', '172.811.344-01', 30, 'Masculino'),
(13, 'Larissa Gomes', '435.129.577-57', 69, 'Feminino'),
(14, 'Marcos Ribeiro', '017.847.573-49', 33, 'Masculino'),
(15, 'Natalia Carvalho', '575.946.441-82', 27, 'Feminino'),
(16, 'Otávio Mendes', '824.527.442-98', 28, 'Masculino'),
(17, 'Patricia Araujo', '079.920.925-20', 18, 'Feminino'),
(18, 'Rafael Teixeira', '913.433.701-67', 63, 'Masculino'),
(19, 'Sabrina Lopes', '841.514.275-70', 61, 'Feminino'),
(20, 'Thiago Barros', '998.709.593-34', 64, 'Masculino'),
(21, 'Vanessa Pinto', '584.547.947-94', 57, 'Feminino'),
(22, 'André Nascimento', '372.410.424-33', 56, 'Masculino'),
(23, 'Beatriz Cardoso', '463.558.839-40', 46, 'Feminino'),
(24, 'César Moreira', '528.914.971-63', 37, 'Masculino'),
(25, 'Diana Freitas', '694.369.012-40', 55, 'Feminino'),
(26, 'Emilio Castro', '775.997.375-61', 32, 'Masculino'),
(27, 'Fabiana Melo', '765.334.620-08', 40, 'Feminino'),
(28, 'Gustavo Nunes', '079.924.548-80', 33, 'Masculino'),
(29, 'Helena Vieira', '302.959.493-92', 35, 'Feminino'),
(30, 'Ivan Correia', '547.745.619-16', 55, 'Masculino'),
(31, 'Jéssica Monteiro', '356.469.929-58', 33, 'Feminino'),
(32, 'Leonardo Farias', '445.507.684-01', 46, 'Masculino'),
(33, 'Mariana Borges', '035.376.953-30', 56, 'Feminino'),
(34, 'Nathalia Ramos', '720.763.100-61', 62, 'Feminino'),
(35, 'Otávio Cunha', '745.382.271-88', 50, 'Masculino'),
(36, 'Paula Dias', '051.741.024-90', 57, 'Feminino'),
(37, 'Renato Machado', '344.968.801-48', 56, 'Masculino'),
(38, 'Simone Azevedo', '834.328.106-36', 38, 'Feminino'),
(39, 'Tiago Cavalcanti', '385.141.781-05', 43, 'Masculino'),
(40, 'Ursula Ferreira', '991.631.222-27', 31, 'Feminino'),
(41, 'Vitor Campos', '048.197.318-40', 20, 'Masculino'),
(42, 'Amanda Braga', '039.169.565-74', 18, 'Feminino'),
(43, 'Breno Marques', '492.699.432-16', 36, 'Masculino'),
(44, 'Camila Paiva', '173.023.845-92', 37, 'Feminino'),
(45, 'Diego Bastos', '800.792.284-96', 47, 'Masculino'),
(46, 'Elaine Godoy', '758.595.278-37', 31, 'Feminino'),
(47, 'Felipe Andrade', '243.972.956-62', 52, 'Masculino'),
(48, 'Giovana Vasconcelos', '855.873.226-45', 69, 'Feminino'),
(49, 'Henrique Soares', '634.837.339-81', 39, 'Masculino'),
(50, 'Isadora Leite', '812.138.657-86', 50, 'Feminino'),
(51, 'João Batista', '473.703.874-10', 48, 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `mecanico_encarregado` varchar(45) DEFAULT NULL,
  `descricao_servico` varchar(300) DEFAULT NULL,
  `id_carro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`id_servico`, `mecanico_encarregado`, `descricao_servico`, `id_carro`) VALUES
(11, 'Carlos Henrique', 'Troca de óleo do motor e filtro de óleo', 6),
(12, 'João Pedro', 'Alinhamento e balanceamento das rodas', 2),
(13, 'Marcos Antônio', 'Substituição das pastilhas de freio dianteiras', 3),
(14, 'Rafael Lima', 'Revisão completa do sistema elétrico', 4),
(15, 'Fernando Souza', 'Troca da correia dentada e tensionador', 5),
(16, 'Lucas Martins', 'Manutenção preventiva do sistema de ar-condicionado', 6),
(17, 'Paulo Roberto', 'Substituição da bateria do veículo', 7),
(18, 'André Luiz', 'Reparo no sistema de suspensão dianteira', 8),
(19, 'Bruno Carvalho', 'Diagnóstico eletrônico com scanner automotivo', 9),
(20, 'Eduardo Mendes', 'Troca de velas de ignição e limpeza dos bicos injetores', 10),
(21, 'Carlos Henrique', 'Troca de óleo do motor e filtro de óleo', 11),
(22, 'João Pedro', 'Alinhamento e balanceamento das rodas', 15),
(23, 'Marcos Antônio', 'Substituição das pastilhas de freio dianteiras', 12),
(24, 'Rafael Lima', 'Revisão completa do sistema elétrico', 4),
(25, 'Fernando Souza', 'Troca da correia dentada e tensionador', 5),
(26, 'Lucas Martins', 'Manutenção preventiva do sistema de ar-condicionado', 20),
(27, 'Paulo Roberto', 'Substituição da bateria do veículo', 17),
(28, 'André Luiz', 'Reparo no sistema de suspensão dianteira', 18),
(29, 'Bruno Carvalho', 'Diagnóstico eletrônico com scanner automotivo', 19),
(30, 'Eduardo Mendes', 'Troca de velas de ignição e limpeza dos bicos injetores', 13),
(31, 'João', 'Troca de oleo', NULL),
(32, 'João', 'Troca de oleo', NULL),
(33, 'João', 'Troca de oleo', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id_novo`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula_funcionario` (`matricula_funcionario`);

--
-- Índices de tabela `financeiro`
--
ALTER TABLE `financeiro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_servico` (`id_servico`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `servico_id` (`servico_id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id_novo`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`),
  ADD KEY `id_carro` (`id_carro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `financeiro`
--
ALTER TABLE `financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`matricula_funcionario`) REFERENCES `funcionarios` (`matricula`);

--
-- Restrições para tabelas `financeiro`
--
ALTER TABLE `financeiro`
  ADD CONSTRAINT `financeiro_ibfk_1` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Restrições para tabelas `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`servico_id`) REFERENCES `servico` (`id_servico`);

--
-- Restrições para tabelas `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`id_carro`) REFERENCES `carros` (`id_novo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
