-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Nov-2018 às 15:00
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gui`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_aluno`
--

CREATE TABLE `tb_aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `escolaridade` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `turno` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disciplina` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cep` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cidades`
--

CREATE TABLE `tb_cidades` (
  `id_cidade` int(11) NOT NULL,
  `cidade` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` enum('m','c') COLLATE utf8_unicode_ci DEFAULT 'm',
  `cid_id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_cidades`
--

INSERT INTO `tb_cidades` (`id_cidade`, `cidade`, `capital`, `cid_id_estado`) VALUES
(1, 'Capixaba', 'm', 1),
(2, 'Rio Branco', 'c', 1),
(3, 'Jordão', 'm', 1),
(4, 'Maceió', 'c', 2),
(5, 'Belo Monte', 'm', 2),
(6, 'Capela', 'm', 2),
(7, 'Craibras', 'm', 2),
(8, 'Salvados', 'c', 3),
(9, 'Anguera', 'm', 3),
(10, 'Barra', 'm', 3),
(11, 'Boa Nova', 'm', 3),
(12, 'Caculé', 'm', 3),
(13, 'Glória', 'm', 3),
(14, 'Goiânia', 'c', 4),
(15, 'Bonópolis', 'm', 4),
(16, 'Caçu', 'm', 4),
(17, 'Formoso', 'm', 4),
(18, 'Campo Grande', 'c', 5),
(19, 'Bonito', 'm', 5),
(20, 'Corguinho', 'm', 5),
(21, 'Dourados', 'm', 5),
(22, 'Curitiba', 'c', 6),
(23, 'Paranavaí', 'm', 6),
(24, 'Maringá', 'm', 6),
(25, 'Londrina', 'm', 6),
(26, 'Tambuara', 'm', 6),
(27, 'Paraiso do Norte', 'm', 6),
(28, 'Terra Rica', 'm', 6),
(29, 'Loanda', 'm', 6),
(30, 'Florianópolis', 'c', 7),
(31, 'Anotnio Carlos', 'm', 7),
(32, 'Águas Mornas', 'm', 7),
(33, 'Belmonte', 'm', 7),
(34, 'Brusque', 'm', 7),
(35, 'Camboriú', 'm', 7),
(36, 'São Paulo', 'c', 8),
(37, 'Altair', 'm', 8),
(38, 'Aparecida', 'm', 8),
(39, 'Bauru', 'm', 8),
(40, 'Campos do Jordão', 'm', 8),
(41, 'Dracena', 'm', 8),
(42, 'Palmas', 'c', 9),
(43, 'Ananás', 'm', 9),
(44, 'Arraias', 'm', 9),
(45, 'Gurupi', 'm', 9),
(46, 'Sucupira', 'm', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` enum('F','M') COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `motoatual` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `motoantiga` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipoprojeto` enum('caseiro','encomenda') COLLATE utf8_unicode_ci NOT NULL,
  `estilo` enum('Cafe','street','bratstyle','bobber','scrambler') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nome`, `data_nasc`, `email`, `celular`, `sexo`, `cidade`, `motoatual`, `motoantiga`, `tipoprojeto`, `estilo`) VALUES
(2, 'GUI', '1996-11-04', 'guicarlosjoinhas@gmail.com', '4499249494', 'M', 'Alto Parana', 'fan', 'motoka', 'caseiro', 'bratstyle'),
(4, 'MARIA JOAQUINA', '1992-02-03', 'djfaosdjifjoasdjo', '5656', 'F', 'maringa', 'tantofaz', 'tanto faz 2', 'encomenda', 'street'),
(6, 'FSDAFASD', '1111-04-15', 'ewqgsdf@gmail.com', '48488448', 'F', 'sdas', 'fsdfa', 'sdfdsfsd', 'caseiro', 'Cafe'),
(7, 'WELLINGTON', '1111-04-15', 'ewqgsdf@gmail.com', '48488448', 'M', 'Alto parana', 'dfasdf', 'dsfasdfsd', 'caseiro', 'street');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_estados`
--

CREATE TABLE `tb_estados` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sigla` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regiao` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_estados`
--

