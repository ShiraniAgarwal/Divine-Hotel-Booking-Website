-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'godlike', '12345');



CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(5, 'IMG_52177.png'),
(6, 'IMG_83213.png'),
(7, 'IMG_19210.png'),
(8, 'IMG_41144.png'),
(9, 'IMG_47175.png'),
(10, 'IMG_19387.png');


CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(150) NOT NULL,
  `ph1` bigint(20) NOT NULL,
  `ph2` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fb` varchar(255) NOT NULL,
  `insta` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `ph1`, `ph2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'XYZ, Mumbai, India', 'https://maps.app.goo.gl/W3RZ1ccc1cy3RaAq6', 9997845887, 9997845887, 'abcd012@gmail.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://twitter.com', 'https://maps.app.goo.gl/W3RZ1ccc1cy3RaAq6');


CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(300) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Divine Hotel', 'A Hotel is a place where people visit to eat and drink the food being prepared on the premises and pays for the same. The food is served at the table to have a comfortable visit for your meals. The restaurant offers a menu with various options for your meal, to choose from.', 0);


CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(11, 'Person 1', 'IMG_14650.jpg'),
(14, 'Person 2', 'IMG_25740.jpg'),
(15, 'Person 3', 'IMG_62239.jpg'),
(16, 'Person 4', 'IMG_90019.jpg');

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin', '2014-02-06', 0);

ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);


ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);


ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;


