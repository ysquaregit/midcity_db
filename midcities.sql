-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 10:00 AM
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
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `role` text NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`id`, `email`, `first_name`, `last_name`, `role`, `permissions`) VALUES
(2, 'asd@gm.cvb', 'qwe', 'qwe', 'Dispatch', 'Route Rate,Driver Rates,Chassis Rental'),
(1, 'jbk@#mail.c', 'jbk', 'KUKMAR', 'OrderEntry', 'Driver Management,Route Rate'),
(3, 'knum$asda', 'jbk', 'bharath', 'Dispatch', 'Deadline,Driver Management,Route Rate,Driver Rates');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`email`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `user_management`
--
ALTER TABLE `user_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
