-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 07:14 AM
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
-- Database: `nmcnpm`
--

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
  `ID_ChuHo` int(50) NOT NULL,
  `TenChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoThanhVien` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ho_khau`
--

INSERT INTO `ho_khau` (`ID_HK`, `ID_ChuHo`, `TenChuHo`, `DiaChi`, `SoThanhVien`) VALUES
(123456000, 798476562, 'Rory Goard', '38 Wayridge Center', 3),
(123456001, 650975763, 'Esmeralda Burnet', '07 Northwestern Place', 4),
(123456002, 534909713, 'Cherry Carnachen', '570 Hoffman Plaza', 3),
(123456003, 375143860, 'Anatola Grew', '803 Myrtle Road', 6),
(123456005, 796806432, 'Koo Barrus', '9061 Arkansas Circle', 2),
(123456006, 115097668, 'Sumner Covolini', '4 Anthes Crossing', 5),
(123456007, 195671441, 'Rachael Rosser', '79041 Grayhawk Road', 6),
(123456008, 832629076, 'Garrik Brettelle', '59 Fulton Street', 6),
(123456009, 820403593, 'Prudy Yankin', '68 Mayer Court', 8),
(123456010, 392057553, 'Tanitansy Di Claudio', '0 Brentwood Crossing', 4),
(123456011, 412441295, 'Myer McConnel', '7 Hagan Avenue', 4),
(123456012, 112116567, 'Bernhard Tinkler', '3844 Arapahoe Lane', 4),
(123456013, 262131724, 'Lillis Dutnell', '3057 Clemons Circle', 3),
(123456014, 563671939, 'Reta Defond', '36588 Valley Edge Drive', 2),
(123456015, 450189996, 'Xenos Surgeon', '90272 Warner Pass', 8),
(123456016, 964425521, 'Ewan O\'Leahy', '186 Kensington Crossing', 3),
(123456017, 347427271, 'Neel Sigsworth', '8718 Kenwood Crossing', 4),
(123456018, 742360828, 'Libbie Inold', '35704 Anthes Center', 3),
(123456019, 471958291, 'Carrol Carden', '1 Waubesa Crossing', 1),
(123456020, 859265778, 'Emmett Kerwen', '90525 Forest Run Way', 6),
(123456021, 609056414, 'Josh Andryushin', '66 Duke Junction', 3),
(123456022, 111060747, 'Grannie Quennell', '90 Londonderry Alley', 5),
(123456023, 164746100, 'Nickolas Flavelle', '3 Nelson Terrace', 4),
(123456024, 290751908, 'Fleur Eyckelbeck', '0 Lawn Court', 1),
(123456025, 766679655, 'Armand Ludlam', '56 Calypso Alley', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID_NK` int(50) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `ID_HK` int(50) NOT NULL,
  `QHVoiChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID_NK`, `HoTen`, `NgaySinh`, `ID_HK`, `QHVoiChuHo`) VALUES
