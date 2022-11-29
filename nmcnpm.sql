-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 03:57 AM
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
(1000000000, 2012877568, '15091 Anhalt Road'),
(1000000001, 2147483647, '542 Packers Way'),
(1000000002, 2147483647, '2052 Sycamore Street'),
(1000000003, 1399221901, '30 Monument Alley'),
(1000000004, 2147483647, '4678 Division Alley'),
(1000000005, 1874634536, '1388 Brickson Park Point'),
(1000000006, 2147483647, '7504 Badeau Circle'),
(1000000007, 1431330284, '039 Corscot Avenue'),
(1000000008, 2147483647, '779 Sunbrook Park'),
(1000000009, 2147483647, '23496 Washington Center'),
(1000000010, 2147483647, '747 Hooker Crossing'),
(1000000011, 2147483647, '28415 Valley Edge Parkway'),
(1000000012, 2147483647, '59 Mockingbird Pass'),
(1000000013, 2147483647, '313 Dottie Court'),
(1000000014, 2147483647, '4236 Clyde Gallagher Trail'),
(1000000015, 1488033509, '75235 Kingsford Alley'),
(1000000016, 2147483647, '7 Acker Terrace'),
(1000000017, 2147483647, '5 Vidon Terrace'),
(1000000018, 2147483647, '8899 Lindbergh Trail'),
(1000000019, 2147483647, '7217 Jenna Circle'),
(1000000020, 2147483647, '14 East Parkway');

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
(2012877568, 'Lockwood Hamberstone', 'Lockwood', '1982-01-24', '15091 Anhalt Road', '55 Oakridge Road', '', 'Database Administrator III', '6513 Summit Terrace', 2147483647, '2003-07-20', '35965 American Alley', '2000-11-20', '24 Jackson Circle', '', 1000000000, '', ''),
(2147483647, 'Yovonnda Shoosmith', 'Yovonnda', '1978-03-28', '25 Karstens Street', '31630 Miller Crossing', '', 'Mechanical Systems Engineer', '0317 Commercial Plaza', 2147483647, '2000-07-14', '16 Maple Junction', '2016-05-14', '26702 Warrior Lane', '', 1000000000, '', ''),
(2147483647, 'Gerhardine Croizier', 'Gerhardine', '1975-05-07', '27 Bobwhite Crossing', '8984 Warrior Trail', '', 'Nurse Practicioner', '37390 Lukken Trail', 2147483647, '2021-09-18', '596 International Avenue', '2013-06-30', '9215 Towne Trail', '', 1000000000, '', ''),
(2147483647, 'Nelle Hocking', 'Nelle', '1988-02-20', '938 Talisman Terrace', '15 Hauk Place', '', 'Automation Specialist III', '0 Mcbride Lane', 2147483647, '2015-02-05', '9576 Merrick Road', '2019-08-13', '6 Di Loreto Way', '', 1000000000, '', ''),
(2147483647, 'Kaja Bywaters', 'Kaja', '1975-07-16', '654 Coolidge Junction', '48 Barby Crossing', '', 'GIS Technical Architect', '843 Algoma Trail', 2147483647, '2010-02-23', '6851 Alpine Road', '2003-02-05', '36204 Corry Trail', '', 1000000000, '', ''),
(2147483647, 'Kalvin Popelay', 'Kalvin', '1984-07-18', '542 Packers Way', '1125 La Follette Pass', '', 'Pharmacist', '06 Lyons Place', 2147483647, '2014-01-28', '07 Arapahoe Pass', '2002-03-30', '44314 Buell Point', '', 1000000001, '', ''),
(2147483647, 'Bondon Northin', 'Bondon', '1981-04-25', '2052 Sycamore Street', '315 Ilene Center', '', 'Automation Specialist IV', '41360 Weeping Birch Junction', 2147483647, '2013-04-08', '1 Hallows Way', '2001-08-23', '049 North Drive', '', 1000000002, '', ''),
(2147483647, 'Alika Jertz', 'Alika', '1984-05-29', '690 John Wall Hill', '58 Golf View Plaza', '', 'Research Nurse', '8111 Washington Center', 2147483647, '2004-05-07', '31155 Browning Junction', '2015-12-25', '9 Hudson Alley', '', 1000000002, '', ''),
(2147483647, 'Ivy Spinks', 'Ivy', '1987-02-14', '93 2nd Alley', '79 Melvin Center', '', 'General Manager', '793 Toban Crossing', 2147483647, '2022-02-18', '2 Scoville Place', '2004-11-10', '9 Harbort Point', '', 1000000002, '', ''),
(2147483647, 'Audra Mayhou', 'Audra', '1978-06-29', '74 Pankratz Drive', '3754 Granby Road', '', 'Registered Nurse', '5 Dorton Terrace', 2147483647, '2020-03-25', '16240 Arrowood Center', '2011-10-10', '03 Anniversary Circle', '', 1000000002, '', ''),
(1399221901, 'Ebony Kadwallider', 'Ebony', '1980-06-27', '30 Monument Alley', '128 Brown Lane', '', 'Computer Systems Analyst IV', '1861 Garrison Avenue', 2147483647, '2016-11-03', '259 Sundown Point', '2007-08-29', '70447 La Follette Center', '', 1000000003, '', ''),
(2147483647, 'Claiborn Pablos', 'Claiborn', '1988-05-20', '633 Jana Way', '5325 Monument Center', '', 'Account Representative II', '7 David Alley', 2147483647, '2013-01-22', '929 Corscot Trail', '2002-10-04', '41 Center Alley', '', 1000000003, '', ''),
(2147483647, 'Lorita Prangle', 'Lorita', '1981-12-24', '791 Lakewood Gardens Plaza', '89681 Messerschmidt Park', '', 'Food Chemist', '0 Cottonwood Plaza', 2147483647, '2011-11-07', '254 Tony Hill', '2009-09-13', '226 Fairfield Way', '', 1000000003, '', ''),
(2147483647, 'Roxie Nield', 'Roxie', '1986-11-16', '4678 Division Alley', '01200 Sutherland Terrace', '', 'Paralegal', '87729 Tomscot Junction', 2147483647, '2008-04-26', '73 Nelson Street', '2006-01-21', '44575 Butternut Way', '', 1000000004, '', ''),
(2147483647, 'Renie O\'Dee', 'Renie', '1977-03-12', '4684 Rigney Drive', '1 Hudson Circle', '', 'Chief Design Engineer', '1 Rockefeller Road', 2147483647, '2014-12-07', '08850 Schmedeman Point', '2009-10-08', '524 Vernon Terrace', '', 1000000004, '', ''),
(2147483647, 'Duffy Poure', 'Duffy', '1980-12-18', '10 Pierstorff Parkway', '343 Lien Point', '', 'Account Coordinator', '71339 Ohio Terrace', 2147483647, '2008-05-20', '0897 Iowa Drive', '2022-04-30', '80919 Fallview Center', '', 1000000004, '', ''),
(1874634536, 'Lizbeth Padbery', 'Lizbeth', '1984-08-22', '1388 Brickson Park Point', '7 Acker Pass', '', 'Staff Accountant II', '210 Melody Circle', 2147483647, '2004-12-30', '26 Sundown Way', '2000-10-19', '33 Shopko Way', '', 1000000005, '', ''),
(2147483647, 'Kyrstin Echallier', 'Kyrstin', '1986-03-22', '23167 Pepper Wood Place', '0 Thompson Trail', '', 'Compensation Analyst', '859 Summit Avenue', 2147483647, '2022-04-26', '343 Warbler Hill', '2006-01-03', '5 Jenifer Place', '', 1000000005, '', ''),
(2147483647, 'Curcio Sandlin', 'Curcio', '1986-04-12', '9768 Surrey Road', '1 Express Park', '', 'Librarian', '3 Longview Circle', 2147483647, '2008-02-28', '87587 Pierstorff Park', '2006-07-24', '2152 Bobwhite Circle', '', 1000000005, '', ''),
(2147483647, 'Klarrisa Cawley', 'Klarrisa', '1976-05-07', '82 Caliangt Pass', '97947 Lukken Drive', '', 'Assistant Manager', '2589 Hintze Alley', 2147483647, '2002-05-31', '533 Village Green Drive', '2004-12-12', '83 Sundown Court', '', 1000000005, '', ''),
(2147483647, 'Jodee Sacaze', 'Jodee', '1989-04-24', '4 Waxwing Park', '52 Dorton Way', '', 'Staff Accountant III', '47 Buena Vista Circle', 2147483647, '2003-08-16', '6 Dunning Avenue', '2012-01-10', '41 Sunnyside Park', '', 1000000005, '', ''),
(2147483647, 'Tani Stookes', 'Tani', '1978-07-25', '12829 Florence Center', '145 Twin Pines Crossing', '', 'Human Resources Assistant II', '0992 Hazelcrest Crossing', 2147483647, '2005-09-08', '9 Carey Crossing', '2005-06-12', '24262 Tony Road', '', 1000000005, '', ''),
(1659237519, 'Richie Dyball', 'Richie', '1976-04-03', '4 Russell Pass', '069 Kinsman Circle', '', 'Payment Adjustment Coordinator', '47491 Jenifer Terrace', 2147483647, '2002-05-30', '70429 Veith Terrace', '2000-03-01', '95527 2nd Crossing', '', 1000000005, '', ''),
(2147483647, 'Nada Knok', 'Nada', '1979-10-24', '64220 Forest Dale Alley', '41431 Erie Trail', '', 'Chief Design Engineer', '56059 Leroy Drive', 2147483647, '2007-12-18', '9643 Mcbride Avenue', '2006-08-03', '3484 Riverside Alley', '', 1000000005, '', ''),
(2147483647, 'Sunshine Hatfull', 'Sunshine', '1976-11-24', '7504 Badeau Circle', '100 Judy Terrace', '', 'Computer Systems Analyst IV', '462 Kedzie Hill', 2134695190, '2022-06-10', '2283 Division Point', '2016-12-11', '90113 Gale Road', '', 1000000006, '', ''),
(2147483647, 'Normand Heinschke', 'Normand', '1982-12-26', '803 Kenwood Drive', '50479 Buena Vista Plaza', '', 'Software Engineer IV', '653 Portage Hill', 2147483647, '2014-01-06', '5153 Forster Street', '2003-02-02', '40568 Acker Court', '', 1000000006, '', ''),
(2147483647, 'Winni Vern', 'Winni', '1984-02-24', '448 Spaight Crossing', '87 Pawling Point', '', 'Research Assistant III', '2771 Quincy Circle', 2147483647, '2001-10-21', '6456 Killdeer Way', '2012-08-06', '0 Northport Parkway', '', 1000000006, '', ''),
(2147483647, 'Port Bristoe', 'Port', '1987-05-03', '60432 Carey Street', '6 Moland Center', '', 'Compensation Analyst', '4709 Sunbrook Court', 2147483647, '2008-08-27', '49 Old Shore Trail', '2015-02-07', '63156 Myrtle Crossing', '', 1000000006, '', ''),
(2147483647, 'Anatollo Archbold', 'Anatollo', '1985-09-27', '00141 Bluejay Crossing', '95432 Bobwhite Circle', '', 'Structural Analysis Engineer', '99 Kedzie Avenue', 2147483647, '2014-11-27', '77 Amoth Center', '2002-09-05', '562 Kinsman Avenue', '', 1000000006, '', ''),
(1431330284, 'Jamaal Redfearn', 'Jamaal', '1980-09-30', '039 Corscot Avenue', '1 Rutledge Alley', '', 'Occupational Therapist', '979 Northport Lane', 2147483647, '2008-07-04', '4960 Morrow Alley', '2010-09-24', '0782 Village Pass', '', 1000000007, '', ''),
(1687716885, 'Urbain Dorrian', 'Urbain', '1983-10-08', '981 Merchant Center', '9 Browning Plaza', '', 'Software Consultant', '21033 Derek Crossing', 2147483647, '2018-07-14', '33 Thackeray Circle', '2008-10-16', '2 Nelson Pass', '', 1000000007, '', ''),
(2147483647, 'Queenie Pilsbury', 'Queenie', '1988-11-09', '2 Magdeline Center', '0 Bunker Hill Center', '', 'Analyst Programmer', '38 Cordelia Junction', 2147483647, '2009-01-04', '67 Crowley Road', '2012-12-12', '6 Bobwhite Center', '', 1000000007, '', ''),
(2147483647, 'Hirsch Noke', 'Hirsch', '1988-07-20', '779 Sunbrook Park', '32 Northport Hill', '', 'Desktop Support Technician', '0405 Holy Cross Way', 2147483647, '2016-02-23', '997 Village Green Alley', '2021-01-29', '9800 Fuller Circle', '', 1000000008, '', ''),
(2147483647, 'Hildy Mc Faul', 'Hildy', '1987-03-14', '8 Buell Pass', '428 Monument Terrace', '', 'Office Assistant II', '0 Ronald Regan Avenue', 2147483647, '2009-12-09', '0172 Mccormick Hill', '2019-02-16', '77 Oak Valley Way', '', 1000000008, '', ''),
(1480546864, 'Osmond Rewcassell', 'Osmond', '1982-12-09', '4 Crescent Oaks Court', '83 1st Lane', '', 'Legal Assistant', '551 Orin Junction', 2147483647, '2002-11-02', '1099 Oak Court', '2013-04-13', '1219 Declaration Park', '', 1000000008, '', ''),
(2147483647, 'Fonz Witard', 'Fonz', '1980-05-07', '62 Comanche Circle', '810 Linden Crossing', '', 'Research Assistant I', '107 Shasta Center', 2147483647, '2010-01-05', '00981 Crowley Hill', '2005-09-15', '67096 Pankratz Place', '', 1000000008, '', ''),
(2147483647, 'Lauren De La Cote', 'Lauren', '1988-10-22', '8 Sloan Center', '55268 Pierstorff Place', '', 'Research Nurse', '8380 Bowman Trail', 2147483647, '2003-11-22', '7103 Corscot Way', '2007-11-13', '6850 Gina Hill', '', 1000000008, '', ''),
(2147483647, 'Cecilio Joye', 'Cecilio', '1987-01-24', '61455 High Crossing Court', '8381 Banding Alley', '', 'Operator', '7 Old Gate Pass', 2147483647, '2005-10-23', '654 Shelley Court', '2005-07-26', '493 Sutteridge Pass', '', 1000000008, '', ''),
(2147483647, 'Tami Renehan', 'Tami', '1989-04-02', '23496 Washington Center', '1 Bartelt Circle', '', 'Developer III', '89345 Stuart Trail', 2147483647, '2006-08-24', '86 Mosinee Junction', '2016-02-17', '18 Waywood Lane', '', 1000000009, '', ''),
(2147483647, 'Aviva Pach', 'Aviva', '1979-01-27', '3 Hagan Alley', '1 Arrowood Terrace', '', 'Geologist III', '9680 Buhler Avenue', 2147483647, '2000-07-21', '561 Merrick Hill', '2016-12-20', '8082 Pawling Hill', '', 1000000009, '', ''),
(2147483647, 'Craggie Klimkiewich', 'Craggie', '1978-04-25', '45754 Barnett Trail', '88 East Court', '', 'Paralegal', '2541 Lerdahl Place', 2147483647, '2005-04-07', '508 Iowa Parkway', '2012-04-17', '1 Arapahoe Court', '', 1000000009, '', ''),
(2072686222, 'Gasparo Fosdike', 'Gasparo', '1986-11-21', '25488 Starling Parkway', '3895 Golf View Center', '', 'Business Systems Development Analyst', '4665 Mendota Center', 1683953831, '2018-05-28', '58 Carey Way', '2005-06-01', '8383 Ridgeway Parkway', '', 1000000009, '', ''),
(2147483647, 'Gordie Colnet', 'Gordie', '1977-08-25', '493 Aberg Place', '475 Fuller Junction', '', 'Research Assistant I', '6225 Randy Crossing', 2147483647, '2010-11-05', '38522 Meadow Valley Drive', '2019-04-10', '934 Fair Oaks Drive', '', 1000000009, '', ''),
(2147483647, 'Shamus Wisdom', 'Shamus', '1978-06-02', '3 Drewry Place', '96223 East Lane', '', 'Account Coordinator', '7 Grasskamp Way', 1800030398, '2002-08-04', '35 Brickson Park Circle', '2002-06-02', '0 Eliot Circle', '', 1000000009, '', ''),
(1040815796, 'Rosene Flowers', 'Rosene', '1989-04-21', '23 Main Drive', '8 Mockingbird Way', '', 'Junior Executive', '42 Lillian Circle', 2147483647, '2011-04-21', '71 Crownhardt Way', '2005-09-07', '29478 Sycamore Place', '', 1000000009, '', ''),
(2147483647, 'Gabriel Towson', 'Gabriel', '1979-02-26', '5629 1st Crossing', '0804 Paget Avenue', '', 'Web Developer III', '44780 Westport Lane', 2147483647, '2017-04-30', '8 Golf Course Way', '2013-06-25', '909 Clyde Gallagher Alley', '', 1000000009, '', ''),
(2147483647, 'Keenan Perotti', 'Keenan', '1986-10-10', '311 Forest Dale Pass', '22208 Charing Cross Center', '', 'Assistant Manager', '8717 New Castle Lane', 2147483647, '2019-07-06', '959 Upham Circle', '2006-04-26', '66 Doe Crossing Junction', '', 1000000009, '', ''),
(2147483647, 'Anetta Bikker', 'Anetta', '1980-03-10', '747 Hooker Crossing', '27465 Bobwhite Pass', '', 'Database Administrator III', '7 La Follette Trail', 2147483647, '2001-12-08', '041 Kim Drive', '2022-02-16', '667 Stoughton Junction', '', 1000000010, '', ''),
(2147483647, 'Birgit Morten', 'Birgit', '1980-12-03', '7291 Summit Hill', '70 Jenna Trail', '', 'Automation Specialist IV', '169 Gateway Junction', 2147483647, '2004-08-12', '6431 Ohio Plaza', '2007-07-08', '3 Logan Avenue', '', 1000000010, '', ''),
(2147483647, 'Marabel Ottewell', 'Marabel', '1988-01-27', '1 Golf Course Circle', '0179 Randy Court', '', 'Registered Nurse', '2508 Calypso Terrace', 2147483647, '2019-08-01', '16321 Rutledge Way', '2004-09-10', '6897 Mccormick Point', '', 1000000010, '', ''),
(2147483647, 'Mackenzie Gun', 'Mackenzie', '1976-03-06', '16 Toban Alley', '45 Miller Terrace', '', 'Administrative Assistant IV', '0153 Stoughton Street', 2147483647, '2022-04-06', '852 Garrison Pass', '2010-02-27', '52 John Wall Street', '', 1000000010, '', ''),
(2147483647, 'Milli Greguoli', 'Milli', '1980-06-16', '28415 Valley Edge Parkway', '39968 Nancy Center', '', 'Food Chemist', '853 Heath Hill', 2147483647, '2017-09-02', '3002 Bultman Alley', '2003-01-12', '6 Bobwhite Trail', '', 1000000011, '', ''),
(2147483647, 'Constancy Welbrock', 'Constancy', '1977-08-21', '286 Everett Plaza', '907 American Junction', '', 'Senior Financial Analyst', '252 6th Center', 2147483647, '2001-07-25', '288 Katie Plaza', '2019-05-30', '1 Raven Parkway', '', 1000000011, '', ''),
(2147483647, 'Nona Augustin', 'Nona', '1986-01-22', '752 Toban Terrace', '04 Springview Avenue', '', 'Software Consultant', '6 Tennessee Parkway', 2147483647, '2007-03-05', '67718 Annamark Terrace', '2004-09-21', '0549 Fordem Hill', '', 1000000011, '', ''),
(2147483647, 'Andonis Kibbel', 'Andonis', '1983-04-22', '483 Shopko Drive', '00002 Bluejay Way', '', 'Senior Sales Associate', '665 6th Terrace', 2147483647, '2022-03-09', '1 Vidon Center', '2002-02-02', '2 Ridge Oak Street', '', 1000000011, '', ''),
(2147483647, 'Thomasina Caukill', 'Thomasina', '1979-08-03', '59 Mockingbird Pass', '81 Michigan Center', '', 'Environmental Tech', '42638 Pawling Junction', 2147483647, '2015-07-15', '658 Superior Alley', '2017-08-21', '5578 Browning Road', '', 1000000012, '', ''),
(2147483647, 'Leigh Artinstall', 'Leigh', '1982-03-25', '0 Dunning Court', '89402 Bluejay Pass', '', 'Compensation Analyst', '22978 Ohio Trail', 2147483647, '2006-10-31', '44 Leroy Center', '2015-06-06', '62468 Anzinger Junction', '', 1000000012, '', ''),
(2147483647, 'Ive Diggin', 'Ive', '1984-02-10', '30 Anniversary Hill', '22 Carberry Junction', '', 'Social Worker', '66372 Mendota Drive', 2147483647, '2018-09-14', '391 Washington Street', '2002-10-16', '32 6th Road', '', 1000000012, '', ''),
(2147483647, 'Oswald Strute', 'Oswald', '1989-03-03', '313 Dottie Court', '883 Maywood Park', '', 'Biostatistician I', '7 Lunder Parkway', 2147483647, '2013-04-14', '9771 Merry Lane', '2021-10-17', '6 Moland Parkway', '', 1000000013, '', ''),
(2147483647, 'Donni Dudman', 'Donni', '1980-05-05', '915 Hansons Road', '615 Mesta Terrace', '', 'Statistician II', '007 Blackbird Center', 2147483647, '2003-04-03', '2088 Thierer Plaza', '2014-10-07', '65 Scofield Street', '', 1000000013, '', ''),
(2147483647, 'Gunter McLoney', 'Gunter', '1975-06-18', '70307 Browning Hill', '1527 Pond Junction', '', 'Senior Sales Associate', '8 Hazelcrest Crossing', 2147483647, '2003-11-25', '663 Meadow Vale Place', '2022-02-09', '97 Memorial Road', '', 1000000013, '', ''),
(1620876786, 'Lisha Cullimore', 'Lisha', '1985-02-22', '4016 Kennedy Avenue', '85490 Memorial Avenue', '', 'Internal Auditor', '46 Division Pass', 2147483647, '2007-08-30', '68 Ridgeview Terrace', '2002-04-29', '606 Canary Terrace', '', 1000000013, '', ''),
(2147483647, 'Ernesta Blumire', 'Ernesta', '1987-02-06', '518 Maryland Junction', '141 Fallview Circle', '', 'Analog Circuit Design manager', '3590 Rutledge Hill', 2147483647, '2021-05-05', '57 Goodland Drive', '2017-10-18', '094 Golf Course Street', '', 1000000013, '', ''),
(2147483647, 'Forester Kinneally', 'Forester', '1977-07-30', '969 Autumn Leaf Junction', '27015 Ohio Court', '', 'Media Manager II', '276 Prairie Rose Parkway', 2147483647, '2003-07-14', '73133 Burning Wood Trail', '2022-11-08', '357 Meadow Valley Junction', '', 1000000013, '', ''),
(2147483647, 'William Bagworth', 'William', '1985-09-26', '4236 Clyde Gallagher Trail', '35515 Melvin Road', '', 'Human Resources Manager', '7 Center Trail', 2147483647, '2011-04-11', '50458 Hayes Pass', '2010-07-30', '2 Bunting Way', '', 1000000014, '', ''),
(2147483647, 'Ellette Haslock', 'Ellette', '1987-02-15', '31 Iowa Way', '876 Colorado Point', '', 'Quality Engineer', '50686 La Follette Plaza', 1240895316, '2005-02-11', '3541 Knutson Junction', '2022-01-09', '98980 Jana Trail', '', 1000000014, '', ''),
(2147483647, 'Letti Francesco', 'Letti', '1984-07-21', '877 Mccormick Lane', '42 Anhalt Alley', '', 'Information Systems Manager', '1 Melvin Terrace', 2147483647, '2014-10-27', '9484 Dryden Road', '2005-02-13', '71732 Pepper Wood Circle', '', 1000000014, '', ''),
(2147483647, 'Mile Essame', 'Mile', '1979-09-05', '0 Loeprich Park', '912 Warner Center', '', 'Project Manager', '501 Village Road', 2147483647, '2009-11-11', '14 Luster Alley', '2014-05-25', '56539 Becker Point', '', 1000000014, '', ''),
(2147483647, 'Gizela Tinniswood', 'Gizela', '1978-11-25', '836 Ramsey Hill', '9 Vera Street', '', 'VP Accounting', '64 Tony Way', 2147483647, '2019-10-12', '066 Waywood Street', '2012-01-01', '7 Pankratz Street', '', 1000000014, '', ''),
(1792339933, 'Mahalia Kitchingman', 'Mahalia', '1979-01-20', '60580 Kipling Place', '18449 Killdeer Hill', '', 'Quality Engineer', '68075 Monterey Street', 2147483647, '2022-02-09', '2 Eagle Crest Plaza', '2019-03-14', '51 Summit Lane', '', 1000000014, '', ''),
(2147483647, 'Davin Kennifeck', 'Davin', '1982-12-29', '2 Longview Alley', '9690 Elmside Trail', '', 'Administrative Assistant III', '27569 Browning Point', 2147483647, '2000-05-09', '55094 Ramsey Hill', '2009-05-30', '6840 Mcbride Circle', '', 1000000014, '', ''),
(1488033509, 'Xever Elvin', 'Xever', '1984-03-14', '75235 Kingsford Alley', '8390 Grasskamp Place', '', 'Director of Sales', '7 Steensland Pass', 2147483647, '2022-03-23', '81799 Armistice Park', '2021-06-16', '66 Manley Crossing', '', 1000000015, '', ''),
(2102342658, 'Isa Gilhooley', 'Isa', '1975-01-13', '78867 Carioca Lane', '7 Aberg Place', '', 'Civil Engineer', '669 Kennedy Avenue', 1600064329, '2003-09-19', '11483 Merry Road', '2007-06-24', '944 Laurel Crossing', '', 1000000015, '', ''),
(2147483647, 'Hilda Shovlar', 'Hilda', '1978-02-21', '660 Grasskamp Way', '4476 Stone Corner Terrace', '', 'Executive Secretary', '89 Talmadge Pass', 2147483647, '2011-12-07', '01494 Swallow Park', '2008-07-11', '6 Garrison Trail', '', 1000000015, '', ''),
(2147483647, 'Kylila Bahl', 'Kylila', '1976-12-07', '7 Acker Terrace', '218 Russell Terrace', '', 'Financial Advisor', '3396 Anderson Plaza', 2147483647, '2011-03-18', '0709 Burning Wood Alley', '2014-06-20', '9896 Sunnyside Pass', '', 1000000016, '', ''),
(2147483647, 'Ardisj Haswell', 'Ardisj', '1989-07-16', '8154 Goodland Avenue', '0 Burrows Circle', '', 'Cost Accountant', '9 Grover Pass', 2147483647, '2018-07-09', '76437 Londonderry Lane', '2007-01-14', '3 Dexter Park', '', 1000000016, '', ''),
(2147483647, 'Ralf Beardsdale', 'Ralf', '1986-01-11', '3152 Cordelia Way', '031 Summerview Plaza', '', 'Nurse', '79 Cody Trail', 2147483647, '2017-06-19', '61 Express Street', '2022-03-06', '5584 Dawn Crossing', '', 1000000016, '', ''),
(2147483647, 'Jenine Chittey', 'Jenine', '1980-06-19', '672 Washington Junction', '7407 Portage Avenue', '', 'Senior Editor', '8060 Crowley Road', 2147483647, '2009-03-02', '89541 Buhler Road', '2022-04-13', '24547 Dorton Plaza', '', 1000000016, '', ''),
(2147483647, 'Abel Royce', 'Abel', '1981-08-05', '4 Mitchell Avenue', '8325 Karstens Drive', '', 'Web Designer II', '83067 Scoville Alley', 2147483647, '2010-06-18', '82 Starling Trail', '2009-06-30', '367 Laurel Center', '', 1000000016, '', ''),
(1342437360, 'Blakeley Le Barr', 'Blakeley', '1986-02-05', '842 Namekagon Circle', '078 Lien Road', '', 'Human Resources Assistant II', '8888 Waubesa Lane', 2147483647, '2018-06-25', '2 Troy Trail', '2018-11-26', '35735 Merry Alley', '', 1000000016, '', ''),
(2147483647, 'Claiborn Hawyes', 'Claiborn', '1977-10-13', '5 Vidon Terrace', '7 Bunting Crossing', '', 'Research Nurse', '700 Ohio Alley', 2147483647, '2000-12-14', '5 Bartillon Park', '2006-03-29', '3 4th Hill', '', 1000000017, '', ''),
(2147483647, 'Josepha Ruggieri', 'Josepha', '1976-05-25', '8899 Lindbergh Trail', '35014 Talmadge Parkway', '', 'Recruiting Manager', '3668 Meadow Ridge Plaza', 2147483647, '2014-12-25', '8 Troy Plaza', '2013-03-20', '5 Erie Court', '', 1000000018, '', ''),
(2147483647, 'Clarinda Titchmarsh', 'Clarinda', '1987-05-20', '8572 Dryden Trail', '93714 Brown Hill', '', 'Assistant Manager', '896 Hauk Center', 2147483647, '2017-08-21', '6 Anzinger Park', '2013-02-16', '0 Main Park', '', 1000000018, '', ''),
(2147483647, 'Constantin Baigent', 'Constantin', '1989-12-15', '51 Michigan Park', '5 Oxford Junction', '', 'Electrical Engineer', '49 West Crossing', 2147483647, '2005-03-08', '1 Vernon Lane', '2012-09-27', '93642 Butternut Road', '', 1000000018, '', ''),
(2147483647, 'Tessa MacCosto', 'Tessa', '1981-12-12', '52701 Chinook Crossing', '57081 Fulton Terrace', '', 'Associate Professor', '7843 Stephen Crossing', 2147483647, '2005-06-30', '5 Reindahl Pass', '2018-01-16', '4712 Reinke Alley', '', 1000000018, '', ''),
(2147483647, 'Clarissa Baraclough', 'Clarissa', '1976-05-02', '6 Schiller Point', '765 Ronald Regan Point', '', 'Operator', '5708 John Wall Junction', 2147483647, '2004-10-09', '51 Armistice Pass', '2003-09-03', '66066 Cherokee Terrace', '', 1000000018, '', ''),
(2147483647, 'Ermina Yeabsley', 'Ermina', '1985-09-11', '88 Ronald Regan Center', '26793 Anhalt Crossing', '', 'Physical Therapy Assistant', '9 Brown Street', 2147483647, '2017-04-18', '3089 Petterle Plaza', '2022-05-28', '6688 Shoshone Way', '', 1000000018, '', ''),
(2147483647, 'Cleavland Renshell', 'Cleavland', '1977-11-04', '7217 Jenna Circle', '73 Hoard Crossing', '', 'Human Resources Manager', '5648 Dorton Lane', 2147483647, '2014-11-23', '8 Bluejay Plaza', '2004-05-10', '2745 Melvin Point', '', 1000000019, '', ''),
(1198869149, 'Millisent Redier', 'Millisent', '1988-10-16', '1172 Caliangt Hill', '392 Drewry Road', '', 'Geologist III', '5 Porter Street', 2147483647, '2010-12-07', '0 Packers Drive', '2000-02-18', '249 Clarendon Alley', '', 1000000019, '', ''),
(2147483647, 'Cosmo Mechan', 'Cosmo', '1985-11-20', '46212 Stephen Pass', '11 Maryland Plaza', '', 'Nuclear Power Engineer', '091 Jackson Place', 2147483647, '2005-02-23', '940 Dapin Alley', '2002-03-11', '39 Holmberg Way', '', 1000000019, '', ''),
(2147483647, 'Gus Presslee', 'Gus', '1977-08-21', '1 Park Meadow Trail', '06746 Bonner Avenue', '', 'Product Engineer', '9741 Declaration Plaza', 2147483647, '2015-12-06', '21740 Rutledge Park', '2016-09-04', '72534 Maple Wood Street', '', 1000000019, '', ''),
(2147483647, 'Marjorie Wims', 'Marjorie', '1977-04-01', '22 Rockefeller Parkway', '864 Bay Crossing', '', 'Nurse', '4 Service Center', 2147483647, '2010-12-28', '4804 Mariners Cove Pass', '2020-03-03', '5193 Bultman Road', '', 1000000019, '', ''),
(1068718166, 'Shalne McOwan', 'Shalne', '1978-08-26', '8 Stoughton Trail', '56715 Sherman Crossing', '', 'Statistician III', '77 Waxwing Trail', 2147483647, '2000-06-12', '4338 Sugar Center', '2009-04-25', '1325 Namekagon Street', '', 1000000019, '', ''),
(2147483647, 'Zaneta Whodcoat', 'Zaneta', '1979-01-20', '4877 Dunning Way', '2 Oxford Circle', '', 'GIS Technical Architect', '1365 Susan Lane', 2147483647, '2013-06-11', '4 Dorton Lane', '2019-01-04', '17025 Moulton Center', '', 1000000019, '', ''),
(2147483647, 'Iolande Dusting', 'Iolande', '1976-04-13', '14 East Parkway', '4437 Blue Bill Park Court', '', 'Desktop Support Technician', '87594 Nelson Circle', 1903723884, '2013-11-11', '81878 Mitchell Terrace', '2016-07-28', '39678 Cordelia Center', '', 1000000020, '', ''),
(2147483647, 'Kelcey Matushevich', 'Kelcey', '1982-12-09', '006 Stuart Terrace', '318 Center Street', '', 'Software Engineer IV', '917 Ridge Oak Park', 2147483647, '2009-06-23', '096 Old Shore Trail', '2012-04-12', '137 Arkansas Terrace', '', 1000000020, '', ''),
(1088915698, 'Faun Crews', 'Faun', '1976-11-03', '88 Grasskamp Pass', '53186 Bluejay Alley', '', 'Sales Associate', '533 Elmside Road', 2147483647, '2013-12-27', '75773 Del Sol Way', '2006-04-05', '279 Gateway Avenue', '', 1000000020, '', ''),
(2147483647, 'Georgena Motion', 'Georgena', '1980-06-19', '104 Colorado Way', '0 La Follette Trail', '', 'Internal Auditor', '56 Evergreen Junction', 1332531645, '2020-09-16', '10070 Boyd Avenue', '2016-07-08', '44 Crownhardt Circle', '', 1000000020, '', ''),
(2147483647, 'Adan Berdale', 'Adan', '1988-09-23', '60 Monterey Pass', '8 Hauk Hill', '', 'Financial Advisor', '43 Monument Point', 2147483647, '2001-06-16', '35010 Truax Pass', '2001-04-21', '8593 Algoma Drive', '', 1000000020, '', ''),
(2147483647, 'Mata Tredger', 'Mata', '1984-09-14', '7602 Buhler Street', '75041 Green Ridge Lane', '', 'Health Coach II', '20910 Mcbride Pass', 2147483647, '2022-07-25', '79122 Myrtle Way', '2014-09-19', '20663 Dennis Alley', '', 1000000020, '', '');

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
