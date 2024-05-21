
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP DATABASE IF EXISTS webprodatabase;
CREATE DATABASE IF NOT EXISTS `webprodatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webprodatabase`;

CREATE TABLE `Admin_Info` (
	`user_id` INT PRIMARY KEY,
	`fname` VARCHAR(30) NOT NULL,
	`lname` VARCHAR(30) NOT NULL,
	`email` VARCHAR(30) NOT NULL,
	`gender` CHAR(1) NOT NULL,
	`DateofBirth` DATETIME,
	`tel` VARCHAR(11)
);

INSERT INTO `Admin_Info` (`user_id`, `fname`, `lname`, `email`, `gender`, `DateofBirth`, `tel`)
VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', 'M', '1990-01-01', '1234567890'),
(2, 'Jane', 'Doe', 'janedoe@gmail.com', 'F', '1995-02-02', '2345678901'),
(3, 'Bob', 'Smith', 'bobsmith@gmail.com', 'M', '1985-03-03', '3456789012'),
(4, 'Alice', 'Johnson', 'alicejohnson@gmail.com', 'F', '1980-04-04', '4567890123'),
(5, 'Mike', 'Williams', 'mikewilliams@gmail.com', 'M', '1975-05-05', '5678901234'),
(6, 'Samantha', 'Brown', 'samanthabrown@gmail.com', 'F', '2000-06-06', '6789012345'),
(7, 'Tom', 'Davis', 'tomdavis@gmail.com', 'M', '1992-07-07', '7890123456'),
(8, 'Emily', 'Garcia', 'emilygarcia@gmail.com', 'F', '1993-08-08', '8901234567'),
(9, 'David', 'Rodriguez', 'davidrodriguez@gmail.com', 'M', '1987-09-09', '9012345678'),
(10, 'Maria', 'Martinez', 'mariamartinez@gmail.com', 'F', '1996-10-10', '0123456789'),
(11, 'James', 'Hernandez', 'jameshernandez@gmail.com', 'M', '1983-11-11', '1234567890'),
(12, 'Isabella', 'Lopez', 'isabellalopez@gmail.com', 'F', '1982-12-12', '2345678901'),
(13, 'William', 'Gonzalez', 'williamgonzalez@gmail.com', 'M', '1978-01-13', '3456789012'),
(14, 'Sophia', 'Perez', 'sophiaperez@gmail.com', 'F', '1973-02-14', '4567890123'),
(15, 'Michael', 'Gomez', 'michaelgomez@gmail.com', 'M', '1968-03-15', '5678901234'),
(16, 'Olivia', 'Sanchez', 'oliviasanchez@gmail.com', 'F', '2003-04-16', '6789012345'),
(17, 'Christopher', 'Rivera', 'christopherrivera@gmail.com', 'M', '1991-05-17', '7890123456'),
(18, 'Ava', 'Lee', 'avalee@gmail.com', 'F', '1990-06-18', '8901234567'),
(19, 'Joseph', 'Garcia', 'josephgarcia@gmail.com', 'M', '1995-07-19', '9012345678'),
(20, 'Sophie', 'Taylor', 'sophietaylor@gmail.com', 'F', '1997-07-20', '0123456789'),
(21, 'Jacob', 'Hernandez', 'jacobhernandez@gmail.com', 'M', '1993-08-01', '1234567890'),
(22, 'Victoria', 'Lopez', 'victorialopez@gmail.com', 'F', '1998-06-02', '2345678901'),
(23, 'Ethan', 'Garcia', 'ethangarcia@gmail.com', 'M', '1989-04-03', '3456789012'),
(24, 'Natalie', 'Martinez', 'nataliemartinez@gmail.com', 'F', '1984-02-04', '4567890123'),
(25, 'Daniel', 'Davis', 'danieldavis@gmail.com', 'M', '1979-12-05', '5678901234'),
(26, 'Grace', 'Rodriguez', 'gracerodriguez@gmail.com', 'F', '1974-10-06', '6789012345'),
(27, 'Benjamin', 'Perez', 'benjaminperez@gmail.com', 'M', '1969-08-07', '7890123456'),
(28, 'Chloe', 'Gomez', 'chloegomez@gmail.com', 'F', '2004-06-08', '8901234567'),
(29, 'Mason', 'Sanchez', 'masonsanchez@gmail.com', 'M', '1996-04-09', '9012345678'),
(30, 'Lillian', 'Rivera', 'lillianrivera@gmail.com', 'F', '1982-02-10', '0123456789'),
(31, 'Noah', 'Lee', 'noahlee@gmail.com', 'M', '1977-12-11', '1234567890'),
(32, 'Avery', 'Johnson', 'averyjohnson@gmail.com', 'F', '2002-10-12', '2345678901'),
(33, 'Alexander', 'Williams', 'alexanderwilliams@gmail.com', 'M', '1991-08-13', '3456789012'),
(34, 'Evelyn', 'Brown', 'evelynbrown@gmail.com', 'F', '1986-06-14', '4567890123'),
(35, 'William', 'Smith', 'williamsmith@gmail.com', 'M', '1981-04-15', '5678901234'),
(36, 'Madison', 'Doe', 'madisondoe@gmail.com', 'F', '1976-02-16', '6789012345'),
(37, 'Andrew', 'Jones', 'andrewjones@gmail.com', 'M', '1971-12-17', '7890123456'),
(38, 'Ella', 'Martin', 'ellamartin@gmail.com', 'F', '2006-10-18', '8901234567'),
(39, 'Joshua', 'Gonzalez', 'joshuagonzalez@gmail.com', 'M', '1999-08-19', '9012345678'),
(40, 'Luke', 'Anderson', 'lukeanderson@gmail.com', 'M', '1992-03-21', '1234567890');

