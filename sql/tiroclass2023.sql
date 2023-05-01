-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 28 mars 2023 à 09:47
-- Version du serveur :  8.0.32-0ubuntu0.20.04.2
-- Version de PHP : 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tiroclass2023`
--

-- --------------------------------------------------------

--
-- Structure de la table `tiroir01`
--

CREATE TABLE `tiroir01` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir01`
--

INSERT INTO `tiroir01` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'RESISTANCE', 'Résistance 1,5kΩ', '1,5 1.5 kΩ 1,5kΩ 1.5kΩ', 20),
('C01-L02', 'RESISTANCE', 'Résistance 1,2kΩ', '1,2 1.2 kΩ 1,2kΩ 1.2kΩ', 20),
('C01-L03', 'RESISTANCE', 'Résistance 1kΩ', '1 kΩ 1kΩ 1,0 1.0 1,0kΩ 1.0kΩ', 20),
('C01-L04', 'RESISTANCE', 'Résistance 150Ω', '150 Ω 150Ω 150,0Ω 150.0Ω', 20),
('C01-L05', 'RESISTANCE', 'Résistance 120Ω', '120 Ω 120Ω 120,0Ω 120.0Ω', 20),
('C01-L06', 'RESISTANCE', 'Résistance 100Ω', '100 Ω 100Ω 100,0Ω 100.0Ω', 20),
('C02-L01', 'RESISTANCE', 'Résistance 2,7kΩ', '2,7 2.7 kΩ 2,7kΩ 2.7kΩ', 20),
('C02-L02', 'RESISTANCE', 'Résistance 2,2kΩ', '2,2 2.2 kΩ 2,2kΩ 2.2kΩ', 20),
('C02-L03', 'RESISTANCE', 'Résistance 1,8kΩ', '1,8 1.8 kΩ 1,8kΩ 1.8kΩ', 20),
('C02-L04', 'RESISTANCE', 'Résistance 270Ω', '270 Ω 270Ω 270,0Ω 270.0Ω', 20),
('C02-L05', 'RESISTANCE', 'Résistance 220Ω', '220 Ω 220Ω 220,0Ω 220.0Ω', 20),
('C02-L06', 'RESISTANCE', 'Résistance 180Ω', '180 Ω 180Ω 180,0Ω 180.0Ω', 20),
('C03-L01', 'RESISTANCE', 'Résistance 4,7kΩ', '4,7 4.7 kΩ 4,7kΩ 4.7kΩ', 20),
('C03-L02', 'RESISTANCE', 'Résistance 3,9kΩ', '3,9 3.9 kΩ 3,9kΩ 3.9kΩ', 20),
('C03-L03', 'RESISTANCE', 'Résistance 3,3kΩ', '3,3 3.3 kΩ 3,3kΩ 3.3kΩ', 20),
('C03-L04', 'RESISTANCE', 'Résistance 470Ω', '470 Ω 470Ω 470,0Ω 470.0Ω', 20),
('C03-L05', 'RESISTANCE', 'Résistance 390Ω', '390 Ω 390Ω 390,0Ω 390.0Ω', 20),
('C03-L06', 'RESISTANCE', 'Résistance 330Ω', '330 Ω 330Ω 330,0Ω 330.0Ω', 20),
('C04-L01', 'RESISTANCE', 'Résistance 8,2kΩ', '8,2 8.2 kΩ 8,2kΩ 8.2kΩ', 20),
('C04-L02', 'RESISTANCE', 'Résistance 6,8kΩ', '6,8 6.8 kΩ 6,8kΩ 6.8kΩ', 20),
('C04-L03', 'RESISTANCE', 'Résistance 5,6kΩ', '5,6 5.6 kΩ 5,6kΩ 5.6kΩ', 0),
('C04-L04', 'RESISTANCE', 'Résistance 820Ω', '820 Ω 820Ω 820,0Ω 820.0Ω', 0),
('C04-L05', 'RESISTANCE', 'Résistance 680Ω', '680 Ω 680Ω 680,0Ω 680.0Ω', 0),
('C04-L06', 'RESISTANCE', 'Résistance 560Ω', '560 Ω 560Ω 560,0Ω 560.0Ω', 0),
('C05-L01', 'EMPTY', '', '', 0),
('C05-L02', 'EMPTY', '', '', 0),
('C06-L01', 'RESISTANCE', 'Résistance 150kΩ', '150 kΩ 150kΩ 150,0kΩ 150.0kΩ', 0),
('C06-L02', 'RESISTANCE', 'Résistance 120kΩ', '120 kΩ 120kΩ 120,0kΩ 120.0kΩ', 0),
('C06-L03', 'RESISTANCE', 'Résistance 100kΩ', '100 kΩ 100kΩ 100,0kΩ 100.0kΩ', 0),
('C06-L04', 'RESISTANCE', 'Résistance 15kΩ', '15 kΩ 15kΩ 15,0kΩ 15.0kΩ', 0),
('C06-L05', 'RESISTANCE', 'Résistance 12kΩ', '12 kΩ 12kΩ 12,0kΩ 12.0kΩ', 0),
('C06-L06', 'RESISTANCE', 'Résistance 10kΩ', '10 kΩ 10kΩ 10,0kΩ 10.0kΩ', 0),
('C07-L01', 'RESISTANCE', 'Résistance 270kΩ', '270 kΩ 270kΩ 270,0kΩ 270.0kΩ', 0),
('C07-L02', 'RESISTANCE', 'Résistance 220kΩ', '220 kΩ 220kΩ 220,0kΩ 220.0kΩ', 0),
('C07-L03', 'RESISTANCE', 'Résistance 180kΩ', '180 kΩ 180kΩ 180,0kΩ 180.0kΩ', 0),
('C07-L04', 'RESISTANCE', 'Résistance 27kΩ', '27 kΩ 27kΩ 27,0kΩ 27.0kΩ', 0),
('C07-L05', 'RESISTANCE', 'Résistance 22kΩ', '22 kΩ 22kΩ 22,0kΩ 22.0kΩ', 0),
('C07-L06', 'RESISTANCE', 'Résistance 18kΩ', '18 kΩ 18kΩ 18,0kΩ 18.0kΩ', 0),
('C08-L01', 'RESISTANCE', 'Résistance 470kΩ', '470 kΩ 470kΩ 470,0kΩ 470.0kΩ', 0),
('C08-L02', 'RESISTANCE', 'Résistance 390kΩ', '390 kΩ 390kΩ 390,0kΩ 390.0kΩ', 0),
('C08-L03', 'RESISTANCE', 'Résistance 330kΩ', '330 kΩ 330kΩ 330,0kΩ 330.0kΩ', 0),
('C08-L04', 'RESISTANCE', 'Résistance 47kΩ', '47 kΩ 47kΩ 47,0kΩ 47.0kΩ', 0),
('C08-L05', 'RESISTANCE', 'Résistance 39kΩ', '39 kΩ 39kΩ 39,0kΩ 39.0kΩ', 0),
('C08-L06', 'RESISTANCE', 'Résistance 33kΩ', '33 kΩ 33kΩ 33,0kΩ 33.0kΩ', 0),
('C09-L01', 'RESISTANCE', 'Résistance 820kΩ', '820 kΩ 820kΩ 820,0kΩ 820.0kΩ', 0),
('C09-L02', 'RESISTANCE', 'Résistance 680kΩ', '680 kΩ 680kΩ 680,0kΩ 680.0kΩ', 0),
('C09-L03', 'RESISTANCE', 'Résistance 560kΩ', '560 kΩ 560kΩ 560,0kΩ 560.0kΩ', 0),
('C09-L04', 'RESISTANCE', 'Résistance 82kΩ', '82 kΩ 82kΩ 82,0kΩ 82.0kΩ', 0),
('C09-L05', 'RESISTANCE', 'Résistance 68kΩ', '68 kΩ 68kΩ 68,0kΩ 68.0kΩ', 0),
('C09-L06', 'RESISTANCE', 'Résistance 56kΩ', '56 kΩ 56kΩ 56,0kΩ 56.0kΩ', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir02`
--

CREATE TABLE `tiroir02` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir02`
--

INSERT INTO `tiroir02` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L02', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L03', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L04', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L05', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L06', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L07', 'RESISTANCE', 'Résistance Ω', '', 0),
('C01-L08', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L01', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L02', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L03', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L04', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L05', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L06', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L07', 'RESISTANCE', 'Résistance Ω', '', 0),
('C02-L08', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L01', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L02', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L03', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L04', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L05', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L06', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L07', 'RESISTANCE', 'Résistance Ω', '', 0),
('C03-L08', 'RESISTANCE', 'Résistance Ω', '', 0),
('C04-L01', 'RESISTANCE', 'Potentiomètre 10kΩ 10 tours', '10tr 10tours 10 tr trs tours tour 10trs 10kΩ 10 kΩ', 0),
('C04-L02', 'RESISTANCE', 'Potentiomère 100kΩ 10 tours', '10tr 10tours 10 tr trs tours tour 10trs 100kΩ 100 kΩ', 0),
('C04-L03', 'RESISTANCE', 'Potentiomètre 1MΩ 10 tours', '10tr 10tours 10 tr trs tours tour 10trs 1MΩ 1 MΩ', 0),
('C04-L04', 'UNKNOWN', 'à ranger', '', 0),
('C04-L05', 'RESISTANCE', 'Potentiomètre 1MΩ 1 tour', '1tr 1tours 1 tr trs tours tour 1trs 1MΩ 1 MΩ', 0),
('C04-L06', 'RESISTANCE', 'Résistances en dérivation', 'dérivation', 0),
('C04-L07', 'RESISTANCE', 'Potentiomètre 10kΩ 1 tour', '1tr 1tours 1 tr trs tours tour 1trs 10kΩ 10 kΩ', 0),
('C04-L08', 'RESISTANCE', 'Potentiomètre 100kΩ 1 tour', '1tr 1tours 1 tr trs tours tour 1trs 100kΩ 100 kΩ', 0),
('C05-L01', 'EMPTY', 'à ranger', '', 0),
('C05-L02', 'EMPTY', 'à ranger', '', 0),
('C06-L01', 'UNKNOWN', '', '', 0),
('C06-L02', 'UNKNOWN', '', '', 0),
('C06-L03', 'UNKNOWN', '', '', 0),
('C06-L04', 'UNKNOWN', '', '', 0),
('C06-L05', 'RESISTANCE', 'Résistance 1,5MΩ', '1,5 1.5 MΩ 1,5MΩ 1.5MΩ', 0),
('C06-L06', 'RESISTANCE', 'Résistance 1,2MΩ', '1,2 1.2 MΩ 1,2MΩ 1.2MΩ', 0),
('C06-L07', 'RESISTANCE', 'Résistance 1MΩ', '1 MΩ 1MΩ 1,0MΩ 1.0MΩ', 0),
('C07-L01', 'UNKNOWN', '', '', 0),
('C07-L02', 'UNKNOWN', '', '', 0),
('C07-L03', 'UNKNOWN', '', '', 0),
('C07-L04', 'UNKNOWN', '', '', 0),
('C07-L05', 'RESISTANCE', 'Résistance 2,7MΩ', '2,7 2.7 MΩ 2,7MΩ 2.7MΩ', 0),
('C07-L06', 'RESISTANCE', 'Résistance 2,2MΩ', '2,2 2.2 MΩ 2,2MΩ 2.2MΩ', 0),
('C07-L07', 'RESISTANCE', 'Résistance 1,8MΩ', '1,8 1.8 MΩ 1,8MΩ 1.8MΩ', 0),
('C08-L01', 'UNKNOWN', '', '', 0),
('C08-L02', 'UNKNOWN', '', '', 0),
('C08-L03', 'UNKNOWN', '', '', 0),
('C08-L04', 'UNKNOWN', '', '', 0),
('C08-L05', 'RESISTANCE', 'Résistance 4,7MΩ', '4,7 4.7 MΩ 4,7MΩ 4.7MΩ', 0),
('C08-L06', 'RESISTANCE', 'Résistance 3,9MΩ', '3,9 3.9 MΩ 3,9MΩ 3.9MΩ', 0),
('C08-L07', 'RESISTANCE', 'Résistance 3,3MΩ', '3,3 3.3 MΩ 3,3MΩ 3.3MΩ', 0),
('C09-L01', 'UNKNOWN', '', '', 0),
('C09-L02', 'UNKNOWN', '', '', 0),
('C09-L03', 'UNKNOWN', '', '', 0),
('C09-L04', 'UNKNOWN', '', '', 0),
('C09-L05', 'RESISTANCE', 'Résistance 8,2MΩ', '8,2 8.2 MΩ 8,2MΩ 8.2MΩ', 0),
('C09-L06', 'RESISTANCE', 'Résistance 6,8MΩ', '6,8 6.8 MΩ 6,8MΩ 6.8MΩ', 0),
('C09-L07', 'RESISTANCE', 'Résistance 5,6MΩ', '5,6 5.6 MΩ 5,6MΩ 5.6MΩ', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir03`
--

CREATE TABLE `tiroir03` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir03`
--

INSERT INTO `tiroir03` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'IR', 'Télécommande infra-rouge', 'IR infra inrarouge rouge rouges infrarouges télécommande', 1),
('C01-L02', 'DEL', 'Led blanches', 'blanc blancs blanche blanches', 0),
('C01-L03', 'UNKNOWN', 'à ranger', '', 0),
('C01-L04', 'DIGITALDISPLAY', 'Afficheur Numérique', '', 0),
('C01-L05', 'OTHER', 'Connecteur 5353B', '5353B', 0),
('C01-L06', 'OTHER', 'Transistor MOSFET', 'MOSFET', 0),
('C01-L07', 'UNKNOWN', '', '', 0),
('C01-L08', 'RESISTANCE', 'Résistances', '', 0),
('C02-L01', 'OTHER', 'Condensateur DTC103', 'DTC103', 0),
('C02-L02', 'DEL', 'Led jaunes', 'jaune jaunes', 0),
('C02-L03', 'OTHER', 'Condensateur', '', 0),
('C02-L04', 'DIGITALDISPLAY', 'Afficheur Numérique', '', 0),
('C02-L05', 'OTHER', 'Connecteur 16 branches', '16', 0),
('C02-L06', 'OTHER', 'Connecteur', '', 0),
('C02-L07', 'RESISTANCE', 'Thermistance 10kΩ', '10 kΩ 10kΩ 10,0kΩ 10.0kΩ', 0),
('C02-L08', 'RESISTANCE', 'Résistance 0Ω', '0 kΩ 0kΩ 0,0kΩ 0.0kΩ', 0),
('C03-L01', 'OTHER', 'Transistor 2N7000', '2N7000 2N 7000', 0),
('C03-L02', 'DEL', 'Led verts clair', 'vert vertes verts clair claires claire clairs', 0),
('C03-L03', 'RESISTANCE', 'Potentiomètre 10kΩ-145MΩ', '10 kΩ 10kΩ 10,0kΩ 10.0kΩ 145 MΩ 145MΩ 145,0MΩ 145.0MΩ', 0),
('C03-L04', 'UNKNOWN', '', '', 0),
('C03-L05', 'UNKNOWN', '', '', 0),
('C03-L06', 'MICROCONTROLLER', 'Micro-controlleur', '', 0),
('C03-L07', 'OTHER', 'BC54BB', 'BC54BB', 0),
('C03-L08', 'UNKNOWN', '', '', 0),
('C04-L01', 'BUTTON', 'Bouton poussoir', 'poussoir', 0),
('C04-L02', 'DEL', 'Leds rouges', 'rouge rouges', 0),
('C04-L03', 'UNKNOWN', '', '', 0),
('C04-L04', 'DEL', 'Led roses', 'rose roses', 0),
('C04-L05', 'OTHER', 'Transistor MOSFET', 'MOSFET', 0),
('C04-L06', 'SWITCH', 'Levier 2 états', '2 état états etat etats', 0),
('C04-L07', 'OTHER', 'Fusibles', '', 0),
('C04-L08', 'OTHER', 'Condensateur', '', 0),
('C05-L01', 'EMPTY', '', '', 0),
('C05-L02', 'EMPTY', '', '', 0),
('C06-L01', 'UNKNOWN', '', '', 0),
('C06-L02', 'UNKNOWN', '', '', 0),
('C06-L03', 'UNKNOWN', '', '', 0),
('C06-L04', 'UNKNOWN', '', '', 0),
('C06-L05', 'UNKNOWN', '', '', 0),
('C06-L06', 'MICROCONTROLLER', 'MC 1488', 'MC 1488 MC1488', 0),
('C06-L07', 'MICROCONTROLLER', 'MC 1489', 'MC 1489 MC1489', 0),
('C06-L08', 'MICROCONTROLLER', 'NE 555', 'NE 555 NE555', 0),
('C07-L01', 'UNKNOWN', '2N1711', '2N1711 2N 1711', 0),
('C07-L02', 'UNKNOWN', '', '', 0),
('C07-L03', 'CAPACITOR', 'Condensateur', '', 0),
('C07-L04', 'UNKNOWN', '', '', 0),
('C07-L05', 'MICROCONTROLLER', 'VCN 2803', 'VCN 2803 VCN2803', 0),
('C07-L06', 'MICROCONTROLLER', 'PC 817', 'PC 817 PC817', 0),
('C07-L07', 'MICROCONTROLLER', '74 LS 541', '74LS541 74 LS541 74LS 541 74 LS 541', 0),
('C07-L08', 'MICROCONTROLLER', '74128', '74128', 0),
('C08-L01', 'UNKNOWN', '', '', 0),
('C08-L02', 'UNKNOWN', '', '', 0),
('C08-L03', 'UNKNOWN', 'CI LOGIQUES', 'CI ci', 0),
('C08-L04', 'BUS', 'I2C', 'i2c I2C', 0),
('C08-L05', 'MICROCONTROLLER', 'MC 14051', 'MC 14051 MC14051', 0),
('C08-L06', 'MICROCONTROLLER', 'ADC 804', 'ADC 804 ADC804', 0),
('C08-L07', 'MICROCONTROLLER', 'ADC 0808', 'ADC 0808 ADC0808', 0),
('C08-L08', 'UNKNOWN', '', '', 0),
('C09-L01', 'UNKNOWN', '', '', 0),
('C09-L02', 'UNKNOWN', '', '', 0),
('C09-L03', 'UNKNOWN', '', '', 0),
('C09-L04', 'UNKNOWN', '', '', 0),
('C09-L05', 'MICROCONTROLLER', 'VCN 2003', 'VCN 2003 VCN2003', 0),
('C09-L06', 'MICROCONTROLLER', '74 LS 640', '74 LS 640 74LS 640 74 LS640 74LS640', 0),
('C09-L07', 'MICROCONTROLLER', '74 LS 288', '74 LS 288 74LS 288 74 LS288 74LS288', 0),
('C09-L08', 'MICROCONTROLLER', '74 LS 632', '74 LS 632 74LS 632 74 LS632 74LS632', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir04`
--

CREATE TABLE `tiroir04` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir04`
--

INSERT INTO `tiroir04` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'UNKNOWN', '', '', 0),
('C02-L01', 'UNKNOWN', '', '', 0),
('C03-L01', 'UNKNOWN', '', '', 0),
('C03-L02', 'UNKNOWN', '', '', 0),
('C03-L03', 'UNKNOWN', '', '', 0),
('C03-L04', 'UNKNOWN', '', '', 0),
('C04-L01', 'UNKNOWN', '', '', 0),
('C04-L02', 'UNKNOWN', '', '', 0),
('C04-L03', 'UNKNOWN', '', '', 0),
('C04-L04', 'PORT', 'Port DVI', 'dvi DVI', 3),
('C04-L05', 'UNKNOWN', '', '', 0),
('C04-L06', 'PORT', '', '', 0),
('C04-L07', 'PORT', '', '', 0),
('C04-L08', 'PORT', 'Port VGA', 'vga VGA', 0),
('C05-L01', 'UNKNOWN', '', '', 0),
('C06-L01', 'UNKNOWN', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir05`
--

CREATE TABLE `tiroir05` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir05`
--

INSERT INTO `tiroir05` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'UNKNOWN', '', '', 0),
('C02-L01', 'UNKNOWN', '', '', 0),
('C02-L02', 'UNKNOWN', '', '', 0),
('C02-L03', 'UNKNOWN', '', '', 0),
('C02-L04', 'UNKNOWN', '', '', 0),
('C02-L05', 'UNKNOWN', '', '', 0),
('C02-L06', 'UNKNOWN', '', '', 0),
('C03-L01', 'UNKNOWN', '', '', 0),
('C03-L02', 'UNKNOWN', '', '', 0),
('C03-L03', 'UNKNOWN', '', '', 0),
('C03-L04', 'UNKNOWN', '', '', 0),
('C03-L05', 'UNKNOWN', '', '', 0),
('C03-L06', 'UNKNOWN', '', '', 0),
('C03-L07', 'UNKNOWN', '', '', 0),
('C04-L01', 'UNKNOWN', '', '', 0),
('C04-L02', 'UNKNOWN', '', '', 0),
('C04-L03', 'UNKNOWN', '', '', 0),
('C04-L04', 'UNKNOWN', '', '', 0),
('C04-L05', 'UNKNOWN', '', '', 0),
('C04-L06', 'UNKNOWN', '', '', 0),
('C04-L07', 'UNKNOWN', '', '', 0),
('C04-L08', 'UNKNOWN', '', '', 0),
('C04-L09', 'UNKNOWN', '', '', 0),
('C05-L01', 'UNKNOWN', '', '', 0),
('C05-L02', 'UNKNOWN', '', '', 0),
('C05-L03', 'UNKNOWN', '', '', 0),
('C05-L04', 'UNKNOWN', '', '', 0),
('C06-L01', 'UNKNOWN', '', '', 0),
('C06-L02', 'UNKNOWN', '', '', 0),
('C06-L03', 'UNKNOWN', '', '', 0),
('C06-L04', 'UNKNOWN', '', '', 0),
('C06-L05', 'UNKNOWN', '', '', 0),
('C06-L06', 'UNKNOWN', '', '', 0),
('C06-L07', 'UNKNOWN', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir06`
--

CREATE TABLE `tiroir06` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir06`
--

INSERT INTO `tiroir06` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'UNKNOWN', '', '', 0),
('C02-L01', 'UNKNOWN', '', '', 0),
('C03-L01', 'UNKNOWN', '', '', 0),
('C04-L01', 'UNKNOWN', '', '', 0),
('C04-L02', 'UNKNOWN', '', '', 0),
('C04-L03', 'UNKNOWN', '', '', 0),
('C04-L04', 'UNKNOWN', '', '', 0),
('C04-L05', 'UNKNOWN', '', '', 0),
('C05-L01', 'UNKNOWN', '', '', 0),
('C05-L02', 'UNKNOWN', '', '', 0),
('C05-L03', 'UNKNOWN', '', '', 0),
('C05-L04', 'UNKNOWN', '', '', 0),
('C06-L01', 'UNKNOWN', '', '', 0),
('C06-L02', 'UNKNOWN', '', '', 0),
('C06-L03', 'UNKNOWN', '', '', 0),
('C06-L04', 'UNKNOWN', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir07`
--

CREATE TABLE `tiroir07` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir07`
--

INSERT INTO `tiroir07` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'CUSTOM', 'Divers', 'all tout', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir08`
--

CREATE TABLE `tiroir08` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir08`
--

INSERT INTO `tiroir08` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'CUSTOM', 'Divers', 'all tout', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tiroir09`
--

CREATE TABLE `tiroir09` (
  `ID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TYPE` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TAGS` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `QUANTITY` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tiroir09`
--

INSERT INTO `tiroir09` (`ID`, `TYPE`, `NAME`, `TAGS`, `QUANTITY`) VALUES
('C01-L01', 'CUSTOM', 'Divers', 'all tout', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tiroir01`
--
ALTER TABLE `tiroir01`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir02`
--
ALTER TABLE `tiroir02`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir03`
--
ALTER TABLE `tiroir03`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir04`
--
ALTER TABLE `tiroir04`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir05`
--
ALTER TABLE `tiroir05`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir06`
--
ALTER TABLE `tiroir06`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir07`
--
ALTER TABLE `tiroir07`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir08`
--
ALTER TABLE `tiroir08`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tiroir09`
--
ALTER TABLE `tiroir09`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
