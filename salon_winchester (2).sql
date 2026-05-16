-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2025 at 02:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salon_winchester`
--

-- --------------------------------------------------------

--
-- Table structure for table `achizitii`
--

CREATE TABLE `achizitii` (
  `id_achiz` int(11) NOT NULL,
  `nr_factura` int(11) DEFAULT NULL,
  `data_achiz` datetime DEFAULT NULL,
  `id_furnizor` int(11) NOT NULL,
  `id_ang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achizitii`
--

INSERT INTO `achizitii` (`id_achiz`, `nr_factura`, `data_achiz`, `id_furnizor`, `id_ang`) VALUES
(1, 1001, '2024-01-10 10:00:00', 1, 1),
(2, 1002, '2024-01-15 11:00:00', 2, 2),
(3, 1003, '2024-02-01 12:00:00', 3, 3),
(4, 1004, '2024-02-20 10:30:00', 4, 4),
(5, 1005, '2024-03-05 09:00:00', 5, 5),
(6, 1006, '2024-03-15 14:00:00', 6, 6),
(7, 1007, '2024-04-01 15:00:00', 7, 7),
(8, 1008, '2024-04-10 16:00:00', 8, 8),
(9, 1009, '2024-05-05 10:00:00', 9, 9),
(10, 1010, '2024-05-20 11:00:00', 10, 10),
(11, 1011, '2024-06-01 12:00:00', 11, 11),
(12, 1012, '2024-06-15 13:00:00', 12, 12),
(13, 1013, '2024-07-01 09:00:00', 13, 13),
(14, 1014, '2024-07-10 10:00:00', 14, 14),
(15, 1015, '2024-07-20 11:00:00', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `angajati`
--

CREATE TABLE `angajati` (
  `id_ang` int(11) NOT NULL,
  `id_salon` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `prenume` varchar(50) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `data_nasterii` date DEFAULT NULL,
  `nr_tel` varchar(20) DEFAULT NULL,
  `cnp` varchar(13) DEFAULT NULL,
  `salariu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `angajati`
--

INSERT INTO `angajati` (`id_ang`, `id_salon`, `nume`, `prenume`, `adresa`, `data_nasterii`, `nr_tel`, `cnp`, `salariu`) VALUES
(1, 1, 'Vasilescu', 'Ion', 'Str. Soarelui 1', '1985-05-10', '0799000001', '1850510123456', 4500),
(2, 2, 'Popa', 'Raluca', 'Str. Lunii 2', '1995-11-30', '0799000004', '2951130123456', 3800),
(3, 3, 'Ionescu', 'Marius', 'Str. Stelelor 3', '1988-02-15', '0799000003', '1880215123456', 4200),
(4, 4, 'Stan', 'Andreea', 'Str. Marte 4', '1990-08-20', '0799000002', '2900820123456', 5000),
(5, 5, 'Dumitrescu', 'George', 'Str. Jupiter 5', '1970-01-05', '0799000005', '1700105123456', 6000),
(6, 6, 'Marin', 'Elena', 'Str. Venus 6', '1992-06-12', '0799000006', '2920612123456', 4700),
(7, 7, 'Dobre', 'Cristian', 'Str. Saturn 7', '2004-03-25', '0799000007', '5040325123456', 3000),
(8, 8, 'Gheorghe', 'Alina', 'Str. Pluto 8', '1987-09-18', '0799000008', '2870918123456', 4900),
(9, 9, 'Constantin', 'Dan', 'Str. Terra 9', '1993-07-07', '0799000009', '1930707123456', 4300),
(10, 10, 'Tudor', 'Simona', 'Str. Galaxiei 10', '1998-12-01', '0799000010', '2981201123456', 4100),
(11, 11, 'Lungu', 'Adrian', 'Str. Cometei 11', '1982-04-14', '0799000011', '1820414123456', 5500),
(12, 12, 'Barbu', 'Oana', 'Str. Meteor 12', '1996-10-22', '0799000012', '2961022123456', 3900),
(13, 13, 'Serban', 'Vlad', 'Str. Norilor 13', '1991-05-05', '0799000013', '1910505123456', 4600),
(14, 14, 'Lazar', 'Irina', 'Str. Ploii 14', '1989-11-11', '0799000014', '2891111123456', 4800),
(15, 15, 'Mihai', 'Sorin', 'Str. Vantului 15', '1994-02-28', '0799000015', '1940228123456', 4400);

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

