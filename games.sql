-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 07:53 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `games`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Morshed Ahmed', 'morshed', '1234', 'morshed1234@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fixture`
--

CREATE TABLE IF NOT EXISTS `fixture` (
  `day` varchar(3) DEFAULT NULL,
  `date` varchar(8) DEFAULT NULL,
  `team` varchar(18) NOT NULL DEFAULT '',
  `gameweek` int(1) NOT NULL DEFAULT '0',
  `matchno` int(2) NOT NULL DEFAULT '0',
  `time` decimal(2,1) DEFAULT NULL,
  `stadiumname` varchar(28) DEFAULT NULL,
  `goal` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fixture`
--

INSERT INTO `fixture` (`day`, `date`, `team`, `gameweek`, `matchno`, `time`, `stadiumname`, `goal`) VALUES
('Fri', '28/07/17', 'Abahani', 1, 1, '4.3', 'Bangabandhu National satdium', 0),
('Wed', '02/08/17', 'Abahani', 2, 7, '4.0', 'Bangabandhu National satdium', 0),
('Mon', '07/08/17', 'Abahani', 3, 14, '6.0', 'Bangabandhu National satdium', 0),
('Sun', '30/07/17', 'Abahani Chittagong', 1, 5, '6.0', 'Bangabandhu National satdium', 0),
('Thu', '03/08/17', 'Abahani Chittagong', 2, 9, '6.0', 'Bangabandhu National satdium', 0),
('Mon', '07/08/17', 'Abahani Chittagong', 3, 13, '4.0', 'Bangabandhu National satdium', 0),
('Mon', '31/07/17', 'Arambagh', 1, 6, '4.0', 'Bangabandhu National satdium', 0),
('Sat', '05/08/17', 'Arambagh', 2, 12, '4.0', 'Bangabandhu National satdium', 0),
('Sat', '29/07/17', 'Brothers Union', 1, 2, '4.0', 'Bangabandhu National satdium', 0),
('Fri', '04/08/17', 'Brothers Union', 2, 11, '6.0', 'Bangabandhu National satdium', 0),
('Sun', '30/07/17', 'Farashganj', 1, 5, '6.0', 'Bangabandhu National satdium', 0),
('Wed', '02/08/17', 'Farashganj', 2, 7, '4.0', 'Bangabandhu National satdium', 0),
('Sat', '29/07/17', 'Mohammedan Dhaka', 1, 3, '6.0', 'Bangabandhu National satdium', 0),
('Thu', '03/08/17', 'Mohammedan Dhaka', 2, 9, '6.0', 'Bangabandhu National satdium', 0),
('Mon', '07/08/17', 'Mohammedan Dhaka', 3, 14, '6.0', 'Bangabandhu National satdium', 0),
('Sun', '30/07/17', 'Muktijoddha SKC', 1, 4, '4.0', 'Bangabandhu National satdium', 0),
('Fri', '04/08/17', 'Muktijoddha SKC', 2, 10, '4.0', 'Bangabandhu National satdium', 0),
('Mon', '31/07/17', 'Rahmatgonj MFS', 1, 6, '4.0', 'Bangabandhu National satdium', 0),
('Fri', '04/08/17', 'Rahmatgonj MFS', 2, 10, '4.0', 'Bangabandhu National satdium', 0),
('Fri', '28/07/17', 'Saif', 1, 1, '4.3', 'Bangabandhu National satdium', 0),
('Sat', '05/08/17', 'Saif', 2, 12, '4.0', 'Bangabandhu National satdium', 0),
('Sat', '29/07/17', 'Sheikh Jamal', 1, 3, '6.0', 'Bangabandhu National satdium', 0),
('Thu', '03/08/17', 'Sheikh Jamal', 2, 8, '4.0', 'Bangabandhu National satdium', 0),
('Sun', '30/07/17', 'Sheikh Russel', 1, 4, '4.0', 'Bangabandhu National satdium', 0),
('Fri', '04/08/17', 'Sheikh Russel', 2, 11, '6.0', 'Bangabandhu National satdium', 0),
('Sat', '29/07/17', 'Team BJMC', 1, 2, '4.0', 'Bangabandhu National satdium', 0),
('Thu', '03/08/17', 'Team BJMC', 2, 8, '4.0', 'Bangabandhu National satdium', 0),
('Mon', '07/08/17', 'Team BJMC', 3, 13, '4.0', 'Bangabandhu National satdium', 0);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `jerseyno` varchar(2) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `age` varchar(2) DEFAULT NULL,
  `position` varchar(1) DEFAULT NULL,
  `teamid` int(2) DEFAULT NULL,
  `id` int(3) NOT NULL DEFAULT '0',
  `prize` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`jerseyno`, `name`, `country`, `age`, `position`, `teamid`, `id`, `prize`) VALUES
