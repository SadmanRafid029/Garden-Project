-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 02:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nursery`
--

-- --------------------------------------------------------

--
-- Table structure for table `advise`
--

CREATE TABLE `advise` (
  `advise_text` varchar(1000) DEFAULT NULL,
  `serial_port` int(11) DEFAULT NULL,
  `plant_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advise`
--

INSERT INTO `advise` (`advise_text`, `serial_port`, `plant_code`) VALUES
('You do, in fact, have to water them.', 1, 'deco'),
('Moon Cactus Features: An Overview. The most common cultivars of this species are different mutant variations. Growers will often graft them onto ', 2, 'deco'),
('They will not survive in a dark spot.', 1, 'deco'),
('Your planter should always have a drainage hole.', 1, 'deco'),
('Stop misting your cacti and succulents. ', 1, 'deco'),
('Small plants are harder to take care of than large ones.', 1, 'deco');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`name`, `city`, `zip_code`, `email`) VALUES
('Dhaka Nursery', 'Dhaka', 6700, 'dhakanursery@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `coupon_code` varchar(20) NOT NULL,
  `discount_name` varchar(70) NOT NULL,
  `percentage_of_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`coupon_code`, `discount_name`, `percentage_of_discount`) VALUES
('CRISMAS10', 'Crismas', 10),
('EID30', 'Eid', 30),
('EMPLOYEE15', 'Employee', 15),
('NEW10YEAR', 'New Year', 10),
('NEW50ACCOUNT', 'New Account', 50),
('PUJA10', 'Puja', 10);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_email` varchar(50) NOT NULL,
  `employee_password` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `work_hour` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `house_no` varchar(20) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp(),
  `salary` float(9,2) NOT NULL,
  `security_key` varchar(50) NOT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `coupon_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_email`, `employee_password`, `first_name`, `last_name`, `gender`, `phone_number`, `work_hour`, `city`, `zip_code`, `house_no`, `date_of_birth`, `join_date`, `salary`, `security_key`, `admin_email`, `coupon_code`) VALUES
('adaloveless@gmail.com', 'adaloveless', 'Ada', 'Love Less', 'Female', '01797381242', 6, 'Dhaka', 6700, '32', '10-10-1996', '2022-01-12 18:09:54', 5000.00, '', 'mtalukdar201056@bscse.uiu.ac.bd', 'EMPLOYEE15'),
('harrypoter@gmail.com', 'harrypoter', 'Harry', 'Poter', 'Male', '01797381212', 6, 'Borishal', 3700, '32', '19-1-1991', '2022-01-12 18:10:45', 4000.00, '', 'sritu191016@bscse.uiu.ac.bd', 'EMPLOYEE15'),
('princedayna@gmail.com', 'princedayna', 'Prince', 'Dayna', 'Female', '01797381240', 6, 'Dhaka', 6700, '39', '10-13-1997', '2022-01-12 18:10:45', 5000.00, '', 'mtalukdar201056@bscse.uiu.ac.bd', 'EMPLOYEE15'),
('rokey@gmail.com', 'rokey', 'Mr. ', 'Rokey', 'Male', '01797381214', 6, 'Borishal', 3700, '33', '19-1-1991', '2022-01-12 18:10:45', 4500.00, '', 'sritu191016@bscse.uiu.ac.bd', 'EMPLOYEE15'),
('rustom@gmail.com', 'rustom', 'Md', 'Rustom', 'Male', '01797384242', 6, 'Dhaka', 6700, '32', '10-12-1994', '2022-01-12 18:10:45', 44000.00, '', 'shasan191215@bscse.uiu.ac.bd', 'EMPLOYEE15');

-- --------------------------------------------------------

--
-- Table structure for table `employee_image`
--

CREATE TABLE `employee_image` (
  `image` varchar(50) DEFAULT NULL,
  `employee_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_takecare_plant`
--

CREATE TABLE `employee_takecare_plant` (
  `serial_port` int(11) DEFAULT NULL,
  `plant_code` varchar(10) DEFAULT NULL,
  `employee_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_takecare_plant`
--

INSERT INTO `employee_takecare_plant` (`serial_port`, `plant_code`, `employee_email`) VALUES
(1, 'deco', 'adaloveless@gmail.com'),
(2, 'deco', 'adaloveless@gmail.com'),
(3, 'deco', 'adaloveless@gmail.com'),
(4, 'deco', 'adaloveless@gmail.com'),
(5, 'deco', 'princedayna@gmail.com'),
(6, 'flower', 'adaloveless@gmail.com'),
(7, 'flower', 'adaloveless@gmail.com'),
(8, 'flower', 'adaloveless@gmail.com'),
(9, 'flower', 'adaloveless@gmail.com'),
(10, 'flower', 'princedayna@gmail.com'),
(11, 'fru', 'adaloveless@gmail.com'),
(12, 'fru', 'adaloveless@gmail.com'),
(13, 'fru', 'adaloveless@gmail.com'),
(14, 'fru', 'adaloveless@gmail.com'),
(15, 'fru', 'princedayna@gmail.com'),
(16, 'seed', 'adaloveless@gmail.com'),
(17, 'seed', 'adaloveless@gmail.com'),
(18, 'seed', 'adaloveless@gmail.com'),
(19, 'seed', 'adaloveless@gmail.com'),
(20, 'seed', 'princedayna@gmail.com'),
(21, 'wood', 'adaloveless@gmail.com'),
(22, 'wood', 'adaloveless@gmail.com'),
(23, 'wood', 'adaloveless@gmail.com'),
(24, 'wood', 'adaloveless@gmail.com'),
(25, 'wood', 'princedayna@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee_text_message`
--

