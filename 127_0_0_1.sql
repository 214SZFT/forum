-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 10:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `214szft_login`
--
CREATE DATABASE IF NOT EXISTS `214szft_login` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szft_login`;

-- --------------------------------------------------------

--
-- Table structure for table `menuitems`
--

CREATE TABLE `menuitems` (
  `ID` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `param` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `nr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `menuitems`
--

INSERT INTO `menuitems` (`ID`, `name`, `icon`, `param`, `nr`) VALUES
(1, 'Dashboard', 'bi-clipboard', 'statistic', 10),
(2, 'Felhasználók', 'bi-people', 'users_list', 20),
(3, 'Kategóriák', 'bi-tags', 'categories', 30),
(4, 'Tétel felvétel', 'bi-diagram-2', 'items', 40),
(5, 'Grafikon nézet', 'bi-graph-up-arrow', 'view_chart', 50),
(6, 'Naptár nézet', 'bi-calendar', 'view_calendar', 60),
(7, 'Táblázat nézet', 'bi-bar-chart-steps', 'view_table', 45),
(8, 'Egyenleg', 'bi-currency-euro', 'view_balance', 70),
(9, 'Jelszó módosítás', 'bi-key', 'passmod', 80),
(10, 'Profil módosítás', 'bi-person-circle', 'profile', 90);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `reg` datetime NOT NULL,
  `last` datetime DEFAULT NULL,
  `rights` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `reg`, `last`, `rights`, `status`) VALUES
