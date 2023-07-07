
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2b$12$d0V8RjfotuSOnqUElrdwo.qIhhodmrwbLfeWyFgITUej.YgG3mWFe');

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Air India', 60),
(2, 'Air India Express', 60),
(3, 'AIX Connect', 60),
(4, 'Akasa Air', 60),
(5, 'Go First', 60),
(9, 'IndiGo', 60),
(10, 'GoldStar Airways', 60),
(11, 'SpiceJet', 60),
(12, 'Vistara', 60),
(13, 'Star Air', 60),
(14, 'Delta Airlines', 60);

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cities` (`city`) VALUES
('Mumbai'),
('Delhi'),
('Bangalore'),
('Hyderabad'),
('Ahmedabad'),
('Chennai'),
('Kolkata'),
('Surat'),
('Pune'),
('Jaipur'),
('Lucknow'),
('Kanpur'),
('Nagpur'),
('Indore'),
('Thane'),
('Visakhapatnam'),
('Vadodara'),
('Rajkot');

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT '20',
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(1, 1, '2023-06-30 10:03:00', '2023-06-30 09:01:00', 'Mumbai', 'Delhi', 'Air India', '60', '1', 175, '', '', '21B', 20, ''),
(2, 1, '2023-07-05 11:15:00', '2023-07-05 10:05:00', 'Bangalore', 'Hyderabad', 'Air India', '55', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2023-07-05 12:13:00', '2023-07-05 10:13:00', 'Ahmedabad', 'Hyderabad', 'Air India Express', '54', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2023-07-05 16:30:00', '2023-07-05 15:26:00', 'Ahmedabad', 'Bangalore', 'AIX Connect', '60', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2023-07-05 15:30:00', '2023-07-05 12:30:00', 'Chennai', 'Bangalore', 'Air India Express', '42', '3', 326, '', '', '', 20, ''),
(6, 1, '2023-07-05 17:55:00', '2023-07-05 15:30:00', 'Chennai', 'Ahmedabad', 'Air India Express', '51', '2', 285, '', '', '', 20, ''),
(7, 1, '2023-07-05 20:50:00', '2023-07-05 18:50:00', 'Kolkata', 'Chennai', 'Air India Express', '30', '2', 265, '', '', '', 20, ''),
(8, 1, '2023-07-06 00:55:00', '2023-07-05 17:00:00', 'Surat', 'Kolkata', 'Akasa Air', '18', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2023-07-05 17:09:00', '2023-07-05 16:05:00', 'Chennai', 'Hyderabad', 'Go First', '21', '1', 155, '', '', '', 20, ''),
(10, 1, '2023-07-06 13:10:00', '2023-07-06 11:05:00', 'Pune', 'Bangalore', 'Air India', '16', '2', 200, '', '', '', 20, ''),
(11, 1, '2023-07-05 19:10:00', '2023-07-05 18:05:00', 'Jaipur', 'Lucknow', 'AIX Connect', '22', '1', 165, '', '', '', 20, ''),
(12, 1, '2023-07-05 21:10:00', '2023-07-05 19:05:00', 'Mumbai', 'Kanpur', 'Go First', '56', '2', 320, '', '', '', 20, ''),
(13, 1, '2023-07-05 13:50:00', '2023-07-05 12:56:00', 'Hyderabad', 'Mumbai', 'Air India', '18', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2023-07-05 11:08:00', '2023-07-05 09:07:00', 'Surat', 'Delhi', 'Air India Express', '12', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2023-07-05 10:10:00', '2023-07-05 08:10:00', 'Ahmedabad', 'Mumbai', 'Go First', '28', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2023-07-05 18:10:00', '2023-07-05 16:09:00', 'Lucknow', 'Delhi', 'Akasa Air', '16', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2023-07-05 17:10:00', '2023-07-05 16:10:00', 'Delhi', 'Chennai', 'AIX Connect', '29', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2023-07-05 19:15:00', '2023-07-05 16:12:00', 'Delhi', 'Lucknow', 'Air India', '49', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2023-07-05 23:40:00', '2023-07-05 20:31:00', 'Bangalore', 'Surat', 'IndiGo', '45', '3', 295, '', '', '', 20, ''),
(20, 1, '2023-07-05 23:58:00', '2023-07-05 22:14:00', 'Nagpur', 'Visakhapatnam', 'IndiGo', '36', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2023-07-06 10:14:00', '2023-07-05 23:15:00', 'Kolkata', 'Vadodara', 'Vistara', '24', '11', 965, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 1, 1, '9666602644', '1995-01-01 00:00:00', 'Satya', 'Bhaskara Pramod', 'Karasi'),
(2, 2, 3, '6300002003', '1995-02-13 00:00:00', 'Chaitanya', 'l', 'Kolan'),
(3, 3, 2, '8985622332', '1994-06-21 00:00:00', 'Rama', 'Krishna', 'Karasi'),
(4, 4, 2, '8712123860', '1995-05-16 00:00:00', 'Lalitha', 'l', 'Karasi'),
(5, 2, 8, '9030114243', '1995-02-13 00:00:00', 'Sairam', 'l', 'Karasi'),
(6, 2, 20, '7382929666', '1995-02-13 00:00:00', 'Deepika', 'l', 'Bommareddy');


CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 185),
('4204558500014587', 1, 1, '02/25', 350);

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E');

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Satya', 'satya24@gmail.com', '$2b$12$d0V8RjfotuSOnqUElrdwo.qIhhodmrwbLfeWyFgITUej.YgG3mWFe'),
(2, 'Deepika', 'Deepika@gmail.com', '$2b$12$d0V8RjfotuSOnqUElrdwo.qIhhodmrwbLfeWyFgITUej.YgG3mWFe'),
(3, 'Lalitha', 'Lalitha@gmail.com', '$2b$12$d0V8RjfotuSOnqUElrdwo.qIhhodmrwbLfeWyFgITUej.YgG3mWFe'),
(4, 'Sairam', 'Sairam0@gmail.com', '$2b$12$d0V8RjfotuSOnqUElrdwo.qIhhodmrwbLfeWyFgITUej.YgG3mWFe');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE;