CREATE TABLE `employee_text_message` (
  `text_message` varchar(1000) NOT NULL,
  `employee_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_video`
--

CREATE TABLE `employee_video` (
  `video` varchar(50) DEFAULT NULL,
  `employee_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `action_time` varchar(30) NOT NULL,
  `cost` float(7,2) NOT NULL,
  `fertilizer_code` varchar(50) NOT NULL,
  `percentage_of_toxic` int(11) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`action_time`, `cost`, `fertilizer_code`, `percentage_of_toxic`, `type`, `name`) VALUES
('about 1 week', 120.00, 'AAmm', 16, 'Ammoniacal', 'Anhydrous ammonia'),
('between 3 to 6 hours', 210.00, 'AChl', 12, 'Ammoniacal', 'Ammonium chloride'),
('between 12 to 24 hours', 140.00, 'ASul', 10, 'Ammoniacal', 'Ammonium Sulphate'),
('two weeks', 25.00, 'NPN', 8, 'Nitrate', 'Nitrate Potassium Nitrate'),
('24 hours', 110.00, 'SNC', 9, 'Nitrate', 'Sodium Nitrate Calcium');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer_components`
--

CREATE TABLE `fertilizer_components` (
  `components` varchar(50) NOT NULL,
  `fertilizer_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fertilizer_components`
--

INSERT INTO `fertilizer_components` (`components`, `fertilizer_code`) VALUES
('21.20 percent Nitrogen', 'ASul'),
('6.10 percent Hydrogen', 'ASul'),
('24.26 percent Sulfur', 'ASul'),
('ammonium sulfate', 'AChl'),
('NaCl', 'AChl'),
('nitrogen and hydrogen', 'AAmm'),
('Nitrate of soda', 'SNC'),
('Chile saltpeter', 'SNC'),
('Cubic niter', 'SNC'),
('potassium', 'NPN'),
('oxygen', 'NPN'),
('nitrogen', 'NPN');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_of_birth` varchar(15) NOT NULL,
  `sector_name` varchar(20) NOT NULL,
  `instute_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `admin_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`email`, `phone_number`, `first_name`, `last_name`, `date_of_birth`, `sector_name`, `instute_name`, `city`, `zip_code`, `admin_email`) VALUES
('mirja@gmail.com', '01756542154', 'Md.', 'Mirja', '11-2-1998', 'BBA', 'NSU', 'Dhaka', 6700, 'shasan191215@bscse.uiu.ac.bd'),
('monty@gmail.com', '01756542154', 'Mr.', 'Monty', '30-10-1993', 'BBA', 'NSU', 'Dhaka', 6700, 'sritu191016@bscse.uiu.ac.bd'),
('rokey@gmail.com', '01744542154', 'Mr.', 'Rokey', '10-10-1993', 'BBA', 'NSU', 'Dhaka', 6700, 'sritu191016@bscse.uiu.ac.bd'),
('rubber@gmail.com', '01784542154', 'Mr.', 'Rubber', '19-3-1995', 'BBA', 'NSU', 'Dhaka', 6700, 'mtalukdar201056@bscse.uiu.ac.bd'),
('sinthiya@gmail.com', '01756542154', 'Ms ', 'Sinthiya', '31-12-1993', 'BBA', 'NSU', 'Dhaka', 6700, 'shasan191215@bscse.uiu.ac.bd');

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker_computer_skill`
--

CREATE TABLE `job_seeker_computer_skill` (
  `computer_skill` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_seeker_computer_skill`
--

INSERT INTO `job_seeker_computer_skill` (`computer_skill`, `email`) VALUES
('XL', 'mirja@gmail.com'),
('MS Word', 'mirja@gmail.com'),
('XL', 'monty@gmail.com'),
('Word', 'monty@gmail.com'),
('Word', 'rokey@gmail.com'),
('Word', 'mirja@gmail.com'),
('XL', 'rubber@gmail.com'),
('Word', 'sinthiya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `nursery_admin`
--

CREATE TABLE `nursery_admin` (
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `security_key` varchar(50) NOT NULL,
  `investment_ammount` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nursery_admin`
--

INSERT INTO `nursery_admin` (`admin_email`, `admin_password`, `first_name`, `last_name`, `phone_number`, `gender`, `country`, `city`, `zip_code`, `security_key`, `investment_ammount`, `email`) VALUES
('mtalukdar201056@bscse.uiu.ac.bd', 'mithu talukdar', 'Md. Mushfikur', 'Talukdar', '01797381244', 'Male', 'Bangladesh', 'Dhaka', 6700, 'mithu talukdar', 100000, 'dhakanursery@gmail.com'),
('shasan191215@bscse.uiu.ac.bd', 'sadia', 'Sadia', 'Hasan', '01797211111', 'Female', 'Bangladesh', 'Dhaka', 6700, 'sadia', 100000, 'dhakanursery@gmail.com'),
('sritu191016@bscse.uiu.ac.bd', 'ritu', 'Sanjida Yesmin', 'Ritu', '01797111111', 'Female', 'Bangladesh', 'Dhaka', 6700, 'ritu', 100000, 'dhakanursery@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `nursery_user`
--

CREATE TABLE `nursery_user` (
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `earn_point` int(11) DEFAULT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `town` varchar(30) NOT NULL,
  `house_no` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `coupon_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nursery_user`
--

INSERT INTO `nursery_user` (`user_email`, `user_password`, `earn_point`, `join_date`, `last_name`, `first_name`, `town`, `house_no`, `zip_code`, `gender`, `email`, `coupon_code`) VALUES
('joni@gmail.com', 'joni', 0, '2022-01-12 19:05:52', 'Joni', 'Md ', 'Dhaka', '22', 6700, 'Male', 'dhakanursery@gmail.com', 'NEW50ACCOUNT'),
('rifat@gmail.com', 'rifat', 0, '2022-01-12 19:05:52', 'Rifat', 'Md ', 'Dhaka', '39', 6700, 'Male', 'dhakanursery@gmail.com', 'NEW50ACCOUNT'),
('rittik@gmail.com', 'rittik', 0, '2022-01-12 19:05:52', 'Rittik', 'Mr ', 'Dhaka', '12', 6700, 'Male', 'dhakanursery@gmail.com', 'NEW50ACCOUNT'),
('siddik@gmail.com', 'siddik', 0, '2022-01-12 19:05:52', 'Siddik', 'Md ', 'Dhaka', '33', 6700, 'Male', 'dhakanursery@gmail.com', 'NEW50ACCOUNT'),
('tubelight@gmail.com', 'tubelite', 0, '2022-01-12 19:05:52', 'Light', 'Tube', 'Dhaka', '32', 6700, 'Male', 'dhakanursery@gmail.com', 'NEW50ACCOUNT');

-- --------------------------------------------------------

--
-- Table structure for table `nursery_user_image_message`
--

CREATE TABLE `nursery_user_image_message` (
  `image_message` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nursery_user_text_message`
--

CREATE TABLE `nursery_user_text_message` (
  `text_message` varchar(1000) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nursery_user_video_message`
--

CREATE TABLE `nursery_user_video_message` (
  `video_message` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `online_delivery`
--

CREATE TABLE `online_delivery` (
  `per_delivery_cost` float(5,2) NOT NULL,
  `estimate_time` varchar(50) NOT NULL,
  `oder_date` datetime NOT NULL DEFAULT current_timestamp(),
  `return_time` varchar(30) DEFAULT NULL,
  `online_payment` varchar(20) DEFAULT NULL,
  `cash_on_delivery` varchar(10) DEFAULT NULL,
  `coupon_code` varchar(20) DEFAULT NULL,
  `employee_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `online_delivery`
--

INSERT INTO `online_delivery` (`per_delivery_cost`, `estimate_time`, `oder_date`, `return_time`, `online_payment`, `cash_on_delivery`, `coupon_code`, `employee_email`) VALUES
(30.00, '7 days', '2022-01-12 19:13:31', '5 days', NULL, NULL, 'NEW10YEAR', 'harrypoter@gmail.com'),
(30.00, '7 days', '2022-01-12 19:13:31', '5 days', NULL, NULL, 'NEW10YEAR', 'harrypoter@gmail.com'),
(30.00, '7 days', '2022-01-12 19:13:31', '5 days', NULL, NULL, 'NEW10YEAR', 'harrypoter@gmail.com'),
(30.00, '7 days', '2022-01-12 19:13:31', '5 days', NULL, NULL, 'NEW10YEAR', 'harrypoter@gmail.com'),
(30.00, '7 days', '2022-01-12 19:13:31', '5 days', NULL, NULL, 'NEW10YEAR', 'harrypoter@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `name` varchar(50) NOT NULL,
  `serial_port` int(11) NOT NULL,
  `plant_code` varchar(10) NOT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `sold` varchar(10) NOT NULL,
  `price` float(9,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `plant_image` varchar(50) DEFAULT NULL,
  `seed` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`name`, `serial_port`, `plant_code`, `rating`, `sold`, `price`, `quantity`, `plant_image`, `seed`) VALUES
('Mini Cactus Plants', 1, 'deco', 'None', 'no', 250.00, 1, NULL, 'no'),
('Red Grafted Moon Cactus', 2, 'deco', 'None', 'no', 300.00, 1, NULL, 'no'),
('Orchid Flower Plant', 3, 'deco', 'None', 'no', 350.00, 1, NULL, 'no'),
('Bromeliad orchid', 4, 'deco', 'None', 'no', 400.00, 1, NULL, 'no'),
('Verykatet Mini Ficust', 5, 'deco', 'None', 'no', 450.00, 1, NULL, 'no'),
('Cassia fistula', 6, 'flower', 'None', 'no', 500.00, 1, NULL, 'yes'),
('Bauhinia', 7, 'flower', 'None', 'no', 550.00, 1, NULL, 'yes'),
('Saraca asoca', 8, 'flower', 'None', 'no', 660.00, 1, NULL, 'yes'),
('Acacia-Auriculiformis', 9, 'flower', 'None', 'no', 600.00, 1, NULL, 'yes'),
('Aster', 10, 'flower', 'None', 'no', 530.00, 1, NULL, 'yes'),
('Amrapali Indian', 11, 'fru', 'None', 'no', 520.00, 1, NULL, 'yes'),
('Dragon Fruit', 12, 'fru', 'None', 'no', 510.00, 1, NULL, 'yes'),
('Terminalia-Catappa', 13, 'fru', 'None', 'no', 480.00, 1, NULL, 'yes'),
('Custard Apple', 14, 'fru', 'None', 'no', 460.00, 1, NULL, 'yes'),
('Malay Apple Tree', 15, 'fru', 'None', 'no', 555.00, 1, NULL, 'yes'),
('Wild Rice', 16, 'seed', 'None', 'no', 430.00, 1, NULL, 'yes'),
('Pumpkin Seeds', 17, 'seed', 'None', 'no', 300.00, 1, NULL, 'yes'),
('Pomegranate Seeds', 18, 'seed', 'None', 'no', 270.00, 1, NULL, 'yes'),
('Quinoa', 19, 'seed', 'None', 'no', 700.00, 1, NULL, 'yes'),
('Flax Seeds', 20, 'seed', 'None', 'no', 690.00, 1, NULL, 'yes'),
('Aini', 21, 'wood', 'None', 'no', 655.00, 1, NULL, 'yes'),
('Ainl', 22, 'wood', 'None', 'no', 100.00, 1, NULL, 'yes'),
('Arjun', 23, 'wood', 'None', 'no', 156.00, 1, NULL, 'yes'),
('Axlewood', 24, 'wood', 'None', 'no', 245.00, 1, NULL, 'yes'),
('Coconut', 25, 'wood', 'None', 'no', 210.00, 1, NULL, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `plant_image`
--

CREATE TABLE `plant_image` (
  `image` varchar(50) DEFAULT NULL,
  `serial_port` int(11) DEFAULT NULL,
  `plant_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant_image`
--

INSERT INTO `plant_image` (`image`, `serial_port`, `plant_code`) VALUES
('image/Mini Cactus Plants.JPEG', 1, 'deco'),
('image/Red Grafted Moon Cactus.JPG', 2, 'deco'),
('image/Orchid Flower Plant.JPG', 3, 'deco'),
('image/Bromeliad orchid.JPG', 4, 'deco'),
('image/Verykatet Mini Ficust.JPG', 5, 'deco');

-- --------------------------------------------------------

--
-- Table structure for table `plant_needed_fertillizer`
--

CREATE TABLE `plant_needed_fertillizer` (
  `fertilizer_code` varchar(50) DEFAULT NULL,
  `serial_port` int(11) DEFAULT NULL,
  `plant_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant_needed_fertillizer`
--

INSERT INTO `plant_needed_fertillizer` (`fertilizer_code`, `serial_port`, `plant_code`) VALUES
('AAmm', 13, 'fru'),
('AChl', 13, 'fru'),
('ASul', 21, 'wood'),
('NPN', 21, 'wood'),
('SNC', 21, 'wood');

-- --------------------------------------------------------

--
-- Table structure for table `plant_text`
--

CREATE TABLE `plant_text` (
  `plant_text` varchar(50) DEFAULT NULL,
  `serial_port` int(11) DEFAULT NULL,
  `plant_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soil`
--

CREATE TABLE `soil` (
  `quantity` int(11) NOT NULL,
  `soil_code` int(11) NOT NULL,
  `soil_name` varchar(15) NOT NULL,
  `cost` float(9,2) NOT NULL,
  `serial_port` int(11) DEFAULT NULL,
  `plant_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soil`
--

INSERT INTO `soil` (`quantity`, `soil_code`, `soil_name`, `cost`, `serial_port`, `plant_code`) VALUES
(1, 1, 'Peat Soil', 42.40, 1, 'deco'),
(1, 2, 'Chalk Soil', 26.00, 2, 'deco'),
(1, 3, 'Loam Soil', 36.00, 3, 'deco'),
(1, 4, 'Silt Soil', 16.00, 4, 'deco'),
(1, 5, 'Clay Soil', 12.00, 5, 'deco');

-- --------------------------------------------------------

--
-- Table structure for table `viewer`
--

CREATE TABLE `viewer` (
  `serial_number` int(11) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewer`
--

INSERT INTO `viewer` (`serial_number`, `country`, `email`) VALUES
(1, 'Bangladesh', 'dhakanursery@gmail.com'),
(2, 'Bangladesh', 'dhakanursery@gmail.com'),
(3, 'Bangladesh', 'dhakanursery@gmail.com'),
(4, 'India', 'dhakanursery@gmail.com'),
(5, 'Nepal', 'dhakanursery@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advise`
--
ALTER TABLE `advise`
  ADD KEY `fk_plant_serial1` (`serial_port`,`plant_code`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`coupon_code`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_email`),
  ADD KEY `fk_24` (`admin_email`),
  ADD KEY `fk_25` (`coupon_code`);

--
-- Indexes for table `employee_image`
--
ALTER TABLE `employee_image`
  ADD KEY `fk_28` (`employee_email`);

--
-- Indexes for table `employee_takecare_plant`
--
ALTER TABLE `employee_takecare_plant`
  ADD KEY `fk_serialPlant2` (`serial_port`,`plant_code`),
  ADD KEY `fk_employee_email31` (`employee_email`);

--
-- Indexes for table `employee_text_message`
--
ALTER TABLE `employee_text_message`
  ADD KEY `fk_26` (`employee_email`);

--
-- Indexes for table `employee_video`
--
ALTER TABLE `employee_video`
  ADD KEY `fk_27` (`employee_email`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`fertilizer_code`);

--
-- Indexes for table `fertilizer_components`
--
ALTER TABLE `fertilizer_components`
  ADD KEY `fk_fertilizer11` (`fertilizer_code`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`email`),
  ADD KEY `fk_22` (`admin_email`);

--
-- Indexes for table `job_seeker_computer_skill`
--
ALTER TABLE `job_seeker_computer_skill`
  ADD KEY `fk_email33` (`email`);

--
-- Indexes for table `nursery_admin`
--
ALTER TABLE `nursery_admin`
  ADD PRIMARY KEY (`admin_email`),
  ADD KEY `fk_email5` (`email`);

--
-- Indexes for table `nursery_user`
--
ALTER TABLE `nursery_user`
  ADD PRIMARY KEY (`user_email`),
  ADD KEY `fk_email6` (`email`),
  ADD KEY `fk_coupon7` (`coupon_code`);

--
-- Indexes for table `nursery_user_image_message`
--
ALTER TABLE `nursery_user_image_message`
  ADD KEY `fk_user_email9` (`user_email`);

--
-- Indexes for table `nursery_user_text_message`
--
ALTER TABLE `nursery_user_text_message`
  ADD KEY `fk_user_email8` (`user_email`);

--
-- Indexes for table `nursery_user_video_message`
--
ALTER TABLE `nursery_user_video_message`
  ADD KEY `fk_user_email10` (`user_email`);

--
-- Indexes for table `online_delivery`
--
ALTER TABLE `online_delivery`
  ADD KEY `fk_cupon30` (`coupon_code`),
  ADD KEY `fk_employee30` (`employee_email`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`serial_port`,`plant_code`);

--
-- Indexes for table `plant_image`
--
ALTER TABLE `plant_image`
  ADD KEY `fk_serial_plant` (`serial_port`,`plant_code`);

--
-- Indexes for table `plant_needed_fertillizer`
--
ALTER TABLE `plant_needed_fertillizer`
  ADD KEY `fk_fertili` (`fertilizer_code`),
  ADD KEY `fk_seria10` (`serial_port`,`plant_code`);

--
-- Indexes for table `plant_text`
--
ALTER TABLE `plant_text`
  ADD KEY `fk_serial_plant2` (`serial_port`,`plant_code`);

--
-- Indexes for table `soil`
--
ALTER TABLE `soil`
  ADD PRIMARY KEY (`soil_code`),
  ADD KEY `fk_serialPlant` (`serial_port`,`plant_code`);

--
-- Indexes for table `viewer`
--
ALTER TABLE `viewer`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `fk_email2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `serial_port` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `viewer`
--
ALTER TABLE `viewer`
  MODIFY `serial_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advise`
--
ALTER TABLE `advise`
  ADD CONSTRAINT `fk_plant_serial1` FOREIGN KEY (`serial_port`,`plant_code`) REFERENCES `plant` (`serial_port`, `plant_code`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_24` FOREIGN KEY (`admin_email`) REFERENCES `nursery_admin` (`admin_email`),
  ADD CONSTRAINT `fk_25` FOREIGN KEY (`coupon_code`) REFERENCES `discount` (`coupon_code`);

--
-- Constraints for table `employee_image`
--
ALTER TABLE `employee_image`
  ADD CONSTRAINT `fk_28` FOREIGN KEY (`employee_email`) REFERENCES `employee` (`employee_email`);

--
-- Constraints for table `employee_takecare_plant`
--
ALTER TABLE `employee_takecare_plant`
  ADD CONSTRAINT `fk_employee_email31` FOREIGN KEY (`employee_email`) REFERENCES `employee` (`employee_email`),
  ADD CONSTRAINT `fk_serialPlant2` FOREIGN KEY (`serial_port`,`plant_code`) REFERENCES `plant` (`serial_port`, `plant_code`);

--
-- Constraints for table `employee_text_message`
--
ALTER TABLE `employee_text_message`
  ADD CONSTRAINT `fk_26` FOREIGN KEY (`employee_email`) REFERENCES `employee` (`employee_email`);

--
-- Constraints for table `employee_video`
--
ALTER TABLE `employee_video`
  ADD CONSTRAINT `fk_27` FOREIGN KEY (`employee_email`) REFERENCES `employee` (`employee_email`);

--
-- Constraints for table `fertilizer_components`
--
ALTER TABLE `fertilizer_components`
  ADD CONSTRAINT `fk_fertilizer11` FOREIGN KEY (`fertilizer_code`) REFERENCES `fertilizer` (`fertilizer_code`);

--
-- Constraints for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD CONSTRAINT `fk_22` FOREIGN KEY (`admin_email`) REFERENCES `nursery_admin` (`admin_email`);

--
-- Constraints for table `job_seeker_computer_skill`
--
ALTER TABLE `job_seeker_computer_skill`
  ADD CONSTRAINT `fk_email33` FOREIGN KEY (`email`) REFERENCES `job_seeker` (`email`);

--
-- Constraints for table `nursery_admin`
--
ALTER TABLE `nursery_admin`
  ADD CONSTRAINT `fk_email5` FOREIGN KEY (`email`) REFERENCES `branch` (`email`);

--
-- Constraints for table `nursery_user`
--
ALTER TABLE `nursery_user`
  ADD CONSTRAINT `fk_coupon7` FOREIGN KEY (`coupon_code`) REFERENCES `discount` (`coupon_code`),
  ADD CONSTRAINT `fk_email6` FOREIGN KEY (`email`) REFERENCES `branch` (`email`);

--
-- Constraints for table `nursery_user_image_message`
--
ALTER TABLE `nursery_user_image_message`
  ADD CONSTRAINT `fk_user_email9` FOREIGN KEY (`user_email`) REFERENCES `nursery_user` (`user_email`);

--
-- Constraints for table `nursery_user_text_message`
--
ALTER TABLE `nursery_user_text_message`
  ADD CONSTRAINT `fk_user_email8` FOREIGN KEY (`user_email`) REFERENCES `nursery_user` (`user_email`);

--
-- Constraints for table `nursery_user_video_message`
--
ALTER TABLE `nursery_user_video_message`
  ADD CONSTRAINT `fk_user_email10` FOREIGN KEY (`user_email`) REFERENCES `nursery_user` (`user_email`);

--
-- Constraints for table `online_delivery`
--
ALTER TABLE `online_delivery`
  ADD CONSTRAINT `fk_cupon30` FOREIGN KEY (`coupon_code`) REFERENCES `discount` (`coupon_code`),
  ADD CONSTRAINT `fk_employee30` FOREIGN KEY (`employee_email`) REFERENCES `employee` (`employee_email`);

--
-- Constraints for table `plant_image`
--
ALTER TABLE `plant_image`
  ADD CONSTRAINT `fk_serial_plant` FOREIGN KEY (`serial_port`,`plant_code`) REFERENCES `plant` (`serial_port`, `plant_code`);

--
-- Constraints for table `plant_needed_fertillizer`
--
ALTER TABLE `plant_needed_fertillizer`
  ADD CONSTRAINT `fk_fertili` FOREIGN KEY (`fertilizer_code`) REFERENCES `fertilizer` (`fertilizer_code`),
  ADD CONSTRAINT `fk_seria10` FOREIGN KEY (`serial_port`,`plant_code`) REFERENCES `plant` (`serial_port`, `plant_code`);

--
-- Constraints for table `plant_text`
--
ALTER TABLE `plant_text`
  ADD CONSTRAINT `fk_serial_plant2` FOREIGN KEY (`serial_port`,`plant_code`) REFERENCES `plant` (`serial_port`, `plant_code`);

--
-- Constraints for table `soil`
--
ALTER TABLE `soil`
  ADD CONSTRAINT `fk_serialPlant` FOREIGN KEY (`serial_port`,`plant_code`) REFERENCES `plant` (`serial_port`, `plant_code`);

--
-- Constraints for table `viewer`
--
ALTER TABLE `viewer`
  ADD CONSTRAINT `fk_email2` FOREIGN KEY (`email`) REFERENCES `branch` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
