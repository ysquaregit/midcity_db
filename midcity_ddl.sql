-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 08:05 PM
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
-- Table structure for table `accessorial_charges`
--

CREATE TABLE `accessorial_charges` (
  `name` varchar(50) NOT NULL,
  `a_interval` varchar(20) NOT NULL,
  `value` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessorial_charges`
--

INSERT INTO `accessorial_charges` (`name`, `a_interval`, `value`, `description`, `rate`) VALUES
('BHARATH', 'Hours', 7, 'hi ', '123'),
('Demurrage', 'Months', 5, 'blah', '$200');

-- --------------------------------------------------------

--
-- Table structure for table `chassis_management`
--

CREATE TABLE `chassis_management` (
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zipcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chassis_management`
--

INSERT INTO `chassis_management` (`name`, `address`, `street`, `city`, `state`, `zipcode`) VALUES
('moon star steel', 'Washington', 'west st', 'lity', 'MO', 12311);

-- --------------------------------------------------------

--
-- Table structure for table `container_management`
--

CREATE TABLE `container_management` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `street` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `preferred_chassis_rental` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container_management`
--

INSERT INTO `container_management` (`name`, `address`, `street`, `city`, `state`, `zip_code`, `preferred_chassis_rental`) VALUES
('Con1', 'LOCATION', 'STREET', 'CITY', 'NY', 34123, 'Midwest Chassis Central,Bernices Central');

-- --------------------------------------------------------

--
-- Table structure for table `customer_management`
--

CREATE TABLE `customer_management` (
  `id` int(11) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `b_street` varchar(50) NOT NULL,
  `b_city` varchar(15) NOT NULL,
  `b_zip_code` int(11) NOT NULL,
  `b_state` varchar(15) NOT NULL,
  `p_street` varchar(50) NOT NULL,
  `p_city` varchar(15) NOT NULL,
  `p_zip_code` int(11) NOT NULL,
  `p_state` varchar(15) NOT NULL,
  `point_of_contact` varchar(50) NOT NULL,
  `poc_phone` int(11) NOT NULL,
  `business_phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_management`
--

INSERT INTO `customer_management` (`id`, `business_name`, `b_street`, `b_city`, `b_zip_code`, `b_state`, `p_street`, `p_city`, `p_zip_code`, `p_state`, `point_of_contact`, `poc_phone`, `business_phone`, `email`, `fax`) VALUES
(1, 'Aerospace', 'Milky way', 'MIly st', 75644, 'MO', 'Galaxy Street', 'Galaxy City', 12312, 'MO', 'Alien', 123435, 989786, 'alien@space.com', 78565),
(2, 'copper', 'east st', 'nellai', 56767, 'tn', 'east st', 'nellai', 67788, 'tn', 'admin', 876543219, 2147483647, 'cc@mail.com', 3422),
(3, 'iron', 'west st', 'kodai', 67899, 'fl', 'west st', 'kodai', 98765, 'fl', 'driver', 987698765, 123456789, 'aa@mail.com', 564),
(4, 'sliver', 'north st', 'pondy', 343454, 'gn', 'north st', 'pondy', 676789, 'gn', 'driver', 765432112, 124321341, 'abc@gmail.com', 3256);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dead`
-- (See below for the actual view)
--
CREATE TABLE `dead` (
`name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `deadline`
--

CREATE TABLE `deadline` (
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `d_interval` varchar(50) NOT NULL,
  `d_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deadline`
--

INSERT INTO `deadline` (`name`, `description`, `d_interval`, `d_value`) VALUES
('jon', 'need', 'less', 10),
('Rob', 'request', 'more', 40),
('San', 'needed', 'less', 15);

-- --------------------------------------------------------

--
-- Table structure for table `driver_management`
--

CREATE TABLE `driver_management` (
  `truck_d` varchar(20) NOT NULL,
  `driver` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `current_order` varchar(50) NOT NULL,
  `sts` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `shipper` varchar(25) NOT NULL,
  `consignee` varchar(25) NOT NULL,
  `d_date` date NOT NULL,
  `d_time` time NOT NULL,
  `equip_type` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `nextel_id` int(11) NOT NULL,
  `truck` varchar(25) NOT NULL,
  `sft` varchar(15) NOT NULL,
  `haz` varchar(25) NOT NULL,
  `lic_exp` date NOT NULL,
  `ins_exp` date NOT NULL,
  `med_exp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_management`
--

INSERT INTO `driver_management` (`truck_d`, `driver`, `name`, `current_order`, `sts`, `type`, `shipper`, `consignee`, `d_date`, `d_time`, `equip_type`, `phone`, `nextel_id`, `truck`, `sft`, `haz`, `lic_exp`, `ins_exp`, `med_exp`) VALUES
('truck_a', 'jon', 'jon son', 'settle', 'progress', 'a-type', 'MNV', 'consignee_a', '2018-06-07', '01:30:40', 'ask', 1234565678, 222, 'big_truck', 'day', 'water', '2018-06-30', '2018-06-30', '2018-06-30'),
('truck_b', 'rob', 'robinson', 'deliver', 'packing', 'b_type', 'ABC', 'consignee_b', '2018-06-27', '04:10:18', 'say', 234524523, 323, 'med_truck', 'night', 'goods', '2018-06-30', '2018-06-29', '2018-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `general_driver_rates`
--

CREATE TABLE `general_driver_rates` (
  `leg_type` varchar(20) NOT NULL,
  `driver_type` varchar(20) NOT NULL,
  `rate_per_mile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_driver_rates`
--

INSERT INTO `general_driver_rates` (`leg_type`, `driver_type`, `rate_per_mile`) VALUES
('Chassis', 'Lease Purchase', '$123'),
('Loaded', 'Lease Purchase', '$122');

-- --------------------------------------------------------

--
-- Table structure for table `general_route_rates`
--

CREATE TABLE `general_route_rates` (
  `pick_up` varchar(50) NOT NULL,
  `delivery` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `miles` int(11) NOT NULL,
  `rate_per_mile` varchar(10) NOT NULL,
  `total_cost` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_route_rates`
--

INSERT INTO `general_route_rates` (`pick_up`, `delivery`, `order_type`, `miles`, `rate_per_mile`, `total_cost`) VALUES
('ONROAD', 'ONROUTE', 'Domestic Inbound', 245, '86', '12344'),
('St.Joseph', 'GRADNEr', 'International Outbound', 100, '$3.5', '$350');

-- --------------------------------------------------------

--
-- Table structure for table `location_management`
--

CREATE TABLE `location_management` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_management`
--

INSERT INTO `location_management` (`id`, `type`, `name`, `address`, `street`, `city`, `state`, `zip_code`, `company_name`) VALUES
(1, 'Home Yard', 'CUSTOMER', 'AMERICA', 'SOUTH 5th st', 'Kiete', 'MO', 12112, 'AEROSPACE'),
(2, 'Chassis Depot', 'ITS ME', 'GOOGLE LOCATION', 'GOOGLE STREET', 'GOOGLE CITY', 'MO', 5432, 'GOOGLE'),
(32, 'Home Yard', 'BHARATH', 'CMBT', 'WEST', 'CHENNAI', 'KS', 12346, 'JBK ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(4) NOT NULL,
  `city_code` varchar(5) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_code`, `city_name`, `state_code`) VALUES
(1, 'AVP', 'Avon Park', 'FL'),
(2, 'BOR', 'Boca Raton', 'FL'),
(3, 'COC', 'Cocoa', 'FL'),
(4, 'JUP', 'Jupiter', 'FL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_master`
--

CREATE TABLE `tbl_customer_master` (
  `record_id` int(4) NOT NULL,
  `cust_id` varchar(15) NOT NULL,
  `title_code` varchar(4) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` int(1) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city_id` int(4) DEFAULT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_master`
--

INSERT INTO `tbl_customer_master` (`record_id`, `cust_id`, `title_code`, `first_name`, `middle_name`, `last_name`, `gender`, `address`, `zip_code`, `city_id`, `state_code`, `contact_number`, `email`) VALUES
(1, '200', 'bus', 'ijaz', 'A', 'ahameed', 1, 'home', '106', 1, 'FL', '9876543210', 'ahamedijaz@gmail.com'),
(2, '201', 'bus', 'barath', 'j', 'kumar', 1, 'ground', '81', 2, 'FL', '9876543211', 'jbk@email.com'),
(3, '202', 'bike', 'yasen', 'K', 'mohamed', 1, 'ground', '81', 2, 'FL', '9876543211', 'jbk@email.com'),
(4, '206', 'flim', 'ram', 'R', 'Kumar', 2, 'kk nagar', '645', 4, 'TN', '8765432112', 'am@gmai.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_master`
--

CREATE TABLE `tbl_driver_master` (
  `record_id` int(4) NOT NULL,
  `driver_id` varchar(15) NOT NULL,
  `title_code` varchar(4) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` int(1) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city_id` int(4) DEFAULT NULL,
  `state_code` varchar(10) DEFAULT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fuel_card_number` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `driver_pic` blob NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `license_exp_date` datetime NOT NULL,
  `spl_category` varchar(50) DEFAULT NULL,
  `medical_card_number` varchar(50) NOT NULL,
  `support_document` int(1) NOT NULL,
  `driver_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordertype_master`
--

CREATE TABLE `tbl_ordertype_master` (
  `record_id` int(4) NOT NULL,
  `order_type` varchar(15) NOT NULL,
  `order_type_cat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pass_security_questions`
--

CREATE TABLE `tbl_pass_security_questions` (
  `pass_ques_id` int(2) NOT NULL,
  `pass_question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_route_master`
--

CREATE TABLE `tbl_route_master` (
  `record_id` int(4) NOT NULL,
  `route_id` varchar(15) NOT NULL,
  `cust_id` varchar(15) DEFAULT NULL,
  `start_loc` varchar(50) NOT NULL,
  `des_loc` varchar(50) NOT NULL,
  `rate` double(5,2) NOT NULL,
  `distance` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_code` varchar(10) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_code`, `state_name`) VALUES
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
-- Table structure for table `tbl_vehicle_master`
--

CREATE TABLE `tbl_vehicle_master` (
  `record_id` int(4) NOT NULL,
  `vehicle_id` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor_master`
--

CREATE TABLE `tbl_vendor_master` (
  `record_id` int(4) NOT NULL,
  `vendor_id` varchar(15) NOT NULL,
  `vendor_name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `vehicle_id` varchar(15) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `city_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE `user_management` (
  `id` int(11) NOT NULL,
  `email` varchar(512) NOT NULL,
  `first_name` varchar(512) NOT NULL,
  `last_name` varchar(512) NOT NULL,
  `role` varchar(512) NOT NULL,
  `permissions` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`id`, `email`, `first_name`, `last_name`, `role`, `permissions`) VALUES
(7, 'bharath@gm.com', 'jbk', 'Kumar', 'OrderEntry', 'Driver Management,Route Rate,Driver Rates'),
(2, 'mustaq.mhd@gmail.com', 'Mustaq', 'Mohamed ', 'Admin', 'Deadline,Accessorial Charges'),
(8, 'test3@gmail.com', 'test', 'test2', 'OrderEntry', 'Route Rate,Driver Rates,Chassis Management'),
(5, 'user56@gm.in', 'User56', 'lname5', 'Admin', 'Driver Management'),
(6, 'user7@gm.in', 'User7', 'lname7', 'Admin', 'Chassis Rental'),
(1, 'user@midcity.com', 'USER-1', 'NAME U', 'Dispatch', 'Accessorial Charges');

-- --------------------------------------------------------

--
-- Structure for view `dead`
--
DROP TABLE IF EXISTS `dead`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dead`  AS  select `deadline`.`name` AS `name` from `deadline` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessorial_charges`
--
ALTER TABLE `accessorial_charges`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `chassis_management`
--
ALTER TABLE `chassis_management`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `container_management`
--
ALTER TABLE `container_management`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `customer_management`
--
ALTER TABLE `customer_management`
  ADD PRIMARY KEY (`business_name`);

--
-- Indexes for table `deadline`
--
ALTER TABLE `deadline`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `driver_management`
--
ALTER TABLE `driver_management`
  ADD PRIMARY KEY (`truck_d`);

--
-- Indexes for table `general_driver_rates`
--
ALTER TABLE `general_driver_rates`
  ADD PRIMARY KEY (`leg_type`);

--
-- Indexes for table `general_route_rates`
--
ALTER TABLE `general_route_rates`
  ADD PRIMARY KEY (`pick_up`);

--
-- Indexes for table `location_management`
--
ALTER TABLE `location_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_code` (`state_code`);

--
-- Indexes for table `tbl_customer_master`
--
ALTER TABLE `tbl_customer_master`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `state_code` (`state_code`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `tbl_driver_master`
--
ALTER TABLE `tbl_driver_master`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `city_code` (`state_code`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `tbl_ordertype_master`
--
ALTER TABLE `tbl_ordertype_master`
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `tbl_route_master`
--
ALTER TABLE `tbl_route_master`
  ADD PRIMARY KEY (`route_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_code`);

--
-- Indexes for table `tbl_vehicle_master`
--
ALTER TABLE `tbl_vehicle_master`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `tbl_vendor_master`
--
ALTER TABLE `tbl_vendor_master`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `record_id` (`record_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `user_management`
--
ALTER TABLE `user_management`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location_management`
--
ALTER TABLE `location_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_customer_master`
--
ALTER TABLE `tbl_customer_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_driver_master`
--
ALTER TABLE `tbl_driver_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ordertype_master`
--
ALTER TABLE `tbl_ordertype_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_route_master`
--
ALTER TABLE `tbl_route_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vehicle_master`
--
ALTER TABLE `tbl_vehicle_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_vendor_master`
--
ALTER TABLE `tbl_vendor_master`
  MODIFY `record_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`state_code`) REFERENCES `tbl_state` (`state_code`);

--
-- Constraints for table `tbl_customer_master`
--
ALTER TABLE `tbl_customer_master`
  ADD CONSTRAINT `tbl_customer_master_ibfk_2` FOREIGN KEY (`state_code`) REFERENCES `tbl_state` (`state_code`),
  ADD CONSTRAINT `tbl_customer_master_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`);

--
-- Constraints for table `tbl_driver_master`
--
ALTER TABLE `tbl_driver_master`
  ADD CONSTRAINT `tbl_driver_master_ibfk_2` FOREIGN KEY (`state_code`) REFERENCES `tbl_state` (`state_code`),
  ADD CONSTRAINT `tbl_driver_master_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`);

--
-- Constraints for table `tbl_route_master`
--
ALTER TABLE `tbl_route_master`
  ADD CONSTRAINT `tbl_route_master_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `tbl_customer_master` (`cust_id`);

--
-- Constraints for table `tbl_vendor_master`
--
ALTER TABLE `tbl_vendor_master`
  ADD CONSTRAINT `tbl_vendor_master_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `tbl_vehicle_master` (`vehicle_id`),
  ADD CONSTRAINT `tbl_vendor_master_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
