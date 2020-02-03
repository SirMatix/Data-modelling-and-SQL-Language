-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2019 at 03:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jetair db`
--

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `AirportID` varchar(10) NOT NULL,
  `Airport_name` varchar(255) DEFAULT NULL,
  `AStreetname` varchar(50) DEFAULT NULL,
  `CityID` int(10) DEFAULT NULL,
  `PostcodeID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`AirportID`, `Airport_name`, `AStreetname`, `CityID`, `PostcodeID`) VALUES
('ABZ', 'Aberdeen Dyce Airport', 'Dyce, Aberdeen ', 14, 6),
('BFS', 'Belfast International Airport', 'Airport Rd', 1, 22),
('BHD', 'George Best Belfast City Airport', '', 1, 21),
('BHX', 'Birmingham International Airport', '', 2, 20),
('BOH', 'Bournemouth Airport', 'Parley Ln, Christchurch ', 9, 13),
('BRS', 'Bristol Airport', '', 6, 16),
('CWL', 'Cardiff International Airport', 'Rhoose, Barrey', 5, 17),
('DSA', 'Robin Hood Doncaster Sheffield Airport', 'First Ave', 4, 18),
('EDI', 'Edinburgh Airport', 'Edinburgh ', 16, 4),
('EMA', 'East Midlands Airport', 'Castle Donington, Derby ', 13, 7),
('EXT', 'Exeter International Airport', 'Exeter ', 18, 1),
('GLA', 'Glasgow International Airport', 'Paisley ', 15, 5),
('LBA', 'Leeds Bradford Airport', 'Whitehouse Ln, Yeadon', 11, 9),
('LGW', 'London Gatwick Airport', 'Horley, Gatwick', 8, 11),
('LHR', 'London Heathrow Airport', 'Longford ', 8, 10),
('LPL', 'Liverpool John Lennon Airport', 'Speke Hall Ave', 7, 15),
('LTN', 'London Luton Airport', 'Airport Way', 8, 14),
('MAN', 'Manchester Airport', '', 3, 19),
('NCL', 'Newcastle Airport', 'Woolsington, Newcastle upon Tyne ', 12, 8),
('NWI', 'Norwich International Airport', 'Norwich Airport Ltd, Norwich ', 17, 3),
('SOU', 'Southampton Airport', 'Southampton ', 10, 12),
('STN', 'London Stansted Airport', 'Bassingbourn Rd, Stansted ', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CityID` int(10) NOT NULL,
  `City_name` varchar(50) DEFAULT NULL,
  `CountryID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityID`, `City_name`, `CountryID`) VALUES
(1, 'Belfast', 186),
(2, 'Birmingham', 186),
(3, 'Manchester', 186),
(4, 'Doncaster', 186),
(5, 'Cardiff', 186),
(6, 'Bristol', 186),
(7, 'Liverpool', 186),
(8, 'London', 186),
(9, 'Bournemouth', 186),
(10, 'Southampton', 186),
(11, 'Leeds', 186),
(12, 'Newcastle', 186),
(13, 'Nottingham', 186),
(14, 'Aberdeen', 186),
(15, 'Glasgow', 186),
(16, 'Edinburgh', 186),
(17, 'Norwich', 186),
(18, 'Exeter', 186),
(19, 'Bath', 186),
(20, 'Bradford', 186),
(21, 'Brighton & Hove', 186),
(22, 'Cambridge', 186),
(23, 'Canterbury', 186),
(24, 'Carlisle', 186),
(25, 'Chelmsford', 186),
(26, 'Chester', 186),
(27, 'Chichester', 186),
(28, 'City of London', 186),
(29, 'City of Westminster', 186),
(30, 'Coventry', 186),
(31, 'Derby', 186),
(32, 'Durham', 186),
(33, 'Ely', 186),
(34, 'Gloucester', 186),
(35, 'Hereford', 186),
(36, 'Kingston-upon-Hull', 186),
(37, 'Lancaster', 186),
(38, 'Leicester', 186),
(39, 'Lichfield', 186),
(40, 'Lincoln', 186),
(41, 'Newcastle-upon-Tyne', 186),
(42, 'Oxford', 186),
(43, 'Peterborough', 186),
(44, 'Plymouth', 186),
(45, 'Portsmouth', 186),
(46, 'Preston', 186),
(47, 'Ripon', 186),
(48, 'Salford', 186),
(49, 'Salisbury', 186),
(50, 'Sheffield', 186),
(51, 'St Albans', 186),
(52, 'Stoke-on-Trent', 186),
(53, 'Sunderland', 186),
(54, 'Truro', 186),
(55, 'Wakefield', 186),
(56, 'Wells', 186),
(57, 'Winchester', 186),
(58, 'Wolverhampton', 186),
(59, 'Worcester', 186),
(60, 'York', 186);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int(10) NOT NULL,
  `Country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `Country`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua & Deps'),
(7, 'Argentina'),
(8, 'Armenia'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Azerbaijan'),
(12, 'Bahamas'),
(13, 'Bahrain'),
(14, 'Bangladesh'),
(15, 'Barbados'),
(16, 'Belarus'),
(17, 'Belgium'),
(18, 'Belize'),
(19, 'Benin'),
(20, 'Bhutan'),
(21, 'Bolivia'),
(22, 'Bosnia Herzegovina'),
(23, 'Botswana'),
(24, 'Brazil'),
(25, 'Brunei'),
(26, 'Bulgaria'),
(27, 'Burkina'),
(28, 'Burundi'),
(29, 'Cambodia'),
(30, 'Cameroon'),
(31, 'Canada'),
(32, 'Cape Verde'),
(33, 'Central African Rep'),
(34, 'Chad'),
(35, 'Chile'),
(36, 'China'),
(37, 'Colombia'),
(38, 'Comoros'),
(39, 'Congo'),
(40, 'Congo {Democratic Rep}'),
(41, 'Costa Rica'),
(42, 'Croatia'),
(43, 'Cuba'),
(44, 'Cyprus'),
(45, 'Czech Republic'),
(46, 'Denmark'),
(47, 'Djibouti'),
(48, 'Dominica'),
(49, 'Dominican Republic'),
(50, 'East Timor'),
(51, 'Ecuador'),
(52, 'Egypt'),
(53, 'El Salvador'),
(54, 'Equatorial Guinea'),
(55, 'Eritrea'),
(56, 'Estonia'),
(57, 'Ethiopia'),
(58, 'Fiji'),
(59, 'Finland'),
(60, 'France'),
(61, 'Gabon'),
(62, 'Gambia'),
(63, 'Georgia'),
(64, 'Germany'),
(65, 'Ghana'),
(66, 'Greece'),
(67, 'Grenada'),
(68, 'Guatemala'),
(69, 'Guinea'),
(70, 'Guinea-Bissau'),
(71, 'Guyana'),
(72, 'Haiti'),
(73, 'Honduras'),
(74, 'Hungary'),
(75, 'Iceland'),
(76, 'India'),
(77, 'Indonesia'),
(78, 'Iran'),
(79, 'Iraq'),
(80, 'Ireland {Republic}'),
(81, 'Israel'),
(82, 'Italy'),
(83, 'Ivory Coast'),
(84, 'Jamaica'),
(85, 'Japan'),
(86, 'Jordan'),
(87, 'Kazakhstan'),
(88, 'Kenya'),
(89, 'Kiribati'),
(90, 'Korea North'),
(91, 'Korea South'),
(92, 'Kosovo'),
(93, 'Kuwait'),
(94, 'Kyrgyzstan'),
(95, 'Laos'),
(96, 'Latvia'),
(97, 'Lebanon'),
(98, 'Lesotho'),
(99, 'Liberia'),
(100, 'Libya'),
(101, 'Liechtenstein'),
(102, 'Lithuania'),
(103, 'Luxembourg'),
(104, 'Macedonia'),
(105, 'Madagascar'),
(106, 'Malawi'),
(107, 'Malaysia'),
(108, 'Maldives'),
(109, 'Mali'),
(110, 'Malta'),
(111, 'Marshall Islands'),
(112, 'Mauritania'),
(113, 'Mauritius'),
(114, 'Mexico'),
(115, 'Micronesia'),
(116, 'Moldova'),
(117, 'Monaco'),
(118, 'Mongolia'),
(119, 'Montenegro'),
(120, 'Morocco'),
(121, 'Mozambique'),
(122, 'Myanmar, {Burma}'),
(123, 'Namibia'),
(124, 'Nauru'),
(125, 'Nepal'),
(126, 'Netherlands'),
(127, 'New Zealand'),
(128, 'Nicaragua'),
(129, 'Niger'),
(130, 'Nigeria'),
(131, 'Norway'),
(132, 'Oman'),
(133, 'Pakistan'),
(134, 'Palau'),
(135, 'Panama'),
(136, 'Papua New Guinea'),
(137, 'Paraguay'),
(138, 'Peru'),
(139, 'Philippines'),
(140, 'Poland'),
(141, 'Portugal'),
(142, 'Qatar'),
(143, 'Romania'),
(144, 'Russian Federation'),
(145, 'Rwanda'),
(146, 'St Kitts & Nevis'),
(147, 'St Lucia'),
(148, 'Saint Vincent & the Grenadines'),
(149, 'Samoa'),
(150, 'San Marino'),
(151, 'Sao Tome & Principe'),
(152, 'Saudi Arabia'),
(153, 'Senegal'),
(154, 'Serbia'),
(155, 'Seychelles'),
(156, 'Sierra Leone'),
(157, 'Singapore'),
(158, 'Slovakia'),
(159, 'Slovenia'),
(160, 'Solomon Islands'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'South Sudan'),
(164, 'Spain'),
(165, 'Sri Lanka'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Syria'),
(172, 'Taiwan'),
(173, 'Tajikistan'),
(174, 'Tanzania'),
(175, 'Thailand'),
(176, 'Togo'),
(177, 'Tonga'),
(178, 'Trinidad & Tobago'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Turkmenistan'),
(182, 'Tuvalu'),
(183, 'Uganda'),
(184, 'Ukraine'),
(185, 'United Arab Emirates'),
(186, 'United Kingdom'),
(187, 'United States'),
(188, 'Uruguay'),
(189, 'Uzbekistan'),
(190, 'Vanuatu'),
(191, 'Vatican City'),
(192, 'Venezuela'),
(193, 'Vietnam'),
(194, 'Yemen'),
(195, 'Zambia'),
(196, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_id` int(6) NOT NULL,
  `E_first_name` varchar(25) DEFAULT NULL,
  `E_last_name` varchar(25) DEFAULT NULL,
  `E_dob` date DEFAULT NULL,
  `E_phone_no` varchar(15) DEFAULT NULL,
  `E_street_number` varchar(10) DEFAULT NULL,
  `E_street_name` varchar(50) DEFAULT NULL,
  `CityID` int(10) DEFAULT NULL,
  `PostcodeID` int(10) DEFAULT NULL,
  `E_salary` int(5) DEFAULT NULL,
  `Position` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `E_first_name`, `E_last_name`, `E_dob`, `E_phone_no`, `E_street_number`, `E_street_name`, `CityID`, `PostcodeID`, `E_salary`, `Position`) VALUES
(1, 'Wandis', 'Tilly', '1960-06-11', '+442967393310', '94', 'Tatani Alley', 12, 4, 28250, 'Ticket_Agent'),
(2, 'Neile', 'Julia', '1978-11-28', '+442371062611', '55', 'Hollylea Street', 56, 6, 40000, 'Flight Attendant'),
(3, 'Letti', 'Ivory', '1991-09-01', '+443245271769', '78', 'Ampthill Road', 11, 8, 40000, 'Flight Attendant'),
(4, 'Kessia', 'Doralynne', '1994-01-03', '+448417014998', '39', 'Podva Avenue', 5, 12, 100000, 'Manager'),
(5, 'Marlie', 'Adelle', '1975-01-25', '+449546431928', '56', 'Oakfern Road', 5, 12, 65000, 'Pilot'),
(6, 'Odelia', 'Celene', '1974-06-06', '+447981395232', '71', 'Longest Street', 54, 2, 40000, 'Flight Attendant'),
(7, 'Dode', 'Lory', '1992-05-25', '+442964833911', '46', 'Southwest Andover Avenue', 26, 11, 65000, 'Pilot'),
(8, 'Tessy', 'Bryna', '2001-12-17', '+443693833741', '99', 'Cowdry Road', 26, 11, 28250, 'Ticket_Agent'),
(9, 'Michal', 'Sadie', '1994-05-02', '+443548711270', '52', 'Minert Road', 26, 11, 65000, 'Pilot'),
(10, 'Shina', 'Hanni', '1990-03-23', '+446444747721', '21', 'Paddock House Avenue', 26, 11, 40000, 'Flight Attendant'),
(11, 'Bobine', 'Babette', '1998-01-25', '+448956321641', '96', 'Linnet Hill Avenue', 59, 1, 65000, 'Pilot'),
(12, 'Nikoletta', 'Pearl', '1946-08-12', '+444837656528', '5', 'Murchia Close', 11, 8, 65000, 'Pilot'),
(13, 'Clea', 'Eda', '1948-09-22', '+440783662597', '100', 'Egerton House Avenue', 41, 3, 65000, 'Pilot'),
(14, 'Erina', 'Cathlene', '1988-06-07', '+443820969604', '34', 'Attenburys Road', 56, 6, 28250, 'Ticket_Agent'),
(15, 'Salomi', 'Carri', '1956-05-01', '+448643696409', '89', 'Dacca Road', 35, 5, 65000, 'Pilot'),
(16, 'Janith', 'Lanita', '1943-06-26', '+449682712738', '12', 'Saint Ann Street', 41, 3, 65000, 'Pilot'),
(17, 'Bernardina', 'Corrine', '1988-03-18', '+446771713953', '86', 'Hollindale Road', 54, 2, 28250, 'Ticket_Agent'),
(18, 'Olympia', 'Austine', '1982-10-18', '+446489672308', '27', 'Treatment Plant Alley', 35, 5, 65000, 'Pilot'),
(19, 'Whitney', 'Florence', '1970-12-27', '+441432191112', '43', 'Bloomdale Avenue', 11, 8, 40000, 'Flight Attendant'),
(20, 'Rona', 'Charlot', '1981-04-04', '+447937084546', '78', 'Old Logging Alley', 5, 12, 40000, 'Flight Attendant'),
(21, 'Terese', 'Jaquenetta', '1979-07-04', '+446300221122', '2', 'Alxandria Close', 39, 10, 65000, 'Pilot'),
(22, 'Celine', 'Arabella', '1957-06-05', '+449621213799', '95', 'E Coleman Road', 54, 2, 65000, 'Pilot'),
(23, 'Andrei', 'Celesta', '1948-04-19', '+440545437593', '93', 'Carshalton High Street', 56, 6, 40000, 'Flight Attendant'),
(24, 'Rhodia', 'Farrand', '1978-11-04', '+443194259985', '16', 'Whisterfield Close', 59, 1, 28250, 'Ticket_Agent'),
(25, 'Marcie', 'Agnese', '1953-10-31', '+442309116287', '66', 'Old Glenview Street', 54, 9, 40000, 'Flight Attendant'),
(26, 'Antonetta', 'Magdalena', '1968-11-04', '+441782300041', '75', 'Mount Maclure Road', 41, 3, 65000, 'Pilot'),
(27, 'Danika', 'Cleo', '1961-05-13', '+448240636192', '81', 'Edward Temme Alley', 3, 7, 28250, 'Ticket_Agent'),
(28, 'Amalita', 'Joelie', '1957-02-28', '+441480452540', '29', 'Blane Avenue', 11, 8, 65000, 'Pilot'),
(29, 'Poppy', 'Adrianna', '1953-09-08', '+444620240258', '88', 'Daka Avenue', 3, 7, 40000, 'Flight Attendant'),
(30, 'Merrile', 'Hannah', '1985-06-20', '+441767863449', '87', 'Bollinger Close', 59, 1, 65000, 'Pilot'),
(31, 'Dodie', 'Berny', '1945-07-04', '+444994343176', '60', 'Plantagenet Street', 11, 8, 65000, 'Pilot'),
(32, 'Marcia', 'Leanora', '1994-12-03', '+446297298538', '45', 'Amberlea Close', 39, 10, 28250, 'Ticket_Agent'),
(33, 'Lexy', 'Twila', '1975-11-22', '+446442058504', '63', 'Durford Road', 3, 7, 65000, 'Pilot'),
(34, 'Jazmin', 'Matilde', '1964-08-09', '+444751389624', '29', 'Toland Street', 54, 9, 40000, 'Flight Attendant'),
(35, 'Lorie', 'Karole', '1987-11-01', '+449751314981', '63', 'Upper Sherborne Road', 3, 7, 40000, 'Flight Attendant'),
(36, 'Lind', 'Sella', '1961-05-27', '+446220223848', '30', 'Homestead Heights Road', 41, 3, 65000, 'Pilot'),
(37, 'Annemarie', 'Georgeanna', '1946-05-09', '+440880317672', '60', 'Wooded Road', 54, 9, 28250, 'Ticket_Agent'),
(38, 'Darya', 'Gianina', '1973-05-20', '+448755477119', '78', 'MacLeay Street', 59, 1, 40000, 'Flight Attendant'),
(39, 'Emogene', 'Kitti', '1947-04-07', '+443282636542', '60', 'Luck Alley', 39, 10, 65000, 'Pilot'),
(40, 'Rana', 'Quinta', '1954-09-07', '+447463062049', '57', 'Claycourt Avenue', 54, 2, 40000, 'Flight Attendant'),
(41, 'Nataline', 'Marilee', '1976-09-16', '+445794601611', '35', 'Boronga Alley', 59, 1, 40000, 'Flight Attendant'),
(42, 'Betteann', 'Terri', '1940-05-08', '+445902641783', '63', 'Lagoda Road', 12, 4, 40000, 'Flight Attendant'),
(43, 'Lelia', 'Daisi', '1955-08-06', '+441852665802', '95', 'Caran Close', 39, 10, 40000, 'Flight Attendant'),
(44, 'Coletta', 'Wilone', '1963-04-27', '+443801095907', '19', 'E Baltimore Road', 12, 4, 40000, 'Flight Attendant'),
(45, 'Tressa', 'Sibby', '1987-11-30', '+440781286865', '89', 'Ockford Road', 59, 1, 40000, 'Flight Attendant'),
(46, 'Andeee', 'Carmella', '1941-11-24', '+445086583000', '12', 'Alfriston Close', 41, 3, 40000, 'Flight Attendant'),
(47, 'Fanni', 'Jeannette', '1959-06-05', '+447896948185', '23', 'Market Loop Alley', 35, 5, 40000, 'Flight Attendant'),
(48, 'Hinda', 'Dyana', '1955-03-19', '+444371584759', '35', 'Gesna Alley', 39, 10, 40000, 'Flight Attendant'),
(49, 'Magdalen', 'Colene', '1977-02-28', '+441606511166', '99', 'Tressider Avenue', 12, 4, 40000, 'Flight Attendant'),
(50, 'Claudelle', 'Ursula', '1998-07-27', '+441009158597', '80', 'Old Macdonald Close', 12, 4, 40000, 'Flight Attendant'),
(51, 'Gisela', 'Sisile', '1955-04-18', '+441377083679', '82', 'Ranby Street', 54, 9, 40000, 'Flight Attendant'),
(52, 'Florri', 'Deeann', '1953-07-23', '+448590858977', '34', 'Harriet Tubman Road', 39, 10, 40000, 'Flight Attendant');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_id` int(10) NOT NULL,
  `PlaneID` int(6) DEFAULT NULL,
  `RouteID` int(6) DEFAULT NULL,
  `Flight_date` date DEFAULT NULL,
  `Flight_dep_time` time DEFAULT NULL,
  `Flight_arr_time` time DEFAULT NULL,
  `FNumOfPass` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_id`, `PlaneID`, `RouteID`, `Flight_date`, `Flight_dep_time`, `Flight_arr_time`, `FNumOfPass`) VALUES
(1, 6, 3, '2019-07-28', '14:35:00', '15:05:00', 6),
(2, 1, 5, '2019-03-07', '09:45:00', '10:15:00', 6),
(3, 3, 7, '2019-02-22', '05:45:00', '06:15:00', 71),
(4, 5, 6, '2019-04-02', '02:05:00', '03:25:00', 6),
(5, 3, 1, '2019-11-12', '11:55:00', '13:55:00', 78),
(6, 2, 4, '2019-12-21', '16:20:00', '18:20:00', 6),
(7, 2, 7, '2019-07-10', '12:45:00', '14:45:00', 6),
(8, 3, 7, '2019-03-28', '20:10:00', '21:20:00', 80),
(9, 5, 3, '2019-05-28', '17:00:00', '18:00:00', 6),
(10, 6, 4, '2019-07-22', '10:35:00', '12:35:00', 6),
(11, 4, 2, '2019-11-10', '16:35:00', '18:35:00', 126),
(12, 4, 3, '2019-08-28', '12:20:00', '14:20:00', 156),
(13, 3, 1, '2019-06-18', '15:20:00', '16:20:00', 87),
(14, 5, 5, '2019-12-26', '01:35:00', '03:35:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--

CREATE TABLE `passanger` (
  `Pass_id` int(6) NOT NULL,
  `Pass_first_name` varchar(25) DEFAULT NULL,
  `Pass_last_name` varchar(25) DEFAULT NULL,
  `Pass_dob` date DEFAULT NULL,
  `Pass_phone_no` varchar(15) DEFAULT NULL,
  `Pass_street_number` varchar(10) DEFAULT NULL,
  `Pass_street_name` varchar(50) DEFAULT NULL,
  `CityID` int(10) DEFAULT NULL,
  `PostcodeID` int(10) DEFAULT NULL,
  `PPassport_n` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`Pass_id`, `Pass_first_name`, `Pass_last_name`, `Pass_dob`, `Pass_phone_no`, `Pass_street_number`, `Pass_street_name`, `CityID`, `PostcodeID`, `PPassport_n`) VALUES
(1, 'Joey', 'Orsa', '1967-01-21', '+446769584692', '65', 'Eight Close', 5, 12, 'CU 490887058'),
(2, 'Janis', 'Marsha', '1959-09-29', '+448535433586', '69', 'Great Elm Alley', 39, 10, 'TR 972361382'),
(3, 'Jo-Anne', 'Tatiana', '1941-07-21', '+449139025586', '6', 'Big Bluestem Close', 3, 7, 'SX 859259830'),
(4, 'Faustina', 'Maiga', '1951-06-20', '+440362655286', '30', 'Canonsfield Road', 39, 10, 'FD 820761043'),
(5, 'Thea', 'Tandy', '1942-09-13', '+442059709641', '36', 'North Circle Road', 59, 1, 'OT 073715203'),
(6, 'Rhetta', 'Debbi', '1990-01-12', '+443552856174', '24', 'Cordes Alley', 56, 6, 'IX 172850343'),
(7, 'Cornelia', 'Ibbie', '2000-08-29', '+446035952637', '28', 'Boar Alley', 56, 6, 'LI 581268202'),
(8, 'Bella', 'Frederique', '1974-06-15', '+441041744548', '14', 'Moving Water Street', 41, 3, 'UW 838868682'),
(9, 'Ettie', 'Shea', '1984-03-28', '+448925674509', '41', 'Twinches Avenue', 54, 2, 'AM 307497372'),
(10, 'Clarabelle', 'Toma', '1942-07-07', '+440288102770', '28', 'Bellingdon Close', 56, 6, 'KW 347738363'),
(11, 'Rasla', 'Umeko', '1956-10-19', '+443311006326', '54', 'Holstein Alley', 26, 11, 'MI 987080141'),
(12, 'Mavra', 'Barbey', '1942-05-25', '+444158472399', '19', 'Magpie Hall Road', 12, 4, 'JM 327082423'),
(13, 'Lib', 'Ashlie', '1989-05-21', '+448773438745', '73', 'Alegra Street', 26, 11, 'KG 796908703'),
(14, 'Tori', 'Amitie', '1987-05-24', '+443071809916', '40', 'Livonia Avenue', 56, 6, 'OE 093306262'),
(15, 'Deanne', 'Lucille', '1970-12-20', '+440321958391', '19', 'Nurney Avenue', 54, 9, 'OF 482333273'),
(16, 'Ferdinande', 'Mandie', '1968-10-24', '+449745031573', '64', 'Roberge Avenue', 54, 2, 'AH 245681639'),
(17, 'Bobbee', 'Jeanette', '1979-06-01', '+448294346952', '54', 'Vanilla Grass Road', 12, 4, 'LJ 140605321'),
(18, 'Kikelia', 'Emmy', '1981-10-07', '+441286002965', '56', 'Turtle Valley Road', 26, 11, 'MY 114640716'),
(19, 'Philippe', 'Nanni', '1968-04-27', '+444540180670', '29', 'Throwley Road', 41, 3, 'JS 563773948'),
(20, 'Cathee', 'Caye', '1949-05-16', '+448457281997', '12', 'Loduca Close', 26, 11, 'UB 391500208'),
(21, 'Mady', 'Sapphire', '1964-05-17', '+446718165745', '14', 'Duckettown Road', 5, 12, 'NM 283742353'),
(22, 'Cissy', 'Melva', '2000-10-26', '+441305644776', '17', 'Donwood Trails Close', 3, 7, 'WM 959381301'),
(23, 'Farrand', 'Sara', '1989-05-12', '+446408248980', '21', 'Low Moorside Road', 41, 3, 'DI 021151708'),
(24, 'Phelia', 'Trix', '1950-11-18', '+445671752593', '75', 'Nana Russell Close', 59, 1, 'JP 818606553'),
(25, 'Reeta', 'Stephanie', '1988-01-03', '+441980975635', '81', 'Benhams Close', 54, 2, 'YR 676373559'),
(26, 'Liliane', 'Pauline', '1977-08-18', '+444221769912', '74', 'Hannington Street', 5, 12, 'WE 171058741'),
(27, 'Rebbecca', 'Diane', '1973-05-29', '+449801188068', '30', 'Hayes  George Alley', 54, 2, 'FU 678252866'),
(28, 'Fiann', 'Cass', '1956-04-04', '+442181613140', '78', 'Chestnut Springs Avenue', 59, 1, 'PY 725102595'),
(29, 'Renate', 'Aurelie', '1998-05-26', '+441146670913', '21', 'Eagle Peak Avenue', 54, 9, 'SD 225027084'),
(30, 'Barbe', 'Aleda', '1949-01-04', '+449557041011', '95', 'McGann Road', 3, 7, 'RM 459475159'),
(31, 'Lilian', 'Fionnula', '1942-07-10', '+444440611713', '95', 'The Water Street', 5, 12, 'KJ 095928827'),
(32, 'Ivy', 'Jacqui', '1947-06-27', '+442256759852', '91', 'Nicanoa Alley', 54, 9, 'LU 181579482'),
(33, 'Barbee', 'Ronda', '1959-12-03', '+446886392983', '76', 'Dijon Close', 11, 8, 'TO 460824704'),
(34, 'Mab', 'Tarrah', '1969-06-04', '+440064108076', '76', 'Prince of Wales Road', 56, 6, 'AH 890585334'),
(35, 'Melina', 'Agneta', '1972-09-26', '+443815979733', '92', 'Ankener Road', 54, 9, 'TP 294352485'),
(36, 'Leonelle', 'Bernadene', '1985-01-03', '+447112662077', '45', 'Yankee Doodle Close', 54, 2, 'WH 196704919'),
(37, 'Lou', 'Umeko', '1957-11-16', '+443740869316', '79', 'Sorrento Close', 54, 2, 'TD 278847426'),
(38, 'Ethel', 'Maud', '2001-02-04', '+440389555314', '56', 'E Addison Alley', 59, 1, 'KZ 760695338'),
(39, 'Amaleta', 'Lane', '1994-11-12', '+446548741642', '51', 'Czacki Avenue', 26, 11, 'UL 954344849'),
(40, 'Gus', 'Ardyth', '2000-06-14', '+448358312695', '67', 'West Polk Close', 41, 3, 'IT 370358855'),
(41, 'Clementia', 'Kriste', '1979-07-12', '+445696788271', '20', 'Biloba Alley', 5, 12, 'UE 316603774'),
(42, 'Courtenay', 'Frank', '1984-01-20', '+449991011501', '49', 'Sandhill Close', 54, 2, 'UB 447629066'),
(43, 'Sybyl', 'Marion', '1996-05-15', '+446813484099', '97', 'Huntchase Street', 54, 9, 'BS 341513147'),
(44, 'Elbertine', 'Joice', '1973-03-05', '+443042549620', '60', 'Maplewood Mall Close', 11, 8, 'UT 499278196'),
(45, 'Kassi', 'Margaretha', '1955-05-13', '+440515153483', '27', 'Horace Darling Road', 3, 7, 'IY 563411227'),
(46, 'Ralina', 'Zonda', '1963-12-17', '+442187141949', '97', 'Outward Common Avenue', 5, 12, 'SM 623802749'),
(47, 'Maighdiln', 'Georgiana', '1974-02-05', '+442859973974', '55', 'Esk Alley', 39, 10, 'FU 766747619'),
(48, 'Stephenie', 'Chryste', '2000-07-31', '+444145146406', '54', 'Wayneswood Avenue', 26, 11, 'JG 963004893'),
(49, 'Darbie', 'Dreddy', '1949-08-04', '+446359287645', '71', 'M I Bowen Close', 35, 5, 'HA 603874378'),
(50, 'Deeyn', 'Sheri', '1978-04-24', '+445874170168', '77', 'Penrhos Road', 11, 8, 'MI 707324485'),
(51, 'Dody', 'Trina', '1991-10-21', '+444546627777', '39', 'Barbie Street', 3, 7, 'CX 045211061'),
(52, 'Alta', 'Ashil', '1988-06-20', '+448597155372', '22', 'Melsomby Close', 12, 4, 'GB 918633104'),
(53, 'Tessy', 'Peggie', '1983-04-13', '+440639781312', '38', 'Hanyards Street', 59, 1, 'DC 619975425'),
(54, 'Dora', 'Cyndie', '1955-09-19', '+446504994521', '38', 'Truck Street', 12, 4, 'SG 655207559'),
(55, 'Pansie', 'Diahann', '1981-01-25', '+445354055511', '21', 'Ten Hills Avenue', 5, 12, 'SH 890260762'),
(56, 'Madella', 'Malanie', '1963-06-20', '+446213486640', '24', 'North Utah Street', 5, 12, 'BD 979954318'),
(57, 'Trenna', 'Constantina', '1987-03-12', '+444715934989', '15', 'Squirehill Street', 54, 2, 'CG 486464337'),
(58, 'Zorina', 'Tressa', '1953-06-06', '+444314522762', '13', 'Mordaunt Close', 56, 6, 'XR 010496516'),
(59, 'Britta', 'Phoebe', '1942-10-05', '+446179288183', '98', 'Ferris Close', 54, 2, 'BZ 321783898'),
(60, 'Barbette', 'Georgetta', '1966-03-09', '+441983995558', '82', 'North Branch Avenue', 54, 9, 'CR 092315282'),
(61, 'Halette', 'Abigael', '1981-10-16', '+445601334795', '16', 'Bury Farm Avenue', 12, 4, 'MH 256721070'),
(62, 'Adi', 'Kirby', '1953-11-30', '+443476140923', '21', 'Sais Alley', 54, 9, 'ND 093379294'),
(63, 'Zenia', 'Sarine', '1964-10-31', '+447090964247', '77', 'Hartman Hill Close', 35, 5, 'NW 623515789'),
(64, 'Oralee', 'Liva', '1984-07-07', '+445811030267', '37', 'Penn Crossing Close', 59, 1, 'IC 406078533'),
(65, 'Konstanze', 'Gusta', '1941-12-18', '+445772237747', '34', 'East Hogan Street', 59, 1, 'PE 551695916'),
(66, 'Annalee', 'Nicol', '1963-09-05', '+448568278641', '100', 'Zeppelen Alley', 41, 3, 'OD 461127008'),
(67, 'Luelle', 'Nona', '2001-01-20', '+444760753604', '75', 'Fennels Farm Avenue', 39, 10, 'SR 010344940'),
(68, 'Melina', 'Lavena', '1976-11-01', '+441313271697', '35', 'Davidsons Mill Street', 35, 5, 'FD 185183205'),
(69, 'Arlen', 'Karly', '1993-04-18', '+440371371454', '92', 'Pine Mountain Fire Street', 39, 10, 'PL 737044436'),
(70, 'Jeannie', 'Kaylil', '1974-04-15', '+443061455930', '50', 'Quiet Woods Street', 54, 2, 'YU 458877495'),
(71, 'Cynthie', 'Evvy', '2001-06-16', '+446447018472', '54', 'Marin Alley', 54, 2, 'ED 042397528'),
(72, 'Dionis', 'Fulvia', '1955-09-08', '+442902692579', '88', 'Renoir Port Close', 54, 9, 'LZ 346861206'),
(73, 'Britni', 'Rivkah', '1969-12-07', '+446015207263', '87', 'Craigdale Close', 35, 5, 'TX 163475441'),
(74, 'Kissee', 'Shelba', '1986-07-31', '+448963802679', '59', 'Kaywood Street', 54, 9, 'PY 665592255'),
(75, 'Cristen', 'Claribel', '1950-05-16', '+444677018718', '41', 'Weetucket Close', 12, 4, 'BC 171380171'),
(76, 'Esmaria', 'Roshelle', '1978-12-08', '+440593838210', '14', 'Rivercreek Close', 59, 1, 'ND 203295503'),
(77, 'Brynna', 'Stevena', '1956-12-13', '+449626860720', '22', 'Pyrl Street', 3, 7, 'BI 849528182'),
(78, 'Barby', 'Shayna', '1957-04-12', '+448193281497', '98', 'Maas Close', 59, 1, 'SY 893297143'),
(79, 'Rafaelia', 'Kalli', '1976-07-15', '+441182852484', '70', 'Cardozo Street', 41, 3, 'KA 827113120'),
(80, 'Shana', 'Emmi', '1948-07-22', '+441290951379', '50', 'El Cerro Close', 3, 7, 'TN 424897118');

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `Pilot_id` int(6) NOT NULL,
  `E_id` int(6) DEFAULT NULL,
  `Qualification_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`Pilot_id`, `E_id`, `Qualification_id`) VALUES
(1, 5, 1),
(2, 7, 2),
(3, 9, 1),
(4, 11, 1),
(5, 12, 1),
(6, 13, 2),
(7, 15, 1),
(8, 16, 1),
(9, 18, 1),
(10, 21, 2),
(11, 22, 1),
(12, 26, 1),
(13, 28, 2),
(14, 30, 1),
(15, 31, 2),
(16, 33, 1),
(17, 36, 2),
(18, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plane`
--

CREATE TABLE `plane` (
  `PlaneID` int(6) NOT NULL,
  `PmodelID` int(6) DEFAULT NULL,
  `Plane_purchasedate` date DEFAULT NULL,
  `Plane_insurancedate` date DEFAULT NULL,
  `Plane_price_paid` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plane`
--

INSERT INTO `plane` (`PlaneID`, `PmodelID`, `Plane_purchasedate`, `Plane_insurancedate`, `Plane_price_paid`) VALUES
(1, 5, '2014-09-22', '2018-04-11', 714),
(2, 4, '2013-05-05', '2015-02-17', 714),
(3, 1, '2013-07-21', '2018-12-06', 77400),
(4, 3, '2016-08-03', '2018-08-13', 220000),
(5, 4, '2014-12-12', '2017-05-26', 714),
(6, 4, '2013-06-01', '2017-08-15', 714),
(7, 3, '2014-11-28', '2017-06-08', 220000);

-- --------------------------------------------------------

--
-- Table structure for table `plane_model`
--

CREATE TABLE `plane_model` (
  `PmodelID` int(6) NOT NULL,
  `Ptype` varchar(25) DEFAULT NULL,
  `Pmodel` varchar(25) DEFAULT NULL,
  `PNumOfPass` int(3) DEFAULT NULL,
  `Pproducent` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plane_model`
--

INSERT INTO `plane_model` (`PmodelID`, `Ptype`, `Pmodel`, `PNumOfPass`, `Pproducent`) VALUES
(1, 'Passanger', 'A318', 132, 'Airbus'),
(2, 'Passanger', 'A319', 160, 'Airbus'),
(3, 'Passanger', '737-300', 188, 'Boeing'),
(4, 'Light', '205', 6, 'Cessna'),
(5, 'Light', '206', 6, 'Cessna');

-- --------------------------------------------------------

--
-- Table structure for table `postcode`
--

CREATE TABLE `postcode` (
  `PostcodeID` int(10) NOT NULL,
  `Postcode` varchar(10) DEFAULT NULL,
  `CityID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postcode`
--

INSERT INTO `postcode` (`PostcodeID`, `Postcode`, `CityID`) VALUES
(1, '?BT29 4AB', 1),
(2, 'BT3 9JH', 1),
(3, 'B26 3QJ', 2),
(4, 'M90 1QX', 3),
(5, 'DN9 3RH', 4),
(6, 'CF62 3BD', 5),
(7, 'BS48 3DY', 6),
(8, 'L24 1YD', 7),
(9, 'LU2 9LY', 8),
(10, 'BH23 6SE', 9),
(11, 'SO18 2NL', 10),
(12, 'RH6 0NP', 8),
(13, 'TW6', 8),
(14, 'LS19 7TU', 11),
(15, 'NE13 8BZ', 12),
(16, 'DE74 2SA', 13),
(17, 'AB21 7DU', 14),
(18, 'PA3 2SW', 15),
(19, 'EH12 9DN', 16),
(20, 'NR6 6JA', 17),
(21, 'CM24 1QW', 8),
(22, 'EX5 2BD', 18),
(23, 'WR3 8TF', 59),
(24, 'WE1 7ZB', 54),
(25, 'OX1 8GJ', 41),
(26, 'NE6 7PT', 12),
(27, 'KU1 0HW', 35),
(28, 'WIN 5SD', 56),
(29, 'MAN 4TZ', 3),
(30, 'LD4 3JU', 11),
(31, 'WE1 9TZ', 54),
(32, 'LN3 2YM', 39),
(33, 'CS8 7RY', 26),
(34, 'CF6 5PB', 5);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `PriceID` int(10) NOT NULL,
  `Price` int(3) DEFAULT NULL,
  `RouteID` int(6) DEFAULT NULL,
  `Seat_num_from` int(2) DEFAULT NULL,
  `Seat_num_to` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`PriceID`, `Price`, `RouteID`, `Seat_num_from`, `Seat_num_to`) VALUES
(1, 120, 5, 0, 0),
(2, 110, 3, 0, 0),
(3, 100, 4, 0, 0),
(4, 200, 1, 0, 0),
(5, 500, 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `Qualification_id` int(6) NOT NULL,
  `Ptype` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`Qualification_id`, `Ptype`) VALUES
(2, 'Light'),
(1, 'Passanger');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `Reservation_ID` int(10) NOT NULL,
  `Pass_id` int(6) DEFAULT NULL,
  `Flight_id` int(6) DEFAULT NULL,
  `Ticket_id` int(10) DEFAULT NULL,
  `Res_Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`Reservation_ID`, `Pass_id`, `Flight_id`, `Ticket_id`, `Res_Status`) VALUES
(1, 78, 4, 1, 'Booked'),
(2, 7, 5, 2, 'Cancelled'),
(3, 6, 9, 3, 'Paid'),
(4, 39, 9, 4, 'Cancelled'),
(5, 39, 8, 5, 'Paid'),
(6, 22, 13, 6, 'Cancelled'),
(7, 10, 7, 7, 'Cancelled'),
(8, 55, 6, 8, 'Paid'),
(9, 17, 4, 9, 'Paid'),
(10, 10, 6, 10, 'Booked'),
(11, 7, 4, 11, 'Cancelled'),
(12, 24, 1, 12, 'Booked'),
(13, 15, 5, 13, 'Paid'),
(14, 17, 12, 14, 'Cancelled'),
(15, 10, 13, 15, 'Booked'),
(16, 12, 12, 16, 'Booked'),
(17, 29, 2, 17, 'Cancelled'),
(18, 25, 11, 18, 'Cancelled'),
(19, 76, 5, 19, 'Cancelled'),
(20, 49, 2, 20, 'Booked'),
(21, 75, 14, 21, 'Paid'),
(22, 12, 13, 22, 'Booked'),
(23, 34, 2, 23, 'Paid'),
(24, 14, 2, 24, 'Booked'),
(25, 76, 10, 25, 'Booked'),
(26, 14, 5, 26, 'Booked'),
(27, 18, 9, 27, 'Paid'),
(28, 57, 11, 28, 'Paid'),
(29, 17, 2, 29, 'Paid'),
(30, 53, 2, 30, 'Cancelled'),
(31, 4, 8, 31, 'Paid'),
(32, 17, 6, 32, 'Paid'),
(33, 12, 3, 33, 'Booked'),
(34, 26, 11, 34, 'Paid'),
(35, 43, 6, 35, 'Cancelled'),
(36, 79, 4, 36, 'Booked'),
(37, 32, 5, 37, 'Paid'),
(38, 34, 7, 38, 'Paid'),
(39, 68, 2, 39, 'Cancelled'),
(40, 76, 9, 40, 'Cancelled'),
(41, 45, 2, 41, 'Paid'),
(42, 11, 10, 42, 'Cancelled'),
(43, 19, 10, 43, 'Paid'),
(44, 57, 7, 44, 'Booked'),
(45, 75, 3, 45, 'Booked'),
(46, 26, 2, 46, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RouteID` int(3) NOT NULL,
  `Airport_depart` varchar(10) DEFAULT NULL,
  `Airport_arrival` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`RouteID`, `Airport_depart`, `Airport_arrival`) VALUES
(1, 'DSA', 'BRS'),
(2, 'BOH', 'BFS'),
(3, 'EDI', 'STN'),
(4, 'LTN', 'SOU'),
(5, 'LGW', 'LGW'),
(6, 'LBA', 'ABZ'),
(7, 'LHR', 'ABZ');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_id` int(10) NOT NULL,
  `Pass_ID` int(6) DEFAULT NULL,
  `Flight_id` int(3) DEFAULT NULL,
  `Seat_number` varchar(6) DEFAULT NULL,
  `PriceID` int(3) DEFAULT NULL,
  `Ticket_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket_id`, `Pass_ID`, `Flight_id`, `Seat_number`, `PriceID`, `Ticket_date`) VALUES
(1, 78, 4, 'NC45', 3, '2018-06-06'),
(2, 7, 5, 'NC19', 1, '2019-08-19'),
(3, 6, 9, 'NC46', 3, '2018-01-23'),
(4, 39, 9, 'BC28', 4, '2018-06-29'),
(5, 39, 8, 'BC18', 4, '2019-03-30'),
(6, 22, 13, 'BC6', 4, '2018-10-03'),
(7, 10, 7, 'FC8', 5, '2018-06-21'),
(8, 55, 6, 'BC24', 4, '2018-09-07'),
(9, 17, 4, 'BC12', 4, '2018-01-26'),
(10, 10, 6, 'BC15', 4, '2018-10-12'),
(11, 7, 4, 'FC15', 5, '2019-08-22'),
(12, 24, 1, 'FC15', 5, '0000-00-00'),
(13, 15, 5, 'FC1', 5, '2019-09-23'),
(14, 17, 12, 'FC9', 5, '2019-08-14'),
(15, 10, 13, 'NC22', 2, '2018-02-06'),
(16, 12, 12, 'FC5', 5, '2019-11-29'),
(17, 29, 2, 'FC11', 5, '2019-08-08'),
(18, 25, 11, 'FC11', 5, '2018-02-28'),
(19, 76, 5, 'FC11', 5, '2018-09-29'),
(20, 49, 2, 'BC15', 4, '2018-01-12'),
(21, 75, 14, 'NC45', 3, '2018-09-22'),
(22, 12, 13, 'BC17', 4, '2018-01-22'),
(23, 34, 2, 'FC2', 5, '2018-09-14'),
(24, 14, 2, 'FC10', 5, '2018-10-24'),
(25, 76, 10, 'NC21', 2, '2018-04-25'),
(26, 14, 5, 'BC3', 4, '2019-01-30'),
(27, 18, 9, 'FC10', 5, '2018-06-08'),
(28, 57, 11, 'NC57', 3, '2018-07-21'),
(29, 17, 2, 'FC3', 5, '2019-12-05'),
(30, 53, 2, 'NC2', 1, '2018-05-28'),
(31, 4, 8, 'FC5', 5, '2018-03-31'),
(32, 17, 6, 'NC16', 1, '2019-09-02'),
(33, 12, 3, 'NC20', 1, '2018-01-21'),
(34, 26, 11, 'NC6', 1, '2019-02-28'),
(35, 43, 6, 'BC18', 4, '2019-10-25'),
(36, 79, 4, 'FC14', 5, '0000-00-00'),
(37, 32, 5, 'FC5', 5, '2019-11-25'),
(38, 34, 7, 'NC37', 2, '2018-06-05'),
(39, 68, 2, 'FC3', 5, '2019-05-01'),
(40, 76, 9, 'NC47', 3, '2018-05-04'),
(41, 45, 2, 'NC45', 3, '2019-08-20'),
(42, 11, 10, 'BC8', 4, '2018-11-21'),
(43, 19, 10, 'NC21', 2, '2018-11-26'),
(44, 57, 7, 'NC54', 3, '2019-12-03'),
(45, 75, 3, 'BC27', 4, '2018-10-21'),
(46, 26, 2, 'BC19', 4, '2018-03-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `fk_CityID` (`CityID`),
  ADD KEY `fk_PostcodeID` (`PostcodeID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CityID`),
  ADD KEY `CountryID` (`CountryID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`),
  ADD KEY `fke_CityID` (`CityID`),
  ADD KEY `fke_PostcodeID` (`PostcodeID`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Flight_id`),
  ADD KEY `fk_PlaneID` (`PlaneID`),
  ADD KEY `fk_RouteID` (`RouteID`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`Pass_id`),
  ADD KEY `fkCityID` (`CityID`),
  ADD KEY `fkPostcodeID` (`PostcodeID`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`Pilot_id`),
  ADD KEY `fk_E_id` (`E_id`),
  ADD KEY `fk_Qualification_id` (`Qualification_id`);

--
-- Indexes for table `plane`
--
ALTER TABLE `plane`
  ADD PRIMARY KEY (`PlaneID`),
  ADD KEY `fk_PmodelID` (`PmodelID`);

--
-- Indexes for table `plane_model`
--
ALTER TABLE `plane_model`
  ADD PRIMARY KEY (`PmodelID`),
  ADD KEY `Ptype` (`Ptype`);

--
-- Indexes for table `postcode`
--
ALTER TABLE `postcode`
  ADD PRIMARY KEY (`PostcodeID`),
  ADD KEY `CityID` (`CityID`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`PriceID`),
  ADD KEY `fk_RouteID2` (`RouteID`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`Qualification_id`),
  ADD KEY `fk_Ptype` (`Ptype`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `fkr_Pass_ID` (`Pass_id`),
  ADD KEY `fkr_Flight_id` (`Flight_id`),
  ADD KEY `fkr_Ticket_id` (`Ticket_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `fk_Airport_depart` (`Airport_depart`),
  ADD KEY `fk_Airport_arrival` (`Airport_arrival`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_id`),
  ADD KEY `fk_Pass_id` (`Pass_ID`),
  ADD KEY `fk_Flight_id` (`Flight_id`),
  ADD KEY `fk_PriceID` (`PriceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CityID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `Flight_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `passanger`
--
ALTER TABLE `passanger`
  MODIFY `Pass_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `pilot`
--
ALTER TABLE `pilot`
  MODIFY `Pilot_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `plane`
--
ALTER TABLE `plane`
  MODIFY `PlaneID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plane_model`
--
ALTER TABLE `plane_model`
  MODIFY `PmodelID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `postcode`
--
ALTER TABLE `postcode`
  MODIFY `PostcodeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `PriceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `Qualification_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `Reservation_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `RouteID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `Ticket_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `fk_CityID` FOREIGN KEY (`CityID`) REFERENCES `city` (`CityID`),
  ADD CONSTRAINT `fk_PostcodeID` FOREIGN KEY (`PostcodeID`) REFERENCES `postcode` (`PostcodeID`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `CountryID` FOREIGN KEY (`CountryID`) REFERENCES `country` (`CountryID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fke_CityID` FOREIGN KEY (`CityID`) REFERENCES `city` (`CityID`),
  ADD CONSTRAINT `fke_PostcodeID` FOREIGN KEY (`PostcodeID`) REFERENCES `postcode` (`PostcodeID`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `fk_PlaneID` FOREIGN KEY (`PlaneID`) REFERENCES `plane` (`PlaneID`),
  ADD CONSTRAINT `fk_RouteID` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`);

--
-- Constraints for table `passanger`
--
ALTER TABLE `passanger`
  ADD CONSTRAINT `fkCityID` FOREIGN KEY (`CityID`) REFERENCES `city` (`CityID`),
  ADD CONSTRAINT `fkPostcodeID` FOREIGN KEY (`PostcodeID`) REFERENCES `postcode` (`PostcodeID`);

--
-- Constraints for table `pilot`
--
ALTER TABLE `pilot`
  ADD CONSTRAINT `fk_E_id` FOREIGN KEY (`E_id`) REFERENCES `employee` (`E_id`),
  ADD CONSTRAINT `fk_Qualification_id` FOREIGN KEY (`Qualification_id`) REFERENCES `qualification` (`Qualification_id`);

--
-- Constraints for table `plane`
--
ALTER TABLE `plane`
  ADD CONSTRAINT `fk_PmodelID` FOREIGN KEY (`PmodelID`) REFERENCES `plane_model` (`PmodelID`);

--
-- Constraints for table `postcode`
--
ALTER TABLE `postcode`
  ADD CONSTRAINT `CityID` FOREIGN KEY (`CityID`) REFERENCES `city` (`CityID`);

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `fk_RouteID2` FOREIGN KEY (`RouteID`) REFERENCES `route` (`RouteID`);

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `fk_Ptype` FOREIGN KEY (`Ptype`) REFERENCES `plane_model` (`Ptype`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fkr_Flight_id` FOREIGN KEY (`Flight_id`) REFERENCES `flight` (`Flight_id`),
  ADD CONSTRAINT `fkr_Pass_ID` FOREIGN KEY (`Pass_id`) REFERENCES `passanger` (`Pass_id`),
  ADD CONSTRAINT `fkr_Ticket_id` FOREIGN KEY (`Ticket_id`) REFERENCES `ticket` (`Ticket_id`);

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `fk_Airport_arrival` FOREIGN KEY (`Airport_arrival`) REFERENCES `airports` (`AirportID`),
  ADD CONSTRAINT `fk_Airport_depart` FOREIGN KEY (`Airport_depart`) REFERENCES `airports` (`AirportID`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_Flight_id` FOREIGN KEY (`Flight_id`) REFERENCES `flight` (`Flight_id`),
  ADD CONSTRAINT `fk_Pass_id` FOREIGN KEY (`Pass_ID`) REFERENCES `passanger` (`Pass_id`),
  ADD CONSTRAINT `fk_PriceID` FOREIGN KEY (`PriceID`) REFERENCES `price` (`PriceID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
