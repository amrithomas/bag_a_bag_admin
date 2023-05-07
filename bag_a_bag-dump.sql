-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Maio-2023 às 23:33
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bag_a_bag`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `ID_ADM` int(11) NOT NULL,
  `NOME_ADM` varchar(100) NOT NULL,
  `EMAIL_ADM` varchar(250) NOT NULL,
  `SENHA_ADM` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aeroporto`
--

CREATE TABLE `aeroporto` (
  `ID_AEROPORTO` int(11) NOT NULL,
  `SIGLA` varchar(3) NOT NULL,
  `NOME_AEROPORTO` varchar(200) NOT NULL,
  `PAIS` varchar(100) NOT NULL,
  `CIDADE` varchar(100) NOT NULL,
  `CRIADO` datetime NOT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aeroporto`
--

INSERT INTO `aeroporto` (`ID_AEROPORTO`, `SIGLA`, `NOME_AEROPORTO`, `PAIS`, `CIDADE`, `CRIADO`, `MODIFICADO`) VALUES
(1, 'GRU', 'Aeroporto Internacional de São Paulo - Guarulhos', 'Brasil', 'Guarulhos', '2023-04-29 15:40:12', NULL),
(2, 'CGH', 'Aeroporto de Congonhas', 'Brasil', 'São Paulo', '2023-04-29 15:40:12', NULL),
(3, 'GIG', 'Aeroporto Internacional do Rio de Janeiro - Galeão', 'Brasil', 'Rio de Janeiro', '2023-04-29 15:40:12', NULL),
(4, 'SDU', 'Aeroporto Santos Dumont', 'Brasil', 'Rio de Janeiro', '2023-04-29 15:40:12', NULL),
(5, 'NAT', 'Aeroporto Internacional de Natal', 'Brasil', 'Natal', '2023-04-29 15:40:12', NULL),
(6, 'BPS', 'Aeroporto de Porto Seguro', 'Brasil', 'Porto Seguro', '2023-04-29 15:40:12', NULL),
(7, 'SCL', 'Aeroporto Internacional Comodoro Arturo Merino Benítez', 'Chile', 'Santiago', '2023-04-29 15:40:12', NULL),
(8, 'PUJ', 'Aeroporto Internacional de Punta Cana', 'República Dominicana', 'Punta Cana', '2023-04-29 15:40:12', NULL),
(9, 'CUN', 'Aeroporto Internacional de Cancún', 'México', 'Cancún', '2023-04-29 15:40:12', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `assentos`
--

CREATE TABLE `assentos` (
  `ID_ASSENTO` int(11) NOT NULL,
  `NUMERO_ASSENTO` int(3) NOT NULL,
  `CLASSE` enum('Econômica','Primeira') NOT NULL,
  `FK_AVIAO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `assentos`
--

INSERT INTO `assentos` (`ID_ASSENTO`, `NUMERO_ASSENTO`, `CLASSE`, `FK_AVIAO`) VALUES
(1, 1, 'Primeira', 1),
(2, 2, 'Primeira', 1),
(3, 3, 'Primeira', 1),
(4, 4, 'Primeira', 1),
(5, 5, 'Primeira', 1),
(6, 6, 'Primeira', 1),
(7, 7, 'Primeira', 1),
(8, 8, 'Primeira', 1),
(9, 9, 'Primeira', 1),
(10, 10, 'Primeira', 1),
(11, 11, 'Primeira', 1),
(12, 12, 'Primeira', 1),
(13, 13, 'Primeira', 1),
(14, 14, 'Primeira', 1),
(15, 15, 'Primeira', 1),
(16, 16, 'Primeira', 1),
(17, 17, 'Primeira', 1),
(18, 18, 'Primeira', 1),
(19, 19, 'Primeira', 1),
(20, 20, 'Primeira', 1),
(21, 21, 'Primeira', 1),
(22, 22, 'Primeira', 1),
(23, 23, 'Primeira', 1),
(24, 24, 'Primeira', 1),
(25, 25, 'Primeira', 1),
(26, 26, 'Primeira', 1),
(27, 27, 'Primeira', 1),
(28, 28, 'Primeira', 1),
(29, 29, 'Primeira', 1),
(30, 30, 'Primeira', 1),
(31, 31, 'Primeira', 1),
(32, 32, 'Primeira', 1),
(33, 33, 'Primeira', 1),
(34, 34, 'Primeira', 1),
(35, 35, 'Primeira', 1),
(36, 36, 'Primeira', 1),
(37, 37, 'Primeira', 1),
(38, 38, 'Primeira', 1),
(39, 39, 'Primeira', 1),
(40, 40, 'Primeira', 1),
(41, 41, 'Primeira', 1),
(42, 42, 'Primeira', 1),
(43, 43, 'Primeira', 1),
(44, 44, 'Primeira', 1),
(45, 45, 'Primeira', 1),
(46, 46, 'Primeira', 1),
(47, 47, 'Primeira', 1),
(48, 48, 'Primeira', 1),
(49, 49, 'Primeira', 1),
(50, 50, 'Primeira', 1),
(51, 51, 'Econômica', 1),
(52, 52, 'Econômica', 1),
(53, 53, 'Econômica', 1),
(54, 54, 'Econômica', 1),
(55, 55, 'Econômica', 1),
(56, 56, 'Econômica', 1),
(57, 57, 'Econômica', 1),
(58, 58, 'Econômica', 1),
(59, 59, 'Econômica', 1),
(60, 60, 'Econômica', 1),
(61, 61, 'Econômica', 1),
(62, 62, 'Econômica', 1),
(63, 63, 'Econômica', 1),
(64, 64, 'Econômica', 1),
(65, 65, 'Econômica', 1),
(66, 66, 'Econômica', 1),
(67, 67, 'Econômica', 1),
(68, 68, 'Econômica', 1),
(69, 69, 'Econômica', 1),
(70, 70, 'Econômica', 1),
(71, 71, 'Econômica', 1),
(72, 72, 'Econômica', 1),
(73, 73, 'Econômica', 1),
(74, 74, 'Econômica', 1),
(75, 75, 'Econômica', 1),
(76, 76, 'Econômica', 1),
(77, 77, 'Econômica', 1),
(78, 78, 'Econômica', 1),
(79, 79, 'Econômica', 1),
(80, 80, 'Econômica', 1),
(81, 81, 'Econômica', 1),
(82, 82, 'Econômica', 1),
(83, 83, 'Econômica', 1),
(84, 84, 'Econômica', 1),
(85, 85, 'Econômica', 1),
(86, 86, 'Econômica', 1),
(87, 87, 'Econômica', 1),
(88, 88, 'Econômica', 1),
(89, 89, 'Econômica', 1),
(90, 90, 'Econômica', 1),
(91, 91, 'Econômica', 1),
(92, 92, 'Econômica', 1),
(93, 93, 'Econômica', 1),
(94, 94, 'Econômica', 1),
(95, 95, 'Econômica', 1),
(96, 96, 'Econômica', 1),
(97, 97, 'Econômica', 1),
(98, 98, 'Econômica', 1),
(99, 99, 'Econômica', 1),
(100, 100, 'Econômica', 1),
(101, 101, 'Econômica', 1),
(102, 102, 'Econômica', 1),
(103, 103, 'Econômica', 1),
(104, 104, 'Econômica', 1),
(105, 105, 'Econômica', 1),
(106, 106, 'Econômica', 1),
(107, 107, 'Econômica', 1),
(108, 108, 'Econômica', 1),
(109, 109, 'Econômica', 1),
(110, 110, 'Econômica', 1),
(111, 111, 'Econômica', 1),
(112, 112, 'Econômica', 1),
(113, 113, 'Econômica', 1),
(114, 114, 'Econômica', 1),
(115, 115, 'Econômica', 1),
(116, 116, 'Econômica', 1),
(117, 117, 'Econômica', 1),
(118, 118, 'Econômica', 1),
(119, 119, 'Econômica', 1),
(120, 120, 'Econômica', 1),
(121, 121, 'Econômica', 1),
(122, 122, 'Econômica', 1),
(123, 123, 'Econômica', 1),
(124, 124, 'Econômica', 1),
(125, 125, 'Econômica', 1),
(126, 126, 'Econômica', 1),
(127, 127, 'Econômica', 1),
(128, 128, 'Econômica', 1),
(129, 129, 'Econômica', 1),
(130, 130, 'Econômica', 1),
(131, 131, 'Econômica', 1),
(132, 132, 'Econômica', 1),
(133, 133, 'Econômica', 1),
(134, 134, 'Econômica', 1),
(135, 135, 'Econômica', 1),
(136, 136, 'Econômica', 1),
(137, 137, 'Econômica', 1),
(138, 138, 'Econômica', 1),
(139, 139, 'Econômica', 1),
(140, 140, 'Econômica', 1),
(141, 141, 'Econômica', 1),
(142, 142, 'Econômica', 1),
(143, 143, 'Econômica', 1),
(144, 144, 'Econômica', 1),
(145, 145, 'Econômica', 1),
(146, 146, 'Econômica', 1),
(147, 147, 'Econômica', 1),
(148, 148, 'Econômica', 1),
(149, 149, 'Econômica', 1),
(150, 150, 'Econômica', 1),
(151, 151, 'Econômica', 1),
(152, 152, 'Econômica', 1),
(153, 153, 'Econômica', 1),
(154, 154, 'Econômica', 1),
(155, 155, 'Econômica', 1),
(156, 156, 'Econômica', 1),
(157, 157, 'Econômica', 1),
(158, 158, 'Econômica', 1),
(159, 159, 'Econômica', 1),
(160, 160, 'Econômica', 1),
(161, 161, 'Econômica', 1),
(162, 162, 'Econômica', 1),
(163, 163, 'Econômica', 1),
(164, 164, 'Econômica', 1),
(165, 165, 'Econômica', 1),
(166, 166, 'Econômica', 1),
(167, 167, 'Econômica', 1),
(168, 168, 'Econômica', 1),
(169, 169, 'Econômica', 1),
(170, 170, 'Econômica', 1),
(171, 171, 'Econômica', 1),
(172, 172, 'Econômica', 1),
(173, 173, 'Econômica', 1),
(174, 174, 'Econômica', 1),
(175, 175, 'Econômica', 1),
(176, 176, 'Econômica', 1),
(177, 177, 'Econômica', 1),
(178, 178, 'Econômica', 1),
(179, 179, 'Econômica', 1),
(180, 180, 'Econômica', 1),
(181, 181, 'Econômica', 1),
(182, 182, 'Econômica', 1),
(183, 183, 'Econômica', 1),
(184, 184, 'Econômica', 1),
(185, 185, 'Econômica', 1),
(186, 186, 'Econômica', 1),
(187, 187, 'Econômica', 1),
(188, 188, 'Econômica', 1),
(189, 189, 'Econômica', 1),
(190, 190, 'Econômica', 1),
(191, 191, 'Econômica', 1),
(192, 192, 'Econômica', 1),
(193, 193, 'Econômica', 1),
(194, 194, 'Econômica', 1),
(195, 195, 'Econômica', 1),
(196, 196, 'Econômica', 1),
(197, 197, 'Econômica', 1),
(198, 198, 'Econômica', 1),
(199, 199, 'Econômica', 1),
(200, 200, 'Econômica', 1),
(201, 1, 'Primeira', 2),
(202, 2, 'Primeira', 2),
(203, 3, 'Primeira', 2),
(204, 4, 'Primeira', 2),
(205, 5, 'Primeira', 2),
(206, 6, 'Primeira', 2),
(207, 7, 'Primeira', 2),
(208, 8, 'Primeira', 2),
(209, 9, 'Primeira', 2),
(210, 10, 'Primeira', 2),
(211, 11, 'Primeira', 2),
(212, 12, 'Primeira', 2),
(213, 13, 'Primeira', 2),
(214, 14, 'Primeira', 2),
(215, 15, 'Primeira', 2),
(216, 16, 'Primeira', 2),
(217, 17, 'Primeira', 2),
(218, 18, 'Primeira', 2),
(219, 19, 'Primeira', 2),
(220, 20, 'Primeira', 2),
(221, 21, 'Primeira', 2),
(222, 22, 'Primeira', 2),
(223, 23, 'Primeira', 2),
(224, 24, 'Primeira', 2),
(225, 25, 'Primeira', 2),
(226, 26, 'Primeira', 2),
(227, 27, 'Primeira', 2),
(228, 28, 'Primeira', 2),
(229, 29, 'Primeira', 2),
(230, 30, 'Primeira', 2),
(231, 31, 'Primeira', 2),
(232, 32, 'Primeira', 2),
(233, 33, 'Primeira', 2),
(234, 34, 'Primeira', 2),
(235, 35, 'Primeira', 2),
(236, 36, 'Primeira', 2),
(237, 37, 'Primeira', 2),
(238, 38, 'Primeira', 2),
(239, 39, 'Primeira', 2),
(240, 40, 'Primeira', 2),
(241, 41, 'Primeira', 2),
(242, 42, 'Primeira', 2),
(243, 43, 'Primeira', 2),
(244, 44, 'Primeira', 2),
(245, 45, 'Primeira', 2),
(246, 46, 'Primeira', 2),
(247, 47, 'Primeira', 2),
(248, 48, 'Primeira', 2),
(249, 49, 'Primeira', 2),
(250, 50, 'Primeira', 2),
(251, 51, 'Econômica', 2),
(252, 52, 'Econômica', 2),
(253, 53, 'Econômica', 2),
(254, 54, 'Econômica', 2),
(255, 55, 'Econômica', 2),
(256, 56, 'Econômica', 2),
(257, 57, 'Econômica', 2),
(258, 58, 'Econômica', 2),
(259, 59, 'Econômica', 2),
(260, 60, 'Econômica', 2),
(261, 61, 'Econômica', 2),
(262, 62, 'Econômica', 2),
(263, 63, 'Econômica', 2),
(264, 64, 'Econômica', 2),
(265, 65, 'Econômica', 2),
(266, 66, 'Econômica', 2),
(267, 67, 'Econômica', 2),
(268, 68, 'Econômica', 2),
(269, 69, 'Econômica', 2),
(270, 70, 'Econômica', 2),
(271, 71, 'Econômica', 2),
(272, 72, 'Econômica', 2),
(273, 73, 'Econômica', 2),
(274, 74, 'Econômica', 2),
(275, 75, 'Econômica', 2),
(276, 76, 'Econômica', 2),
(277, 77, 'Econômica', 2),
(278, 78, 'Econômica', 2),
(279, 79, 'Econômica', 2),
(280, 80, 'Econômica', 2),
(281, 81, 'Econômica', 2),
(282, 82, 'Econômica', 2),
(283, 83, 'Econômica', 2),
(284, 84, 'Econômica', 2),
(285, 85, 'Econômica', 2),
(286, 86, 'Econômica', 2),
(287, 87, 'Econômica', 2),
(288, 88, 'Econômica', 2),
(289, 89, 'Econômica', 2),
(290, 90, 'Econômica', 2),
(291, 91, 'Econômica', 2),
(292, 92, 'Econômica', 2),
(293, 93, 'Econômica', 2),
(294, 94, 'Econômica', 2),
(295, 95, 'Econômica', 2),
(296, 96, 'Econômica', 2),
(297, 97, 'Econômica', 2),
(298, 98, 'Econômica', 2),
(299, 99, 'Econômica', 2),
(300, 100, 'Econômica', 2),
(301, 101, 'Econômica', 2),
(302, 102, 'Econômica', 2),
(303, 103, 'Econômica', 2),
(304, 104, 'Econômica', 2),
(305, 105, 'Econômica', 2),
(306, 106, 'Econômica', 2),
(307, 107, 'Econômica', 2),
(308, 108, 'Econômica', 2),
(309, 109, 'Econômica', 2),
(310, 110, 'Econômica', 2),
(311, 111, 'Econômica', 2),
(312, 112, 'Econômica', 2),
(313, 113, 'Econômica', 2),
(314, 114, 'Econômica', 2),
(315, 115, 'Econômica', 2),
(316, 116, 'Econômica', 2),
(317, 117, 'Econômica', 2),
(318, 118, 'Econômica', 2),
(319, 119, 'Econômica', 2),
(320, 120, 'Econômica', 2),
(321, 121, 'Econômica', 2),
(322, 122, 'Econômica', 2),
(323, 123, 'Econômica', 2),
(324, 124, 'Econômica', 2),
(325, 125, 'Econômica', 2),
(326, 126, 'Econômica', 2),
(327, 127, 'Econômica', 2),
(328, 128, 'Econômica', 2),
(329, 129, 'Econômica', 2),
(330, 130, 'Econômica', 2),
(331, 131, 'Econômica', 2),
(332, 132, 'Econômica', 2),
(333, 133, 'Econômica', 2),
(334, 134, 'Econômica', 2),
(335, 135, 'Econômica', 2),
(336, 136, 'Econômica', 2),
(337, 137, 'Econômica', 2),
(338, 138, 'Econômica', 2),
(339, 139, 'Econômica', 2),
(340, 140, 'Econômica', 2),
(341, 141, 'Econômica', 2),
(342, 142, 'Econômica', 2),
(343, 143, 'Econômica', 2),
(344, 144, 'Econômica', 2),
(345, 145, 'Econômica', 2),
(346, 146, 'Econômica', 2),
(347, 147, 'Econômica', 2),
(348, 148, 'Econômica', 2),
(349, 149, 'Econômica', 2),
(350, 150, 'Econômica', 2),
(351, 151, 'Econômica', 2),
(352, 152, 'Econômica', 2),
(353, 153, 'Econômica', 2),
(354, 154, 'Econômica', 2),
(355, 155, 'Econômica', 2),
(356, 156, 'Econômica', 2),
(357, 157, 'Econômica', 2),
(358, 158, 'Econômica', 2),
(359, 159, 'Econômica', 2),
(360, 160, 'Econômica', 2),
(361, 161, 'Econômica', 2),
(362, 162, 'Econômica', 2),
(363, 163, 'Econômica', 2),
(364, 164, 'Econômica', 2),
(365, 165, 'Econômica', 2),
(366, 166, 'Econômica', 2),
(367, 167, 'Econômica', 2),
(368, 168, 'Econômica', 2),
(369, 169, 'Econômica', 2),
(370, 170, 'Econômica', 2),
(371, 171, 'Econômica', 2),
(372, 172, 'Econômica', 2),
(373, 173, 'Econômica', 2),
(374, 174, 'Econômica', 2),
(375, 175, 'Econômica', 2),
(376, 176, 'Econômica', 2),
(377, 177, 'Econômica', 2),
(378, 178, 'Econômica', 2),
(379, 179, 'Econômica', 2),
(380, 180, 'Econômica', 2),
(381, 181, 'Econômica', 2),
(382, 182, 'Econômica', 2),
(383, 183, 'Econômica', 2),
(384, 184, 'Econômica', 2),
(385, 185, 'Econômica', 2),
(386, 186, 'Econômica', 2),
(387, 187, 'Econômica', 2),
(388, 188, 'Econômica', 2),
(389, 189, 'Econômica', 2),
(390, 190, 'Econômica', 2),
(391, 191, 'Econômica', 2),
(392, 192, 'Econômica', 2),
(393, 193, 'Econômica', 2),
(394, 194, 'Econômica', 2),
(395, 195, 'Econômica', 2),
(396, 196, 'Econômica', 2),
(397, 197, 'Econômica', 2),
(398, 198, 'Econômica', 2),
(399, 199, 'Econômica', 2),
(400, 200, 'Econômica', 2),
(401, 1, 'Primeira', 3),
(402, 2, 'Primeira', 3),
(403, 3, 'Primeira', 3),
(404, 4, 'Primeira', 3),
(405, 5, 'Primeira', 3),
(406, 6, 'Primeira', 3),
(407, 7, 'Primeira', 3),
(408, 8, 'Primeira', 3),
(409, 9, 'Primeira', 3),
(410, 10, 'Primeira', 3),
(411, 11, 'Primeira', 3),
(412, 12, 'Primeira', 3),
(413, 13, 'Primeira', 3),
(414, 14, 'Primeira', 3),
(415, 15, 'Primeira', 3),
(416, 16, 'Primeira', 3),
(417, 17, 'Primeira', 3),
(418, 18, 'Primeira', 3),
(419, 19, 'Primeira', 3),
(420, 20, 'Primeira', 3),
(421, 21, 'Primeira', 3),
(422, 22, 'Primeira', 3),
(423, 23, 'Primeira', 3),
(424, 24, 'Primeira', 3),
(425, 25, 'Primeira', 3),
(426, 26, 'Primeira', 3),
(427, 27, 'Primeira', 3),
(428, 28, 'Primeira', 3),
(429, 29, 'Primeira', 3),
(430, 30, 'Primeira', 3),
(431, 31, 'Primeira', 3),
(432, 32, 'Primeira', 3),
(433, 33, 'Primeira', 3),
(434, 34, 'Primeira', 3),
(435, 35, 'Primeira', 3),
(436, 36, 'Primeira', 3),
(437, 37, 'Primeira', 3),
(438, 38, 'Primeira', 3),
(439, 39, 'Primeira', 3),
(440, 40, 'Primeira', 3),
(441, 41, 'Primeira', 3),
(442, 42, 'Primeira', 3),
(443, 43, 'Primeira', 3),
(444, 44, 'Primeira', 3),
(445, 45, 'Primeira', 3),
(446, 46, 'Primeira', 3),
(447, 47, 'Primeira', 3),
(448, 48, 'Primeira', 3),
(449, 49, 'Primeira', 3),
(450, 50, 'Primeira', 3),
(451, 51, 'Econômica', 3),
(452, 52, 'Econômica', 3),
(453, 53, 'Econômica', 3),
(454, 54, 'Econômica', 3),
(455, 55, 'Econômica', 3),
(456, 56, 'Econômica', 3),
(457, 57, 'Econômica', 3),
(458, 58, 'Econômica', 3),
(459, 59, 'Econômica', 3),
(460, 60, 'Econômica', 3),
(461, 61, 'Econômica', 3),
(462, 62, 'Econômica', 3),
(463, 63, 'Econômica', 3),
(464, 64, 'Econômica', 3),
(465, 65, 'Econômica', 3),
(466, 66, 'Econômica', 3),
(467, 67, 'Econômica', 3),
(468, 68, 'Econômica', 3),
(469, 69, 'Econômica', 3),
(470, 70, 'Econômica', 3),
(471, 71, 'Econômica', 3),
(472, 72, 'Econômica', 3),
(473, 73, 'Econômica', 3),
(474, 74, 'Econômica', 3),
(475, 75, 'Econômica', 3),
(476, 76, 'Econômica', 3),
(477, 77, 'Econômica', 3),
(478, 78, 'Econômica', 3),
(479, 79, 'Econômica', 3),
(480, 80, 'Econômica', 3),
(481, 81, 'Econômica', 3),
(482, 82, 'Econômica', 3),
(483, 83, 'Econômica', 3),
(484, 84, 'Econômica', 3),
(485, 85, 'Econômica', 3),
(486, 86, 'Econômica', 3),
(487, 87, 'Econômica', 3),
(488, 88, 'Econômica', 3),
(489, 89, 'Econômica', 3),
(490, 90, 'Econômica', 3),
(491, 91, 'Econômica', 3),
(492, 92, 'Econômica', 3),
(493, 93, 'Econômica', 3),
(494, 94, 'Econômica', 3),
(495, 95, 'Econômica', 3),
(496, 96, 'Econômica', 3),
(497, 97, 'Econômica', 3),
(498, 98, 'Econômica', 3),
(499, 99, 'Econômica', 3),
(500, 100, 'Econômica', 3),
(501, 101, 'Econômica', 3),
(502, 102, 'Econômica', 3),
(503, 103, 'Econômica', 3),
(504, 104, 'Econômica', 3),
(505, 105, 'Econômica', 3),
(506, 106, 'Econômica', 3),
(507, 107, 'Econômica', 3),
(508, 108, 'Econômica', 3),
(509, 109, 'Econômica', 3),
(510, 110, 'Econômica', 3),
(511, 111, 'Econômica', 3),
(512, 112, 'Econômica', 3),
(513, 113, 'Econômica', 3),
(514, 114, 'Econômica', 3),
(515, 115, 'Econômica', 3),
(516, 116, 'Econômica', 3),
(517, 117, 'Econômica', 3),
(518, 118, 'Econômica', 3),
(519, 119, 'Econômica', 3),
(520, 120, 'Econômica', 3),
(521, 121, 'Econômica', 3),
(522, 122, 'Econômica', 3),
(523, 123, 'Econômica', 3),
(524, 124, 'Econômica', 3),
(525, 125, 'Econômica', 3),
(526, 126, 'Econômica', 3),
(527, 127, 'Econômica', 3),
(528, 128, 'Econômica', 3),
(529, 129, 'Econômica', 3),
(530, 130, 'Econômica', 3),
(531, 131, 'Econômica', 3),
(532, 132, 'Econômica', 3),
(533, 133, 'Econômica', 3),
(534, 134, 'Econômica', 3),
(535, 135, 'Econômica', 3),
(536, 136, 'Econômica', 3),
(537, 137, 'Econômica', 3),
(538, 138, 'Econômica', 3),
(539, 139, 'Econômica', 3),
(540, 140, 'Econômica', 3),
(541, 141, 'Econômica', 3),
(542, 142, 'Econômica', 3),
(543, 143, 'Econômica', 3),
(544, 144, 'Econômica', 3),
(545, 145, 'Econômica', 3),
(546, 146, 'Econômica', 3),
(547, 147, 'Econômica', 3),
(548, 148, 'Econômica', 3),
(549, 149, 'Econômica', 3),
(550, 150, 'Econômica', 3),
(551, 151, 'Econômica', 3),
(552, 152, 'Econômica', 3),
(553, 153, 'Econômica', 3),
(554, 154, 'Econômica', 3),
(555, 155, 'Econômica', 3),
(556, 156, 'Econômica', 3),
(557, 157, 'Econômica', 3),
(558, 158, 'Econômica', 3),
(559, 159, 'Econômica', 3),
(560, 160, 'Econômica', 3),
(561, 161, 'Econômica', 3),
(562, 162, 'Econômica', 3),
(563, 163, 'Econômica', 3),
(564, 164, 'Econômica', 3),
(565, 165, 'Econômica', 3),
(566, 166, 'Econômica', 3),
(567, 167, 'Econômica', 3),
(568, 168, 'Econômica', 3),
(569, 169, 'Econômica', 3),
(570, 170, 'Econômica', 3),
(571, 171, 'Econômica', 3),
(572, 172, 'Econômica', 3),
(573, 173, 'Econômica', 3),
(574, 174, 'Econômica', 3),
(575, 175, 'Econômica', 3),
(576, 176, 'Econômica', 3),
(577, 177, 'Econômica', 3),
(578, 178, 'Econômica', 3),
(579, 179, 'Econômica', 3),
(580, 180, 'Econômica', 3),
(581, 181, 'Econômica', 3),
(582, 182, 'Econômica', 3),
(583, 183, 'Econômica', 3),
(584, 184, 'Econômica', 3),
(585, 185, 'Econômica', 3),
(586, 186, 'Econômica', 3),
(587, 187, 'Econômica', 3),
(588, 188, 'Econômica', 3),
(589, 189, 'Econômica', 3),
(590, 190, 'Econômica', 3),
(591, 191, 'Econômica', 3),
(592, 192, 'Econômica', 3),
(593, 193, 'Econômica', 3),
(594, 194, 'Econômica', 3),
(595, 195, 'Econômica', 3),
(596, 196, 'Econômica', 3),
(597, 197, 'Econômica', 3),
(598, 198, 'Econômica', 3),
(599, 199, 'Econômica', 3),
(600, 200, 'Econômica', 3),
(601, 1, 'Primeira', 4),
(602, 2, 'Primeira', 4),
(603, 3, 'Primeira', 4),
(604, 4, 'Primeira', 4),
(605, 5, 'Primeira', 4),
(606, 6, 'Primeira', 4),
(607, 7, 'Primeira', 4),
(608, 8, 'Primeira', 4),
(609, 9, 'Primeira', 4),
(610, 10, 'Primeira', 4),
(611, 11, 'Primeira', 4),
(612, 12, 'Primeira', 4),
(613, 13, 'Primeira', 4),
(614, 14, 'Primeira', 4),
(615, 15, 'Primeira', 4),
(616, 16, 'Primeira', 4),
(617, 17, 'Primeira', 4),
(618, 18, 'Primeira', 4),
(619, 19, 'Primeira', 4),
(620, 20, 'Primeira', 4),
(621, 21, 'Primeira', 4),
(622, 22, 'Primeira', 4),
(623, 23, 'Primeira', 4),
(624, 24, 'Primeira', 4),
(625, 25, 'Primeira', 4),
(626, 26, 'Primeira', 4),
(627, 27, 'Primeira', 4),
(628, 28, 'Primeira', 4),
(629, 29, 'Primeira', 4),
(630, 30, 'Primeira', 4),
(631, 31, 'Primeira', 4),
(632, 32, 'Primeira', 4),
(633, 33, 'Primeira', 4),
(634, 34, 'Primeira', 4),
(635, 35, 'Primeira', 4),
(636, 36, 'Primeira', 4),
(637, 37, 'Primeira', 4),
(638, 38, 'Primeira', 4),
(639, 39, 'Primeira', 4),
(640, 40, 'Primeira', 4),
(641, 41, 'Primeira', 4),
(642, 42, 'Primeira', 4),
(643, 43, 'Primeira', 4),
(644, 44, 'Primeira', 4),
(645, 45, 'Primeira', 4),
(646, 46, 'Primeira', 4),
(647, 47, 'Primeira', 4),
(648, 48, 'Primeira', 4),
(649, 49, 'Primeira', 4),
(650, 50, 'Primeira', 4),
(651, 51, 'Econômica', 4),
(652, 52, 'Econômica', 4),
(653, 53, 'Econômica', 4),
(654, 54, 'Econômica', 4),
(655, 55, 'Econômica', 4),
(656, 56, 'Econômica', 4),
(657, 57, 'Econômica', 4),
(658, 58, 'Econômica', 4),
(659, 59, 'Econômica', 4),
(660, 60, 'Econômica', 4),
(661, 61, 'Econômica', 4),
(662, 62, 'Econômica', 4),
(663, 63, 'Econômica', 4),
(664, 64, 'Econômica', 4),
(665, 65, 'Econômica', 4),
(666, 66, 'Econômica', 4),
(667, 67, 'Econômica', 4),
(668, 68, 'Econômica', 4),
(669, 69, 'Econômica', 4),
(670, 70, 'Econômica', 4),
(671, 71, 'Econômica', 4),
(672, 72, 'Econômica', 4),
(673, 73, 'Econômica', 4),
(674, 74, 'Econômica', 4),
(675, 75, 'Econômica', 4),
(676, 76, 'Econômica', 4),
(677, 77, 'Econômica', 4),
(678, 78, 'Econômica', 4),
(679, 79, 'Econômica', 4),
(680, 80, 'Econômica', 4),
(681, 81, 'Econômica', 4),
(682, 82, 'Econômica', 4),
(683, 83, 'Econômica', 4),
(684, 84, 'Econômica', 4),
(685, 85, 'Econômica', 4),
(686, 86, 'Econômica', 4),
(687, 87, 'Econômica', 4),
(688, 88, 'Econômica', 4),
(689, 89, 'Econômica', 4),
(690, 90, 'Econômica', 4),
(691, 91, 'Econômica', 4),
(692, 92, 'Econômica', 4),
(693, 93, 'Econômica', 4),
(694, 94, 'Econômica', 4),
(695, 95, 'Econômica', 4),
(696, 96, 'Econômica', 4),
(697, 97, 'Econômica', 4),
(698, 98, 'Econômica', 4),
(699, 99, 'Econômica', 4),
(700, 100, 'Econômica', 4),
(701, 101, 'Econômica', 4),
(702, 102, 'Econômica', 4),
(703, 103, 'Econômica', 4),
(704, 104, 'Econômica', 4),
(705, 105, 'Econômica', 4),
(706, 106, 'Econômica', 4),
(707, 107, 'Econômica', 4),
(708, 108, 'Econômica', 4),
(709, 109, 'Econômica', 4),
(710, 110, 'Econômica', 4),
(711, 111, 'Econômica', 4),
(712, 112, 'Econômica', 4),
(713, 113, 'Econômica', 4),
(714, 114, 'Econômica', 4),
(715, 115, 'Econômica', 4),
(716, 116, 'Econômica', 4),
(717, 117, 'Econômica', 4),
(718, 118, 'Econômica', 4),
(719, 119, 'Econômica', 4),
(720, 120, 'Econômica', 4),
(721, 121, 'Econômica', 4),
(722, 122, 'Econômica', 4),
(723, 123, 'Econômica', 4),
(724, 124, 'Econômica', 4),
(725, 125, 'Econômica', 4),
(726, 126, 'Econômica', 4),
(727, 127, 'Econômica', 4),
(728, 128, 'Econômica', 4),
(729, 129, 'Econômica', 4),
(730, 130, 'Econômica', 4),
(731, 131, 'Econômica', 4),
(732, 132, 'Econômica', 4),
(733, 133, 'Econômica', 4),
(734, 134, 'Econômica', 4),
(735, 135, 'Econômica', 4),
(736, 136, 'Econômica', 4),
(737, 137, 'Econômica', 4),
(738, 138, 'Econômica', 4),
(739, 139, 'Econômica', 4),
(740, 140, 'Econômica', 4),
(741, 141, 'Econômica', 4),
(742, 142, 'Econômica', 4),
(743, 143, 'Econômica', 4),
(744, 144, 'Econômica', 4),
(745, 145, 'Econômica', 4),
(746, 146, 'Econômica', 4),
(747, 147, 'Econômica', 4),
(748, 148, 'Econômica', 4),
(749, 149, 'Econômica', 4),
(750, 150, 'Econômica', 4),
(751, 151, 'Econômica', 4),
(752, 152, 'Econômica', 4),
(753, 153, 'Econômica', 4),
(754, 154, 'Econômica', 4),
(755, 155, 'Econômica', 4),
(756, 156, 'Econômica', 4),
(757, 157, 'Econômica', 4),
(758, 158, 'Econômica', 4),
(759, 159, 'Econômica', 4),
(760, 160, 'Econômica', 4),
(761, 161, 'Econômica', 4),
(762, 162, 'Econômica', 4),
(763, 163, 'Econômica', 4),
(764, 164, 'Econômica', 4),
(765, 165, 'Econômica', 4),
(766, 166, 'Econômica', 4),
(767, 167, 'Econômica', 4),
(768, 168, 'Econômica', 4),
(769, 169, 'Econômica', 4),
(770, 170, 'Econômica', 4),
(771, 171, 'Econômica', 4),
(772, 172, 'Econômica', 4),
(773, 173, 'Econômica', 4),
(774, 174, 'Econômica', 4),
(775, 175, 'Econômica', 4),
(776, 176, 'Econômica', 4),
(777, 177, 'Econômica', 4),
(778, 178, 'Econômica', 4),
(779, 179, 'Econômica', 4),
(780, 180, 'Econômica', 4),
(781, 181, 'Econômica', 4),
(782, 182, 'Econômica', 4),
(783, 183, 'Econômica', 4),
(784, 184, 'Econômica', 4),
(785, 185, 'Econômica', 4),
(786, 186, 'Econômica', 4),
(787, 187, 'Econômica', 4),
(788, 188, 'Econômica', 4),
(789, 189, 'Econômica', 4),
(790, 190, 'Econômica', 4),
(791, 191, 'Econômica', 4),
(792, 192, 'Econômica', 4),
(793, 193, 'Econômica', 4),
(794, 194, 'Econômica', 4),
(795, 195, 'Econômica', 4),
(796, 196, 'Econômica', 4),
(797, 197, 'Econômica', 4),
(798, 198, 'Econômica', 4),
(799, 199, 'Econômica', 4),
(800, 200, 'Econômica', 4),
(801, 1, 'Primeira', 5),
(802, 2, 'Primeira', 5),
(803, 3, 'Primeira', 5),
(804, 4, 'Primeira', 5),
(805, 5, 'Primeira', 5),
(806, 6, 'Primeira', 5),
(807, 7, 'Primeira', 5),
(808, 8, 'Primeira', 5),
(809, 9, 'Primeira', 5),
(810, 10, 'Primeira', 5),
(811, 11, 'Primeira', 5),
(812, 12, 'Primeira', 5),
(813, 13, 'Primeira', 5),
(814, 14, 'Primeira', 5),
(815, 15, 'Primeira', 5),
(816, 16, 'Primeira', 5),
(817, 17, 'Primeira', 5),
(818, 18, 'Primeira', 5),
(819, 19, 'Primeira', 5),
(820, 20, 'Primeira', 5),
(821, 21, 'Primeira', 5),
(822, 22, 'Primeira', 5),
(823, 23, 'Primeira', 5),
(824, 24, 'Primeira', 5),
(825, 25, 'Primeira', 5),
(826, 26, 'Primeira', 5),
(827, 27, 'Primeira', 5),
(828, 28, 'Primeira', 5),
(829, 29, 'Primeira', 5),
(830, 30, 'Primeira', 5),
(831, 31, 'Primeira', 5),
(832, 32, 'Primeira', 5),
(833, 33, 'Primeira', 5),
(834, 34, 'Primeira', 5),
(835, 35, 'Primeira', 5),
(836, 36, 'Primeira', 5),
(837, 37, 'Primeira', 5),
(838, 38, 'Primeira', 5),
(839, 39, 'Primeira', 5),
(840, 40, 'Primeira', 5),
(841, 41, 'Primeira', 5),
(842, 42, 'Primeira', 5),
(843, 43, 'Primeira', 5),
(844, 44, 'Primeira', 5),
(845, 45, 'Primeira', 5),
(846, 46, 'Primeira', 5),
(847, 47, 'Primeira', 5),
(848, 48, 'Primeira', 5),
(849, 49, 'Primeira', 5),
(850, 50, 'Primeira', 5),
(851, 51, 'Econômica', 5),
(852, 52, 'Econômica', 5),
(853, 53, 'Econômica', 5),
(854, 54, 'Econômica', 5),
(855, 55, 'Econômica', 5),
(856, 56, 'Econômica', 5),
(857, 57, 'Econômica', 5),
(858, 58, 'Econômica', 5),
(859, 59, 'Econômica', 5),
(860, 60, 'Econômica', 5),
(861, 61, 'Econômica', 5),
(862, 62, 'Econômica', 5),
(863, 63, 'Econômica', 5),
(864, 64, 'Econômica', 5),
(865, 65, 'Econômica', 5),
(866, 66, 'Econômica', 5),
(867, 67, 'Econômica', 5),
(868, 68, 'Econômica', 5),
(869, 69, 'Econômica', 5),
(870, 70, 'Econômica', 5),
(871, 71, 'Econômica', 5),
(872, 72, 'Econômica', 5),
(873, 73, 'Econômica', 5),
(874, 74, 'Econômica', 5),
(875, 75, 'Econômica', 5),
(876, 76, 'Econômica', 5),
(877, 77, 'Econômica', 5),
(878, 78, 'Econômica', 5),
(879, 79, 'Econômica', 5),
(880, 80, 'Econômica', 5),
(881, 81, 'Econômica', 5),
(882, 82, 'Econômica', 5),
(883, 83, 'Econômica', 5),
(884, 84, 'Econômica', 5),
(885, 85, 'Econômica', 5),
(886, 86, 'Econômica', 5),
(887, 87, 'Econômica', 5),
(888, 88, 'Econômica', 5),
(889, 89, 'Econômica', 5),
(890, 90, 'Econômica', 5),
(891, 91, 'Econômica', 5),
(892, 92, 'Econômica', 5),
(893, 93, 'Econômica', 5),
(894, 94, 'Econômica', 5),
(895, 95, 'Econômica', 5),
(896, 96, 'Econômica', 5),
(897, 97, 'Econômica', 5),
(898, 98, 'Econômica', 5),
(899, 99, 'Econômica', 5),
(900, 100, 'Econômica', 5),
(901, 101, 'Econômica', 5),
(902, 102, 'Econômica', 5),
(903, 103, 'Econômica', 5),
(904, 104, 'Econômica', 5),
(905, 105, 'Econômica', 5),
(906, 106, 'Econômica', 5),
(907, 107, 'Econômica', 5),
(908, 108, 'Econômica', 5),
(909, 109, 'Econômica', 5),
(910, 110, 'Econômica', 5),
(911, 111, 'Econômica', 5),
(912, 112, 'Econômica', 5),
(913, 113, 'Econômica', 5),
(914, 114, 'Econômica', 5),
(915, 115, 'Econômica', 5),
(916, 116, 'Econômica', 5),
(917, 117, 'Econômica', 5),
(918, 118, 'Econômica', 5),
(919, 119, 'Econômica', 5),
(920, 120, 'Econômica', 5),
(921, 121, 'Econômica', 5),
(922, 122, 'Econômica', 5),
(923, 123, 'Econômica', 5),
(924, 124, 'Econômica', 5),
(925, 125, 'Econômica', 5),
(926, 126, 'Econômica', 5),
(927, 127, 'Econômica', 5),
(928, 128, 'Econômica', 5),
(929, 129, 'Econômica', 5),
(930, 130, 'Econômica', 5),
(931, 131, 'Econômica', 5),
(932, 132, 'Econômica', 5),
(933, 133, 'Econômica', 5),
(934, 134, 'Econômica', 5),
(935, 135, 'Econômica', 5),
(936, 136, 'Econômica', 5),
(937, 137, 'Econômica', 5),
(938, 138, 'Econômica', 5),
(939, 139, 'Econômica', 5),
(940, 140, 'Econômica', 5),
(941, 141, 'Econômica', 5),
(942, 142, 'Econômica', 5),
(943, 143, 'Econômica', 5),
(944, 144, 'Econômica', 5),
(945, 145, 'Econômica', 5),
(946, 146, 'Econômica', 5),
(947, 147, 'Econômica', 5),
(948, 148, 'Econômica', 5),
(949, 149, 'Econômica', 5),
(950, 150, 'Econômica', 5),
(951, 151, 'Econômica', 5),
(952, 152, 'Econômica', 5),
(953, 153, 'Econômica', 5),
(954, 154, 'Econômica', 5),
(955, 155, 'Econômica', 5),
(956, 156, 'Econômica', 5),
(957, 157, 'Econômica', 5),
(958, 158, 'Econômica', 5),
(959, 159, 'Econômica', 5),
(960, 160, 'Econômica', 5),
(961, 161, 'Econômica', 5),
(962, 162, 'Econômica', 5),
(963, 163, 'Econômica', 5),
(964, 164, 'Econômica', 5),
(965, 165, 'Econômica', 5),
(966, 166, 'Econômica', 5),
(967, 167, 'Econômica', 5),
(968, 168, 'Econômica', 5),
(969, 169, 'Econômica', 5),
(970, 170, 'Econômica', 5),
(971, 171, 'Econômica', 5),
(972, 172, 'Econômica', 5),
(973, 173, 'Econômica', 5),
(974, 174, 'Econômica', 5),
(975, 175, 'Econômica', 5),
(976, 176, 'Econômica', 5),
(977, 177, 'Econômica', 5),
(978, 178, 'Econômica', 5),
(979, 179, 'Econômica', 5),
(980, 180, 'Econômica', 5),
(981, 181, 'Econômica', 5),
(982, 182, 'Econômica', 5),
(983, 183, 'Econômica', 5),
(984, 184, 'Econômica', 5),
(985, 185, 'Econômica', 5),
(986, 186, 'Econômica', 5),
(987, 187, 'Econômica', 5),
(988, 188, 'Econômica', 5),
(989, 189, 'Econômica', 5),
(990, 190, 'Econômica', 5),
(991, 191, 'Econômica', 5),
(992, 192, 'Econômica', 5),
(993, 193, 'Econômica', 5),
(994, 194, 'Econômica', 5),
(995, 195, 'Econômica', 5),
(996, 196, 'Econômica', 5),
(997, 197, 'Econômica', 5),
(998, 198, 'Econômica', 5),
(999, 199, 'Econômica', 5),
(1000, 200, 'Econômica', 5),
(1001, 1, 'Primeira', 6),
(1002, 2, 'Primeira', 6),
(1003, 3, 'Primeira', 6),
(1004, 4, 'Primeira', 6),
(1005, 5, 'Primeira', 6),
(1006, 6, 'Primeira', 6),
(1007, 7, 'Primeira', 6),
(1008, 8, 'Primeira', 6),
(1009, 9, 'Primeira', 6),
(1010, 10, 'Primeira', 6),
(1011, 11, 'Primeira', 6),
(1012, 12, 'Primeira', 6),
(1013, 13, 'Primeira', 6),
(1014, 14, 'Primeira', 6),
(1015, 15, 'Primeira', 6),
(1016, 16, 'Primeira', 6),
(1017, 17, 'Primeira', 6),
(1018, 18, 'Primeira', 6),
(1019, 19, 'Primeira', 6),
(1020, 20, 'Primeira', 6),
(1021, 21, 'Primeira', 6),
(1022, 22, 'Primeira', 6),
(1023, 23, 'Primeira', 6),
(1024, 24, 'Primeira', 6),
(1025, 25, 'Primeira', 6),
(1026, 26, 'Primeira', 6),
(1027, 27, 'Primeira', 6),
(1028, 28, 'Primeira', 6),
(1029, 29, 'Primeira', 6),
(1030, 30, 'Primeira', 6),
(1031, 31, 'Primeira', 6),
(1032, 32, 'Primeira', 6),
(1033, 33, 'Primeira', 6),
(1034, 34, 'Primeira', 6),
(1035, 35, 'Primeira', 6),
(1036, 36, 'Primeira', 6),
(1037, 37, 'Primeira', 6),
(1038, 38, 'Primeira', 6),
(1039, 39, 'Primeira', 6),
(1040, 40, 'Primeira', 6),
(1041, 41, 'Primeira', 6),
(1042, 42, 'Primeira', 6),
(1043, 43, 'Primeira', 6),
(1044, 44, 'Primeira', 6),
(1045, 45, 'Primeira', 6),
(1046, 46, 'Primeira', 6),
(1047, 47, 'Primeira', 6),
(1048, 48, 'Primeira', 6),
(1049, 49, 'Primeira', 6),
(1050, 50, 'Primeira', 6),
(1051, 51, 'Econômica', 6),
(1052, 52, 'Econômica', 6),
(1053, 53, 'Econômica', 6),
(1054, 54, 'Econômica', 6),
(1055, 55, 'Econômica', 6),
(1056, 56, 'Econômica', 6),
(1057, 57, 'Econômica', 6),
(1058, 58, 'Econômica', 6),
(1059, 59, 'Econômica', 6),
(1060, 60, 'Econômica', 6),
(1061, 61, 'Econômica', 6),
(1062, 62, 'Econômica', 6),
(1063, 63, 'Econômica', 6),
(1064, 64, 'Econômica', 6),
(1065, 65, 'Econômica', 6),
(1066, 66, 'Econômica', 6),
(1067, 67, 'Econômica', 6),
(1068, 68, 'Econômica', 6),
(1069, 69, 'Econômica', 6),
(1070, 70, 'Econômica', 6),
(1071, 71, 'Econômica', 6),
(1072, 72, 'Econômica', 6),
(1073, 73, 'Econômica', 6),
(1074, 74, 'Econômica', 6),
(1075, 75, 'Econômica', 6),
(1076, 76, 'Econômica', 6),
(1077, 77, 'Econômica', 6),
(1078, 78, 'Econômica', 6),
(1079, 79, 'Econômica', 6),
(1080, 80, 'Econômica', 6),
(1081, 81, 'Econômica', 6),
(1082, 82, 'Econômica', 6),
(1083, 83, 'Econômica', 6),
(1084, 84, 'Econômica', 6),
(1085, 85, 'Econômica', 6),
(1086, 86, 'Econômica', 6),
(1087, 87, 'Econômica', 6),
(1088, 88, 'Econômica', 6),
(1089, 89, 'Econômica', 6),
(1090, 90, 'Econômica', 6),
(1091, 91, 'Econômica', 6),
(1092, 92, 'Econômica', 6),
(1093, 93, 'Econômica', 6),
(1094, 94, 'Econômica', 6),
(1095, 95, 'Econômica', 6),
(1096, 96, 'Econômica', 6),
(1097, 97, 'Econômica', 6),
(1098, 98, 'Econômica', 6),
(1099, 99, 'Econômica', 6),
(1100, 100, 'Econômica', 6),
(1101, 101, 'Econômica', 6),
(1102, 102, 'Econômica', 6),
(1103, 103, 'Econômica', 6),
(1104, 104, 'Econômica', 6),
(1105, 105, 'Econômica', 6),
(1106, 106, 'Econômica', 6),
(1107, 107, 'Econômica', 6),
(1108, 108, 'Econômica', 6),
(1109, 109, 'Econômica', 6),
(1110, 110, 'Econômica', 6),
(1111, 111, 'Econômica', 6),
(1112, 112, 'Econômica', 6),
(1113, 113, 'Econômica', 6),
(1114, 114, 'Econômica', 6),
(1115, 115, 'Econômica', 6),
(1116, 116, 'Econômica', 6),
(1117, 117, 'Econômica', 6),
(1118, 118, 'Econômica', 6),
(1119, 119, 'Econômica', 6),
(1120, 120, 'Econômica', 6),
(1121, 121, 'Econômica', 6),
(1122, 122, 'Econômica', 6),
(1123, 123, 'Econômica', 6),
(1124, 124, 'Econômica', 6),
(1125, 125, 'Econômica', 6),
(1126, 126, 'Econômica', 6),
(1127, 127, 'Econômica', 6),
(1128, 128, 'Econômica', 6),
(1129, 129, 'Econômica', 6),
(1130, 130, 'Econômica', 6),
(1131, 131, 'Econômica', 6),
(1132, 132, 'Econômica', 6),
(1133, 133, 'Econômica', 6),
(1134, 134, 'Econômica', 6),
(1135, 135, 'Econômica', 6),
(1136, 136, 'Econômica', 6),
(1137, 137, 'Econômica', 6),
(1138, 138, 'Econômica', 6),
(1139, 139, 'Econômica', 6),
(1140, 140, 'Econômica', 6),
(1141, 141, 'Econômica', 6),
(1142, 142, 'Econômica', 6),
(1143, 143, 'Econômica', 6),
(1144, 144, 'Econômica', 6),
(1145, 145, 'Econômica', 6),
(1146, 146, 'Econômica', 6),
(1147, 147, 'Econômica', 6),
(1148, 148, 'Econômica', 6),
(1149, 149, 'Econômica', 6),
(1150, 150, 'Econômica', 6),
(1151, 151, 'Econômica', 6),
(1152, 152, 'Econômica', 6),
(1153, 153, 'Econômica', 6),
(1154, 154, 'Econômica', 6),
(1155, 155, 'Econômica', 6),
(1156, 156, 'Econômica', 6),
(1157, 157, 'Econômica', 6),
(1158, 158, 'Econômica', 6),
(1159, 159, 'Econômica', 6),
(1160, 160, 'Econômica', 6),
(1161, 161, 'Econômica', 6),
(1162, 162, 'Econômica', 6),
(1163, 163, 'Econômica', 6),
(1164, 164, 'Econômica', 6),
(1165, 165, 'Econômica', 6),
(1166, 166, 'Econômica', 6),
(1167, 167, 'Econômica', 6),
(1168, 168, 'Econômica', 6),
(1169, 169, 'Econômica', 6),
(1170, 170, 'Econômica', 6),
(1171, 171, 'Econômica', 6),
(1172, 172, 'Econômica', 6),
(1173, 173, 'Econômica', 6),
(1174, 174, 'Econômica', 6),
(1175, 175, 'Econômica', 6),
(1176, 176, 'Econômica', 6),
(1177, 177, 'Econômica', 6),
(1178, 178, 'Econômica', 6),
(1179, 179, 'Econômica', 6),
(1180, 180, 'Econômica', 6),
(1181, 181, 'Econômica', 6),
(1182, 182, 'Econômica', 6),
(1183, 183, 'Econômica', 6),
(1184, 184, 'Econômica', 6),
(1185, 185, 'Econômica', 6),
(1186, 186, 'Econômica', 6),
(1187, 187, 'Econômica', 6),
(1188, 188, 'Econômica', 6),
(1189, 189, 'Econômica', 6),
(1190, 190, 'Econômica', 6),
(1191, 191, 'Econômica', 6),
(1192, 192, 'Econômica', 6),
(1193, 193, 'Econômica', 6),
(1194, 194, 'Econômica', 6),
(1195, 195, 'Econômica', 6),
(1196, 196, 'Econômica', 6),
(1197, 197, 'Econômica', 6),
(1198, 198, 'Econômica', 6),
(1199, 199, 'Econômica', 6),
(1200, 200, 'Econômica', 6),
(1201, 1, 'Primeira', 7),
(1202, 2, 'Primeira', 7),
(1203, 3, 'Primeira', 7),
(1204, 4, 'Primeira', 7),
(1205, 5, 'Primeira', 7),
(1206, 6, 'Primeira', 7),
(1207, 7, 'Primeira', 7),
(1208, 8, 'Primeira', 7),
(1209, 9, 'Primeira', 7),
(1210, 10, 'Primeira', 7),
(1211, 11, 'Primeira', 7),
(1212, 12, 'Primeira', 7),
(1213, 13, 'Primeira', 7),
(1214, 14, 'Primeira', 7),
(1215, 15, 'Primeira', 7),
(1216, 16, 'Primeira', 7),
(1217, 17, 'Primeira', 7),
(1218, 18, 'Primeira', 7),
(1219, 19, 'Primeira', 7),
(1220, 20, 'Primeira', 7),
(1221, 21, 'Primeira', 7),
(1222, 22, 'Primeira', 7),
(1223, 23, 'Primeira', 7),
(1224, 24, 'Primeira', 7),
(1225, 25, 'Primeira', 7),
(1226, 26, 'Primeira', 7),
(1227, 27, 'Primeira', 7),
(1228, 28, 'Primeira', 7),
(1229, 29, 'Primeira', 7),
(1230, 30, 'Primeira', 7),
(1231, 31, 'Primeira', 7),
(1232, 32, 'Primeira', 7),
(1233, 33, 'Primeira', 7),
(1234, 34, 'Primeira', 7),
(1235, 35, 'Primeira', 7),
(1236, 36, 'Primeira', 7),
(1237, 37, 'Primeira', 7),
(1238, 38, 'Primeira', 7),
(1239, 39, 'Primeira', 7),
(1240, 40, 'Primeira', 7),
(1241, 41, 'Primeira', 7),
(1242, 42, 'Primeira', 7),
(1243, 43, 'Primeira', 7),
(1244, 44, 'Primeira', 7),
(1245, 45, 'Primeira', 7),
(1246, 46, 'Primeira', 7),
(1247, 47, 'Primeira', 7),
(1248, 48, 'Primeira', 7),
(1249, 49, 'Primeira', 7),
(1250, 50, 'Primeira', 7),
(1251, 51, 'Econômica', 7),
(1252, 52, 'Econômica', 7),
(1253, 53, 'Econômica', 7),
(1254, 54, 'Econômica', 7),
(1255, 55, 'Econômica', 7),
(1256, 56, 'Econômica', 7),
(1257, 57, 'Econômica', 7),
(1258, 58, 'Econômica', 7),
(1259, 59, 'Econômica', 7),
(1260, 60, 'Econômica', 7),
(1261, 61, 'Econômica', 7),
(1262, 62, 'Econômica', 7),
(1263, 63, 'Econômica', 7),
(1264, 64, 'Econômica', 7),
(1265, 65, 'Econômica', 7),
(1266, 66, 'Econômica', 7),
(1267, 67, 'Econômica', 7),
(1268, 68, 'Econômica', 7),
(1269, 69, 'Econômica', 7),
(1270, 70, 'Econômica', 7),
(1271, 71, 'Econômica', 7),
(1272, 72, 'Econômica', 7),
(1273, 73, 'Econômica', 7),
(1274, 74, 'Econômica', 7),
(1275, 75, 'Econômica', 7),
(1276, 76, 'Econômica', 7),
(1277, 77, 'Econômica', 7),
(1278, 78, 'Econômica', 7),
(1279, 79, 'Econômica', 7),
(1280, 80, 'Econômica', 7),
(1281, 81, 'Econômica', 7),
(1282, 82, 'Econômica', 7),
(1283, 83, 'Econômica', 7),
(1284, 84, 'Econômica', 7),
(1285, 85, 'Econômica', 7),
(1286, 86, 'Econômica', 7),
(1287, 87, 'Econômica', 7),
(1288, 88, 'Econômica', 7),
(1289, 89, 'Econômica', 7),
(1290, 90, 'Econômica', 7),
(1291, 91, 'Econômica', 7),
(1292, 92, 'Econômica', 7),
(1293, 93, 'Econômica', 7),
(1294, 94, 'Econômica', 7),
(1295, 95, 'Econômica', 7),
(1296, 96, 'Econômica', 7),
(1297, 97, 'Econômica', 7),
(1298, 98, 'Econômica', 7),
(1299, 99, 'Econômica', 7),
(1300, 100, 'Econômica', 7),
(1301, 101, 'Econômica', 7),
(1302, 102, 'Econômica', 7),
(1303, 103, 'Econômica', 7),
(1304, 104, 'Econômica', 7),
(1305, 105, 'Econômica', 7),
(1306, 106, 'Econômica', 7),
(1307, 107, 'Econômica', 7),
(1308, 108, 'Econômica', 7),
(1309, 109, 'Econômica', 7),
(1310, 110, 'Econômica', 7),
(1311, 111, 'Econômica', 7),
(1312, 112, 'Econômica', 7),
(1313, 113, 'Econômica', 7),
(1314, 114, 'Econômica', 7),
(1315, 115, 'Econômica', 7),
(1316, 116, 'Econômica', 7),
(1317, 117, 'Econômica', 7),
(1318, 118, 'Econômica', 7),
(1319, 119, 'Econômica', 7),
(1320, 120, 'Econômica', 7),
(1321, 121, 'Econômica', 7),
(1322, 122, 'Econômica', 7),
(1323, 123, 'Econômica', 7),
(1324, 124, 'Econômica', 7),
(1325, 125, 'Econômica', 7),
(1326, 126, 'Econômica', 7),
(1327, 127, 'Econômica', 7),
(1328, 128, 'Econômica', 7),
(1329, 129, 'Econômica', 7),
(1330, 130, 'Econômica', 7),
(1331, 131, 'Econômica', 7),
(1332, 132, 'Econômica', 7),
(1333, 133, 'Econômica', 7),
(1334, 134, 'Econômica', 7),
(1335, 135, 'Econômica', 7),
(1336, 136, 'Econômica', 7),
(1337, 137, 'Econômica', 7),
(1338, 138, 'Econômica', 7),
(1339, 139, 'Econômica', 7),
(1340, 140, 'Econômica', 7),
(1341, 141, 'Econômica', 7),
(1342, 142, 'Econômica', 7),
(1343, 143, 'Econômica', 7),
(1344, 144, 'Econômica', 7),
(1345, 145, 'Econômica', 7),
(1346, 146, 'Econômica', 7),
(1347, 147, 'Econômica', 7),
(1348, 148, 'Econômica', 7),
(1349, 149, 'Econômica', 7),
(1350, 150, 'Econômica', 7),
(1351, 151, 'Econômica', 7),
(1352, 152, 'Econômica', 7),
(1353, 153, 'Econômica', 7),
(1354, 154, 'Econômica', 7),
(1355, 155, 'Econômica', 7),
(1356, 156, 'Econômica', 7),
(1357, 157, 'Econômica', 7),
(1358, 158, 'Econômica', 7),
(1359, 159, 'Econômica', 7),
(1360, 160, 'Econômica', 7),
(1361, 161, 'Econômica', 7),
(1362, 162, 'Econômica', 7),
(1363, 163, 'Econômica', 7),
(1364, 164, 'Econômica', 7),
(1365, 165, 'Econômica', 7),
(1366, 166, 'Econômica', 7),
(1367, 167, 'Econômica', 7),
(1368, 168, 'Econômica', 7),
(1369, 169, 'Econômica', 7),
(1370, 170, 'Econômica', 7),
(1371, 171, 'Econômica', 7),
(1372, 172, 'Econômica', 7),
(1373, 173, 'Econômica', 7),
(1374, 174, 'Econômica', 7),
(1375, 175, 'Econômica', 7),
(1376, 176, 'Econômica', 7),
(1377, 177, 'Econômica', 7),
(1378, 178, 'Econômica', 7),
(1379, 179, 'Econômica', 7),
(1380, 180, 'Econômica', 7),
(1381, 181, 'Econômica', 7),
(1382, 182, 'Econômica', 7),
(1383, 183, 'Econômica', 7),
(1384, 184, 'Econômica', 7),
(1385, 185, 'Econômica', 7),
(1386, 186, 'Econômica', 7),
(1387, 187, 'Econômica', 7),
(1388, 188, 'Econômica', 7),
(1389, 189, 'Econômica', 7),
(1390, 190, 'Econômica', 7),
(1391, 191, 'Econômica', 7),
(1392, 192, 'Econômica', 7),
(1393, 193, 'Econômica', 7),
(1394, 194, 'Econômica', 7),
(1395, 195, 'Econômica', 7),
(1396, 196, 'Econômica', 7),
(1397, 197, 'Econômica', 7),
(1398, 198, 'Econômica', 7),
(1399, 199, 'Econômica', 7),
(1400, 200, 'Econômica', 7),
(1401, 1, 'Primeira', 8),
(1402, 2, 'Primeira', 8),
(1403, 3, 'Primeira', 8),
(1404, 4, 'Primeira', 8),
(1405, 5, 'Primeira', 8),
(1406, 6, 'Primeira', 8),
(1407, 7, 'Primeira', 8),
(1408, 8, 'Primeira', 8),
(1409, 9, 'Primeira', 8),
(1410, 10, 'Primeira', 8),
(1411, 11, 'Primeira', 8),
(1412, 12, 'Primeira', 8),
(1413, 13, 'Primeira', 8),
(1414, 14, 'Primeira', 8),
(1415, 15, 'Primeira', 8),
(1416, 16, 'Primeira', 8),
(1417, 17, 'Primeira', 8),
(1418, 18, 'Primeira', 8),
(1419, 19, 'Primeira', 8),
(1420, 20, 'Primeira', 8),
(1421, 21, 'Primeira', 8),
(1422, 22, 'Primeira', 8),
(1423, 23, 'Primeira', 8),
(1424, 24, 'Primeira', 8),
(1425, 25, 'Primeira', 8),
(1426, 26, 'Primeira', 8),
(1427, 27, 'Primeira', 8),
(1428, 28, 'Primeira', 8),
(1429, 29, 'Primeira', 8),
(1430, 30, 'Primeira', 8),
(1431, 31, 'Primeira', 8),
(1432, 32, 'Primeira', 8),
(1433, 33, 'Primeira', 8),
(1434, 34, 'Primeira', 8),
(1435, 35, 'Primeira', 8),
(1436, 36, 'Primeira', 8),
(1437, 37, 'Primeira', 8),
(1438, 38, 'Primeira', 8),
(1439, 39, 'Primeira', 8),
(1440, 40, 'Primeira', 8),
(1441, 41, 'Primeira', 8),
(1442, 42, 'Primeira', 8),
(1443, 43, 'Primeira', 8),
(1444, 44, 'Primeira', 8),
(1445, 45, 'Primeira', 8),
(1446, 46, 'Primeira', 8),
(1447, 47, 'Primeira', 8),
(1448, 48, 'Primeira', 8),
(1449, 49, 'Primeira', 8),
(1450, 50, 'Primeira', 8),
(1451, 51, 'Econômica', 8),
(1452, 52, 'Econômica', 8),
(1453, 53, 'Econômica', 8),
(1454, 54, 'Econômica', 8),
(1455, 55, 'Econômica', 8),
(1456, 56, 'Econômica', 8),
(1457, 57, 'Econômica', 8),
(1458, 58, 'Econômica', 8),
(1459, 59, 'Econômica', 8),
(1460, 60, 'Econômica', 8),
(1461, 61, 'Econômica', 8),
(1462, 62, 'Econômica', 8),
(1463, 63, 'Econômica', 8),
(1464, 64, 'Econômica', 8),
(1465, 65, 'Econômica', 8),
(1466, 66, 'Econômica', 8),
(1467, 67, 'Econômica', 8),
(1468, 68, 'Econômica', 8),
(1469, 69, 'Econômica', 8),
(1470, 70, 'Econômica', 8),
(1471, 71, 'Econômica', 8),
(1472, 72, 'Econômica', 8),
(1473, 73, 'Econômica', 8),
(1474, 74, 'Econômica', 8),
(1475, 75, 'Econômica', 8),
(1476, 76, 'Econômica', 8),
(1477, 77, 'Econômica', 8),
(1478, 78, 'Econômica', 8),
(1479, 79, 'Econômica', 8),
(1480, 80, 'Econômica', 8),
(1481, 81, 'Econômica', 8),
(1482, 82, 'Econômica', 8),
(1483, 83, 'Econômica', 8),
(1484, 84, 'Econômica', 8),
(1485, 85, 'Econômica', 8),
(1486, 86, 'Econômica', 8),
(1487, 87, 'Econômica', 8),
(1488, 88, 'Econômica', 8),
(1489, 89, 'Econômica', 8),
(1490, 90, 'Econômica', 8),
(1491, 91, 'Econômica', 8),
(1492, 92, 'Econômica', 8),
(1493, 93, 'Econômica', 8),
(1494, 94, 'Econômica', 8),
(1495, 95, 'Econômica', 8),
(1496, 96, 'Econômica', 8),
(1497, 97, 'Econômica', 8),
(1498, 98, 'Econômica', 8),
(1499, 99, 'Econômica', 8),
(1500, 100, 'Econômica', 8),
(1501, 101, 'Econômica', 8),
(1502, 102, 'Econômica', 8),
(1503, 103, 'Econômica', 8),
(1504, 104, 'Econômica', 8),
(1505, 105, 'Econômica', 8),
(1506, 106, 'Econômica', 8),
(1507, 107, 'Econômica', 8),
(1508, 108, 'Econômica', 8),
(1509, 109, 'Econômica', 8),
(1510, 110, 'Econômica', 8),
(1511, 111, 'Econômica', 8),
(1512, 112, 'Econômica', 8),
(1513, 113, 'Econômica', 8),
(1514, 114, 'Econômica', 8),
(1515, 115, 'Econômica', 8),
(1516, 116, 'Econômica', 8),
(1517, 117, 'Econômica', 8),
(1518, 118, 'Econômica', 8),
(1519, 119, 'Econômica', 8),
(1520, 120, 'Econômica', 8),
(1521, 121, 'Econômica', 8),
(1522, 122, 'Econômica', 8),
(1523, 123, 'Econômica', 8),
(1524, 124, 'Econômica', 8),
(1525, 125, 'Econômica', 8),
(1526, 126, 'Econômica', 8),
(1527, 127, 'Econômica', 8),
(1528, 128, 'Econômica', 8),
(1529, 129, 'Econômica', 8),
(1530, 130, 'Econômica', 8),
(1531, 131, 'Econômica', 8),
(1532, 132, 'Econômica', 8),
(1533, 133, 'Econômica', 8),
(1534, 134, 'Econômica', 8),
(1535, 135, 'Econômica', 8),
(1536, 136, 'Econômica', 8),
(1537, 137, 'Econômica', 8),
(1538, 138, 'Econômica', 8),
(1539, 139, 'Econômica', 8),
(1540, 140, 'Econômica', 8),
(1541, 141, 'Econômica', 8),
(1542, 142, 'Econômica', 8),
(1543, 143, 'Econômica', 8),
(1544, 144, 'Econômica', 8),
(1545, 145, 'Econômica', 8),
(1546, 146, 'Econômica', 8),
(1547, 147, 'Econômica', 8),
(1548, 148, 'Econômica', 8),
(1549, 149, 'Econômica', 8),
(1550, 150, 'Econômica', 8),
(1551, 151, 'Econômica', 8),
(1552, 152, 'Econômica', 8),
(1553, 153, 'Econômica', 8),
(1554, 154, 'Econômica', 8),
(1555, 155, 'Econômica', 8),
(1556, 156, 'Econômica', 8),
(1557, 157, 'Econômica', 8),
(1558, 158, 'Econômica', 8),
(1559, 159, 'Econômica', 8),
(1560, 160, 'Econômica', 8),
(1561, 161, 'Econômica', 8),
(1562, 162, 'Econômica', 8),
(1563, 163, 'Econômica', 8),
(1564, 164, 'Econômica', 8),
(1565, 165, 'Econômica', 8),
(1566, 166, 'Econômica', 8),
(1567, 167, 'Econômica', 8),
(1568, 168, 'Econômica', 8),
(1569, 169, 'Econômica', 8),
(1570, 170, 'Econômica', 8),
(1571, 171, 'Econômica', 8),
(1572, 172, 'Econômica', 8),
(1573, 173, 'Econômica', 8),
(1574, 174, 'Econômica', 8),
(1575, 175, 'Econômica', 8),
(1576, 176, 'Econômica', 8),
(1577, 177, 'Econômica', 8),
(1578, 178, 'Econômica', 8),
(1579, 179, 'Econômica', 8),
(1580, 180, 'Econômica', 8),
(1581, 181, 'Econômica', 8),
(1582, 182, 'Econômica', 8),
(1583, 183, 'Econômica', 8),
(1584, 184, 'Econômica', 8),
(1585, 185, 'Econômica', 8),
(1586, 186, 'Econômica', 8),
(1587, 187, 'Econômica', 8),
(1588, 188, 'Econômica', 8),
(1589, 189, 'Econômica', 8),
(1590, 190, 'Econômica', 8),
(1591, 191, 'Econômica', 8),
(1592, 192, 'Econômica', 8),
(1593, 193, 'Econômica', 8),
(1594, 194, 'Econômica', 8),
(1595, 195, 'Econômica', 8),
(1596, 196, 'Econômica', 8),
(1597, 197, 'Econômica', 8),
(1598, 198, 'Econômica', 8),
(1599, 199, 'Econômica', 8),
(1600, 200, 'Econômica', 8),
(1601, 1, 'Primeira', 9),
(1602, 2, 'Primeira', 9),
(1603, 3, 'Primeira', 9),
(1604, 4, 'Primeira', 9),
(1605, 5, 'Primeira', 9),
(1606, 6, 'Primeira', 9),
(1607, 7, 'Primeira', 9),
(1608, 8, 'Primeira', 9),
(1609, 9, 'Primeira', 9),
(1610, 10, 'Primeira', 9),
(1611, 11, 'Primeira', 9),
(1612, 12, 'Primeira', 9),
(1613, 13, 'Primeira', 9),
(1614, 14, 'Primeira', 9),
(1615, 15, 'Primeira', 9),
(1616, 16, 'Primeira', 9),
(1617, 17, 'Primeira', 9),
(1618, 18, 'Primeira', 9),
(1619, 19, 'Primeira', 9),
(1620, 20, 'Primeira', 9),
(1621, 21, 'Primeira', 9),
(1622, 22, 'Primeira', 9),
(1623, 23, 'Primeira', 9),
(1624, 24, 'Primeira', 9),
(1625, 25, 'Primeira', 9),
(1626, 26, 'Primeira', 9),
(1627, 27, 'Primeira', 9),
(1628, 28, 'Primeira', 9),
(1629, 29, 'Primeira', 9),
(1630, 30, 'Primeira', 9),
(1631, 31, 'Primeira', 9),
(1632, 32, 'Primeira', 9),
(1633, 33, 'Primeira', 9),
(1634, 34, 'Primeira', 9),
(1635, 35, 'Primeira', 9),
(1636, 36, 'Primeira', 9),
(1637, 37, 'Primeira', 9),
(1638, 38, 'Primeira', 9),
(1639, 39, 'Primeira', 9),
(1640, 40, 'Primeira', 9),
(1641, 41, 'Primeira', 9),
(1642, 42, 'Primeira', 9),
(1643, 43, 'Primeira', 9),
(1644, 44, 'Primeira', 9),
(1645, 45, 'Primeira', 9),
(1646, 46, 'Primeira', 9),
(1647, 47, 'Primeira', 9),
(1648, 48, 'Primeira', 9),
(1649, 49, 'Primeira', 9),
(1650, 50, 'Primeira', 9),
(1651, 51, 'Econômica', 9),
(1652, 52, 'Econômica', 9),
(1653, 53, 'Econômica', 9),
(1654, 54, 'Econômica', 9),
(1655, 55, 'Econômica', 9),
(1656, 56, 'Econômica', 9),
(1657, 57, 'Econômica', 9),
(1658, 58, 'Econômica', 9),
(1659, 59, 'Econômica', 9),
(1660, 60, 'Econômica', 9),
(1661, 61, 'Econômica', 9),
(1662, 62, 'Econômica', 9),
(1663, 63, 'Econômica', 9),
(1664, 64, 'Econômica', 9),
(1665, 65, 'Econômica', 9),
(1666, 66, 'Econômica', 9),
(1667, 67, 'Econômica', 9),
(1668, 68, 'Econômica', 9),
(1669, 69, 'Econômica', 9),
(1670, 70, 'Econômica', 9),
(1671, 71, 'Econômica', 9),
(1672, 72, 'Econômica', 9),
(1673, 73, 'Econômica', 9),
(1674, 74, 'Econômica', 9),
(1675, 75, 'Econômica', 9),
(1676, 76, 'Econômica', 9),
(1677, 77, 'Econômica', 9),
(1678, 78, 'Econômica', 9),
(1679, 79, 'Econômica', 9),
(1680, 80, 'Econômica', 9),
(1681, 81, 'Econômica', 9),
(1682, 82, 'Econômica', 9),
(1683, 83, 'Econômica', 9),
(1684, 84, 'Econômica', 9),
(1685, 85, 'Econômica', 9),
(1686, 86, 'Econômica', 9),
(1687, 87, 'Econômica', 9),
(1688, 88, 'Econômica', 9),
(1689, 89, 'Econômica', 9),
(1690, 90, 'Econômica', 9),
(1691, 91, 'Econômica', 9),
(1692, 92, 'Econômica', 9),
(1693, 93, 'Econômica', 9),
(1694, 94, 'Econômica', 9),
(1695, 95, 'Econômica', 9),
(1696, 96, 'Econômica', 9),
(1697, 97, 'Econômica', 9),
(1698, 98, 'Econômica', 9),
(1699, 99, 'Econômica', 9),
(1700, 100, 'Econômica', 9),
(1701, 101, 'Econômica', 9),
(1702, 102, 'Econômica', 9),
(1703, 103, 'Econômica', 9),
(1704, 104, 'Econômica', 9),
(1705, 105, 'Econômica', 9),
(1706, 106, 'Econômica', 9),
(1707, 107, 'Econômica', 9),
(1708, 108, 'Econômica', 9),
(1709, 109, 'Econômica', 9),
(1710, 110, 'Econômica', 9),
(1711, 111, 'Econômica', 9),
(1712, 112, 'Econômica', 9),
(1713, 113, 'Econômica', 9),
(1714, 114, 'Econômica', 9),
(1715, 115, 'Econômica', 9),
(1716, 116, 'Econômica', 9),
(1717, 117, 'Econômica', 9),
(1718, 118, 'Econômica', 9),
(1719, 119, 'Econômica', 9),
(1720, 120, 'Econômica', 9),
(1721, 121, 'Econômica', 9),
(1722, 122, 'Econômica', 9),
(1723, 123, 'Econômica', 9),
(1724, 124, 'Econômica', 9),
(1725, 125, 'Econômica', 9),
(1726, 126, 'Econômica', 9),
(1727, 127, 'Econômica', 9),
(1728, 128, 'Econômica', 9),
(1729, 129, 'Econômica', 9),
(1730, 130, 'Econômica', 9),
(1731, 131, 'Econômica', 9),
(1732, 132, 'Econômica', 9),
(1733, 133, 'Econômica', 9),
(1734, 134, 'Econômica', 9),
(1735, 135, 'Econômica', 9),
(1736, 136, 'Econômica', 9),
(1737, 137, 'Econômica', 9),
(1738, 138, 'Econômica', 9),
(1739, 139, 'Econômica', 9),
(1740, 140, 'Econômica', 9),
(1741, 141, 'Econômica', 9),
(1742, 142, 'Econômica', 9),
(1743, 143, 'Econômica', 9),
(1744, 144, 'Econômica', 9),
(1745, 145, 'Econômica', 9),
(1746, 146, 'Econômica', 9),
(1747, 147, 'Econômica', 9),
(1748, 148, 'Econômica', 9),
(1749, 149, 'Econômica', 9),
(1750, 150, 'Econômica', 9),
(1751, 151, 'Econômica', 9),
(1752, 152, 'Econômica', 9),
(1753, 153, 'Econômica', 9),
(1754, 154, 'Econômica', 9),
(1755, 155, 'Econômica', 9),
(1756, 156, 'Econômica', 9),
(1757, 157, 'Econômica', 9),
(1758, 158, 'Econômica', 9),
(1759, 159, 'Econômica', 9),
(1760, 160, 'Econômica', 9),
(1761, 161, 'Econômica', 9),
(1762, 162, 'Econômica', 9),
(1763, 163, 'Econômica', 9),
(1764, 164, 'Econômica', 9),
(1765, 165, 'Econômica', 9),
(1766, 166, 'Econômica', 9),
(1767, 167, 'Econômica', 9),
(1768, 168, 'Econômica', 9),
(1769, 169, 'Econômica', 9),
(1770, 170, 'Econômica', 9),
(1771, 171, 'Econômica', 9),
(1772, 172, 'Econômica', 9),
(1773, 173, 'Econômica', 9),
(1774, 174, 'Econômica', 9),
(1775, 175, 'Econômica', 9),
(1776, 176, 'Econômica', 9),
(1777, 177, 'Econômica', 9),
(1778, 178, 'Econômica', 9),
(1779, 179, 'Econômica', 9),
(1780, 180, 'Econômica', 9),
(1781, 181, 'Econômica', 9),
(1782, 182, 'Econômica', 9),
(1783, 183, 'Econômica', 9),
(1784, 184, 'Econômica', 9),
(1785, 185, 'Econômica', 9),
(1786, 186, 'Econômica', 9),
(1787, 187, 'Econômica', 9),
(1788, 188, 'Econômica', 9),
(1789, 189, 'Econômica', 9),
(1790, 190, 'Econômica', 9),
(1791, 191, 'Econômica', 9),
(1792, 192, 'Econômica', 9),
(1793, 193, 'Econômica', 9),
(1794, 194, 'Econômica', 9),
(1795, 195, 'Econômica', 9),
(1796, 196, 'Econômica', 9),
(1797, 197, 'Econômica', 9),
(1798, 198, 'Econômica', 9),
(1799, 199, 'Econômica', 9),
(1800, 200, 'Econômica', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviao`
--

CREATE TABLE `aviao` (
  `ID_AVIAO` int(11) NOT NULL,
  `CODIGO_AVIAO` varchar(15) NOT NULL,
  `EMPRESA` varchar(100) NOT NULL,
  `TOTAL_ASSENTO` int(3) NOT NULL DEFAULT 200,
  `CRIADO` datetime NOT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aviao`
--

INSERT INTO `aviao` (`ID_AVIAO`, `CODIGO_AVIAO`, `EMPRESA`, `TOTAL_ASSENTO`, `CRIADO`, `MODIFICADO`) VALUES
(1, 'PP-AAB', 'Gol', 200, '2023-04-29 15:41:07', NULL),
(2, 'PR-BCC', 'Azul', 200, '2023-04-29 15:41:36', NULL),
(3, 'PT-DFG', 'LATAM', 200, '2023-04-29 15:42:13', NULL),
(4, 'PR-JKL', 'Azul', 200, '2023-04-29 15:42:53', NULL),
(5, 'PP-CDF', 'Caribair', 200, '2023-04-29 15:43:07', NULL),
(6, 'PC-XYZ', 'Qatar Airways', 200, '2023-04-29 15:43:27', NULL),
(7, 'PR-GOL', 'Gol', 200, '2023-04-29 15:43:46', NULL),
(8, 'PT-PSOL', 'Azul', 200, '2023-04-29 15:43:58', NULL),
(9, 'PP-NOVO', 'LATAM', 200, '2023-04-29 15:44:08', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `ID_CADASTRO` int(11) NOT NULL,
  `EMAIL` varchar(250) NOT NULL,
  `SENHA` varchar(250) NOT NULL,
  `DATA_CADASTRO` datetime NOT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`ID_CADASTRO`, `EMAIL`, `SENHA`, `DATA_CADASTRO`, `MODIFICADO`) VALUES
(1, 'breno@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-04-29 15:35:02', NULL),
(4, 'alan@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-05-04 14:40:43', NULL),
(6, 'violeta@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-05-04 14:52:58', NULL),
(7, 'superman@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2023-05-04 15:06:56', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupom`
--

CREATE TABLE `cupom` (
  `ID_CUPOM` int(11) NOT NULL,
  `CODIGO_CUPOM` varchar(6) NOT NULL,
  `VALOR_DESCONTO` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cupom`
--

INSERT INTO `cupom` (`ID_CUPOM`, `CODIGO_CUPOM`, `VALOR_DESCONTO`) VALUES
(1, 'ABC123', 10),
(2, 'ZXY789', 15),
(3, 'BAG420', 30),
(4, 'VOO666', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `ID_ENDERECO` int(11) NOT NULL,
  `CEP` char(8) NOT NULL,
  `RUA` varchar(300) NOT NULL,
  `NUMERO_ENDERECO` varchar(7) NOT NULL,
  `BAIRRO` varchar(200) NOT NULL,
  `CIDADE` varchar(50) NOT NULL,
  `UF` char(2) NOT NULL,
  `COMPLEMENTO` varchar(200) DEFAULT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`ID_ENDERECO`, `CEP`, `RUA`, `NUMERO_ENDERECO`, `BAIRRO`, `CIDADE`, `UF`, `COMPLEMENTO`, `MODIFICADO`) VALUES
(1, '21922230', 'Rua do Messias', '101', 'Tauá', 'Rio de Janeiro', 'RJ', '', NULL),
(2, '72502230', 'Quadra CL 302', '1', 'Santa Maria', 'Brasília', 'DF', '', NULL),
(8, '41100106', '3ª Travessa Manoel Vieira Leite', '1', 'Pernambués', 'Salvador', 'BA', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escala`
--

CREATE TABLE `escala` (
  `ID_ESCALA` int(11) NOT NULL,
  `HORARIO_CHEGADA_ESCALA` datetime NOT NULL,
  `TEMPO_ESCALA` time NOT NULL,
  `FK_AEROPORTO_ESCALA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `escala`
--

INSERT INTO `escala` (`ID_ESCALA`, `HORARIO_CHEGADA_ESCALA`, `TEMPO_ESCALA`, `FK_AEROPORTO_ESCALA`) VALUES
(77, '2023-04-28 12:29:00', '01:00:00', 8),
(78, '2023-05-01 12:31:00', '01:00:00', 5),
(79, '2023-05-29 12:29:00', '01:00:00', 6),
(80, '2023-05-17 12:14:50', '01:00:00', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `ID_PAGAMENTO` int(11) NOT NULL,
  `STATUS_PAGAMENTO` enum('Pendente','Aprovado','Cancelado') NOT NULL,
  `DATA_PAGAMENTO` datetime NOT NULL,
  `TIPO_PAGAMENTO` enum('Boleto','Crédito','Pix') NOT NULL,
  `FK_RESERVA` int(11) NOT NULL,
  `PARCELAS` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `passageiro`
--

CREATE TABLE `passageiro` (
  `ID_PASSAGEIRO` int(11) NOT NULL,
  `NOME_PASSAGEIRO` varchar(250) NOT NULL,
  `SOBRENOME_PASSAGEIRO` varchar(250) NOT NULL,
  `EMAIL_PASSAGEIRO` varchar(250) NOT NULL,
  `CPF_PASSAGEIRO` char(11) NOT NULL,
  `DATA_NASC_PASSAGEIRO` date NOT NULL,
  `FK_TELEFONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `passageiro`
--

INSERT INTO `passageiro` (`ID_PASSAGEIRO`, `NOME_PASSAGEIRO`, `SOBRENOME_PASSAGEIRO`, `EMAIL_PASSAGEIRO`, `CPF_PASSAGEIRO`, `DATA_NASC_PASSAGEIRO`, `FK_TELEFONE`) VALUES
(1, 'Breno', 'Silva', 'breno@gmail.com', '11144477735', '1961-04-01', 1),
(2, 'Paulo', 'Miklos', 'pmiklos@gmail.com', '34767980038', '1959-01-21', 3),
(3, 'Friedrich', 'Nietzsche', 'ubermensch@gmail.com', '75331671047', '2001-10-15', 4),
(4, 'Fulano', 'dos Santos', 'fulano@gmail.com', '01810413087', '2023-11-19', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `passagem`
--

CREATE TABLE `passagem` (
  `ID_PASSAGEM` int(11) NOT NULL,
  `FK_ASSENTO` int(11) NOT NULL,
  `FK_PASSAGEIRO` int(11) NOT NULL,
  `FK_VOO` int(11) NOT NULL,
  `FK_CUPOM` int(11) DEFAULT NULL,
  `FK_RESERVA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `passagem`
--

INSERT INTO `passagem` (`ID_PASSAGEM`, `FK_ASSENTO`, `FK_PASSAGEIRO`, `FK_VOO`, `FK_CUPOM`, `FK_RESERVA`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 1, 1, 1),
(3, 3, 3, 1, NULL, 2),
(4, 4, 4, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `ID_RESERVA` int(11) NOT NULL,
  `STATUS_RESERVA` enum('Pendente','Confirmada','Cancelada') NOT NULL,
  `VALOR_TOTAL` decimal(10,2) NOT NULL,
  `DATA_RESERVA` datetime NOT NULL,
  `DATA_STATUS` datetime NOT NULL,
  `FK_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reserva`
--

INSERT INTO `reserva` (`ID_RESERVA`, `STATUS_RESERVA`, `VALOR_TOTAL`, `DATA_RESERVA`, `DATA_STATUS`, `FK_USUARIO`) VALUES
(1, 'Pendente', '7200.00', '2023-05-04 17:10:09', '2023-05-04 17:10:09', 1),
(2, 'Pendente', '8000.00', '2023-05-05 19:09:02', '2023-05-05 19:09:02', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rg`
--

CREATE TABLE `rg` (
  `ID_RG` int(11) NOT NULL,
  `NUMERO_RG` char(9) NOT NULL,
  `DATA_EMISSAO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `rg`
--

INSERT INTO `rg` (`ID_RG`, `NUMERO_RG`, `DATA_EMISSAO`) VALUES
(1, '192280399', '2020-04-29'),
(4, '345001643', '2023-05-04'),
(6, '252665624', '2023-05-04'),
(7, '318667198', '2023-05-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `super_admin`
--

CREATE TABLE `super_admin` (
  `ID_SADM` int(11) NOT NULL,
  `NOME_SADM` varchar(100) NOT NULL,
  `EMAIL_SADM` varchar(250) NOT NULL,
  `SENHA_SADM` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `ID_TELEFONE` int(11) NOT NULL,
  `DDD` varchar(2) NOT NULL,
  `NUMERO_TELEFONE` varchar(9) NOT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`ID_TELEFONE`, `DDD`, `NUMERO_TELEFONE`, `MODIFICADO`) VALUES
(1, '11', '123456789', NULL),
(2, '11', '111111111', NULL),
(3, '11', '222222222', NULL),
(4, '11', '456789123', NULL),
(5, '11', '444444444', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `NOME_MEIO` varchar(150) DEFAULT NULL,
  `SOBRENOME` varchar(150) NOT NULL,
  `CPF` char(11) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `FK_CADASTRO` int(11) NOT NULL,
  `FK_RG` int(11) NOT NULL,
  `FK_TELEFONE` int(11) NOT NULL,
  `FK_ENDERECO` int(11) NOT NULL,
  `CRIADO` datetime NOT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOME`, `NOME_MEIO`, `SOBRENOME`, `CPF`, `DATA_NASCIMENTO`, `FK_CADASTRO`, `FK_RG`, `FK_TELEFONE`, `FK_ENDERECO`, `CRIADO`, `MODIFICADO`) VALUES
(1, 'Breno', 'Santana', 'Silva', '11144477735', '1978-04-01', 1, 1, 1, 1, '2023-04-29 15:35:03', NULL),
(4, 'Alan', 'Aruanã', 'Gomes', '33687431045', '2000-05-03', 4, 4, 2, 2, '2023-05-04 14:40:43', NULL),
(6, 'Violeta', 'Aruanã', 'Gomes', '85692856042', '2000-05-03', 6, 6, 2, 2, '2023-05-04 14:52:58', NULL),
(7, 'Friedrich', NULL, 'Nietzsche', '75331671047', '2001-10-15', 7, 7, 4, 8, '2023-05-04 15:06:56', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `voo`
--

CREATE TABLE `voo` (
  `ID_VOO` int(11) NOT NULL,
  `FK_ORIGEM_AERO` int(11) NOT NULL,
  `FK_DESTINO_AERO` int(11) NOT NULL,
  `FK_ESCALA_IDA` int(11) DEFAULT NULL,
  `FK_ESCALA_VOLTA` int(11) DEFAULT NULL,
  `VALOR_PASSAGEM` decimal(10,2) NOT NULL,
  `IDA_HORARIO_PARTIDA` datetime NOT NULL,
  `IDA_HORARIO_CHEGADA` datetime NOT NULL,
  `VOLTA_HORARIO_PARTIDA` datetime DEFAULT NULL,
  `VOLTA_HORARIO_CHEGADA` datetime DEFAULT NULL,
  `FK_AVIAO_IDA` int(11) NOT NULL,
  `FK_AVIAO_VOLTA` int(11) DEFAULT NULL,
  `CRIADO` datetime NOT NULL,
  `MODIFICADO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `voo`
--

INSERT INTO `voo` (`ID_VOO`, `FK_ORIGEM_AERO`, `FK_DESTINO_AERO`, `FK_ESCALA_IDA`, `FK_ESCALA_VOLTA`, `VALOR_PASSAGEM`, `IDA_HORARIO_PARTIDA`, `IDA_HORARIO_CHEGADA`, `VOLTA_HORARIO_PARTIDA`, `VOLTA_HORARIO_CHEGADA`, `FK_AVIAO_IDA`, `FK_AVIAO_VOLTA`, `CRIADO`, `MODIFICADO`) VALUES
(1, 1, 9, 77, 79, '4000.00', '2023-04-27 16:30:00', '2023-04-28 16:29:00', '2023-05-28 16:29:00', '2023-05-29 16:29:00', 1, 4, '2023-04-27 16:30:02', NULL),
(2, 2, 9, NULL, NULL, '4499.99', '2023-04-28 16:30:00', '2023-04-29 16:30:00', '2023-05-29 16:30:00', '2023-05-30 16:30:00', 2, 2, '2023-04-27 16:30:29', NULL),
(3, 5, 9, NULL, NULL, '3799.99', '2023-04-29 16:30:00', '2023-04-30 16:30:00', '2023-05-15 16:30:00', '2023-05-16 16:30:00', 3, 3, '2023-04-27 16:31:00', NULL),
(4, 1, 8, 78, 80, '2999.99', '2023-04-30 16:31:00', '2023-05-01 16:31:00', '2023-05-16 16:31:00', '2023-05-17 16:31:00', 1, 1, '2023-04-27 16:31:54', NULL),
(6, 3, 6, NULL, NULL, '3999.99', '2023-05-01 16:30:00', '2023-05-01 18:00:00', '2023-05-20 16:32:00', '2023-05-21 16:32:00', 2, 2, '2023-04-27 16:32:27', NULL),
(7, 6, 5, NULL, NULL, '3399.99', '2023-05-02 16:30:00', '2023-05-02 19:30:00', NULL, NULL, 3, NULL, '2023-04-27 16:32:53', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADM`),
  ADD UNIQUE KEY `EMAIL_ADM` (`EMAIL_ADM`);

--
-- Índices para tabela `aeroporto`
--
ALTER TABLE `aeroporto`
  ADD PRIMARY KEY (`ID_AEROPORTO`),
  ADD UNIQUE KEY `SIGLA` (`SIGLA`),
  ADD UNIQUE KEY `NOME_AEROPORTO` (`NOME_AEROPORTO`);

--
-- Índices para tabela `assentos`
--
ALTER TABLE `assentos`
  ADD PRIMARY KEY (`ID_ASSENTO`),
  ADD KEY `FK_AVIAO` (`FK_AVIAO`);

--
-- Índices para tabela `aviao`
--
ALTER TABLE `aviao`
  ADD PRIMARY KEY (`ID_AVIAO`),
  ADD UNIQUE KEY `CODIGO_AVIAO` (`CODIGO_AVIAO`);

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`ID_CADASTRO`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Índices para tabela `cupom`
--
ALTER TABLE `cupom`
  ADD PRIMARY KEY (`ID_CUPOM`),
  ADD UNIQUE KEY `CODIGO_CUPOM` (`CODIGO_CUPOM`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`ID_ENDERECO`);

--
-- Índices para tabela `escala`
--
ALTER TABLE `escala`
  ADD PRIMARY KEY (`ID_ESCALA`),
  ADD KEY `FK_AEROPORTO_ESCALA` (`FK_AEROPORTO_ESCALA`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`ID_PAGAMENTO`),
  ADD KEY `FK_RESERVA` (`FK_RESERVA`);

--
-- Índices para tabela `passageiro`
--
ALTER TABLE `passageiro`
  ADD PRIMARY KEY (`ID_PASSAGEIRO`),
  ADD UNIQUE KEY `CPF_PASSAGEIRO` (`CPF_PASSAGEIRO`),
  ADD KEY `FK_TELEFONE` (`FK_TELEFONE`);

--
-- Índices para tabela `passagem`
--
ALTER TABLE `passagem`
  ADD PRIMARY KEY (`ID_PASSAGEM`),
  ADD KEY `FK_PASSAGEIRO` (`FK_PASSAGEIRO`),
  ADD KEY `FK_VOO` (`FK_VOO`),
  ADD KEY `FK_CUPOM` (`FK_CUPOM`),
  ADD KEY `FK_RESERVA` (`FK_RESERVA`),
  ADD KEY `FK_ASSENTO` (`FK_ASSENTO`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_RESERVA`),
  ADD KEY `FK_USUARIO` (`FK_USUARIO`);

--
-- Índices para tabela `rg`
--
ALTER TABLE `rg`
  ADD PRIMARY KEY (`ID_RG`),
  ADD UNIQUE KEY `NUMERO_RG` (`NUMERO_RG`);

--
-- Índices para tabela `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`ID_SADM`),
  ADD UNIQUE KEY `EMAIL_SADM` (`EMAIL_SADM`);

--
-- Índices para tabela `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`ID_TELEFONE`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD KEY `FK_CADASTRO` (`FK_CADASTRO`),
  ADD KEY `FK_RG` (`FK_RG`),
  ADD KEY `FK_TELEFONE` (`FK_TELEFONE`),
  ADD KEY `FK_ENDERECO` (`FK_ENDERECO`);

--
-- Índices para tabela `voo`
--
ALTER TABLE `voo`
  ADD PRIMARY KEY (`ID_VOO`),
  ADD KEY `FK_ORIGEM_AERO` (`FK_ORIGEM_AERO`),
  ADD KEY `FK_DESTINO_AERO` (`FK_DESTINO_AERO`),
  ADD KEY `FK_ESCALA_IDA` (`FK_ESCALA_IDA`),
  ADD KEY `FK_ESCALA_VOLTA` (`FK_ESCALA_VOLTA`),
  ADD KEY `FK_AVIAO_IDA` (`FK_AVIAO_IDA`),
  ADD KEY `FK_AVIAO_VOLTA` (`FK_AVIAO_VOLTA`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_ADM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aeroporto`
--
ALTER TABLE `aeroporto`
  MODIFY `ID_AEROPORTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `assentos`
--
ALTER TABLE `assentos`
  MODIFY `ID_ASSENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1801;

--
-- AUTO_INCREMENT de tabela `aviao`
--
ALTER TABLE `aviao`
  MODIFY `ID_AVIAO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `ID_CADASTRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cupom`
--
ALTER TABLE `cupom`
  MODIFY `ID_CUPOM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `ID_ENDERECO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `escala`
--
ALTER TABLE `escala`
  MODIFY `ID_ESCALA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `ID_PAGAMENTO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `passageiro`
--
ALTER TABLE `passageiro`
  MODIFY `ID_PASSAGEIRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `passagem`
--
ALTER TABLE `passagem`
  MODIFY `ID_PASSAGEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `ID_RESERVA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `rg`
--
ALTER TABLE `rg`
  MODIFY `ID_RG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `ID_SADM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `telefone`
--
ALTER TABLE `telefone`
  MODIFY `ID_TELEFONE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `voo`
--
ALTER TABLE `voo`
  MODIFY `ID_VOO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `assentos`
--
ALTER TABLE `assentos`
  ADD CONSTRAINT `assentos_ibfk_1` FOREIGN KEY (`FK_AVIAO`) REFERENCES `aviao` (`ID_AVIAO`);

--
-- Limitadores para a tabela `escala`
--
ALTER TABLE `escala`
  ADD CONSTRAINT `escala_ibfk_1` FOREIGN KEY (`FK_AEROPORTO_ESCALA`) REFERENCES `aeroporto` (`ID_AEROPORTO`);

--
-- Limitadores para a tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`FK_RESERVA`) REFERENCES `reserva` (`ID_RESERVA`);

--
-- Limitadores para a tabela `passageiro`
--
ALTER TABLE `passageiro`
  ADD CONSTRAINT `passageiro_ibfk_2` FOREIGN KEY (`FK_TELEFONE`) REFERENCES `telefone` (`ID_TELEFONE`);

--
-- Limitadores para a tabela `passagem`
--
ALTER TABLE `passagem`
  ADD CONSTRAINT `passagem_ibfk_1` FOREIGN KEY (`FK_PASSAGEIRO`) REFERENCES `passageiro` (`ID_PASSAGEIRO`),
  ADD CONSTRAINT `passagem_ibfk_2` FOREIGN KEY (`FK_VOO`) REFERENCES `voo` (`ID_VOO`),
  ADD CONSTRAINT `passagem_ibfk_3` FOREIGN KEY (`FK_CUPOM`) REFERENCES `cupom` (`ID_CUPOM`),
  ADD CONSTRAINT `passagem_ibfk_4` FOREIGN KEY (`FK_RESERVA`) REFERENCES `reserva` (`ID_RESERVA`),
  ADD CONSTRAINT `passagem_ibfk_5` FOREIGN KEY (`FK_ASSENTO`) REFERENCES `assentos` (`ID_ASSENTO`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`FK_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`FK_CADASTRO`) REFERENCES `cadastro` (`ID_CADASTRO`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`FK_RG`) REFERENCES `rg` (`ID_RG`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`FK_TELEFONE`) REFERENCES `telefone` (`ID_TELEFONE`),
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`FK_ENDERECO`) REFERENCES `endereco` (`ID_ENDERECO`);

--
-- Limitadores para a tabela `voo`
--
ALTER TABLE `voo`
  ADD CONSTRAINT `voo_ibfk_1` FOREIGN KEY (`FK_ORIGEM_AERO`) REFERENCES `aeroporto` (`ID_AEROPORTO`),
  ADD CONSTRAINT `voo_ibfk_2` FOREIGN KEY (`FK_DESTINO_AERO`) REFERENCES `aeroporto` (`ID_AEROPORTO`),
  ADD CONSTRAINT `voo_ibfk_3` FOREIGN KEY (`FK_ESCALA_IDA`) REFERENCES `escala` (`ID_ESCALA`),
  ADD CONSTRAINT `voo_ibfk_4` FOREIGN KEY (`FK_ESCALA_VOLTA`) REFERENCES `escala` (`ID_ESCALA`),
  ADD CONSTRAINT `voo_ibfk_5` FOREIGN KEY (`FK_AVIAO_IDA`) REFERENCES `aviao` (`ID_AVIAO`),
  ADD CONSTRAINT `voo_ibfk_6` FOREIGN KEY (`FK_AVIAO_VOLTA`) REFERENCES `aviao` (`ID_AVIAO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
