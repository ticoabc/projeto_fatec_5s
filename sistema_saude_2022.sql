-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Fev-2022 às 15:25
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_saude_2022`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alta`
--

DROP TABLE IF EXISTS `alta`;
CREATE TABLE IF NOT EXISTS `alta` (
  `codigo_alta` char(6) NOT NULL,
  `hospital` char(2) NOT NULL,
  `enfermaria` char(2) NOT NULL,
  `especialidade` char(2) NOT NULL,
  `reg_pac` char(6) NOT NULL,
  `sexo` char(1) NOT NULL,
  `idade_int` char(4) NOT NULL,
  `ocupacao` char(5) NOT NULL,
  `cat_int` char(1) NOT NULL,
  `data_inter` date NOT NULL,
  `data_saida` date NOT NULL,
  `afeccao_1` varchar(5) NOT NULL,
  `afeccao_2` varchar(5) NOT NULL,
  `afeccao_3` varchar(5) NOT NULL,
  `afeccao_4` varchar(5) NOT NULL,
  `afeccao_5` varchar(5) NOT NULL,
  `data_opera` date NOT NULL,
  `operacao_1` varchar(4) NOT NULL,
  `seq_oper1` char(2) NOT NULL,
  `operacao_2` varchar(4) NOT NULL,
  `seq_oper2` char(2) NOT NULL,
  `operacao_3` varchar(4) NOT NULL,
  `seq_oper3` char(2) NOT NULL,
  `recuperacao` varchar(4) NOT NULL,
  `seq_recuper` char(2) NOT NULL,
  `ac_env_vio` varchar(5) NOT NULL,
  `compl_hosp` varchar(5) NOT NULL,
  `cremesp` char(6) NOT NULL,
  `cond_saida` char(1) NOT NULL,
  `procsus` char(10) NOT NULL,
  `iniciais` varchar(8) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cod_mnibge` char(6) NOT NULL,
  `sig_uf` char(2) NOT NULL,
  KEY `hospital` (`hospital`),
  KEY `enfermaria` (`enfermaria`),
  KEY `ocupacao` (`ocupacao`),
  KEY `cat_int` (`cat_int`),
  KEY `especialidade` (`especialidade`),
  KEY `cond_saida` (`cond_saida`),
  KEY `procsus` (`procsus`),
  KEY `cod_mnibge` (`cod_mnibge`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `catint`
--

DROP TABLE IF EXISTS `catint`;
CREATE TABLE IF NOT EXISTS `catint` (
  `cod_cat` char(1) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `catint` varchar(40) NOT NULL,
  `codigo` char(3) NOT NULL,
  PRIMARY KEY (`cod_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cid10`
--

DROP TABLE IF EXISTS `cid10`;
CREATE TABLE IF NOT EXISTS `cid10` (
  `cid10` varchar(5) NOT NULL,
  `descricao` varchar(44) NOT NULL,
  `cat` char(1) NOT NULL,
  `subcat` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cod_ocup`
--

DROP TABLE IF EXISTS `cod_ocup`;
CREATE TABLE IF NOT EXISTS `cod_ocup` (
  `codigo` char(5) NOT NULL,
  `descricao` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `condsaida`
--

DROP TABLE IF EXISTS `condsaida`;
CREATE TABLE IF NOT EXISTS `condsaida` (
  `codigo` char(1) NOT NULL,
  `condsaida` varchar(14) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enferma`
--

DROP TABLE IF EXISTS `enferma`;
CREATE TABLE IF NOT EXISTS `enferma` (
  `hospital` char(2) NOT NULL,
  `enfermaria` varchar(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `leitos` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especial`
--

DROP TABLE IF EXISTS `especial`;
CREATE TABLE IF NOT EXISTS `especial` (
  `codigo` char(2) NOT NULL,
  `especialidade` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `codigo` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hospital` varchar(70) NOT NULL,
  `descricao` varchar(30) NOT NULL,
  `cidade` varchar(21) NOT NULL,
  `codigo2` char(3) NOT NULL,
  `codigo3` char(6) NOT NULL,
  `enfermaria` varchar(100) NOT NULL,
  `cod_hosp` char(7) NOT NULL,
  `cod_suds` char(2) NOT NULL,
  `tipo_hosp` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `munic`
--

DROP TABLE IF EXISTS `munic`;
CREATE TABLE IF NOT EXISTS `munic` (
  `cod_mnibge` char(6) NOT NULL,
  `cod_uf` char(2) NOT NULL,
  `sig_uf` char(2) NOT NULL,
  `nom_mnibge` varchar(50) NOT NULL,
  `cod_mncpdh` char(3) NOT NULL,
  `dsc_mncpdh` varchar(25) NOT NULL,
  `cod_dir` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `procsus`
--

DROP TABLE IF EXISTS `procsus`;
CREATE TABLE IF NOT EXISTS `procsus` (
  `cod_psus` char(10) NOT NULL,
  `dsc_p_sus` varchar(150) NOT NULL,
  `sexo` char(1) NOT NULL,
  `idade_min` char(4) NOT NULL,
  `idade_max` char(4) NOT NULL,
  PRIMARY KEY (`cod_psus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proc_cir`
--

DROP TABLE IF EXISTS `proc_cir`;
CREATE TABLE IF NOT EXISTS `proc_cir` (
  `cod_oper` char(4) NOT NULL,
  `seq_oper` char(2) NOT NULL,
  `dsc_oper` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