(798476562, 'Rory Goard', '1981-09-29', 123456000, ''),
(368684625, 'Rennie Kensett', '1982-09-28', 123456000, ''),
(610988038, 'Thayne Glentz', '1977-07-29', 123456000, ''),
(650975763, 'Esmeralda Burnet', '1986-05-21', 123456001, ''),
(980223775, 'Nicolas Heart', '1995-10-07', 123456001, ''),
(891884781, 'Adriane Clouter', '1991-08-02', 123456001, ''),
(526958568, 'Rhett Titmarsh', '1980-07-18', 123456001, ''),
(534909713, 'Cherry Carnachen', '1982-07-25', 123456002, ''),
(561939037, 'Frazier Giraux', '1978-07-01', 123456002, ''),
(888324973, 'Cathie Palle', '1983-02-27', 123456002, ''),
(375143860, 'Anatola Grew', '1997-12-24', 123456003, ''),
(467135953, 'Kania Jikovsky', '1980-08-16', 123456003, ''),
(391305975, 'Georgine Delafoy', '1976-08-26', 123456003, ''),
(827239396, 'Nestor Allibon', '1996-07-13', 123456003, ''),
(764127965, 'Thorny Petren', '1987-10-20', 123456003, ''),
(815882496, 'Teena Sighard', '1999-09-09', 123456003, ''),
(796806432, 'Koo Barrus', '1988-02-13', 123456005, ''),
(969507266, 'Karyl Pallin', '1995-01-09', 123456005, ''),
(115097668, 'Sumner Covolini', '1982-09-09', 123456006, ''),
(698166317, 'Annabal Halleybone', '1995-09-18', 123456006, ''),
(656030592, 'Elwood Waldock', '1996-07-07', 123456006, ''),
(569383064, 'Hobie Murkitt', '1989-02-09', 123456006, ''),
(200802882, 'Alanah Huton', '1997-08-01', 123456006, ''),
(195671441, 'Rachael Rosser', '1991-11-02', 123456007, ''),
(206282938, 'Trenna Stanlick', '1979-03-07', 123456007, ''),
(948790781, 'Kermit Marcus', '1990-02-26', 123456007, ''),
(860639449, 'Normie Janic', '1986-06-10', 123456007, ''),
(708390394, 'Kendall Tumini', '1981-06-11', 123456007, ''),
(520631259, 'Josiah Druhan', '1997-08-15', 123456007, ''),
(832629076, 'Garrik Brettelle', '1991-07-11', 123456008, ''),
(158088393, 'Damian Kovnot', '1994-08-04', 123456008, ''),
(196968646, 'Abdel Batty', '1980-02-24', 123456008, ''),
(594810759, 'Batsheva Goldsmith', '1996-01-02', 123456008, ''),
(678671882, 'Ronnie Bewick', '1999-09-23', 123456008, ''),
(435454817, 'Elsie Rosa', '1994-10-26', 123456008, ''),
(820403593, 'Prudy Yankin', '1976-03-06', 123456009, ''),
(130515926, 'Prescott Swanborrow', '1999-01-18', 123456009, ''),
(607072470, 'Rob Stancer', '1995-12-25', 123456009, ''),
(916647188, 'Dallon Byer', '1976-08-02', 123456009, ''),
(855839105, 'Merrick Obal', '1992-03-03', 123456009, ''),
(164650234, 'Melisa Masson', '1986-11-08', 123456009, ''),
(194597793, 'Ame Bayly', '1992-12-08', 123456009, ''),
(212869733, 'Katharina Dewer', '1975-01-10', 123456009, ''),
(392057553, 'Tanitansy Di Claudio', '1986-10-26', 123456010, ''),
(181069784, 'Walther McLaggan', '1995-06-10', 123456010, ''),
(991896690, 'Bondy De Roos', '1977-08-20', 123456010, ''),
(125260131, 'Odey Jekel', '1985-09-06', 123456010, ''),
(412441295, 'Myer McConnel', '1975-11-20', 123456011, ''),
(981213559, 'Tamma Boner', '1975-11-13', 123456011, ''),
(469566322, 'Galen Cabel', '1979-09-02', 123456011, ''),
(852167928, 'Jessa Krauss', '1977-07-02', 123456011, ''),
(112116567, 'Bernhard Tinkler', '1997-05-16', 123456012, ''),
(627344075, 'Orly Sauvain', '1991-02-19', 123456012, ''),
(305576171, 'Bertine Donnett', '1990-09-16', 123456012, ''),
(390800898, 'Husain Toon', '1995-11-17', 123456012, ''),
(262131724, 'Lillis Dutnell', '1987-03-17', 123456013, ''),
(649916119, 'Jerri Iskowicz', '1990-12-10', 123456013, ''),
(224246167, 'Daile Grayston', '1980-06-07', 123456013, ''),
(563671939, 'Reta Defond', '1984-03-03', 123456014, ''),
(618495253, 'Ag Tissier', '1983-06-05', 123456014, ''),
(450189996, 'Xenos Surgeon', '1981-05-14', 123456015, ''),
(964314291, 'Rubi Clamp', '1983-11-01', 123456015, ''),
(295060878, 'Luigi Moggle', '1976-12-13', 123456015, ''),
(486227567, 'Durante O\'Scanlon', '1990-02-11', 123456015, ''),
(538005233, 'Theodosia Gerlack', '1987-02-21', 123456015, ''),
(220992150, 'Lea Bellows', '1976-01-15', 123456015, ''),
(804399887, 'Lek Bissex', '1979-12-31', 123456015, ''),
(365330140, 'Sharline Christophersen', '1997-01-05', 123456015, ''),
(964425521, 'Ewan O\'Leahy', '1997-01-18', 123456016, ''),
(399764038, 'Murdoch Sheraton', '1988-11-12', 123456016, ''),
(429830440, 'Burke Braham', '1978-11-14', 123456016, ''),
(347427271, 'Neel Sigsworth', '1992-07-14', 123456017, ''),
(566787961, 'Henri Ornils', '1998-07-12', 123456017, ''),
(399850037, 'Seamus Chue', '1999-08-28', 123456017, ''),
(849197520, 'Sallyann Trebble', '1988-06-02', 123456017, ''),
(742360828, 'Libbie Inold', '1997-03-26', 123456018, ''),
(426895919, 'Joyann Lesek', '1999-09-28', 123456018, ''),
(647043147, 'Saundra Spere', '1990-04-23', 123456018, ''),
(471958291, 'Carrol Carden', '1988-12-18', 123456019, ''),
(859265778, 'Emmett Kerwen', '1990-01-02', 123456020, ''),
(230369853, 'Elwood Cowtherd', '1976-07-04', 123456020, ''),
(600809624, 'Hagan Govenlock', '1990-03-03', 123456020, ''),
(381266141, 'Julie Cristofvao', '1988-04-18', 123456020, ''),
(172448009, 'Griselda Comar', '1976-04-16', 123456020, ''),
(924254684, 'Crystie Vaz', '1999-09-27', 123456020, ''),
(609056414, 'Josh Andryushin', '1990-07-28', 123456021, ''),
(655958887, 'Clifford Wenger', '1996-03-18', 123456021, ''),
(228302955, 'Remus Abbott', '1988-10-27', 123456021, ''),
(111060747, 'Grannie Quennell', '1976-11-10', 123456022, ''),
(207106401, 'Boigie Nardrup', '1999-04-12', 123456022, ''),
(849851724, 'Kelley Vicker', '1981-04-19', 123456022, ''),
(916598967, 'Reinaldo Skillen', '1986-08-19', 123456022, ''),
(652302202, 'Samantha Kilgallen', '1980-09-24', 123456022, ''),
(164746100, 'Nickolas Flavelle', '1999-11-12', 123456023, ''),
(589998906, 'Eduard Butrimovich', '1994-12-26', 123456023, ''),
(924514644, 'Mozelle Freiberg', '1997-06-02', 123456023, ''),
(637612986, 'Kriste Matlock', '1978-12-15', 123456023, ''),
(290751908, 'Fleur Eyckelbeck', '1978-05-01', 123456024, ''),
(766679655, 'Armand Ludlam', '1981-07-19', 123456025, ''),
(711551871, 'Godfree Nisby', '1996-11-02', 123456025, '');

-- --------------------------------------------------------

--
-- Table structure for table `tam_chu`
--

CREATE TABLE `tam_chu` (
  `ID_NK` int(50) NOT NULL,
  `MaGiayTamTru` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDTDangKy` int(50) NOT NULL,
  `TuNgay` date NOT NULL,
  `DenNgay` date NOT NULL,
  `LyDo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tam_vang`
--

CREATE TABLE `tam_vang` (
  `ID_NK` int(50) NOT NULL,
  `MaGiayTamVang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NoiTamTru` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TuNgay` date NOT NULL,
  `DenNgay` date NOT NULL,
  `LyDo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thay_doi_nhan_khau`
--

CREATE TABLE `thay_doi_nhan_khau` (
  `ID_NK` int(50) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `ID_HK` int(50) NOT NULL,
  `QHVoiChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ThayDoi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TuNgay` date NOT NULL,
  `LyDo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