('1', 'M. Alam', 'Bangladesh', '26', 'G', 12, 1, 30000),
('22', 'M. Nayeem', 'Bangladesh', '24', 'G', 12, 2, 30000),
('30', 'M. Chowdhury', 'Bangladesh', '36', 'G', 12, 3, 30000),
('2', 'N. Chowdhury', 'Bangladesh', '39', 'D', 12, 4, 300000),
('3', 'M. Faisal', 'Bangladesh', '33', 'D', 12, 5, 200000),
('4', 'R. Hasan', 'Bangladesh', '24', 'D', 12, 6, 200000),
('14', 'M. Mamun Miah', 'Bangladesh', '31', 'D', 12, 7, 200000),
('18', 'Y. Munna', 'Bangladesh', '27', 'D', 12, 8, 200000),
('6', 'E. Mahmud', 'Bangladesh', '27', 'M', 12, 9, 200000),
('7', 'Sohel Rana II', 'Bangladesh', '23', 'M', 12, 10, 200000),
('8', 'P. Kumar Das', 'Bangladesh', '36', 'M', 12, 11, 200000),
('9', 'E. Onuoha', 'Nigeria', '30', 'M', 12, 12, 200000),
('12', 'I. Sultan Jitu', 'Bangladesh', '28', 'M', 12, 13, 200000),
('13', 'M. Fahad', 'Bangladesh', '23', 'M', 12, 14, 200000),
('21', 'M. Shahed', 'Bangladesh', '25', 'M', 12, 15, 300000),
('26', 'S. Tasin', 'Bangladesh', '27', 'M', 12, 16, 300000),
('11', 'R. Miya', 'Bangladesh', '23', 'A', 12, 17, 300000),
('15', 'S. Uddin', 'Bangladesh', '20', 'A', 12, 18, 300000),
('16', 'D. Alam', 'Bangladesh', '30', 'A', 12, 19, 300000),
('17', 'S. Nwadialu', 'Nigeria', '29', 'A', 12, 20, 300000),
('20', 'N. Newaj Jibon', 'Bangladesh', '28', 'A', 12, 21, 300000),
('27', 'F. Shitol', 'Bangladesh', '21', 'A', 12, 22, 300000),
('22', 'S. Roghu', 'Bangladesh', '', 'G', 1, 23, 30000),
('30', 'M. Nehal', 'Bangladesh', '28', 'G', 1, 24, 30000),
('33', 'M. Rasel', 'Bangladesh', '24', 'G', 1, 25, 30000),
('4', 'M. Lawal', 'Bangladesh', '', 'D', 1, 26, 300000),
('5', 'K. Pada', 'Bangladesh', '', 'D', 1, 27, 300000),
('13', 'M. Hannan', 'Bangladesh', '', 'D', 1, 28, 300000),
('14', 'P. Das', 'Bangladesh', '', 'D', 1, 29, 300000),
('15', 'R. Rakin', 'Bangladesh', '22', 'D', 1, 30, 300000),
('17', 'M. Amin', 'Bangladesh', '21', 'D', 1, 31, 300000),
('8', 'M. Mamun', 'Bangladesh', '30', 'M', 1, 32, 300000),
('11', 'M. Rabby', 'Bangladesh', '', 'M', 1, 33, 300000),
('12', 'K. Barua', 'Nigeria', '', 'M', 1, 34, 300000),
('18', 'A. Rahman', 'Bangladesh', '', 'M', 1, 35, 300000),
('19', 'J. Iqbal', 'Bangladesh', '21', 'M', 1, 36, 300000),
('21', 'S. Islam', 'Bangladesh', '', 'M', 1, 37, 300000),
('25', 'S. Rahman', 'Bangladesh', '', 'M', 1, 38, 300000),
('9', 'C. Rakhanie', 'Bangladesh', '', 'A', 1, 39, 300000),
('20', 'M. Rony', 'Bangladesh', '27', 'A', 1, 40, 300000),
('77', 'L. Saint-Preux', 'Bangladesh', '33', 'A', 1, 41, 300000),
('99', 'A. Oladipo', 'Nigeria', '', 'A', 1, 42, 300000),
('1', 'M. Mithul Hossain', 'Bangladesh', '', 'G', 2, 43, 30000),
('22', 'S. Masum', 'Bangladesh', '', 'G', 2, 44, 30000),
('25', 'M. Sujon', 'Bangladesh', '', 'G', 2, 45, 30000),
('30', 'M. Nayeem', 'Bangladesh', '22', 'G', 2, 46, 30000),
('2', 'M. Al Mamun Miah', 'Bangladesh', '31', 'D', 2, 47, 300000),
('3', 'K. Bosh', 'Bangladesh', '26', 'D', 2, 48, 300000),
('4', 'Y. Khan', 'Bangladesh', '24', 'D', 2, 49, 300000),
('6', 'A. Islam', 'Bangladesh', '', 'D', 2, 50, 300000),
('19', 'D. Haque', 'Bangladesh', '38', 'D', 2, 51, 300000),
('24', 'M. Alauddin', 'Bangladesh', '', 'D', 2, 52, 300000),
('26', 'Mohammad Anisur Alam', 'Bangladesh', '29', 'D', 2, 53, 300000),
('27', 'M. Shamol Mia', 'Bangladesh', '', 'D', 2, 54, 300000),
('28', 'M. Shakil Ahmed', 'Bangladesh', '', 'D', 2, 55, 300000),
('8', 'M. Parvez Chowdhury', 'Bangladesh', '30', 'M', 2, 56, 300000),
('13', 'M. Islam', 'Bangladesh', '', 'M', 2, 57, 300000),
('14', 'M. Hussain Rubel', 'Bangladesh', '', 'M', 2, 58, 300000),
('15', 'M. Zaman Nipu', 'Bangladesh', '', 'M', 2, 59, 300000),
('16', 'M. Haque Manik', 'Bangladesh', '', 'M', 2, 60, 300000),
('17', 'M. Hossain', 'Bangladesh', '', 'M', 2, 61, 300000),
('18', 'O. Babu', 'Bangladesh', '24', 'M', 2, 62, 300000),
('21', 'M. Hossain Ziku', 'Bangladesh', '', 'M', 2, 63, 300000),
('32', 'M. Ahmed Chowdhury', 'Bangladesh', '', 'M', 2, 64, 300000),
('33', 'R. Sarker', 'Bangladesh', '', 'M', 2, 65, 300000),
('34', 'A. Howlader', 'Bangladesh', '', 'M', 2, 66, 300000),
('35', 'M. Islam Tareq', 'Bangladesh', '', 'M', 2, 67, 300000),
('5', 'K. Tara', 'Bangladesh', '', 'A', 2, 68, 300000),
('7', 'S. Kanform', 'Gambia', '', 'A', 2, 69, 300000),
('9', 'R. Onwrebe', 'Nigeria', '', 'A', 2, 70, 300000),
('10', 'M. Bah', 'Gambia', '', 'A', 2, 71, 300000),
('12', 'M. Absar', 'Bangladesh', '', 'A', 2, 72, 300000),
('20', 'M. Sohel Mia', 'Bangladesh', '', 'A', 2, 73, 300000),
('23', 'M. Javed Khan', 'Bangladesh', '', 'A', 2, 74, 300000),
('1', 'A. Rahman', 'Bangladesh', '21', 'G', 3, 75, 30000),
('12', 'Mohamed Saddam Hossain', 'Bangladesh', '', 'G', 3, 76, 30000),
('22', 'S. Islam', 'Bangladesh', '', 'G', 3, 77, 30000),
('37', 'Mohamed Pappu Hossain', 'Bangladesh', '', 'G', 3, 78, 30000),
('', 'A. Rana', 'Bangladesh', '30', 'G', 3, 79, 30000),
('2', 'Mohamed Ariful Islam', 'Bangladesh', '31', 'D', 3, 80, 300000),
('3', 'S. Ahmad', 'Bangladesh', '24', 'D', 3, 81, 300000),
('4', 'T. Barman', 'Bangladesh', '24', 'D', 3, 82, 300000),
('5', 'M. Rafi', 'Bangladesh', '', 'D', 3, 83, 300000),
('15', 'M. Russel', 'Bangladesh', '', 'D', 3, 84, 300000),
('16', 'M. Rimon', 'Bangladesh', '', 'D', 3, 85, 300000),
('24', 'M. Mia', 'Bangladesh', '19', 'D', 3, 86, 300000),
('27', 'M. Islam', 'Bangladesh', '', 'D', 3, 87, 300000),
('', 'N. Faisal', 'Bangladesh', '', 'D', 3, 88, 300000),
('', 'S. Tripura', 'Bangladesh', '', 'D', 3, 89, 300000),
('6', 'J. Bhuyan', 'Bangladesh', '28', 'M', 3, 90, 300000),
('8', 'M. Kabir', 'Bangladesh', '', 'M', 3, 91, 300000),
('10', 'H. Biswas', 'Bangladesh', '23', 'M', 3, 92, 300000),
('11', 'Mohamed Shajjad Hossain', 'Bangladesh', '', 'M', 3, 93, 300000),
('14', 'Mohamed Al Amin Hossain', 'Bangladesh', '', 'M', 3, 94, 300000),
('19', 'M. Ibrahim', 'Bangladesh', '', 'M', 3, 95, 300000),
('21', 'M. Shadhin', 'Bangladesh', '', 'M', 3, 96, 300000),
('23', 'A. Likhon', 'Bangladesh', '', 'M', 3, 97, 300000),
('33', 'D. Córdoba', 'Bangladesh', '26', 'M', 3, 98, 300000),
('43', 'S. Das', 'Bangladesh', '', 'M', 3, 99, 300000),
('', 'M. Abdullah', 'Bangladesh', '21', 'M', 3, 100, 300000),
('', 'M. Hossain', 'Bangladesh', '30', 'M', 3, 101, 300000),
('', 'M. Miah Zoni', 'Bangladesh', '20', 'M', 3, 102, 300000),
('', 'S. Rana', 'Bangladesh', '', 'M', 3, 103, 300000),
('', 'A. Umarjonov', 'Uzbekistan', '25', 'M', 3, 104, 300000),
('7', 'M. Rana', 'Bangladesh', '22', 'A', 3, 105, 300000),
('9', 'Mohammed Motin Mia', 'Bangladesh', '', 'A', 3, 106, 300000),
('26', 'H. Valencia', 'Colombia', '28', 'A', 3, 107, 300000),
('29', 'M. Uddin', 'Bangladesh', '', 'A', 3, 108, 300000),
('80', 'M. Sajid', 'Uzbekistan', '', 'A', 3, 109, 300000),
('', 'W. Anselme', 'Bangladesh', '32', 'A', 3, 110, 300000),
('', 'K. Chigozie', 'Bangladesh', '30', 'A', 3, 111, 300000),
('', 'M. Hossain', 'Bangladesh', '', 'A', 3, 112, 300000),
('', 'T. Sabuz', 'Bangladesh', '28', 'A', 3, 113, 300000),
('1', 'M. Liton', 'Bangladesh', '', 'G', 4, 114, 30000),
('22', 'M. Khan', 'Bangladesh', '33', 'G', 4, 115, 30000),
('30', 'M. Al Amin', 'Bangladesh', '', 'G', 4, 116, 30000),
('2', 'M. Bablu', 'Bangladesh', '', 'D', 4, 117, 300000),
('3', 'M. Mintu Sheikh', 'Bangladesh', '29', 'D', 4, 118, 300000),
('4', 'M. Razaul Karim', 'Bangladesh', '31', 'D', 4, 119, 300000),
('5', 'M. Rahman', 'Bangladesh', '', 'D', 4, 120, 300000),
('6', 'M. Linkon', 'Bangladesh', '28', 'D', 4, 121, 300000),
('14', 'K. Sharif', 'Bangladesh', '', 'D', 4, 122, 300000),
('16', 'M. Islam Nazir', 'Bangladesh', '29', 'D', 4, 123, 300000),
('25', 'I. Komol', 'Bangladesh', '', 'D', 4, 124, 300000),
('26', 'A. Ahmed', 'Bangladesh', '', 'D', 4, 125, 300000),
('28', 'M. Monir', 'Bangladesh', '', 'D', 4, 126, 300000),
('34', 'M. Sohel', 'Bangladesh', '', 'D', 4, 127, 300000),
('7', 'M. Faisal Mahmud', 'Bangladesh', '', 'M', 4, 128, 300000),
('8', 'M. Enamul', 'Bangladesh', '', 'M', 4, 129, 300000),
('15', 'M. Jamal', 'Bangladesh', '', 'M', 4, 130, 300000),
('17', 'S. Ahmed', 'Bangladesh', '30', 'M', 4, 131, 300000),
('18', 'I. Hasan Emu', 'Bangladesh', '', 'M', 4, 132, 300000),
('19', 'B. Ahmed', 'Bangladesh', '', 'M', 4, 133, 300000),
('21', 'A. Hossain', 'Bangladesh', '', 'M', 4, 134, 300000),
('23', 'S. Hossain', 'Bangladesh', '', 'M', 4, 135, 300000),
('70', 'W. Augustin', 'Haiti', '30', 'M', 4, 136, 300000),
('', 'R. Liton', 'Bangladesh', '', 'M', 4, 137, 300000),
('', 'S. Newaz', 'Bangladesh', '', 'M', 4, 138, 300000),
('9', 'M. Chowdhury', 'Bangladesh', '29', 'A', 4, 139, 300000),
('10', 'M. Ameli', 'Bangladesh', '30', 'A', 4, 140, 300000),
('11', 'M. Tokhlis', 'Bangladesh', '', 'A', 4, 141, 300000),
('12', 'A. Komol', 'Bangladesh', '31', 'A', 4, 142, 300000),
('1', 'B. Bhattacharjee', 'Bangladesh', '37', 'G', 5, 143, 30000),
('20', 'M. Zia', 'Bangladesh', '33', 'G', 5, 144, 30000),
('22', 'M. Rahman', 'Bangladesh', '28', 'G', 5, 145, 60000),
('30', 'S. Babu', 'Bangladesh', '', 'G', 5, 146, 60000),
('2', 'M. Sohel Rana', 'Bangladesh', '', 'D', 5, 147, 300000),
('3', 'R. Moni', 'Bangladesh', '', 'D', 5, 148, 300000),
('4', 'E. Benjamin', 'Nigeria', '', 'D', 5, 149, 300000),
('5', 'U. Bonik', 'Bangladesh', '27', 'D', 5, 150, 300000),
('6', 'A. Meshu', 'Bangladesh', '30', 'D', 5, 151, 300000),
('16', 'F. Rabbi', 'Bangladesh', '22', 'D', 5, 152, 300000),
('21', 'A. Kumar Baidya', 'Bangladesh', '31', 'D', 5, 153, 300000),
('24', 'B. Ghosh', 'Bangladesh', '', 'D', 5, 154, 300000),
('29', 'F. Babu', 'Bangladesh', '', 'D', 5, 155, 300000),
('31', 'M. Hossain Shourav', 'Bangladesh', '', 'D', 5, 156, 300000),
('32', 'M. Ahmed Ridoy', 'Bangladesh', '', 'D', 5, 157, 300000),
('33', 'M. Javed', 'Bangladesh', '', 'D', 5, 158, 300000),
('7', 'M. Zaman', 'Bangladesh', '', 'M', 5, 159, 300000),
('11', 'K. Rabbi', 'Bangladesh', '', 'M', 5, 160, 300000),
('12', 'M. Hossain', 'Bangladesh', '', 'M', 5, 161, 300000),
('14', 'M. Khan', 'Bangladesh', '28', 'M', 5, 162, 300000),
('15', 'M. Bhuyan', 'Bangladesh', '28', 'M', 5, 163, 300000),
('18', 'S. Kabir Rana', 'Bangladesh', '28', 'M', 5, 164, 300000),
('23', 'M. Rajon Mia', 'Bangladesh', '', 'M', 5, 165, 300000),
('26', 'A. Hossain', 'Bangladesh', '', 'M', 5, 166, 300000),
('27', 'M. Raine', 'Bangladesh', '', 'M', 5, 167, 300000),
('28', 'J. Hossain', 'Bangladesh', '', 'M', 5, 168, 300000),
('8', 'S. Shahed', 'Bangladesh', '27', 'A', 5, 169, 300000),
('9', 'A. Sohib', 'Bangladesh', '', 'A', 5, 170, 300000),
('17', 'M. Nayan', 'Bangladesh', '21', 'A', 5, 171, 300000),
('19', 'S. Biswas', 'Bangladesh', '', 'A', 5, 172, 300000),
('25', 'M. Julfikar', 'Bangladesh', '', 'A', 5, 173, 300000),
('34', 'S. Turzo', 'Bangladesh', '28', 'A', 5, 174, 300000),
('37', 'Islam Mohamed', 'Egypt', '30', 'A', 5, 175, 90000),
('1', 'K. Titu', 'Bangladesh', '', 'G', 6, 176, 60000),
('22', 'S. Hridoy', 'Bangladesh', '', 'G', 6, 177, 60000),
('25', 'M. Kader', 'Bangladesh', '', 'G', 6, 178, 60000),
('30', 'R. Nirob', 'Bangladesh', '', 'G', 6, 179, 60000),
('80', 'S. Chawdhury', 'Bangladesh', '', 'G', 6, 180, 60000),
('2', 'A. Liton', 'Bangladesh', '', 'D', 6, 181, 90000),
('3', 'Y. Khan', 'Bangladesh', '36', 'D', 6, 182, 90000),
('4', 'M. Vasani', 'Bangladesh', '', 'D', 6, 183, 90000),
('5', 'A. Karim', 'Bangladesh', '', 'D', 6, 184, 90000),
('6', 'M. Salauddin', 'Bangladesh', '', 'D', 6, 185, 90000),
('19', 'A. Amin', 'Bangladesh', '', 'D', 6, 186, 90000),
('24', 'M. Sajol', 'Bangladesh', '', 'D', 6, 187, 90000),
('26', 'M. Sujon', 'Bangladesh', '', 'D', 6, 188, 90000),
('27', 'M. Khan', 'Bangladesh', '', 'D', 6, 189, 90000),
('34', 'M. Rasel', 'Bangladesh', '', 'D', 6, 190, 90000),
('37', 'Bijoy Das', 'Bangladesh', '', 'D', 6, 191, 90000),
('39', 'J. Rahman', 'Bangladesh', '31', 'D', 6, 192, 90000),
('70', 'J. Samuel', 'Nigeria', '', 'D', 6, 193, 90000),
('8', 'M. Mesbah', 'Bangladesh', '', 'M', 6, 194, 90000),
('11', 'M. Masud Rana', 'Bangladesh', '34', 'M', 6, 195, 90000),
('12', 'M. Jewel', 'Bangladesh', '', 'M', 6, 196, 90000),
('13', 'R. Das', 'Bangladesh', '', 'M', 6, 197, 90000),
('14', 'M. Mia', 'Bangladesh', '', 'M', 6, 198, 90000),
('15', 'M. Shiekh', 'Bangladesh', '', 'M', 6, 199, 90000),
('16', 'M. Bhuiyan', 'Bangladesh', '', 'M', 6, 200, 90000),
('18', 'A. Khan Joy', 'Bangladesh', '40', 'M', 6, 201, 90000),
('21', 'S. Ashraf Hossain', 'Bangladesh', '40', 'M', 6, 202, 90000),
('28', 'Mohamed Ainal Haque', 'Bangladesh', '', 'M', 6, 203, 90000),
('29', 'M. Sabbir', 'Bangladesh', '', 'M', 6, 204, 90000),
('33', 'M. Islam', 'Bangladesh', '', 'M', 6, 205, 90000),
('35', 'M. Ahmed', 'Bangladesh', '', 'M', 6, 206, 90000),
('10', 'F. Twum', 'Ghana', '34', 'A', 6, 207, 90000),
('17', 'M. Biplob', 'Bangladesh', '', 'A', 6, 208, 90000),
('20', 'M. Roni', 'Bangladesh', '', 'A', 6, 209, 90000),
('23', 'A. Shanto', 'Bangladesh', '', 'A', 6, 210, 90000),
('31', 'R. Ahmed', 'Bangladesh', '', 'A', 6, 211, 90000),
('32', 'M. Shaikh', 'Bangladesh', '', 'A', 6, 212, 90000),
('40', 'Mohamed Enamul Haque', 'Bangladesh', '33', 'A', 6, 213, 90000),
('42', 'Bishal Das', 'Bangladesh', '24', 'A', 6, 214, 90000),
('1', 'M. Pritom', 'Bangladesh', '', 'G', 7, 215, 60000),
('21', 'M. Akkas Shek', 'Bangladesh', '', 'G', 7, 216, 60000),
('31', 'M. Rahman', 'Bangladesh', '', 'G', 7, 217, 60000),
('33', 'M. Razu Ahmed', 'Bangladesh', '', 'G', 7, 218, 60000),
('40', 'M. Azam Khan', 'Bangladesh', '', 'G', 7, 219, 60000),
('2', 'M. Hasan Murad', 'Bangladesh', '30', 'D', 7, 220, 90000),
('3', 'M. Jalal Miya', 'Bangladesh', '', 'D', 7, 221, 90000),
('5', 'K. Nkurumeh', 'Bangladesh', '28', 'D', 7, 222, 90000),
('6', 'Z. Islam Babu', 'Bangladesh', '', 'D', 7, 223, 90000),
('13', 'J. Ikanga', 'cameroon', '29', 'D', 7, 224, 90000),
('15', 'M. Raihan', 'Bangladesh', '', 'D', 7, 225, 90000),
('16', 'M. Parvez', 'Bangladesh', '', 'D', 7, 226, 90000),
('22', 'M. Jintu', 'Bangladesh', '', 'D', 7, 227, 90000),
('23', 'M. Atikuzzaman', 'Bangladesh', '', 'D', 7, 228, 90000),
('25', 'M. Kiron', 'Bangladesh', '', 'D', 7, 229, 90000),
('26', 'M. Khalil Bhuya', 'Bangladesh', '', 'D', 7, 230, 90000),
('32', 'Rokey', 'Bangladesh', '', 'D', 7, 231, 90000),
('35', 'M. Hasan Mim', 'Bangladesh', '', 'D', 7, 232, 90000),
('37', 'Arif', 'Bangladesh', '', 'D', 7, 233, 90000),
('38', 'A. Omur', 'Bangladesh', '', 'D', 7, 234, 90000),
('39', 'M. Zahid', 'Bangladesh', '', 'D', 7, 235, 90000),
('4', 'M. Hossain', 'Bangladesh', '', 'M', 7, 236, 90000),
('8', 'M. Rahman Sohag', 'Bangladesh', '', 'M', 7, 237, 90000),
('12', 'M. Bhuiya', 'Bangladesh', '', 'M', 7, 238, 90000),
('17', 'M. Hossain Saddam', 'Bangladesh', '', 'M', 7, 239, 90000),
('18', 'M. Robiul Hasan', 'Bangladesh', '', 'M', 7, 240, 150000),
('24', 'M. Hanif', 'Bangladesh', '', 'M', 7, 241, 150000),
('27', 'M. Shaharier Bappy', 'Bangladesh', '', 'M', 7, 242, 150000),
('28', 'M. Omar Faruq', 'Bangladesh', '', 'M', 7, 243, 150000),
('34', 'A. Ghosh', 'Bangladesh', '', 'M', 7, 244, 150000),
('42', 'M. Humayun Kabir', 'Bangladesh', '', 'M', 7, 245, 150000),
('7', 'M. Rajon Miya', 'Bangladesh', '', 'A', 7, 246, 150000),
('9', 'M. Sohel Rana', 'Bangladesh', '', 'A', 7, 247, 150000),
('10', 'A. Olalekaw', 'Nigeria', '', 'A', 7, 248, 150000),
('11', 'A. Sufil', 'Bangladesh', '', 'A', 7, 249, 150000),
('19', 'M. Sumon Ali', 'Bangladesh', '', 'A', 7, 250, 150000),
('20', 'M. Anamul Islam', 'Bangladesh', '', 'A', 7, 251, 150000),
('30', 'M. Jewel', 'Bangladesh', '', 'A', 7, 252, 150000),
('1', 'A. Hemel', 'Bangladesh', '', 'G', 8, 253, 60000),
('22', 'A. Islam', 'Bangladesh', '', 'G', 8, 254, 60000),
('25', 'M. Palash', 'Bangladesh', '', 'G', 8, 255, 60000),
('2', 'S. Rony', 'Bangladesh', '', 'D', 8, 256, 150000),
('3', 'M. Mia', 'Bangladesh', '', 'D', 8, 257, 150000),
('6', 'M. Khokon', 'Bangladesh', '', 'D', 8, 258, 150000),
('19', 'S. Sumon', 'Bangladesh', '', 'D', 8, 259, 150000),
('20', 'M. Zahirul', 'Bangladesh', '', 'D', 8, 260, 150000),
('23', 'M. Simul', 'Bangladesh', '', 'D', 8, 261, 150000),
('30', 'B. Esaie', 'Cameroon', '', 'D', 8, 262, 150000),
('35', 'Sumon Das', 'Bangladesh', '', 'D', 8, 263, 150000),
('7', 'M. Al Parvez Sala', 'Bangladesh', '', 'M', 8, 264, 50000),
('8', 'Y. Abdullah', 'Cameroon', '', 'M', 8, 265, 50000),
('13', 'M. Rahman', 'Bangladesh', '29', 'M', 8, 266, 50000),
('14', 'K. Kumar', 'Bangladesh', '', 'M', 8, 267, 50000),
('15', 'M. Shapon', 'Bangladesh', '', 'M', 8, 268, 50000),
('16', 'A. Marma', 'Bangladesh', '', 'M', 8, 269, 50000),
('17', 'A. Al Mamun', 'Bangladesh', '', 'M', 8, 270, 50000),
('21', 'A. Kanon', 'Bangladesh', '', 'M', 8, 271, 50000),
('24', 'Shankar Das', 'Bangladesh', '', 'M', 8, 272, 50000),
('9', 'E. Kingsley Oshiokha', 'Bangladesh', '', 'A', 8, 273, 50000),
('10', 'P. Mulla', 'Bangladesh', '', 'A', 8, 274, 50000),
('11', 'M. Tapu', 'Bangladesh', '', 'A', 8, 275, 50000),
('12', 'M. Robin', 'Bangladesh', '31', 'A', 8, 276, 50000),
('18', 'S. Saif', 'Bangladesh', '38', 'A', 8, 277, 50000),
('26', 'M. Tutul', 'Bangladesh', '', 'A', 8, 278, 50000),
('28', 'R. Islam', 'Bangladesh', '', 'A', 8, 279, 50000),
('29', 'M. S Bablu', 'Bangladesh', '', 'A', 8, 280, 50000),
('32', 'M. Shohel', 'Bangladesh', '', 'A', 8, 281, 50000),
('34', 'M. Royel', 'Bangladesh', '', 'A', 8, 282, 50000),
('37', 'I. Bangoura', 'Bangladesh', '', 'A', 8, 283, 50000),
('', 'M. Shariful', 'Bangladesh', '', 'A', 8, 284, 50000),
('1', 'M. Razib', 'Bangladesh', '', 'G', 9, 285, 60000),
('22', 'M. Shohag', 'Bangladesh', '', 'G', 9, 286, 60000),
('25', 'G. Tuan', 'Bangladesh', '', 'G', 9, 287, 60000),
('30', 'M. Linkcon', 'Bangladesh', '', 'G', 9, 288, 60000),
('31', 'O. Riad', 'Bangladesh', '', 'G', 9, 289, 60000),
('3', 'M. Rimon', 'Bangladesh', '', 'D', 9, 290, 60000),
('4', 'M. Nolak', 'Bangladesh', '', 'D', 9, 291, 60000),
('8', 'M. Ahmed', 'Bangladesh', '', 'D', 9, 292, 60000),
('18', 'S. Dey', 'Bangladesh', '', 'D', 9, 293, 60000),
('24', 'N. Limon', 'Bangladesh', '', 'D', 9, 294, 60000),
('26', 'A. Biswas', 'Bangladesh', '', 'D', 9, 295, 60000),
('28', 'M. Reza', 'Bangladesh', '', 'D', 9, 296, 60000),
('29', 'M. Tarak', 'Bangladesh', '', 'D', 9, 297, 60000),
('', 'M. Rocky', 'Bangladesh', '', 'D', 9, 298, 100000),
('2', 'S. Anny', 'Bangladesh', '', 'M', 9, 299, 100000),
('5', 'K. Sajib', 'Bangladesh', '', 'M', 9, 300, 100000),
('9', 'R. Shuvo', 'Bangladesh', '', 'M', 9, 301, 100000),
('11', 'M. Sifat', 'Bangladesh', '', 'M', 9, 302, 100000),
('12', 'M. Sohel Rana', 'Bangladesh', '', 'M', 9, 303, 100000),
('13', 'T. Saddam', 'Bangladesh', '', 'M', 9, 304, 100000),
('14', 'M. Mithu', 'Bangladesh', '', 'M', 9, 305, 100000),
('15', 'M. Nira', 'Bangladesh', '', 'M', 9, 306, 100000),
('17', 'N. Sumon', 'Bangladesh', '', 'M', 9, 307, 100000),
('19', 'M. Jatta', 'Bangladesh', '', 'M', 9, 308, 100000),
('20', 'M. Himu', 'Bangladesh', '', 'M', 9, 309, 100000),
('6', 'S. Hawlader', 'Bangladesh', '', 'A', 9, 310, 100000),
('7', 'N. Shahed', 'Bangladesh', '', 'A', 9, 311, 100000),
('16', 'M. Saddam', 'Bangladesh', '', 'A', 9, 312, 100000),
('21', 'M. Halel', 'Bangladesh', '', 'A', 9, 313, 100000),
('23', 'M. Elias', 'Bangladesh', '', 'A', 9, 314, 100000),
('35', 'A. Oladipo', 'Nigeria', '23', 'A', 9, 315, 100000),
('1', 'U. Barua', 'Bangladesh', '', 'G', 10, 316, 100000),
('22', 'M. Habib', 'Bangladesh', '', 'G', 10, 317, 100000),
('25', 'S. Lalu', 'Bangladesh', '', 'G', 10, 318, 100000),
('30', 'A. Hossain', 'Bangladesh', '', 'G', 10, 319, 100000),
('2', 'S. Rony', 'Bangladesh', '', 'D', 10, 320, 50000),
('3', 'T. Rana', 'Bangladesh', '', 'D', 10, 321, 50000),
('4', 'M. Saikat', 'Bangladesh', '', 'D', 10, 322, 50000),
('5', 'S. Haque', 'Bangladesh', '', 'D', 10, 323, 50000),
('13', 'B. Ghosh', 'Bangladesh', '', 'D', 10, 324, 50000),
('15', 'M. Islam Nahid', 'Bangladesh', '', 'D', 10, 325, 50000),
('18', 'S. Bhowmik', 'Bangladesh', '', 'D', 10, 326, 50000),
('21', 'F. Ahamed', 'Bangladesh', '', 'D', 10, 327, 50000),
('23', 'Monir Alam', 'Bangladesh', '', 'D', 10, 328, 50000),
('24', 'A. Inusah', 'Bangladesh', '26', 'D', 10, 329, 50000),
('26', 'M. Faysal', 'Bangladesh', '', 'D', 10, 330, 50000),
('6', 'S. Bipul', 'Bangladesh', '', 'M', 10, 331, 50000),
('7', 'M. Alamgir', 'Bangladesh', '', 'M', 10, 332, 50000),
('8', 'N. Rasel', 'Bangladesh', '', 'M', 10, 333, 50000),
('11', 'H. Kayes', 'Bangladesh', '', 'M', 10, 334, 50000),
('17', 'Mohammed Didarul Alam', 'Bangladesh', '', 'M', 10, 335, 50000),
('27', 'S. Munna', 'Bangladesh', '', 'M', 10, 336, 50000),
('28', 'A. Molla', 'Bangladesh', '', 'M', 10, 337, 50000),
('29', 'M. Mokter Ali', 'Bangladesh', '', 'M', 10, 338, 50000),
('80', 'M. Ugochukwu', 'Nigeria', '28', 'M', 10, 339, 50000),
('90', 'N. Collins', 'Nigeria', '23', 'M', 10, 340, 50000),
('9', 'M. Shihab', 'Bangladesh', '', 'A', 10, 341, 50000),
('10', 'T. Towhid', 'Bangladesh', '', 'A', 10, 342, 50000),
('12', 'M. Rahman', 'Bangladesh', '', 'A', 10, 343, 50000),
('14', 'A. Ali', 'Bangladesh', '', 'A', 10, 344, 50000),
('16', 'M. Amirul Islam', 'Bangladesh', '', 'A', 10, 345, 50000),
('19', 'M. Malek', 'Bangladesh', '', 'A', 10, 346, 50000),
('20', 'O. Marma', 'Bangladesh', '', 'A', 10, 347, 50000),
('77', 'R. Sarkar', 'Bangladesh', '', 'A', 10, 348, 50000),
('97', 'L. Mekong', 'Nigeria', '', 'A', 10, 349, 50000),
('1', 'M. Uddin', 'Bangladesh', '', 'G', 11, 350, 200000),
('24', 'A. Das', 'Bangladesh', '', 'G', 11, 351, 200000),
('29', 'M. Ali', 'Bangladesh', '', 'G', 11, 352, 200000),
('31', 'M. Alif', 'Bangladesh', '', 'G', 11, 353, 200000),
('2', 'M. Hossain', 'Bangladesh', '', 'D', 11, 354, 200000),
('3', 'M. Imon', 'Bangladesh', '', 'D', 11, 355, 200000),
('4', 'K. Sabuj', 'Bangladesh', '', 'D', 11, 356, 200000),
('5', 'R. Miah', 'Bangladesh', '', 'D', 11, 357, 200000),
('12', 'S. Naraka', 'Bangladesh', '', 'D', 11, 358, 200000),
('13', 'S. Rov', 'Bangladesh', '', 'D', 11, 359, 200000),
('14', 'M. Roton', 'Bangladesh', '', 'D', 11, 360, 200000),
('15', 'M. Mandy', 'Gambia', '', 'D', 11, 361, 200000),
('16', 'S. Munna', 'Bangladesh', '', 'D', 11, 362, 200000),
('22', 'Z. Islam', 'Bangladesh', '', 'D', 11, 363, 200000),
('28', 'M. Rocky', 'Bangladesh', '', 'D', 11, 364, 200000),
('46', 'A. Rumi', 'Bangladesh', '', 'D', 11, 365, 200000),
('50', 'M. Ballu', 'Bangladesh', '', 'D', 11, 366, 200000),
('55', 'M. Mona', 'Bangladesh', '', 'D', 11, 367, 200000),
('6', 'M. Sunni', 'Bangladesh', '', 'M', 11, 368, 200000),
('7', 'M. Sujon', 'Bangladesh', '', 'M', 11, 369, 200000),
('8', 'A. Moni', 'Bangladesh', '', 'M', 11, 370, 200000),
('11', 'M. Shamim', 'Bangladesh', '', 'M', 11, 371, 200000),
('17', 'M. Hossain', 'Bangladesh', '', 'M', 11, 372, 200000),
('18', 'M. Sufian', 'Bangladesh', '', 'M', 11, 373, 200000),
('19', 'M. Alamgir', 'Bangladesh', '', 'M', 11, 374, 200000),
('20', 'J. Mollick', 'Bangladesh', '', 'M', 11, 375, 200000),
('23', 'C. Amin', 'Bangladesh', '', 'M', 11, 376, 200000),
('25', 'M. Sagor', 'Bangladesh', '', 'M', 11, 377, 200000),
('26', 'M. Sajal', 'Bangladesh', '', 'M', 11, 378, 200000),
('30', 'M. Shahed', 'Bangladesh', '', 'M', 11, 379, 200000),
('32', 'S. Khan', 'Bangladesh', '', 'M', 11, 380, 200000),
('40', 'M. Tuhin', 'Bangladesh', '', 'M', 11, 381, 200000),
('44', 'M. Mredha', 'Bangladesh', '', 'M', 11, 382, 200000),
('66', 'M. Islam', 'Bangladesh', '', 'M', 11, 383, 200000),
('88', 'M. Munna', 'Bangladesh', '', 'M', 11, 384, 200000),
('9', 'M. Nahi', 'Bangladesh', '', 'A', 11, 385, 200000),
('10', 'M. Chinedu', 'Nigeria', '20', 'A', 11, 386, 200000),
('27', 'M. Lilon', 'Bangladesh', '', 'A', 11, 387, 200000),
('45', 'M. Islam', 'Bangladesh', '', 'A', 11, 388, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `player_and_schedule`
--

CREATE TABLE IF NOT EXISTS `player_and_schedule` (
  `playerid` int(11) NOT NULL,
  `matchid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE IF NOT EXISTS `point` (
  `matchno` int(11) NOT NULL,
  `teamname` varchar(11) NOT NULL,
  `point` int(11) NOT NULL,
  `playerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`matchno`, `teamname`, `point`, `playerid`) VALUES
(1, 'team5', 20, 1),
(1, 'team5', 30, 2),
(2, 'team1', 20, 4),
(3, 'team1', 40, 6);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `minutes_played` int(4) DEFAULT NULL,
  `apperance` int(2) DEFAULT NULL,
  `line_up` int(2) DEFAULT NULL,
  `substitute_in` int(2) DEFAULT NULL,
  `substitute_out` int(2) DEFAULT NULL,
  `substitute_on_bench` int(2) DEFAULT NULL,
  `goal` int(2) DEFAULT NULL,
  `assists` int(1) DEFAULT NULL,
  `yellow_card` int(2) DEFAULT NULL,
  `red_card` int(1) DEFAULT NULL,
  `id` int(3) NOT NULL DEFAULT '0',
  `recordid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`minutes_played`, `apperance`, `line_up`, `substitute_in`, `substitute_out`, `substitute_on_bench`, `goal`, `assists`, `yellow_card`, `red_card`, `id`, `recordid`) VALUES
(1980, 22, 22, 0, 0, 0, 0, 1, 1, 0, 1, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 1),
(0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 3, 1),
(1980, 22, 22, 0, 1, 0, 42, 40, 3, 0, 4, 1),
(1890, 21, 21, 0, 0, 0, 0, 8, 3, 0, 5, 1),
(1333, 16, 15, 1, 1, 2, 0, 2, 2, 0, 6, 1),
(241, 11, 2, 9, 0, 16, 0, 0, 2, 0, 7, 1),
(0, 1, 0, 1, 0, 22, 0, 0, 0, 0, 8, 1),
(1936, 22, 22, 0, 3, 0, 1, 5, 1, 0, 9, 1),
(957, 13, 12, 1, 4, 2, 0, 2, 2, 0, 10, 1),
(202, 8, 2, 6, 0, 19, 0, 0, 0, 0, 11, 1),
(1132, 17, 13, 4, 4, 8, 7, 0, 5, 0, 12, 1),
(334, 7, 2, 5, 2, 20, 0, 0, 0, 0, 13, 1),
(91, 3, 1, 2, 1, 6, 0, 0, 0, 0, 14, 1),
(158, 3, 2, 1, 1, 16, 2, 2, 0, 0, 15, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 1),
(1778, 21, 20, 1, 12, 1, 3, 2, 3, 0, 17, 1),
(1767, 21, 20, 1, 6, 1, 1, 1, 3, 0, 18, 1),
(14, 4, 0, 4, 0, 21, 0, 0, 0, 0, 19, 1),
(872, 10, 10, 0, 3, 1, 9, 0, 1, 0, 20, 1),
(1392, 21, 15, 6, 8, 7, 4, 3, 0, 0, 21, 1),
(12, 2, 0, 2, 0, 7, 0, 0, 0, 0, 22, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 23, 1),
(90, 1, 1, 0, 0, 21, 0, 0, 0, 0, 24, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 1),
(607, 16, 5, 11, 1, 16, 0, 0, 3, 0, 26, 1),
(180, 2, 2, 0, 0, 10, 0, 0, 0, 0, 27, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 28, 1),
(0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 29, 1),
(86, 1, 1, 0, 1, 17, 0, 0, 0, 0, 30, 1),
(980, 12, 11, 1, 1, 2, 1, 2, 2, 0, 31, 1),
(743, 12, 9, 3, 7, 9, 1, 1, 0, 0, 32, 1),
(109, 5, 1, 4, 0, 15, 4, 2, 0, 0, 33, 1),
(320, 8, 3, 5, 2, 19, 0, 0, 0, 0, 34, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 1),
(308, 15, 2, 13, 1, 20, 1, 0, 1, 0, 36, 1),
(884, 10, 10, 0, 1, 2, 0, 0, 2, 0, 37, 1),
(131, 5, 2, 3, 2, 11, 0, 0, 2, 1, 38, 1),
(217, 7, 2, 5, 0, 20, 0, 0, 2, 0, 39, 1),
(215, 7, 2, 5, 2, 11, 0, 0, 1, 0, 40, 1),
(839, 10, 10, 0, 5, 1, 1, 2, 2, 0, 41, 1),
(646, 9, 8, 1, 6, 2, 3, 0, 1, 0, 42, 1),
(1440, 16, 16, 0, 0, 2, 0, 0, 0, 0, 43, 1),
(270, 3, 3, 0, 1, 12, 0, 0, 0, 0, 44, 1),
(0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 45, 1),
(270, 4, 3, 1, 0, 5, 0, 0, 1, 0, 46, 1),
(497, 7, 6, 1, 1, 9, 0, 0, 1, 0, 47, 1),
(531, 11, 4, 7, 1, 16, 0, 0, 4, 0, 48, 1),
(1299, 15, 14, 1, 3, 1, 1, 1, 5, 0, 49, 1),
(132, 3, 1, 2, 0, 9, 0, 0, 1, 0, 50, 1),
(1890, 21, 21, 0, 0, 0, 0, 0, 2, 0, 51, 1),
(445, 8, 5, 3, 3, 12, 0, 0, 1, 0, 52, 1),
(146, 3, 1, 2, 0, 9, 0, 2, 1, 0, 53, 1),
(1709, 21, 20, 1, 4, 1, 0, 1, 2, 0, 54, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 1),
(565, 9, 5, 4, 1, 16, 3, 3, 0, 0, 56, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 57, 1),
(498, 7, 6, 1, 4, 8, 0, 0, 1, 0, 58, 1),
(122, 3, 1, 2, 1, 7, 0, 0, 1, 0, 59, 1),
(63, 1, 1, 0, 1, 15, 0, 0, 0, 0, 60, 1),
(1711, 20, 19, 1, 0, 1, 0, 2, 2, 0, 61, 1),
(1723, 20, 19, 1, 0, 1, 0, 1, 3, 0, 62, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 63, 1),
(38, 1, 1, 0, 1, 1, 0, 0, 0, 0, 64, 1),
(125, 4, 1, 3, 1, 11, 0, 0, 0, 0, 65, 1),
(1, 1, 0, 1, 0, 3, 0, 0, 0, 0, 66, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 67, 1),
(1352, 18, 15, 3, 3, 5, 0, 2, 2, 1, 68, 1),
(1707, 21, 19, 2, 1, 2, 15, 4, 5, 0, 69, 1),
(1174, 18, 15, 3, 11, 4, 15, 0, 2, 0, 70, 1),
(987, 20, 9, 11, 5, 11, 4, 2, 3, 0, 71, 1),
(1033, 15, 13, 2, 9, 5, 3, 2, 4, 0, 72, 1),
(224, 9, 1, 8, 1, 14, 0, 0, 0, 0, 73, 1),
(1233, 17, 16, 1, 9, 2, 1, 4, 1, 0, 74, 1),
(810, 9, 9, 0, 0, 5, 0, 0, 0, 0, 75, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 76, 1),
(0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 77, 1),
(1170, 13, 13, 0, 0, 9, 0, 0, 1, 0, 78, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 1),
(1710, 19, 19, 0, 0, 1, 0, 0, 3, 0, 80, 1),
(962, 12, 11, 1, 2, 3, 0, 1, 2, 0, 81, 1),
(1662, 19, 19, 0, 0, 0, 2, 0, 4, 1, 82, 1),
(1269, 17, 16, 1, 2, 3, 0, 2, 2, 1, 83, 1),
(443, 9, 4, 5, 1, 18, 0, 0, 0, 0, 84, 1),
(540, 6, 6, 0, 0, 14, 0, 0, 0, 0, 85, 1),
(1322, 17, 14, 3, 1, 8, 0, 2, 1, 0, 86, 1),
(0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 87, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 1),
(1117, 14, 13, 1, 3, 3, 1, 2, 2, 0, 90, 1),
(279, 4, 3, 1, 1, 9, 0, 0, 0, 0, 91, 1),
(1627, 20, 20, 0, 6, 1, 1, 1, 4, 0, 92, 1),
(0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 93, 1),
(494, 7, 5, 2, 2, 5, 0, 0, 1, 0, 94, 1),
(536, 14, 5, 9, 2, 13, 2, 2, 2, 0, 95, 1),
(507, 15, 4, 11, 2, 18, 0, 0, 1, 0, 96, 1),
(0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 97, 1),
(990, 11, 11, 0, 0, 0, 2, 1, 2, 0, 98, 1),
(114, 5, 0, 5, 0, 8, 0, 0, 0, 0, 99, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 1),
(1478, 21, 17, 4, 12, 4, 5, 4, 2, 0, 105, 1),
(1567, 21, 18, 3, 11, 3, 3, 4, 1, 0, 106, 1),
(1030, 16, 11, 5, 4, 5, 5, 2, 1, 0, 107, 1),
(367, 8, 5, 3, 5, 15, 0, 0, 0, 0, 108, 1),
(54, 4, 0, 4, 0, 21, 0, 0, 0, 0, 109, 1),
(511, 7, 6, 1, 3, 2, 2, 1, 0, 0, 110, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 1),
(242, 5, 3, 2, 3, 7, 0, 1, 1, 0, 112, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 1),
(662, 8, 7, 1, 0, 15, 0, 0, 0, 0, 114, 1),
(1318, 15, 15, 0, 1, 3, 0, 0, 2, 0, 115, 1),
(0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 116, 1),
(1519, 18, 16, 2, 0, 6, 0, 0, 1, 0, 117, 1),
(1312, 16, 14, 2, 0, 3, 1, 0, 0, 0, 118, 1),
(273, 4, 3, 1, 1, 6, 0, 0, 0, 0, 119, 1),
(1587, 19, 19, 0, 5, 0, 0, 0, 5, 0, 120, 1),
(589, 9, 6, 3, 1, 16, 0, 1, 0, 0, 121, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 1),
(1651, 19, 19, 0, 1, 0, 1, 0, 3, 0, 123, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 1),
(0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 125, 1),
(470, 8, 5, 3, 1, 10, 0, 0, 1, 0, 126, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 1),
(1102, 16, 12, 4, 7, 6, 1, 1, 2, 1, 128, 1),
(717, 11, 10, 1, 9, 4, 0, 0, 7, 0, 129, 1),
(614, 11, 6, 5, 4, 10, 0, 0, 1, 0, 130, 1),
(73, 3, 0, 3, 0, 21, 0, 0, 0, 0, 131, 1),
(1046, 18, 14, 4, 6, 6, 0, 0, 2, 0, 132, 1),
(1366, 18, 16, 2, 5, 5, 2, 3, 2, 0, 133, 1),
(798, 10, 8, 2, 0, 2, 1, 2, 4, 1, 134, 1),
(228, 7, 1, 6, 1, 11, 0, 0, 0, 0, 135, 1),
(644, 9, 7, 2, 2, 4, 4, 1, 1, 0, 136, 1),
(10, 2, 0, 2, 0, 5, 0, 0, 0, 0, 137, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 1),
(98, 8, 0, 8, 0, 20, 2, 0, 1, 0, 139, 1),
(939, 13, 13, 0, 7, 8, 1, 1, 0, 0, 140, 1),
(629, 9, 6, 3, 3, 4, 2, 1, 2, 0, 141, 1),
(776, 12, 8, 4, 3, 12, 0, 0, 1, 0, 142, 1),
(360, 4, 4, 0, 0, 12, 0, 0, 0, 0, 143, 1),
(630, 7, 7, 0, 0, 10, 0, 0, 1, 0, 144, 1),
(990, 11, 11, 0, 0, 10, 0, 0, 0, 0, 145, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 146, 1),
(1213, 19, 11, 8, 2, 11, 0, 1, 2, 0, 147, 1),
(1936, 22, 22, 0, 1, 0, 0, 1, 2, 0, 148, 1),
(230, 5, 3, 2, 2, 8, 0, 0, 1, 0, 149, 1),
(942, 13, 11, 2, 2, 4, 2, 1, 1, 0, 150, 1),
(340, 6, 4, 2, 1, 6, 0, 1, 0, 0, 151, 1),
(1595, 21, 18, 3, 5, 3, 3, 1, 5, 0, 152, 1),
(415, 7, 6, 1, 3, 13, 0, 0, 1, 0, 153, 1),
(1837, 21, 21, 0, 2, 0, 0, 0, 5, 0, 154, 1),
(0, 1, 0, 1, 0, 11, 0, 0, 0, 0, 155, 1),
(0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 156, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157, 1),
(50, 2, 0, 2, 0, 4, 0, 0, 1, 0, 158, 1),
(1976, 22, 22, 0, 3, 0, 2, 3, 1, 0, 159, 1),
(826, 15, 9, 6, 6, 10, 0, 1, 1, 0, 160, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161, 1),
(1167, 14, 13, 1, 2, 3, 1, 0, 3, 0, 162, 1),
(48, 5, 0, 5, 1, 18, 0, 0, 0, 0, 163, 1),
(1292, 19, 14, 5, 3, 6, 0, 1, 0, 0, 164, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 165, 1),
(48, 4, 0, 4, 0, 10, 0, 0, 0, 0, 166, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 167, 1),
(0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 168, 1),
(675, 8, 8, 0, 4, 0, 1, 2, 1, 0, 169, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 170, 1),
(339, 7, 4, 3, 5, 8, 0, 0, 1, 0, 171, 1),
(34, 5, 0, 5, 0, 17, 0, 0, 1, 0, 172, 1),
(954, 12, 11, 1, 5, 5, 3, 0, 0, 0, 173, 1),
(199, 3, 2, 1, 1, 3, 0, 0, 0, 0, 174, 1),
(927, 11, 11, 0, 6, 0, 2, 0, 2, 0, 175, 1),
(450, 5, 5, 0, 0, 12, 0, 0, 0, 0, 176, 1),
(90, 1, 1, 0, 0, 6, 0, 0, 0, 0, 177, 1),
(540, 6, 6, 0, 0, 5, 0, 0, 0, 0, 178, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 179, 1),
(900, 10, 10, 0, 0, 0, 0, 0, 1, 0, 180, 1),
(1811, 21, 20, 1, 1, 1, 0, 0, 2, 1, 181, 1),
(524, 6, 6, 0, 1, 16, 0, 0, 0, 0, 182, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 1),
(1890, 21, 21, 0, 0, 0, 0, 1, 3, 0, 184, 1),
(603, 11, 7, 4, 4, 11, 0, 0, 1, 0, 185, 1),
(818, 10, 9, 1, 1, 8, 0, 1, 1, 0, 186, 1),
(563, 9, 6, 3, 1, 15, 0, 0, 2, 0, 187, 1),
(183, 3, 2, 1, 0, 7, 0, 0, 2, 0, 188, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 189, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 190, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 191, 1),
(498, 8, 5, 3, 2, 3, 0, 1, 1, 0, 192, 1),
(723, 10, 9, 1, 3, 2, 0, 0, 1, 0, 193, 1),
(1563, 21, 18, 3, 4, 4, 2, 0, 1, 0, 194, 1),
(786, 11, 9, 2, 6, 10, 0, 1, 5, 0, 195, 1),
(795, 11, 10, 1, 5, 5, 0, 0, 0, 0, 196, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 199, 1),
(780, 17, 8, 9, 7, 14, 0, 2, 2, 0, 200, 1),
(1365, 17, 15, 2, 0, 2, 0, 1, 6, 2, 201, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, 1),
(201, 3, 3, 0, 3, 6, 0, 0, 0, 0, 203, 1),
(0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 204, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 1),
(0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 206, 1),
(1432, 19, 16, 3, 4, 5, 1, 1, 5, 0, 207, 1),
(956, 13, 10, 3, 3, 11, 2, 0, 1, 0, 208, 1),
(421, 7, 6, 1, 5, 5, 0, 0, 1, 0, 209, 1),
(279, 6, 3, 3, 2, 10, 1, 0, 0, 0, 210, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 1),
(1025, 16, 11, 5, 3, 9, 0, 1, 1, 0, 212, 1),
(450, 5, 5, 0, 0, 0, 0, 2, 1, 0, 213, 1),
(282, 8, 2, 6, 1, 9, 1, 0, 1, 0, 214, 1),
(540, 6, 6, 0, 0, 15, 0, 0, 0, 0, 215, 1),
(450, 5, 5, 0, 0, 7, 0, 0, 0, 0, 216, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 217, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 218, 1),
(990, 11, 11, 0, 0, 0, 0, 0, 1, 0, 219, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 220, 1),
(720, 8, 8, 0, 0, 5, 0, 0, 1, 0, 221, 1),
(1345, 16, 16, 0, 3, 4, 1, 0, 0, 0, 222, 1),
(86, 1, 1, 0, 1, 2, 0, 1, 0, 0, 223, 1),
(1358, 19, 15, 4, 2, 6, 2, 0, 1, 0, 224, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 225, 1),
(542, 9, 5, 4, 1, 16, 0, 0, 1, 0, 226, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, 1),
(378, 7, 4, 3, 0, 11, 0, 0, 0, 0, 228, 1),
(1890, 21, 21, 0, 1, 0, 0, 0, 5, 0, 229, 1),
(4, 1, 0, 1, 0, 1, 0, 0, 0, 0, 230, 1),
(1685, 20, 19, 1, 1, 2, 0, 1, 4, 0, 231, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 232, 1),
(61, 6, 0, 6, 0, 9, 1, 0, 0, 0, 233, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 234, 1),
(90, 1, 1, 0, 0, 10, 0, 0, 0, 0, 235, 1),
(1191, 19, 15, 4, 7, 4, 0, 0, 1, 0, 236, 1),
(863, 13, 9, 4, 7, 7, 0, 1, 0, 1, 237, 1),
(88, 6, 0, 6, 0, 22, 0, 0, 1, 0, 238, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 239, 1),
(1481, 19, 17, 2, 5, 2, 1, 1, 1, 0, 240, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 241, 1),
(1035, 18, 11, 7, 8, 10, 2, 1, 0, 0, 242, 1),
(294, 5, 4, 1, 2, 9, 0, 0, 1, 0, 243, 1),
(0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 244, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 245, 1),
(1685, 21, 20, 1, 5, 1, 2, 2, 4, 0, 246, 1),
(506, 10, 5, 5, 3, 9, 1, 1, 0, 0, 247, 1),
(1163, 16, 12, 4, 2, 10, 9, 0, 1, 0, 248, 1),
(1782, 21, 20, 1, 7, 2, 2, 1, 2, 0, 249, 1),
(653, 13, 6, 7, 2, 13, 2, 2, 2, 0, 250, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 251, 1),
(900, 14, 11, 3, 7, 4, 1, 4, 1, 0, 252, 1),
(998, 12, 12, 0, 1, 3, 0, 0, 3, 0, 253, 1),
(666, 8, 6, 2, 0, 12, 0, 0, 1, 0, 254, 1),
(316, 4, 4, 0, 1, 7, 0, 0, 0, 0, 255, 1),
(1260, 14, 14, 0, 0, 5, 0, 1, 3, 0, 256, 1),
(1432, 17, 16, 1, 1, 4, 1, 0, 2, 0, 257, 1),
(357, 5, 4, 1, 2, 12, 0, 0, 2, 0, 258, 1),
(0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 259, 1),
(1066, 13, 13, 0, 2, 2, 0, 0, 2, 0, 260, 1),
(646, 8, 7, 1, 0, 3, 0, 0, 5, 0, 261, 1),
(1706, 19, 19, 0, 2, 1, 1, 0, 2, 1, 262, 1),
(1334, 15, 14, 1, 0, 8, 0, 1, 1, 0, 263, 1),
(310, 14, 1, 13, 1, 20, 0, 1, 0, 0, 264, 1),
(469, 7, 4, 3, 0, 7, 1, 0, 0, 0, 265, 1),
(198, 7, 1, 6, 0, 16, 0, 0, 0, 0, 266, 1),
(1085, 13, 13, 0, 2, 2, 0, 0, 1, 0, 267, 1),
(1146, 14, 13, 1, 5, 2, 0, 1, 1, 0, 268, 1),
(201, 3, 3, 0, 2, 7, 0, 0, 0, 0, 269, 1),
(1362, 20, 15, 5, 7, 7, 2, 0, 1, 0, 270, 1),
(80, 2, 1, 1, 1, 9, 0, 0, 0, 0, 271, 1),
(759, 9, 9, 0, 2, 5, 0, 0, 1, 0, 272, 1),
(1267, 18, 16, 2, 8, 3, 8, 1, 1, 0, 273, 1),
(948, 15, 11, 4, 4, 5, 1, 2, 0, 0, 274, 1),
(338, 7, 4, 3, 4, 8, 1, 0, 0, 0, 275, 1),
(272, 5, 3, 2, 2, 5, 0, 0, 0, 0, 276, 1),
(244, 3, 3, 0, 2, 1, 0, 0, 1, 0, 277, 1),
(763, 10, 9, 1, 5, 9, 0, 0, 0, 0, 278, 1),
(19, 2, 0, 2, 0, 6, 0, 0, 0, 0, 279, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 280, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 281, 1),
(1091, 14, 12, 2, 2, 3, 0, 0, 6, 0, 282, 1),
(518, 11, 5, 6, 2, 6, 0, 0, 0, 0, 283, 1),
(929, 16, 10, 6, 5, 7, 0, 4, 1, 0, 284, 1),
(900, 10, 10, 0, 0, 8, 0, 0, 1, 0, 285, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 286, 1),
(314, 4, 3, 1, 0, 18, 0, 0, 0, 0, 287, 1),
(766, 9, 9, 0, 1, 1, 0, 0, 1, 0, 288, 1),
(0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 289, 1),
(909, 13, 9, 4, 1, 10, 1, 0, 3, 0, 290, 1),
(21, 2, 0, 2, 0, 12, 0, 0, 0, 0, 291, 1),
(1776, 20, 20, 0, 2, 0, 0, 0, 7, 0, 292, 1),
(577, 8, 6, 2, 1, 14, 0, 0, 3, 0, 293, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 294, 1),
(104, 3, 1, 2, 1, 5, 0, 0, 0, 0, 295, 1),
(202, 5, 2, 3, 0, 7, 0, 0, 1, 0, 296, 1),
(814, 10, 10, 0, 2, 1, 0, 0, 1, 0, 297, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, 1),
(1717, 20, 20, 0, 4, 1, 0, 3, 3, 0, 299, 1),
(1890, 21, 21, 0, 0, 0, 0, 0, 5, 0, 300, 1),
(959, 15, 11, 4, 7, 10, 2, 2, 0, 0, 301, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 302, 1),
(1229, 18, 13, 5, 7, 7, 2, 2, 4, 0, 303, 1),
(21, 1, 0, 1, 0, 13, 0, 0, 0, 0, 304, 1),
(479, 9, 7, 2, 4, 13, 0, 0, 2, 1, 305, 1),
(1553, 20, 18, 2, 2, 3, 0, 0, 2, 0, 306, 1),
(0, 1, 0, 1, 0, 2, 0, 0, 0, 0, 307, 1),
(779, 16, 8, 8, 4, 13, 0, 0, 3, 0, 308, 1),
(52, 2, 0, 2, 0, 7, 0, 0, 0, 0, 309, 1),
(987, 13, 11, 2, 4, 5, 0, 1, 2, 0, 310, 1),
(1588, 19, 19, 0, 5, 1, 1, 3, 4, 0, 311, 1),
(341, 7, 3, 4, 1, 16, 0, 0, 0, 0, 312, 1),
(251, 9, 1, 8, 2, 11, 0, 0, 0, 0, 313, 1),
(370, 6, 4, 2, 2, 7, 2, 0, 0, 0, 314, 1),
(554, 10, 6, 4, 2, 5, 2, 0, 1, 0, 315, 1),
(1063, 12, 12, 0, 1, 5, 0, 0, 1, 0, 316, 1),
(0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 317, 1),
(197, 3, 2, 1, 0, 12, 0, 0, 0, 0, 318, 1),
(720, 8, 8, 0, 0, 4, 0, 0, 0, 0, 319, 1),
(1285, 16, 15, 1, 4, 7, 0, 2, 0, 0, 320, 1),
(1256, 16, 14, 2, 2, 6, 0, 1, 3, 0, 321, 1),
(614, 11, 6, 5, 0, 15, 0, 0, 1, 0, 322, 1),
(900, 10, 10, 0, 0, 5, 0, 0, 3, 0, 323, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 325, 1),
(937, 11, 11, 0, 4, 6, 0, 1, 2, 0, 326, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 327, 1),
(1772, 20, 20, 0, 2, 2, 0, 1, 1, 0, 328, 1),
(1873, 22, 22, 0, 4, 0, 2, 0, 2, 0, 329, 1),
(138, 3, 1, 2, 0, 4, 0, 1, 0, 0, 330, 1),
(1259, 15, 15, 0, 3, 5, 1, 1, 3, 1, 331, 1),
(471, 9, 6, 3, 5, 4, 0, 0, 3, 0, 332, 1),
(1815, 21, 21, 0, 3, 0, 1, 2, 5, 1, 333, 1),
(257, 3, 3, 0, 1, 3, 0, 0, 0, 0, 334, 1),
(504, 10, 5, 5, 2, 11, 0, 1, 0, 0, 335, 1),
(887, 11, 10, 1, 4, 2, 1, 1, 0, 0, 336, 1),
(0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 337, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338, 1),
(890, 10, 10, 0, 2, 0, 6, 0, 1, 0, 339, 1),
(161, 7, 1, 6, 0, 10, 0, 0, 0, 0, 340, 1),
(1132, 17, 12, 5, 5, 8, 0, 1, 3, 0, 341, 1),
(558, 9, 6, 3, 4, 4, 2, 0, 0, 0, 342, 1),
(501, 12, 4, 8, 2, 17, 0, 0, 2, 0, 343, 1),
(298, 7, 4, 3, 3, 10, 2, 0, 0, 0, 344, 1),
(410, 7, 4, 3, 1, 5, 0, 0, 1, 0, 345, 1),
(132, 4, 1, 3, 1, 12, 0, 0, 0, 0, 346, 1),
(257, 6, 3, 3, 2, 13, 0, 0, 1, 0, 347, 1),
(449, 9, 5, 4, 3, 12, 0, 0, 0, 0, 348, 1),
(182, 6, 1, 5, 0, 8, 0, 1, 1, 0, 349, 1),
(339, 5, 4, 1, 1, 9, 0, 0, 0, 0, 350, 1),
(831, 10, 9, 1, 1, 12, 0, 0, 1, 0, 351, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 352, 1),
(810, 9, 9, 0, 0, 0, 0, 0, 1, 0, 353, 1),
(641, 9, 7, 2, 1, 11, 0, 0, 4, 1, 354, 1),
(227, 5, 3, 2, 1, 13, 0, 0, 1, 0, 355, 1),
(1457, 18, 16, 2, 2, 3, 0, 0, 1, 0, 356, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 357, 1),
(732, 9, 8, 1, 0, 2, 0, 0, 3, 0, 358, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 359, 1),
(56, 1, 0, 1, 0, 7, 0, 0, 0, 0, 360, 1),
(1800, 20, 20, 0, 0, 0, 0, 0, 10, 0, 361, 1),
(194, 5, 3, 2, 2, 3, 0, 0, 1, 0, 362, 1),
(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 363, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 364, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 365, 1),
(333, 6, 3, 3, 0, 6, 1, 0, 2, 0, 366, 1),
(988, 11, 11, 0, 1, 0, 0, 0, 1, 0, 367, 1),
(521, 8, 6, 2, 1, 9, 0, 0, 3, 0, 368, 1),
(1471, 18, 17, 1, 3, 3, 1, 1, 6, 1, 369, 1),
(65, 3, 1, 2, 1, 13, 0, 0, 0, 0, 370, 1),
(1133, 16, 13, 3, 6, 3, 2, 1, 2, 0, 371, 1),
(975, 14, 12, 2, 5, 2, 0, 1, 5, 0, 372, 1),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 373, 1),
(613, 11, 5, 6, 3, 10, 2, 0, 0, 0, 374, 1),
(1130, 15, 13, 2, 6, 5, 0, 0, 3, 1, 375, 1),
(527, 8, 7, 1, 4, 9, 1, 0, 3, 0, 376, 1),
(1, 1, 0, 1, 0, 8, 0, 0, 0, 0, 377, 1),
(37, 1, 1, 0, 1, 1, 0, 0, 0, 0, 378, 1),
(561, 10, 6, 4, 1, 11, 0, 0, 0, 0, 379, 1),
(1277, 18, 16, 2, 10, 6, 0, 0, 2, 0, 380, 1),
(419, 6, 5, 1, 3, 7, 0, 0, 0, 0, 381, 1),
(990, 11, 11, 0, 0, 0, 0, 0, 2, 0, 382, 1),
(450, 5, 5, 0, 1, 0, 0, 0, 3, 0, 383, 1),
(314, 7, 2, 5, 0, 9, 1, 1, 0, 0, 384, 1),
(153, 4, 2, 2, 1, 10, 0, 0, 0, 0, 385, 1),
(1543, 20, 16, 4, 1, 5, 6, 3, 5, 0, 386, 1),
(562, 10, 5, 5, 3, 14, 1, 1, 0, 0, 387, 1),
(569, 7, 6, 1, 0, 3, 0, 0, 1, 0, 388, 1);

-- --------------------------------------------------------

--
-- Table structure for table `representer`
--

CREATE TABLE IF NOT EXISTS `representer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `representer`
--

INSERT INTO `representer` (`id`, `username`, `password`, `email`) VALUES
(1, 'rep1', '1234', 'rep1@gmail.com'),
(2, 'rep2', '1234', 'rep2@gmail.com'),
(3, 'rep3', '1234', 'rep3@gmail.com'),
(4, 'rep4', '1234', 'rep4@gmail.com'),
(5, 'rep5', '1234', 'rep5@gmail.com'),
(6, 'rep6', '1234', 'rep6@gmail.com'),
(7, 'rep7', '1234', 'rep7@gmail.com'),
(8, 'rep8', '1234', 'rep8@gmail.com'),
(9, 'rep9', '1234', 'rep9@gmail.com'),
(10, 'rep10', '1234', 'rep10@gmail.com'),
(11, 'rep11', '1234', 'rep11@gmail.com'),
(12, 'rep12', '1234', 'rep12@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `coachname` varchar(20) NOT NULL,
  `trophy` int(11) NOT NULL,
  `playmatch` int(11) NOT NULL,
  `win` int(11) NOT NULL,
  `lose` int(11) NOT NULL,
  `draw` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `representerid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `coachname`, `trophy`, `playmatch`, `win`, `lose`, `draw`, `position`, `representerid`) VALUES
(1, 'ABAHANI LIMITED CHITTAGONG', 'Z.Mintoo', 0, 0, 0, 0, 0, 0, 1),
(2, 'SHEIKH JAMAL DHANMONDI CLUB', '', 0, 0, 0, 0, 0, 0, 2),
(3, 'SAIF SPORTING CLUB', 'R. Northmore', 0, 0, 0, 0, 0, 0, 3),
(4, 'MOHAMMEDAN SC DHAKA	', 'R. Pappu', 0, 0, 0, 0, 0, 0, 4),
(5, 'SHEIKH RUSSEL KRIRA CHAKRA', 'S. Manik', 0, 0, 0, 0, 0, 0, 5),
(6, 'BROTHERS UNION FC	', 'N. Vitorovic', 0, 0, 0, 0, 0, 0, 6),
(7, 'ARAMBAGH KRIRA SANGHA', 'M. Haque', 0, 0, 0, 0, 0, 0, 7),
(8, 'TEAM BANGLADESH JUTE MILLS CORPORATION', 'S. Islam', 0, 0, 0, 0, 0, 0, 8),
(9, 'RAHMATGONJ MUSLIM FRIENDS SOCIETY', 'K. Ahmed Babu', 0, 0, 0, 0, 0, 0, 9),
(10, 'MUKTIJODDHA SANGSAD KRIRA CHAKRA', 'M. Kaisar', 0, 0, 0, 0, 0, 0, 10),
(11, 'FARASHGANJ SC', 'M. Miraz', 0, 0, 0, 0, 0, 0, 11),
(12, 'ABAHANI LIMITED, DHAKA', 'S. Bari Titu', 0, 0, 0, 0, 0, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `teamplayer`
--

CREATE TABLE IF NOT EXISTS `teamplayer` (
  `teamname` varchar(11) NOT NULL,
  `playerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamplayer`
--

INSERT INTO `teamplayer` (`teamname`, `playerid`) VALUES
('hello', 4),
('hello', 15),
('hello', 16),
('hello', 26),
('hello', 27),
('hello', 28),
('hello', 29),
('hello', 32),
('hello', 33),
('hello', 34),
('hello', 107),
('hello', 108),
('hello', 174),
('hello', 351),
('hello', 352),
('team5', 4),
('team5', 15),
('team5', 16),
('team5', 32),
('team5', 33),
('team5', 34),
('team5', 126),
('team5', 127),
('team5', 142),
('team5', 256),
('team5', 314),
('team5', 315),
('team5', 351),
('team5', 352),
('team5', 366),
('trtr', 4),
('trtr', 15),
('trtr', 16),
('trtr', 26),
('trtr', 27),
('trtr', 28),
('trtr', 29),
('trtr', 32),
('trtr', 33),
('trtr', 34),
('trtr', 107),
('trtr', 108),
('trtr', 174),
('trtr', 351),
('trtr', 352);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `coin` int(11) NOT NULL DEFAULT '5000000'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `coin`) VALUES
(1, 'user1', 'user1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 10000000),
(2, 'user2', 'user2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 10000000),
(3, 'emon', 'as@gmail.com', 'a96d3afec184766bfeca7a9f989fc7e7', 1000000),
(4, 'user3', 'user3@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 5700000),
(5, 'jack', 'j@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 700000),
(6, 'user5', 'user5@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1350000);

-- --------------------------------------------------------

--
-- Table structure for table `users_team`
--

CREATE TABLE IF NOT EXISTS `users_team` (
  `uteamname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_team`
--

INSERT INTO `users_team` (`uteamname`, `username`) VALUES
('hello', 'jack'),
('trtr', 'user3'),
('team5', 'user5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `fixture`
--
ALTER TABLE `fixture`
  ADD PRIMARY KEY (`team`,`gameweek`,`matchno`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_and_schedule`
--
ALTER TABLE `player_and_schedule`
  ADD PRIMARY KEY (`playerid`,`matchid`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`matchno`,`teamname`,`playerid`), ADD KEY `k` (`playerid`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`,`recordid`);

--
-- Indexes for table `representer`
--
ALTER TABLE `representer`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`), ADD KEY `fk1` (`representerid`);

--
-- Indexes for table `teamplayer`
--
ALTER TABLE `teamplayer`
  ADD PRIMARY KEY (`teamname`,`playerid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_team`
--
ALTER TABLE `users_team`
  ADD PRIMARY KEY (`uteamname`,`username`), ADD KEY `fk8` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `representer`
--
ALTER TABLE `representer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `player_and_schedule`
--
ALTER TABLE `player_and_schedule`
ADD CONSTRAINT `fk11` FOREIGN KEY (`playerid`) REFERENCES `player` (`id`);

--
-- Constraints for table `point`
--
ALTER TABLE `point`
ADD CONSTRAINT `k` FOREIGN KEY (`playerid`) REFERENCES `player` (`id`);

--
-- Constraints for table `records`
--
ALTER TABLE `records`
ADD CONSTRAINT `fk4` FOREIGN KEY (`id`) REFERENCES `player` (`id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
ADD CONSTRAINT `fk1` FOREIGN KEY (`representerid`) REFERENCES `representer` (`id`);

--
-- Constraints for table `users_team`
--
ALTER TABLE `users_team`
ADD CONSTRAINT `fk8` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
