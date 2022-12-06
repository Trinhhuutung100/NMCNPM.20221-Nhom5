-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 02:25 PM
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
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ho_khau`
--

INSERT INTO `ho_khau` (`ID_HK`, `ID_ChuHo`, `DiaChi`) VALUES
(100000000, 297076674, '122 Esker Trail'),
(100000001, 754737222, '82133 Anthes Circle'),
(100000002, 598656557, '9 Dixon Alley'),
(100000003, 708798730, '31565 Ridgeview Circle'),
(100000004, 404069577, '3 Larry Drive'),
(100000005, 961226277, '91909 Farwell Parkway'),
(100000006, 616514273, '2365 Elmside Center'),
(100000007, 854178067, '8 Gateway Terrace'),
(100000008, 467903391, '39195 Pepper Wood Terrace'),
(100000009, 457728616, '0 Elmside Street'),
(100000010, 764676197, '7867 Clyde Gallagher Alley'),
(100000011, 409759386, '2 Butternut Park'),
(100000012, 934892680, '6745 Westend Trail'),
(100000013, 968414420, '58 Springview Hill'),
(100000014, 431446397, '6 Mifflin Street'),
(100000015, 558994574, '93348 Morningstar Road'),
(100000016, 280444815, '9 Arizona Drive'),
(100000017, 913856656, '59 Chive Terrace'),
(100000018, 386782159, '4 Charing Cross Way'),
(100000019, 891144605, '74 Lakeland Street');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID_NK` int(50) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BiDanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `NoiSinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NguyenQuan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DanToc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgheNghiep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NoiLamViec` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CMND_CCCD` int(50) NOT NULL,
  `NgayCap` date DEFAULT NULL,
  `NoiCap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDKTT` date DEFAULT NULL,
  `DCTTTKCD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `QHVoiChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_HK` int(50) NOT NULL,
  `Status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LyDo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID_NK`, `HoTen`, `BiDanh`, `NgaySinh`, `NoiSinh`, `NguyenQuan`, `DanToc`, `NgheNghiep`, `NoiLamViec`, `CMND_CCCD`, `NgayCap`, `NoiCap`, `NgayDKTT`, `DCTTTKCD`, `QHVoiChuHo`, `ID_HK`, `Status`, `LyDo`) VALUES