CREATE TABLE `LOGIN` (
  `USERNAME` varchar(10)  NOT NULL,
  `PASSWORD` varchar(35)  NOT NULL,
  `ROLE`	 varchar(20)  NOT NULL,
  `PREFERENCES` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30)  NOT NULL
);

INSERT INTO `LOGIN` (`USERNAME`, `PASSWORD`, `ROLE`, `PREFERENCES`, `EMAIL`) VALUES
('johndoe', 'nfmrtn', 'Admin', 'pref1', 'johndoe@gmail.com'),
('janedoe', 'dfjnkjr', 'Admin', 'pref2', 'janedoe@gmail.com'),
('bobsmith', 'njkdfkj', 'Admin', 'pref3', 'bobsmith@gmail.com'),
('alicejohnson', 'kjrjreoi', 'Admin', 'pref4', 'alicejohnson@gmail.com'),
('mikewilliams', 'wii4o04', 'Admin', 'pref5', 'mikewilliams@gmail.com'),
('samanthabrown', 'eklferiki4', 'Admin', 'pref6', 'samanthabrown@gmail.com'),
('tomdavis', 'oirt09490', 'Admin', 'pref7', 'tomdavis@gmail.com'),
('emilygarcia', 'jnrfeejiweo', 'Admin', 'pref8', 'emilygarcia@gmail.com'),
('davidrodriguez', '75hgy6udnjri', 'Admin', 'pref9', 'davidrodriguez@gmail.com'),
('mariamartinez', 'rekjio45j', 'Admin', 'pref10', 'mariamartinez@gmail.com'),
('jameshernandez', 'erjktui4yt7', 'Admin', 'pref11', 'jameshernandez@gmail.com'),
('isabellalopez', 'kregjirju83', 'Admin', 'pref12', 'isabellalopez@gmail.com'),
('williamgonzalez', '2384hjujr', 'Admin', 'pref13', 'williamgonzalez@gmail.com'),
('sophiaperez', '294jmkoren', 'Admin', 'pref14', 'sophiaperez@gmail.com'),
('michaelgomez', '3443mjengijr', 'Admin', 'pref15', 'michaelgomez@gmail.com'),
('oliviasanchez', 'reojito404', 'Admin', 'pref16', 'oliviasanchez@gmail.com'),
('christopherrivera', '845ujjfoirij', 'Admin', 'pref17', 'christopherrivera@gmail.com'),
('avalee', 'oreoki999', 'Admin', 'pref18', 'avalee@gmail.com'),
('josephgarcia', 'rii54i9ik', 'Admin', 'pref19', 'josephgarcia@gmail.com'),
('sophietaylor', 'ijo4i4', 'Admin', 'pref20', 'sophietaylor@gmail.com'),
('jacobhernandez', 'erfejnroue9', 'Admin', 'pref21', 'jacobhernandez@gmail.com'),
('victorialopez', '3i4rhju9', 'Admin', 'pref22', 'victorialopez@gmail.com'),
('ethangarcia', 'qwkeo399', 'Admin', 'pref23', 'ethangarcia@gmail.com'),
('nataliemartinez', 'ofjn3oi904', 'Admin', 'pref24', 'nataliemartinez@gmail.com'),
('danieldavis', '3irj094iik', 'Admin', 'pref25', 'danieldavis@gmail.com'),
('gracerodriguez', '23ijeioi4', 'Admin', 'pref26', 'gracerodriguez@gmail.com'),
('benjaminperez', 'a8x2HsR7', 'Admin', 'pref27', 'benjaminperez@gmail.com'),
('chloegomez', 'Q1w2Rt0y', 'Admin', 'pref28', 'chloegomez@gmail.com'),
('masonsanchez', 'sD3fVgH1', 'Admin', 'pref29', 'masonsanchez@gmail.com'),
('lillianrivera', 'kL7m9Np5', 'Admin', 'pref30', 'lillianrivera@gmail.com'),
('noahlee', 'P4o9Yt3i', 'Admin', 'pref31', 'noahlee@gmail.com'),
('averyjohnson', 'e6W7u8X9', 'Admin', 'pref32', 'averyjohnson@gmail.com'),
('alexanderwilliams', 'H5l0K2v3', 'Admin', 'pref33', 'alexanderwilliams@gmail.com'),
('evelynbrown', 'n9B1j8M3', 'Admin', 'pref34', 'evelynbrown@gmail.com'),
('williamsmith', 'T2g7Yh4F', 'Admin', 'pref35', 'williamsmith@gmail.com'),
('madisondoe', 'Q9z6X5c8', 'Admin', 'pref36', 'madisondoe@gmail.com'),
('andrewjones', 'V3b4N6m7', 'Admin', 'pref37', 'andrewjones@gmail.com'),
('ellamartin', 'W8e5R2t1', 'Admin', 'pref38', 'ellamartin@gmail.com'),
('joshuagonzalez', 'A4s1D7f0', 'Admin', 'pref39', 'joshuagonzalez@gmail.com'),
('lukeanderson', 'Z3x6C2v9', 'Admin', 'pref40', 'lukeanderson@gmail.com');