(1, 'balint', 'admin@admin.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-06 00:00:00', '2022-02-15 13:38:03', 'admin', 1),
(2, 'teszt2', 'teszt2@valami.hu', 'e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98', '2021-10-06 13:59:55', NULL, 'user', 0),
(4, 'teszt3', 'teszt3@valami.hu', 'e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98', '2021-10-06 14:04:21', NULL, 'user', 1),
(24, 'teszt333', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 12:04:57', NULL, 'user', 1),
(25, 'teszt33333', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 12:05:42', NULL, 'user', 1),
(26, 'sdfdf', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 12:25:02', NULL, 'user', 1),
(27, 'retwrtewrt', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 12:26:15', NULL, 'user', 1),
(28, 'sdfasd', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 12:30:07', NULL, 'user', 1),
(29, 'erwerwe', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 12:56:59', NULL, 'user', 1),
(30, 'qwerwerw', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-12 13:07:09', NULL, 'user', 1),
(31, 'fasdfasdf', 'teszt3@valami.hu', 'e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98', '2021-10-12 13:13:30', NULL, 'user', 1),
(32, 'werwrwe', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-13 09:27:18', NULL, 'user', 1),
(33, 'xxxxxx', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-13 09:27:43', NULL, 'user', 1),
(34, 'wwwwwwww', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-13 09:29:28', NULL, 'user', 1),
(35, 'NSZ', 'nagyhazi.szabolcs@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2021-10-14 13:58:43', NULL, 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menuitems`
--
ALTER TABLE `menuitems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Database: `214szft_minicms`
--
CREATE DATABASE IF NOT EXISTS `214szft_minicms` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214szft_minicms`;

-- --------------------------------------------------------

--
-- Table structure for table `adminmenu`
--

CREATE TABLE `adminmenu` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `rights` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `adminmenu`
--

INSERT INTO `adminmenu` (`ID`, `name`, `url`, `rights`) VALUES
(1, 'Fehasználók kezelése', 'users', 2),
(2, 'Menüpontok kezelése', 'navitems', 2),
(3, 'Tartalmak kezelése', 'contents', 2),
(4, 'Carousel kezelése', 'carousel', 2),
(5, 'Jelszó módosítás', 'passmod', 1),
(6, 'Profil módosítás', 'profilmod', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `ID` int(11) NOT NULL,
  `file` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `header` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `text` text COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`ID`, `file`, `header`, `text`) VALUES
(1, 'img/1.png', 'Ez az első carousel', 'Nagyon szép hegyek a ködben'),
(2, 'img/2.jpg', 'Ez a második carousel', 'Ez egy naplemente az óceánon.'),
(3, 'img/3.jpg', 'Ez a harmadik carousel', 'Ez egy város részlet illusztráció'),
(4, 'img/4.jpg', 'Negyedik carousel', 'Halvány nap a kéklő hegyek felett');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `ID` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `content` text COLLATE utf8_hungarian_ci DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `last` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`ID`, `title`, `content`, `menuID`, `userName`, `last`) VALUES
(1, 'Bemutatkozás', 'aaksdjbf jkasdhf kjasdhfiasdf \r\nasdf űasdf asdjfhasjkfhasdfú\r\nasdúf asdobasd', 1, 'Adminisztrátor', '2022-02-08 13:18:53'),
(2, 'Elérhetőségeink', 'fjgksld fjksdf hfjskdhfjkasd fasd\r\nfasdfasdf\r\nasdf', 2, 'Adminisztrátor', '2022-02-08 13:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `navitems`
--

CREATE TABLE `navitems` (
  `ID` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `url` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `navitems`
--

INSERT INTO `navitems` (`ID`, `name`, `icon`, `url`, `status`) VALUES
(1, 'Bemutatkozás', NULL, 'bemutatkozas', 1),
(2, 'Elérhetőségeink', NULL, 'contacts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `passwd` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `reg` datetime NOT NULL,
  `last` datetime DEFAULT NULL,
  `rights` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `passwd`, `reg`, `last`, `rights`, `status`) VALUES
(2, 'Teszt Elek', 'teszt1@valami.hu', '5ea345ab330cf29f81d8de9bf5466f508fe351e1', '2022-02-01 12:17:07', '2022-02-09 15:06:30', 'felhasználó', 1),
(10, 'Kovács Béla', 'teszt2@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2022-02-01 12:40:44', NULL, 'felhasználó', 0),
(11, 'Horváth Géza', 'teszt3@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2022-02-01 12:51:29', NULL, 'felhasználó', 0),
(12, 'Fül Elek', 'teszt4@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2022-02-01 12:58:26', NULL, 'felhasználó', 1),
(13, 'Teszt Tamás', 'teszt50@valami.hu', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2022-02-08 10:21:55', NULL, 'felhasználó', 1),
(14, 'Teszt József', 'teszt10@valami.hu', '5ea345ab330cf29f81d8de9bf5466f508fe351e1', '2022-02-08 10:26:33', NULL, 'felhasználó', 1),
(15, 'admin@admin.com', 'admin@admin.com', 'D3942DCE589A8BAF879BE01B717184712B119A72', '2022-02-14 11:25:49', '2022-02-15 10:02:06', 'admin', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminmenu`
--
ALTER TABLE `adminmenu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `navitems`
--
ALTER TABLE `navitems`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminmenu`
--
ALTER TABLE `adminmenu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `navitems`
--
ALTER TABLE `navitems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `autokolcsonzo`
--
CREATE DATABASE IF NOT EXISTS `autokolcsonzo` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `autokolcsonzo`;

-- --------------------------------------------------------

--
-- Table structure for table `egyenleg`
--

CREATE TABLE `egyenleg` (
  `id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `osszeg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(256) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `nev`, `email`, `jelszo`) VALUES
(4, 'jozsi', '12', '12'),
(5, 'asd', 'xdxddd', '123'),
(6, 'asd', 'xdxddd', '123'),
(7, 'asd', 'asd123@asd.asd', '$2a$08$IRrRWbhTQRNfAlY3Weq/xeSNVASqw6D1onJ7k8dS3g3nzAq3XjGIO'),
(8, 'asd', 'asd1231@asassas.asa', '$2a$08$y3tDuJIRd7TwEiXdbVcV5OExT/u0erUsTZ6hzdLerXQc25BfItvX6'),
(9, 'asd', 'asd1231@asassas.asa', '$2a$08$.fiz1b1oz7FzZDTmRphXd.JbwwKxclAWrgQ9.ImuRjDaxAHVGx4Ra'),
(10, 'asd123', 'asd@asd.asd', '$2a$08$XE7bx5qD.UOHG9DB5AfaWe9tMWIDTIwhvgdGNr9JylcJqE2QkrAb2'),
(11, 'asd123', 'asd123@asd.asd', '$2a$08$jEvWerex1m/JsfPzBF1YquDMPZIgQunq.o0acd2rwSB1bxDIVUzwu'),
(12, 'sdfaf', 'b@b.com', '$2a$08$Mw.DNc9vjPUij9PkJSAqrOEzT.8yR/LG1McHbFzjyYfE3nfKtsouS');

-- --------------------------------------------------------

--
-- Table structure for table `gepjarmuvek`
--

CREATE TABLE `gepjarmuvek` (
  `id` int(11) NOT NULL,
  `gyarto` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `kmoraallas` int(11) NOT NULL,
  `szervizdij` int(11) NOT NULL,
  `napidij` int(11) NOT NULL,
  `kmdij` int(11) NOT NULL,
  `szerviz_km` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `gepjarmuvek`
--

INSERT INTO `gepjarmuvek` (`id`, `gyarto`, `tipus`, `kmoraallas`, `szervizdij`, `napidij`, `kmdij`, `szerviz_km`, `status`) VALUES
(8, 'jozsi', 'asd', 123, 12121, 4343, 89, 78, 0),
(9, 'sasssasa', 'jfiejfie', 898989, 7796, 765754, 457, 47623232, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kolcsonzesek`
--

CREATE TABLE `kolcsonzesek` (
  `id` int(11) NOT NULL,
  `ugyfel_id` int(11) NOT NULL,
  `gepjarmu_id` int(11) NOT NULL,
  `felh_id` int(11) NOT NULL,
  `kiad_datum` datetime NOT NULL DEFAULT current_timestamp(),
  `visszahoz_datum` datetime DEFAULT current_timestamp(),
  `km_ora_kezd` int(11) NOT NULL DEFAULT 0,
  `km_ora_veg` int(11) NOT NULL DEFAULT 0,
  `napszam` int(11) NOT NULL DEFAULT 0,
  `ossz_km` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `kolcsonzesek`
--

INSERT INTO `kolcsonzesek` (`id`, `ugyfel_id`, `gepjarmu_id`, `felh_id`, `kiad_datum`, `visszahoz_datum`, `km_ora_kezd`, `km_ora_veg`, `napszam`, `ossz_km`) VALUES
(11, 5, 8, 6, '1234-10-30 00:00:00', '2021-12-20 23:10:53', 3434343, 0, 0, 0),
(12, 5, 8, 6, '3323-12-23 00:00:00', '2021-12-20 23:12:20', 999, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ugyfelek`
--

CREATE TABLE `ugyfelek` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szig` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  `lakcim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `ugyfelek`
--

INSERT INTO `ugyfelek` (`id`, `nev`, `szig`, `lakcim`) VALUES
(5, 'xd', '1234', '323232');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `egyenleg`
--
ALTER TABLE `egyenleg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `gepjarmuvek`
--
ALTER TABLE `gepjarmuvek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ugyfel_id` (`ugyfel_id`,`gepjarmu_id`,`felh_id`),
  ADD KEY `felh_id` (`felh_id`),
  ADD KEY `gepjarmu_id` (`gepjarmu_id`),
  ADD KEY `ugyfel_id_2` (`ugyfel_id`,`gepjarmu_id`,`felh_id`);

--
-- Indexes for table `ugyfelek`
--
ALTER TABLE `ugyfelek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `egyenleg`
--
ALTER TABLE `egyenleg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gepjarmuvek`
--
ALTER TABLE `gepjarmuvek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ugyfelek`
--
ALTER TABLE `ugyfelek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `codey_health`
--
CREATE DATABASE IF NOT EXISTS `codey_health` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `codey_health`;

-- --------------------------------------------------------

--
-- Table structure for table `blogok`
--

CREATE TABLE `blogok` (
  `id` int(11) NOT NULL,
  `cim` text COLLATE utf8_hungarian_ci NOT NULL,
  `tartalom` text COLLATE utf8_hungarian_ci NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `idopont` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `blogok`
--

INSERT INTO `blogok` (`id`, `cim`, `tartalom`, `felhasznalo_id`, `idopont`, `status`) VALUES
(1, 'Ez a cim', 'ghuzfgrugruzgrufzg eugtrutgeurtg zgrtuegtu', 2, '2022-02-20 13:36:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `etelek`
--

CREATE TABLE `etelek` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `hozzadva` date NOT NULL DEFAULT current_timestamp(),
  `felhasznalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `etelek`
--

INSERT INTO `etelek` (`id`, `nev`, `hozzadva`, `felhasznalo_id`) VALUES
(1, 'Alma', '2022-02-14', 1),
(2, 'Krumpripaprikás', '2022-02-14', 1),
(3, 'Bableves', '2022-02-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `etelek_x_hozzavalok`
--

CREATE TABLE `etelek_x_hozzavalok` (
  `etel_id` int(11) NOT NULL,
  `hozzavalo_id` int(11) NOT NULL,
  `adag_szorzo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `etelek_x_hozzavalok`
--

INSERT INTO `etelek_x_hozzavalok` (`etel_id`, `hozzavalo_id`, `adag_szorzo`) VALUES
(1, 1, 1),
(2, 2, 1),
(2, 3, 1),
(3, 2, 0.1),
(3, 3, 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `email` text COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `jogosultsag` tinyint(1) NOT NULL,
  `reg_token` text COLLATE utf8_hungarian_ci NOT NULL,
  `magassag` int(11) DEFAULT NULL,
  `suly` double DEFAULT NULL,
  `cel_suly` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `nev`, `email`, `password`, `jogosultsag`, `reg_token`, `magassag`, `suly`, `cel_suly`) VALUES
(1, 'gilianerik1107@gmail.com', 'gilianerik1107@gmail.com', '$2b$10$ljYf4KnGRJe7eGjdgN8GYOuWZWG0p.qbXlapM96bxZXeXZdw54JWq', 2, '', NULL, 50, 50),
(2, 'kagi', 'teszt1@teszt.hu', '$2b$10$QWVHcrKnqnWiU6ojwTPgSed03IXlYKctuSrC5H5WwsT9f5l7H2k12', 0, '', NULL, NULL, NULL),
(3, 'teszt2@teszt.hu', 'teszt2@teszt.hu', '$2b$10$95C1qTyo926.05bDcg/MC.cpLPs2nf.TCmzAWHGF38.WvK64JzaZu', 0, '', NULL, NULL, NULL),
(4, 'teszt3@teszt.hu', 'teszt3@teszt.hu', '$2b$10$Or5Xk8cL.k1YE2.IJel8uOgfDnmzoXBjRn6ZU6URUIn/SoJUOJPUO', 0, '', NULL, NULL, NULL),
(6, 'bekagi', 'asd@asd.asd', '$2b$10$NDkJlaj/KNcdfaE8lCDmyOdzXZU9t4Z5BojRVAPiQ.SE/a5LU5sAm', 0, 'yf9RNreZBX0vjeZAjcAR4r8g3JVYqaEy', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `folyadek_bevitel`
--

CREATE TABLE `folyadek_bevitel` (
  `id` int(11) NOT NULL,
  `mennyiseg` double NOT NULL,
  `datum` date NOT NULL DEFAULT current_timestamp(),
  `felhasznalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `folyadek_bevitel`
--

INSERT INTO `folyadek_bevitel` (`id`, `mennyiseg`, `datum`, `felhasznalo_id`) VALUES
(2, 13, '2022-02-15', 1),
(3, 45, '2022-02-14', 1),
(4, 3000, '2022-02-13', 1),
(5, 90, '2022-02-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hozzavalok`
--

CREATE TABLE `hozzavalok` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `kcal` int(11) NOT NULL,
  `feherje` double NOT NULL,
  `szenhidrat` double NOT NULL,
  `zsir` double NOT NULL,
  `ehetoe_magaban` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `hozzavalok`
--

INSERT INTO `hozzavalok` (`id`, `nev`, `kcal`, `feherje`, `szenhidrat`, `zsir`, `ehetoe_magaban`) VALUES
(1, 'Alma', 123, 123, 123, 123, 1),
(2, 'Krumpli', 100, 100, 100, 100, 0),
(3, 'Paprika', 100, 100, 100, 100, 1),
(5, 'Borsó', 555, 555, 555, 555, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testmozgasok`
--

CREATE TABLE `testmozgasok` (
  `id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `mennyiseg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `testmozgasok`
--

INSERT INTO `testmozgasok` (`id`, `felhasznalo_id`, `datum`, `mennyiseg`) VALUES
(1, 1, '2022-02-15', 3000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogok`
--
ALTER TABLE `blogok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- Indexes for table `etelek`
--
ALTER TABLE `etelek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- Indexes for table `etelek_x_hozzavalok`
--
ALTER TABLE `etelek_x_hozzavalok`
  ADD KEY `etel_id` (`etel_id`),
  ADD KEY `hozzavalo_id` (`hozzavalo_id`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `folyadek_bevitel`
--
ALTER TABLE `folyadek_bevitel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- Indexes for table `hozzavalok`
--
ALTER TABLE `hozzavalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmozgasok`
--
ALTER TABLE `testmozgasok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`felhasznalo_id`),
  ADD KEY `testmozgasok_ibfk_1` (`felhasznalo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogok`
--
ALTER TABLE `blogok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `etelek`
--
ALTER TABLE `etelek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `folyadek_bevitel`
--
ALTER TABLE `folyadek_bevitel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hozzavalok`
--
ALTER TABLE `hozzavalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testmozgasok`
--
ALTER TABLE `testmozgasok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogok`
--
ALTER TABLE `blogok`
  ADD CONSTRAINT `blogok_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `etelek`
--
ALTER TABLE `etelek`
  ADD CONSTRAINT `etelek_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `etelek_x_hozzavalok`
--
ALTER TABLE `etelek_x_hozzavalok`
  ADD CONSTRAINT `etelek_x_hozzavalok_ibfk_1` FOREIGN KEY (`etel_id`) REFERENCES `etelek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `etelek_x_hozzavalok_ibfk_2` FOREIGN KEY (`hozzavalo_id`) REFERENCES `hozzavalok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `folyadek_bevitel`
--
ALTER TABLE `folyadek_bevitel`
  ADD CONSTRAINT `folyadek_bevitel_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testmozgasok`
--
ALTER TABLE `testmozgasok`
  ADD CONSTRAINT `testmozgasok_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `dolgozat`
--
CREATE DATABASE IF NOT EXISTS `dolgozat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `dolgozat`;

-- --------------------------------------------------------

--
-- Table structure for table `termekek`
--

CREATE TABLE `termekek` (
  `ID` int(11) NOT NULL,
  `gy_cikkszam` varchar(50) DEFAULT NULL,
  `katID` int(11) DEFAULT NULL,
  `gyartoID` int(11) DEFAULT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `tipus` varchar(100) DEFAULT NULL,
  `leiras1` text DEFAULT NULL,
  `leiras2` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ar` double DEFAULT NULL,
  `garido` int(11) DEFAULT NULL,
  `keszlet` varchar(30) DEFAULT NULL,
  `menny` double DEFAULT NULL,
  `minmenny` double DEFAULT NULL,
  `vkod` varchar(30) DEFAULT NULL,
  `suly` double DEFAULT NULL,
  `beerkezes` varchar(20) DEFAULT NULL,
  `vtsz` varchar(100) DEFAULT NULL,
  `specifikacio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `termekek`
--

INSERT INTO `termekek` (`ID`, `gy_cikkszam`, `katID`, `gyartoID`, `nev`, `tipus`, `leiras1`, `leiras2`, `link`, `ar`, `garido`, `keszlet`, `menny`, `minmenny`, `vkod`, `suly`, `beerkezes`, `vtsz`, `specifikacio`) VALUES
(545, '', 31, 1140, 'Kolink USB 2.0 kábel 1,8m', 'USB 2.0 kábel 1,8m', '', NULL, '', 190, 0, 'Raktárkészleten', 1, 0, '7611990157358', 0, '2020-01-14', '', ''),
(546, '', 31, 1140, 'Kolink USB 2.0 hosszabbító kábel 1,8m', 'USB 2.0 hosszabbító kábel 1,8m', '', NULL, '', 270, 0, 'Raktárkészleten', 1, 0, '5055610800903', 0, '2020-01-14', '', ''),
(913, NULL, 0, 1152, 'Kiszállítási díj Vidék', 'díj Vidék', NULL, NULL, NULL, 950, 0, 'Raktárkészleten', 5, NULL, '', NULL, '2020-01-11', NULL, NULL),
(1842, '', 19, 1127, 'APC Smart UPS 420VA SC420I', 'Smart UPS 420VA SC420I', '', NULL, '', 39500, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(2456, '', 31, 68, 'Noname UTP PATCH kábel ISO 305m', 'UTP PATCH kábel ISO 305m', '', NULL, '', 10500, 0, 'Raktárkészleten', 1, 0, '5999552695749', 0, '2020-01-11', '', ''),
(3698, '', 31, 1140, 'Kolink CAT5e UTP patch kábel 2m Grey', 'CAT5e UTP patch kábel 2m Grey', '', NULL, '', 180, 0, 'Raktárkészleten', 1, 0, '4040849683572', 0, '2020-01-16', '', ''),
(4681, '', 31, 1140, 'Kolink CAT6 UTP patch kábel 1m Grey', 'CAT6 UTP patch kábel 1m Grey', '', NULL, '', 220, 0, 'Raktárkészleten', 1, 0, '7611990197781', 0, '2020-01-16', '', ''),
(4820, '', 31, 1140, 'Kolink CAT6 UTP patch kábel 3m Grey', 'CAT6 UTP patch kábel 3m Grey', '', NULL, '', 230, 0, 'Raktárkészleten', 1, 0, '7611990197804', 0, '2020-01-16', '', ''),
(5506, '', 8, 1134, 'Kingmax 2GB DDR3 1333Mhz', '2GB DDR3 1333Mhz', '', NULL, '', 3280, 36, 'Raktárkészleten', 2, 0, '4712176731546', 0, '2020-01-07', '', ''),
(5751, '', 8, 1134, 'Kingmax 2GB DDR3 1600Mhz', '2GB DDR3 1600Mhz', '', NULL, '', 2770, 36, 'Raktárkészleten', 1, 0, '4712176732284', 0, '2020-01-07', '', ''),
(5753, '', 8, 16, 'Samsung 2GB DDR2 800MHz SODIMM', '2GB DDR2 800MHz SODIMM', '', NULL, '', 4400, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(6686, '', 100, 30, 'Kingston 8GB microSDHC Class 4 + adapterrel', '8GB microSDHC Class 4 + adapterrel', '', NULL, '', 1190, 36, 'Raktárkészleten', 3, 0, '', 0, '2020-01-08', '', ''),
(6733, '', 74, 376, 'TP-Link TL-SF1016D 16port Switch', 'TL-SF1016D 16port Switch', '', NULL, '', 6330, 36, 'Raktárkészleten', 1, 0, '6935364020293', 0, '2020-01-08', '', ''),
(7080, '', 180, 68, 'Noname sűrített levegő 400ml', 'sűrített levegő 400ml', '', NULL, '', 890, 0, 'Raktárkészleten', 1, 0, '8032727740022', 0, '2020-01-16', '', ''),
(7250, '', 31, 1140, 'Kolink USB 2.0 kábel 5m', 'USB 2.0 kábel 5m', '', NULL, '', 310, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(7811, '', 31, 1140, 'Kolink USB 2.0 kábel 4,5m', 'USB 2.0 kábel 4,5m', '', NULL, '', 460, 0, 'Raktárkészleten', 1, 0, '7611990168170', 0, '2020-01-08', '', ''),
(8322, '', 4, 13, 'Genius SlimStar C110 PS/2 billentyűzet+egér Black', 'SlimStar C110 PS/2 billentyűzet+egér Black', '', NULL, '', 2290, 24, 'Raktárkészleten', 1, 0, '4710268225577', 0, '2020-01-07', '', ''),
(13028, '', 6, 22, 'HP LaserJet Pro P1102 (CE651A) lézernyomtató', 'LaserJet Pro P1102 (CE651A) lézernyomtató', '', NULL, '', 18900, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(14259, '', 20, 13, 'Genius SP-M200 2.0 hangszóró Black', 'SP-M200 2.0 hangszóró Black', '', NULL, '', 2790, 24, 'Raktárkészleten', 1, 0, '4710268232414', 0, '2020-01-18', '', ''),
(14563, '', 20, 13, 'Genius SP-M120 2.0 hangszóró Black', 'SP-M120 2.0 hangszóró Black', '', NULL, '', 2260, 24, 'Raktárkészleten', 2, 0, '4710268232155', 0, '2020-01-08', '', ''),
(15600, '', 16, 30, 'Kingston 16GB DataTraveler 101 G2 Black', '16GB DataTraveler 101 G2 Black', '', NULL, '', 1870, 60, 'Raktárkészleten', 2, 0, '', 0, '2020-01-08', '', ''),
(16549, '', 175, 1161, 'AEG PDU-GE7 surge protection 230V ', 'PDU-GE7 surge protection 230V ', '', NULL, '', 1850, 24, 'Raktárkészleten', 1, 0, '4026245071960', 0, '2020-01-16', '', ''),
(18118, '', 175, 1147, 'EATON Protection Strip Túlfeszültségvédő Elosztó 6 DIN', 'Protection Strip Túlfeszültségvédő Elosztó 6 DIN', '', NULL, '', 2870, 24, 'Raktárkészleten', 1, 0, '3553340685835', 0, '2020-01-09', '', ''),
(18254, '', 183, 1142, 'Epson T0452 Cyan', 'T0452 Cyan', '', NULL, '', 990, 12, 'Raktárkészleten', 1, 0, '8715946355948', 0, '2020-01-08', '', ''),
(18255, '', 183, 1142, 'Epson T0453 Magenta', 'T0453 Magenta', '', NULL, '', 990, 12, 'Raktárkészleten', 1, 0, '8715946355962', 0, '2020-01-08', '', ''),
(18584, '', 19, 1160, 'FSP EP Nano 600', 'EP Nano 600', '', NULL, '', 12540, 24, 'Raktárkészleten', 1, 0, '4711140481401', 0, '2020-01-16', '', ''),
(18793, '', 179, 376, 'TP-Link TL-WR841N 300M Router 2X2MIMO', 'TL-WR841N 300M Router 2X2MIMO', '', NULL, '', 3880, 36, 'Raktárkészleten', 2, 0, '6935364051242', 0, '2020-01-08', '', ''),
(19146, '', 100, 30, 'Kingston 16GB microSDHC Class 4 + adapterrel', '16GB microSDHC Class 4 + adapterrel', '', NULL, '', 2190, 60, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(19182, '', 179, 376, 'TP-Link TL-WR740N 150M wireless router Fix antennás', 'TL-WR740N 150M wireless router Fix antennás', '', NULL, '', 3330, 36, 'Raktárkészleten', 2, 0, '6935364051334', 0, '2020-01-08', '', ''),
(19302, '', 16, 1134, 'Kingmax 4GB PD-02 Black', '4GB PD-02 Black', '', NULL, '', 1060, 0, 'Raktárkészleten', 2, 0, '', 0, '2020-01-08', '', ''),
(19400, '', 4, 76, 'Logitech K120 USB billentyűzet OEM Black HU', 'K120 USB billentyűzet OEM Black HU', '', NULL, '', 2750, 36, 'Raktárkészleten', 1, 0, '5099206021471', 0, '2020-01-18', '', ''),
(20654, '', 185, 13, 'Genius Media Pointer 100 Presenter', 'Media Pointer 100 Presenter', '', NULL, '', 4450, 24, 'Raktárkészleten', 5, 0, '4710268227564', 0, '2020-01-18', '', ''),
(21687, '', 181, 413, 'Cooler Master Elite 342 Black', 'Master Elite 342 Black', '', NULL, '', 5900, 24, 'Raktárkészleten', 1, 0, '4719512017197', 0, '2020-01-18', '', ''),
(24330, '', 100, 30, 'Kingston 16GB microSDHC Class 4 adapter nélkül', '16GB microSDHC Class 4 adapter nélkül', '', NULL, '', 2180, 0, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(26022, '', 183, 1142, 'Epson T0454 Yellow', 'T0454 Yellow', '', NULL, '', 990, 12, 'Raktárkészleten', 1, 0, '8715946355986', 0, '2020-01-08', '', ''),
(28142, '', 12, 1128, 'Chieftec iARENA GPA-450S 450W 12cm OEM', 'iARENA GPA-450S 450W 12cm OEM', '', NULL, '', 7300, 36, 'Raktárkészleten', 1, 0, '4710713238909', 0, '2020-01-18', '', ''),
(30075, '', 31, 1140, 'Kolink Quality VGA kábel 15m HD 15M/M', 'Quality VGA kábel 15m HD 15M/M', '', NULL, '', 3300, 0, 'Raktárkészleten', 1, 0, '5412810227648', 0, '2020-01-18', '', ''),
(31377, '', 12, 1128, 'Chieftec iARENA GPA-400S8 400W OEM', 'iARENA GPA-400S8 400W OEM', '', NULL, '', 6800, 36, 'Raktárkészleten', 14, 0, '4710713238930', 0, '2020-01-07', '', ''),
(32830, '', 4, 13, 'Genius KB-110X USB billentyűzet Black', 'KB-110X USB billentyűzet Black', '', NULL, '', 1390, 24, 'Raktárkészleten', 3, 0, '4710268235996', 0, '2020-01-08', '', ''),
(33100, '', 8, 1134, 'Kingmax 4GB DDR3 1600MHz', '4GB DDR3 1600MHz', '', NULL, '', 6790, 36, 'Raktárkészleten', 3, 0, '4712176732291', 0, '2020-01-07', '', ''),
(34436, '', 16, 1134, 'Kingmax 16GB PD-03 Black', '16GB PD-03 Black', '', NULL, '', 1890, 0, 'Raktárkészleten', 3, 0, '', 0, '2020-01-08', '', ''),
(37075, '', 16, 1146, 'Transcend 4GB Jetflash 350', '4GB Jetflash 350', '', NULL, '', 1120, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(37560, '', 30, 376, 'TP-Link TL-WN881ND 300M Wireless PCI-E kártya', 'TL-WN881ND 300M Wireless PCI-E kártya', '', NULL, '', 3670, 36, 'Raktárkészleten', 10, 0, '6935364050573', 0, '2020-01-09', '', ''),
(41290, '', 74, 376, 'TP-Link TL-SG1016D 16Port Gigabit Switch metal', 'TL-SG1016D 16Port Gigabit Switch metal', '', NULL, '', 12590, 36, 'Raktárkészleten', 1, 0, '6935364020613', 0, '2020-01-12', '', ''),
(42955, '', 128, 428, 'Media-Tech MT2658 HEAT BUSTER 4 Notebook hűtőpad + állvány', 'MT2658 HEAT BUSTER 4 Notebook hűtőpad + állvány', '', NULL, '', 2880, 24, 'Raktárkészleten', 2, 0, '5906453126586', 0, '2020-01-08', '', ''),
(42958, '', 128, 428, 'Media-Tech MT2656 HEAT BUSTER 2 Notebook hűtőpad', 'MT2656 HEAT BUSTER 2 Notebook hűtőpad', '', NULL, '', 1920, 24, 'Raktárkészleten', 2, 0, '5906453126562', 0, '2020-01-08', '', ''),
(43962, '', 8, 30, 'Kingston 4GB DDR3 1600MHz Single Rank', '4GB DDR3 1600MHz Single Rank', '', NULL, '', 3790, 0, 'Raktárkészleten', 3, 0, '', 0, '2020-01-07', '', ''),
(44542, '', 182, 1136, 'Western Digital 1TB 7200rpm SATA-600 64MB Blue WD10EZEX', 'Digital 1TB 7200rpm SATA-600 64MB Blue WD10EZEX', '', NULL, '', 10900, 24, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(44895, '', 8, 30, 'Kingston 8GB DDR3 1600MHz', '8GB DDR3 1600MHz', '', NULL, '', 12990, 0, 'Raktárkészleten', 3, 0, '', 0, '2020-01-09', '', ''),
(44927, '', 182, 1136, 'Western Digital 2TB IntelliPower SATA-600 64MB Red WD20EFRX', 'Digital 2TB IntelliPower SATA-600 64MB Red WD20EFRX', '', NULL, '', 21200, 36, 'Raktárkészleten', 7, 0, '', 0, '2020-01-07', '', ''),
(46029, '', 182, 1135, 'Toshiba 1TB 7200rpm SATA-600 32MB DT01ACA100', '1TB 7200rpm SATA-600 32MB DT01ACA100', '', NULL, '', 9800, 24, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(46731, '', 182, 1135, 'Toshiba 500GB 7200rpm SATA-600 32MB DT01ACA050', '500GB 7200rpm SATA-600 32MB DT01ACA050', '', NULL, '', 8790, 12, 'Raktárkészleten', 2, 0, '', 0, '2020-01-09', '', ''),
(47044, '', 4, 1140, 'Kolink USB billentyűzet + optikai egér Black', 'USB billentyűzet + optikai egér Black', '', NULL, '', 1330, 12, 'Raktárkészleten', 2, 0, '4716123304142', 0, '2020-01-09', '', ''),
(47564, '', 182, 1137, 'Seagate 500GB 5400rpm SATA-300 2,5', '500GB 5400rpm SATA-300 2,5', '', NULL, '', 9030, 24, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(47595, '', 20, 1125, 'Modecom Logic LS-21 2.1', 'Logic LS-21 2.1', '', NULL, '', 2800, 24, 'Raktárkészleten', 1, 0, '5906190445032', 0, '2020-01-07', '', ''),
(47634, '', 130, 30, 'Kingston 120GB 2,5', '120GB 2,5', '', NULL, '', 12390, 36, 'Raktárkészleten', 4, 0, '', 0, '2020-01-07', '', ''),
(48080, '', 186, 13, 'Genius FaceCam 320', 'FaceCam 320', '', NULL, '', 2250, 24, 'Raktárkészleten', 1, 0, '4710268239840', 0, '2020-01-08', '', ''),
(48534, '', 182, 1144, 'Hitachi 1TB 5400rpm SATA-600 2,5', '1TB 5400rpm SATA-600 2,5', '', NULL, '', 11490, 24, 'Raktárkészleten', 2, 0, '', 0, '2020-01-08', '', ''),
(49119, '', 3, 1139, 'Rapoo 3100P Mid Level White', '3100P Mid Level White', '', NULL, '', 3500, 24, 'Raktárkészleten', 2, 0, '6943518908281', 0, '2020-01-07', '', ''),
(50942, '', 20, 13, 'Genius SP-HF1250B 2.0 hangfal Wood', 'SP-HF1250B 2.0 hangfal Wood', '', NULL, '', 8750, 24, 'Raktárkészleten', 4, 0, '4710268242086', 0, '2020-01-09', '', ''),
(52498, NULL, 0, 1133, 'Scythe Mini Kaze SY501012M', 'Mini Kaze SY501012M', NULL, NULL, NULL, 1380, 24, 'Raktárkészleten', 1, NULL, '4571225043982', NULL, '2020-01-07', NULL, NULL),
(53666, NULL, 0, 376, 'TP-Link TL-WA850RE 300M Wireless Range Extender', 'TL-WA850RE 300M Wireless Range Extender', NULL, NULL, NULL, 3790, 36, 'Raktárkészleten', 1, NULL, '6935364070199', NULL, '2020-01-12', NULL, NULL),
(54437, '', 1, 1130, 'ASROCK 960GM-VGS3 FX', '960GM-VGS3 FX', '', NULL, '', 9070, 24, 'Raktárkészleten', 1, 0, '4717677320510', 0, '2020-01-18', '', ''),
(55193, '', 16, 30, 'Kingston 32GB USB3.0 DT100G3', '32GB USB3.0 DT100G3', '', NULL, '', 4160, 60, 'Raktárkészleten', 1, 0, '', 0, '2020-01-10', '', ''),
(57515, NULL, 0, 376, 'TP-Link TL-WA750RE 150Mbps Universal WiFi Range Extender', 'TL-WA750RE 150Mbps Universal WiFi Range Extender', NULL, NULL, NULL, 4650, 36, 'Raktárkészleten', 3, NULL, '6935364070649', NULL, '2020-01-18', NULL, NULL),
(58423, NULL, 0, 735, 'Logilink 2,5\" SATA USB 3.0 Aluminium Silver', '2,5\" SATA USB 3.0 Aluminium Silver', NULL, NULL, NULL, 2690, 24, 'Raktárkészleten', 2, NULL, '4052792006940', NULL, '2020-01-07', NULL, NULL),
(58726, '', 2, 2, 'Intel Core i7-4770S 3100MHz 8MB LGA1150 Box', 'Core i7-4770S 3100MHz 8MB LGA1150 Box', '', NULL, '', 72001.6, 36, 'Raktárkészleten', 1, 0, '5032037050142', 0, '2020-01-18', '', ''),
(59412, '', 182, 1135, 'Toshiba 1TB 5400rpm SATA-600 2,5', '1TB 5400rpm SATA-600 2,5', '', NULL, '', 11700, 24, 'Raktárkészleten', 1, 0, '4026203989528', 0, '2020-01-07', '', ''),
(60701, '', 6, 22, 'HP LaserJet Pro 500 M521dw (A8P80A) wireless lézernyomtató/másoló/síkágyas scanner/fax', 'LaserJet Pro 500 M521dw (A8P80A) wireless lézernyomtató/másoló/síkágyas scanner/fax', '', NULL, '', 179609.38, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-01-18', '', ''),
(60926, '', 2, 2, 'Intel Core i5-4440 3100MHz 6MB LGA1150 Box', 'Core i5-4440 3100MHz 6MB LGA1150 Box', '', NULL, '', 40500, 36, 'Raktárkészleten', 1, 0, '5032037054997', 0, '2020-01-07', '', ''),
(61360, '', 1, 1130, 'ASROCK H81M-HDS', 'H81M-HDS', '', NULL, '', 10900, 24, 'Raktárkészleten', 1, 0, '4717677321609', 0, '2020-01-18', '', ''),
(61683, '', 1, 1141, 'MSI H81M-E33', 'H81M-E33', '', NULL, '', 9020, 36, 'Raktárkészleten', 1, 0, '4719072307967', 0, '2020-01-08', '', ''),
(61684, '', 1, 1141, 'MSI H81M-P33', 'H81M-P33', '', NULL, '', 8940, 36, 'Raktárkészleten', 2, 0, '4719072307950', 0, '2020-01-09', '', ''),
(62171, '', 12, 1126, 'Akyga AK-ND-03 Adapter HP 18.5V/3.5A 65W', 'AK-ND-03 Adapter HP 18.5V/3.5A 65W', '', NULL, '', 2230, 24, 'Raktárkészleten', 1, 0, '5901720130228', 0, '2020-01-17', '', ''),
(62173, '', 12, 1126, 'Akyga AK-ND-06 Adapter Acer 19V/3.42A 65W', 'AK-ND-06 Adapter Acer 19V/3.42A 65W', '', NULL, '', 1880, 24, 'Raktárkészleten', 2, 0, '5901720130259', 0, '2020-01-07', '', ''),
(62424, '', 3, 76, 'Logitech M560 Wireless Mouse Black', 'M560 Wireless Mouse Black', '', NULL, '', 7610, 36, 'Raktárkészleten', 1, 0, '5099206047327', 0, '2020-01-10', '', ''),
(63407, '', 16, 30, 'Kingston 16GB DTIG4 USB3.0 Blue/White', '16GB DTIG4 USB3.0 Blue/White', '', NULL, '', 1600, 60, 'Raktárkészleten', 7, 0, '', 0, '2020-01-16', '', ''),
(64519, NULL, 0, 1140, 'Kolink 2,5\" HDSUB2U3 USB3.0 SATA Black', '2,5\" HDSUB2U3 USB3.0 SATA Black', NULL, NULL, NULL, 2950, 12, 'Raktárkészleten', 2, NULL, '4716123304197', NULL, '2020-01-10', NULL, NULL),
(64776, NULL, 0, 821, 'Ewent 2,5\" HDD Enclosure USB 2.0 SATA Silver', '2,5\" HDD Enclosure USB 2.0 SATA Silver', NULL, NULL, NULL, 1690, 60, 'Raktárkészleten', 3, NULL, '8716065231205', NULL, '2020-01-08', NULL, NULL),
(64867, NULL, 0, 821, 'Ewent  Univerzális Notebook töltő 90W (automata feszültség választással)', ' Univerzális Notebook töltő 90W (automata feszültség választással)', NULL, NULL, NULL, 4850, 24, 'Raktárkészleten', 1, NULL, '8032958188037', NULL, '2020-01-08', NULL, NULL),
(64869, '', 12, 821, 'Ewent EW3900 500W', 'EW3900 500W', '', NULL, '', 4040, 24, 'Raktárkészleten', 2, 0, '8032958184640', 0, '2020-01-07', '', ''),
(64912, NULL, 0, 1132, 'Aerocool V3X Advance Evil Blue Edition Táp nélkül Black', 'V3X Advance Evil Blue Edition Táp nélkül Black', NULL, NULL, NULL, 7110, 24, 'Raktárkészleten', 1, NULL, '4710700957349', NULL, '2020-01-16', NULL, NULL),
(65036, NULL, 0, 821, 'Ewent EW3170 USB Gamepad Black', 'EW3170 USB Gamepad Black', NULL, NULL, NULL, 1750, 24, 'Raktárkészleten', 2, NULL, '8716065216622', NULL, '2020-01-08', NULL, NULL),
(65315, '', 6, 22, 'HP LaserJet Pro M125nw (CZ173A) lézernyomtató/másoló/szkenner', 'LaserJet Pro M125nw (CZ173A) lézernyomtató/másoló/szkenner', '', NULL, '', 33700, 12, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(65497, '', 15, 3, 'Asus 22', '22', '', NULL, '', 21100, 36, 'Raktárkészleten', 11, 0, '4716659478003', 0, '2020-01-11', '', ''),
(65636, '', 3, 76, 'Logitech M500 Corded Mouse Black', 'M500 Corded Mouse Black', '', NULL, '', 5910, 36, 'Raktárkészleten', 1, 0, '5099206048317', 0, '2020-01-18', '', ''),
(66762, NULL, 0, 1147, 'EATON 5E 1500i USB vonali-interaktív 1:1 UPS 1500VA', '5E 1500i USB vonali-interaktív 1:1 UPS 1500VA', NULL, NULL, NULL, 32599.61, 24, 'Raktárkészleten', 1, NULL, '', NULL, '2020-01-11', NULL, NULL),
(67060, '', 19, 1127, 'APC Back UPS BX 500', 'Back UPS BX 500', '', NULL, '', 13640, 24, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(68039, '', 16, 1145, 'A-Data 8GB Flash Drive UC510 Silver', '8GB Flash Drive UC510 Silver', '', NULL, '', 1290, 0, 'Raktárkészleten', 1, 0, '4713435797297', 0, '2020-01-08', '', ''),
(68566, '', 188, 1131, 'Microsoft Windows Server Essentials 2012 R2 64Bit Hungarian OEM DVD 1-2CPU', 'Windows Server Essentials 2012 R2 64Bit Hungarian OEM DVD 1-2CPU', '', NULL, '', 105550, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(69200, '', 179, 1154, 'Tenda N301 Wireless N300 Easy Setup Router', 'N301 Wireless N300 Easy Setup Router', '', NULL, '', 2700, 60, 'Raktárkészleten', 1, 0, '6932849406894', 0, '2020-01-12', '', ''),
(70298, '', 2, 2, 'Intel Pentium G3240 3100MHz 3MB LGA1150 Box', 'Pentium G3240 3100MHz 3MB LGA1150 Box', '', NULL, '', 11680, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(70768, '', 15, 78, 'Philips 21,5', '21,5', '', NULL, '', 23030, 24, 'Raktárkészleten', 1, 0, '8712581689568', 0, '2020-01-07', '', ''),
(70778, '', 12, 1160, 'FSP Hyper 600W', 'Hyper 600W', '', NULL, '', 13760, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-01-17', '', ''),
(71296, '', 130, 30, 'Kingston 120GB 2,5', '120GB 2,5', '', NULL, '', 10340, 36, 'Raktárkészleten', 4, 0, '', 0, '2020-01-07', '', ''),
(71812, NULL, 0, 735, 'Logilink 2,5\" SATA USB 2.0 Aluminium Black', '2,5\" SATA USB 2.0 Aluminium Black', NULL, NULL, NULL, 1390, 24, 'Raktárkészleten', 1, NULL, '4260113568729', NULL, '2020-01-08', NULL, NULL),
(71870, NULL, 0, 735, 'Logilink 2,5\" SATA USB 2.0 Aluminium Silver', '2,5\" SATA USB 2.0 Aluminium Silver', NULL, NULL, NULL, 1390, 24, 'Raktárkészleten', 2, NULL, '4260113567494', NULL, '2020-01-07', NULL, NULL),
(72637, '', 15, 16, 'Samsung 27', '27', '', NULL, '', 62420, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-01-18', '', ''),
(73586, '', 2, 2, 'Intel Pentium G3460 3500MHz 3MB LGA1150 Box', 'Pentium G3460 3500MHz 3MB LGA1150 Box', '', NULL, '', 15250, 36, 'Raktárkészleten', 2, 0, '5032037066815', 0, '2020-01-07', '', ''),
(74974, '', 187, 19, 'LG GH24NSC0 DVD-writer drive Black SATA OEM', 'GH24NSC0 DVD-writer drive Black SATA OEM', '', NULL, '', 2690, 24, 'Raktárkészleten', 1, 0, '8806084891532', 0, '2020-01-18', '', ''),
(75380, NULL, 0, 1166, 'Wayteq XTAB-7Q GPS 7\" 8GB Wi-Fi White', 'XTAB-7Q GPS 7\" 8GB Wi-Fi White', NULL, NULL, NULL, 19500, 12, 'Raktárkészleten', 1, NULL, '', NULL, '2020-01-18', NULL, NULL),
(75388, '', 6, 22, 'HP LaserJet Pro M125a (CZ172A) lézernyomtató/másoló/síkágyas scanner', 'LaserJet Pro M125a (CZ172A) lézernyomtató/másoló/síkágyas scanner', '', NULL, '', 29900, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-01-10', '', ''),
(75430, NULL, 0, 1138, 'Synology NAS DS415+ (4 HDD) HU', 'NAS DS415+ (4 HDD) HU', NULL, NULL, NULL, 147989.14, 24, 'Raktárkészleten', 1, NULL, '4711174721757', NULL, '2020-01-07', NULL, NULL),
(77528, '', 12, 1128, 'Chieftec iARENA GPA-350S8 350W OEM', 'iARENA GPA-350S8 350W OEM', '', NULL, '', 7050, 24, 'Raktárkészleten', 2, 0, '4710713238923', 0, '2020-01-09', '', ''),
(77605, NULL, 0, 1167, 'Alcor KB 70X billentyűzet + 7\" tok tablethez HU', 'KB 70X billentyűzet + 7\" tok tablethez HU', NULL, NULL, NULL, 2890, 12, 'Raktárkészleten', 1, NULL, '5999561501123', NULL, '2020-01-18', NULL, NULL),
(77866, '', 191, 146, 'Acer S1283Hne 3D DLP', 'S1283Hne 3D DLP', '', NULL, '', 140360, 36, 'Raktárkészleten', 2, 0, '4713147280483', 0, '2020-01-09', '', ''),
(78622, '', 8, 1150, 'CSX 4GB DDR3 1600MHz', '4GB DDR3 1600MHz', '', NULL, '', 6460, 120, 'Raktárkészleten', 11, 0, '', 0, '2020-01-11', '', ''),
(78783, NULL, 0, 1132, 'Aerocool Dark Force Black 80mm', 'Dark Force Black 80mm', NULL, NULL, NULL, 640, 24, 'Raktárkészleten', 2, NULL, '4713105951318', NULL, '2020-01-07', NULL, NULL),
(78788, '', 4, 13, 'Genius KB-8000X Wireless billentyűzet+egér Black', 'KB-8000X Wireless billentyűzet+egér Black', '', NULL, '', 3550, 24, 'Raktárkészleten', 11, 0, '4710268248736', 0, '2020-01-11', '', ''),
(79090, '', 1, 1130, 'ASROCK H81M-VG4 R2.0', 'H81M-VG4 R2.0', '', NULL, '', 8990, 24, 'Raktárkészleten', 1, 0, '4717677323993', 0, '2020-01-07', '', ''),
(79793, NULL, 0, 566, 'Canyon CNE-CWC1 Black/Silver', 'CNE-CWC1 Black/Silver', NULL, NULL, NULL, 2080, 24, 'Raktárkészleten', 1, NULL, '8717371865191', NULL, '2020-01-08', NULL, NULL),
(81496, '', 72, 265, 'Lenovo 15,6', '15,6', '', NULL, '', 1840, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-01-09', '', ''),
(81951, NULL, 0, 566, 'Canyon CNE-CMSW1G Wireless Grey', 'CNE-CMSW1G Wireless Grey', NULL, NULL, NULL, 1010, 24, 'Raktárkészleten', 1, NULL, '8717371865580', NULL, '2020-01-18', NULL, NULL),
(82818, '', 2, 2, 'Intel Pentium G3260 3300MHz 3MB LGA1150 Box', 'Pentium G3260 3300MHz 3MB LGA1150 Box', '', NULL, '', 12450, 36, 'Raktárkészleten', 15, 0, '', 0, '2020-01-09', '', ''),
(83406, NULL, 0, 1126, 'Akyga 420-Basic 420W 12CM OEM', '420-Basic 420W 12CM OEM', NULL, NULL, NULL, 3530, 24, 'Raktárkészleten', 2, NULL, '5901720130310', NULL, '2020-01-14', NULL, NULL),
(85856, '', 1, 3, 'ASUS H81M-R', 'H81M-R', '', NULL, '', 10190, 36, 'Raktárkészleten', 13, 0, '4716659828778', 0, '2020-01-07', '', ''),
(85884, '', 2, 2, 'Intel Core i5-6600K 3500MHz 6MB LGA1151 Box (Ventilátor nélkül)', 'Core i5-6600K 3500MHz 6MB LGA1151 Box (Ventilátor nélkül)', '', NULL, '', 55400, 36, 'Raktárkészleten', 1, 0, '5032037076159', 0, '2020-01-10', '', ''),
(86045, '', 5, 1129, 'GIGABYTE GTX750Ti 2GB DDR5 GV-N75TD5-2GI', 'GTX750Ti 2GB DDR5 GV-N75TD5-2GI', '', NULL, '', 27800, 36, 'Raktárkészleten', 1, 0, '4719331340230', 0, '2020-01-07', '', ''),
(86619, '', 15, 146, 'Acer 21', '21', '', NULL, '', 21190, 24, 'Raktárkészleten', 2, 0, '4713147970797', 0, '2020-01-09', '', ''),
(86662, NULL, 0, 1166, 'Wayteq x985BT HD GPS 5\" 8GB Bluetooth Igo kompatibilis térkép nélkül', 'x985BT HD GPS 5\" 8GB Bluetooth Igo kompatibilis térkép nélkül', NULL, NULL, NULL, 16690, 12, 'Raktárkészleten', 1, NULL, '', NULL, '2020-01-18', NULL, NULL),
(86803, '', 187, 19, 'LG GH24NSD1 DVD-Writer Black OEM', 'GH24NSD1 DVD-Writer Black OEM', '', NULL, '', 2940, 24, 'Raktárkészleten', 15, 0, '8806087491067', 0, '2020-01-07', '', ''),
(86857, '', 187, 16, 'Samsung SH-118CB/BEBE DVD-Reader Black OEM', 'SH-118CB/BEBE DVD-Reader Black OEM', '', NULL, '', 2600, 24, 'Raktárkészleten', 2, 0, '', 0, '2020-01-08', '', ''),
(87122, '', 71, 265, 'Lenovo IdeaPad Z51-70 (80K600GBHV) Black/Silver', 'IdeaPad Z51-70 (80K600GBHV) Black/Silver', '', NULL, '', 154770.31, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(87200, '', 1, 1130, 'ASROCK B150M PRO4S', 'B150M PRO4S', '', NULL, '', 17120, 24, 'Raktárkészleten', 1, 0, '4717677327137', 0, '2020-01-17', '', ''),
(87459, '', 189, 1131, 'Microsoft Office 2016 Home & Business 1 USER ML HUN', 'Office 2016 Home & Business 1 USER ML HUN', '', NULL, '', 48900, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(87566, '', 6, 20, 'Canon MG5750 PIXMA wireless tintasugaras nyomtató/másoló/síkágyas scanner Black', 'MG5750 PIXMA wireless tintasugaras nyomtató/másoló/síkágyas scanner Black', '', NULL, '', 16750, 12, 'Raktárkészleten', 1, 0, '4549292037128', 0, '2020-01-10', '', ''),
(88147, '', 1, 1141, 'MSI H170 GAMING M3', 'H170 GAMING M3', '', NULL, '', 26840, 36, 'Raktárkészleten', 1, 0, '4719072416348', 0, '2020-01-10', '', ''),
(88273, '', 100, 30, 'Kingston 128GB microSDXC CL10 UHS-I adapter nélkül', '128GB microSDXC CL10 UHS-I adapter nélkül', '', NULL, '', 13090, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(88279, '', 100, 30, 'Kingston 64GB microSDXC CL10 UHS-I adapter nélkül', '64GB microSDXC CL10 UHS-I adapter nélkül', '', NULL, '', 6630, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-07', '', ''),
(88309, NULL, 0, 1140, 'Kolink Billentyűzet matrica HU Black/White', 'Billentyűzet matrica HU Black/White', NULL, NULL, NULL, 190, 12, 'Raktárkészleten', 9, NULL, '5999094000155', NULL, '2020-01-08', NULL, NULL),
(88318, '', 3, 13, 'Genius DX-110 Black USB', 'DX-110 Black USB', '', NULL, '', 770, 24, 'Raktárkészleten', 1, 0, '4710268251477', 0, '2020-01-09', '', ''),
(88328, '', 20, 13, 'Genius SP-HF160 2.0 hangszóró Wood', 'SP-HF160 2.0 hangszóró Wood', '', NULL, '', 1550, 24, 'Raktárkészleten', 2, 0, '4710268251460', 0, '2020-01-08', '', ''),
(88394, '', 71, 197, 'Dell Inspiron 5558-66 Matt Black', 'Inspiron 5558-66 Matt Black', '', NULL, '', 109050.16, 36, 'Raktárkészleten', 1, 0, '5999056107892', 0, '2020-01-07', '', ''),
(90689, '', 71, 146, 'Acer Aspire V3-572G-35X2 White', 'Aspire V3-572G-35X2 White', '', NULL, '', 94140, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(90850, '', 71, 265, 'Lenovo IdeaPad 100 (80MJ00GWHV) Black', 'IdeaPad 100 (80MJ00GWHV) Black', '', NULL, '', 69200, 24, 'Raktárkészleten', 3, 0, '', 0, '2020-01-07', '', ''),
(91071, '', 71, 22, 'HP 250 G4 (T6P88EA) Black', '250 G4 (T6P88EA) Black', '', NULL, '', 125710, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(92012, '', 181, 1124, 'AIO Bohemian II High Gloss Black', 'Bohemian II High Gloss Black', '', NULL, '', 3190, 12, 'Raktárkészleten', 2, 0, '', 0, '2020-01-09', '', ''),
(92021, '', 181, 1124, 'AIO Frontier Matt & High Gloss Black', 'Frontier Matt & High Gloss Black', '', NULL, '', 4800, 12, 'Raktárkészleten', 2, 0, '', 0, '2020-01-07', '', ''),
(92203, '', 130, 1135, 'Toshiba 120GB 2,5', '120GB 2,5', '', NULL, '', 9990, 36, 'Raktárkészleten', 1, 0, '4051528220056', 0, '2020-01-10', '', ''),
(92456, NULL, 0, 376, 'TP-Link TL-WA855RE 300M Wireless Range Extender', 'TL-WA855RE 300M Wireless Range Extender', NULL, NULL, NULL, 4370, 36, 'Raktárkészleten', 2, NULL, '6935364093839', NULL, '2020-01-12', NULL, NULL),
(92759, '', 1, 1149, 'ASROCK B85M-HDS', 'ASROCK B85M-HDS', '', NULL, '', 6990, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-01-10', '', ''),
(92878, '', 8, 30, 'Kingston 8GB DDR4 2133MHz', '8GB DDR4 2133MHz', '', NULL, '', 9790, 0, 'Raktárkészleten', 2, 0, '', 0, '2020-01-10', '', ''),
(92990, NULL, 0, 413, 'Cooler Master Hyper TX3I', 'Master Hyper TX3I', NULL, NULL, NULL, 5000, 24, 'Raktárkészleten', 1, NULL, '4719512049587', NULL, '2020-01-17', NULL, NULL),
(93205, '', 15, 146, 'Acer 27', '27', '', NULL, '', 195800, 36, 'Raktárkészleten', 1, 0, '4713392260216', 0, '2020-01-10', '', ''),
(93295, '', 8, 1143, 'Zeppelin 1GB DDR2 800MHz', '1GB DDR2 800MHz', '', NULL, '', 2300, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-08', '', ''),
(93425, '', 8, 1134, 'Kingmax 8GB DDR4 2133MHz', '8GB DDR4 2133MHz', '', NULL, '', 14990, 36, 'Raktárkészleten', 1, 0, '4712176733601', 0, '2020-01-17', '', ''),
(93749, '', 71, 265, 'Lenovo IdeaPad B50-80 (80EW0550HV) Black', 'IdeaPad B50-80 (80EW0550HV) Black', '', NULL, '', 88450, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-01-09', '', ''),
(94446, NULL, 0, 1148, 'Arctic F12 PWM PST Rev2', 'F12 PWM PST Rev2', NULL, NULL, NULL, 1090, 72, 'Raktárkészleten', 2, NULL, '4895213700764', NULL, '2020-01-09', NULL, NULL),
(95892, NULL, 0, 1126, 'Akyga AK-PC-01A hálózati tápkábel 1,5m', 'AK-PC-01A hálózati tápkábel 1,5m', NULL, NULL, NULL, 350, 12, 'Raktárkészleten', 2, NULL, '5901720130518', NULL, '2020-01-12', NULL, NULL),
(97411, NULL, 0, 1154, 'Tenda SG108 8-Port Gigabit Desktop Switch', 'SG108 8-Port Gigabit Desktop Switch', NULL, NULL, NULL, 4350, 60, 'Raktárkészleten', 1, NULL, '6932849431179', NULL, '2020-01-16', NULL, NULL),
(98221, '', 5, 1141, 'Msi GTX 1060 GAMING 3G', 'GTX 1060 GAMING 3G', '', NULL, '', 61260, 36, 'Raktárkészleten', 1, 0, '4719072479183', 0, '2020-01-10', '', ''),
(98546, NULL, 0, 366, 'Be quiet! Pure Rock Slim', 'quiet! Pure Rock Slim', NULL, NULL, NULL, 5400, 36, 'Raktárkészleten', 1, NULL, '4260052185254', NULL, '2020-01-10', NULL, NULL),
(98910, '', 130, 1145, 'A-Data 128GB 2,5', '128GB 2,5', '', NULL, '', 14500, 36, 'Raktárkészleten', 1, 0, '4712366967243', 0, '2020-01-17', '', ''),
(99094, NULL, 0, 160, 'Maxell alkáli ceruza elem (AAA)  4+2db/csomag', 'alkáli ceruza elem (AAA)  4+2db/csomag', NULL, NULL, NULL, 380, 0, 'Raktárkészleten', 1, NULL, '4902580164461', NULL, '2020-01-17', NULL, NULL),
(99616, '', 130, 1151, 'Good Ram 120GB 2,5', 'Ram 120GB 2,5', '', NULL, '', 12800, 36, 'Raktárkészleten', 11, 0, '5908267922392', 0, '2020-01-11', '', ''),
(100906, '', 181, 1124, 'AIO Spirit High Gloss Black', 'Spirit High Gloss Black', '', NULL, '', 3550, 12, 'Raktárkészleten', 11, 0, '', 0, '2020-01-11', '', ''),
(100913, NULL, 0, 1152, 'Kiszállítási díj Vidék', 'díj Vidék', NULL, NULL, NULL, 990, 0, 'Raktárkészleten', 1, NULL, '', NULL, '2020-02-03', NULL, NULL),
(101268, '', 2, 2, 'Intel Core i5-7600K 3800MHz 6MB LGA1151 Box (Ventilátor nélkül)', 'Core i5-7600K 3800MHz 6MB LGA1151 Box (Ventilátor nélkül)', '', NULL, '', 54499.92, 36, 'Raktárkészleten', 1, 0, '5032037092814', 0, '2020-01-17', '', ''),
(101753, NULL, 0, 1163, 'ICONINK MLT-D116L Black utángyártott toner', 'MLT-D116L Black utángyártott toner', NULL, NULL, NULL, 4630, 24, 'Raktárkészleten', 1, NULL, '3614011602336', NULL, '2020-01-16', NULL, NULL),
(102899, '', 181, 1125, 'Modecom Oberon White', 'Oberon White', '', NULL, '', 8070, 24, 'Raktárkészleten', 1, 0, '5901885247427', 0, '2020-01-17', '', ''),
(107655, '', 15, 19, 'LG 24', '24', '', NULL, '', 39499.84, 36, 'Raktárkészleten', 2, 0, '8806084080233', 0, '2020-01-14', '', ''),
(109302, '', 6, 1142, 'Epson Expression Home XP-342 wireless tintasugaras nyomtató/másoló/síkágyas scanner', 'Expression Home XP-342 wireless tintasugaras nyomtató/másoló/síkágyas scanner', '', NULL, '', 17650, 12, 'Raktárkészleten', 1, 0, '8715946614694', 0, '2020-01-16', '', ''),
(110166, '', 5, 1129, 'GIGABYTE GT1030 2GB DDR5 GV-N1030OC-2GI', 'GT1030 2GB DDR5 GV-N1030OC-2GI', '', NULL, '', 21610, 36, 'Raktárkészleten', 1, 0, '4719331301699', 0, '2020-01-15', '', ''),
(116043, NULL, 0, 746, 'Delight Adapter 1USB Black', 'Adapter 1USB Black', NULL, NULL, NULL, 590, 60, 'Raktárkészleten', 2, NULL, '5055610818755', NULL, '2020-01-16', NULL, NULL),
(118939, NULL, 0, 1159, 'Gembird 2,5\" EE2-U3S-2 USB3.0 Enclosure Black', '2,5\" EE2-U3S-2 USB3.0 Enclosure Black', NULL, NULL, NULL, 1790, 24, 'Raktárkészleten', 1, NULL, '8716309084727', NULL, '2020-01-15', NULL, NULL),
(119374, '', 15, 19, 'LG 22', '22', '', NULL, '', 23450.08, 36, 'Raktárkészleten', 1, 0, '8806098103973', 0, '2020-01-15', '', ''),
(119692, NULL, 0, 1158, 'AXAGON EE25-XA 2,5\" USB2.0 HDD SATA Aline Box Black', 'EE25-XA 2,5\" USB2.0 HDD SATA Aline Box Black', NULL, NULL, NULL, 1740, 24, 'Raktárkészleten', 1, NULL, '8595247902849', NULL, '2020-01-15', NULL, NULL),
(119940, '', 100, 30, 'Kingston 128GB microSDXC Canvas React UHS-I U3 adapter nélkül', '128GB microSDXC Canvas React UHS-I U3 adapter nélkül', '', NULL, '', 7640, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-16', '', ''),
(122441, NULL, 0, 1060, 'Ubiquiti NanoStation Loco M2, 2.4GHz AirMAX CPE 8dbi', 'NanoStation Loco M2, 2.4GHz AirMAX CPE 8dbi', NULL, NULL, NULL, 12450, 12, 'Raktárkészleten', 2, NULL, '', NULL, '2020-01-16', NULL, NULL),
(123352, NULL, 0, 1060, 'Ubiquiti EdgeRouter X', 'EdgeRouter X', NULL, NULL, NULL, 12829.84, 12, 'Raktárkészleten', 1, NULL, '', NULL, '2020-01-16', NULL, NULL),
(124097, NULL, 0, 746, 'Delight DVI-D (Dual Link) - HDMI kábel 2m Black aranyozott', 'DVI-D (Dual Link) - HDMI kábel 2m Black aranyozott', NULL, NULL, NULL, 890, 12, 'Raktárkészleten', 1, NULL, '5999552698559', NULL, '2020-01-14', NULL, NULL),
(125737, '', 3, 76, 'Logitech M235 Wireless Mouse Black/Grey', 'M235 Wireless Mouse Black/Grey', '', NULL, '', 3990, 36, 'Raktárkészleten', 1, 0, '5099206027176', 0, '2020-02-03', '', ''),
(127748, '', 100, 1156, 'TeamGroup 64GB microSDXC Class 10 UHS-I/U1 + adapterrel', '64GB microSDXC Class 10 UHS-I/U1 + adapterrel', '', NULL, '', 3700, 0, 'Raktárkészleten', 2, 0, '', 0, '2020-01-12', '', ''),
(128141, NULL, 0, 1159, 'Gembird 2,5\" EE2-U3S-2-R USB3.0 Enclosure Red', '2,5\" EE2-U3S-2-R USB3.0 Enclosure Red', NULL, NULL, NULL, 1790, 12, 'Raktárkészleten', 1, NULL, '8716309084765', NULL, '2020-01-15', NULL, NULL),
(129461, '', 130, 1155, 'PNY 240GB 2,5', '240GB 2,5', '', NULL, '', 8000, 36, 'Raktárkészleten', 3, 0, '3536403351724', 0, '2020-01-12', '', ''),
(129737, NULL, 0, 76, 'Logitech M185 Wireless Mouse Grey', 'M185 Wireless Mouse Grey', NULL, NULL, NULL, 2790, 36, 'Raktárkészleten', 1, NULL, '5099206027282', NULL, '2020-02-17', NULL, NULL),
(130626, '', 5, 1129, 'GIGABYTE GT210 1GB DDR3 GV-N210D3-1GI', 'GT210 1GB DDR3 GV-N210D3-1GI', '', NULL, '', 10100, 36, 'Raktárkészleten', 1, 0, '4719331328191', 0, '2020-02-11', '', ''),
(133478, '', 31, 1157, 'Digitus CAT6 U-UTP Patch Cable 1m Green', 'CAT6 U-UTP Patch Cable 1m Green', '', NULL, '', 180, 12, 'Raktárkészleten', 2, 0, '4016032371892', 0, '2020-01-14', '', ''),
(133479, '', 31, 1157, 'Digitus CAT6 U-UTP Patch Cable 1m Red', 'CAT6 U-UTP Patch Cable 1m Red', '', NULL, '', 180, 12, 'Raktárkészleten', 2, 0, '4016032371908', 0, '2020-01-14', '', ''),
(133581, '', 1, 1130, 'ASROCK B450M HDV R4.0', 'B450M HDV R4.0', '', NULL, '', 15430, 24, 'Raktárkészleten', 1, 0, '4717677337617', 0, '2020-01-16', '', ''),
(135972, '', 2, 1162, 'AMD Ryzen 3 3200G 3,6GHz BOX', 'Ryzen 3 3200G 3,6GHz BOX', '', NULL, '', 23800, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-01-16', '', ''),
(137372, '', 65, 1153, 'Xiaomi Mi Home Security Camera 360° 1080p', 'Mi Home Security Camera 360° 1080p', '', NULL, '', 9490, 24, 'Raktárkészleten', 1, 0, '6934177704789', 0, '2020-01-12', '', ''),
(139242, '', 8, 30, 'Kingston 8GB DDR4 2666MHz HyperX Fury Black Series', '8GB DDR4 2666MHz HyperX Fury Black Series', '', NULL, '', 9490, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-16', '', ''),
(139397, '', 8, 30, 'Kingston 8GB DDR4 3200MHz HyperX Fury Black Series', '8GB DDR4 3200MHz HyperX Fury Black Series', '', NULL, '', 10990, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-01-16', '', ''),
(141167, NULL, 0, 1139, 'Rapoo 9300M Multi-mode Wireless Keyboard & Mouse Black', '9300M Multi-mode Wireless Keyboard & Mouse Black', NULL, NULL, NULL, 10290, 24, 'Raktárkészleten', 1, NULL, '6940056184658', NULL, '2020-01-16', NULL, NULL),
(141688, '', 15, 16, 'Samsung 24', '24', '', NULL, '', 23800.2, 12, 'Raktárkészleten', 2, 0, '8806090139451', 0, '2020-01-12', '', ''),
(141918, '', 71, 3, 'Asus X543MA-DM800 Grey', 'X543MA-DM800 Grey', '', NULL, '', 78970, 24, 'Raktárkészleten', 1, 0, '4718017490276', 0, '2020-01-16', '', ''),
(141935, '', 20, 13, 'Genius SP-HF1250B II 2.0 hangfal Wood', 'SP-HF1250B II 2.0 hangfal Wood', '', NULL, '', 10260, 24, 'Raktárkészleten', 2, 0, '4710268256342', 0, '2020-01-14', '', ''),
(155579, '', 4, 76, 'Logitech MK270 Wireless Billentyűzet + Egér', 'MK270 Wireless Billentyűzet + Egér', '', NULL, '', 9790, 36, 'Raktárkészleten', 2, 0, '5099206039322', 0, '2020-02-03', '', ''),
(180572, '', 16, 1145, 'A-Data 32GB Flash Drive UV150 Black', '32GB Flash Drive UV150 Black', '', NULL, '', 2840, 0, 'Raktárkészleten', 3, 0, '4713435797075', 0, '2020-02-03', '', ''),
(180573, '', 16, 1145, 'A-Data 64GB Flash Drive UV150 Black', '64GB Flash Drive UV150 Black', '', NULL, '', 4140, 0, 'Raktárkészleten', 1, 0, '4713435799291', 0, '2020-02-17', '', ''),
(185505, '', 188, 1131, 'Microsoft Windows 10 Home 64bit HUN OEM', 'Windows 10 Home 64bit HUN OEM', '', NULL, '', 26010, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-02-03', '', ''),
(185692, NULL, 0, 3, 'Asus 15,6\" Aglaia Carry Purple', '15,6\" Aglaia Carry Purple', NULL, NULL, NULL, 3170, 12, 'Raktárkészleten', 1, NULL, '4716659862635', NULL, '2020-02-11', NULL, NULL),
(188322, '', 3, 13, 'Genius NX-7015 Wireless Iron Grey', 'NX-7015 Wireless Iron Grey', '', NULL, '', 1680, 24, 'Raktárkészleten', 2, 0, '4710268250944', 0, '2020-02-03', '', ''),
(188953, '', 183, 22, 'HP F6U65AE (302) Color tintapatron', 'F6U65AE (302) Color tintapatron', '', NULL, '', 3990, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-02-11', '', ''),
(189080, '', 12, 1182, 'Xilence 500W XP500R7/XN052 Redwing Series R7 Series C', '500W XP500R7/XN052 Redwing Series R7 Series C', '', NULL, '', 7000, 24, 'Raktárkészleten', 1, 0, '4044953500367', 0, '2020-02-17', '', ''),
(191297, NULL, 0, 413, 'Cooler Master RPD Grease / High performance', 'Master RPD Grease / High performance', NULL, NULL, NULL, 430, 6, 'Raktárkészleten', 1, NULL, '4719512002940', NULL, '2020-02-11', NULL, NULL),
(192456, NULL, 0, 376, 'TP-Link TL-WA855RE 300M Wireless Range Extender', 'TL-WA855RE 300M Wireless Range Extender', NULL, NULL, NULL, 4420, 36, 'Raktárkészleten', 1, NULL, '6935364093839', NULL, '2020-02-03', NULL, NULL),
(193479, '', 16, 381, 'Silicon Power 64GB Blaze B02 USB3.1 Black', 'Power 64GB Blaze B02 USB3.1 Black', '', NULL, '', 4050, 0, 'Raktárkészleten', 2, 0, '4712702646474', 0, '2020-02-03', '', ''),
(193611, '', 130, 1156, 'TeamGroup 120GB 2,5', '120GB 2,5', '', NULL, '', 6089.84, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-02-03', '', ''),
(194326, NULL, 0, 1126, 'Akyga AK13BK Black', 'AK13BK Black', NULL, NULL, NULL, 4510, 24, 'Raktárkészleten', 1, NULL, '5901720132420', NULL, '2020-02-17', NULL, NULL),
(198805, NULL, 0, 735, 'Logilink ID0096 egérpad Black', 'ID0096 egérpad Black', NULL, NULL, NULL, 180, 24, 'Raktárkészleten', 1, NULL, '4052792002683', NULL, '2020-02-03', NULL, NULL),
(202624, NULL, 0, 1163, 'ICONINK TN-1030 Black utángyártott toner', 'TN-1030 Black utángyártott toner', NULL, NULL, NULL, 1690, 24, 'Raktárkészleten', 2, NULL, '3610103003333', NULL, '2020-02-03', NULL, NULL),
(204553, '', 182, 1135, 'Toshiba 1TB 7200rpm SATA-600 64MB HDWD110UZSVA', '1TB 7200rpm SATA-600 64MB HDWD110UZSVA', '', NULL, '', 9050, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-02-17', '', ''),
(205186, '', 60, 1168, 'Q-PRINT TONER ML-1610/2010/4521/3117/3125 BLACK 3k', 'TONER ML-1610/2010/4521/3117/3125 BLACK 3k', '', NULL, '', 2680, 0, 'Raktárkészleten', 1, 0, '5999544423527', 0, '2020-01-20', '', ''),
(205680, NULL, 0, 1163, 'ICONINK CE505X Black utángyártott toner', 'CE505X Black utángyártott toner', NULL, NULL, NULL, 2050, 24, 'Raktárkészleten', 2, NULL, '3612050502334', NULL, '2020-02-03', NULL, NULL),
(206161, '', 60, 1168, 'Q-PRINT TONER CE285A (CHIPES) BLACK 1,7k', 'TONER CE285A (CHIPES) BLACK 1,7k', '', NULL, '', 1620, 0, 'Raktárkészleten', 4, 0, '5999544423893', 0, '2020-01-20', '', ''),
(206679, NULL, 0, 31, 'Sandisk 128GB Ultra Dual Drive M3.0 Black', '128GB Ultra Dual Drive M3.0 Black', NULL, NULL, NULL, 7390, 60, 'Raktárkészleten', 1, NULL, '', NULL, '2020-02-03', NULL, NULL),
(207370, '', 60, 1168, 'Q-PRINT TONER MLT-D1092S (SCX4300) (CHIPES) BLACK 2k', 'TONER MLT-D1092S (SCX4300) (CHIPES) BLACK 2k', '', NULL, '', 3050, 0, 'Raktárkészleten', 1, 0, '5999544424579', 0, '2020-01-20', '', ''),
(207408, '', 130, 30, 'Kingston 240GB 2,5', '240GB 2,5', '', NULL, '', 10450, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-02-17', '', ''),
(207507, NULL, 0, 1168, 'Q-PRINT TINTAPATRON T1285  MULTIPACK (CHIPES)', 'TINTAPATRON T1285  MULTIPACK (CHIPES)', NULL, NULL, NULL, 720, 0, 'Raktárkészleten', 2, NULL, '2200000006905', NULL, '2020-01-20', NULL, NULL),
(208543, NULL, 0, 1173, 'VEVŐ HÁZHOZSZÁLLÍTÁS SPRINTER (0-40 KG)', 'HÁZHOZSZÁLLÍTÁS SPRINTER (0-40 KG)', NULL, NULL, NULL, 1470, 0, 'Raktárkészleten', 6, NULL, '', NULL, '2020-01-20', NULL, NULL),
(210111, NULL, 0, 1168, 'Q-PRINT TONER CE310A (126) (CHIPES) BLACK 1,2k', 'TONER CE310A (126) (CHIPES) BLACK 1,2k', NULL, NULL, NULL, 1750, 0, 'Raktárkészleten', 1, NULL, '5999544422896', NULL, '2020-01-20', NULL, NULL),
(210112, NULL, 0, 1168, 'Q-PRINT TONER CE311A (126) (CHIPES) CYAN 1k', 'TONER CE311A (126) (CHIPES) CYAN 1k', NULL, NULL, NULL, 1800, 0, 'Raktárkészleten', 1, NULL, '5999544422902', NULL, '2020-01-20', NULL, NULL),
(210113, NULL, 0, 1168, 'Q-PRINT TONER CE312A (126) (CHIPES) YELLOW 1k', 'TONER CE312A (126) (CHIPES) YELLOW 1k', NULL, NULL, NULL, 1800, 0, 'Raktárkészleten', 1, NULL, '5999544422940', NULL, '2020-01-20', NULL, NULL),
(210114, NULL, 0, 1168, 'Q-PRINT TONER CE313A (126) (CHIPES) MAGENTA 1k', 'TONER CE313A (126) (CHIPES) MAGENTA 1k', NULL, NULL, NULL, 1800, 0, 'Raktárkészleten', 1, NULL, '5999544422957', NULL, '2020-01-20', NULL, NULL),
(210398, '', 72, 1180, 'Samsonite American Tourister Work 15,6', 'American Tourister Work 15,6', '', NULL, '', 6990, 24, 'Raktárkészleten', 1, 0, '5414847772979', 0, '2020-02-03', '', ''),
(210673, NULL, 0, 1168, 'Q-PRINT DOB CE314A (126) (CHIPES) BLACK: 14k COLOR: 7k', 'DOB CE314A (126) (CHIPES) BLACK: 14k COLOR: 7k', NULL, NULL, NULL, 3140, 0, 'Raktárkészleten', 1, NULL, '5999544423060', NULL, '2020-01-20', NULL, NULL),
(213387, NULL, 0, 1168, 'Q-PRINT TONER TK1115 (CHIPES) BLACK 1,6k', 'TONER TK1115 (CHIPES) BLACK 1,6k', NULL, NULL, NULL, 1570, 0, 'Raktárkészleten', 2, NULL, '5999544425583', NULL, '2020-01-20', NULL, NULL),
(213682, NULL, 0, 1168, 'Q-PRINT TONER TN1000/1030/1050 BLACK 1K', 'TONER TN1000/1030/1050 BLACK 1K', NULL, NULL, NULL, 1440, 0, 'Raktárkészleten', 10, NULL, '5999544425477', NULL, '2020-01-20', NULL, NULL),
(213699, '', 60, 1168, 'Q-PRINT TONER CF350A (130A) (CHIPES) BLACK 1,1k', 'TONER CF350A (130A) (CHIPES) BLACK 1,1k', '', NULL, '', 1860, 0, 'Raktárkészleten', 5, 0, '5999544425668', 0, '2020-01-20', '', ''),
(213700, '', 60, 1168, 'Q-PRINT TONER CF351A (130A) (CHIPES) CYAN 1k', 'TONER CF351A (130A) (CHIPES) CYAN 1k', '', NULL, '', 1800, 0, 'Raktárkészleten', 5, 0, '5999544425675', 0, '2020-01-20', '', ''),
(213701, '', 60, 1168, 'Q-PRINT TONER CF352A (130A) (CHIPES) YELLOW 1k', 'TONER CF352A (130A) (CHIPES) YELLOW 1k', '', NULL, '', 1800, 0, 'Raktárkészleten', 5, 0, '5999544425682', 0, '2020-01-20', '', ''),
(213702, '', 60, 1168, 'Q-PRINT TONER CF353A (130A) (CHIPES) MAGENTA 1k', 'TONER CF353A (130A) (CHIPES) MAGENTA 1k', '', NULL, '', 1800, 0, 'Raktárkészleten', 5, 0, '5999544425699', 0, '2020-01-20', '', ''),
(213948, NULL, 0, 1168, 'Q-PRINT DOBEGYSÉG R116 (CHIPES) 9k', 'DOBEGYSÉG R116 (CHIPES) 9k', NULL, NULL, NULL, 2320, 0, 'Raktárkészleten', 1, NULL, '5999544421226', NULL, '2020-01-20', NULL, NULL),
(214115, '', 60, 1169, 'MÁSOLÓGÉP TONER FOR USE KONICA MINOLTA/ DEVELOP TN116/TN118 INEO164', 'TONER FOR USE KONICA MINOLTA/ DEVELOP TN116/TN118 INEO164', '', NULL, '', 7200, 0, 'Raktárkészleten', 1, 0, '2200000015457', 0, '2020-01-20', '', ''),
(214635, NULL, 0, 1170, '4WORLD MONITOR TISZTÍTÓHAB TFT/LCD 200ML', 'MONITOR TISZTÍTÓHAB TFT/LCD 200ML', NULL, NULL, NULL, 500, 0, 'Raktárkészleten', 1, NULL, '5908214311149', NULL, '2020-01-20', NULL, NULL),
(214788, NULL, 0, 1178, 'GENOTHERM ÁR/DB', 'ÁR/DB', NULL, NULL, NULL, 7, 0, 'Raktárkészleten', 400, NULL, '5999558400262', NULL, '2020-01-20', NULL, NULL),
(214820, NULL, 0, 1168, 'Q-PRINT TONER CF283X (83X) (CHIPES) BLACK 2,2k', 'TONER CF283X (83X) (CHIPES) BLACK 2,2k', NULL, NULL, NULL, 1710, 0, 'Raktárkészleten', 4, NULL, '5999544424166', NULL, '2020-01-20', NULL, NULL),
(215258, NULL, 0, 1177, 'RAGASZTÓSZALAG ÁTLÁTSZÓ 48MM*60M', 'ÁTLÁTSZÓ 48MM*60M', NULL, NULL, NULL, 146, 0, 'Raktárkészleten', 3, NULL, '3687667223347', NULL, '2020-01-20', NULL, NULL),
(215729, '', 130, 1136, 'Western Digital 120GB 2,5', 'Digital 120GB 2,5', '', NULL, '', 6250, 36, 'Raktárkészleten', 1, 0, '', 0, '2020-02-11', '', ''),
(216264, '', 94, 1179, 'ELEM GP AKKU NiMH AAA 1000MAH  6DB/BLISZTER RECYKO+ ÁR/DB', 'GP AKKU NiMH AAA 1000MAH  6DB/BLISZTER RECYKO+ ÁR/DB', '', NULL, '', 380, 0, 'Raktárkészleten', 6, 0, '', 0, '2020-01-20', '', ''),
(216580, NULL, 0, 1174, 'UTÁNVÉT BESZEDÉSI DÍJ 100,000 FT-IG SPRINTER', 'BESZEDÉSI DÍJ 100,000 FT-IG SPRINTER', NULL, NULL, NULL, 590, 0, 'Raktárkészleten', 5, NULL, '', NULL, '2020-01-20', NULL, NULL),
(217342, NULL, 0, 1093, 'Funscreen Matt White Rollo 231x305 cm Format 4:3', 'Matt White Rollo 231x305 cm Format 4:3', NULL, NULL, NULL, 50060, 12, 'Raktárkészleten', 1, NULL, '5999560963137', NULL, '2020-02-17', NULL, NULL),
(218824, NULL, 0, 1175, 'VCOM TYPE-C USB3.0 HUB 4 PORT DH-302C', 'TYPE-C USB3.0 HUB 4 PORT DH-302C', NULL, NULL, NULL, 1950, 0, 'Raktárkészleten', 1, NULL, '4895182246744', NULL, '2020-01-20', NULL, NULL),
(219769, NULL, 0, 1172, 'ISKOLAI RAGASZTÓ STIFT 22 GR PRITT', 'RAGASZTÓ STIFT 22 GR PRITT', NULL, NULL, NULL, 264, 0, 'Raktárkészleten', 2, NULL, '', NULL, '2020-01-20', NULL, NULL),
(219898, NULL, 0, 1159, 'Gembird DVI-I (Dual Link) - VGA átalakító', 'DVI-I (Dual Link) - VGA átalakító', NULL, NULL, NULL, 590, 0, 'Raktárkészleten', 1, NULL, '8716309037266', NULL, '2020-02-11', NULL, NULL),
(220064, NULL, 0, 1176, 'MÁSOLÓPAPÍR BALLET A4 80 GR UNIVERSAL', 'BALLET A4 80 GR UNIVERSAL', NULL, NULL, NULL, 840, 0, 'Raktárkészleten', 5, NULL, '4605817133116', NULL, '2020-01-20', NULL, NULL),
(220092, NULL, 0, 1171, 'HIBAJAVÍTÓ ROLLER 5MMX8M VICTORIA', 'ROLLER 5MMX8M VICTORIA', NULL, NULL, NULL, 191, 0, 'Raktárkészleten', 2, NULL, '5998880347313', NULL, '2020-01-20', NULL, NULL),
(226309, '', 191, 1181, 'Benq MS535 DLP', 'MS535 DLP', '', NULL, '', 78589.84, 36, 'Raktárkészleten', 1, 0, '4718755075704', 0, '2020-02-17', '', ''),
(226569, '', 3, 566, 'Canyon CNE-CMSW05B wireless mouse Black', 'CNE-CMSW05B wireless mouse Black', '', NULL, '', 910, 24, 'Raktárkészleten', 1, 0, '5291485003692', 0, '2020-02-03', '', ''),
(229244, '', 1, 1129, 'GIGABYTE H310M H 2.0', 'H310M H 2.0', '', NULL, '', 14050, 36, 'Raktárkészleten', 1, 0, '4719331803797', 0, '2020-02-17', '', ''),
(231863, '', 159, 265, 'Lenovo Tab E10 TB-X104 Folio Case Black', 'Tab E10 TB-X104 Folio Case Black', '', NULL, '', 2550, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-02-17', '', ''),
(236523, '', 2, 2, 'Intel Core i7-9700 3000MHz 12MB LGA1151 Box', 'Core i7-9700 3000MHz 12MB LGA1151 Box', '', NULL, '', 94899.61, 36, 'Raktárkészleten', 1, 0, '5032037159906', 0, '2020-02-11', '', ''),
(237615, '', 23, 22, 'HP 56A Black toner', '56A Black toner', '', NULL, '', 8040, 12, 'Raktárkészleten', 1, 0, '', 0, '2020-02-11', '', ''),
(239242, '', 8, 30, 'Kingston 8GB DDR4 2666MHz HyperX Fury Black Series', '8GB DDR4 2666MHz HyperX Fury Black Series', '', NULL, '', 10990, 0, 'Raktárkészleten', 1, 0, '', 0, '2020-02-17', '', ''),
(243835, '', 71, 146, 'Acer Aspire A315-54-32CF Black', 'Aspire A315-54-32CF Black', '', NULL, '', 109890.08, 24, 'Raktárkészleten', 1, 0, '4710180712834', 0, '2020-02-03', '', ''),
(244124, '', 152, 265, 'Lenovo Tab M10 (TB-X505L) 10,1', 'Tab M10 (TB-X505L) 10,1', '', NULL, '', 47790, 24, 'Raktárkészleten', 1, 0, '', 0, '2020-02-17', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `katID` (`katID`),
  ADD KEY `gyartoID` (`gyartoID`),
  ADD KEY `gy_cikkszam` (`gy_cikkszam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `termekek`
--
ALTER TABLE `termekek`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244125;
--
-- Database: `forum`
--
CREATE DATABASE IF NOT EXISTS `forum` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `forum`;

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `email` text COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(32) COLLATE utf8_hungarian_ci NOT NULL,
  `jogosultsag` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forumok`
--

CREATE TABLE `forumok` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `letrehozva` datetime NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `tema_id` int(11) NOT NULL,
  `lathato` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kommentek`
--

CREATE TABLE `kommentek` (
  `id` int(11) NOT NULL,
  `tartalom` text COLLATE utf8_hungarian_ci NOT NULL,
  `idopont` datetime NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `lathato` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temak`
--

CREATE TABLE `temak` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forumok`
--
ALTER TABLE `forumok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`,`tema_id`),
  ADD KEY `forumok_ibfk_1` (`tema_id`);

--
-- Indexes for table `kommentek`
--
ALTER TABLE `kommentek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`,`forum_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `temak`
--
ALTER TABLE `temak`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forumok`
--
ALTER TABLE `forumok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kommentek`
--
ALTER TABLE `kommentek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temak`
--
ALTER TABLE `temak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD CONSTRAINT `felhasznalok_ibfk_1` FOREIGN KEY (`id`) REFERENCES `forumok` (`felhasznalo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `felhasznalok_ibfk_2` FOREIGN KEY (`id`) REFERENCES `kommentek` (`felhasznalo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `forumok`
--
ALTER TABLE `forumok`
  ADD CONSTRAINT `forumok_ibfk_1` FOREIGN KEY (`tema_id`) REFERENCES `temak` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `forumok_ibfk_2` FOREIGN KEY (`id`) REFERENCES `kommentek` (`forum_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `peldalol`
--
CREATE DATABASE IF NOT EXISTS `peldalol` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `peldalol`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_hungarian_ci NOT NULL,
  `email` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`) VALUES
(3, 'fasz', 'asfd2', 'asfd2'),
(4, 'fasz2', 'asfd2', 'asfd2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `susu_torpek`
--
CREATE DATABASE IF NOT EXISTS `susu_torpek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `susu_torpek`;

-- --------------------------------------------------------

--
-- Table structure for table `torpek`
--

CREATE TABLE `torpek` (
  `id` int(3) NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `klan` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `nem` varchar(1) COLLATE utf8_hungarian_ci NOT NULL,
  `suly` int(3) NOT NULL,
  `magassag` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `torpek`
--

INSERT INTO `torpek` (`id`, `nev`, `klan`, `nem`, `suly`, `magassag`) VALUES
(1, 'Terrin Sak', 'Kova', 'F', 62, 130),
(2, 'Bal Eraffa', 'Vasököl', 'N', 45, 129),
(3, 'Sarsi Duri', 'Vasököl', 'F', 59, 141),
(4, 'Dorf Gein', 'Csille', 'F', 62, 138),
(5, 'Bombur Nori', 'Kova', 'N', 48, 132),
(6, 'Dorf Loopa', 'Csille', 'F', 63, 140),
(7, 'Trad Magraimn', 'Acél', 'F', 67, 138),
(8, 'Tardi Falgorran', 'Csille', 'F', 65, 140),
(9, 'Lok Dun', 'Acél', 'F', 70, 142),
(10, 'Sarrof Hro', 'Kova', 'F', 65, 137),
(11, 'Gor Morf', 'Csille', 'F', 58, 135),
(12, 'Heimal Morf', 'Vasököl', 'F', 61, 144),
(13, 'Odi Duri', 'Kova', 'F', 64, 145),
(14, 'Hardi Oggi', 'Vasököl', 'F', 64, 137),
(15, 'Bal Rian', 'Acél', 'N', 48, 134),
(16, 'Tor Edda', 'Vasököl', 'F', 61, 135),
(17, 'Forf Orsan', 'Csille', 'N', 50, 140),
(18, 'Krof Erag', 'Vasököl', 'N', 45, 145),
(19, 'Azul Luer', 'Vasököl', 'N', 43, 141),
(20, 'Forf Sak', 'Acél', 'F', 60, 146),
(21, 'Krof Glueggi', 'Kova', 'F', 62, 135),
(22, 'Tor Zian', 'Vasököl', 'N', 51, 138),
(23, 'Darrin Surroc', 'Acél', 'N', 48, 139),
(24, 'Nallid Grai', 'Vasököl', 'F', 58, 138),
(25, 'Lok Gran', 'Acél', 'F', 67, 140),
(26, 'Sarraain Sugran', 'Kova', 'F', 66, 138),
(27, 'Dorrin Dars', 'Csille', 'F', 68, 144),
(28, 'Nallid Fars', 'Vasököl', 'F', 71, 143),
(29, 'Dor Gerri', 'Kova', 'F', 69, 138),
(30, 'Darrin Rudga', 'Acél', 'F', 90, 140),
(31, 'Trad Morf', 'Vasököl', 'F', 69, 136),
(33, 'Lusti', 'Hupikék', 'F', 57, 133),
(34, 'Törpapa', 'Hupikék', 'F', 44, 156),
(35, 'Törpilla', 'Hupikék', 'N', 35, 122),
(36, 'Hami', 'Hupikék', 'F', 57, 147),
(38, 'Törperős', 'Hupikék', 'F', 55, 142),
(57, 'Okoska törp', 'Hupikék', 'F', 65, 133),
(58, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(59, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(60, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(61, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(62, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(63, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(64, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(65, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(66, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(67, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(68, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(69, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(70, 'sdfasdf', 'sadfasdf', 'F', 23, 34),
(71, 'Ügyifogyi', 'Hupikék', 'F', 35, 45),
(72, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(73, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(74, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(75, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(76, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(77, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(78, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(79, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(80, 'Ügyifogyi', 'Hupikék', 'F', 30, 45),
(81, 'Ügyifogyi', 'Hupikék', 'F', 30, 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `torpek`
--
ALTER TABLE `torpek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `torpek`
--
ALTER TABLE `torpek`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