INSERT INTO `tb_estados` (`id_estado`, `estado`, `sigla`, `regiao`) VALUES
(1, 'Acre', 'AC', 'Norte'),
(2, 'Alagoas', 'AL', 'Nordeste'),
(3, 'Bahia', 'BA', 'Nordeste'),
(4, 'Goiás', 'GO', 'Centro-Oeste'),
(5, 'Mato Grosso do Sul', 'MS', 'Centro-Oeste'),
(6, 'Paraná', 'PR', 'Sul'),
(7, 'Santa Catarina', 'SC', 'Sul'),
(8, 'São Paulo', 'SP', 'Sudeste'),
(9, 'Tocantins', 'TO', 'Norte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_marca`
--

CREATE TABLE `tb_marca` (
  `id_marca` int(11) NOT NULL,
  `fabricante` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria` enum('c','p','u') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_marca`
--

INSERT INTO `tb_marca` (`id_marca`, `fabricante`, `categoria`) VALUES
(1, 'volkswagem', 'p'),
(2, 'volvo', 'c'),
(3, 'chevrolet', 'p'),
(4, 'toyota', 'u'),
(5, 'fiat', 'p');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_veiculo`
--

CREATE TABLE `tb_veiculo` (
  `id_veiculo` int(11) NOT NULL,
  `modelo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ano` int(5) DEFAULT NULL,
  `cor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portas` int(2) DEFAULT NULL,
  `combustivel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` decimal(15,0) DEFAULT NULL,
  `mod_id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_veiculo`
--

INSERT INTO `tb_veiculo` (`id_veiculo`, `modelo`, `ano`, `cor`, `portas`, `combustivel`, `valor`, `mod_id_marca`) VALUES
(1, 'Celta', 2004, 'preto', 2, 'gasolina', '13000', 3),
(2, 'Gol', 1996, 'branco', 2, 'alcool', '6000', 1),
(3, 'Santana', 1981, 'dourado', 4, 'gasolina', '7000', 3),
(4, 'VolvoFm', 2004, 'preto', 2, 'diesel', '50000', 2),
(5, 'Hilux', 2018, 'branco', 4, 'diesel', '115000', 4),
(6, 'Up', 2017, 'azul', 4, 'gasolina', '30000', 1),
(7, 'Toro', 2018, 'vinho', 4, 'diesel', '130000', 5),
(8, 'Uno', 2007, 'prata', 2, 'gasolina', '10000', 5),
(9, 'Cruze', 2014, 'preto', 4, 'alcool', '50000', 3),
(10, 'Fiorino', 1996, 'branca', 2, 'alcool', '12000', 5),
(11, 'Onix', 2015, 'preto', 4, 'gasolina', '40000', 3),
(12, 'Voyage', 2004, 'preto', 4, 'alcool', '13000', 1),
(13, 'Corsa', 2004, 'preto', 2, 'gasolina', '13000', 3),
(14, 'Montana', 2014, 'branca', 2, 'gasolina', '45000', 3),
(15, 'Saveiro', 2001, 'prata', 2, 'alcool', '13000', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`) VALUES
(3, 'gui', 'gui', 'e55a09c160c17adafdcf1493dee65401'),
(4, '7', 'gui2', 'e55a09c160c17adafdcf1493dee65401'),
(5, 'Jose', 'j1', 'e55a09c160c17adafdcf1493dee65401'),
(6, '2', 'j2', 'e55a09c160c17adafdcf1493dee65401'),
(7, 'g', 'j12', '03c7c0ace395d80182db07ae2c30f034'),
(8, 'w', 'j1w', 'e55a09c160c17adafdcf1493dee65401'),
(9, 'ssdass', 'j1s', 'e55a09c160c17adafdcf1493dee65401'),
(10, 'wew', 'j1w2', 'e55a09c160c17adafdcf1493dee65401'),
(11, 'wew', 'j1w22', '4ab47e54c2f73ad4c0eb3974709721cd'),
(12, '21', 'j1333', 'e55a09c160c17adafdcf1493dee65401'),
(13, 'eqweeqw', 'j1ewew', 'e55a09c160c17adafdcf1493dee65401'),
(14, 'ewqew', 'j1ewewww', 'e55a09c160c17adafdcf1493dee65401'),
(15, 'sadqw', 'j1wwwwww', 'd41d8cd98f00b204e9800998ecf8427e'),
(16, 'eewqeqwwq', 'j1wwwww', 'd41d8cd98f00b204e9800998ecf8427e'),
(17, 'uuuu', 'j1fdfddddd', 'd41d8cd98f00b204e9800998ecf8427e'),
(18, 'fdsfsd', 'ddddd', 'd41d8cd98f00b204e9800998ecf8427e'),
(19, 'dsadsa', 'j1dddddddddddddd', 'e55a09c160c17adafdcf1493dee65401'),
(20, 'sasdasdasdsa', 'j1ssssssssssss', 'e55a09c160c17adafdcf1493dee65401'),
(21, '2ssdddddddddd', 'j1ddssssssssss', 'd41d8cd98f00b204e9800998ecf8427e'),
(22, 'Ã§llllllllll', 'j1Ã§Ã§Ã§Ã§Ã§Ã§Ã§', 'd41d8cd98f00b204e9800998ecf8427e'),
(23, '2rrrrrrrrrrr', 'j1ttttt', 'd41d8cd98f00b204e9800998ecf8427e'),
(24, '6666666666666', 'j166', 'd41d8cd98f00b204e9800998ecf8427e'),
(25, '0piopop', 'j1op', 'd41d8cd98f00b204e9800998ecf8427e'),
(26, 'eddddd', 'sss', 'd41d8cd98f00b204e9800998ecf8427e'),
(27, 'josue', 'j123', '81dc9bdb52d04dc20036dbd8313ed055'),
(28, 'rtyry', 'guityr', 'd41d8cd98f00b204e9800998ecf8427e'),
(29, 'ytrytr', 'guiy', '923f396d843956c002dfc0df515290ac'),
(30, 'uyu', 'guiu', 'e55a09c160c17adafdcf1493dee65401'),
(31, '8888', 'gui7', 'e55a09c160c17adafdcf1493dee65401'),
(32, 'TG', 'guiT', '0eb2f1f8ddfec8c2f08c501d2a3ddddc'),
(33, 'MM', 'guiK', 'e55a09c160c17adafdcf1493dee65401'),
(34, 'f', 'guid', 'e55a09c160c17adafdcf1493dee65401'),
(35, 'ddd', 'guiw', 'e55a09c160c17adafdcf1493dee65401'),
(36, 'dsds', 'guiwww', 'e55a09c160c17adafdcf1493dee65401'),
(37, 'fsdfdsf', 'guiff', 'e55a09c160c17adafdcf1493dee65401'),
(38, '2222', 'gui2333', 'e55a09c160c17adafdcf1493dee65401'),
(39, 'qwewq', 'gui2222', 'e55a09c160c17adafdcf1493dee65401'),
(40, 'fdsdffsd', 'guidsfsdfsd', 'c83db74518abd8409244787f11b63826'),
(41, 'sasasa', 'guiwweee', 'darck12'),
(42, 'qweqweqweqwe', 'eeeeee', 'darck12'),
(43, '666666666666666666666', 'gui6', 'darck12'),
(44, 'jhjjh', 'guihhh', 'darck12'),
(45, 'ddddddddd', 'guisssssssssssss', 'e55a09c160c17adafdcf1493dee65401'),
(46, 'tytt', 'guiyyy', 'e55a09c160c17adafdcf1493dee65401');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aluno`
--
ALTER TABLE `tb_aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Indexes for table `tb_cidades`
--
ALTER TABLE `tb_cidades`
  ADD PRIMARY KEY (`id_cidade`),
  ADD KEY `cid_id_estado` (`cid_id_estado`);

--
-- Indexes for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `tb_estados`
--
ALTER TABLE `tb_estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indexes for table `tb_marca`
--
ALTER TABLE `tb_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `tb_veiculo`
--
ALTER TABLE `tb_veiculo`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD KEY `mod_id_marca` (`mod_id_marca`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aluno`
--
ALTER TABLE `tb_aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_cidades`
--
ALTER TABLE `tb_cidades`
  MODIFY `id_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_estados`
--
ALTER TABLE `tb_estados`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_marca`
--
ALTER TABLE `tb_marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_veiculo`
--
ALTER TABLE `tb_veiculo`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_cidades`
--
ALTER TABLE `tb_cidades`
  ADD CONSTRAINT `tb_cidades_ibfk_1` FOREIGN KEY (`cid_id_estado`) REFERENCES `tb_estados` (`id_estado`);

--
-- Limitadores para a tabela `tb_veiculo`
--
ALTER TABLE `tb_veiculo`
  ADD CONSTRAINT `tb_veiculo_ibfk_1` FOREIGN KEY (`mod_id_marca`) REFERENCES `tb_marca` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