-- category
CREATE TABLE category(
	category_id	INT 	 PRIMARY KEY,
    category	VARCHAR(50)  	 NOT NULL
);

CREATE TABLE `PRODUCT` (
   pid INT PRIMARY KEY,
   category_id INT NOT NULL,
  `BRAND` varchar(10)  NOT NULL,
  `GENDER` varchar(20)  DEFAULT NULL,
  `STATUS` varchar(35)  NOT NULL,
  `INFORMATION` varchar(30) NOT NULL,
  `SIZE` varchar(30) NOT NULL,
  `PRICE_NUM` smallint(5) DEFAULT NULL
);

INSERT INTO category VALUES
(	1,	"t-shirt"),
(	2,	"dress"),
(	3,	"jacket"),
(	4,	"shirt"),
(	5,	"shoes"),
(	6,	"hat"),
(	7,	"acessories");

INSERT INTO `PRODUCT` (`pid`, `category_id`,`BRAND`, `GENDER`, `STATUS`, `INFORMATION`, `SIZE`, `PRICE_NUM`) VALUES
(001, 3, 'Off-White', 'Men', 'In stock', 'Off-White ™ c/o Chicago Bulls Blue Varsity', 'XS', '5562'),
(002, 3, 'Off-White', 'Men', 'In stock', 'Off-White ™ c/o Chicago Bulls Blue Varsity', 'S', '5562'),
(003, 3, 'Off-White', 'Men', 'In stock', 'Off-White ™ c/o Chicago Bulls Blue Varsity', 'M', '5562'),
(004, 3, 'Off-White', 'Men', 'In stock', 'Off-White ™ c/o Chicago Bulls Blue Varsity', 'L', '5562'),
(005, 3, 'Off-White', 'Men', 'In stock', 'Off-White ™ c/o Chicago Bulls Blue Varsity', 'XL', '5562'),
(006, 3, 'Off-White', 'Men', 'In stock', 'Off-White ™ c/o Chicago Bulls Blue Varsity', 'XXL', '5562'),