CREATE TABLE `clienti` (
  `id_client` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `prenume` varchar(50) DEFAULT NULL,
  `nr_tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clienti`
--

INSERT INTO `clienti` (`id_client`, `nume`, `prenume`, `nr_tel`) VALUES
(1, 'Popescu', 'Andrei', '0722100100'),
(2, 'Ionescu', 'Maria', '0722100101'),
(3, 'Mirescu', 'Elena', '0722100102'),
(4, 'Georgescu', 'Vlad', '0722100103'),
(5, 'Dumitru', 'Ana', '0722100104'),
(6, 'Stoica', 'Mihai', '0722100105'),
(7, 'Radu', 'Cristina', '0722100106'),
(8, 'Munteanu', 'Alexandru', '0722100107'),
(9, 'Matei', 'Ioana', '0722100108'),
(10, 'Florian', 'George', '0722100109'),
(11, 'Toma', 'Diana', '0722100110'),
(12, 'Nistor', 'Robert', '0722100111'),
(13, 'Diaconu', 'Larisa', '0722100112'),
(14, 'Suciu', 'Paul', '0722100113'),
(15, 'Voinea', 'Raluca', '0722100114');

-- --------------------------------------------------------

--
-- Table structure for table `detalii_achiz`
--

CREATE TABLE `detalii_achiz` (
  `id_achiz` int(11) NOT NULL,
  `id_produs` int(11) NOT NULL,
  `cantitate` int(11) DEFAULT NULL,
  `pret_unitar` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalii_achiz`
--

INSERT INTO `detalii_achiz` (`id_achiz`, `id_produs`, `cantitate`, `pret_unitar`) VALUES
(1, 1, 10, 45.00),
(1, 23654, 10, 45.00),
(2, 2, 20, 30.00),
(2, 58902, 20, 30.00),
(3, 3, 15, 25.00),
(3, 11234, 15, 25.00),
(4, 4, 10, 50.00),
(4, 99821, 10, 50.00),
(5, 5, 2, 1800.00),
(5, 34567, 2, 1800.00),
(6, 6, 50, 5.00),
(6, 77401, 50, 5.00),
(7, 7, 10, 35.00),
(7, 20202, 10, 35.00),
(8, 8, 20, 40.00),
(8, 88590, 20, 40.00),
(9, 9, 3, 400.00),
(9, 44112, 3, 400.00),
(10, 10, 5, 250.00),
(10, 63211, 5, 250.00),
(11, 11, 10, 60.00),
(11, 10055, 10, 60.00),
(12, 12, 5, 120.00),
(12, 55999, 5, 120.00),
(13, 13, 20, 15.00),
(13, 33201, 20, 15.00),
(14, 14, 10, 35.00),
(14, 70809, 10, 35.00),
(15, 15, 4, 300.00),
(15, 45001, 4, 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `detalii_programari`
--

CREATE TABLE `detalii_programari` (
  `id_programare` int(11) NOT NULL,
  `id_serviciu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalii_programari`
--

INSERT INTO `detalii_programari` (`id_programare`, `id_serviciu`) VALUES
(1, 1),
(1, 9),
(2, 2),
(3, 4),
(4, 11),
(5, 1),
(6, 6),
(7, 1),
(8, 5),
(9, 7),
(10, 13),
(11, 1),
(12, 3),
(13, 9),
(14, 7),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `id_programare` int(11) NOT NULL,
  `nota` int(11) DEFAULT NULL,
  `comentariu` varchar(500) DEFAULT NULL,
  `data_feedback` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `id_programare`, `nota`, `comentariu`, `data_feedback`) VALUES
(1, 1, 5, 'Super profesionist!', '2024-06-01 12:00:00'),
(2, 2, 5, 'S-au grabit la cererea mea', '2024-06-01 13:00:00'),
(3, 3, 5, 'Multumita de culoare', '2024-06-02 12:00:00'),
(4, 13, 5, 'Mi-au aranjat mustata perfect', '2024-06-04 10:00:00'),
(5, 5, 5, 'Rapid si bine', '2024-06-03 17:00:00'),
(6, 6, 5, 'Raluca e minunata!', '2024-06-03 15:00:00'),
(7, 7, 3, 'Prea scump pentru ce ofera', '2024-06-04 13:00:00'),
(8, 8, 5, 'Servicii de 5 stele', '2024-06-05 18:00:00'),
(9, 9, 5, 'Am revenit si nu regret', '2024-07-01 12:00:00'),
(10, 10, 5, 'Top 3 cele mai amuzante doamne', '2024-07-02 12:30:00'),
(11, 11, 5, 'Personal amabil', '2024-07-03 14:00:00'),
(12, 12, 5, 'Cea mai buna tunsoare!', '2024-07-04 18:30:00'),
(13, 13, 5, 'Barba arata genial', '2024-07-05 10:00:00'),
(14, 14, 5, 'Revin oricand', '2024-07-10 12:00:00'),
(15, 15, 4, 'Mi-au dat o cafea din partea casei :)', '2024-07-15 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `furnizori`
--

CREATE TABLE `furnizori` (
  `id_furnizor` int(11) NOT NULL,
  `nume_furnizor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furnizori`
--

INSERT INTO `furnizori` (`id_furnizor`, `nume_furnizor`) VALUES
(1, 'Beauty Distribution SRL'),
(2, 'Professional Hair SA'),
(3, 'Total Care Logistics'),
(4, 'Salon Expert Provider'),
(5, 'Cosmetics Import-Export'),
(6, 'Lama Fina SRL'),
(7, 'Lux Beauty Supplies'),
(8, 'Top Scissors Romania'),
(9, 'Eco Shampoo Distrib'),
(10, 'Color Master Suppliers'),
(11, 'Nails & Co Distribution'),
(12, 'Barber Shop Supplies'),
(13, 'Green Cosmetics'),
(14, 'Profi Tools SRL'),
(15, 'Hair Care Solutions'),
(16, 'Beauty Distribution SRL'),
(17, 'Professional Hair SA'),
(18, 'Total Care Logistics'),
(19, 'Salon Expert Provider'),
(20, 'Cosmetics Import-Export'),
(21, 'Lama Fina SRL'),
(22, 'Lux Beauty Supplies'),
(23, 'Top Scissors Romania'),
(24, 'Eco Shampoo Distrib'),
(25, 'Color Master Suppliers'),
(26, 'Nails & Co Distribution'),
(27, 'Barber Shop Supplies'),
(28, 'Green Cosmetics'),
(29, 'Profi Tools SRL'),
(30, 'Hair Care Solutions'),
(31, 'Beauty Distribution SRL'),
(32, 'Professional Hair SA'),
(33, 'Total Care Logistics'),
(34, 'Salon Expert Provider'),
(35, 'Cosmetics Import-Export'),
(36, 'Lama Fina SRL'),
(37, 'Lux Beauty Supplies'),
(38, 'Top Scissors Romania'),
(39, 'Eco Shampoo Distrib'),
(40, 'Color Master Suppliers'),
(41, 'Nails & Co Distribution'),
(42, 'Barber Shop Supplies'),
(43, 'Green Cosmetics'),
(44, 'Profi Tools SRL'),
(45, 'Hair Care Solutions');

-- --------------------------------------------------------

--
-- Table structure for table `materiale`
--

CREATE TABLE `materiale` (
  `id_produs` int(11) NOT NULL,
  `denumire` varchar(100) DEFAULT NULL,
  `garantie` varchar(50) DEFAULT NULL,
  `data_casare` datetime DEFAULT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materiale`
--

INSERT INTO `materiale` (`id_produs`, `denumire`, `garantie`, `data_casare`, `id_prod`) VALUES
(10055, 'Ulei Argan', '3 ani', '2027-01-01 00:00:00', 11),
(11234, 'Fixativ Puternic', '2 ani', '2026-03-15 00:00:00', 3),
(20202, 'Spray Calmant', '2 ani', '2026-08-01 00:00:00', 7),
(23654, 'Sampon Reparator 1L', '2 ani', '2026-01-01 00:00:00', 1),
(33201, 'Gel Par', '2 ani', '2026-09-01 00:00:00', 13),
(34567, 'Uscator Profesional', '5 ani', '2030-01-01 00:00:00', 5),
(44112, 'Placa de Par', '4 ani', '2029-01-01 00:00:00', 9),
(45001, 'Masina Tuns', '3 ani', '2028-01-01 00:00:00', 15),
(55999, 'Tratament Plex', '2 ani', '2026-07-01 00:00:00', 12),
(58902, 'Vopsea Rosu Intens', '3 ani', '2027-05-01 00:00:00', 2),
(63211, 'Forfecuta Unghii', '1 an', '2035-01-01 00:00:00', 10),
(70809, 'Sampon Nuantator', '2 ani', '2026-11-01 00:00:00', 14),
(77401, 'Lame Barbierit Set', '1 luna', '2025-06-01 00:00:00', 6),
(88590, 'Oja Semipermanenta Rosie', '2 ani', '2026-02-01 00:00:00', 8),
(99821, 'Masca Hidratanta', '1 an', '2025-12-01 00:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `producator`
--

CREATE TABLE `producator` (
  `id_prod` int(11) NOT NULL,
  `nume_prod` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producator`
--

INSERT INTO `producator` (`id_prod`, `nume_prod`) VALUES
(1, 'L\'Oreal Professionnel'),
(2, 'Wella Professionals'),
(3, 'Schwarzkopf'),
(4, 'Kerastase'),
(5, 'Dyson'),
(6, 'Gillette'),
(7, 'Nivea'),
(8, 'OPI'),
(9, 'Babyliss Pro'),
(10, 'Jaguar Solingen'),
(11, 'Moroccanoil'),
(12, 'Olaplex'),
(13, 'Keune'),
(14, 'Alfaparf Milano'),
(15, 'Philips');

-- --------------------------------------------------------

--
-- Table structure for table `programari`
--

CREATE TABLE `programari` (
  `id_programare` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_ang` int(11) NOT NULL,
  `id_salon` int(11) NOT NULL,
  `data_ora` datetime DEFAULT NULL,
  `tip_programare` varchar(50) DEFAULT NULL,
  `preferinta_coafor` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programari`
--

INSERT INTO `programari` (`id_programare`, `id_client`, `id_ang`, `id_salon`, `data_ora`, `tip_programare`, `preferinta_coafor`) VALUES
(1, 1, 1, 1, '2024-06-01 10:00:00', 'Telefonic', 'Da'),
(2, 2, 2, 2, '2024-06-01 11:30:00', 'Walk-in', 'Nu'),
(3, 3, 3, 3, '2024-06-02 09:00:00', 'Telefonic', 'Da'),
(4, 4, 4, 4, '2024-06-02 14:00:00', 'Telefonic', 'Nu'),
(5, 5, 5, 5, '2024-06-03 16:00:00', 'Walk-in', 'Nu'),
(6, 15, 2, 2, '2024-06-03 10:00:00', 'Telefonic', 'Da'),
(7, 7, 7, 7, '2024-06-04 12:00:00', 'Walk-in', 'Nu'),
(8, 8, 8, 8, '2024-06-05 15:00:00', 'Telefonic', 'Da'),
(9, 3, 1, 1, '2024-07-01 10:00:00', 'Telefonic', 'Da'),
(10, 10, 10, 10, '2024-07-02 11:00:00', 'Telefonic', 'Nu'),
(11, 11, 11, 11, '2024-07-03 13:00:00', 'Walk-in', 'Nu'),
(12, 12, 12, 12, '2024-07-04 17:00:00', 'Telefonic', 'Da'),
(13, 13, 13, 13, '2024-07-05 09:30:00', 'Walk-in', 'Da'),
(14, 15, 2, 2, '2024-07-10 10:00:00', 'Telefonic', 'Da'),
(15, 2, 4, 4, '2024-07-15 12:00:00', 'Walk-in', 'Nu');

-- --------------------------------------------------------

--
-- Table structure for table `saloane`
--

CREATE TABLE `saloane` (
  `id_salon` int(11) NOT NULL,
  `oras` varchar(100) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `tel_salon` varchar(20) DEFAULT NULL,
  `mail_salon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saloane`
--

INSERT INTO `saloane` (`id_salon`, `oras`, `adresa`, `tel_salon`, `mail_salon`) VALUES
(1, 'Bucuresti', 'Calea Victoriei nr. 12', '0722111111', 'victoriei@winchester.ro'),
(2, 'Bucuresti', 'Bd. Unirii nr. 45', '0722111112', 'unirii@winchester.ro'),
(3, 'Cluj-Napoca', 'Str. Memorandumului nr. 10', '0744222222', 'cluj@winchester.ro'),
(4, 'Timisoara', 'Piata Victoriei nr. 2', '0755333333', 'timisoara@winchester.ro'),
(5, 'Iasi', 'Bd. Stefan cel Mare nr. 1', '0766444444', 'iasi@winchester.ro'),
(6, 'Constanta', 'Bd. Mamaia nr. 200', '0722555555', 'constanta@winchester.ro'),
(7, 'Brasov', 'Str. Republicii nr. 15', '0733666666', 'brasov@winchester.ro'),
(8, 'Craiova', 'Calea Bucuresti nr. 8', '0777888888', 'craiova@winchester.ro'),
(9, 'Galati', 'Str. Domneasca nr. 5', '0788999999', 'galati@winchester.ro'),
(10, 'Oradea', 'Calea Republicii nr. 12', '0722123456', 'oradea@winchester.ro'),
(11, 'Sibiu', 'Piata Mare nr. 4', '0733654321', 'sibiu@winchester.ro'),
(12, 'Arad', 'Bd. Revolutiei nr. 30', '0744987654', 'arad@winchester.ro'),
(13, 'Pitesti', 'Str. Victoriei nr. 3', '0755112233', 'pitesti@winchester.ro'),
(14, 'Ploiesti', 'Bd. Independentei nr. 7', '0766998877', 'ploiesti@winchester.ro'),
(15, 'Bacau', 'Str. Marasesti nr. 10', '0722000111', 'bacau@winchester.ro');

-- --------------------------------------------------------

--
-- Table structure for table `servicii`
--

CREATE TABLE `servicii` (
  `id_serviciu` int(11) NOT NULL,
  `denumire` varchar(100) DEFAULT NULL,
  `pret` decimal(10,2) DEFAULT NULL,
  `durata` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicii`
--

INSERT INTO `servicii` (`id_serviciu`, `denumire`, `pret`, `durata`) VALUES
(1, 'Tuns Barbati', 50.00, '30 min'),
(2, 'Tuns Dama (Scurt)', 70.00, '45 min'),
(3, 'Tuns Dama (Lung)', 90.00, '60 min'),
(4, 'Vopsit Radacina', 150.00, '90 min'),
(5, 'Vopsit Total', 300.00, '180 min'),
(6, 'Balayage', 450.00, '240 min'),
(7, 'Spalat si Coafat', 60.00, '45 min'),
(8, 'Tratament Keratina', 250.00, '120 min'),
(9, 'Barbierit Clasic', 40.00, '30 min'),
(10, 'Aranjat Barba', 30.00, '20 min'),
(11, 'Manichiura Simpla', 50.00, '45 min'),
(12, 'Manichiura Semipermanenta', 80.00, '60 min'),
(13, 'Pedichiura', 90.00, '60 min'),
(14, 'Masaj Capilar', 30.00, '15 min'),
(15, 'Extensii Gene', 200.00, '120 min');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achizitii`
--
ALTER TABLE `achizitii`
  ADD PRIMARY KEY (`id_achiz`),
  ADD KEY `fk_achizitii_furnizor` (`id_furnizor`),
  ADD KEY `fk_achizitii_angajat` (`id_ang`);

--
-- Indexes for table `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`id_ang`),
  ADD KEY `fk_angajati_salon` (`id_salon`);

--
-- Indexes for table `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `detalii_achiz`
--
ALTER TABLE `detalii_achiz`
  ADD PRIMARY KEY (`id_achiz`,`id_produs`);

--
-- Indexes for table `detalii_programari`
--
ALTER TABLE `detalii_programari`
  ADD PRIMARY KEY (`id_programare`,`id_serviciu`),
  ADD KEY `fk_detalii_prog_serviciu` (`id_serviciu`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `fk_feedback_programare` (`id_programare`);

--
-- Indexes for table `furnizori`
--
ALTER TABLE `furnizori`
  ADD PRIMARY KEY (`id_furnizor`);

--
-- Indexes for table `materiale`
--
ALTER TABLE `materiale`
  ADD PRIMARY KEY (`id_produs`),
  ADD KEY `fk_materiale_producator` (`id_prod`);

--
-- Indexes for table `producator`
--
ALTER TABLE `producator`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indexes for table `programari`
--
ALTER TABLE `programari`
  ADD PRIMARY KEY (`id_programare`),
  ADD KEY `fk_programari_client` (`id_client`),
  ADD KEY `fk_programari_angajat` (`id_ang`),
  ADD KEY `fk_programari_salon` (`id_salon`);

--
-- Indexes for table `saloane`
--
ALTER TABLE `saloane`
  ADD PRIMARY KEY (`id_salon`);

--
-- Indexes for table `servicii`
--
ALTER TABLE `servicii`
  ADD PRIMARY KEY (`id_serviciu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achizitii`
--
ALTER TABLE `achizitii`
  MODIFY `id_achiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `angajati`
--
ALTER TABLE `angajati`
  MODIFY `id_ang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `furnizori`
--
ALTER TABLE `furnizori`
  MODIFY `id_furnizor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `materiale`
--
ALTER TABLE `materiale`
  MODIFY `id_produs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99822;

--
-- AUTO_INCREMENT for table `producator`
--
ALTER TABLE `producator`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `programari`
--
ALTER TABLE `programari`
  MODIFY `id_programare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `saloane`
--
ALTER TABLE `saloane`
  MODIFY `id_salon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `servicii`
--
ALTER TABLE `servicii`
  MODIFY `id_serviciu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achizitii`
--
ALTER TABLE `achizitii`
  ADD CONSTRAINT `fk_achizitii_angajat` FOREIGN KEY (`id_ang`) REFERENCES `angajati` (`id_ang`),
  ADD CONSTRAINT `fk_achizitii_furnizor` FOREIGN KEY (`id_furnizor`) REFERENCES `furnizori` (`id_furnizor`);

--
-- Constraints for table `angajati`
--
ALTER TABLE `angajati`
  ADD CONSTRAINT `fk_angajati_salon` FOREIGN KEY (`id_salon`) REFERENCES `saloane` (`id_salon`);

--
-- Constraints for table `detalii_achiz`
--
ALTER TABLE `detalii_achiz`
  ADD CONSTRAINT `fk_detalii_achiz_achizitie` FOREIGN KEY (`id_achiz`) REFERENCES `achizitii` (`id_achiz`);

--
-- Constraints for table `detalii_programari`
--
ALTER TABLE `detalii_programari`
  ADD CONSTRAINT `fk_detalii_prog_programare` FOREIGN KEY (`id_programare`) REFERENCES `programari` (`id_programare`),
  ADD CONSTRAINT `fk_detalii_prog_serviciu` FOREIGN KEY (`id_serviciu`) REFERENCES `servicii` (`id_serviciu`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_programare` FOREIGN KEY (`id_programare`) REFERENCES `programari` (`id_programare`);

--
-- Constraints for table `materiale`
--
ALTER TABLE `materiale`
  ADD CONSTRAINT `fk_materiale_producator` FOREIGN KEY (`id_prod`) REFERENCES `producator` (`id_prod`);

--
-- Constraints for table `programari`
--
ALTER TABLE `programari`
  ADD CONSTRAINT `fk_programari_angajat` FOREIGN KEY (`id_ang`) REFERENCES `angajati` (`id_ang`),
  ADD CONSTRAINT `fk_programari_client` FOREIGN KEY (`id_client`) REFERENCES `clienti` (`id_client`),
  ADD CONSTRAINT `fk_programari_salon` FOREIGN KEY (`id_salon`) REFERENCES `saloane` (`id_salon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
