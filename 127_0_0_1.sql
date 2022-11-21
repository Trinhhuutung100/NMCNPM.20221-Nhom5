-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 04:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql_db`
--
CREATE DATABASE IF NOT EXISTS `mysql_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mysql_db`;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID_NK` int(50) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `ID_HK` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID_NK`, `HoTen`, `NgaySinh`, `ID_HK`) VALUES
(1, '1', '2022-11-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ID` int(10) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ID`, `username`, `password`) VALUES
(1, 'kuto', 'kutataxo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `nmcnpm`
--
CREATE DATABASE IF NOT EXISTS `nmcnpm` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `nmcnpm`;

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_nam`
--

CREATE TABLE `danh_sach_nam` (
  `Nam` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danh_sach_nam`
--

INSERT INTO `danh_sach_nam` (`Nam`) VALUES
(2021);

-- --------------------------------------------------------

--
-- Table structure for table `danh_sach_su_kien`
--

CREATE TABLE `danh_sach_su_kien` (
  `ID_SK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ten_su_kien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngay_to_chuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dong_gop`
--

CREATE TABLE `dong_gop` (
  `ID_HK` int(50) NOT NULL,
  `TenChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_SK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ten_su_kien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `So_tien` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dong_phi_vs`
--

CREATE TABLE `dong_phi_vs` (
  `ID_HK` int(50) NOT NULL,
  `TenChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nam` int(50) NOT NULL,
  `Tien_Q1` int(50) NOT NULL,
  `Tien_Q2` int(50) NOT NULL,
  `Tien_Q3` int(50) NOT NULL,
  `Tien_Q4` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dong_phi_vs`
--

INSERT INTO `dong_phi_vs` (`ID_HK`, `TenChuHo`, `Nam`, `Tien_Q1`, `Tien_Q2`, `Tien_Q3`, `Tien_Q4`) VALUES
(123456000, 'Rory Goard', 2021, 72, 72, 72, 72);

-- --------------------------------------------------------

--
-- Table structure for table `ho_khau`
--

CREATE TABLE `ho_khau` (
  `ID_HK` int(50) NOT NULL,
  `TenChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_ChuHo` int(50) NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoThanhVien` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ho_khau`
--

INSERT INTO `ho_khau` (`ID_HK`, `TenChuHo`, `ID_ChuHo`, `DiaChi`, `SoThanhVien`) VALUES
(123456000, 'Rory Goard', 798476562, '38 Wayridge Center', 3),
(123456001, 'Esmeralda Burnet', 650975763, '07 Northwestern Place', 4),
(123456002, 'Cherry Carnachen', 534909713, '570 Hoffman Plaza', 3),
(123456003, 'Anatola Grew', 375143860, '803 Myrtle Road', 6),
(123456005, 'Koo Barrus', 796806432, '9061 Arkansas Circle', 2),
(123456006, 'Sumner Covolini', 115097668, '4 Anthes Crossing', 5),
(123456007, 'Rachael Rosser', 195671441, '79041 Grayhawk Road', 6),
(123456008, 'Garrik Brettelle', 832629076, '59 Fulton Street', 6),
(123456009, 'Prudy Yankin', 820403593, '68 Mayer Court', 8),
(123456010, 'Tanitansy Di Claudio', 392057553, '0 Brentwood Crossing', 4),
(123456011, 'Myer McConnel', 412441295, '7 Hagan Avenue', 4),
(123456012, 'Bernhard Tinkler', 112116567, '3844 Arapahoe Lane', 4),
(123456013, 'Lillis Dutnell', 262131724, '3057 Clemons Circle', 3),
(123456014, 'Reta Defond', 563671939, '36588 Valley Edge Drive', 2),
(123456015, 'Xenos Surgeon', 450189996, '90272 Warner Pass', 8),
(123456016, 'Ewan O\'Leahy', 964425521, '186 Kensington Crossing', 3),
(123456017, 'Neel Sigsworth', 347427271, '8718 Kenwood Crossing', 4),
(123456018, 'Libbie Inold', 742360828, '35704 Anthes Center', 3),
(123456019, 'Carrol Carden', 471958291, '1 Waubesa Crossing', 1),
(123456020, 'Emmett Kerwen', 859265778, '90525 Forest Run Way', 6),
(123456021, 'Josh Andryushin', 609056414, '66 Duke Junction', 3),
(123456022, 'Grannie Quennell', 111060747, '90 Londonderry Alley', 5),
(123456023, 'Nickolas Flavelle', 164746100, '3 Nelson Terrace', 4),
(123456024, 'Fleur Eyckelbeck', 290751908, '0 Lawn Court', 1),
(123456025, 'Armand Ludlam', 766679655, '56 Calypso Alley', 2);

-- --------------------------------------------------------

--
-- Table structure for table `la_thanh_vien_cua_ho`
--

CREATE TABLE `la_thanh_vien_cua_ho` (
  `ID_NK` int(50) NOT NULL,
  `ID_HK` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID_NK` int(50) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NamSinh` date NOT NULL,
  `ID_HK` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID_NK`, `HoTen`, `NamSinh`, `ID_HK`) VALUES
(798476562, 'Rory Goard', '1981-09-29', 123456000),
(368684625, 'Rennie Kensett', '1982-09-28', 123456000),
(610988038, 'Thayne Glentz', '1977-07-29', 123456000),
(650975763, 'Esmeralda Burnet', '1986-05-21', 123456001),
(980223775, 'Nicolas Heart', '1995-10-07', 123456001),
(891884781, 'Adriane Clouter', '1991-08-02', 123456001),
(526958568, 'Rhett Titmarsh', '1980-07-18', 123456001),
(534909713, 'Cherry Carnachen', '1982-07-25', 123456002),
(561939037, 'Frazier Giraux', '1978-07-01', 123456002),
(888324973, 'Cathie Palle', '1983-02-27', 123456002),
(375143860, 'Anatola Grew', '1997-12-24', 123456003),
(467135953, 'Kania Jikovsky', '1980-08-16', 123456003),
(391305975, 'Georgine Delafoy', '1976-08-26', 123456003),
(827239396, 'Nestor Allibon', '1996-07-13', 123456003),
(764127965, 'Thorny Petren', '1987-10-20', 123456003),
(815882496, 'Teena Sighard', '1999-09-09', 123456003),
(796806432, 'Koo Barrus', '1988-02-13', 123456005),
(969507266, 'Karyl Pallin', '1995-01-09', 123456005),
(115097668, 'Sumner Covolini', '1982-09-09', 123456006),
(698166317, 'Annabal Halleybone', '1995-09-18', 123456006),
(656030592, 'Elwood Waldock', '1996-07-07', 123456006),
(569383064, 'Hobie Murkitt', '1989-02-09', 123456006),
(200802882, 'Alanah Huton', '1997-08-01', 123456006),
(195671441, 'Rachael Rosser', '1991-11-02', 123456007),
(206282938, 'Trenna Stanlick', '1979-03-07', 123456007),
(948790781, 'Kermit Marcus', '1990-02-26', 123456007),
(860639449, 'Normie Janic', '1986-06-10', 123456007),
(708390394, 'Kendall Tumini', '1981-06-11', 123456007),
(520631259, 'Josiah Druhan', '1997-08-15', 123456007),
(832629076, 'Garrik Brettelle', '1991-07-11', 123456008),
(158088393, 'Damian Kovnot', '1994-08-04', 123456008),
(196968646, 'Abdel Batty', '1980-02-24', 123456008),
(594810759, 'Batsheva Goldsmith', '1996-01-02', 123456008),
(678671882, 'Ronnie Bewick', '1999-09-23', 123456008),
(435454817, 'Elsie Rosa', '1994-10-26', 123456008),
(820403593, 'Prudy Yankin', '1976-03-06', 123456009),
(130515926, 'Prescott Swanborrow', '1999-01-18', 123456009),
(607072470, 'Rob Stancer', '1995-12-25', 123456009),
(916647188, 'Dallon Byer', '1976-08-02', 123456009),
(855839105, 'Merrick Obal', '1992-03-03', 123456009),
(164650234, 'Melisa Masson', '1986-11-08', 123456009),
(194597793, 'Ame Bayly', '1992-12-08', 123456009),
(212869733, 'Katharina Dewer', '1975-01-10', 123456009),
(392057553, 'Tanitansy Di Claudio', '1986-10-26', 123456010),
(181069784, 'Walther McLaggan', '1995-06-10', 123456010),
(991896690, 'Bondy De Roos', '1977-08-20', 123456010),
(125260131, 'Odey Jekel', '1985-09-06', 123456010),
(412441295, 'Myer McConnel', '1975-11-20', 123456011),
(981213559, 'Tamma Boner', '1975-11-13', 123456011),
(469566322, 'Galen Cabel', '1979-09-02', 123456011),
(852167928, 'Jessa Krauss', '1977-07-02', 123456011),
(112116567, 'Bernhard Tinkler', '1997-05-16', 123456012),
(627344075, 'Orly Sauvain', '1991-02-19', 123456012),
(305576171, 'Bertine Donnett', '1990-09-16', 123456012),
(390800898, 'Husain Toon', '1995-11-17', 123456012),
(262131724, 'Lillis Dutnell', '1987-03-17', 123456013),
(649916119, 'Jerri Iskowicz', '1990-12-10', 123456013),
(224246167, 'Daile Grayston', '1980-06-07', 123456013),
(563671939, 'Reta Defond', '1984-03-03', 123456014),
(618495253, 'Ag Tissier', '1983-06-05', 123456014),
(450189996, 'Xenos Surgeon', '1981-05-14', 123456015),
(964314291, 'Rubi Clamp', '1983-11-01', 123456015),
(295060878, 'Luigi Moggle', '1976-12-13', 123456015),
(486227567, 'Durante O\'Scanlon', '1990-02-11', 123456015),
(538005233, 'Theodosia Gerlack', '1987-02-21', 123456015),
(220992150, 'Lea Bellows', '1976-01-15', 123456015),
(804399887, 'Lek Bissex', '1979-12-31', 123456015),
(365330140, 'Sharline Christophersen', '1997-01-05', 123456015),
(964425521, 'Ewan O\'Leahy', '1997-01-18', 123456016),
(399764038, 'Murdoch Sheraton', '1988-11-12', 123456016),
(429830440, 'Burke Braham', '1978-11-14', 123456016),
(347427271, 'Neel Sigsworth', '1992-07-14', 123456017),
(566787961, 'Henri Ornils', '1998-07-12', 123456017),
(399850037, 'Seamus Chue', '1999-08-28', 123456017),
(849197520, 'Sallyann Trebble', '1988-06-02', 123456017),
(742360828, 'Libbie Inold', '1997-03-26', 123456018),
(426895919, 'Joyann Lesek', '1999-09-28', 123456018),
(647043147, 'Saundra Spere', '1990-04-23', 123456018),
(471958291, 'Carrol Carden', '1988-12-18', 123456019),
(859265778, 'Emmett Kerwen', '1990-01-02', 123456020),
(230369853, 'Elwood Cowtherd', '1976-07-04', 123456020),
(600809624, 'Hagan Govenlock', '1990-03-03', 123456020),
(381266141, 'Julie Cristofvao', '1988-04-18', 123456020),
(172448009, 'Griselda Comar', '1976-04-16', 123456020),
(924254684, 'Crystie Vaz', '1999-09-27', 123456020),
(609056414, 'Josh Andryushin', '1990-07-28', 123456021),
(655958887, 'Clifford Wenger', '1996-03-18', 123456021),
(228302955, 'Remus Abbott', '1988-10-27', 123456021),
(111060747, 'Grannie Quennell', '1976-11-10', 123456022),
(207106401, 'Boigie Nardrup', '1999-04-12', 123456022),
(849851724, 'Kelley Vicker', '1981-04-19', 123456022),
(916598967, 'Reinaldo Skillen', '1986-08-19', 123456022),
(652302202, 'Samantha Kilgallen', '1980-09-24', 123456022),
(164746100, 'Nickolas Flavelle', '1999-11-12', 123456023),
(589998906, 'Eduard Butrimovich', '1994-12-26', 123456023),
(924514644, 'Mozelle Freiberg', '1997-06-02', 123456023),
(637612986, 'Kriste Matlock', '1978-12-15', 123456023),
(290751908, 'Fleur Eyckelbeck', '1978-05-01', 123456024),
(766679655, 'Armand Ludlam', '1981-07-19', 123456025),
(711551871, 'Godfree Nisby', '1996-11-02', 123456025);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user`, `password`) VALUES
('1', '1');
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

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"nmcnpm\",\"table\":\"nhan_khau\"},{\"db\":\"mysql_db\",\"table\":\"nhan_khau\"},{\"db\":\"mysql_db\",\"table\":\"test\"},{\"db\":\"nmcnpm\",\"table\":\"ho_khau\"},{\"db\":\"nmcnpm\",\"table\":\"users\"},{\"db\":\"nmcnpm\",\"table\":\"dong_phi_vs\"},{\"db\":\"nmcnpm\",\"table\":\"danh_sach_nam\"},{\"db\":\"nmcnpm\",\"table\":\"danh_sach_su_kien\"},{\"db\":\"nmcnpm\",\"table\":\"dong_gop\"},{\"db\":\"nmcnpm\",\"table\":\"la_thanh_vien_cua_ho\"}]');

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
('root', '2022-11-21 03:18:04', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":20.991590000000002}');

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