(007, 1, 'Off-White', 'Men', 'Exclusive', 'Off-White ™ c/o Chicago Bulls T-Shirt', 'XS', '1093'),
(008, 1, 'Off-White', 'Men', 'Exclusive', 'Off-White ™ c/o Chicago Bulls T-Shirt', 'S', '1093'),
(009, 1, 'Off-White', 'Men', 'Exclusive', 'Off-White ™ c/o Chicago Bulls T-Shirt', 'M', '1093'),
(010, 1, 'Off-White', 'Men', 'Exclusive', 'Off-White ™ c/o Chicago Bulls T-Shirt', 'L', '1093'),
(011, 1, 'Off-White', 'Men', 'Exclusive', 'Off-White ™ c/o Chicago Bulls T-Shirt', 'XL', '1093'),
(012, 1, 'Off-White', 'Men', 'Exclusive', 'Off-White ™ c/o Chicago Bulls T-Shirt', 'XXL', '1093'),

(013, 3, 'Maison Margiela', 'Women', 'In stock', 'belted-waistband trench coat', 'XS', '5562'),
(014, 3, 'Maison Margiela', 'Women', 'In stock', 'belted-waistband trench coat', 'S', '5562'),
(015, 3, 'Maison Margiela', 'Women', 'In stock', 'belted-waistband trench coat', 'M', '5562'),
(016, 3, 'Maison Margiela', 'Women', 'In stock', 'belted-waistband trench coat', 'L', '5562'),
(017, 3, 'Maison Margiela', 'Women', 'In stock', 'belted-waistband trench coat', 'XL', '5562'),
(018, 3, 'Maison Margiela', 'Women', 'In stock', 'belted-waistband trench coat', 'XXL', '5562'),

(019, 2, 'Gucci', 'Women', 'New Season', 'polka-dot one-shoulder minidress', 'XS', '3049'),
(020, 2, 'Gucci', 'Women', 'New Season', 'polka-dot one-shoulder minidress', 'S', '3049'),
(021, 2, 'Gucci', 'Women', 'New Season', 'polka-dot one-shoulder minidress', 'M', '3049'),
(022, 2, 'Gucci', 'Women', 'New Season', 'polka-dot one-shoulder minidress', 'L', '3049'),
(023, 2, 'Gucci', 'Women', 'New Season', 'polka-dot one-shoulder minidress', 'XL', '3049'),
(024, 2, 'Gucci', 'Women', 'New Season', 'polka-dot one-shoulder minidress', 'XXL', '3049'),

(025, 2,'Prada', 'Women', 'New Season', 'cable-knit cotton miniskirt', 'XS', '1822'),
(026, 2,'Prada', 'Women', 'New Season', 'cable-knit cotton miniskirt', 'S', '1822'),
(027, 2,'Prada', 'Women', 'New Season', 'cable-knit cotton miniskirt', 'M', '1822'),
(028, 2,'Prada', 'Women', 'New Season', 'cable-knit cotton miniskirt', 'L', '1822'),
(029, 2,'Prada', 'Women', 'New Season', 'cable-knit cotton miniskirt', 'XL', '1822'),
(030, 2,'Prada', 'Women', 'New Season', 'cable-knit cotton miniskirt', 'XXL', '1822'),

(031, 4,'Balenciaga', 'Women', 'New Season', 'logo-print long-sleeve shirt', 'XS', '1655'),
(032, 4,'Balenciaga', 'Women', 'New Season', 'logo-print long-sleeve shirt', 'S', '1655'),
(033, 4,'Balenciaga', 'Women', 'New Season', 'logo-print long-sleeve shirt', 'M', '1655'),
(034, 4,'Balenciaga', 'Women', 'New Season', 'logo-print long-sleeve shirt', 'L', '1655'),
(035, 4,'Balenciaga', 'Women', 'New Season', 'logo-print long-sleeve shirt', 'XL', '1655'),
(036, 4,'Balenciaga', 'Women', 'New Season', 'logo-print long-sleeve shirt', 'XXL', '1655');