(297076674, 'Ian Johanchon', 'Ian', '1978-01-19', '1 Esker Parkway', '122 Esker Trail', '', 'Senior Financial Analyst', '49 Sullivan Avenue', 639927378, '2003-09-18', '817 Russell Plaza', '2010-04-19', '23 Kingsford Court', '', 100000000, 'Taiho', ''),
(262862281, 'Hubey Pawelec', 'Hubey', '1997-01-17', '3785 Bunting Way', '07 Pond Court', '', 'Environmental Tech', '208 Monument Park', 727478830, '2001-07-14', '0714 Clemons Road', '2017-06-09', '4 Sullivan Terrace', '', 100000000, 'Taiho', ''),
(664541538, 'Westley Planque', 'Westley', '1991-03-22', '436 Summerview Parkway', '07 Reindahl Hill', '', 'Paralegal', '91802 Forest Dale Way', 545714389, '2007-06-17', '4 Stuart Junction', '2017-12-21', '77 Morning Park', '', 100000000, 'Taiho', ''),
(443873411, 'Tommie Lohde', 'Tommie', '1984-04-20', '26 Dahle Junction', '26696 Eggendart Parkway', '', 'Design Engineer', '12442 Hollow Ridge Road', 439630132, '2007-05-02', '8145 Grim Pass', '2018-06-20', '16785 Monica Plaza', '', 100000000, 'Taiho', ''),
(754737222, 'Rich Pindell', 'Rich', '1983-07-16', '46 Aberg Park', '82133 Anthes Circle', '', 'Tax Accountant', '48 Menomonie Junction', 634806421, '2008-09-18', '512 Summit Drive', '2010-03-19', '34 Northridge Street', '', 100000001, 'Taiho', ''),
(831123187, 'Fay Bavester', 'Fay', '1985-01-04', '0520 Village Avenue', '510 Dryden Hill', '', 'Pharmacist', '47429 Utah Avenue', 889835698, '2002-06-20', '516 Loftsgordon Drive', '2011-08-14', '52398 Weeping Birch Street', '', 100000001, 'Taiho', ''),
(502140387, 'Kara Gwillyam', 'Kara', '1988-07-09', '284 Heffernan Way', '46096 Portage Center', '', 'Programmer I', '482 Stang Hill', 981306943, '2002-01-10', '81 Hagan Lane', '2010-07-15', '05435 Ludington Circle', '', 100000001, 'Taiho', ''),
(115788431, 'Stavro Magister', 'Stavro', '1975-05-01', '336 Oak Place', '78971 Mccormick Court', '', 'Director of Sales', '20 Sunbrook Center', 516670220, '2007-01-12', '6 Valley Edge Crossing', '2018-11-27', '3424 Muir Parkway', '', 100000001, 'Taiho', ''),
(788380220, 'Ardra Squelch', 'Ardra', '1995-08-06', '85620 Old Gate Pass', '90567 Mccormick Hill', '', 'Legal Assistant', '16668 Little Fleur Trail', 123042092, '2008-09-09', '8 Michigan Hill', '2019-10-08', '72859 Corscot Trail', '', 100000001, 'Taiho', ''),
(598656557, 'Alane McCreadie', 'Alane', '1991-12-23', '885 Crest Line Place', '9 Dixon Alley', '', 'Safety Technician IV', '527 Macpherson Center', 866491601, '2006-01-18', '22 Onsgard Avenue', '2020-03-19', '48729 Fremont Alley', '', 100000002, 'Taiho', ''),
(840895741, 'Ingeborg Readitt', 'Ingeborg', '1979-04-30', '1 Gina Alley', '418 Ludington Alley', '', 'Information Systems Manager', '2441 Monterey Court', 543832675, '2009-11-18', '011 Esker Court', '2020-02-25', '65841 Paget Road', '', 100000002, 'Taiho', ''),
(581824572, 'Nerti Eisikowitz', 'Nerti', '1990-11-28', '119 Dapin Plaza', '50 Tennyson Alley', '', 'Assistant Professor', '15 Reinke Hill', 182142515, '2002-03-05', '4023 Randy Place', '2011-10-03', '8 Harbort Drive', '', 100000002, 'Taiho', ''),
(515113155, 'Moria Kampshell', 'Moria', '1983-05-23', '4839 Meadow Vale Way', '49187 Autumn Leaf Point', '', 'Geological Engineer', '9165 Dovetail Point', 440599046, '2003-05-19', '0974 Spenser Crossing', '2018-02-11', '67 Bay Way', '', 100000002, 'Taiho', ''),
(142955418, 'Davin Gaskill', 'Davin', '1982-07-08', '7055 Maple Terrace', '7 Mcguire Circle', '', 'Director of Sales', '37 Orin Lane', 636546104, '2006-08-21', '50 Fordem Drive', '2018-05-18', '978 Pearson Junction', '', 100000002, 'Taiho', ''),
(485951554, 'Alfredo Bohlmann', 'Alfredo', '1985-11-26', '942 Oak Valley Avenue', '71534 Melvin Park', '', 'Software Engineer I', '8 Spaight Pass', 462165099, '2007-06-11', '93 Hollow Ridge Circle', '2018-05-07', '57969 Barnett Court', '', 100000002, 'Taiho', ''),
(708798730, 'Audrye Sergant', 'Audrye', '1994-01-23', '0 Ruskin Avenue', '31565 Ridgeview Circle', '', 'Administrative Officer', '0853 Bluestem Circle', 913174474, '2006-06-27', '1057 Manitowish Center', '2015-12-08', '861 Troy Street', '', 100000003, 'Taiho', ''),
(947841290, 'Chaunce Pellissier', 'Chaunce', '1983-05-10', '35 Melrose Trail', '92 Warrior Way', '', 'Systems Administrator IV', '8837 Grover Avenue', 355645218, '2000-04-17', '0579 Tennyson Lane', '2018-05-13', '4 Heath Avenue', '', 100000003, 'Taiho', ''),
(884029299, 'Ashlie Camps', 'Ashlie', '1986-03-12', '4 Shasta Alley', '04243 Pearson Drive', '', 'Account Coordinator', '9597 Monument Street', 565600902, '2007-06-25', '32 Mallory Plaza', '2016-12-19', '856 Armistice Plaza', '', 100000003, 'Taiho', ''),
(484226215, 'Garry Shead', 'Garry', '1988-12-02', '69 Dixon Circle', '0 Westport Terrace', '', 'Nurse', '483 Duke Center', 173846709, '2000-04-29', '924 Cottonwood Plaza', '2021-02-08', '0 Hollow Ridge Junction', '', 100000003, 'Taiho', ''),
(184027133, 'Simone Garnett', 'Simone', '1999-04-29', '31386 Shasta Crossing', '3534 Luster Crossing', '', 'Programmer II', '324 Union Trail', 339144090, '2008-02-03', '81 Lakewood Place', '2020-05-25', '1552 Corscot Parkway', '', 100000003, 'Taiho', ''),
(324114290, 'Danice Quinion', 'Danice', '1990-08-21', '1605 Warrior Circle', '178 Nancy Center', '', 'Product Engineer', '16387 Lillian Court', 620842891, '2000-01-07', '81175 Logan Place', '2018-05-02', '4829 Garrison Road', '', 100000003, 'Taiho', ''),
(764912641, 'Tatiania Sacchetti', 'Tatiania', '1975-02-25', '690 Buena Vista Park', '4 Caliangt Crossing', '', 'Analog Circuit Design manager', '846 Orin Crossing', 967975522, '2009-07-05', '4 Dayton Parkway', '2010-02-24', '3952 Loftsgordon Lane', '', 100000003, 'Taiho', ''),
(248285865, 'Casey Christophers', 'Casey', '1989-02-24', '4700 Paget Trail', '1163 Kingsford Street', '', 'Senior Quality Engineer', '55323 Sugar Parkway', 928721851, '2000-09-14', '975 Mayer Parkway', '2011-12-30', '81063 Havey Crossing', '', 100000003, 'Taiho', ''),
(404069577, 'Lira Glanester', 'Lira', '1981-07-22', '8 Lakewood Gardens Trail', '3 Larry Drive', '', 'Editor', '610 Fairview Avenue', 296822991, '2009-10-16', '0 Luster Circle', '2014-04-27', '244 Jay Terrace', '', 100000004, 'Taiho', ''),
(261233363, 'Tamqrah Linguard', 'Tamqrah', '1980-01-09', '737 Gale Place', '2 Milwaukee Park', '', 'Civil Engineer', '01785 Forster Drive', 330687942, '2000-04-27', '2 Arkansas Avenue', '2011-12-19', '6568 Maple Alley', '', 100000004, 'Taiho', ''),
(463002310, 'Kathy Wildish', 'Kathy', '1986-07-21', '96524 Merrick Road', '170 Ludington Drive', '', 'Software Engineer I', '2 Garrison Hill', 908499200, '2009-01-01', '01 3rd Crossing', '2014-04-27', '53736 Coleman Center', '', 100000004, 'Taiho', ''),
(750068348, 'Flemming Valeri', 'Flemming', '1983-12-29', '2421 Commercial Plaza', '9 Pleasure Lane', '', 'Environmental Tech', '7281 Fulton Street', 635328049, '2004-07-09', '2709 Corscot Center', '2011-11-21', '077 Melby Way', '', 100000004, 'Taiho', ''),
(114880631, 'Gerti Kingsworth', 'Gerti', '1984-07-23', '1589 Loeprich Parkway', '6 Independence Parkway', '', 'Desktop Support Technician', '62775 Springview Terrace', 780372517, '2006-09-07', '72 Express Lane', '2013-07-11', '673 Burning Wood Trail', '', 100000004, 'Taiho', ''),
(835020480, 'Arie Maxstead', 'Arie', '1992-09-14', '543 Marquette Park', '0098 Wayridge Drive', '', 'Senior Editor', '3581 1st Place', 573795419, '2008-09-02', '507 Eggendart Junction', '2020-03-09', '08749 Columbus Center', '', 100000004, 'Taiho', ''),
(961226277, 'Dagny Rogans', 'Dagny', '1994-10-14', '13329 Jenifer Way', '91909 Farwell Parkway', '', 'VP Marketing', '83 Ronald Regan Circle', 194185393, '2008-07-09', '3 Hudson Lane', '2016-10-26', '6583 Jay Terrace', '', 100000005, 'Taiho', ''),
(918051495, 'Wilhelmina Birnie', 'Wilhelmina', '1984-02-23', '8 Graedel Terrace', '47 Hintze Trail', '', 'Quality Control Specialist', '090 2nd Terrace', 926823765, '2001-08-20', '936 Lakeland Avenue', '2019-10-09', '86 6th Road', '', 100000005, 'Taiho', ''),
(313805039, 'Bendix Whapple', 'Bendix', '1989-01-24', '159 Monterey Park', '8 Roxbury Circle', '', 'Senior Financial Analyst', '121 Oak Valley Parkway', 784862003, '2004-08-26', '274 Katie Road', '2015-12-10', '44048 Moland Park', '', 100000005, 'Taiho', ''),
(616514273, 'Auberon Veneur', 'Auberon', '1990-03-10', '77 Eastwood Avenue', '2365 Elmside Center', '', 'Recruiter', '79027 Hoard Street', 810984266, '2006-02-20', '1 Fairview Court', '2015-09-11', '4 Hudson Park', '', 100000006, 'Taiho', ''),
(162422896, 'Tootsie Ruxton', 'Tootsie', '1991-03-12', '91609 Kinsman Place', '30786 Portage Way', '', 'Chief Design Engineer', '4771 Straubel Park', 420687001, '2009-10-07', '0877 Harper Crossing', '2011-12-03', '7998 Duke Crossing', '', 100000006, 'Taiho', ''),
(236450687, 'Alis Ajam', 'Alis', '1976-05-05', '46826 Rockefeller Hill', '9 Larry Junction', '', 'Business Systems Development Analyst', '742 Farwell Terrace', 805280633, '2000-01-10', '5 Fairfield Road', '2020-12-21', '42512 Forster Pass', '', 100000006, 'Taiho', ''),
(821056154, 'Tate Collerd', 'Tate', '1975-04-04', '4361 Luster Place', '5 Crescent Oaks Place', '', 'Registered Nurse', '37963 Larry Way', 526986204, '2000-04-18', '7 Harper Pass', '2018-03-26', '0807 Carpenter Hill', '', 100000006, 'Taiho', ''),
(102993256, 'Norton Order', 'Norton', '1986-05-18', '6 Hermina Way', '0 Moose Road', '', 'Teacher', '1 Shelley Hill', 374613650, '2009-01-08', '3071 6th Junction', '2011-11-23', '80404 Little Fleur Pass', '', 100000006, 'Taiho', ''),
(424811310, 'Rachael Mabbot', 'Rachael', '1986-12-24', '4023 Hallows Alley', '6 Straubel Junction', '', 'Account Coordinator', '1793 Tomscot Center', 547811639, '2009-03-20', '47 Mandrake Circle', '2021-08-10', '6191 Forest Dale Street', '', 100000006, 'Taiho', ''),
(873677617, 'Shellysheldon Heiton', 'Shellysheldon', '1978-02-10', '799 Iowa Alley', '045 Ilene Lane', '', 'Research Nurse', '7 Algoma Crossing', 168519079, '2009-07-09', '2292 Susan Parkway', '2016-03-21', '536 Sundown Crossing', '', 100000006, 'Taiho', ''),
(854178067, 'Giffer Barbary', 'Giffer', '1992-08-30', '4714 Waubesa Crossing', '8 Gateway Terrace', '', 'Statistician IV', '8944 Transport Drive', 518182153, '2000-11-15', '347 Cordelia Place', '2020-10-03', '055 Brown Alley', '', 100000007, 'Taiho', ''),
(485578680, 'Cinda Dwelling', 'Cinda', '1983-07-13', '54 Orin Court', '075 Southridge Place', '', 'Budget/Accounting Analyst III', '0 Nova Avenue', 371553375, '2007-11-26', '1 Havey Drive', '2018-06-17', '665 Tony Hill', '', 100000007, 'Taiho', ''),
(547691709, 'Merna Bamb', 'Merna', '1988-10-12', '43251 Melody Center', '9871 Carpenter Parkway', '', 'Accountant IV', '16 Straubel Drive', 819945885, '2009-07-14', '661 Spenser Plaza', '2011-05-04', '0294 Judy Trail', '', 100000007, 'Taiho', ''),
(886464971, 'Leanor Shallcross', 'Leanor', '1984-01-09', '7 Londonderry Point', '00403 Troy Trail', '', 'Senior Sales Associate', '09 Kedzie Drive', 735654245, '2009-09-08', '09 Spenser Drive', '2018-12-13', '2 Namekagon Park', '', 100000007, 'Taiho', ''),
(254464863, 'Olly Rahlof', 'Olly', '1984-12-18', '8 Merry Hill', '793 Schmedeman Drive', '', 'Health Coach I', '58 Tennyson Terrace', 874533422, '2002-05-09', '89 Beilfuss Terrace', '2019-06-13', '009 Corben Road', '', 100000007, 'Taiho', ''),
(805881267, 'Juliette Desson', 'Juliette', '1978-11-06', '5 Ridgeway Drive', '2 Mcguire Crossing', '', 'Internal Auditor', '0 Green Street', 855538213, '2006-12-14', '32308 Londonderry Circle', '2021-10-13', '1166 Bonner Road', '', 100000007, 'Taiho', ''),
(467903391, 'Stevie Bynert', 'Stevie', '1986-04-27', '03 Manley Lane', '39195 Pepper Wood Terrace', '', 'Teacher', '15 Anzinger Court', 833370597, '2005-02-17', '36 Riverside Hill', '2018-02-25', '79243 Golf Crossing', '', 100000008, 'Taiho', ''),
(564100730, 'Akim Yurov', 'Akim', '1990-11-24', '913 Fremont Hill', '0 Golf Course Way', '', 'Web Designer III', '8026 Hudson Street', 725642778, '2007-06-25', '0784 Trailsway Road', '2020-03-28', '1 Vera Terrace', '', 100000008, 'Taiho', ''),
(861567647, 'Renard Daglish', 'Renard', '1976-04-22', '11 Nova Place', '04 Mandrake Alley', '', 'Desktop Support Technician', '1108 Sunfield Pass', 992379717, '2009-02-15', '61638 Little Fleur Plaza', '2018-06-15', '452 Talisman Park', '', 100000008, 'Taiho', ''),
(457728616, 'Atlanta Imorts', 'Atlanta', '1985-03-22', '85 Dakota Drive', '0 Elmside Street', '', 'Professor', '529 Orin Crossing', 318953019, '2006-12-26', '8 Acker Trail', '2010-10-03', '6 Bluestem Point', '', 100000009, 'Taiho', ''),
(559997025, 'Sherm Joney', 'Sherm', '1986-03-01', '4976 Walton Road', '875 Golf Point', '', 'Operator', '80 Gina Junction', 138014579, '2006-09-06', '1 Hallows Circle', '2019-03-12', '1 Kenwood Place', '', 100000009, 'Taiho', ''),
(970510173, 'Alyss Teaser', 'Alyss', '1975-11-20', '30 Hovde Park', '9176 Nova Circle', '', 'Financial Advisor', '09039 Corscot Way', 416039527, '2007-03-19', '0 Warbler Alley', '2018-10-03', '692 Westridge Park', '', 100000009, 'Taiho', ''),
(969730947, 'Michele Brommage', 'Michele', '1999-09-13', '821 Emmet Junction', '3087 Spenser Avenue', '', 'Account Executive', '04385 Longview Terrace', 642132126, '2008-06-09', '46607 Cascade Terrace', '2017-01-31', '807 Superior Court', '', 100000009, 'Taiho', ''),
(114522952, 'Kathryne Stedall', 'Kathryne', '1992-07-18', '35699 Fairview Terrace', '4 Rieder Drive', '', 'Environmental Specialist', '884 Lake View Plaza', 814656414, '2005-01-28', '74477 Birchwood Center', '2013-05-07', '7470 Homewood Point', '', 100000009, 'Taiho', ''),
(256723433, 'Jase Baudou', 'Jase', '1975-09-20', '267 Barnett Plaza', '87 Farmco Trail', '', 'Senior Developer', '59 Prentice Court', 293825205, '2008-10-07', '2 Jenifer Terrace', '2013-12-30', '780 Oriole Park', '', 100000009, 'Taiho', ''),
(764676197, 'Myriam Beningfield', 'Myriam', '1988-04-11', '68093 Pankratz Road', '7867 Clyde Gallagher Alley', '', 'Internal Auditor', '929 Basil Trail', 785371421, '2002-10-31', '4605 Paget Crossing', '2015-01-19', '326 Kensington Crossing', '', 100000010, 'Taiho', ''),
(799936475, 'Johnathon Saunderson', 'Johnathon', '1989-03-14', '91 Transport Trail', '22 Lien Place', '', 'Financial Analyst', '74 Vernon Circle', 795544020, '2001-07-22', '9041 Fisk Park', '2018-04-10', '0 Montana Alley', '', 100000010, 'Taiho', ''),
(785166491, 'Clarey Britzius', 'Clarey', '1977-04-16', '5 Norway Maple Avenue', '0 Hallows Circle', '', 'Internal Auditor', '7 John Wall Point', 798099749, '2005-05-10', '015 Maywood Parkway', '2019-06-21', '703 Russell Alley', '', 100000010, 'Taiho', ''),
(440361123, 'Annabelle Grindlay', 'Annabelle', '1989-02-06', '77508 Porter Crossing', '4634 Morning Parkway', '', 'Office Assistant III', '3 Tony Park', 811093963, '2000-11-06', '97401 Marcy Alley', '2014-03-30', '980 North Road', '', 100000010, 'Taiho', ''),
(333769563, 'Ellery Thursfield', 'Ellery', '1979-09-18', '65473 Express Center', '76 Truax Junction', '', 'Cost Accountant', '50006 Dorton Lane', 716996080, '2008-05-15', '45870 Hanover Terrace', '2012-11-26', '15 Tennessee Plaza', '', 100000010, 'Taiho', ''),
(741244250, 'Sayers Ogger', 'Sayers', '1995-04-14', '5 Knutson Trail', '31 Butternut Court', '', 'Marketing Assistant', '166 Brentwood Crossing', 427918012, '2003-11-02', '2 Eagan Alley', '2020-12-31', '54501 Algoma Drive', '', 100000010, 'Taiho', ''),
(409759386, 'Elna Pattemore', 'Elna', '1999-11-05', '745 Kenwood Junction', '2 Butternut Park', '', 'Programmer Analyst III', '537 3rd Place', 380785225, '2008-04-08', '90 Bunting Pass', '2014-05-20', '9487 Towne Road', '', 100000011, 'Taiho', ''),
(571528154, 'Alix Kestle', 'Alix', '1989-02-05', '31 Farmco Street', '513 Sullivan Park', '', 'Marketing Manager', '44407 Anthes Place', 574917396, '2003-09-24', '67 Melody Park', '2021-04-01', '72 Sheridan Center', '', 100000011, 'Taiho', ''),
(230194284, 'Mark Dineen', 'Mark', '1987-07-30', '0 Golf View Park', '9294 Boyd Parkway', '', 'Technical Writer', '3 Ramsey Parkway', 719491531, '2009-11-17', '3263 Division Trail', '2014-06-21', '44043 Maywood Lane', '', 100000011, 'Taiho', ''),
(864690733, 'Codi Vuitton', 'Codi', '1985-11-24', '09630 Carioca Parkway', '812 Killdeer Avenue', '', 'Biostatistician IV', '279 Sherman Way', 841327015, '2002-10-29', '19466 8th Hill', '2017-09-08', '44177 Steensland Junction', '', 100000011, 'Taiho', ''),
(452583560, 'Taddeusz Bundock', 'Taddeusz', '1988-03-17', '581 Lakewood Terrace', '3 South Way', '', 'Information Systems Manager', '80 Menomonie Circle', 207100547, '2006-01-11', '504 Loeprich Way', '2016-09-13', '76 Anhalt Crossing', '', 100000011, 'Taiho', ''),
(904682204, 'Lannie Henrys', 'Lannie', '1985-03-20', '395 Park Meadow Trail', '51853 Nelson Terrace', '', 'Physical Therapy Assistant', '29446 Hooker Parkway', 324982247, '2005-03-06', '8254 Miller Terrace', '2018-09-04', '473 Merrick Alley', '', 100000011, 'Taiho', ''),
(934892680, 'Milt Shrigley', 'Milt', '1980-12-29', '074 Gulseth Point', '6745 Westend Trail', '', 'Office Assistant IV', '8368 Kensington Place', 912115732, '2007-09-27', '9770 Spohn Avenue', '2012-11-30', '86918 Spohn Park', '', 100000012, 'Taiho', ''),
(432730696, 'Marybeth Gregersen', 'Marybeth', '1984-10-28', '886 Farragut Way', '8806 Crownhardt Center', '', 'Software Consultant', '0 Manley Road', 209037435, '2001-11-18', '34053 American Lane', '2013-11-25', '638 Fulton Avenue', '', 100000012, 'Taiho', ''),
(968414420, 'Suzy Hollyard', 'Suzy', '1976-09-28', '09517 Kensington Crossing', '58 Springview Hill', '', 'Nurse', '197 Arkansas Crossing', 966151200, '2003-03-23', '63 Aberg Crossing', '2015-12-07', '5497 Westridge Pass', '', 100000013, 'Taiho', ''),
(996774276, 'Klemens Pawelek', 'Klemens', '1988-09-22', '12808 Glacier Hill Parkway', '16 Warrior Parkway', '', 'VP Marketing', '60097 Esch Hill', 371221230, '2000-11-20', '562 Old Gate Point', '2020-05-10', '7363 Anniversary Lane', '', 100000013, 'Taiho', ''),
(803491334, 'Celesta Carnson', 'Celesta', '1979-12-17', '1 Packers Terrace', '0851 Merchant Junction', '', 'Chemical Engineer', '552 Bluestem Junction', 946533586, '2000-01-07', '14988 North Trail', '2013-08-23', '2988 Elka Court', '', 100000013, 'Taiho', ''),
(776833705, 'Gerrilee Mullin', 'Gerrilee', '1984-05-16', '05203 Golden Leaf Junction', '5998 Carberry Drive', '', 'Senior Editor', '0743 Superior Street', 244833408, '2005-03-12', '587 Armistice Plaza', '2019-07-12', '29 Lien Way', '', 100000013, 'Taiho', ''),
(184012769, 'Loleta McKean', 'Loleta', '1978-03-05', '01 Bunting Plaza', '1 Fairfield Plaza', '', 'Senior Financial Analyst', '8 Clarendon Crossing', 186066737, '2002-09-05', '00516 Little Fleur Crossing', '2016-02-10', '1 Butterfield Hill', '', 100000013, 'Taiho', ''),
(276827903, 'Denver Bittlestone', 'Denver', '1984-01-15', '910 Esker Trail', '44 Ryan Circle', '', 'Speech Pathologist', '84751 Jana Drive', 955769548, '2007-08-21', '46622 Jay Alley', '2015-11-02', '6 Lyons Drive', '', 100000013, 'Taiho', ''),
(276343609, 'Burt Handaside', 'Burt', '1991-12-21', '85138 Ronald Regan Hill', '3191 Golden Leaf Trail', '', 'Senior Sales Associate', '1372 Dorton Lane', 327128716, '2007-01-22', '44519 Morningstar Center', '2011-05-01', '183 Canary Plaza', '', 100000013, 'Taiho', ''),
(431446397, 'Tamarah Humbles', 'Tamarah', '1990-10-28', '26 Bartillon Road', '6 Mifflin Street', '', 'Dental Hygienist', '63 Elmside Street', 299489579, '2001-05-31', '32576 Clove Junction', '2011-02-04', '017 Badeau Parkway', '', 100000014, 'Taiho', ''),
(456154218, 'Lane Aitchison', 'Lane', '1995-10-19', '27432 Namekagon Trail', '182 Stoughton Circle', '', 'Research Associate', '108 Truax Circle', 276014577, '2004-02-02', '378 Hoffman Junction', '2013-07-18', '580 Morrow Hill', '', 100000014, 'Taiho', ''),
(976218891, 'Annadiana Tootal', 'Annadiana', '1976-01-03', '517 Bonner Park', '99432 Fuller Junction', '', 'Analyst Programmer', '249 Meadow Ridge Circle', 636839808, '2009-12-09', '62432 Bunting Street', '2016-08-24', '0 Sage Way', '', 100000014, 'Taiho', ''),
(572411009, 'Titos Baradel', 'Titos', '1989-07-27', '4611 Roth Park', '6196 Blackbird Street', '', 'Staff Scientist', '5 Kennedy Street', 498614192, '2001-12-05', '0949 Riverside Junction', '2017-06-11', '3 Fieldstone Alley', '', 100000014, 'Taiho', ''),
(558994574, 'Toby McQuie', 'Toby', '1977-02-18', '13 Nancy Alley', '93348 Morningstar Road', '', 'Senior Quality Engineer', '10 Brentwood Way', 629143781, '2002-05-15', '74886 6th Road', '2018-07-06', '01 Portage Point', '', 100000015, 'Taiho', ''),
(542814756, 'Frasquito McGlaughn', 'Frasquito', '1983-07-10', '77 Sutteridge Court', '89974 Monument Circle', '', 'Sales Associate', '52 2nd Parkway', 703871317, '2005-12-15', '469 Pleasure Drive', '2019-07-02', '48594 International Alley', '', 100000015, 'Taiho', ''),
(371809373, 'Aldin Renahan', 'Aldin', '1991-05-29', '11 Schiller Lane', '3 Michigan Plaza', '', 'Database Administrator III', '83 Nova Court', 693314230, '2007-12-04', '92274 Thierer Junction', '2016-12-21', '17 Badeau Road', '', 100000015, 'Taiho', ''),
(212909024, 'Rudy Stelli', 'Rudy', '1978-03-23', '492 Continental Avenue', '03 Marquette Street', '', 'Software Test Engineer II', '845 Drewry Circle', 473182135, '2009-08-14', '8 Nancy Hill', '2020-11-03', '00544 Gina Junction', '', 100000015, 'Taiho', ''),
(606208000, 'Rosaline Lee', 'Rosaline', '1998-08-18', '14780 Holy Cross Terrace', '0 Derek Avenue', '', 'Nuclear Power Engineer', '8 Jenna Terrace', 674150542, '2006-02-15', '974 Almo Hill', '2019-02-02', '296 Oxford Plaza', '', 100000015, 'Taiho', ''),
(345838525, 'Brade Atlay', 'Brade', '1976-11-02', '25 Eastwood Parkway', '7 Straubel Hill', '', 'Graphic Designer', '889 Saint Paul Park', 577116219, '2001-06-17', '00 Dovetail Avenue', '2017-12-02', '7 Maywood Center', '', 100000015, 'Taiho', ''),
(280444815, 'Nikolia Darte', 'Nikolia', '1975-10-22', '69 Mallard Crossing', '9 Arizona Drive', '', 'Legal Assistant', '55817 Old Shore Park', 680001865, '2008-07-13', '18727 Sherman Pass', '2021-12-09', '595 Calypso Way', '', 100000016, 'Taiho', ''),
(113379973, 'Wilhelmina Wace', 'Wilhelmina', '1996-06-04', '98 Union Terrace', '96 Bonner Road', '', 'Accountant I', '436 Sundown Parkway', 474722809, '2007-07-13', '338 Forster Crossing', '2015-10-26', '537 Colorado Trail', '', 100000016, 'Taiho', ''),
(355976711, 'Marney Guittet', 'Marney', '1988-07-29', '875 Forster Avenue', '8 Weeping Birch Drive', '', 'Environmental Tech', '66047 Brown Drive', 259007613, '2005-04-11', '1106 Anzinger Trail', '2011-04-10', '6 Hudson Crossing', '', 100000016, 'Taiho', ''),
(353116448, 'Nolana De Matteis', 'Nolana', '1993-07-08', '5810 Carpenter Terrace', '883 Onsgard Terrace', '', 'Analyst Programmer', '7199 Arizona Court', 537103420, '2000-08-30', '58 Redwing Alley', '2011-11-22', '17896 Tennyson Alley', '', 100000016, 'Taiho', ''),
(913856656, 'Carine Viel', 'Carine', '1981-11-01', '2509 Kennedy Way', '59 Chive Terrace', '', 'Junior Executive', '047 Hagan Park', 910860770, '2007-09-29', '201 Mandrake Street', '2018-08-27', '73228 Hanover Crossing', '', 100000017, 'Taiho', ''),
(526151669, 'Jonathon Ivain', 'Jonathon', '1992-10-19', '9 Jackson Hill', '0 Rusk Crossing', '', 'Technical Writer', '15 Meadow Vale Park', 319711042, '2006-03-09', '73 Dwight Street', '2014-09-25', '16134 Clemons Road', '', 100000017, 'Taiho', ''),
(386782159, 'Buckie McCoid', 'Buckie', '1986-08-24', '466 Thackeray Trail', '4 Charing Cross Way', '', 'Recruiting Manager', '4 Del Mar Pass', 386647735, '2008-02-19', '24939 Michigan Circle', '2011-03-08', '048 Carberry Court', '', 100000018, 'Taiho', ''),
(651963824, 'Rene Wymer', 'Rene', '1995-05-17', '826 Lakewood Gardens Road', '884 Independence Trail', '', 'Structural Analysis Engineer', '45076 Hoffman Road', 330143554, '2009-10-19', '04 Lillian Way', '2016-10-03', '101 Becker Place', '', 100000018, 'Taiho', ''),
(304764924, 'Alon Thumim', 'Alon', '1990-02-28', '714 New Castle Trail', '490 Petterle Alley', '', 'Financial Analyst', '0 Harper Lane', 527142064, '2001-11-30', '850 Nobel Avenue', '2014-03-08', '45977 Morning Trail', '', 100000018, 'Taiho', ''),
(715220884, 'Ellis Jiru', 'Ellis', '1975-07-02', '999 Dorton Way', '8 Corry Circle', '', 'Marketing Assistant', '617 Donald Junction', 383938250, '2003-04-26', '03780 Stone Corner Alley', '2012-05-15', '2852 Northland Trail', '', 100000018, 'Taiho', ''),
(891144605, 'Kristoffer Emblen', 'Kristoffer', '1998-07-05', '55023 Lakewood Gardens Trail', '74 Lakeland Street', '', 'Registered Nurse', '35 Doe Crossing Street', 117015345, '2009-04-30', '44198 Lunder Lane', '2011-08-20', '1155 Lakewood Gardens Trail', '', 100000019, 'Taiho', ''),
(706731792, 'Silvie Kevlin', 'Silvie', '1987-05-22', '67790 Westerfield Road', '41 Northview Terrace', '', 'Assistant Manager', '4837 Harper Terrace', 779875203, '2002-05-31', '0 Glacier Hill Lane', '2019-11-21', '8602 Heffernan Center', '', 100000019, 'Taiho', ''),
(225979487, 'Jimmy Spain-Gower', 'Jimmy', '1990-03-18', '4237 Fieldstone Terrace', '22 Memorial Court', '', 'Product Engineer', '00377 Haas Alley', 598289928, '2002-01-16', '29112 Monterey Street', '2020-03-06', '35983 Roxbury Point', '', 100000019, 'Taiho', ''),
(684555689, 'Tasha Crab', 'Tasha', '1978-04-05', '19807 Prairie Rose Crossing', '3 Lindbergh Lane', '', 'Editor', '848 Eastwood Road', 746755784, '2002-09-02', '82 Texas Hill', '2019-02-06', '3 Forster Avenue', '', 100000019, 'Taiho', ''),
(723165165, 'Minnie Stilwell', 'Minnie', '1994-09-30', '0 Novick Drive', '0694 Ronald Regan Lane', '', 'Social Worker', '23206 Starling Center', 383640563, '2009-06-06', '6 Tomscot Plaza', '2015-10-03', '2044 Stephen Point', '', 100000019, 'Taiho', '');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('1', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
