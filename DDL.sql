-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2018 at 11:48 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midcities`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessorial_charge_master`
--

CREATE TABLE `accessorial_charge_master` (
  `acc_charge_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `interval` varchar(20) NOT NULL,
  `value` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chassis_master`
--

CREATE TABLE `chassis_master` (
  `chassis_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `door_number` int(11) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chassis_master`
--

INSERT INTO `chassis_master` (`chassis_id`, `name`, `address`, `door_number`, `street`, `city`, `zipcode`, `state`) VALUES
(1, 'Bens', 'Jupiter, Alaska', NULL, NULL, 'Jupiter', NULL, 'Alaska'),
(2, 'BMW', 'Avon Park, Alabama', 56, 'east', 'Avon Park', 8966, 'Alabama'),
(3, 'RTS', 'Bocoa Raton, New Jersy', 23, 'west', 'Bocoa Raton', 9966, 'New Jersy'),
(4, 'DRC', 'Cocoa, New Mexico', NULL, NULL, 'Cocoa', NULL, 'New Mexico'),
(5, 'VSS', 'Jupiter, New York', NULL, NULL, 'Jupiter', NULL, 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `city_master`
--

CREATE TABLE `city_master` (
  `city_id` int(4) NOT NULL,
  `city_code` varchar(5) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_master`
--

INSERT INTO `city_master` (`city_id`, `city_code`, `city_name`, `state_code`) VALUES
(1, 'AVP', 'Avon Park', 'FL'),
(2, 'BOR', 'Boca Raton', 'FL'),
(3, 'COC', 'Cocoa', 'FL'),
(4, 'JUP', 'Jupiter', 'FL');

-- --------------------------------------------------------

--
-- Table structure for table `container_chassis_mgmt`
--

CREATE TABLE `container_chassis_mgmt` (
  `record_id` int(11) NOT NULL,
  `container_id` int(11) NOT NULL,
  `chassis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `container_master`
--

CREATE TABLE `container_master` (
  `container_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `door_number` int(11) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container_master`
--

INSERT INTO `container_master` (`container_id`, `name`, `address`, `door_number`, `street`, `city`, `zip_code`, `state`) VALUES
(1, 'VCC', 'Avon Park, Alabama', 56, 'east', 'Avon Park', 4645, 'Alabama'),
(2, 'RTR', 'Jupiter, New Jersy', 444, 'east', 'Jupiter', 9875, 'New Jersy'),
(3, 'AZR', 'Cocoa, Alaska', 76, 'east', 'Cocoa', 2344, 'Alaska'),
(4, 'GRE', 'Cocoa, Alaska', 89, 'south', 'Cocoa', 5676, 'Alaska'),
(5, 'RXD', 'Bocoa Raton, New York', 819, 'north', 'Bocoa Raton', 7567, 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `cust_id` int(11) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `b_address` varchar(100) NOT NULL,
  `b_door_number` int(11) DEFAULT NULL,
  `b_street` varchar(50) DEFAULT NULL,
  `b_city` varchar(15) DEFAULT NULL,
  `b_zip_code` int(11) DEFAULT NULL,
  `b_state` varchar(15) DEFAULT NULL,
  `p_address` varchar(100) NOT NULL,
  `p_door_number` int(11) DEFAULT NULL,
  `p_street` varchar(50) DEFAULT NULL,
  `p_city` varchar(15) DEFAULT NULL,
  `p_zip_code` int(11) DEFAULT NULL,
  `p_state` varchar(15) DEFAULT NULL,
  `point_of_contact` varchar(50) NOT NULL,
  `poc_phone` int(11) NOT NULL,
  `business_phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`cust_id`, `business_name`, `b_address`, `b_door_number`, `b_street`, `b_city`, `b_zip_code`, `b_state`, `p_address`, `p_door_number`, `p_street`, `p_city`, `p_zip_code`, `p_state`, `point_of_contact`, `poc_phone`, `business_phone`, `email`, `fax`) VALUES
(1, 'Petrol', 'Florida', 52, 'North Street', 'Florida', 642333, 'NY', 'Midcities', 45, 'East Street', 'Midcity', 56677, 'NY', 'Phone', 66489221, 987887321, 'petrol@gmail.com', 4424),
(2, 'Diesel', 'Florida', 12, NULL, 'Florida', 642333, 'NY', 'Midcities', NULL, NULL, 'Midcity', 56677, 'NY', 'Mail', 66489221, 987887321, 'diesel@gmail.com', 2342);

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `order_i` int(11) NOT NULL,
  `order_sts` varchar(250) NOT NULL,
  `driver` varchar(100) NOT NULL,
  `haz` varchar(250) NOT NULL,
  `con_sts` varchar(250) NOT NULL,
  `size` int(11) NOT NULL,
  `leg` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `equip_type` varchar(250) NOT NULL,
  `sch_pu` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `pickup` varchar(250) NOT NULL,
  `pu_zip` int(11) NOT NULL,
  `delivery` varchar(250) NOT NULL,
  `dl_zip` int(11) NOT NULL,
  `sch_dl` date NOT NULL,
  `from` varchar(250) NOT NULL,
  `to` varchar(250) NOT NULL,
  `container` varchar(250) NOT NULL,
  `chassis` varchar(250) NOT NULL,
  `rail_cut` varchar(250) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `pdm` varchar(250) NOT NULL,
  `dmg` varchar(250) NOT NULL,
  `chs` varchar(250) NOT NULL,
  `pu_ref` varchar(250) NOT NULL,
  `ll` varchar(250) NOT NULL,
  `miles` int(11) NOT NULL,
  `chs_days` int(11) NOT NULL,
  `truck_1` varchar(250) NOT NULL,
  `driver_1` text NOT NULL,
  `name_1` text NOT NULL,
  `current_order1` varchar(250) NOT NULL,
  `sts1` varchar(250) NOT NULL,
  `type1` varchar(250) NOT NULL,
  `shipper1` varchar(250) NOT NULL,
  `consignee1` varchar(250) NOT NULL,
  `city1` text NOT NULL,
  `date1` date NOT NULL,
  `time1` time NOT NULL,
  `euiptype1` varchar(250) NOT NULL,
  `phone1` int(11) NOT NULL,
  `nextel_id` int(11) NOT NULL,
  `truck1` varchar(250) NOT NULL,
  `sft1` varchar(250) NOT NULL,
  `haz1` varchar(250) NOT NULL,
  `lic_exp1` date NOT NULL,
  `ins_exp1` date NOT NULL,
  `med_exp1` date NOT NULL,
  `pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`order_i`, `order_sts`, `driver`, `haz`, `con_sts`, `size`, `leg`, `type`, `equip_type`, `sch_pu`, `time`, `pickup`, `pu_zip`, `delivery`, `dl_zip`, `sch_dl`, `from`, `to`, `container`, `chassis`, `rail_cut`, `customer`, `pdm`, `dmg`, `chs`, `pu_ref`, `ll`, `miles`, `chs_days`, `truck_1`, `driver_1`, `name_1`, `current_order1`, `sts1`, `type1`, `shipper1`, `consignee1`, `city1`, `date1`, `time1`, `euiptype1`, `phone1`, `nextel_id`, `truck1`, `sft1`, `haz1`, `lic_exp1`, `ins_exp1`, `med_exp1`, `pay`) VALUES
(1, 'complete', 'jon', 'noj', 'waiting', 55, 2, 'big', 'large', '2018-06-23', '12:00', '1', 660011, 'process', 610610, '2018-06-23', 'station', 'truck_lot', 'RMS', 'VRS', 'Yes', 'Dev', 'No', 'Yes', 'Yes', 'No', 'll', 20, 2, 'VTS', 'Bake', 'Baker', 'VMS', 'process', 'type', 'Log', 'consigee', 'FL', '2018-06-23', '04:57:10', 'Small', 2147483647, 123, 'ATS', 'night', 'CTS', '2018-06-23', '2018-06-23', '2018-06-23', 100);

-- --------------------------------------------------------

--
-- Table structure for table `drivertype_master`
--

CREATE TABLE `drivertype_master` (
  `record_id` int(11) NOT NULL,
  `driver_type` varchar(30) NOT NULL,
  `driver_type_cat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivertype_master`
--

INSERT INTO `drivertype_master` (`record_id`, `driver_type`, `driver_type_cat`) VALUES
(1, 'FCL', 'FCL sub');

-- --------------------------------------------------------

--
-- Table structure for table `driver_master`
--

CREATE TABLE `driver_master` (
  `driver_id` int(11) NOT NULL,
  `driver_type` varchar(15) NOT NULL,
  `title_code` varchar(4) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `city_id` int(4) DEFAULT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `contact_number` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fuel_card_number` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `driver_pic` varchar(10) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `lic_exp_date` varchar(50) NOT NULL,
  `ins_exp_date` varchar(50) NOT NULL,
  `med_exp_date` varchar(50) NOT NULL,
  `spl_category` varchar(50) DEFAULT NULL,
  `medical_card_number` varchar(50) NOT NULL,
  `support_document` int(1) NOT NULL,
  `driver_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_master`
--

INSERT INTO `driver_master` (`driver_id`, `driver_type`, `title_code`, `first_name`, `middle_name`, `last_name`, `gender`, `address`, `zip_code`, `city_id`, `state_code`, `contact_number`, `email`, `fuel_card_number`, `pin`, `driver_pic`, `license_number`, `lic_exp_date`, `ins_exp_date`, `med_exp_date`, `spl_category`, `medical_card_number`, `support_document`, `driver_status`) VALUES
(1, 'FCL', 'Expe', 'Mike', NULL, 'Smith', 'Male', 'Avon Park, Alabama', 5465, 1, 'GH', 987765545, 'mike@gmail.com', 'R123X', '0192', 'Male', '24S709ISA0AA', '2018-12-06', '2018-12-06', '2018-12-06', 'Nothing', 'M12E34D45', 3, 'AVL'),
(2, 'FCL', 'Supp', 'Dan', NULL, 'Smith', 'Male', 'Jupiter, New Jersy', 5465, 2, 'OH', 878965320, 'dan@gmail.com', 'B6754S1', '2233', 'Male', 'T434SA23Y5A1', '2018-06-05', '2018-06-05', '2018-06-05', 'Yes', 'MED45789', 2, 'NAVL'),
(3, 'FCL', 'Fres', 'Pat', NULL, 'Cummin', 'Male', 'Jupiter, New Jersy', 8866, 4, 'TN', 878965320, 'pat@gmail.com', 'A3W754S1', '4534', 'Male', 'T434SA23Y5A1', '2018-06-05', '2018-06-05', '2018-06-05', 'No', 'MED1234', 4, 'AVL');

-- --------------------------------------------------------

--
-- Table structure for table `general_driver_rate_master`
--

CREATE TABLE `general_driver_rate_master` (
  `record_id` int(11) NOT NULL,
  `leg_type` varchar(30) NOT NULL,
  `driver_type` varchar(30) NOT NULL,
  `rate_per_mile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_route_rate_master`
--

CREATE TABLE `general_route_rate_master` (
  `record_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `pick_up` varchar(50) NOT NULL,
  `delivery` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `miles` int(11) NOT NULL,
  `rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `order_i` int(11) NOT NULL,
  `order_sts` varchar(250) NOT NULL,
  `driver` varchar(100) NOT NULL,
  `haz` varchar(250) NOT NULL,
  `con_sts` varchar(250) NOT NULL,
  `size` int(11) NOT NULL,
  `leg` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `equip_type` varchar(250) NOT NULL,
  `sch_pu` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `pickup` varchar(250) NOT NULL,
  `pu_zip` int(11) NOT NULL,
  `delivery` varchar(250) NOT NULL,
  `dl_zip` int(11) NOT NULL,
  `sch_dl` date NOT NULL,
  `from` varchar(250) NOT NULL,
  `to` varchar(250) NOT NULL,
  `container` varchar(250) NOT NULL,
  `chassis` varchar(250) NOT NULL,
  `rail_cut` varchar(250) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `pdm` varchar(250) NOT NULL,
  `dmg` varchar(250) NOT NULL,
  `chs` varchar(250) NOT NULL,
  `pu_ref` varchar(250) NOT NULL,
  `ll` varchar(250) NOT NULL,
  `miles` int(11) NOT NULL,
  `chs_days` int(11) NOT NULL,
  `truck_1` varchar(250) NOT NULL,
  `driver_1` text NOT NULL,
  `name_1` text NOT NULL,
  `current_order1` varchar(250) NOT NULL,
  `sts1` varchar(250) NOT NULL,
  `type1` varchar(250) NOT NULL,
  `shipper1` varchar(250) NOT NULL,
  `consignee1` varchar(250) NOT NULL,
  `city1` text NOT NULL,
  `date1` date NOT NULL,
  `time1` time NOT NULL,
  `euiptype1` varchar(250) NOT NULL,
  `phone1` int(11) NOT NULL,
  `nextel_id` int(11) NOT NULL,
  `truck1` varchar(250) NOT NULL,
  `sft1` varchar(250) NOT NULL,
  `haz1` varchar(250) NOT NULL,
  `lic_exp1` date NOT NULL,
  `ins_exp1` date NOT NULL,
  `med_exp1` date NOT NULL,
  `pay1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`order_i`, `order_sts`, `driver`, `haz`, `con_sts`, `size`, `leg`, `type`, `equip_type`, `sch_pu`, `time`, `pickup`, `pu_zip`, `delivery`, `dl_zip`, `sch_dl`, `from`, `to`, `container`, `chassis`, `rail_cut`, `customer`, `pdm`, `dmg`, `chs`, `pu_ref`, `ll`, `miles`, `chs_days`, `truck_1`, `driver_1`, `name_1`, `current_order1`, `sts1`, `type1`, `shipper1`, `consignee1`, `city1`, `date1`, `time1`, `euiptype1`, `phone1`, `nextel_id`, `truck1`, `sft1`, `haz1`, `lic_exp1`, `ins_exp1`, `med_exp1`, `pay1`) VALUES
(1, 'in', 'non', 'mon', 'do', 70, 7, 'big', 'string', '2018-06-23', '12:30', 'went', 60010, 'weait', 230044, '2018-06-23', 'staion', 'home', 'vtm', 'rsr', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 0, 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', '2018-06-23', '10:07:45', 'string', 0, 0, 'string', 'string', 'string', '2018-06-23', '2018-06-23', '2018-06-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `legtype_master`
--

CREATE TABLE `legtype_master` (
  `record_id` int(11) NOT NULL,
  `leg_type` varchar(30) NOT NULL,
  `leg_type_cat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legtype_master`
--

INSERT INTO `legtype_master` (`record_id`, `leg_type`, `leg_type_cat`) VALUES
(1, 'Bobtail', 'Bobtail sub'),
(2, 'Chassis', 'Chassis sub'),
(3, 'Loaded', 'Loaded sub'),
(4, 'Empty', 'Empty sub');

-- --------------------------------------------------------

--
-- Table structure for table `leg_mgmt`
--

CREATE TABLE `leg_mgmt` (
  `leg_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `leg_type` varchar(30) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `deadline` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `pickup` varchar(25) NOT NULL,
  `pu_time` varchar(25) NOT NULL,
  `delivery` varchar(25) NOT NULL,
  `dl_time` varchar(20) NOT NULL,
  `est_miles` int(11) NOT NULL,
  `dmg` varchar(25) NOT NULL,
  `container_id` int(11) NOT NULL,
  `chassis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locationtype_master`
--

CREATE TABLE `locationtype_master` (
  `record_id` int(11) NOT NULL,
  `location_type` varchar(30) NOT NULL,
  `location_type_cat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locationtype_master`
--

INSERT INTO `locationtype_master` (`record_id`, `location_type`, `location_type_cat`) VALUES
(1, 'Rails', 'Rails Sub cat'),
(2, 'Chassis Depot', 'Chassis Sub cat'),
(3, 'Home Yard', 'Home Sub cat'),
(4, 'Consignor', 'Consignor Sub cat'),
(5, 'Consignee', 'Consignee Sub cat'),
(6, 'Repair', 'Repair Sub cat'),
(7, 'Container Depot', 'Container Sub cat');

-- --------------------------------------------------------

--
-- Table structure for table `location_master`
--

CREATE TABLE `location_master` (
  `location_id` int(11) NOT NULL,
  `location_type` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `door_number` int(11) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_master`
--

INSERT INTO `location_master` (`location_id`, `location_type`, `name`, `address`, `door_number`, `street`, `city`, `zip_code`, `state`) VALUES
(1, 'Rails', 'Railway station', 'Florida', NULL, NULL, 'Midcity', 7665, 'New mexican'),
(2, 'Chassis Depot', 'Chassis company', 'Avon Park, Alabama', NULL, NULL, 'Alabama', 8987, 'Avon Park'),
(3, 'Container Depot', 'Container company', 'Avon Park, California', NULL, NULL, 'Avon Park', 8987, 'California'),
(4, 'Repair', 'Repair Shed', 'Cocoa, New Jersy', NULL, NULL, 'Cocoa', 8987, 'New Jersy'),
(5, 'Consignee', 'Consignee location', 'Cocoa, New York', NULL, NULL, 'Cocoa', 4567, 'New York'),
(6, 'Consignor', 'Consignor location', 'Jupiter, Alaska', NULL, NULL, 'Jupiter', 4567, 'Alaska');

-- --------------------------------------------------------

--
-- Table structure for table `ordertype_master`
--

CREATE TABLE `ordertype_master` (
  `record_id` int(11) NOT NULL,
  `order_type` varchar(30) NOT NULL,
  `order_type_cat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertype_master`
--

INSERT INTO `ordertype_master` (`record_id`, `order_type`, `order_type_cat`) VALUES
(1, 'ECL', 'ECl sub');

-- --------------------------------------------------------

--
-- Table structure for table `order_mgmt`
--

CREATE TABLE `order_mgmt` (
  `order_id` int(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `haz` varchar(250) NOT NULL,
  `con_status` varchar(250) NOT NULL,
  `size` int(11) NOT NULL,
  `leg_id` int(11) NOT NULL,
  `order_type` varchar(15) NOT NULL,
  `eqp_type` varchar(250) NOT NULL,
  `sch_pu` date NOT NULL,
  `time` time NOT NULL,
  `pickup` varchar(250) NOT NULL,
  `pu_zip` int(11) NOT NULL,
  `delivery` varchar(250) NOT NULL,
  `dl_zip` int(11) NOT NULL,
  `sch_dl` date NOT NULL,
  `from` time NOT NULL,
  `to` time NOT NULL,
  `container_id` int(11) NOT NULL,
  `chassis_id` int(11) NOT NULL,
  `rail_cut` varchar(250) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `pdm` varchar(250) NOT NULL,
  `dmg` varchar(250) NOT NULL,
  `chs` varchar(250) NOT NULL,
  `pu_ref` varchar(250) NOT NULL,
  `ll` varchar(250) NOT NULL,
  `miles` int(11) NOT NULL,
  `chs_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pass_security_question_master`
--

CREATE TABLE `pass_security_question_master` (
  `pass_ques_id` int(2) NOT NULL,
  `pass_question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `route_master`
--

CREATE TABLE `route_master` (
  `route_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `start_loc` varchar(50) NOT NULL,
  `des_loc` varchar(50) NOT NULL,
  `rate` double(5,2) NOT NULL,
  `distance` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `state_code` varchar(10) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`state_code`, `state_name`) VALUES
('AK', 'Alaska'),
('AL', 'Alabama'),
('AR', 'Arkansas'),
('AZ', 'Arizona'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DE', 'Delaware'),
('FL', 'Florida'),
('GA', 'Georgia'),
('GH', 'Govt'),
('HI', 'Hawaii'),
('IA', 'Iowa'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('KS', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('MA', 'Massachusetts'),
('MD', 'Maryland'),
('ME', 'Maine'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MO', 'Missouri'),
('MS', 'Mississippi'),
('MT', 'Montana'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('NE', 'Nebraska'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NV', 'Nevada'),
('NY', 'New York'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('RG', 'Round'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TNA', 'Tamil'),
('TX', 'Texas'),
('UT', 'Utah'),
('VA', 'Virginia'),
('VT', 'Vermont'),
('WA', 'Washington'),
('WI', 'Wisconsin'),
('WV', 'West Virginia'),
('WY', 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL,
  `realm` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL,
  `permissions` varchar(100) NOT NULL,
  `emailVerified` tinyint(1) NOT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `realm`, `username`, `password`, `email`, `first_name`, `last_name`, `role`, `permissions`, `emailVerified`, `verificationToken`) VALUES
(1, '', 'Test Ysquare', '$2a$10$1cVrxybzSM0IE7s8sXQnruXQAuZNSAR8WKhIkprIraGl94ibMlAKC', 'testysquare@gmail.com', 'Test', 'Ysquare', 'Admin', 'Deadline', 0, '8bc0d14e7d565dd5ffc1c48b929d708be682a47556e44ad9451de90b4feb54f23a19481e4ae962e5003756a50559029d75b6a878677b5237583cfac9f328fb44'),
(2, '', 'Ijaz Ahamed', '$2a$10$vwxV3DBVK1tPaorLUHt7yOqM5rM.zk6QxgcYMYI4ukpd9gMZEwOF2', 'ahameedijaz78@gmail.com', 'Ijaz', 'Ahamed', 'Admin', 'Driver Rates', 1, NULL),
(3, '', 'Mustaq Mohamed', '$2a$10$.Aog/2FVs5A7HY8NwyVstO3B7gBWOXumUpKgod2Cq6fv9E3XID6KK', 'Mustaq.mhd@gmail.com', 'Mustaq', 'Mohamed', 'Admin', 'Driver Rates, Deadline', 0, '1d6a3bd20d1cea42c7537a7ffe3dcfadd749f7459d8d82497a22a129144340bac7cf4df562e68ef51def92c4c8f828866ed0cf9505fb22c72bb88205eb2ca11f'),
(4, '', 'Test123', '$2a$10$SSoJdirsOhNuR3jw4tV.yuY0es6W0bWsb78KL5P7YSAUSY4Oq.GM2', 'test123@gmail.com', 'Test123', 'Midcity', 'Customer', 'Deadline, Driver Rates', 0, NULL),
(5, '', 'Test456', '$2a$10$cIZQ27TbbSCs2GvlkG8jYeDUjbTwzOJa3TqYMvQU40bVwXrDqC6b6', 'test456@gmail.com', 'Test456', 'Mid', 'Driver', 'Deadline', 0, '2e2c0de5fa1c2b2281fc05d52533ef8e5ce893043f566df681011878c5d737ad43ef5d283c64db9c5061f99361b04ca8bd38534fc28d36de85359097da277bbd');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE `vehicle_master` (
  `record_id` int(4) NOT NULL,
  `vehicle_id` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_master`
--

CREATE TABLE `vendor_master` (
  `record_id` int(4) NOT NULL,
  `vendor_id` varchar(15) NOT NULL,
  `vendor_name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `vehicle_id` varchar(15) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessorial_charge_master`
--
ALTER TABLE `accessorial_charge_master`
  ADD PRIMARY KEY (`acc_charge_id`),
  ADD UNIQUE KEY `acc_charge_id` (`acc_charge_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `chassis_master`
--
ALTER TABLE `chassis_master`
  ADD PRIMARY KEY (`chassis_id`),
  ADD UNIQUE KEY `chassis_id` (`chassis_id`);

--
-- Indexes for table `city_master`
--
ALTER TABLE `city_master`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_code` (`state_code`);

--
-- Indexes for table `container_chassis_mgmt`
--
ALTER TABLE `container_chassis_mgmt`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `container_id` (`container_id`,`chassis_id`),
  ADD KEY `chassis_id` (`chassis_id`);

--
-- Indexes for table `container_master`
--
ALTER TABLE `container_master`
  ADD PRIMARY KEY (`container_id`),
  ADD UNIQUE KEY `container_id` (`container_id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`order_i`);

--
-- Indexes for table `drivertype_master`
--
ALTER TABLE `drivertype_master`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `driver_type` (`driver_type`);

--
-- Indexes for table `driver_master`
--
ALTER TABLE `driver_master`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `driver_id` (`driver_id`),
  ADD KEY `city_code` (`state_code`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `driver_type` (`driver_type`);

--
-- Indexes for table `general_driver_rate_master`
--
ALTER TABLE `general_driver_rate_master`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `leg_type` (`leg_type`,`driver_type`),
  ADD KEY `driver_type` (`driver_type`);

--
-- Indexes for table `general_route_rate_master`
--
ALTER TABLE `general_route_rate_master`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `order_type` (`order_type`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`order_i`);

--
-- Indexes for table `legtype_master`
--
ALTER TABLE `legtype_master`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `leg_type` (`leg_type`),
  ADD UNIQUE KEY `leg_type_2` (`leg_type`);

--
-- Indexes for table `leg_mgmt`
--
ALTER TABLE `leg_mgmt`
  ADD PRIMARY KEY (`leg_id`),
  ADD UNIQUE KEY `leg_id` (`leg_id`),
  ADD KEY `leg_type` (`leg_type`),
  ADD KEY `container_id` (`container_id`),
  ADD KEY `chassis_id` (`chassis_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `locationtype_master`
--
ALTER TABLE `locationtype_master`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `location_type` (`location_type`);

--
-- Indexes for table `location_master`
--
ALTER TABLE `location_master`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`);

--
-- Indexes for table `ordertype_master`
--
ALTER TABLE `ordertype_master`
  ADD PRIMARY KEY (`record_id`),
  ADD UNIQUE KEY `order_type` (`order_type`);

--
-- Indexes for table `order_mgmt`
--
ALTER TABLE `order_mgmt`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `order_type` (`order_type`),
  ADD KEY `leg_id` (`leg_id`),
  ADD KEY `chassis_id` (`chassis_id`),
  ADD KEY `container_id` (`container_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `route_master`
--
ALTER TABLE `route_master`
  ADD PRIMARY KEY (`route_id`),
  ADD UNIQUE KEY `route_id` (`route_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`state_code`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `vendor_master`
--
ALTER TABLE `vendor_master`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessorial_charge_master`
--
ALTER TABLE `accessorial_charge_master`
  MODIFY `acc_charge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chassis_master`
--
ALTER TABLE `chassis_master`
  MODIFY `chassis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `container_chassis_mgmt`
--
ALTER TABLE `container_chassis_mgmt`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `container_master`
--
ALTER TABLE `container_master`
  MODIFY `container_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drivertype_master`
--
ALTER TABLE `drivertype_master`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_master`
--
ALTER TABLE `driver_master`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_driver_rate_master`
--
ALTER TABLE `general_driver_rate_master`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_route_rate_master`
--
ALTER TABLE `general_route_rate_master`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legtype_master`
--
ALTER TABLE `legtype_master`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leg_mgmt`
--
ALTER TABLE `leg_mgmt`
  MODIFY `leg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locationtype_master`
--
ALTER TABLE `locationtype_master`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location_master`
--
ALTER TABLE `location_master`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordertype_master`
--
ALTER TABLE `ordertype_master`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_mgmt`
--
ALTER TABLE `order_mgmt`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_master`
--
ALTER TABLE `route_master`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_master`
--
ALTER TABLE `vendor_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessorial_charge_master`
--
ALTER TABLE `accessorial_charge_master`
  ADD CONSTRAINT `accessorial_charge_master_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_master` (`cust_id`);

--
-- Constraints for table `city_master`
--
ALTER TABLE `city_master`
  ADD CONSTRAINT `city_master_ibfk_1` FOREIGN KEY (`state_code`) REFERENCES `state_master` (`state_code`);

--
-- Constraints for table `container_chassis_mgmt`
--
ALTER TABLE `container_chassis_mgmt`
  ADD CONSTRAINT `container_chassis_mgmt_ibfk_1` FOREIGN KEY (`chassis_id`) REFERENCES `chassis_master` (`chassis_id`),
  ADD CONSTRAINT `container_chassis_mgmt_ibfk_2` FOREIGN KEY (`container_id`) REFERENCES `container_master` (`container_id`);

--
-- Constraints for table `driver_master`
--
ALTER TABLE `driver_master`
  ADD CONSTRAINT `driver_master_ibfk_2` FOREIGN KEY (`state_code`) REFERENCES `state_master` (`state_code`),
  ADD CONSTRAINT `driver_master_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`city_id`),
  ADD CONSTRAINT `driver_master_ibfk_4` FOREIGN KEY (`driver_type`) REFERENCES `drivertype_master` (`driver_type`);

--
-- Constraints for table `general_driver_rate_master`
--
ALTER TABLE `general_driver_rate_master`
  ADD CONSTRAINT `general_driver_rate_master_ibfk_1` FOREIGN KEY (`driver_type`) REFERENCES `drivertype_master` (`driver_type`),
  ADD CONSTRAINT `general_driver_rate_master_ibfk_2` FOREIGN KEY (`leg_type`) REFERENCES `legtype_master` (`leg_type`);

--
-- Constraints for table `general_route_rate_master`
--
ALTER TABLE `general_route_rate_master`
  ADD CONSTRAINT `general_route_rate_master_ibfk_1` FOREIGN KEY (`order_type`) REFERENCES `ordertype_master` (`order_type`),
  ADD CONSTRAINT `general_route_rate_master_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route_master` (`route_id`);

--
-- Constraints for table `leg_mgmt`
--
ALTER TABLE `leg_mgmt`
  ADD CONSTRAINT `leg_mgmt_ibfk_5` FOREIGN KEY (`leg_type`) REFERENCES `legtype_master` (`leg_type`),
  ADD CONSTRAINT `leg_mgmt_ibfk_6` FOREIGN KEY (`container_id`) REFERENCES `container_master` (`container_id`),
  ADD CONSTRAINT `leg_mgmt_ibfk_7` FOREIGN KEY (`chassis_id`) REFERENCES `chassis_master` (`chassis_id`),
  ADD CONSTRAINT `leg_mgmt_ibfk_8` FOREIGN KEY (`driver_id`) REFERENCES `driver_master` (`driver_id`),
  ADD CONSTRAINT `leg_mgmt_ibfk_9` FOREIGN KEY (`order_id`) REFERENCES `order_mgmt` (`order_id`);

--
-- Constraints for table `location_master`
--
ALTER TABLE `location_master`
  ADD CONSTRAINT `location_master_ibfk_1` FOREIGN KEY (`location_type`) REFERENCES `locationtype_master` (`location_type`);

--
-- Constraints for table `order_mgmt`
--
ALTER TABLE `order_mgmt`
  ADD CONSTRAINT `order_mgmt_ibfk_10` FOREIGN KEY (`order_id`) REFERENCES `order_mgmt` (`order_id`),
  ADD CONSTRAINT `order_mgmt_ibfk_5` FOREIGN KEY (`order_type`) REFERENCES `ordertype_master` (`order_type`),
  ADD CONSTRAINT `order_mgmt_ibfk_6` FOREIGN KEY (`chassis_id`) REFERENCES `chassis_master` (`chassis_id`),
  ADD CONSTRAINT `order_mgmt_ibfk_7` FOREIGN KEY (`container_id`) REFERENCES `container_master` (`container_id`),
  ADD CONSTRAINT `order_mgmt_ibfk_8` FOREIGN KEY (`cust_id`) REFERENCES `customer_master` (`cust_id`),
  ADD CONSTRAINT `order_mgmt_ibfk_9` FOREIGN KEY (`driver_id`) REFERENCES `driver_master` (`driver_id`);

--
-- Constraints for table `route_master`
--
ALTER TABLE `route_master`
  ADD CONSTRAINT `route_master_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_master` (`cust_id`);

--
-- Constraints for table `vendor_master`
--
ALTER TABLE `vendor_master`
  ADD CONSTRAINT `vendor_master_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_master` (`vehicle_id`),
  ADD CONSTRAINT `vendor_master_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
