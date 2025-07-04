-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;

--
-- Temporary table structure for view `v_product`
--
DROP TABLE IF EXISTS `v_product`;
DROP VIEW IF EXISTS `v_product`;

--
-- Temporary table structure for view `v_product_list1`
--
DROP TABLE IF EXISTS `v_product_list1`;
DROP VIEW IF EXISTS `v_product_list1`;
CREATE TABLE `v_product_list1` (
  `id` int(10),
  `product_name` varchar(50),
  `mfg_name` varchar(50)
);

--
-- Definition of table `ac_sell`
--

DROP TABLE IF EXISTS `ac_sell`;
CREATE TABLE `ac_sell` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_ac_name_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ac_sell`
--

/*!40000 ALTER TABLE `ac_sell` DISABLE KEYS */;
/*!40000 ALTER TABLE `ac_sell` ENABLE KEYS */;


--
-- Definition of table `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
CREATE TABLE `admin_profile` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_profile`
--

/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
INSERT INTO `admin_profile` (`id`,`full_name`,`email`,`mobile`,`address`,`password`,`status`,`created_at`) VALUES 
 (10,'Super Admin','superadmin@gmail.com','1234567890','Noida','0192023a7bbd73250516f069df18b500',1,'2020-06-18 00:38:43.432266'),
 (11,'Test admin','testadmin@gmail.com','1234567890','New Delhi','0192023a7bbd73250516f069df18b500',1,'2020-06-18 00:39:14.874271'),
 (12,'temp admin','tempadmin@gmail.com','12','Noida','0192023a7bbd73250516f069df18b500',1,'2020-06-18 00:39:52.830541');
/*!40000 ALTER TABLE `admin_profile` ENABLE KEYS */;


--
-- Definition of table `anayet`
--

DROP TABLE IF EXISTS `anayet`;
CREATE TABLE `anayet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anayet`
--

/*!40000 ALTER TABLE `anayet` DISABLE KEYS */;
INSERT INTO `anayet` (`id`,`name`,`password`,`role_id`) VALUES 
 (1,'anayet','2365487',1),
 (2,'ratul','36548795',2);
/*!40000 ALTER TABLE `anayet` ENABLE KEYS */;


--
-- Definition of table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT 0,
  `category_name` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `header_menu` int(10) NOT NULL,
  `footer_menu` int(10) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`,`parent_id`,`category_name`,`menu_link`,`header_menu`,`footer_menu`,`description`) VALUES 
 (63,64,'second','',1,0,' off\r\n   \r\nda'),
 (64,63,'first-chid','',1,0,' \r\n  '),
 (65,0,'first','first',1,0,''),
 (66,0,'first child 1','',1,0,' \r\n   \r\n   \r\n  '),
 (67,65,'first cat','first-cat',1,1,' \r\n  '),
 (68,0,'k','mm',1,0,' \r\n  ');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


--
-- Definition of table `color_setting`
--

DROP TABLE IF EXISTS `color_setting`;
CREATE TABLE `color_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `navbar_background` varchar(255) NOT NULL,
  `sidebar_background` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL,
  `save_button_color` varchar(255) NOT NULL,
  `edit_button_color` varchar(255) NOT NULL,
  `delete_button_color` varchar(255) NOT NULL,
  `view_button_color` varchar(255) NOT NULL,
  `label_text_color` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `color_setting`
--

/*!40000 ALTER TABLE `color_setting` DISABLE KEYS */;
INSERT INTO `color_setting` (`id`,`navbar_background`,`sidebar_background`,`text_color`,`save_button_color`,`edit_button_color`,`delete_button_color`,`view_button_color`,`label_text_color`) VALUES 
 (1,'#0763c5','#0f40b3','#dad7d7','#049a2a','#11ac2b','#c60c0c','#6c6a6a','#434242');
/*!40000 ALTER TABLE `color_setting` ENABLE KEYS */;


--
-- Definition of table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
CREATE TABLE `contact_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_details`
--

/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` (`id`,`email`,`mobile`,`address`,`google_map`,`facebook`,`google_plus`,`twitter`,`linkedin`,`youtube`,`instagram`) VALUES 
 (1,'youremailaddress@gmail.com','1234567890','Noida, Uttar Pradesh, India','Enter You Google Map Code','','','','','','');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;


--
-- Definition of table `contact_email`
--

DROP TABLE IF EXISTS `contact_email`;
CREATE TABLE `contact_email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_email`
--

/*!40000 ALTER TABLE `contact_email` DISABLE KEYS */;
INSERT INTO `contact_email` (`id`,`email`) VALUES 
 (8,'email'),
 (9,'xxxxxxx');
/*!40000 ALTER TABLE `contact_email` ENABLE KEYS */;


--
-- Definition of table `contact_form_email`
--

DROP TABLE IF EXISTS `contact_form_email`;
CREATE TABLE `contact_form_email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_form_email`
--

/*!40000 ALTER TABLE `contact_form_email` DISABLE KEYS */;
INSERT INTO `contact_form_email` (`id`,`email`) VALUES 
 (1,'youremail@gmail.com');
/*!40000 ALTER TABLE `contact_form_email` ENABLE KEYS */;


--
-- Definition of table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `core_ac`
--

DROP TABLE IF EXISTS `core_ac`;
CREATE TABLE `core_ac` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_ac`
--

/*!40000 ALTER TABLE `core_ac` DISABLE KEYS */;
INSERT INTO `core_ac` (`id`,`name`,`price`) VALUES 
 (1,'ac1',1000),
 (2,'ac2',2000),
 (3,'ac3',3000),
 (4,'ac10',10000),
 (5,'Shuvo',3000),
 (6,'Shuvo Bhuiyan',3000);
/*!40000 ALTER TABLE `core_ac` ENABLE KEYS */;


--
-- Definition of table `core_ac_price`
--

DROP TABLE IF EXISTS `core_ac_price`;
CREATE TABLE `core_ac_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_ac_name_id` varchar(45) NOT NULL,
  `core_ac_price_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_ac_price`
--

/*!40000 ALTER TABLE `core_ac_price` DISABLE KEYS */;
INSERT INTO `core_ac_price` (`id`,`core_ac_name_id`,`core_ac_price_id`) VALUES 
 (1,'Shuvo Bhuiyan','1000');
/*!40000 ALTER TABLE `core_ac_price` ENABLE KEYS */;


--
-- Definition of table `core_academy_admissions`
--

DROP TABLE IF EXISTS `core_academy_admissions`;
CREATE TABLE `core_academy_admissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academy_student_id` int(10) unsigned NOT NULL,
  `academy_batch_id` int(10) unsigned NOT NULL,
  `academy_section_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `roll` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_admissions`
--

/*!40000 ALTER TABLE `core_academy_admissions` DISABLE KEYS */;
INSERT INTO `core_academy_admissions` (`id`,`academy_student_id`,`academy_batch_id`,`academy_section_id`,`created_at`,`roll`) VALUES 
 (1,1,1,2,'2025-03-19 15:20:06',2);
/*!40000 ALTER TABLE `core_academy_admissions` ENABLE KEYS */;


--
-- Definition of table `core_academy_batches`
--

DROP TABLE IF EXISTS `core_academy_batches`;
CREATE TABLE `core_academy_batches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `current_class_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_batches`
--

/*!40000 ALTER TABLE `core_academy_batches` DISABLE KEYS */;
INSERT INTO `core_academy_batches` (`id`,`name`,`current_class_id`) VALUES 
 (1,'Batch1',1),
 (2,'Batch2',2);
/*!40000 ALTER TABLE `core_academy_batches` ENABLE KEYS */;


--
-- Definition of table `core_academy_classes`
--

DROP TABLE IF EXISTS `core_academy_classes`;
CREATE TABLE `core_academy_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_classes`
--

/*!40000 ALTER TABLE `core_academy_classes` DISABLE KEYS */;
INSERT INTO `core_academy_classes` (`id`,`name`) VALUES 
 (1,'KG'),
 (2,'ONE'),
 (3,'TWO'),
 (4,'THREE'),
 (5,'FOUR'),
 (6,'FIVE');
/*!40000 ALTER TABLE `core_academy_classes` ENABLE KEYS */;


--
-- Definition of table `core_academy_exam_types`
--

DROP TABLE IF EXISTS `core_academy_exam_types`;
CREATE TABLE `core_academy_exam_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_exam_types`
--

/*!40000 ALTER TABLE `core_academy_exam_types` DISABLE KEYS */;
INSERT INTO `core_academy_exam_types` (`id`,`name`) VALUES 
 (1,'MCQ'),
 (2,'CT');
/*!40000 ALTER TABLE `core_academy_exam_types` ENABLE KEYS */;


--
-- Definition of table `core_academy_invoice_details`
--

DROP TABLE IF EXISTS `core_academy_invoice_details`;
CREATE TABLE `core_academy_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `unit` int(10) unsigned DEFAULT NULL,
  `vat` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_invoice_details`
--

/*!40000 ALTER TABLE `core_academy_invoice_details` DISABLE KEYS */;
INSERT INTO `core_academy_invoice_details` (`id`,`invoice_id`,`service_id`,`price`,`discount`,`unit`,`vat`) VALUES 
 (1,1,1,343,3,3,1),
 (2,1,2,343,0,1,0);
/*!40000 ALTER TABLE `core_academy_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_academy_invoices`
--

DROP TABLE IF EXISTS `core_academy_invoices`;
CREATE TABLE `core_academy_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `paid_total` float DEFAULT NULL,
  `previous_due` float DEFAULT NULL,
  `payment_term_id` int(10) unsigned DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_invoices`
--

/*!40000 ALTER TABLE `core_academy_invoices` DISABLE KEYS */;
INSERT INTO `core_academy_invoices` (`id`,`student_id`,`created_at`,`updated_at`,`invoice_total`,`discount`,`paid_total`,`previous_due`,`payment_term_id`,`vat`) VALUES 
 (1,1,'2025-04-01 00:00:00','2025-04-01 00:00:00',223,0,0,0,1,0);
/*!40000 ALTER TABLE `core_academy_invoices` ENABLE KEYS */;


--
-- Definition of table `core_academy_money_receipt_details`
--

DROP TABLE IF EXISTS `core_academy_money_receipt_details`;
CREATE TABLE `core_academy_money_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `fee` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_money_receipt_details`
--

/*!40000 ALTER TABLE `core_academy_money_receipt_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_academy_money_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_academy_money_receipts`
--

DROP TABLE IF EXISTS `core_academy_money_receipts`;
CREATE TABLE `core_academy_money_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` varchar(45) NOT NULL,
  `student_id` int(10) unsigned NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_money_receipts`
--

/*!40000 ALTER TABLE `core_academy_money_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_academy_money_receipts` ENABLE KEYS */;


--
-- Definition of table `core_academy_periods`
--

DROP TABLE IF EXISTS `core_academy_periods`;
CREATE TABLE `core_academy_periods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_periods`
--

/*!40000 ALTER TABLE `core_academy_periods` DISABLE KEYS */;
INSERT INTO `core_academy_periods` (`id`,`name`,`time`) VALUES 
 (1,'1st Period','( 9:00 AM - 9:45 AM)'),
 (2,'2nd Period','( 9:45 AM - 10:30 AM)'),
 (3,'3rd Period','( 10:30 AM - 11:15 AM)'),
 (4,'4th Period','( 11:15 AM - 12:00 PM)');
/*!40000 ALTER TABLE `core_academy_periods` ENABLE KEYS */;


--
-- Definition of table `core_academy_results`
--

DROP TABLE IF EXISTS `core_academy_results`;
CREATE TABLE `core_academy_results` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academy_student_id` int(10) unsigned NOT NULL,
  `academy_subject_id` int(10) unsigned NOT NULL,
  `academy_term_id` int(10) unsigned NOT NULL,
  `academy_exam_type_id` int(10) unsigned NOT NULL,
  `mark` float NOT NULL,
  `fullmark` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_results`
--

/*!40000 ALTER TABLE `core_academy_results` DISABLE KEYS */;
INSERT INTO `core_academy_results` (`id`,`academy_student_id`,`academy_subject_id`,`academy_term_id`,`academy_exam_type_id`,`mark`,`fullmark`) VALUES 
 (1,1,1,1,1,20,50),
 (2,1,2,1,1,28,50),
 (3,1,3,1,1,40,50),
 (4,1,4,1,1,32,50),
 (5,1,5,1,1,46,50),
 (6,2,1,1,1,45,50),
 (7,2,2,1,1,36,50),
 (8,2,4,1,1,44,50),
 (9,1,1,2,1,70,100);
/*!40000 ALTER TABLE `core_academy_results` ENABLE KEYS */;


--
-- Definition of table `core_academy_routines`
--

DROP TABLE IF EXISTS `core_academy_routines`;
CREATE TABLE `core_academy_routines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academy_class_id` int(10) unsigned NOT NULL,
  `academy_subject_id` int(10) unsigned NOT NULL,
  `academy_teacher_id` int(10) unsigned NOT NULL,
  `day` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_routines`
--

/*!40000 ALTER TABLE `core_academy_routines` DISABLE KEYS */;
INSERT INTO `core_academy_routines` (`id`,`academy_class_id`,`academy_subject_id`,`academy_teacher_id`,`day`,`time`) VALUES 
 (1,1,3,3,'SUN','( 9:00 AM - 9:45 AM)'),
 (2,1,2,2,'SUN','( 9:00 AM - 9:45 AM)'),
 (3,1,3,1,'MON','( 9:00 AM - 9:45 AM)');
/*!40000 ALTER TABLE `core_academy_routines` ENABLE KEYS */;


--
-- Definition of table `core_academy_sections`
--

DROP TABLE IF EXISTS `core_academy_sections`;
CREATE TABLE `core_academy_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_sections`
--

/*!40000 ALTER TABLE `core_academy_sections` DISABLE KEYS */;
INSERT INTO `core_academy_sections` (`id`,`name`) VALUES 
 (1,'A'),
 (2,'B');
/*!40000 ALTER TABLE `core_academy_sections` ENABLE KEYS */;


--
-- Definition of table `core_academy_services`
--

DROP TABLE IF EXISTS `core_academy_services`;
CREATE TABLE `core_academy_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_services`
--

/*!40000 ALTER TABLE `core_academy_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_academy_services` ENABLE KEYS */;


--
-- Definition of table `core_academy_students`
--

DROP TABLE IF EXISTS `core_academy_students`;
CREATE TABLE `core_academy_students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `mothers_name` varchar(45) NOT NULL,
  `academy_batch_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` date DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_students`
--

/*!40000 ALTER TABLE `core_academy_students` DISABLE KEYS */;
INSERT INTO `core_academy_students` (`id`,`name`,`fathers_name`,`mothers_name`,`academy_batch_id`,`created_at`,`dob`,`photo`,`contact_no`,`address`) VALUES 
 (1,'Jahidul Islam','Habibur Rahama','Najma Akter',2,'2025-03-20 09:42:13','2000-03-19','1.jpg','45435436565','Rampura'),
 (2,'Abdur Rahim','Abdur Karam','Fatema Akter',1,'2025-03-20 09:41:33','2001-01-01','student-jpg.jpg','34242343','NA');
/*!40000 ALTER TABLE `core_academy_students` ENABLE KEYS */;


--
-- Definition of table `core_academy_subjects`
--

DROP TABLE IF EXISTS `core_academy_subjects`;
CREATE TABLE `core_academy_subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_subjects`
--

/*!40000 ALTER TABLE `core_academy_subjects` DISABLE KEYS */;
INSERT INTO `core_academy_subjects` (`id`,`name`) VALUES 
 (1,'Bengali'),
 (2,'English'),
 (3,'Mathematics'),
 (4,'Science'),
 (5,'Islamic Studies'),
 (6,'Social Science');
/*!40000 ALTER TABLE `core_academy_subjects` ENABLE KEYS */;


--
-- Definition of table `core_academy_teachers`
--

DROP TABLE IF EXISTS `core_academy_teachers`;
CREATE TABLE `core_academy_teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_teachers`
--

/*!40000 ALTER TABLE `core_academy_teachers` DISABLE KEYS */;
INSERT INTO `core_academy_teachers` (`id`,`name`,`contact_no`,`position`) VALUES 
 (1,'Md. Hassan','324324324','Asst. Teacher'),
 (2,'Md. Sabbir Ahmed','3432432','Teacher'),
 (3,'Md. Hamid','334324','Headmaster'),
 (4,'Md. Kamruzzaman','34324324','Asst. Teacher');
/*!40000 ALTER TABLE `core_academy_teachers` ENABLE KEYS */;


--
-- Definition of table `core_academy_terms`
--

DROP TABLE IF EXISTS `core_academy_terms`;
CREATE TABLE `core_academy_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_academy_terms`
--

/*!40000 ALTER TABLE `core_academy_terms` DISABLE KEYS */;
INSERT INTO `core_academy_terms` (`id`,`name`) VALUES 
 (1,'Mid Term'),
 (2,'Final');
/*!40000 ALTER TABLE `core_academy_terms` ENABLE KEYS */;


--
-- Definition of table `core_assets`
--

DROP TABLE IF EXISTS `core_assets`;
CREATE TABLE `core_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `purchased_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_assets`
--

/*!40000 ALTER TABLE `core_assets` DISABLE KEYS */;
INSERT INTO `core_assets` (`id`,`name`,`price`,`purchased_at`) VALUES 
 (1,'Computer',50000,'2025-01-01 00:00:00'),
 (2,'Laptop',60000,'2025-01-01 00:00:00');
/*!40000 ALTER TABLE `core_assets` ENABLE KEYS */;


--
-- Definition of table `core_booking`
--

DROP TABLE IF EXISTS `core_booking`;
CREATE TABLE `core_booking` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Room_type` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_booking`
--

/*!40000 ALTER TABLE `core_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_booking` ENABLE KEYS */;


--
-- Definition of table `core_booking_details`
--

DROP TABLE IF EXISTS `core_booking_details`;
CREATE TABLE `core_booking_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(10) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_booking_details`
--

/*!40000 ALTER TABLE `core_booking_details` DISABLE KEYS */;
INSERT INTO `core_booking_details` (`id`,`booking_id`,`room_id`,`from_date`,`to_date`,`price`) VALUES 
 (1,1,1,'2024-02-10','2024-02-11',500),
 (2,6,2,'2024-05-01','2024-05-03',500),
 (3,6,1,'2024-05-01','2024-05-03',2000),
 (4,7,2,'2024-05-29','2024-05-30',500),
 (5,7,1,'2024-05-29','2024-05-30',2000);
/*!40000 ALTER TABLE `core_booking_details` ENABLE KEYS */;


--
-- Definition of table `core_bookings`
--

DROP TABLE IF EXISTS `core_bookings`;
CREATE TABLE `core_bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `order_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `remark` text DEFAULT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_bookings`
--

/*!40000 ALTER TABLE `core_bookings` DISABLE KEYS */;
INSERT INTO `core_bookings` (`id`,`created_at`,`order_total`,`paid_total`,`remark`,`customer_id`) VALUES 
 (1,'2024-05-22 00:00:00',1000,1000,'Test',7),
 (2,'2024-05-24 00:00:00',700,700,'Test Update Api',3),
 (3,'2024-05-25 00:00:00',3544,3544,'Test',2),
 (4,'2024-05-23 00:00:00',500,500,'Test Api',3),
 (5,'0000-00-00 00:00:00',446,446,'Test',2),
 (6,'0000-00-00 00:00:00',344,455,'test',1),
 (7,'0000-00-00 00:00:00',5000,2000,'NT',1);
/*!40000 ALTER TABLE `core_bookings` ENABLE KEYS */;


--
-- Definition of table `core_buyers`
--

DROP TABLE IF EXISTS `core_buyers`;
CREATE TABLE `core_buyers` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phoneNumber` int(10) unsigned NOT NULL,
  `address` varchar(45) NOT NULL,
  `registrationDate` datetime NOT NULL,
  `totalpurchasesAmount` int(10) unsigned NOT NULL,
  `paymentMethod` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_buyers`
--

/*!40000 ALTER TABLE `core_buyers` DISABLE KEYS */;
INSERT INTO `core_buyers` (`Id`,`name`,`email`,`phoneNumber`,`address`,`registrationDate`,`totalpurchasesAmount`,`paymentMethod`) VALUES 
 (15,'sabbir','guyftfvty',4294967295,'dhaka','2025-03-17 00:00:00',50000,'Bank');
/*!40000 ALTER TABLE `core_buyers` ENABLE KEYS */;


--
-- Definition of table `core_cache`
--

DROP TABLE IF EXISTS `core_cache`;
CREATE TABLE `core_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_cache`
--

/*!40000 ALTER TABLE `core_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache` ENABLE KEYS */;


--
-- Definition of table `core_cache_locks`
--

DROP TABLE IF EXISTS `core_cache_locks`;
CREATE TABLE `core_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_cache_locks`
--

/*!40000 ALTER TABLE `core_cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache_locks` ENABLE KEYS */;


--
-- Definition of table `core_cattle_categories`
--

DROP TABLE IF EXISTS `core_cattle_categories`;
CREATE TABLE `core_cattle_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cattle_categories`
--

/*!40000 ALTER TABLE `core_cattle_categories` DISABLE KEYS */;
INSERT INTO `core_cattle_categories` (`id`,`name`) VALUES 
 (1,'Cow'),
 (2,'Goat');
/*!40000 ALTER TABLE `core_cattle_categories` ENABLE KEYS */;


--
-- Definition of table `core_cattles`
--

DROP TABLE IF EXISTS `core_cattles`;
CREATE TABLE `core_cattles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `color` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) unsigned DEFAULT NULL,
  `cattle_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cattles`
--

/*!40000 ALTER TABLE `core_cattles` DISABLE KEYS */;
INSERT INTO `core_cattles` (`id`,`name`,`region`,`dob`,`color`,`description`,`photo`,`gender`,`cattle_category_id`) VALUES 
 (2,'Black and White','Indian','2021-05-07','White','','2.webp',1,2),
 (3,'BlackCow','Indian','2021-05-07','Black','','3.jpeg',1,1),
 (19,'Goat 25','Deshi','2024-05-01','Red','','19.png',0,1),
 (24,'Goat 25','Deshi','2021-05-07','Red','Test','1-925-webp.webp',1,2);
/*!40000 ALTER TABLE `core_cattles` ENABLE KEYS */;


--
-- Definition of table `core_company`
--

DROP TABLE IF EXISTS `core_company`;
CREATE TABLE `core_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `bin` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_company`
--

/*!40000 ALTER TABLE `core_company` DISABLE KEYS */;
INSERT INTO `core_company` (`id`,`name`,`mobile`,`bin`,`email`,`website`,`city`,`area`,`street_address`,`post_code`,`inactive`,`logo`) VALUES 
 (1,'OYELI FASHION','432523432','3423423432','oyeili@gmail.com','www.oyelibd.com','Dhaka','Mirpur','Building: 21, Road: 12, Block: A','1219',0,'1.png'),
 (2,'IBN SINA','34234',NULL,'ibnsina@gmail.com','ibnsina.com','Dhaka','Dhanmondi','Building: 21, Road: 12, Block: A','2012',0,'2.png');
/*!40000 ALTER TABLE `core_company` ENABLE KEYS */;


--
-- Definition of table `core_contact_categories`
--

DROP TABLE IF EXISTS `core_contact_categories`;
CREATE TABLE `core_contact_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_contact_categories`
--

/*!40000 ALTER TABLE `core_contact_categories` DISABLE KEYS */;
INSERT INTO `core_contact_categories` (`id`,`name`) VALUES 
 (1,'Family'),
 (2,'Relative'),
 (3,'Friend'),
 (4,'Student');
/*!40000 ALTER TABLE `core_contact_categories` ENABLE KEYS */;


--
-- Definition of table `core_contacts`
--

DROP TABLE IF EXISTS `core_contacts`;
CREATE TABLE `core_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_category_id` int(10) unsigned NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_contacts`
--

/*!40000 ALTER TABLE `core_contacts` DISABLE KEYS */;
INSERT INTO `core_contacts` (`id`,`name`,`contact_category_id`,`contact_no`,`email`) VALUES 
 (1,'Mehedi',4,'01797993131','mehedihasandb0@gmail.com'),
 (2,'Jahid',1,'3423423','jahid1@yahoo.com');
/*!40000 ALTER TABLE `core_contacts` ENABLE KEYS */;


--
-- Definition of table `core_courier_branchs`
--

DROP TABLE IF EXISTS `core_courier_branchs`;
CREATE TABLE `core_courier_branchs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_branchs`
--

/*!40000 ALTER TABLE `core_courier_branchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_branchs` ENABLE KEYS */;


--
-- Definition of table `core_courier_parcel_history`
--

DROP TABLE IF EXISTS `core_courier_parcel_history`;
CREATE TABLE `core_courier_parcel_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parcel_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_parcel_history`
--

/*!40000 ALTER TABLE `core_courier_parcel_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_parcel_history` ENABLE KEYS */;


--
-- Definition of table `core_courier_parcel_statuses`
--

DROP TABLE IF EXISTS `core_courier_parcel_statuses`;
CREATE TABLE `core_courier_parcel_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_parcel_statuses`
--

/*!40000 ALTER TABLE `core_courier_parcel_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_parcel_statuses` ENABLE KEYS */;


--
-- Definition of table `core_courier_parcels`
--

DROP TABLE IF EXISTS `core_courier_parcels`;
CREATE TABLE `core_courier_parcels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL,
  `receiver_id` int(10) unsigned NOT NULL,
  `weight` float NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `is_csc` tinyint(1) NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `vehical_id` int(10) unsigned NOT NULL,
  `shipment_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `remark` text DEFAULT NULL,
  `paid_amount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_parcels`
--

/*!40000 ALTER TABLE `core_courier_parcels` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_parcels` ENABLE KEYS */;


--
-- Definition of table `core_courier_receivers`
--

DROP TABLE IF EXISTS `core_courier_receivers`;
CREATE TABLE `core_courier_receivers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_receivers`
--

/*!40000 ALTER TABLE `core_courier_receivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_receivers` ENABLE KEYS */;


--
-- Definition of table `core_courier_senders`
--

DROP TABLE IF EXISTS `core_courier_senders`;
CREATE TABLE `core_courier_senders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_senders`
--

/*!40000 ALTER TABLE `core_courier_senders` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_senders` ENABLE KEYS */;


--
-- Definition of table `core_courier_shipments`
--

DROP TABLE IF EXISTS `core_courier_shipments`;
CREATE TABLE `core_courier_shipments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_shipments`
--

/*!40000 ALTER TABLE `core_courier_shipments` DISABLE KEYS */;
INSERT INTO `core_courier_shipments` (`id`,`name`) VALUES 
 (1,'Morning'),
 (2,'Evening'),
 (3,'Night');
/*!40000 ALTER TABLE `core_courier_shipments` ENABLE KEYS */;


--
-- Definition of table `core_courier_types`
--

DROP TABLE IF EXISTS `core_courier_types`;
CREATE TABLE `core_courier_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_types`
--

/*!40000 ALTER TABLE `core_courier_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_types` ENABLE KEYS */;


--
-- Definition of table `core_courier_vehicle_types`
--

DROP TABLE IF EXISTS `core_courier_vehicle_types`;
CREATE TABLE `core_courier_vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_vehicle_types`
--

/*!40000 ALTER TABLE `core_courier_vehicle_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_vehicle_types` ENABLE KEYS */;


--
-- Definition of table `core_courier_vehicles`
--

DROP TABLE IF EXISTS `core_courier_vehicles`;
CREATE TABLE `core_courier_vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `driver_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_courier_vehicles`
--

/*!40000 ALTER TABLE `core_courier_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_courier_vehicles` ENABLE KEYS */;


--
-- Definition of table `core_customers`
--

DROP TABLE IF EXISTS `core_customers`;
CREATE TABLE `core_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_customers`
--

/*!40000 ALTER TABLE `core_customers` DISABLE KEYS */;
INSERT INTO `core_customers` (`id`,`name`,`mobile`,`email`,`created_at`,`updated_at`,`address`,`photo`) VALUES 
 (1,'Tanmoy','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (3,'Niyamot','3434343','niyamot@yahoo.com','2023-12-05 16:27:19','2023-12-05 16:27:19','Mirpur','3.png'),
 (6,'Jahidul Islam','34324324','mehedihasandb0@gmail.com','2023-12-05 16:28:16','2023-12-05 16:28:16','333','beetroot-hummus-23bae4e-jpg.jpg'),
 (7,'Jahidul2','34324324','mehedihasandb0@gmail.com','2023-12-05 16:43:59','2023-12-05 16:43:59','343','7.jpg'),
 (8,'Mehedi3','34324324','mehedihasandb0@gmail.com','2023-12-05 16:31:09','2023-12-05 16:31:09','','34324324.jpg'),
 (9,'Sabbir Ahmed','34343434','sabbir3@gmail.com','2023-12-30 15:30:13','2023-12-30 15:30:13','NA',NULL),
 (10,'Abdur Rahman','35443434','abrahman@gmail.com','2023-12-30 15:32:00','2023-12-30 15:32:00','Rampua',NULL),
 (12,'Mahedi Hassanere','9433442sfds','mah3edi@gmail.com','2023-12-30 15:59:14','2023-12-30 15:59:14','NA',NULL),
 (15,'Siam','44444444','siam@yahoo.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (21,'Laiju','123456778','laiju@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (25,'abc','0000','abc@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (28,'Md Salman Aisur Rahman','019886131','salman@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (29,'Atiquer Rahman','098563146','Atiqur@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (30,'razib','1222222','razijb@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (31,'','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (32,'Al AMin','96354965','Alamin@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (33,'Rahul ','8797446','Rahul@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (34,'Laiju','98754324','laiju@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),
 (35,'Engr. Naiiyem Hossain','12555555','naiyem@gmail.com','0000-00-00 00:00:00','0000-00-00 00:00:00','','');
/*!40000 ALTER TABLE `core_customers` ENABLE KEYS */;


--
-- Definition of table `core_deliveries`
--

DROP TABLE IF EXISTS `core_deliveries`;
CREATE TABLE `core_deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_at` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `shipper_id` int(10) unsigned NOT NULL,
  `shipped_at` datetime NOT NULL,
  `delivery_status_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_deliveries`
--

/*!40000 ALTER TABLE `core_deliveries` DISABLE KEYS */;
INSERT INTO `core_deliveries` (`id`,`create_at`,`order_id`,`person_id`,`shipper_id`,`shipped_at`,`delivery_status_id`) VALUES 
 (1,'2025-04-12 00:00:00',43,1,1,'2025-04-12 00:00:00',1),
 (2,'2025-04-12 00:00:00',43,1,1,'2025-04-12 00:00:00',1),
 (3,'2025-04-12 00:00:00',45,1,1,'2025-04-12 00:00:00',1);
/*!40000 ALTER TABLE `core_deliveries` ENABLE KEYS */;


--
-- Definition of table `core_delivery`
--

DROP TABLE IF EXISTS `core_delivery`;
CREATE TABLE `core_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_at` datetime NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `shipper_id` int(10) unsigned NOT NULL,
  `shipped_at` datetime NOT NULL,
  `delivery_status_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery`
--

/*!40000 ALTER TABLE `core_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_delivery` ENABLE KEYS */;


--
-- Definition of table `core_delivery_details`
--

DROP TABLE IF EXISTS `core_delivery_details`;
CREATE TABLE `core_delivery_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` varchar(45) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery_details`
--

/*!40000 ALTER TABLE `core_delivery_details` DISABLE KEYS */;
INSERT INTO `core_delivery_details` (`id`,`delivery_id`,`product_id`,`qty`,`price`) VALUES 
 (1,'1',56,'1',500),
 (2,'2',56,'1',500),
 (3,'3',56,'13',500);
/*!40000 ALTER TABLE `core_delivery_details` ENABLE KEYS */;


--
-- Definition of table `core_delivery_status`
--

DROP TABLE IF EXISTS `core_delivery_status`;
CREATE TABLE `core_delivery_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_delivery_status`
--

/*!40000 ALTER TABLE `core_delivery_status` DISABLE KEYS */;
INSERT INTO `core_delivery_status` (`id`,`name`) VALUES 
 (1,'In transit'),
 (2,'Shipped');
/*!40000 ALTER TABLE `core_delivery_status` ENABLE KEYS */;


--
-- Definition of table `core_departments`
--

DROP TABLE IF EXISTS `core_departments`;
CREATE TABLE `core_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_departments`
--

/*!40000 ALTER TABLE `core_departments` DISABLE KEYS */;
INSERT INTO `core_departments` (`id`,`code`,`name`) VALUES 
 (1,'10','Accounts'),
 (2,'20','IT'),
 (3,'30','HR'),
 (4,'40','Sales and Marketing');
/*!40000 ALTER TABLE `core_departments` ENABLE KEYS */;


--
-- Definition of table `core_districts`
--

DROP TABLE IF EXISTS `core_districts`;
CREATE TABLE `core_districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `division_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_districts`
--

/*!40000 ALTER TABLE `core_districts` DISABLE KEYS */;
INSERT INTO `core_districts` (`id`,`name`,`division_id`) VALUES 
 (1,'Narayangang',1),
 (2,'Nonakhali',3),
 (3,'Feni',3),
 (4,'Tingile',1),
 (5,'Gajipur',1),
 (6,'Potuakhali',2),
 (7,'Dhaka',1);
/*!40000 ALTER TABLE `core_districts` ENABLE KEYS */;


--
-- Definition of table `core_divisions`
--

DROP TABLE IF EXISTS `core_divisions`;
CREATE TABLE `core_divisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_divisions`
--

/*!40000 ALTER TABLE `core_divisions` DISABLE KEYS */;
INSERT INTO `core_divisions` (`id`,`name`) VALUES 
 (1,'Dhaka'),
 (2,'Borishal'),
 (3,'Chottrogram');
/*!40000 ALTER TABLE `core_divisions` ENABLE KEYS */;


--
-- Definition of table `core_ecom_coupons`
--

DROP TABLE IF EXISTS `core_ecom_coupons`;
CREATE TABLE `core_ecom_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon` varchar(45) NOT NULL,
  `percent_b2b` double NOT NULL,
  `percent_b2c` double NOT NULL,
  `percent_m` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ecom_coupons`
--

/*!40000 ALTER TABLE `core_ecom_coupons` DISABLE KEYS */;
INSERT INTO `core_ecom_coupons` (`id`,`coupon`,`percent_b2b`,`percent_b2c`,`percent_m`,`start_date`,`end_date`,`created_at`) VALUES 
 (1,'AX353',5,3,4,'2025-04-09 00:00:00','2025-04-30 00:00:00','2025-04-09 11:06:25');
/*!40000 ALTER TABLE `core_ecom_coupons` ENABLE KEYS */;


--
-- Definition of table `core_ecom_used_coupons`
--

DROP TABLE IF EXISTS `core_ecom_used_coupons`;
CREATE TABLE `core_ecom_used_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL,
  `used_at` datetime NOT NULL,
  `percent_given` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_ecom_used_coupons`
--

/*!40000 ALTER TABLE `core_ecom_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_ecom_used_coupons` ENABLE KEYS */;


--
-- Definition of table `core_failed_jobs`
--

DROP TABLE IF EXISTS `core_failed_jobs`;
CREATE TABLE `core_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_failed_jobs`
--

/*!40000 ALTER TABLE `core_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_failed_jobs` ENABLE KEYS */;


--
-- Definition of table `core_fan2`
--

DROP TABLE IF EXISTS `core_fan2`;
CREATE TABLE `core_fan2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_fan2`
--

/*!40000 ALTER TABLE `core_fan2` DISABLE KEYS */;
INSERT INTO `core_fan2` (`id`,`name`,`price`) VALUES 
 (1,'Fan1','5000'),
 (2,'fan12','5000'),
 (3,'Shuvo','3000');
/*!40000 ALTER TABLE `core_fan2` ENABLE KEYS */;


--
-- Definition of table `core_fan3`
--

DROP TABLE IF EXISTS `core_fan3`;
CREATE TABLE `core_fan3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_fan2_name_id` varchar(45) NOT NULL,
  `core_fan2_price_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_fan3`
--

/*!40000 ALTER TABLE `core_fan3` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_fan3` ENABLE KEYS */;


--
-- Definition of table `core_final`
--

DROP TABLE IF EXISTS `core_final`;
CREATE TABLE `core_final` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_final`
--

/*!40000 ALTER TABLE `core_final` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_final` ENABLE KEYS */;


--
-- Definition of table `core_finished_goods`
--

DROP TABLE IF EXISTS `core_finished_goods`;
CREATE TABLE `core_finished_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `order_date` datetime NOT NULL,
  `finished_good_status` varchar(45) NOT NULL,
  `batch_number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_finished_goods`
--

/*!40000 ALTER TABLE `core_finished_goods` DISABLE KEYS */;
INSERT INTO `core_finished_goods` (`id`,`product_code`,`product_name`,`quantity`,`price`,`order_date`,`finished_good_status`,`batch_number`) VALUES 
 (3,'54','5600',56654,45000,'2025-03-21 00:00:00','nice',4500);
/*!40000 ALTER TABLE `core_finished_goods` ENABLE KEYS */;


--
-- Definition of table `core_hms_appointments`
--

DROP TABLE IF EXISTS `core_hms_appointments`;
CREATE TABLE `core_hms_appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `doctor_id` int(10) unsigned NOT NULL,
  `appointment_at` datetime NOT NULL,
  `cc` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_appointments`
--

/*!40000 ALTER TABLE `core_hms_appointments` DISABLE KEYS */;
INSERT INTO `core_hms_appointments` (`id`,`patient_id`,`doctor_id`,`appointment_at`,`cc`) VALUES 
 (1,1,2,'2001-03-11 00:00:00','Aliqua Harum totam'),
 (2,1,2,'1989-12-20 00:00:00','Sint reprehenderit'),
 (3,3,11,'2005-08-25 00:00:00','Sunt illum dolore'),
 (4,1,10,'2010-05-18 00:00:00','Necessitatibus nostr');
/*!40000 ALTER TABLE `core_hms_appointments` ENABLE KEYS */;


--
-- Definition of table `core_hms_consultants`
--

DROP TABLE IF EXISTS `core_hms_consultants`;
CREATE TABLE `core_hms_consultants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `designation` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_consultants`
--

/*!40000 ALTER TABLE `core_hms_consultants` DISABLE KEYS */;
INSERT INTO `core_hms_consultants` (`id`,`name`,`department_id`,`designation`) VALUES 
 (1,'Dr. Moshaidul Islam',1,'MBBS'),
 (2,'Jahidul Islam',2,'Prof.'),
 (3,'Paul Jensen',2,'Ex qui error consect');
/*!40000 ALTER TABLE `core_hms_consultants` ENABLE KEYS */;


--
-- Definition of table `core_hms_departments`
--

DROP TABLE IF EXISTS `core_hms_departments`;
CREATE TABLE `core_hms_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_departments`
--

/*!40000 ALTER TABLE `core_hms_departments` DISABLE KEYS */;
INSERT INTO `core_hms_departments` (`id`,`name`) VALUES 
 (1,'Medicine'),
 (2,'ENT'),
 (3,'Myles Miller'),
 (4,'Richard Williams');
/*!40000 ALTER TABLE `core_hms_departments` ENABLE KEYS */;


--
-- Definition of table `core_hms_designations`
--

DROP TABLE IF EXISTS `core_hms_designations`;
CREATE TABLE `core_hms_designations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_hms_designations`
--

/*!40000 ALTER TABLE `core_hms_designations` DISABLE KEYS */;
INSERT INTO `core_hms_designations` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'Consultant','2022-01-15 10:00:00','2023-04-10 14:30:00'),
 (2,'Senior Consultant','2021-11-20 09:45:00','2023-07-01 12:15:00'),
 (3,'Specialist','2023-03-05 08:30:00','2024-03-05 11:00:00'),
 (4,'Resident','2022-06-12 13:00:00','2023-09-15 10:45:00'),
 (5,'Surgeon','2021-12-25 14:00:00','2024-01-01 16:00:00'),
 (6,'Medical Officer','2023-02-10 09:10:00','2023-11-05 10:50:00'),
 (7,'Attending Physician','2022-08-08 10:20:00','2024-02-15 13:35:00'),
 (8,'Associate Professor','2023-05-17 11:25:00','2024-03-12 12:30:00'),
 (9,'Professor','2021-07-21 15:30:00','2024-05-10 17:45:00'),
 (10,'Registrar','2022-10-03 08:40:00','2023-12-20 09:25:00'),
 (11,'Aristotle Clements','2025-06-29 14:50:46','2025-06-29 14:50:46');
/*!40000 ALTER TABLE `core_hms_designations` ENABLE KEYS */;


--
-- Definition of table `core_hms_doctors`
--

DROP TABLE IF EXISTS `core_hms_doctors`;
CREATE TABLE `core_hms_doctors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `designation_id` varchar(255) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_hms_doctors`
--

/*!40000 ALTER TABLE `core_hms_doctors` DISABLE KEYS */;
INSERT INTO `core_hms_doctors` (`id`,`name`,`phone`,`designation_id`,`department_id`,`created_at`,`updated_at`) VALUES 
 (1,'Nafida Sabirin Munni','+12457963633','1','4','2025-05-31 16:05:20','2025-05-31 16:12:53'),
 (2,'Kawser Hossain','+12457963633','10','10','2025-05-31 16:07:42','2025-05-31 16:07:42'),
 (3,'Razib Hasan','13003030','3','2','2025-05-31 16:22:35','2025-05-31 16:22:35'),
 (4,'Naiyem Hossain','+8801254569873','9','1','2025-06-12 09:53:15','2025-06-12 09:54:00'),
 (5,'Abdul Malek','+8801245786598','12','112','2025-06-14 16:35:21','2025-06-25 10:56:31'),
 (10,'Madonna Molina','+1 (524) 341-7964','4','2','2025-06-28 15:41:19','2025-06-28 15:41:19'),
 (11,'Kylan Kirkland','+1 (635) 915-4392','8','3','2025-06-28 15:43:54','2025-06-28 15:43:54'),
 (12,'Jolie Key','+1 (698) 411-3453','5','4','2025-06-29 14:50:55','2025-06-29 14:50:55');
/*!40000 ALTER TABLE `core_hms_doctors` ENABLE KEYS */;


--
-- Definition of table `core_hms_fields`
--

DROP TABLE IF EXISTS `core_hms_fields`;
CREATE TABLE `core_hms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `uploaded_file` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `subscribe` tinyint(1) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_fields`
--

/*!40000 ALTER TABLE `core_hms_fields` DISABLE KEYS */;
INSERT INTO `core_hms_fields` (`id`,`name`,`message`,`gender`,`uploaded_file`,`country`,`subscribe`,`birth_date`,`age`,`email`) VALUES 
 (1,'Alice Smith','Hello, I am interested in your services.','Female','uploads/resume_alice.pdf','USA',1,'1990-05-12',34,'alice@example.com'),
 (2,'Bob Johnson','Looking forward to hearing from you.','Male','uploads/photo_bob.png','Canada',0,'1985-11-23',39,'bob.j@example.com');
/*!40000 ALTER TABLE `core_hms_fields` ENABLE KEYS */;


--
-- Definition of table `core_hms_invoice_details`
--

DROP TABLE IF EXISTS `core_hms_invoice_details`;
CREATE TABLE `core_hms_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `unit` float NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_invoice_details`
--

/*!40000 ALTER TABLE `core_hms_invoice_details` DISABLE KEYS */;
INSERT INTO `core_hms_invoice_details` (`id`,`invoice_id`,`service_id`,`unit`,`price`,`discount`,`vat`) VALUES 
 (1,3,1,1,1000,0,0),
 (2,3,2,1,2000,0,0),
 (3,4,1,1,1000,0,0),
 (4,4,2,1,2000,0,0),
 (5,5,2,1,3000,0,0),
 (6,5,3,1,6000,0,0),
 (7,6,2,1,3000,0,0),
 (8,6,3,1,6000,0,0),
 (9,9,2,87,258,18,0),
 (10,9,1,88,409,14,0),
 (11,10,2,87,258,18,0),
 (12,10,1,88,409,14,0),
 (13,11,4,49,554,53,0),
 (14,11,5,4,532,12,0),
 (15,12,2,89,529,55,0),
 (16,12,2,61,22,7,0),
 (17,13,3,98,427,94,0),
 (18,13,4,12,229,74,0),
 (19,14,1,52,86,41,0),
 (20,14,6,41,93,62,0),
 (21,14,5,32,878,79,0),
 (22,16,6,94,482,41,0),
 (23,16,4,42,375,17,0);
/*!40000 ALTER TABLE `core_hms_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_hms_invoices`
--

DROP TABLE IF EXISTS `core_hms_invoices`;
CREATE TABLE `core_hms_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `invoice_total` float DEFAULT NULL,
  `paid_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `previous_due` float DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_invoices`
--

/*!40000 ALTER TABLE `core_hms_invoices` DISABLE KEYS */;
INSERT INTO `core_hms_invoices` (`id`,`patient_id`,`remark`,`created_at`,`invoice_total`,`paid_total`,`discount`,`vat`,`payment_term`,`previous_due`,`updated_at`) VALUES 
 (1,0,'','0000-00-00 00:00:00',0,0,0,0,'',0,'0000-00-00 00:00:00'),
 (2,0,'','0000-00-00 00:00:00',0,0,0,0,'',0,'0000-00-00 00:00:00'),
 (3,1,'Na','2025-01-10 00:00:00',399,399,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (4,1,'Na','2025-01-10 00:00:00',399,399,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (5,0,'Na','0000-00-00 00:00:00',9000,9000,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (6,0,'Na','0000-00-00 00:00:00',9000,9000,0,0,'CASH',0,'0000-00-00 00:00:00'),
 (7,1,NULL,'2025-07-04 17:00:57',58416,58416,0,0,'Cash',NULL,'2025-07-04 17:00:57'),
 (8,1,NULL,'2025-07-04 17:01:57',58416,58416,0,0,'Cash',NULL,'2025-07-04 17:01:57'),
 (9,1,NULL,'2025-07-04 17:02:09',58416,58416,0,0,'Cash',NULL,'2025-07-04 17:02:09'),
 (10,1,NULL,'2025-07-04 17:03:33',58416,58416,0,0,'Cash',NULL,'2025-07-04 17:03:33'),
 (11,1,NULL,'2025-07-04 17:12:18',29219,29219,0,0,'Cash',NULL,'2025-07-04 17:12:18'),
 (12,1,NULL,'2025-07-04 17:18:42',48371,48371,0,0,'Cash',NULL,'2025-07-04 17:18:42'),
 (13,1,NULL,'2025-07-04 17:22:02',44436,44436,0,0,'Cash',NULL,'2025-07-04 17:22:02'),
 (14,1,NULL,'2025-07-04 17:31:10',36209,36209,0,0,'Cash',NULL,'2025-07-04 17:31:10'),
 (15,1,NULL,'2025-07-04 17:34:02',10,10,0,0,'Cash',NULL,'2025-07-04 17:34:02'),
 (16,1,'Dolor vel doloremque','2025-07-04 17:36:17',61010,61010,0,0,'Cash',NULL,'2025-07-04 17:36:17');
/*!40000 ALTER TABLE `core_hms_invoices` ENABLE KEYS */;


--
-- Definition of table `core_hms_medicine_categories`
--

DROP TABLE IF EXISTS `core_hms_medicine_categories`;
CREATE TABLE `core_hms_medicine_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicine_categories`
--

/*!40000 ALTER TABLE `core_hms_medicine_categories` DISABLE KEYS */;
INSERT INTO `core_hms_medicine_categories` (`id`,`name`) VALUES 
 (1,'Antibiotic'),
 (2,'Vitamin'),
 (3,'Painkiller'),
 (4,'Antacids'),
 (5,'Dalton Berry');
/*!40000 ALTER TABLE `core_hms_medicine_categories` ENABLE KEYS */;


--
-- Definition of table `core_hms_medicine_types`
--

DROP TABLE IF EXISTS `core_hms_medicine_types`;
CREATE TABLE `core_hms_medicine_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicine_types`
--

/*!40000 ALTER TABLE `core_hms_medicine_types` DISABLE KEYS */;
INSERT INTO `core_hms_medicine_types` (`id`,`name`) VALUES 
 (1,'Tab'),
 (2,'Inj'),
 (3,'Syr'),
 (4,'Cap'),
 (5,'Gary Vasquez'),
 (6,'Judith Hale');
/*!40000 ALTER TABLE `core_hms_medicine_types` ENABLE KEYS */;


--
-- Definition of table `core_hms_medicines`
--

DROP TABLE IF EXISTS `core_hms_medicines`;
CREATE TABLE `core_hms_medicines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `medicine_category_id` int(10) unsigned NOT NULL,
  `medicine_type_id` int(10) unsigned NOT NULL,
  `generic_name` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_medicines`
--

/*!40000 ALTER TABLE `core_hms_medicines` DISABLE KEYS */;
INSERT INTO `core_hms_medicines` (`id`,`name`,`medicine_category_id`,`medicine_type_id`,`generic_name`,`description`) VALUES 
 (1,'Napa 500mg',4,1,'Paracitamal','Na'),
 (2,'Seclo 20mg',3,4,'Antacid','Na'),
 (3,'Tabib',2,3,'IBN SINA','None'),
 (4,'Stacy Duffy',4,5,'Alyssa Aguilar','Sequi culpa quos adi'),
 (5,'Kaye Garrison',1,2,'Inga Serrano','Maiores ut in porro');
/*!40000 ALTER TABLE `core_hms_medicines` ENABLE KEYS */;


--
-- Definition of table `core_hms_patients`
--

DROP TABLE IF EXISTS `core_hms_patients`;
CREATE TABLE `core_hms_patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `mob_ext` int(10) unsigned NOT NULL,
  `gender` tinyint(3) unsigned NOT NULL,
  `profession` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_patients`
--

/*!40000 ALTER TABLE `core_hms_patients` DISABLE KEYS */;
INSERT INTO `core_hms_patients` (`id`,`name`,`mobile`,`dob`,`mob_ext`,`gender`,`profession`) VALUES 
 (1,'Jahidul Islam','038403423','2000-01-01',1,1,'student'),
 (2,'Jamuna','034343345','2023-01-02',1,1,'na'),
 (3,'Abdur Rahman','23432432','2000-01-20',1,1,'Student'),
 (4,'Laiju Akter ','01701010','2020-02-03',0,1,'Business'),
 (8,'Dakota Valdez','Debitis ipsam in mag','1972-10-04',43,97,'Aliquam reprehenderi');
/*!40000 ALTER TABLE `core_hms_patients` ENABLE KEYS */;


--
-- Definition of table `core_hms_prescription_details`
--

DROP TABLE IF EXISTS `core_hms_prescription_details`;
CREATE TABLE `core_hms_prescription_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) unsigned NOT NULL,
  `medicine_id` int(10) unsigned NOT NULL,
  `dose` varchar(20) NOT NULL,
  `days` double NOT NULL,
  `suggestion` text NOT NULL,
  `medicine_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_prescription_details`
--

/*!40000 ALTER TABLE `core_hms_prescription_details` DISABLE KEYS */;
INSERT INTO `core_hms_prescription_details` (`id`,`prescription_id`,`medicine_id`,`dose`,`days`,`suggestion`,`medicine_name`) VALUES 
 (1,2,1,'0+0+1',1,'after meal','Napa 500mg'),
 (2,2,2,'1+1+1',3,'after meal','Seclo 20mg'),
 (3,3,1,'0+0+1',1,'dfg','Napa 500mg'),
 (4,4,1,'1+0+0',2,'Test','Napa 500mg'),
 (5,4,2,'1+1+1',3,'Test','Seclo 20mg'),
 (6,5,1,'0+1+0',2,'433','1-Napa 500mg'),
 (7,6,1,'1+0+1',2,'433','1-Napa 500mg'),
 (8,6,1,'0+1+1',3,'433','1-Napa 500mg'),
 (9,7,1,'0+0+1',1,'','1-Napa 500mg'),
 (10,7,2,'1+0+1',1,'ddd','2-Seclo 20mg'),
 (11,8,1,'0+0+1',1,'test','1-Napa 500mg'),
 (12,8,1,'0+0+1',1,'test','1-Napa 500mg'),
 (13,9,1,'0+0+1',1,'test','1-Napa 500mg'),
 (14,9,1,'0+0+1',1,'test','1-Napa 500mg');
/*!40000 ALTER TABLE `core_hms_prescription_details` ENABLE KEYS */;


--
-- Definition of table `core_hms_prescriptions`
--

DROP TABLE IF EXISTS `core_hms_prescriptions`;
CREATE TABLE `core_hms_prescriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) unsigned NOT NULL,
  `consultant_id` int(10) unsigned NOT NULL,
  `cc` text NOT NULL,
  `rf` text NOT NULL,
  `investigation` text NOT NULL,
  `advice` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hms_prescriptions`
--

/*!40000 ALTER TABLE `core_hms_prescriptions` DISABLE KEYS */;
INSERT INTO `core_hms_prescriptions` (`id`,`patient_id`,`consultant_id`,`cc`,`rf`,`investigation`,`advice`) VALUES 
 (1,2,1,'Fiver','NA','x-ray','advice'),
 (2,2,1,'Cough','NA','X-RAY, Blood Test','Visit after 1 week'),
 (3,3,1,'Cold','RDD','Blood','Test'),
 (4,1,1,'Cold','BA','Blood Test','Tst'),
 (5,3,2,'Rerum qui aperiam iu','Do voluptatem enim v','Sed numquam do et ea','Consequatur optio l');
/*!40000 ALTER TABLE `core_hms_prescriptions` ENABLE KEYS */;


--
-- Definition of table `core_hms_service_categories`
--

DROP TABLE IF EXISTS `core_hms_service_categories`;
CREATE TABLE `core_hms_service_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_service_categories`
--

/*!40000 ALTER TABLE `core_hms_service_categories` DISABLE KEYS */;
INSERT INTO `core_hms_service_categories` (`id`,`name`) VALUES 
 (1,'Pathology'),
 (2,'Hospital'),
 (3,'Therapy');
/*!40000 ALTER TABLE `core_hms_service_categories` ENABLE KEYS */;


--
-- Definition of table `core_hms_services`
--

DROP TABLE IF EXISTS `core_hms_services`;
CREATE TABLE `core_hms_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `medicine_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hms_services`
--

/*!40000 ALTER TABLE `core_hms_services` DISABLE KEYS */;
INSERT INTO `core_hms_services` (`id`,`name`,`price`,`discount`,`vat`,`medicine_category_id`) VALUES 
 (1,'X-Ray',1000,0,0,1),
 (2,'ECG',3000,0,0,1),
 (3,'MRI',6000,0,0,2),
 (4,'Cyrus Melton',393,0,0,3),
 (5,'Aladdin Matthews',612,76,72,3),
 (6,'Louis Gillespie',298,33,77,1);
/*!40000 ALTER TABLE `core_hms_services` ENABLE KEYS */;


--
-- Definition of table `core_hotel`
--

DROP TABLE IF EXISTS `core_hotel`;
CREATE TABLE `core_hotel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Room_NO` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hotel`
--

/*!40000 ALTER TABLE `core_hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel` ENABLE KEYS */;


--
-- Definition of table `core_hotel_beds`
--

DROP TABLE IF EXISTS `core_hotel_beds`;
CREATE TABLE `core_hotel_beds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `hotel_id` int(10) unsigned NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_beds`
--

/*!40000 ALTER TABLE `core_hotel_beds` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_beds` ENABLE KEYS */;


--
-- Definition of table `core_hotel_booking_details`
--

DROP TABLE IF EXISTS `core_hotel_booking_details`;
CREATE TABLE `core_hotel_booking_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(10) unsigned NOT NULL,
  `bed_id` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `book_from` datetime NOT NULL,
  `book_to` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_booking_details`
--

/*!40000 ALTER TABLE `core_hotel_booking_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_booking_details` ENABLE KEYS */;


--
-- Definition of table `core_hotel_bookings`
--

DROP TABLE IF EXISTS `core_hotel_bookings`;
CREATE TABLE `core_hotel_bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `booking_date` datetime NOT NULL,
  `paid_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_bookings`
--

/*!40000 ALTER TABLE `core_hotel_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_bookings` ENABLE KEYS */;


--
-- Definition of table `core_hotel_receipts`
--

DROP TABLE IF EXISTS `core_hotel_receipts`;
CREATE TABLE `core_hotel_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `booking_id` int(10) unsigned NOT NULL,
  `receipt_total` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_receipts`
--

/*!40000 ALTER TABLE `core_hotel_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_receipts` ENABLE KEYS */;


--
-- Definition of table `core_hotel_receipts_details`
--

DROP TABLE IF EXISTS `core_hotel_receipts_details`;
CREATE TABLE `core_hotel_receipts_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receipt_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `bed_id` int(10) unsigned NOT NULL,
  `book_from` datetime DEFAULT NULL,
  `book_to` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotel_receipts_details`
--

/*!40000 ALTER TABLE `core_hotel_receipts_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_receipts_details` ENABLE KEYS */;


--
-- Definition of table `core_hotel_staffdepartment`
--

DROP TABLE IF EXISTS `core_hotel_staffdepartment`;
CREATE TABLE `core_hotel_staffdepartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hotel_staffdepartment`
--

/*!40000 ALTER TABLE `core_hotel_staffdepartment` DISABLE KEYS */;
INSERT INTO `core_hotel_staffdepartment` (`id`,`department_name`) VALUES 
 (1,'Executive Department'),
 (2,'Front Office Department'),
 (3,'Housekeeping Department'),
 (4,'Food and Beverage (F&B) Department'),
 (5,'Maintenance Department'),
 (6,'Security Department'),
 (7,'Sales and Marketing Department'),
 (8,'Accounting and Finance Department'),
 (9,'Human Resources (HR) Department'),
 (10,'IT Department'),
 (11,'Guest Relations Department'),
 (12,'Purchasing and Inventory Department'),
 (13,'Spa and Wellness Department'),
 (14,'Recreation and Activities Department'),
 (15,'Executive Department'),
 (16,'Front Office Department'),
 (17,'Housekeeping Department'),
 (18,'Food and Beverage (F&B) Department'),
 (19,'Maintenance Department'),
 (20,'Security Department'),
 (21,'Sales and Marketing Department'),
 (22,'Accounting and Finance Department'),
 (23,'Human Resources (HR) Department'),
 (24,'IT Department'),
 (25,'Guest Relations Department'),
 (26,'Purchasing and Inventory Department'),
 (27,'Spa and Wellness Department'),
 (28,'Recreation and Activities Department');
/*!40000 ALTER TABLE `core_hotel_staffdepartment` ENABLE KEYS */;


--
-- Definition of table `core_hotel_staffrole`
--

DROP TABLE IF EXISTS `core_hotel_staffrole`;
CREATE TABLE `core_hotel_staffrole` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hotel_staffrole`
--

/*!40000 ALTER TABLE `core_hotel_staffrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotel_staffrole` ENABLE KEYS */;


--
-- Definition of table `core_hotelb`
--

DROP TABLE IF EXISTS `core_hotelb`;
CREATE TABLE `core_hotelb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_hotelb`
--

/*!40000 ALTER TABLE `core_hotelb` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotelb` ENABLE KEYS */;


--
-- Definition of table `core_hotels`
--

DROP TABLE IF EXISTS `core_hotels`;
CREATE TABLE `core_hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hotels`
--

/*!40000 ALTER TABLE `core_hotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hotels` ENABLE KEYS */;


--
-- Definition of table `core_hr_attendace_methods`
--

DROP TABLE IF EXISTS `core_hr_attendace_methods`;
CREATE TABLE `core_hr_attendace_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_attendace_methods`
--

/*!40000 ALTER TABLE `core_hr_attendace_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_attendace_methods` ENABLE KEYS */;


--
-- Definition of table `core_hr_attendances`
--

DROP TABLE IF EXISTS `core_hr_attendances`;
CREATE TABLE `core_hr_attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `att_datetime` datetime NOT NULL,
  `method_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_attendances`
--

/*!40000 ALTER TABLE `core_hr_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_attendances` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_application_status`
--

DROP TABLE IF EXISTS `core_hr_leave_application_status`;
CREATE TABLE `core_hr_leave_application_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_application_status`
--

/*!40000 ALTER TABLE `core_hr_leave_application_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_application_status` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_applications`
--

DROP TABLE IF EXISTS `core_hr_leave_applications`;
CREATE TABLE `core_hr_leave_applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `reason_id` int(10) unsigned NOT NULL,
  `remark` varchar(45) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_applications`
--

/*!40000 ALTER TABLE `core_hr_leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_applications` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_categories`
--

DROP TABLE IF EXISTS `core_hr_leave_categories`;
CREATE TABLE `core_hr_leave_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_categories`
--

/*!40000 ALTER TABLE `core_hr_leave_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_categories` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_configs`
--

DROP TABLE IF EXISTS `core_hr_leave_configs`;
CREATE TABLE `core_hr_leave_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_configs`
--

/*!40000 ALTER TABLE `core_hr_leave_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_configs` ENABLE KEYS */;


--
-- Definition of table `core_hr_leave_transactions`
--

DROP TABLE IF EXISTS `core_hr_leave_transactions`;
CREATE TABLE `core_hr_leave_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `days` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_leave_transactions`
--

/*!40000 ALTER TABLE `core_hr_leave_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_leave_transactions` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_configs`
--

DROP TABLE IF EXISTS `core_hr_payroll_configs`;
CREATE TABLE `core_hr_payroll_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `payroll_item_id` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_configs`
--

/*!40000 ALTER TABLE `core_hr_payroll_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_configs` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_invoice_details`
--

DROP TABLE IF EXISTS `core_hr_payroll_invoice_details`;
CREATE TABLE `core_hr_payroll_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_invoice_details`
--

/*!40000 ALTER TABLE `core_hr_payroll_invoice_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_invoices`
--

DROP TABLE IF EXISTS `core_hr_payroll_invoices`;
CREATE TABLE `core_hr_payroll_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `billed_at` datetime NOT NULL,
  `invoice_total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_invoices`
--

/*!40000 ALTER TABLE `core_hr_payroll_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_invoices` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_item_types`
--

DROP TABLE IF EXISTS `core_hr_payroll_item_types`;
CREATE TABLE `core_hr_payroll_item_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_item_types`
--

/*!40000 ALTER TABLE `core_hr_payroll_item_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_item_types` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_items`
--

DROP TABLE IF EXISTS `core_hr_payroll_items`;
CREATE TABLE `core_hr_payroll_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_items`
--

/*!40000 ALTER TABLE `core_hr_payroll_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_items` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_receipt_details`
--

DROP TABLE IF EXISTS `core_hr_payroll_receipt_details`;
CREATE TABLE `core_hr_payroll_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receipt_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_receipt_details`
--

/*!40000 ALTER TABLE `core_hr_payroll_receipt_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_hr_payroll_receipts`
--

DROP TABLE IF EXISTS `core_hr_payroll_receipts`;
CREATE TABLE `core_hr_payroll_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `receipt_total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_payroll_receipts`
--

/*!40000 ALTER TABLE `core_hr_payroll_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_payroll_receipts` ENABLE KEYS */;


--
-- Definition of table `core_hr_person_shifts`
--

DROP TABLE IF EXISTS `core_hr_person_shifts`;
CREATE TABLE `core_hr_person_shifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `shift_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_person_shifts`
--

/*!40000 ALTER TABLE `core_hr_person_shifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_person_shifts` ENABLE KEYS */;


--
-- Definition of table `core_hr_shifts`
--

DROP TABLE IF EXISTS `core_hr_shifts`;
CREATE TABLE `core_hr_shifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `from_time` datetime NOT NULL,
  `to_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_hr_shifts`
--

/*!40000 ALTER TABLE `core_hr_shifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_hr_shifts` ENABLE KEYS */;


--
-- Definition of table `core_invoice_details`
--

DROP TABLE IF EXISTS `core_invoice_details`;
CREATE TABLE `core_invoice_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `qty` float NOT NULL,
  `discount` float NOT NULL,
  `vat` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_invoice_details`
--

/*!40000 ALTER TABLE `core_invoice_details` DISABLE KEYS */;
INSERT INTO `core_invoice_details` (`id`,`invoice_id`,`product_id`,`price`,`qty`,`discount`,`vat`) VALUES 
 (1,5,1,299,3,0,0),
 (2,5,2,399,2,0,0),
 (3,6,50,100,1,0,0),
 (4,6,17,200,1,0,0),
 (5,7,50,467,1,0,0),
 (6,8,17,100,1,0,0),
 (7,9,56,100,4,0,0),
 (8,9,47,200,4,0,0),
 (9,11,47,3444,1,0,0),
 (10,11,52,3444,1,0,0),
 (11,13,52,544,1,0,0),
 (12,13,47,655,1,0,0),
 (13,15,47,655,1,0,0),
 (14,17,46,100,1,0,0),
 (15,17,52,20000,1,0,0),
 (16,19,47,100,1,0,0),
 (17,19,50,100,1,0,0),
 (18,21,17,5500,1,0,0),
 (19,21,47,100,1,0,0),
 (20,22,1,299,3,0,0),
 (21,22,2,399,2,0,0),
 (22,24,17,5500,1,0,0),
 (23,26,46,100,1,0,0),
 (24,26,50,100,1,0,0),
 (25,0,17,5500,1,0,0),
 (26,0,47,100,1,0,0),
 (27,27,17,5500,1,0,0),
 (28,27,47,100,1,0,0),
 (29,33,50,100,1,0,0),
 (30,34,46,100,1,0,0),
 (31,35,47,100,1,0,0),
 (32,35,50,100,1,0,0);
/*!40000 ALTER TABLE `core_invoice_details` ENABLE KEYS */;


--
-- Definition of table `core_invoices`
--

DROP TABLE IF EXISTS `core_invoices`;
CREATE TABLE `core_invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `invoice_total` float NOT NULL,
  `paid_total` float NOT NULL,
  `previous_due` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_invoices`
--

/*!40000 ALTER TABLE `core_invoices` DISABLE KEYS */;
INSERT INTO `core_invoices` (`id`,`customer_id`,`created_at`,`remark`,`payment_term`,`updated_at`,`invoice_total`,`paid_total`,`previous_due`) VALUES 
 (1,1,'2025-04-01 00:00:00','Na','','2025-04-01 00:00:00',199,199,0),
 (2,1,'2025-04-01 00:00:00','Na','','2025-04-01 00:00:00',199,199,0),
 (3,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (4,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (5,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (6,1,'0000-00-00 00:00:00','Na','','0000-00-00 00:00:00',0,0,0),
 (7,9,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',0,0,0),
 (8,1,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',100,100,0),
 (9,1,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',1200,1200,0),
 (10,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (11,9,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',6888,6888,0),
 (12,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (13,8,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',1199,1199,0),
 (15,8,'0000-00-00 00:00:00','Na','CASH','0000-00-00 00:00:00',655,655,0),
 (17,1,'2025-05-06 00:00:00','Na','CASH','2025-05-06 00:00:00',20100,20100,0),
 (18,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (19,8,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0),
 (20,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (21,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',5800,5800,0),
 (22,1,'2025-04-01 00:00:00','Na','CASH','2025-04-01 00:00:00',199,199,0),
 (23,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (24,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11300,11300,0),
 (25,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (26,0,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0),
 (27,1,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11200,11200,0),
 (28,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (29,1,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',11200,11200,0),
 (30,0,'0000-00-00 00:00:00','','','0000-00-00 00:00:00',0,0,0),
 (31,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',400,400,0),
 (32,15,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',400,400,0),
 (33,6,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',500,500,0),
 (34,10,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',100,100,0),
 (35,9,'2025-05-07 00:00:00','Na','CASH','2025-05-07 00:00:00',200,200,0);
/*!40000 ALTER TABLE `core_invoices` ENABLE KEYS */;


--
-- Definition of table `core_job_batches`
--

DROP TABLE IF EXISTS `core_job_batches`;
CREATE TABLE `core_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_job_batches`
--

/*!40000 ALTER TABLE `core_job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_job_batches` ENABLE KEYS */;


--
-- Definition of table `core_jobs`
--

DROP TABLE IF EXISTS `core_jobs`;
CREATE TABLE `core_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_jobs`
--

/*!40000 ALTER TABLE `core_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_jobs` ENABLE KEYS */;


--
-- Definition of table `core_manufacturers`
--

DROP TABLE IF EXISTS `core_manufacturers`;
CREATE TABLE `core_manufacturers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_manufacturers`
--

/*!40000 ALTER TABLE `core_manufacturers` DISABLE KEYS */;
INSERT INTO `core_manufacturers` (`id`,`name`) VALUES 
 (1,'APCL'),
 (2,'ISL'),
 (3,'IDB');
/*!40000 ALTER TABLE `core_manufacturers` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_details`
--

DROP TABLE IF EXISTS `core_mfg_bom_details`;
CREATE TABLE `core_mfg_bom_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bom_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `cost` float NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_bom_details`
--

/*!40000 ALTER TABLE `core_mfg_bom_details` DISABLE KEYS */;
INSERT INTO `core_mfg_bom_details` (`id`,`bom_id`,`product_id`,`qty`,`cost`,`uom_id`) VALUES 
 (1,1,400,200,100,1),
 (2,1,401,100,10,2),
 (3,1,402,10,50,3),
 (4,3,49,13,30,1),
 (5,3,17,14,2500,1);
/*!40000 ALTER TABLE `core_mfg_bom_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_finished_goods`
--

DROP TABLE IF EXISTS `core_mfg_bom_finished_goods`;
CREATE TABLE `core_mfg_bom_finished_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `cost` float NOT NULL,
  `bom_id` int(10) unsigned NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_bom_finished_goods`
--

/*!40000 ALTER TABLE `core_mfg_bom_finished_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_bom_finished_goods` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_raw_materials`
--

DROP TABLE IF EXISTS `core_mfg_bom_raw_materials`;
CREATE TABLE `core_mfg_bom_raw_materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `cost` float NOT NULL,
  `bom_id` int(10) unsigned NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_mfg_bom_raw_materials`
--

/*!40000 ALTER TABLE `core_mfg_bom_raw_materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_bom_raw_materials` ENABLE KEYS */;


--
-- Definition of table `core_mfg_bom_secondary_products`
--

DROP TABLE IF EXISTS `core_mfg_bom_secondary_products`;
CREATE TABLE `core_mfg_bom_secondary_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `uom` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_bom_secondary_products`
--

/*!40000 ALTER TABLE `core_mfg_bom_secondary_products` DISABLE KEYS */;
INSERT INTO `core_mfg_bom_secondary_products` (`id`,`product_id`,`qty`,`price`,`uom`) VALUES 
 (1,500,5,400,5);
/*!40000 ALTER TABLE `core_mfg_bom_secondary_products` ENABLE KEYS */;


--
-- Definition of table `core_mfg_boms`
--

DROP TABLE IF EXISTS `core_mfg_boms`;
CREATE TABLE `core_mfg_boms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` varchar(45) NOT NULL,
  `labour_cost` float NOT NULL,
  `date` datetime DEFAULT NULL,
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_boms`
--

/*!40000 ALTER TABLE `core_mfg_boms` DISABLE KEYS */;
INSERT INTO `core_mfg_boms` (`id`,`code`,`name`,`product_id`,`qty`,`labour_cost`,`date`,`remark`) VALUES 
 (1,'100','T-Shirt',1,'100',2000,NULL,NULL),
 (2,'343','BM-3',47,'3',45,NULL,NULL),
 (3,'3532','BM93',47,'34',432,NULL,NULL);
/*!40000 ALTER TABLE `core_mfg_boms` ENABLE KEYS */;


--
-- Definition of table `core_mfg_production_details`
--

DROP TABLE IF EXISTS `core_mfg_production_details`;
CREATE TABLE `core_mfg_production_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `production_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_production_details`
--

/*!40000 ALTER TABLE `core_mfg_production_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_production_details` ENABLE KEYS */;


--
-- Definition of table `core_mfg_productions`
--

DROP TABLE IF EXISTS `core_mfg_productions`;
CREATE TABLE `core_mfg_productions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `production_datetime` datetime NOT NULL,
  `bom_id` int(10) unsigned NOT NULL,
  `labor_cost` float NOT NULL,
  `manager_id` int(10) unsigned NOT NULL,
  `total_cost` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_mfg_productions`
--

/*!40000 ALTER TABLE `core_mfg_productions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mfg_productions` ENABLE KEYS */;


--
-- Definition of table `core_migrations`
--

DROP TABLE IF EXISTS `core_migrations`;
CREATE TABLE `core_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_migrations`
--

/*!40000 ALTER TABLE `core_migrations` DISABLE KEYS */;
INSERT INTO `core_migrations` (`id`,`migration`,`batch`) VALUES 
 (6,'2014_10_12_000000_create_users_table',1),
 (7,'2014_10_12_100000_create_password_reset_tokens_table',1),
 (8,'2014_10_12_100000_create_password_resets_table',1),
 (9,'2019_08_19_000000_create_failed_jobs_table',1),
 (10,'2019_12_14_000001_create_personal_access_tokens_table',1),
 (17,'2024_07_02_044553_create_personal_access_tokens_table',3),
 (18,'0001_01_01_000000_create_users_table',4),
 (19,'0001_01_01_000001_create_cache_table',4),
 (20,'0001_01_01_000002_create_jobs_table',4);
/*!40000 ALTER TABLE `core_migrations` ENABLE KEYS */;


--
-- Definition of table `core_money_receipt_details`
--

DROP TABLE IF EXISTS `core_money_receipt_details`;
CREATE TABLE `core_money_receipt_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money_receipt_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `vat` float NOT NULL,
  `discount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_money_receipt_details`
--

/*!40000 ALTER TABLE `core_money_receipt_details` DISABLE KEYS */;
INSERT INTO `core_money_receipt_details` (`id`,`money_receipt_id`,`product_id`,`price`,`qty`,`vat`,`discount`) VALUES 
 (1,1,36,100,1,0,0),
 (2,7,0,2500,2,0,0),
 (3,7,0,180,1,0,0),
 (4,7,0,999,1,0,0),
 (5,8,36,2500,1,0,0),
 (6,25,0,180,2,0,0),
 (7,25,0,999,1,0,0),
 (8,26,46,180,2,0,0),
 (9,26,47,999,1,0,0),
 (10,27,46,180,2,0,0),
 (11,27,47,999,1,0,0),
 (12,28,46,180,2,0,0),
 (13,28,47,999,1,0,0),
 (14,29,46,180,2,0,0),
 (15,29,47,999,1,0,0),
 (16,31,1,299,3,0,0),
 (17,31,2,399,2,0,0),
 (18,32,50,2000,0,0,0),
 (19,33,50,200,1,0,0),
 (20,34,50,200,1,0,0),
 (21,34,84,400,1,0,0),
 (22,35,50,300,1,0,0),
 (23,35,55,300,1,0,0),
 (24,36,87,200,1,0,0),
 (25,36,62,100,3,0,0),
 (26,37,50,355,1,0,0),
 (27,37,82,355,3,0,0),
 (28,38,57,300000,1,0,0),
 (29,39,50,323,1,0,0),
 (30,40,50,333,1,0,0);
/*!40000 ALTER TABLE `core_money_receipt_details` ENABLE KEYS */;


--
-- Definition of table `core_money_receipts`
--

DROP TABLE IF EXISTS `core_money_receipts`;
CREATE TABLE `core_money_receipts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `receipt_total` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_money_receipts`
--

/*!40000 ALTER TABLE `core_money_receipts` DISABLE KEYS */;
INSERT INTO `core_money_receipts` (`id`,`created_at`,`updated_at`,`customer_id`,`remark`,`receipt_total`,`discount`,`vat`) VALUES 
 (28,'2024-01-03 13:07:18','2024-01-03 13:07:18',1,'',1426.95,NULL,NULL),
 (29,'2024-01-03 13:09:58','2024-01-03 13:09:58',1,'',1426.95,NULL,NULL),
 (30,'2025-04-12 18:42:59','2025-04-12 18:42:59',1,'Na',199,NULL,NULL),
 (31,'2025-04-12 18:45:44','2025-04-12 18:45:44',1,'Na',199,NULL,NULL),
 (32,'2025-04-13 09:03:47','2025-04-13 09:03:47',1,'Na',0,NULL,NULL),
 (33,'2025-04-13 09:08:55','2025-04-13 09:08:55',1,'Na',0,NULL,NULL),
 (34,'2025-04-13 09:09:46','2025-04-13 09:09:46',1,'Na',0,NULL,NULL),
 (35,'2025-04-13 09:11:19','2025-04-13 09:11:19',1,'Na',0,NULL,NULL),
 (36,'2025-04-13 10:14:53','2025-04-13 10:14:53',10,'Na',0,NULL,NULL),
 (37,'2025-04-13 12:36:04','2025-04-13 12:36:04',1,'Na',0,NULL,NULL),
 (38,'2025-04-13 13:43:22','2025-04-13 13:43:22',8,'Na',0,NULL,NULL),
 (39,'2025-04-13 18:26:18','2025-04-13 18:26:18',1,'Na',1000,NULL,NULL),
 (40,'2025-04-13 18:27:34','2025-04-13 18:27:34',1,'Na',333,NULL,NULL);
/*!40000 ALTER TABLE `core_money_receipts` ENABLE KEYS */;


--
-- Definition of table `core_monitor`
--

DROP TABLE IF EXISTS `core_monitor`;
CREATE TABLE `core_monitor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_monitor`
--

/*!40000 ALTER TABLE `core_monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_monitor` ENABLE KEYS */;


--
-- Definition of table `core_monitor2`
--

DROP TABLE IF EXISTS `core_monitor2`;
CREATE TABLE `core_monitor2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL,
  `batch` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_monitor2`
--

/*!40000 ALTER TABLE `core_monitor2` DISABLE KEYS */;
INSERT INTO `core_monitor2` (`id`,`brand`,`batch`) VALUES 
 (1,'asus','a25'),
 (2,'dell','d58');
/*!40000 ALTER TABLE `core_monitor2` ENABLE KEYS */;


--
-- Definition of table `core_order_details`
--

DROP TABLE IF EXISTS `core_order_details`;
CREATE TABLE `core_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_order_details`
--

/*!40000 ALTER TABLE `core_order_details` DISABLE KEYS */;
INSERT INTO `core_order_details` (`id`,`order_id`,`product_id`,`qty`,`price`,`vat`,`discount`,`created_at`,`updated_at`) VALUES 
 (1,1,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (2,1,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (3,2,18,4,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (4,2,17,2,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (5,3,17,2,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (6,3,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (7,4,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (8,4,18,1,40,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (9,5,17,1,16,0,0,'2021-12-14 12:45:23','2021-12-14 12:45:23'),
 (10,14,18,1,30,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27'),
 (11,14,17,1,15,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27'),
 (12,15,18,1,40,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59'),
 (13,15,17,2,16,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59'),
 (14,16,28,1,5000,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11'),
 (15,16,29,1,342,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11'),
 (16,17,29,1,342,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (17,17,28,1,5000,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (18,17,20,1,110,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37'),
 (19,18,28,10,5000,0,0,'2022-01-06 15:14:42','2022-01-06 15:14:42'),
 (20,19,30,1,7999,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54'),
 (21,19,31,1,4444,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54'),
 (22,19,20,1,110,0,0,'2022-01-08 09:05:55','2022-01-08 09:05:55'),
 (23,20,29,1,342,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (24,20,20,1,110,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (25,20,30,1,7999,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (26,20,32,1,5555,0,0,'2022-01-08 09:06:58','2022-01-08 09:06:58'),
 (27,21,29,1,342,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (28,21,28,1,5000,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (29,21,31,1,4444,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (30,21,32,2,5555,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (31,21,30,1,7999,0,0,'2022-01-08 09:07:27','2022-01-08 09:07:27'),
 (32,21,20,1,110,0,0,'2022-01-08 09:07:28','2022-01-08 09:07:28'),
 (40,25,18,1,180,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34'),
 (41,25,17,1,2500,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34'),
 (42,26,18,1,180,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15'),
 (43,26,17,1,2500,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15'),
 (44,32,17,1,100,0,0,'2024-05-12 12:40:03','2024-05-12 12:40:03'),
 (45,33,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (46,34,52,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (47,35,17,5,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (48,36,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (49,37,17,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (50,37,52,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (51,40,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (52,40,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (53,40,0,1,20000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (54,40,0,1,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (55,40,0,1,1500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (56,40,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (57,40,0,1,50,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (58,40,0,1,10000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (59,40,0,1,12000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (60,40,0,1,450,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (61,40,0,1,23,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (62,40,0,1,2300,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (63,40,0,1,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (64,40,0,1,850,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (65,40,0,1,5000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (66,40,0,1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (67,41,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (68,41,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (69,42,0,1,2500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (70,42,0,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (71,42,0,1,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (72,42,0,1,2300,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (73,42,0,1,5000,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (74,43,56,1,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (75,44,56,3,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (76,45,56,13,500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (77,46,0,2,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (78,46,0,2,4500,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `core_order_details` ENABLE KEYS */;


--
-- Definition of table `core_orders`
--

DROP TABLE IF EXISTS `core_orders`;
CREATE TABLE `core_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text DEFAULT NULL,
  `order_total` double NOT NULL DEFAULT 0,
  `paid_amount` double NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT 1,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `table_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_orders`
--

/*!40000 ALTER TABLE `core_orders` DISABLE KEYS */;
INSERT INTO `core_orders` (`id`,`customer_id`,`order_date`,`delivery_date`,`shipping_address`,`order_total`,`paid_amount`,`remark`,`status_id`,`discount`,`vat`,`created_at`,`updated_at`,`table_id`) VALUES 
 (2,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (3,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (4,2,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (5,1,'2021-12-13 00:00:00','2021-12-13 00:00:00','na',0,0,'Na',1,0,0,'2021-12-14 12:40:41','2021-12-14 12:40:41',0),
 (6,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,'',2,0,0,'2023-12-05 17:54:41','2023-12-05 17:54:41',0),
 (7,3,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,NULL,NULL,'2021-12-14 07:02:07','2021-12-14 07:02:07',0),
 (8,2,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:03:51','2021-12-14 07:03:51',0),
 (9,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:05:32','2021-12-14 07:05:32',0),
 (10,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:06:21','2021-12-14 07:06:21',0),
 (11,3,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:07:13','2021-12-14 07:07:13',0),
 (12,2,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:10:25','2021-12-14 07:10:25',0),
 (13,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:13:06','2021-12-14 07:13:06',0),
 (14,1,'2021-12-14 00:00:00','2021-12-14 00:00:00','Mirpur',0,0,NULL,1,0,0,'2021-12-14 07:14:27','2021-12-14 07:14:27',0),
 (15,3,'2021-12-15 00:00:00','2021-12-15 00:00:00','Rampura',0,0,'Testing',1,0,0,'2021-12-15 18:48:59','2021-12-15 18:48:59',0),
 (16,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 12:39:11','2022-01-06 12:39:11',0),
 (17,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 12:43:37','2022-01-06 12:43:37',0),
 (18,1,'2022-01-06 00:00:00','2022-01-06 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-06 15:14:42','2022-01-06 15:14:42',0),
 (19,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',1,0,0,'2022-01-08 09:05:54','2022-01-08 09:05:54',0),
 (20,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',3,0,0,'2023-12-05 18:07:44','2023-12-05 18:07:44',0),
 (21,1,'2022-01-08 00:00:00','2022-01-08 00:00:00','Rampura',0,0,'NA',4,0,0,'2023-12-05 18:06:48','2023-12-05 18:06:48',0),
 (22,8,'2023-12-24 00:00:00','2023-12-24 00:00:00','Mohammadpur',1636.95,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (23,1,'2023-12-27 00:00:00','2023-12-27 00:00:00','Rampura, Banasree',1426.95,0,'Na',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (24,4,'2024-01-03 00:00:00','2024-01-03 00:00:00','Dhanmondi, Dhaka',12304.95,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (25,1,'2024-03-13 00:00:00','2024-03-13 00:00:00','na',0,0,NULL,1,0,0,'2024-03-13 08:26:34','2024-03-13 08:26:34',0),
 (26,2,'2024-03-13 00:00:00','2024-03-13 00:00:00','na',0,0,NULL,1,0,0,'2024-03-13 08:40:15','2024-03-13 08:40:15',0),
 (27,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-05-12 11:46:43','2024-05-12 11:46:43',0),
 (28,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:18','2024-05-12 11:48:18',0),
 (29,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:50','2024-05-12 11:48:50',0),
 (30,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:54','2024-05-12 11:48:54',0),
 (31,23,'2024-03-21 00:00:00','2024-03-24 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 11:48:57','2024-05-12 11:48:57',0),
 (32,1,'2024-05-14 00:00:00','2024-05-14 00:00:00','Rampura',100,0,NULL,1,0,0,'2024-05-12 12:40:03','2024-05-12 12:40:03',0),
 (33,2,'2025-03-06 00:00:00','2025-03-06 00:00:00','',2625,0,'NA',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (34,2,'2025-03-10 00:00:00','2025-03-10 00:00:00','',21000,0,'Test3ddd',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (35,6,'2025-03-15 00:00:00','2025-03-15 00:00:00','',13125,0,'Test44444',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (36,3,'2025-03-17 00:00:00','2025-03-17 00:00:00','',2625,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (37,10,'2025-03-19 00:00:00','2025-03-19 00:00:00','',23625,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (38,0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (39,0,'1970-01-01 00:00:00','1970-01-01 00:00:00','',0,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (40,1,'2025-04-09 00:00:00','2025-04-09 00:00:00','Shipping address',60308.78,0,'ECommerce',1,1865.22,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (41,1,'2025-04-09 00:00:00','2025-04-09 00:00:00','Shipping address',2910,0,'ECommerce',1,90,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (42,1,'2025-04-10 00:00:00','2025-04-10 00:00:00','Shipping address',9991.97,0,'ECommerce',1,309.03,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (43,3,'2025-04-10 00:00:00','2025-04-10 00:00:00','',525,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (44,0,'2025-04-10 00:00:00','1970-01-01 00:00:00','',1575,0,'Test',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (45,1,'2025-04-12 00:00:00','2025-04-12 00:00:00','',6825,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0),
 (46,1,'2025-04-19 00:00:00','2025-04-19 00:00:00','Shipping address',17460,0,'ECommerce',1,540,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `core_orders` ENABLE KEYS */;


--
-- Definition of table `core_password_reset_tokens`
--

DROP TABLE IF EXISTS `core_password_reset_tokens`;
CREATE TABLE `core_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_password_reset_tokens`
--

/*!40000 ALTER TABLE `core_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_password_reset_tokens` ENABLE KEYS */;


--
-- Definition of table `core_personal_access_tokens`
--

DROP TABLE IF EXISTS `core_personal_access_tokens`;
CREATE TABLE `core_personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_personal_access_tokens_token_unique` (`token`),
  KEY `core_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_personal_access_tokens`
--

/*!40000 ALTER TABLE `core_personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_personal_access_tokens` ENABLE KEYS */;


--
-- Definition of table `core_persons`
--

DROP TABLE IF EXISTS `core_persons`;
CREATE TABLE `core_persons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `position_id` int(10) unsigned NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_persons`
--

/*!40000 ALTER TABLE `core_persons` DISABLE KEYS */;
INSERT INTO `core_persons` (`id`,`name`,`position_id`,`sex`,`dob`,`doj`,`mobile`,`address`,`inactive`) VALUES 
 (1,'Jahidul Islam',1,0,'2000-01-01','2021-01-01','677657657567','Rampura',0);
/*!40000 ALTER TABLE `core_persons` ENABLE KEYS */;


--
-- Definition of table `core_positions`
--

DROP TABLE IF EXISTS `core_positions`;
CREATE TABLE `core_positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `grade` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_positions`
--

/*!40000 ALTER TABLE `core_positions` DISABLE KEYS */;
INSERT INTO `core_positions` (`id`,`name`,`grade`,`department_id`) VALUES 
 (1,'Programmer',6,2),
 (2,'System Analyst',3,1);
/*!40000 ALTER TABLE `core_positions` ENABLE KEYS */;


--
-- Definition of table `core_product_brands`
--

DROP TABLE IF EXISTS `core_product_brands`;
CREATE TABLE `core_product_brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_brands`
--

/*!40000 ALTER TABLE `core_product_brands` DISABLE KEYS */;
INSERT INTO `core_product_brands` (`id`,`name`) VALUES 
 (1,'RFL'),
 (2,'Bengal');
/*!40000 ALTER TABLE `core_product_brands` ENABLE KEYS */;


--
-- Definition of table `core_product_categories`
--

DROP TABLE IF EXISTS `core_product_categories`;
CREATE TABLE `core_product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_categories`
--

/*!40000 ALTER TABLE `core_product_categories` DISABLE KEYS */;
INSERT INTO `core_product_categories` (`id`,`name`,`section_id`,`created_at`,`updated_at`) VALUES 
 (9,'Women\'s',2,'2022-01-11 12:46:24',NULL),
 (10,'Men\'s',2,'2022-01-11 12:46:24',NULL),
 (11,'Kids',2,'2022-01-11 12:46:24',NULL);
/*!40000 ALTER TABLE `core_product_categories` ENABLE KEYS */;


--
-- Definition of table `core_product_category`
--

DROP TABLE IF EXISTS `core_product_category`;
CREATE TABLE `core_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_product_category`
--

/*!40000 ALTER TABLE `core_product_category` DISABLE KEYS */;
INSERT INTO `core_product_category` (`id`,`name`,`section_id`,`created_at`,`updated_at`) VALUES 
 (2,'Vegetables',3,'2022-01-11 12:46:24',NULL),
 (3,'Fish',3,'2022-01-11 12:46:24',NULL),
 (4,'Drugs',3,'2022-01-11 12:46:24',NULL),
 (5,'Cameras',1,'2022-01-11 12:46:24',NULL),
 (6,'Computers, Tablets & Laptops',1,'2022-01-11 12:46:24',NULL),
 (7,'Mobile Phone',1,'2022-01-11 12:46:24',NULL),
 (8,'Sound & Vision',1,'2022-01-11 12:46:24',NULL),
 (9,'Women\'s',2,'2022-01-11 12:46:24',NULL),
 (10,'Men\'s',2,'2022-01-11 12:46:24',NULL),
 (11,'Kids',2,'2022-01-11 12:46:24',NULL),
 (12,'Cosmatics',4,'2022-01-11 12:46:24',NULL),
 (13,'T-Shirt',2,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `core_product_category` ENABLE KEYS */;


--
-- Definition of table `core_product_sections`
--

DROP TABLE IF EXISTS `core_product_sections`;
CREATE TABLE `core_product_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `unit_id` int(10) unsigned DEFAULT NULL,
  `photo` varchar(145) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_sections`
--

/*!40000 ALTER TABLE `core_product_sections` DISABLE KEYS */;
INSERT INTO `core_product_sections` (`id`,`name`,`unit_id`,`photo`,`icon`) VALUES 
 (1,'Electronices',1,NULL,NULL),
 (2,'Clothings',1,NULL,NULL),
 (3,'Food and Beverages',1,NULL,NULL),
 (4,'Health & Beauty',1,NULL,NULL),
 (5,'Sports & Leisure',1,NULL,NULL),
 (6,'Books & Entertainments',1,NULL,NULL);
/*!40000 ALTER TABLE `core_product_sections` ENABLE KEYS */;


--
-- Definition of table `core_product_types`
--

DROP TABLE IF EXISTS `core_product_types`;
CREATE TABLE `core_product_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_types`
--

/*!40000 ALTER TABLE `core_product_types` DISABLE KEYS */;
INSERT INTO `core_product_types` (`id`,`name`) VALUES 
 (1,'Finished Goods'),
 (2,'Raw Materials'),
 (3,'Consumable Materials');
/*!40000 ALTER TABLE `core_product_types` ENABLE KEYS */;


--
-- Definition of table `core_product_units`
--

DROP TABLE IF EXISTS `core_product_units`;
CREATE TABLE `core_product_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_product_units`
--

/*!40000 ALTER TABLE `core_product_units` DISABLE KEYS */;
INSERT INTO `core_product_units` (`id`,`name`,`photo`,`icon`) VALUES 
 (1,'Electronics',NULL,NULL),
 (2,'Grocery',NULL,NULL);
/*!40000 ALTER TABLE `core_product_units` ENABLE KEYS */;


--
-- Definition of table `core_production_manager`
--

DROP TABLE IF EXISTS `core_production_manager`;
CREATE TABLE `core_production_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `hire_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_production_manager`
--

/*!40000 ALTER TABLE `core_production_manager` DISABLE KEYS */;
INSERT INTO `core_production_manager` (`id`,`name`,`email`,`phone`,`department`,`is_active`,`hire_date`,`created_at`,`updated_at`) VALUES 
 (1,'John Smith','john.smith@garmentco.com','+1 (555) 123-4567','Cutting',1,'2020-03-15','2025-04-23 23:59:22','2025-04-23 23:59:22'),
 (2,'Maria Garcia','maria.garcia@garmentco.com','+1 (555) 234-5678','Sewing',1,'2019-07-22','2025-04-23 23:59:22','2025-04-23 23:59:22'),
 (3,'Robert Johnson','robert.johnson@garmentco.com','+1 (555) 345-6789','Finishing',1,'2021-01-10','2025-04-23 23:59:22','2025-04-23 23:59:22'),
 (4,'Sarah Williams','sarah.williams@garmentco.com','+1 (555) 456-7890','Quality Control',1,'2018-11-05','2025-04-23 23:59:22','2025-04-23 23:59:22'),
 (5,'David Kim','david.kim@garmentco.com','+1 (555) 567-8901','Packaging',0,'2022-06-30','2025-04-23 23:59:22','2025-04-23 23:59:22');
/*!40000 ALTER TABLE `core_production_manager` ENABLE KEYS */;


--
-- Definition of table `core_products`
--

DROP TABLE IF EXISTS `core_products`;
CREATE TABLE `core_products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `offer_price` double DEFAULT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `regular_price` double NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `product_section_id` int(10) unsigned NOT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `star` int(10) unsigned DEFAULT NULL,
  `is_brand` tinyint(1) DEFAULT 0,
  `offer_discount` float DEFAULT 0,
  `uom_id` int(10) unsigned NOT NULL,
  `weight` float DEFAULT NULL,
  `barcode` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `product_type_id` int(10) unsigned NOT NULL,
  `product_unit_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_products`
--

/*!40000 ALTER TABLE `core_products` DISABLE KEYS */;
INSERT INTO `core_products` (`id`,`name`,`offer_price`,`manufacturer_id`,`regular_price`,`description`,`photo`,`product_category_id`,`product_section_id`,`is_featured`,`star`,`is_brand`,`offer_discount`,`uom_id`,`weight`,`barcode`,`created_at`,`updated_at`,`product_type_id`,`product_unit_id`) VALUES 
 (17,'Brown Borka',5500,1,1,'Na','17.jpg',1,1,1,1,1,10,1,0,'294394','0000-00-00 00:00:00','2025-04-28 12:08:58',1,1),
 (46,'Shirt4',100,1,1,'Na','46.png',1,1,1,1,1,10,1,0,'294394','2025-04-08 11:56:43','2025-04-28 12:05:52',1,1),
 (47,'Juta44',100,1,1,'Na','47.jpg',1,1,0,1,0,10,1,200,'294394','2025-04-08 15:30:20','2025-04-28 12:06:07',1,1),
 (50,'Apple4rrr',100,1,1,'Na','50.webp',1,1,0,1,1,10,1,0,'294394','2025-03-10 15:42:45','2025-04-28 12:06:27',1,1),
 (52,'Oppo a3x',20000,1,23000,'Oppo a3x','a3x-jpg.jpg',7,1,1,3,1,0,1,3,'3434','2025-03-10 15:44:24','2025-03-10 15:44:24',2,1);
/*!40000 ALTER TABLE `core_products` ENABLE KEYS */;


--
-- Definition of table `core_purchase_details`
--

DROP TABLE IF EXISTS `core_purchase_details`;
CREATE TABLE `core_purchase_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  `vat` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_purchase_details`
--

/*!40000 ALTER TABLE `core_purchase_details` DISABLE KEYS */;
INSERT INTO `core_purchase_details` (`id`,`purchase_id`,`product_id`,`qty`,`price`,`vat`,`discount`,`created_at`,`updated_at`) VALUES 
 (1,1,17,50,200,0,0,NULL,NULL),
 (2,1,18,30,250,0,0,NULL,NULL),
 (3,2,17,20,210,0,0,NULL,NULL),
 (4,2,40,70,240,0,0,NULL,NULL),
 (5,3,39,10,202,0,0,NULL,NULL),
 (6,4,40,30,300,0,0,NULL,NULL),
 (7,10,1,4,200,0,0,NULL,NULL),
 (8,15,18,1,180,0,0,NULL,NULL),
 (9,15,50,1,345,0,0,NULL,NULL),
 (10,15,17,1,2500,0,0,NULL,NULL),
 (11,16,50,1,345,0,0,NULL,NULL),
 (12,16,17,1,2500,0,0,NULL,NULL),
 (13,17,17,14,2500,0,0,NULL,NULL),
 (14,17,50,15,345,0,0,NULL,NULL),
 (15,50,52,6,19000,0,0,NULL,NULL),
 (16,51,17,3,4000,0,0,NULL,NULL),
 (17,51,52,1,4000,0,0,NULL,NULL),
 (18,52,56,100,20,0,0,NULL,NULL),
 (19,53,56,10,300,0,0,NULL,NULL),
 (20,64,1,3,1242,0,0,'2025-05-20 11:23:44','2025-05-20 11:23:44'),
 (21,64,2,1,1322,0,0,'2025-05-20 11:23:44','2025-05-20 11:23:44'),
 (22,64,3,4,1322,0,0,'2025-05-20 11:23:44','2025-05-20 11:23:44'),
 (23,65,1,3,1242,0,0,'2025-05-20 11:30:40','2025-05-20 11:30:40'),
 (24,65,2,1,1322,0,0,'2025-05-20 11:30:40','2025-05-20 11:30:40'),
 (25,65,3,4,1322,0,0,'2025-05-20 11:30:41','2025-05-20 11:30:41'),
 (26,66,1,3,1242,0,0,'2025-05-20 11:49:17','2025-05-20 11:49:17'),
 (27,67,1,3,1242,0,0,'2025-05-20 11:49:39','2025-05-20 11:49:39'),
 (28,68,1,3,1242,0,0,'2025-05-20 11:51:55','2025-05-20 11:51:55'),
 (29,68,2,1,1322,0,0,'2025-05-20 11:51:56','2025-05-20 11:51:56'),
 (30,68,3,4,1322,0,0,'2025-05-20 11:51:56','2025-05-20 11:51:56'),
 (31,69,1,3,1242,0,0,'2025-05-20 11:52:25','2025-05-20 11:52:25'),
 (32,69,2,1,1322,0,0,'2025-05-20 11:52:25','2025-05-20 11:52:25'),
 (33,69,3,4,1322,0,0,'2025-05-20 11:52:25','2025-05-20 11:52:25');
/*!40000 ALTER TABLE `core_purchase_details` ENABLE KEYS */;


--
-- Definition of table `core_purchases`
--

DROP TABLE IF EXISTS `core_purchases`;
CREATE TABLE `core_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` int(10) unsigned NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` text NOT NULL,
  `purchase_total` double NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `discount` float DEFAULT 0,
  `vat` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_purchases`
--

/*!40000 ALTER TABLE `core_purchases` DISABLE KEYS */;
INSERT INTO `core_purchases` (`id`,`supplier_id`,`purchase_date`,`delivery_date`,`shipping_address`,`purchase_total`,`paid_amount`,`remark`,`status_id`,`discount`,`vat`,`created_at`,`updated_at`) VALUES 
 (1,1,'2023-12-24 00:00:00','2023-12-24 00:00:00','Rangpur',18375,0,'Na',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (2,2,'2023-12-24 00:00:00','2023-12-24 00:00:00','',22050,0,'',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (3,1,'2023-12-24 00:00:00','2023-12-24 00:00:00','',2121,0,'',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (4,1,'2023-12-24 00:00:00','2023-12-24 00:00:00','',9450,0,'',1,0,0,'2024-03-31 16:17:58','2024-03-31 16:17:42'),
 (5,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-03-31 10:20:36','2024-03-31 10:20:36'),
 (6,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-03-31 10:25:03','2024-03-31 10:25:03'),
 (7,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-03-31 10:26:17','2024-03-31 10:26:17'),
 (8,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 09:52:29','2024-04-01 09:52:29'),
 (9,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 09:53:48','2024-04-01 09:53:48'),
 (10,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 09:56:29','2024-04-01 09:56:29'),
 (11,1,'2024-03-10 00:00:00','2024-03-10 00:00:00','Rampura',0,0,NULL,1,0,0,'2024-04-01 10:22:59','2024-04-01 10:22:59'),
 (12,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:48:06','2024-04-02 09:48:06'),
 (13,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:49:37','2024-04-02 09:49:37'),
 (14,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:50:35','2024-04-02 09:50:35'),
 (15,2,'2024-04-03 00:00:00','2024-04-03 00:00:00','Test',0,0,NULL,1,0,0,'2024-04-02 09:51:47','2024-04-02 09:51:47'),
 (16,1,'2024-06-04 00:00:00','2024-06-04 00:00:00','Test',2987.25,0,'  NA',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (17,2,'2024-06-05 00:00:00','2024-06-05 00:00:00','',42183.75,0,'',1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
 (18,1,'2024-01-01 00:00:00','2024-01-05 00:00:00','Rampura',100,1000,'NA',1,0,0,'2024-07-10 12:27:24','2024-07-10 12:27:24'),
 (19,1,'2024-01-01 00:00:00','2024-01-05 00:00:00','Rampura',100,1000,'NA',1,0,0,'2024-07-14 12:46:30','2024-07-14 12:46:30'),
 (20,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3621.45,3621.45,'NA',1,0,0,'2024-07-14 12:58:16','2024-07-14 12:58:16'),
 (21,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:01:43','2024-07-14 13:01:43'),
 (22,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:04:31','2024-07-14 13:04:31'),
 (23,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:07:02','2024-07-14 13:07:02'),
 (24,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:08:00','2024-07-14 13:08:00'),
 (25,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:08:10','2024-07-14 13:08:10'),
 (26,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:08:20','2024-07-14 13:08:20'),
 (27,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:09:04','2024-07-14 13:09:04'),
 (28,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:09:31','2024-07-14 13:09:31'),
 (29,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:09:52','2024-07-14 13:09:52'),
 (30,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:10:11','2024-07-14 13:10:11'),
 (31,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:10:14','2024-07-14 13:10:14'),
 (32,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:10:31','2024-07-14 13:10:31'),
 (33,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:10:55','2024-07-14 13:10:55'),
 (34,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:14:34','2024-07-14 13:14:34'),
 (35,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:05','2024-07-14 13:15:05'),
 (36,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:07','2024-07-14 13:15:07'),
 (37,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:31','2024-07-14 13:15:31'),
 (38,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:15:33','2024-07-14 13:15:33'),
 (39,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:00','2024-07-14 13:16:00'),
 (40,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:01','2024-07-14 13:16:01'),
 (41,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:02','2024-07-14 13:16:02'),
 (42,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',37117.5,37117.5,'NA',1,0,0,'2024-07-14 13:16:05','2024-07-14 13:16:05'),
 (43,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:16:20','2024-07-14 13:16:20'),
 (44,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:17:23','2024-07-14 13:17:23'),
 (45,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:17:31','2024-07-14 13:17:31'),
 (46,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:18:13','2024-07-14 13:18:13'),
 (47,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',3622.5,3622.5,'NA',1,0,0,'2024-07-14 13:18:22','2024-07-14 13:18:22'),
 (48,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:18:42','2024-07-14 13:18:42'),
 (49,1,'2024-07-14 00:00:00','2024-07-14 00:00:00','na',29872.5,29872.5,'NA',1,0,0,'2024-07-14 13:19:35','2024-07-14 13:19:35'),
 (50,4,'2025-03-10 00:00:00','2025-03-10 00:00:00','',119700,0,'Testk',1,0,0,'2025-03-10 15:58:37','2025-03-10 15:58:37'),
 (51,4,'2025-03-19 00:00:00','2025-03-19 00:00:00','',16800,0,'',1,0,0,'2025-03-19 14:29:20','2025-03-19 14:29:20'),
 (52,1,'2025-04-10 00:00:00','2025-04-10 00:00:00','',2100,0,'testing',1,0,0,'2025-04-10 18:23:24','2025-04-10 18:23:24'),
 (53,1,'2025-04-12 00:00:00','2025-04-12 00:00:00','',3150,0,'',1,0,0,'2025-04-12 16:39:29','2025-04-12 16:39:29'),
 (54,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','Rampura',3456,3456,'NA',1,0,0,'2025-05-20 10:48:31','2025-05-20 10:48:31'),
 (55,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','Rampura',3456,3456,'NA',1,0,0,'2025-05-20 10:50:08','2025-05-20 10:50:08'),
 (56,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 10:59:35','2025-05-20 10:59:35'),
 (57,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:05:26','2025-05-20 11:05:26'),
 (58,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:13:27','2025-05-20 11:13:27'),
 (59,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:17:23','2025-05-20 11:17:23'),
 (60,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:18:39','2025-05-20 11:18:39'),
 (61,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:20:44','2025-05-20 11:20:44'),
 (62,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:21:54','2025-05-20 11:21:54'),
 (63,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:22:12','2025-05-20 11:22:12'),
 (64,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:23:44','2025-05-20 11:23:44'),
 (65,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:30:40','2025-05-20 11:30:40'),
 (66,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:49:17','2025-05-20 11:49:17'),
 (67,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:49:39','2025-05-20 11:49:39'),
 (68,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:51:55','2025-05-20 11:51:55'),
 (69,1,'2025-05-20 00:00:00','2025-05-20 00:00:00','NA',3444,3444,'Test',1,0,0,'2025-05-20 11:52:25','2025-05-20 11:52:25');
/*!40000 ALTER TABLE `core_purchases` ENABLE KEYS */;


--
-- Definition of table `core_raw_materials`
--

DROP TABLE IF EXISTS `core_raw_materials`;
CREATE TABLE `core_raw_materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `supplier_name` varchar(45) NOT NULL,
  `unit_cost` int(10) unsigned NOT NULL,
  `total_cost` int(10) unsigned NOT NULL DEFAULT 0,
  `color` varchar(45) NOT NULL DEFAULT '',
  `quantity` int(10) unsigned NOT NULL DEFAULT 0,
  `unit` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_raw_materials`
--

/*!40000 ALTER TABLE `core_raw_materials` DISABLE KEYS */;
INSERT INTO `core_raw_materials` (`id`,`name`,`supplier_name`,`unit_cost`,`total_cost`,`color`,`quantity`,`unit`) VALUES 
 (7,'100% Cotton Fabric','Textile World Inc.',5,500,'White',100,1),
 (8,'Polyester Blend','Global Fabrics Ltd.',3,300,'Black',100,1),
 (9,'Silk Chiffon','Luxury Textiles Co.',15,1500,'Ivory',100,1),
 (10,'Denim Fabric','Blue Horizon Mills',8,800,'Blue',100,1),
 (11,'Linen Cloth','Natural Fibers Corp.',7,700,'Beige',100,1),
 (12,'Wool Suiting','Premium Woolens LLC',12,1200,'Charcoal',100,1);
/*!40000 ALTER TABLE `core_raw_materials` ENABLE KEYS */;


--
-- Definition of table `core_rest_tables`
--

DROP TABLE IF EXISTS `core_rest_tables`;
CREATE TABLE `core_rest_tables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 0,
  `photo` varchar(45) DEFAULT NULL,
  `seats` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_rest_tables`
--

/*!40000 ALTER TABLE `core_rest_tables` DISABLE KEYS */;
INSERT INTO `core_rest_tables` (`id`,`name`,`status`,`photo`,`seats`) VALUES 
 (1,'Table 1',0,'1.png',6),
 (2,'Table 2',1,'2.jpeg',5),
 (3,'Table 3',2,'3.jpg',2),
 (4,'Table 4',1,'4.jpeg',4),
 (5,'Table 5',1,'5.jpg',2),
 (6,'Table 6',1,'6.jpg',12),
 (7,'Table 7',1,'10-jpg.jpg',10),
 (8,'Guest 1',1,'6-png.png',5);
/*!40000 ALTER TABLE `core_rest_tables` ENABLE KEYS */;


--
-- Definition of table `core_roles`
--

DROP TABLE IF EXISTS `core_roles`;
CREATE TABLE `core_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_roles`
--

/*!40000 ALTER TABLE `core_roles` DISABLE KEYS */;
INSERT INTO `core_roles` (`id`,`name`,`updated_at`,`created_at`) VALUES 
 (1,'Admin','2024-03-02 04:59:14','2024-03-02 10:59:14'),
 (2,'Manager','2024-02-28 12:10:59','2024-02-28 12:10:59'),
 (4,'Guest','2024-03-07 10:24:21','2024-03-07 10:24:21'),
 (5,'Demo1','2024-03-07 12:25:34','2024-06-09 12:38:21'),
 (12,'Dem34','2024-06-11 05:29:21','2024-06-11 05:29:21');
/*!40000 ALTER TABLE `core_roles` ENABLE KEYS */;


--
-- Definition of table `core_room_types`
--

DROP TABLE IF EXISTS `core_room_types`;
CREATE TABLE `core_room_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_room_types`
--

/*!40000 ALTER TABLE `core_room_types` DISABLE KEYS */;
INSERT INTO `core_room_types` (`id`,`name`) VALUES 
 (1,'Single'),
 (2,'Double');
/*!40000 ALTER TABLE `core_room_types` ENABLE KEYS */;


--
-- Definition of table `core_rooms`
--

DROP TABLE IF EXISTS `core_rooms`;
CREATE TABLE `core_rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `room_type_id` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_rooms`
--

/*!40000 ALTER TABLE `core_rooms` DISABLE KEYS */;
INSERT INTO `core_rooms` (`id`,`name`,`code`,`room_type_id`,`price`) VALUES 
 (1,'Double South Side 200sft 2nd floor- 322','322',2,2000),
 (2,'Single 100sft non ac -324','324',1,500);
/*!40000 ALTER TABLE `core_rooms` ENABLE KEYS */;


--
-- Definition of table `core_round63`
--

DROP TABLE IF EXISTS `core_round63`;
CREATE TABLE `core_round63` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `roll` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_round63`
--

/*!40000 ALTER TABLE `core_round63` DISABLE KEYS */;
INSERT INTO `core_round63` (`id`,`name`,`contact`,`email`,`roll`) VALUES 
 (1,'Naiyem','01515618932','mdnaiyem@gmail.com','1286770');
/*!40000 ALTER TABLE `core_round63` ENABLE KEYS */;


--
-- Definition of table `core_sections`
--

DROP TABLE IF EXISTS `core_sections`;
CREATE TABLE `core_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_sections`
--

/*!40000 ALTER TABLE `core_sections` DISABLE KEYS */;
INSERT INTO `core_sections` (`id`,`name`) VALUES 
 (1,'Electronices'),
 (2,'Clothings'),
 (3,'Food and Beverages'),
 (4,'Health & Beauty'),
 (5,'Sports & Leisure'),
 (6,'Books & Entertainments');
/*!40000 ALTER TABLE `core_sections` ENABLE KEYS */;


--
-- Definition of table `core_sessions`
--

DROP TABLE IF EXISTS `core_sessions`;
CREATE TABLE `core_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_sessions_user_id_index` (`user_id`),
  KEY `core_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_sessions`
--

/*!40000 ALTER TABLE `core_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_sessions` ENABLE KEYS */;


--
-- Definition of table `core_shippers`
--

DROP TABLE IF EXISTS `core_shippers`;
CREATE TABLE `core_shippers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_shippers`
--

/*!40000 ALTER TABLE `core_shippers` DISABLE KEYS */;
INSERT INTO `core_shippers` (`id`,`name`,`contact_person`,`contact_no`) VALUES 
 (1,'Sundarban Courier ','Mr. Jahid','343243242');
/*!40000 ALTER TABLE `core_shippers` ENABLE KEYS */;


--
-- Definition of table `core_site_album_details`
--

DROP TABLE IF EXISTS `core_site_album_details`;
CREATE TABLE `core_site_album_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_album_id` int(10) unsigned NOT NULL,
  `photo` varchar(245) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_album_details`
--

/*!40000 ALTER TABLE `core_site_album_details` DISABLE KEYS */;
INSERT INTO `core_site_album_details` (`id`,`site_album_id`,`photo`,`name`,`description`,`inactive`) VALUES 
 (1,1,'./uploads/posts/1548841158.jpg','Intellect Software Ltd','Leading Software Company',0),
 (2,1,'1548843065.jpg','Intellect Cloud POS','Intellect Enterprise Resource Planning (ERP) is business management&#8230;',0),
 (3,1,'1548841332.jpg','Education and Training','For many people, gaining new skills through accredited&#8230;',0),
 (4,2,'1548867137.svg','Food and Beverage',NULL,0),
 (5,2,'1548867301.svg','Retail Goods',NULL,0),
 (6,2,'1548867424.svg','Energy, Oil and Gas',NULL,0),
 (7,2,'1548867363.svg','Chemical Goods',NULL,0),
 (8,2,'1548867453.svg','Consumer Packaged Goods',NULL,0),
 (9,3,'15488786820.jpg','Screenshot1',NULL,0),
 (10,3,'15488786821.jpg','Screenshot2',NULL,0),
 (11,4,'15488797600.jpg','POS1',NULL,0),
 (12,4,'15488797601.jpg','POS2',NULL,0),
 (13,4,'15488797602.jpg','POS3',NULL,0);
/*!40000 ALTER TABLE `core_site_album_details` ENABLE KEYS */;


--
-- Definition of table `core_site_albums`
--

DROP TABLE IF EXISTS `core_site_albums`;
CREATE TABLE `core_site_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_albums`
--

/*!40000 ALTER TABLE `core_site_albums` DISABLE KEYS */;
INSERT INTO `core_site_albums` (`id`,`name`,`created_at`,`description`,`photo`) VALUES 
 (1,'Main Slider',NULL,'Na',NULL),
 (2,'INDUSTRY SECTORS',NULL,'We cover different industry sectors, from food and beverage, chemical, retail, durable goods and more. Check the full list.',NULL),
 (3,'Screenshot - Home Page',NULL,NULL,NULL),
 (4,'POS',NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_site_albums` ENABLE KEYS */;


--
-- Definition of table `core_site_attributes`
--

DROP TABLE IF EXISTS `core_site_attributes`;
CREATE TABLE `core_site_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_attributes`
--

/*!40000 ALTER TABLE `core_site_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_site_attributes` ENABLE KEYS */;


--
-- Definition of table `core_site_clients`
--

DROP TABLE IF EXISTS `core_site_clients`;
CREATE TABLE `core_site_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_clients`
--

/*!40000 ALTER TABLE `core_site_clients` DISABLE KEYS */;
INSERT INTO `core_site_clients` (`id`,`name`,`photo`,`review`,`website`) VALUES 
 (1,'Karnaphuli Group','1548871087-png.png','Na','https://www.karnaphuli.com/'),
 (2,'Doreen','1548871127-png.png','Na','https://doreen.com/');
/*!40000 ALTER TABLE `core_site_clients` ENABLE KEYS */;


--
-- Definition of table `core_site_menu_sub_details`
--

DROP TABLE IF EXISTS `core_site_menu_sub_details`;
CREATE TABLE `core_site_menu_sub_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `site_menu_sub_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menu_sub_details`
--

/*!40000 ALTER TABLE `core_site_menu_sub_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_site_menu_sub_details` ENABLE KEYS */;


--
-- Definition of table `core_site_menu_subs`
--

DROP TABLE IF EXISTS `core_site_menu_subs`;
CREATE TABLE `core_site_menu_subs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_menu_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menu_subs`
--

/*!40000 ALTER TABLE `core_site_menu_subs` DISABLE KEYS */;
INSERT INTO `core_site_menu_subs` (`id`,`site_menu_id`,`name`,`link`,`has_child`) VALUES 
 (1,2,'POS ERP','pos-erp',0),
 (2,2,'ERP-Garments','garment-erp',0),
 (3,2,'ERP-General Insurance','general-insurance-erp',0),
 (4,2,'ERP-Education','education-erp',0),
 (5,2,'ERP Manufacturing','manufacturing-erp',0),
 (6,2,'ERP Hospital','hospital-erp',0),
 (7,2,'ERP Texttile','texttile-erp',0),
 (8,2,'ERP Real Estate','real-estate-erp',0),
 (9,8,'Web publising','webpublishing',0),
 (10,8,'Javascript Library','javascript-library',0),
 (11,8,'Server Side','server-side',0);
/*!40000 ALTER TABLE `core_site_menu_subs` ENABLE KEYS */;


--
-- Definition of table `core_site_menus`
--

DROP TABLE IF EXISTS `core_site_menus`;
CREATE TABLE `core_site_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_menus`
--

/*!40000 ALTER TABLE `core_site_menus` DISABLE KEYS */;
INSERT INTO `core_site_menus` (`id`,`name`,`link`,`has_child`) VALUES 
 (1,'Home','/',0),
 (2,'Software','./software.html',1),
 (3,'Service','./service.html',0),
 (4,'Partner','./partner.html',0),
 (5,'Client','./client.html',0),
 (6,'About','./about.html',0),
 (7,'Contact','/contact.html',0),
 (8,'Blog','./blog.html',1);
/*!40000 ALTER TABLE `core_site_menus` ENABLE KEYS */;


--
-- Definition of table `core_site_pages`
--

DROP TABLE IF EXISTS `core_site_pages`;
CREATE TABLE `core_site_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `slug` varchar(145) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_pages`
--

/*!40000 ALTER TABLE `core_site_pages` DISABLE KEYS */;
INSERT INTO `core_site_pages` (`id`,`name`,`link`,`inactive`,`slug`,`description`,`photo`) VALUES 
 (1,'POS ERP','http',0,NULL,'Integrated solution from production to point of sale for any retials business including\r\n                                supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery,\r\n                                furniture, tiles &amp; sanitary etc',NULL);
/*!40000 ALTER TABLE `core_site_pages` ENABLE KEYS */;


--
-- Definition of table `core_site_post_categories`
--

DROP TABLE IF EXISTS `core_site_post_categories`;
CREATE TABLE `core_site_post_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_post_categories`
--

/*!40000 ALTER TABLE `core_site_post_categories` DISABLE KEYS */;
INSERT INTO `core_site_post_categories` (`id`,`name`) VALUES 
 (1,'Business'),
 (2,'Software');
/*!40000 ALTER TABLE `core_site_post_categories` ENABLE KEYS */;


--
-- Definition of table `core_site_post_details`
--

DROP TABLE IF EXISTS `core_site_post_details`;
CREATE TABLE `core_site_post_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_post_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_post_details`
--

/*!40000 ALTER TABLE `core_site_post_details` DISABLE KEYS */;
INSERT INTO `core_site_post_details` (`id`,`site_post_id`,`description`,`photo`,`name`) VALUES 
 (1,1,'Product multi-dimensional measurement unit',NULL,NULL),
 (2,1,'Convenience of buying and selling products according to batch / lot\r\n                                        number',NULL,NULL),
 (3,1,'Advantages of Product Metrics',NULL,NULL),
 (4,1,'Business data will never be lost or ',NULL,NULL),
 (5,1,'Buying from multiple branches can be sold through the same software',NULL,NULL),
 (6,1,'The software will never slow down, if the data is high or even from the remote\r\n                                        location.',NULL,NULL),
 (7,2,'Accounting Management',NULL,NULL),
 (8,2,'Payroll Management',NULL,NULL),
 (9,2,' Inventory Management',NULL,NULL),
 (10,2,'Purchase Management',NULL,NULL),
 (11,2,'Production & Distribution Management',NULL,NULL),
 (12,2,' Human Resource Management',NULL,NULL),
 (13,2,' Customer Relationship Management',NULL,NULL),
 (14,2,'Sales Management',NULL,NULL),
 (15,2,'Barcode Creator',NULL,NULL),
 (16,2,'Cloud Backup Server',NULL,NULL),
 (17,4,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos\r\n                                        himenaeos. Nulla nunc dui, tristique in semper vel.',NULL,'Super Design Layout '),
 (18,4,'Intellect Cloud pos software can be automated update after the release new\r\n                                        version of software. Update for the better performace and better userfriendly.',NULL,'Regular Updates & Support'),
 (19,4,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos\r\n                                        himenaeos nulla nunc dui.',NULL,'Responsive Web Design');
/*!40000 ALTER TABLE `core_site_post_details` ENABLE KEYS */;


--
-- Definition of table `core_site_posts`
--

DROP TABLE IF EXISTS `core_site_posts`;
CREATE TABLE `core_site_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(245) DEFAULT NULL,
  `site_album_id` int(10) unsigned DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `post_category_id` int(10) unsigned DEFAULT NULL,
  `post_page_id` int(10) unsigned DEFAULT NULL,
  `photo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_posts`
--

/*!40000 ALTER TABLE `core_site_posts` DISABLE KEYS */;
INSERT INTO `core_site_posts` (`id`,`name`,`description`,`slug`,`site_album_id`,`inactive`,`post_category_id`,`post_page_id`,`photo`) VALUES 
 (1,'Explain why its best','There are several kind of information we have for why we are best. Some the best features\r\n                                we provide for you that are the world wide challenging features. Some best features are\r\n                                given below.',NULL,3,0,1,1,NULL),
 (2,'Great way to Include with POS','With integrated POS software, the following business software is listed together.',NULL,4,0,1,1,NULL),
 (3,'ERP - POS','Integrated solution from production to point of sale for any retials business including\r\n                                supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery,\r\n                                furniture, tiles &amp; sanitary etc',NULL,5,0,1,1,'1548843653.jpg'),
 (4,'Intellect Cloud POS Software - features','Responsive & optimized for mobile devices. Completely without coding skills!',NULL,NULL,0,NULL,NULL,'15488780820.jpg');
/*!40000 ALTER TABLE `core_site_posts` ENABLE KEYS */;


--
-- Definition of table `core_site_product_categories`
--

DROP TABLE IF EXISTS `core_site_product_categories`;
CREATE TABLE `core_site_product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_product_categories`
--

/*!40000 ALTER TABLE `core_site_product_categories` DISABLE KEYS */;
INSERT INTO `core_site_product_categories` (`id`,`name`) VALUES 
 (1,'ERP'),
 (2,'OTHER SOFTWARES');
/*!40000 ALTER TABLE `core_site_product_categories` ENABLE KEYS */;


--
-- Definition of table `core_site_product_uoms`
--

DROP TABLE IF EXISTS `core_site_product_uoms`;
CREATE TABLE `core_site_product_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_product_uoms`
--

/*!40000 ALTER TABLE `core_site_product_uoms` DISABLE KEYS */;
INSERT INTO `core_site_product_uoms` (`id`,`name`) VALUES 
 (1,'Piece');
/*!40000 ALTER TABLE `core_site_product_uoms` ENABLE KEYS */;


--
-- Definition of table `core_site_products`
--

DROP TABLE IF EXISTS `core_site_products`;
CREATE TABLE `core_site_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `site_product_category_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(345) DEFAULT NULL,
  `regular_price` float DEFAULT NULL,
  `offer_price` float DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT NULL,
  `current_stock` float DEFAULT NULL,
  `site_product_uom_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_products`
--

/*!40000 ALTER TABLE `core_site_products` DISABLE KEYS */;
INSERT INTO `core_site_products` (`id`,`name`,`site_product_category_id`,`description`,`photo`,`regular_price`,`offer_price`,`inactive`,`current_stock`,`site_product_uom_id`,`slug`,`icon`) VALUES 
 (1,'POS ERP',1,' Integrated solution from production to point of sale for any retials business including supershop, clothing, pharmacy, restaurant/food, electronics, library, jewellery, furniture, tiles & sanitary etc','1548843653.jpg',0,0,0,0,1,'pos-erp',''),
 (2,'ERP - GARMENTS',1,'Intellect Garments ERP is one of the leading ERP solution provider, especially for Garments industries which is integrated with different modules that cover all the…','1548855465.jpg',0,0,0,0,1,'garments-erp',NULL),
 (3,'ERP - GENERAL INSURANCE',1,'Our Insurance software so flexible that you will reach your business goals in no time. Stop struggling with legacy systems! Our intellect software will help…','1548855650.jpg',0,0,0,0,1,'genaral-insurance-erp',NULL),
 (4,'ERP - EDUCATION',1,'Intellect education management software is used by teachers, students, and school/college/university administrators for organization and collaboration, and to facilitate learning. School software is','1548856590.jpg',0,0,0,0,1,'education-erp',NULL),
 (5,'ERP - MANUFACTURING',1,'Intellect ERP gives a company an integrated real-time view of its core business processes such as production, order processing, and inventory management, tied together by…','1548856850.jpg',0,0,0,0,1,'manufacturing-erp',NULL),
 (6,'ERP - HOSPITAL',1,'Intellect Hospital Management Software is a comprehensive and integrated hospital management software, designed to manage all aspects of hospital operations.(i.e. Outpatient and Inpatient management, Patient…','1548857774.jpg',0,0,0,0,1,'hospital-erp',NULL),
 (7,'ERP - MERCHANDISING',1,'Merchandising, CONTROL Retail Management System and POS also takes care of Retail CRM, Inventory Management, online trading, Sales & Profit Analysis, Order Entry & Invoicing,…','1548858095.jpg',0,0,0,0,1,'merchandising-erp',NULL),
 (8,'ERP - TEXTILE',1,'The Intellect ERP (enterprise resource planning) software solutions - seek to integrate the business processes involving eight critical areas in the textile production planning which…','1548858372.jpg',0,0,0,0,1,'texttile-erp',NULL),
 (9,'ERP - REAL ESTATE',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater','1548858645.jpg',0,0,0,0,1,'real-estate-erp',NULL),
 (10,'Accounting',2,'Accounting Software includes general journal, creating bill & invoice, all financial reports (Trial Balance, Income Statement, Balance Sheet) and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M19 2H5c-1.103 0-2 .897-2 2v16c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zM5 20V4h14l.001 16H5z\"></path><path d=\"M7 12h2v2H7zm0 4h2v2H7zm4-4h2v2h-2zM7 6h10v4H7zm4 10h2v2h-2zm4-4h2v6h-2z\"></path>',0,0,0,0,1,'accounting',NULL),
 (11,'HR & Accounting',2,'Human Resource Management System includes person management, payroll, attendance, leave & holiday, shift & schedule, accounting and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M9.715 12c1.151 0 2-.849 2-2s-.849-2-2-2-2 .849-2 2 .848 2 2 2z\"></path><path d=\"M20 4H4c-1.103 0-2 .841-2 1.875v12.25C2 19.159 2.897 20 4 20h16c1.103 0 2-.841 2-1.875V5.875C22 4.841 21.103 4 20 4zm0 14-16-.011V6',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (12,'Diagnostic Application',2,'Diagnostic Application includes pharmacy management, radioloy reporting management, sample collection and reporting management and so on','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M15.794 11.09c.332-.263.648-.542.947-.84l.136-.142c.283-.293.552-.598.801-.919l.062-.075c.255-.335.486-.688.702-1.049l.128-.22c.205-.364.395-.737.559-1.123.02-.047.035-.095.055-.142.147-.361.274-.731.383-1.109.02',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (13,'Doctors Prescription',2,'Doctors Prescription Application includes appointment scheduling, visit fee collection, create and print prescription and so on..','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M8.434 20.566c1.335 0 2.591-.52 3.535-1.464l7.134-7.133a5.008 5.008 0 0 0-.001-7.072 4.969 4.969 0 0 0-3.536-1.463c-1.335 0-2.59.52-3.534 1.464l-7.134 7.133a5.01 5.01 0 0 0-.001 7.072 4.971 4.971 0 0 0 3.537 1.46',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (14,'Asset Management',2,'Asset Management System includes asset and components, operation schedule, material & service requisition and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"m20.772 13.155-1.368-4.104A2.995 2.995 0 0 0 16.559 7H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2.001 2.001 0 0 0 2 15v3c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-1h12v1a1 1 0 0 0 1 1h1a1 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (15,'Inventory Management',2,'Inventory Management System includes stock management, warehouse management, stock adjustment, requisition management, stock reporting and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M21.993 7.95a.96.96 0 0 0-.029-.214c-.007-.025-.021-.049-.03-.074-.021-.057-.04-.113-.07-.165-.016-.027-.038-.049-.057-.075-.032-.045-.063-.091-.102-.13-.023-.022-.053-.04-.078-.061-.039-.032-.075-.067-.12-.094-.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (16,'RealTime Attendance System',2,'Biometric System Application includes registration with finger print and webcam device, Bio-Metric verification, real time data storage, system & security and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M5.962 17.674C7 19.331 7 20.567 7 22h2c0-1.521 0-3.244-1.343-5.389l-1.695 1.063zM16.504 3.387C13.977 1.91 7.55.926 4.281 4.305c-3.368 3.481-2.249 9.072.001 11.392.118.122.244.229.369.333.072.061.146.116.205.184l1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (17,'Project Management',2,'Project Management Application includes person management, task & team management, asset management, costing, reporting and so o','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M5 22h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-2a1 1 0 0 0-1-1H8a1 1 0 0 0-1 1H5c-1.103 0-2 .897-2 2v15c0 1.103.897 2 2 2zM5 5h2v2h10V5h2v15H5V5z\"></path><path d=\"m11 13.586-1.793-1.793-1.414 1.414L11 16.414l5',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (18,'Logistics Management',2,'Logistics Management System includes procurement & delivery management, transportation & route management, storage of goods & transportation flow, navigation, billing and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M14.844 20H6.5C5.121 20 4 18.879 4 17.5S5.121 15 6.5 15h7c1.93 0 3.5-1.57 3.5-3.5S15.43 8 13.5 8H8.639a9.812 9.812 0 0 1-1.354 2H13.5c.827 0 1.5.673 1.5 1.5s-.673 1.5-1.5 1.5h-7C4.019 13 2 15.019 2 17.5S4.019 22 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (19,'E-Commerce Solution',2,'E-Commerce Solution includes website, management of product, order, purchase, warehouse, customer, supplier, payment gateway and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M4 20h2V10a1 1 0 0 1 1-1h12V7a1 1 0 0 0-1-1h-3.051c-.252-2.244-2.139-4-4.449-4S6.303 3.756 6.051 6H3a1 1 0 0 0-1 1v11a2 2 0 0 0 2 2zm6.5-16c1.207 0 2.218.86 2.45 2h-4.9c.232-1.14 1.243-2 2.45-2z\"></path><path d=\"',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (20,'Visa Processing Software',2,'Our Visa Processing Software includes customer registration, deed and document management, visa & ticket processing step management, invoice & payment, status report and so on.','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"48\" height=\"48\" viewBox=\"0 0 24 24\" class=\"text-primary\" fill=\"currentColor\"><path d=\"M3 18h18v2H3zm18.509-9.473a1.61 1.61 0 0 0-2.036-1.019L15 9 7 6 5 7l6 4-4 2-4-2-1 1 4 4 14.547-5.455a1.611 1.611 0 0 0 .962-2.018z\"></path></svg>',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `core_site_products` ENABLE KEYS */;


--
-- Definition of table `core_site_routes`
--

DROP TABLE IF EXISTS `core_site_routes`;
CREATE TABLE `core_site_routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `site_menu_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_route` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_routes`
--

/*!40000 ALTER TABLE `core_site_routes` DISABLE KEYS */;
INSERT INTO `core_site_routes` (`id`,`name`,`src`,`inactive`,`site_menu_id`) VALUES 
 (1,'pos-erp','views/pages/ERP-POS.php',0,2),
 (2,'garment-erp','views/pages/ERP-Garments.php',0,2),
 (3,'education-erp','views/pages/ERP-Education.php',0,2),
 (4,'general-insurance-erp','views/pages/ERP-General-Insurance.php',0,2),
 (5,'manufacturing-erp','views/pages/ERP-Manufacturing.php',0,2),
 (6,'hospital-erp','views/pages/ERP-Hospital.php',0,2),
 (7,'texttile-erp','views/pages/ERP-Textitle.php',0,2),
 (8,'real-estate-erp','views/pages/ERP-Real-Estate.php',0,2);
/*!40000 ALTER TABLE `core_site_routes` ENABLE KEYS */;


--
-- Definition of table `core_site_service_categories`
--

DROP TABLE IF EXISTS `core_site_service_categories`;
CREATE TABLE `core_site_service_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_service_categories`
--

/*!40000 ALTER TABLE `core_site_service_categories` DISABLE KEYS */;
INSERT INTO `core_site_service_categories` (`id`,`name`) VALUES 
 (1,'Software Enable Service');
/*!40000 ALTER TABLE `core_site_service_categories` ENABLE KEYS */;


--
-- Definition of table `core_site_services`
--

DROP TABLE IF EXISTS `core_site_services`;
CREATE TABLE `core_site_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `description` text DEFAULT NULL,
  `regular_price` float DEFAULT 0,
  `offer_price` float DEFAULT 0,
  `icon` varchar(45) DEFAULT NULL,
  `inactive` tinyint(3) unsigned DEFAULT 0,
  `photo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_site_services`
--

/*!40000 ALTER TABLE `core_site_services` DISABLE KEYS */;
INSERT INTO `core_site_services` (`id`,`name`,`category_id`,`description`,`regular_price`,`offer_price`,`icon`,`inactive`,`photo`) VALUES 
 (1,'Software Quality Assurance',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863121.png'),
 (2,'Software forensic',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863180.png'),
 (3,'Database Migration',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863362.png'),
 (4,'Setup Own Hosting',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863484.png'),
 (5,'Cloud Backup Service',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greate',0,0,NULL,0,'1548862800.png'),
 (6,'Software Upgrade and Maintenance',1,'Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater',0,0,NULL,0,'1548863512.png'),
 (7,'Incredibly Responsive',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-laptop v-icon\"></i>',0,NULL),
 (8,'Fully Customizible',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-leaf v-icon\"></i>',0,NULL),
 (9,'Interactive Elements',2,'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.',0,0,'<i class=\"fa fa-scissors v-icon\"></i>',0,NULL);
/*!40000 ALTER TABLE `core_site_services` ENABLE KEYS */;


--
-- Definition of table `core_status`
--

DROP TABLE IF EXISTS `core_status`;
CREATE TABLE `core_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_status`
--

/*!40000 ALTER TABLE `core_status` DISABLE KEYS */;
INSERT INTO `core_status` (`id`,`name`) VALUES 
 (1,'Processing'),
 (2,'Shifted'),
 (3,'Delivered'),
 (4,'Invoiced');
/*!40000 ALTER TABLE `core_status` ENABLE KEYS */;


--
-- Definition of table `core_stock_adjustment_details`
--

DROP TABLE IF EXISTS `core_stock_adjustment_details`;
CREATE TABLE `core_stock_adjustment_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustment_details`
--

/*!40000 ALTER TABLE `core_stock_adjustment_details` DISABLE KEYS */;
INSERT INTO `core_stock_adjustment_details` (`id`,`adjustment_id`,`product_id`,`qty`,`price`) VALUES 
 (1,2,20,5,400),
 (2,3,20,50,400),
 (3,4,28,70,6650),
 (4,4,20,30,300);
/*!40000 ALTER TABLE `core_stock_adjustment_details` ENABLE KEYS */;


--
-- Definition of table `core_stock_adjustment_types`
--

DROP TABLE IF EXISTS `core_stock_adjustment_types`;
CREATE TABLE `core_stock_adjustment_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `factor` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustment_types`
--

/*!40000 ALTER TABLE `core_stock_adjustment_types` DISABLE KEYS */;
INSERT INTO `core_stock_adjustment_types` (`id`,`name`,`factor`) VALUES 
 (1,'Is Outdated',-1),
 (2,'Is Damaged',-1),
 (3,'Material Missing',-1),
 (4,'Product Is Obsolete',-1),
 (5,'Existing Inventory',1),
 (6,'Fixed/Found Inventory',1);
/*!40000 ALTER TABLE `core_stock_adjustment_types` ENABLE KEYS */;


--
-- Definition of table `core_stock_adjustments`
--

DROP TABLE IF EXISTS `core_stock_adjustments`;
CREATE TABLE `core_stock_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(10) unsigned NOT NULL,
  `remark` text NOT NULL,
  `adjustment_type_id` int(10) unsigned NOT NULL,
  `werehouse_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stock_adjustments`
--

/*!40000 ALTER TABLE `core_stock_adjustments` DISABLE KEYS */;
INSERT INTO `core_stock_adjustments` (`id`,`adjustment_at`,`user_id`,`remark`,`adjustment_type_id`,`werehouse_id`) VALUES 
 (1,'2021-12-28 00:00:00',1,'ddd',2,1),
 (2,'2021-12-28 00:00:00',1,'ddd',2,1),
 (3,'2021-12-28 00:00:00',1,'ddddfd',6,1),
 (4,'2021-12-28 00:00:00',1,'NA',6,2);
/*!40000 ALTER TABLE `core_stock_adjustments` ENABLE KEYS */;


--
-- Definition of table `core_stocks`
--

DROP TABLE IF EXISTS `core_stocks`;
CREATE TABLE `core_stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `qty` float NOT NULL,
  `transaction_type_id` int(10) unsigned NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `warehouse_id` int(10) unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_stocks`
--

/*!40000 ALTER TABLE `core_stocks` DISABLE KEYS */;
INSERT INTO `core_stocks` (`id`,`product_id`,`qty`,`transaction_type_id`,`remark`,`created_at`,`warehouse_id`,`updated_at`) VALUES 
 (14,50,1,3,'Purchase','2024-06-04 12:47:19',1,NULL),
 (15,17,1,3,'Purchase','2024-06-04 12:47:19',1,NULL),
 (16,17,14,3,'Purchase','2024-06-05 09:22:00',1,NULL),
 (17,50,15,3,'Purchase','2024-06-05 09:22:00',1,NULL),
 (18,17,-1,6,'Damage','0000-00-00 00:00:00',1,NULL),
 (19,50,2,4,'selse return','0000-00-00 00:00:00',1,NULL),
 (20,50,2,2,'yj','0000-00-00 00:00:00',1,NULL),
 (21,17,2,1,'ytjk','0000-00-00 00:00:00',1,NULL),
 (22,17,-1,1,'Order','0000-00-00 00:00:00',0,NULL),
 (23,52,6,3,'Purchase','2025-03-10 15:58:37',1,NULL),
 (24,52,-1,1,'Order','0000-00-00 00:00:00',0,NULL),
 (25,52,3,5,'Test','0000-00-00 00:00:00',2,NULL),
 (26,50,-2,6,'Tst','0000-00-00 00:00:00',1,NULL),
 (27,17,-5,1,'Order','0000-00-00 00:00:00',0,NULL),
 (28,17,-1,1,'Order','0000-00-00 00:00:00',0,NULL),
 (29,17,-1,1,'Order','0000-00-00 00:00:00',0,NULL),
 (30,52,-1,1,'Order','0000-00-00 00:00:00',0,NULL),
 (31,17,3,3,'Purchase','2025-03-19 14:29:20',2,NULL),
 (32,52,1,3,'Purchase','2025-03-19 14:29:20',2,NULL),
 (33,50,10,3,'None','2025-04-09 18:16:31',3,NULL),
 (34,56,100,3,'Purchase','2025-04-10 18:23:24',1,NULL),
 (35,0,-2,1,'Order','0000-00-00 00:00:00',0,NULL),
 (36,17,-1,2,'Sales Delivery','0000-00-00 00:00:00',0,NULL),
 (37,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0,NULL),
 (38,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0,NULL),
 (39,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0,NULL),
 (40,56,-1,2,'Sales Delivery','0000-00-00 00:00:00',0,NULL),
 (41,56,-13,2,'Sales Delivery','0000-00-00 00:00:00',0,NULL),
 (42,56,10,3,'Purchase','2025-04-12 16:39:29',1,NULL),
 (43,1,3,1,'Na','2025-05-20 11:51:56',1,'2025-05-20 11:51:56'),
 (44,2,1,1,'Na','2025-05-20 11:51:56',1,'2025-05-20 11:51:56'),
 (45,3,4,1,'Na','2025-05-20 11:51:56',1,'2025-05-20 11:51:56'),
 (46,1,3,1,'Purchase','2025-05-20 11:52:25',1,'2025-05-20 11:52:25'),
 (47,2,1,1,'Purchase','2025-05-20 11:52:25',1,'2025-05-20 11:52:25'),
 (48,3,4,1,'Purchase','2025-05-20 11:52:25',1,'2025-05-20 11:52:25');
/*!40000 ALTER TABLE `core_stocks` ENABLE KEYS */;


--
-- Definition of table `core_students`
--

DROP TABLE IF EXISTS `core_students`;
CREATE TABLE `core_students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `mothers_name` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_students`
--

/*!40000 ALTER TABLE `core_students` DISABLE KEYS */;
INSERT INTO `core_students` (`id`,`name`,`fathers_name`,`mothers_name`,`dob`,`contact_no`,`address`,`photo`) VALUES 
 (1,'Mahedi Hassan','Abdur Rahman','Amena Akter','2024-01-19','','Rampura ','1.png');
/*!40000 ALTER TABLE `core_students` ENABLE KEYS */;


--
-- Definition of table `core_suppliers`
--

DROP TABLE IF EXISTS `core_suppliers`;
CREATE TABLE `core_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `photo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_suppliers`
--

/*!40000 ALTER TABLE `core_suppliers` DISABLE KEYS */;
INSERT INTO `core_suppliers` (`id`,`name`,`mobile`,`email`,`photo`) VALUES 
 (1,'Md. Shahin','56879898','shahin@yahoo.com','1.jpeg'),
 (2,'kulsum','07154545','kulsum@gmail.com','2.png'),
 (4,'Jahid','3654533','jahid@gmail.com','4.jpg'),
 (9,'rahim','1123334','aa@gmail.com','9.png'),
 (10,'kuddush','678798','kuddush@gmail.com',NULL),
 (15,'ismail riyad4','04555545','karim@.com',NULL),
 (21,'Abdul','3534354','kader@gmail.com',NULL),
 (22,'Jahidul Islam','3423423','kader@gmail.com',NULL),
 (24,'Kader','34343','kader@gmail.com',NULL),
 (36,'Jahidul Islam','343433333333333','kader@gmail.com','6-png.png'),
 (37,'Naiyem Limited','343243243444','naiyem','images-png.png');
/*!40000 ALTER TABLE `core_suppliers` ENABLE KEYS */;


--
-- Definition of table `core_tailor_dress_parameters`
--

DROP TABLE IF EXISTS `core_tailor_dress_parameters`;
CREATE TABLE `core_tailor_dress_parameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `dress_id` int(10) unsigned NOT NULL,
  `default_size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_dress_parameters`
--

/*!40000 ALTER TABLE `core_tailor_dress_parameters` DISABLE KEYS */;
INSERT INTO `core_tailor_dress_parameters` (`id`,`name`,`dress_id`,`default_size`) VALUES 
 (1,'Chest',1,NULL),
 (2,'Waist',1,NULL),
 (3,'Seat',1,NULL),
 (4,'Bicep',1,NULL),
 (5,'Shirt Length',1,NULL),
 (6,'Shoulder Width',1,NULL),
 (7,'Sleeve Length',1,NULL),
 (8,'Cuff Circumference',1,NULL),
 (9,'Collar Size',2,NULL);
/*!40000 ALTER TABLE `core_tailor_dress_parameters` ENABLE KEYS */;


--
-- Definition of table `core_tailor_dresses`
--

DROP TABLE IF EXISTS `core_tailor_dresses`;
CREATE TABLE `core_tailor_dresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_dresses`
--

/*!40000 ALTER TABLE `core_tailor_dresses` DISABLE KEYS */;
INSERT INTO `core_tailor_dresses` (`id`,`name`,`price`) VALUES 
 (1,'Shirt',1000),
 (2,'Kamiz',1200),
 (3,'Pants',1100),
 (4,'Borka',2500),
 (5,'Panjabi',1300);
/*!40000 ALTER TABLE `core_tailor_dresses` ENABLE KEYS */;


--
-- Definition of table `core_tailor_order_details`
--

DROP TABLE IF EXISTS `core_tailor_order_details`;
CREATE TABLE `core_tailor_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dress_id` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `qty` double NOT NULL,
  `discount` double NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_order_details`
--

/*!40000 ALTER TABLE `core_tailor_order_details` DISABLE KEYS */;
INSERT INTO `core_tailor_order_details` (`id`,`dress_id`,`price`,`qty`,`discount`,`order_id`) VALUES 
 (1,1,1000,1,0,1);
/*!40000 ALTER TABLE `core_tailor_order_details` ENABLE KEYS */;


--
-- Definition of table `core_tailor_order_measurements`
--

DROP TABLE IF EXISTS `core_tailor_order_measurements`;
CREATE TABLE `core_tailor_order_measurements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `measurement_id` int(10) unsigned NOT NULL,
  `size` varchar(10) NOT NULL,
  `uom_id` int(10) unsigned NOT NULL,
  `dress_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_order_measurements`
--

/*!40000 ALTER TABLE `core_tailor_order_measurements` DISABLE KEYS */;
INSERT INTO `core_tailor_order_measurements` (`id`,`order_id`,`measurement_id`,`size`,`uom_id`,`dress_id`) VALUES 
 (1,1,1,'34',1,1),
 (2,1,2,'33',1,1),
 (3,1,5,'22',1,1);
/*!40000 ALTER TABLE `core_tailor_order_measurements` ENABLE KEYS */;


--
-- Definition of table `core_tailor_orders`
--

DROP TABLE IF EXISTS `core_tailor_orders`;
CREATE TABLE `core_tailor_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(20) NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `order_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delivery_datetime` datetime NOT NULL,
  `order_total` double DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_orders`
--

/*!40000 ALTER TABLE `core_tailor_orders` DISABLE KEYS */;
INSERT INTO `core_tailor_orders` (`id`,`customer_name`,`paid_amount`,`order_datetime`,`delivery_datetime`,`order_total`,`shipping_address`,`remark`,`mobile`,`discount`) VALUES 
 (1,'Jahidul Islam',500,'0000-00-00 00:00:00','2024-01-20 00:00:00',950,'Rampura','','3434343234',50);
/*!40000 ALTER TABLE `core_tailor_orders` ENABLE KEYS */;


--
-- Definition of table `core_tailor_uoms`
--

DROP TABLE IF EXISTS `core_tailor_uoms`;
CREATE TABLE `core_tailor_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abbr` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_tailor_uoms`
--

/*!40000 ALTER TABLE `core_tailor_uoms` DISABLE KEYS */;
INSERT INTO `core_tailor_uoms` (`id`,`abbr`,`name`,`inactive`) VALUES 
 (1,'inc','Inch',0),
 (2,'ft','Foot',0),
 (3,'yd','yard',0),
 (4,'piece','piece',0);
/*!40000 ALTER TABLE `core_tailor_uoms` ENABLE KEYS */;


--
-- Definition of table `core_thanas`
--

DROP TABLE IF EXISTS `core_thanas`;
CREATE TABLE `core_thanas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `district_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_thanas`
--

/*!40000 ALTER TABLE `core_thanas` DISABLE KEYS */;
INSERT INTO `core_thanas` (`id`,`name`,`district_id`) VALUES 
 (1,'Chatkhil',2),
 (2,'Ramgonj',2),
 (3,'Mijdi Sadar',2),
 (4,'Begomganj',2);
/*!40000 ALTER TABLE `core_thanas` ENABLE KEYS */;


--
-- Definition of table `core_transaction_types`
--

DROP TABLE IF EXISTS `core_transaction_types`;
CREATE TABLE `core_transaction_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_transaction_types`
--

/*!40000 ALTER TABLE `core_transaction_types` DISABLE KEYS */;
INSERT INTO `core_transaction_types` (`id`,`name`) VALUES 
 (1,'Sales Order'),
 (2,'Sales Delivery'),
 (3,'Sales Return'),
 (4,' Purchase Order'),
 (5,'Purchase Return'),
 (6,'Positive Stock Adjustment'),
 (7,'Negative Stock Adjustment');
/*!40000 ALTER TABLE `core_transaction_types` ENABLE KEYS */;


--
-- Definition of table `core_uoms`
--

DROP TABLE IF EXISTS `core_uoms`;
CREATE TABLE `core_uoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_uoms`
--

/*!40000 ALTER TABLE `core_uoms` DISABLE KEYS */;
INSERT INTO `core_uoms` (`id`,`name`) VALUES 
 (1,'Piece'),
 (2,'Kg'),
 (3,'Pack'),
 (4,'Litter'),
 (5,'Gram'),
 (6,'Ton'),
 (7,'Box3'),
 (8,'Blister'),
 (9,'Blister2'),
 (10,'NewOne'),
 (11,'NewOne'),
 (12,'NewOne'),
 (13,'NewOne'),
 (14,'NewOne'),
 (15,'NewOne');
/*!40000 ALTER TABLE `core_uoms` ENABLE KEYS */;


--
-- Definition of table `core_user_deposits`
--

DROP TABLE IF EXISTS `core_user_deposits`;
CREATE TABLE `core_user_deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `transaction_at` datetime DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_user_deposits`
--

/*!40000 ALTER TABLE `core_user_deposits` DISABLE KEYS */;
INSERT INTO `core_user_deposits` (`id`,`user_id`,`amount`,`created_at`,`transaction_at`,`note`,`created_by`) VALUES 
 (1,158,100,'2024-04-04 11:22:32','2024-04-04 00:00:00','NA',127),
 (2,186,10000,'2024-04-04 11:22:39','1970-01-01 06:00:00','',186),
 (3,160,-5e17,'2024-04-04 11:23:50','1970-01-01 06:00:00','',186),
 (4,194,1009,'2024-04-04 11:44:18','1970-01-01 06:00:00','NA',194),
 (5,197,10000,'2024-04-04 11:56:20','1970-01-01 06:00:00','',197),
 (6,199,1,'2024-04-04 11:56:29','1970-01-01 06:00:00','Na',199),
 (7,196,1000,'2024-04-04 11:56:49','1970-01-01 06:00:00','',196),
 (8,197,-1,'2024-04-04 11:57:17','1970-01-01 06:00:00','',197),
 (9,196,150,'2024-04-04 11:57:31','1970-01-01 06:00:00','',127),
 (10,203,5000,'2024-04-04 11:57:52','2024-04-04 00:00:00','Eid Gift',203),
 (11,204,0,'2024-04-04 11:58:09','2024-04-04 00:00:00','xero_xero',91),
 (12,200,9999,'2024-04-04 11:58:26','1970-01-01 06:00:00','',200),
 (13,199,4000,'2024-04-15 10:48:13','2024-04-15 00:00:00','',127),
 (14,201,3000,'2024-04-15 10:48:32','1970-01-01 06:00:00','',127),
 (15,191,500,'2024-12-19 18:42:46','1970-01-01 06:00:00','',207),
 (16,192,500,'2024-12-19 18:43:01','1970-01-01 06:00:00','',207),
 (17,191,100,'2024-12-19 18:43:52','1970-01-01 06:00:00','',207),
 (18,213,2000,'2024-12-19 18:44:52','1970-01-01 06:00:00','',207),
 (19,208,3555,'2024-12-19 18:45:04','1970-01-01 06:00:00','',207),
 (20,204,344,'2024-12-19 18:45:11','1970-01-01 06:00:00','',207),
 (21,206,456,'2024-12-19 18:45:16','1970-01-01 06:00:00','',207),
 (22,207,4555,'2024-12-19 18:45:21','1970-01-01 06:00:00','',207),
 (23,209,456,'2024-12-19 18:45:26','1970-01-01 06:00:00','',207),
 (24,210,455,'2024-12-19 18:45:34','1970-01-01 06:00:00','',207),
 (25,211,4322,'2024-12-19 18:45:39','1970-01-01 06:00:00','',207),
 (26,212,3556,'2024-12-19 18:45:49','1970-01-01 06:00:00','',207);
/*!40000 ALTER TABLE `core_user_deposits` ENABLE KEYS */;


--
-- Definition of table `core_users`
--

DROP TABLE IF EXISTS `core_users`;
CREATE TABLE `core_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `photo` varchar(50) DEFAULT NULL,
  `verify_code` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) unsigned DEFAULT 0,
  `mobile` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `remember_token` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_users`
--

/*!40000 ALTER TABLE `core_users` DISABLE KEYS */;
INSERT INTO `core_users` (`id`,`name`,`role_id`,`password`,`email`,`full_name`,`created_at`,`photo`,`verify_code`,`inactive`,`mobile`,`updated_at`,`ip`,`email_verified_at`,`remember_token`) VALUES 
 (191,'Dola',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','samdola81@gmail.com','Samsunnahar','2025-01-18 18:36:54',NULL,NULL,0,'01832482305',NULL,'192.168.150.38',NULL,NULL),
 (192,'samira',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','samira@gmail.com','Samira Akter','2025-01-18 18:36:54',NULL,NULL,0,'01881432313',NULL,'192.168.150.59',NULL,NULL),
 (194,'dibbo',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','jkp.jakaria@gmail.com','jkp','2025-01-18 18:36:54',NULL,NULL,0,'01642527454',NULL,'192.168.150.47',NULL,NULL),
 (196,'akhi',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','akhi26713@gmail.cm','Aminur Rahman','2025-01-18 18:36:54',NULL,NULL,0,'01946357571',NULL,'192.168.150.49',NULL,NULL),
 (197,'tasmin',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','tanim@gmail.com','Rifat Ahammed Tanim','2025-01-18 18:36:54',NULL,NULL,0,'01900000000',NULL,'192.168.150.50',NULL,NULL),
 (199,'MD. HAFIJUL ISLAM',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','imdhafijul453@gmail.com','Md.Hafijul Islam','2025-01-18 18:36:54',NULL,NULL,0,'01755747048',NULL,'192.168.150.55',NULL,NULL),
 (200,'kamruzzaman',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','olba@gmail.com','Javed ','2025-01-18 18:36:54',NULL,NULL,0,'01869546555',NULL,'192.168.150.22',NULL,NULL),
 (201,'Tasmin Jahan',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','Tasminjahan875@gmail.com','Tasmin Jahan','2025-01-18 18:36:54',NULL,NULL,0,'01623578437',NULL,'192.168.150.50',NULL,NULL),
 (204,'sabbir',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','sabbir.001@outlook.com','Sabbir Ahmed','2025-01-18 18:36:54',NULL,NULL,0,'01752485143',NULL,'192.168.150.53',NULL,NULL),
 (206,'jahid3',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','jahid1@yahoo.com','Jahidul Islam','2025-05-15 17:07:42',NULL,NULL,0,NULL,'2024-07-04 05:52:52','::1',NULL,NULL),
 (207,'admin',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','towhid1@outlook.com','Towhidul Islam','2024-12-19 18:25:39',NULL,NULL,0,NULL,'2024-07-04 06:03:13','::1',NULL,NULL),
 (208,'didar',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','mddidar199911@gmail.com','Didar','2025-01-18 18:36:54',NULL,NULL,0,'01315451430',NULL,'192.168.150.52',NULL,NULL),
 (209,'alifa',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','alifa@yahoo.com','Alifa','2025-01-18 18:36:54',NULL,NULL,0,'01758917270',NULL,'192.168.150.57',NULL,NULL),
 (210,'hasan',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','hasanmd993@gmail.com','Md Hasan','2025-01-18 17:48:36',NULL,NULL,0,'01822304694',NULL,'192.168.150.7',NULL,NULL),
 (211,'Hamid',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','hamidyahoo22@gmail.com',' Abdul Hamid','2025-01-18 18:36:54',NULL,NULL,0,'01764577191',NULL,'192.168.150.47',NULL,NULL),
 (212,'anayet',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','anayetmd2018@gmail.com','Md. Anayet Hossain','2025-01-18 18:36:54',NULL,NULL,0,'01622737936',NULL,'192.168.150.47',NULL,NULL),
 (213,'azmir',1,'$2y$10$5wp0Z4ssl5zEdSbjLrdZ8exgNZR5HjP7XxzMp7qzsjShbWQujJfHG','azmir@yahoo.com','Azmir','2025-01-18 18:36:54',NULL,NULL,0,'3432432',NULL,'192.168.150.47',NULL,NULL),
 (215,'jahid',NULL,'$2y$12$pLMRWsC7HuR6rrCtn7ieWeNmuPulq1ioyxhsvP.Qk2PP7fZ/C3ouu','jahid@yahoo.com',NULL,'2025-05-15 17:19:14',NULL,NULL,0,NULL,'2025-05-15 11:07:47',NULL,NULL,'ZOpOEImPeImORQvKcXZFHac0R7ZkqevZ5yBa26tBQmNNtPzSjrupikjHF7xa');
/*!40000 ALTER TABLE `core_users` ENABLE KEYS */;


--
-- Definition of table `core_users0`
--

DROP TABLE IF EXISTS `core_users0`;
CREATE TABLE `core_users0` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_users0`
--

/*!40000 ALTER TABLE `core_users0` DISABLE KEYS */;
INSERT INTO `core_users0` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'admin','jahid1@yahoo.com',NULL,'$2y$10$02LIGz04kyyFni4VVy619ehpI4JmYcDu9TGziPZwvSOxquyb.kFzC',NULL,'2024-06-12 04:46:24','2024-06-12 04:46:24');
/*!40000 ALTER TABLE `core_users0` ENABLE KEYS */;


--
-- Definition of table `core_vendors`
--

DROP TABLE IF EXISTS `core_vendors`;
CREATE TABLE `core_vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `address` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_vendors`
--

/*!40000 ALTER TABLE `core_vendors` DISABLE KEYS */;
INSERT INTO `core_vendors` (`id`,`name`,`mobile`,`photo`,`address`) VALUES 
 (1,'Abdur Rahman','23432432','1.jpeg','Testsa fsa fsdaf'),
 (2,'Jahidul Islam','23432432342','2.png','Test');
/*!40000 ALTER TABLE `core_vendors` ENABLE KEYS */;


--
-- Definition of table `core_warehouses`
--

DROP TABLE IF EXISTS `core_warehouses`;
CREATE TABLE `core_warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `core_warehouses`
--

/*!40000 ALTER TABLE `core_warehouses` DISABLE KEYS */;
INSERT INTO `core_warehouses` (`id`,`name`,`city`,`contact`) VALUES 
 (1,'Tajgon','Dhaka','4543534534'),
 (2,'Rangpur','Rangpur','324242342'),
 (3,'Badda','Rampura','3434334324');
/*!40000 ALTER TABLE `core_warehouses` ENABLE KEYS */;


--
-- Definition of table `crud_appointments`
--

DROP TABLE IF EXISTS `crud_appointments`;
CREATE TABLE `crud_appointments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_at` datetime NOT NULL,
  `cc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_appointments`
--

/*!40000 ALTER TABLE `crud_appointments` DISABLE KEYS */;
INSERT INTO `crud_appointments` (`id`,`patient_id`,`doctor_id`,`appointment_at`,`cc`,`created_at`,`updated_at`) VALUES 
 (1,4,1,'2025-06-28 00:00:00','Chest pain','2025-06-04 04:24:17','2025-06-04 04:32:44'),
 (2,4,1,'2025-06-10 00:00:00','Chest pain','2025-06-04 04:24:46','2025-06-04 04:32:30'),
 (3,1,1,'2025-06-11 14:42:00','dhdfdf','2025-06-04 04:39:10','2025-06-04 04:39:10'),
 (4,1,1,'2025-07-04 04:39:10','Fever','2025-06-12 15:58:20','2025-06-12 15:59:00');
/*!40000 ALTER TABLE `crud_appointments` ENABLE KEYS */;


--
-- Definition of table `crud_cache`
--

DROP TABLE IF EXISTS `crud_cache`;
CREATE TABLE `crud_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_cache`
--

/*!40000 ALTER TABLE `crud_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_cache` ENABLE KEYS */;


--
-- Definition of table `crud_cache_locks`
--

DROP TABLE IF EXISTS `crud_cache_locks`;
CREATE TABLE `crud_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_cache_locks`
--

/*!40000 ALTER TABLE `crud_cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_cache_locks` ENABLE KEYS */;


--
-- Definition of table `crud_companies`
--

DROP TABLE IF EXISTS `crud_companies`;
CREATE TABLE `crud_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_companies`
--

/*!40000 ALTER TABLE `crud_companies` DISABLE KEYS */;
INSERT INTO `crud_companies` (`id`,`name`,`address`,`phone`,`created_at`,`updated_at`) VALUES 
 (1,'ELYSIAN FABRICS','Rampura, Dhaka','+12457963633','2025-05-31 14:41:28','2025-05-31 14:41:28'),
 (2,'Abdul Kalam','Dhaka, Cantonment','455555','2025-05-31 14:41:43','2025-05-31 14:41:43');
/*!40000 ALTER TABLE `crud_companies` ENABLE KEYS */;


--
-- Definition of table `crud_consultants`
--

DROP TABLE IF EXISTS `crud_consultants`;
CREATE TABLE `crud_consultants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `designation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `crud_consultants`
--

/*!40000 ALTER TABLE `crud_consultants` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_consultants` ENABLE KEYS */;


--
-- Definition of table `crud_departments`
--

DROP TABLE IF EXISTS `crud_departments`;
CREATE TABLE `crud_departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_departments`
--

/*!40000 ALTER TABLE `crud_departments` DISABLE KEYS */;
INSERT INTO `crud_departments` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'Cardiology','2022-01-01 08:00:00','2024-01-01 10:00:00'),
 (2,'Neurology','2022-03-10 09:30:00','2023-08-15 11:45:00'),
 (3,'Pediatrics','2021-05-20 12:00:00','2024-04-25 13:30:00'),
 (4,'Dermatology','2023-02-18 14:20:00','2024-03-10 15:10:00'),
 (5,'Oncology','2022-06-22 13:15:00','2024-01-05 16:00:00'),
 (6,'Orthopedics','2021-09-05 10:50:00','2023-06-01 12:25:00'),
 (7,'Psychiatry','2023-01-12 11:35:00','2024-05-15 14:10:00'),
 (8,'ENT','2022-07-30 09:00:00','2023-11-10 10:20:00'),
 (9,'Gastroenterology','2023-04-01 10:30:00','2024-02-20 11:45:00'),
 (10,'Radiology','2021-08-18 07:45:00','2023-10-12 09:50:00');
/*!40000 ALTER TABLE `crud_departments` ENABLE KEYS */;


--
-- Definition of table `crud_failed_jobs`
--

DROP TABLE IF EXISTS `crud_failed_jobs`;
CREATE TABLE `crud_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `crud_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_failed_jobs`
--

/*!40000 ALTER TABLE `crud_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_failed_jobs` ENABLE KEYS */;


--
-- Definition of table `crud_job_batches`
--

DROP TABLE IF EXISTS `crud_job_batches`;
CREATE TABLE `crud_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_job_batches`
--

/*!40000 ALTER TABLE `crud_job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_job_batches` ENABLE KEYS */;


--
-- Definition of table `crud_jobs`
--

DROP TABLE IF EXISTS `crud_jobs`;
CREATE TABLE `crud_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crud_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_jobs`
--

/*!40000 ALTER TABLE `crud_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_jobs` ENABLE KEYS */;


--
-- Definition of table `crud_migrations`
--

DROP TABLE IF EXISTS `crud_migrations`;
CREATE TABLE `crud_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_migrations`
--

/*!40000 ALTER TABLE `crud_migrations` DISABLE KEYS */;
INSERT INTO `crud_migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'0001_01_01_000000_create_users_table',1),
 (2,'0001_01_01_000001_create_cache_table',1),
 (3,'0001_01_01_000002_create_jobs_table',1),
 (4,'2025_05_30_045208_create_products_table',1),
 (5,'2025_05_30_061332_create_posts_table',1),
 (6,'2025_05_30_093708_create_companies_table',1),
 (7,'2025_05_30_134321_create_suppliers_table',1),
 (8,'2025_05_31_132350_create_doctors_table',1),
 (9,'2025_05_31_140634_create_designations_table',1),
 (10,'2025_05_31_140742_create_departments_table',1),
 (11,'2025_06_01_042348_create_services_table',2),
 (12,'2025_06_03_121845_create_patients_table',2),
 (13,'2025_06_03_151559_create_appointments_table',3),
 (14,'2025_06_04_082619_test',4);
/*!40000 ALTER TABLE `crud_migrations` ENABLE KEYS */;


--
-- Definition of table `crud_password_reset_tokens`
--

DROP TABLE IF EXISTS `crud_password_reset_tokens`;
CREATE TABLE `crud_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_password_reset_tokens`
--

/*!40000 ALTER TABLE `crud_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_password_reset_tokens` ENABLE KEYS */;


--
-- Definition of table `crud_patients`
--

DROP TABLE IF EXISTS `crud_patients`;
CREATE TABLE `crud_patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_patients`
--

/*!40000 ALTER TABLE `crud_patients` DISABLE KEYS */;
INSERT INTO `crud_patients` (`id`,`name`,`mobile`,`dob`,`created_at`,`updated_at`) VALUES 
 (1,'Abdul Hannan Test','+8801568978452','1997-08-15','2025-06-03 13:04:33','2025-06-03 13:05:02'),
 (3,'New Patient','+8802312564785','2025-06-25','2025-06-03 13:10:18','2025-06-03 13:10:18'),
 (4,'Muhammad Bin Naiyem','+880-1254876585','2020-06-01','2025-06-03 13:10:47','2025-06-22 17:58:22'),
 (7,'Abdullah','+880125635478965','2025-06-01','2025-06-22 18:01:46','2025-06-22 18:01:46');
/*!40000 ALTER TABLE `crud_patients` ENABLE KEYS */;


--
-- Definition of table `crud_posts`
--

DROP TABLE IF EXISTS `crud_posts`;
CREATE TABLE `crud_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_posts`
--

/*!40000 ALTER TABLE `crud_posts` DISABLE KEYS */;
INSERT INTO `crud_posts` (`id`,`title`,`body`,`published_at`,`created_at`,`updated_at`) VALUES 
 (1,'Post title-1','post description 1','2025-05-31 20:41:14','2025-05-31 14:41:14','2025-05-31 14:41:14'),
 (2,'Post title-2','post description 2','2025-06-23 00:07:16','2025-06-22 18:07:16','2025-06-22 18:09:11');
/*!40000 ALTER TABLE `crud_posts` ENABLE KEYS */;


--
-- Definition of table `crud_products`
--

DROP TABLE IF EXISTS `crud_products`;
CREATE TABLE `crud_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_products`
--

/*!40000 ALTER TABLE `crud_products` DISABLE KEYS */;
INSERT INTO `crud_products` (`id`,`name`,`price`,`description`,`created_at`,`updated_at`) VALUES 
 (1,'Kawser Hossain','10.00','fsaffs','2025-05-31 14:40:37','2025-05-31 14:40:37'),
 (3,'Premium T-Shirt','399.99','Cotton round neck','2025-06-22 15:36:00','2025-06-22 17:32:20'),
 (5,'Polo Shirt','699.99','Premium Cotton','2025-06-22 17:37:59','2025-06-22 17:37:59');
/*!40000 ALTER TABLE `crud_products` ENABLE KEYS */;


--
-- Definition of table `crud_sessions`
--

DROP TABLE IF EXISTS `crud_sessions`;
CREATE TABLE `crud_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crud_sessions_user_id_index` (`user_id`),
  KEY `crud_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_sessions`
--

/*!40000 ALTER TABLE `crud_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crud_sessions` ENABLE KEYS */;


--
-- Definition of table `crud_suppliers`
--

DROP TABLE IF EXISTS `crud_suppliers`;
CREATE TABLE `crud_suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_suppliers`
--

/*!40000 ALTER TABLE `crud_suppliers` DISABLE KEYS */;
INSERT INTO `crud_suppliers` (`id`,`name`,`email`,`phone`,`photo`,`created_at`,`updated_at`) VALUES 
 (1,'Kawser Hossain','lyricsmedium10@gmail.com','+12457963633','uploads/SFyWg6nOkUEKd0MYBxKbBLdShpNC8cssq9CnLhH8.jpg','2025-05-31 14:40:02','2025-06-04 11:28:07'),
 (2,'Formal Pant','naiyem@gmail.com','+12457963633','uploads/sykIVFNUD8vTgBT1qinH8wFkp59R3S3npyqvDOzH.jpg','2025-05-31 14:40:24','2025-06-04 11:27:53'),
 (3,'name','dem@emfail.com','12566','uploads/gB1SnW0sCBhdZJFba9npcrsymoN6V7j8Z1YnKryL.jpg','2025-06-04 11:07:49','2025-06-04 11:27:40'),
 (4,'ggsd','m@gmaiil.cm','12222222222222','uploads/lXqg63aLRiDOizxVf7MsuhZtWEqGbZVu6tDEbZ5b.jpg','2025-06-04 11:11:01','2025-06-04 11:27:29'),
 (5,'sdfdsf','dfdfd@gbfgf.com','14545544545','uploads/Ai2kNV32E80SOsIylhu3I9fMnve8HugYAuRpK4jZ.jpg','2025-06-04 11:26:36','2025-06-12 16:47:32');
/*!40000 ALTER TABLE `crud_suppliers` ENABLE KEYS */;


--
-- Definition of table `crud_tests`
--

DROP TABLE IF EXISTS `crud_tests`;
CREATE TABLE `crud_tests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_tests`
--

/*!40000 ALTER TABLE `crud_tests` DISABLE KEYS */;
INSERT INTO `crud_tests` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'test',NULL,NULL);
/*!40000 ALTER TABLE `crud_tests` ENABLE KEYS */;


--
-- Definition of table `crud_users`
--

DROP TABLE IF EXISTS `crud_users`;
CREATE TABLE `crud_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crud_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_users`
--

/*!40000 ALTER TABLE `crud_users` DISABLE KEYS */;
INSERT INTO `crud_users` (`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) VALUES 
 (1,'ELYSIAN FABRICS','mdnaiyem.islam.idb@gmail.com',NULL,'$2y$12$WmeiM3NjiIplXijFLs9wauB.vrapLOE.ZuuJkeN3xZCJsj5pCDB62',NULL,'2025-06-03 12:48:56','2025-06-03 12:48:56');
/*!40000 ALTER TABLE `crud_users` ENABLE KEYS */;


--
-- Definition of table `curd_cache`
--

DROP TABLE IF EXISTS `curd_cache`;
CREATE TABLE `curd_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_cache`
--

/*!40000 ALTER TABLE `curd_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_cache` ENABLE KEYS */;


--
-- Definition of table `curd_cache_locks`
--

DROP TABLE IF EXISTS `curd_cache_locks`;
CREATE TABLE `curd_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_cache_locks`
--

/*!40000 ALTER TABLE `curd_cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_cache_locks` ENABLE KEYS */;


--
-- Definition of table `curd_companies`
--

DROP TABLE IF EXISTS `curd_companies`;
CREATE TABLE `curd_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_companies`
--

/*!40000 ALTER TABLE `curd_companies` DISABLE KEYS */;
INSERT INTO `curd_companies` (`id`,`name`,`address`,`phone`,`created_at`,`updated_at`) VALUES 
 (1,'Elysian Fabrics','Dhaka, Cantonment','012458','2025-05-30 10:26:02','2025-05-30 10:26:02'),
 (2,'Abdul Maleq And Sons','Rampura, Dhaka','215478566','2025-05-30 10:30:14','2025-05-30 10:36:58');
/*!40000 ALTER TABLE `curd_companies` ENABLE KEYS */;


--
-- Definition of table `curd_departments`
--

DROP TABLE IF EXISTS `curd_departments`;
CREATE TABLE `curd_departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_departments`
--

/*!40000 ALTER TABLE `curd_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_departments` ENABLE KEYS */;


--
-- Definition of table `curd_designations`
--

DROP TABLE IF EXISTS `curd_designations`;
CREATE TABLE `curd_designations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_designations`
--

/*!40000 ALTER TABLE `curd_designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_designations` ENABLE KEYS */;


--
-- Definition of table `curd_doctors`
--

DROP TABLE IF EXISTS `curd_doctors`;
CREATE TABLE `curd_doctors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `designation_id` varchar(255) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_doctors`
--

/*!40000 ALTER TABLE `curd_doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_doctors` ENABLE KEYS */;


--
-- Definition of table `curd_failed_jobs`
--

DROP TABLE IF EXISTS `curd_failed_jobs`;
CREATE TABLE `curd_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `curd_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_failed_jobs`
--

/*!40000 ALTER TABLE `curd_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_failed_jobs` ENABLE KEYS */;


--
-- Definition of table `curd_job_batches`
--

DROP TABLE IF EXISTS `curd_job_batches`;
CREATE TABLE `curd_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_job_batches`
--

/*!40000 ALTER TABLE `curd_job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_job_batches` ENABLE KEYS */;


--
-- Definition of table `curd_jobs`
--

DROP TABLE IF EXISTS `curd_jobs`;
CREATE TABLE `curd_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `curd_jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_jobs`
--

/*!40000 ALTER TABLE `curd_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_jobs` ENABLE KEYS */;


--
-- Definition of table `curd_migrations`
--

DROP TABLE IF EXISTS `curd_migrations`;
CREATE TABLE `curd_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_migrations`
--

/*!40000 ALTER TABLE `curd_migrations` DISABLE KEYS */;
INSERT INTO `curd_migrations` (`id`,`migration`,`batch`) VALUES 
 (10,'0001_01_01_000000_create_users_table',1),
 (11,'0001_01_01_000001_create_cache_table',1),
 (12,'0001_01_01_000002_create_jobs_table',1),
 (13,'2025_05_30_045208_create_products_table',1),
 (14,'2025_05_30_061332_create_posts_table',1),
 (15,'2025_05_30_093708_create_companies_table',2),
 (16,'2025_05_30_134321_create_suppliers_table',3),
 (17,'2025_05_31_132350_create_doctors_table',4),
 (18,'2025_05_31_140634_create_designations_table',4),
 (19,'2025_05_31_140742_create_departments_table',4);
/*!40000 ALTER TABLE `curd_migrations` ENABLE KEYS */;


--
-- Definition of table `curd_password_reset_tokens`
--

DROP TABLE IF EXISTS `curd_password_reset_tokens`;
CREATE TABLE `curd_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_password_reset_tokens`
--

/*!40000 ALTER TABLE `curd_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_password_reset_tokens` ENABLE KEYS */;


--
-- Definition of table `curd_posts`
--

DROP TABLE IF EXISTS `curd_posts`;
CREATE TABLE `curd_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_posts`
--

/*!40000 ALTER TABLE `curd_posts` DISABLE KEYS */;
INSERT INTO `curd_posts` (`id`,`title`,`body`,`published_at`,`created_at`,`updated_at`) VALUES 
 (1,'Post -1','Something about this post 1','2025-05-30 14:54:15','2025-05-30 08:54:15','2025-05-30 09:12:00'),
 (2,'Post-2','Something about this post-2','2025-05-30 14:55:09','2025-05-30 08:55:09','2025-05-30 09:11:15');
/*!40000 ALTER TABLE `curd_posts` ENABLE KEYS */;


--
-- Definition of table `curd_products`
--

DROP TABLE IF EXISTS `curd_products`;
CREATE TABLE `curd_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_products`
--

/*!40000 ALTER TABLE `curd_products` DISABLE KEYS */;
INSERT INTO `curd_products` (`id`,`name`,`price`,`description`,`created_at`,`updated_at`) VALUES 
 (1,'T-shirt','2000.00','Cotton T-shirt comfortable for summer .','2025-05-30 09:13:25','2025-05-30 09:13:25');
/*!40000 ALTER TABLE `curd_products` ENABLE KEYS */;


--
-- Definition of table `curd_sessions`
--

DROP TABLE IF EXISTS `curd_sessions`;
CREATE TABLE `curd_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `curd_sessions_user_id_index` (`user_id`),
  KEY `curd_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_sessions`
--

/*!40000 ALTER TABLE `curd_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_sessions` ENABLE KEYS */;


--
-- Definition of table `curd_suppliers`
--

DROP TABLE IF EXISTS `curd_suppliers`;
CREATE TABLE `curd_suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_suppliers`
--

/*!40000 ALTER TABLE `curd_suppliers` DISABLE KEYS */;
INSERT INTO `curd_suppliers` (`id`,`name`,`email`,`phone`,`photo`,`created_at`,`updated_at`) VALUES 
 (1,'Abdul Kuddus','abdul@kuddus.com','13003030','suppliers/lwzNPqhJ01gBKWNAnmsTwhhKy7CrHmNPHLlGSJEa.jpg','2025-05-30 16:29:33','2025-05-30 16:52:13'),
 (2,'Abdul Kalam','abdul@kalam.com','+8801246589735','suppliers/YSd2l2Ml4pJFy9tmxDvIFN4VXUXE3lcwJ9C5iB6U.jpg','2025-05-30 16:34:22','2025-05-30 16:37:13');
/*!40000 ALTER TABLE `curd_suppliers` ENABLE KEYS */;


--
-- Definition of table `curd_users`
--

DROP TABLE IF EXISTS `curd_users`;
CREATE TABLE `curd_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `curd_users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curd_users`
--

/*!40000 ALTER TABLE `curd_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `curd_users` ENABLE KEYS */;


--
-- Definition of table `home_content`
--

DROP TABLE IF EXISTS `home_content`;
CREATE TABLE `home_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content_section` varchar(255) NOT NULL,
  `first_title` varchar(255) NOT NULL,
  `second_title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_content`
--

/*!40000 ALTER TABLE `home_content` DISABLE KEYS */;
INSERT INTO `home_content` (`id`,`content_section`,`first_title`,`second_title`,`description`) VALUES 
 (2,'About Downloader','sscczxc','adsaczxczxc','dsnadasnckc aksdjasdklj asdljdls asldjsdl '),
 (3,'How to Download','dsds','dsds','					\r\ndsds');
/*!40000 ALTER TABLE `home_content` ENABLE KEYS */;


--
-- Definition of table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturer`
--

/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`id`,`name`,`contact`) VALUES 
 (2,'ISL','2345454'),
 (3,'IDB','9390033'),
 (5,'APCL','23432432');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;


--
-- Definition of trigger `ad_manufacturer`
--

DROP TRIGGER /*!50030 IF EXISTS */ `ad_manufacturer`;

DELIMITER $$

CREATE DEFINER = `root`@`localhost` TRIGGER `ad_manufacturer` AFTER DELETE ON `manufacturer` FOR EACH ROW begin
  delete from product where manufacturer_id=old.id;
end $$

DELIMITER ;

--
-- Definition of table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Definition of table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) unsigned DEFAULT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_blog_category` (`category_id`),
  KEY `FK_blog_author` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`,`title`,`body`,`thumbnail`,`date_time`,`category_id`,`author_id`,`is_featured`) VALUES 
 (21,'Super Mario: The Timeless Classic','Super Mario is an iconic character and one of the most beloved video game franchises of all time. Created by Nintendo&#039;s Shigeru Miyamoto, the game was first released in 1985 and has since become a cultural phenomenon. Its popularity has endured for almost four decades, and it continues to captivate audiences of all ages.\r\n\r\nThe game&#039;s protagonist, Mario, is a plumber who embarks on a quest to rescue Princess Toadstool from the evil Bowser. Along the way, he must navigate through a series of obstacles and enemies, collecting coins and power-ups to help him on his journey. The game&#039;s simple yet challenging gameplay has made it a favorite among gamers of all ages.\r\n\r\nOne of the game&#039;s defining features is its colorful and vibrant world, which is filled with memorable characters and locations. From the Mushroom Kingdom to Bowser&#039;s Castle, each level is distinct and offers unique challenges. The game&#039;s soundtrack is also iconic, with catchy tunes that are instantly recognizable to anyone who has played the game.\r\n\r\nSuper Mario&#039;s success can be attributed to its accessibility and universal appeal. The game is easy to pick up and play, but it also offers a level of challenge that keeps players engaged. The character of Mario himself is also a major factor in the game&#039;s popularity. With his signature red hat and mustache, he has become one of the most recognizable figures in pop culture.\r\n\r\nOver the years, Super Mario has spawned numerous sequels and spin-offs, including Super Mario Bros. 2, Super Mario Bros. 3, Super Mario World, and Super Mario 64. Each game has introduced new elements and mechanics while still maintaining the core gameplay that made the original so successful.\r\n\r\nIn addition to its impact on the video game industry, Super Mario has also had a significant cultural impact. The character has appeared in countless forms of media, including cartoons, movies, and even theme parks. The game&#039;s influence can be seen in everything from fashion to music, and it has inspired countless other video games over the years.\r\n\r\nIn conclusion, Super Mario is a timeless classic that has earned its place in the pantheon of video game greats. Its simple yet challenging gameplay, vibrant world, and iconic characters have captured the hearts of gamers around the world. It&#039;s hard to imagine a world without Super Mario, and we can only hope that the franchise will continue to delight and inspire new generations of gamers for many years to come.','1677835502blog102.jpg','2023-03-03 15:25:02',7,5,0),
 (22,'AI Robots: The Current State of Progress','Artificial Intelligence (AI) has come a long way in recent years, and nowhere is this more evident than in the field of robotics. Advances in machine learning and computer vision have enabled robots to perform increasingly complex tasks, from manufacturing and assembly to healthcare and hospitality. In this blog post, we&#039;ll take a look at some of the current progress in AI robots and explore the potential applications of this technology.\r\n\r\n    Manufacturing and Assembly\r\n\r\nOne of the most well-established applications of AI robots is in manufacturing and assembly. Robots can perform repetitive tasks with speed and precision, improving efficiency and reducing errors. AI-powered robots can also adapt to changes in the production line, making them more versatile than traditional industrial robots.\r\n\r\n    Healthcare\r\n\r\nAI robots are also making inroads in the healthcare industry. Robots can assist doctors and nurses in a variety of tasks, from patient monitoring to surgery. They can also help patients with mobility issues, providing assistance with tasks such as getting out of bed or moving around the hospital.\r\n\r\n    Hospitality\r\n\r\nAnother area where AI robots are making an impact is in hospitality. Robots can be used to greet guests, provide information about the hotel, and even deliver room service. They can also perform housekeeping tasks, such as cleaning and restocking rooms.\r\n\r\n    Agriculture\r\n\r\nAI robots are also being used in agriculture, where they can perform tasks such as planting and harvesting crops. They can also be used to monitor crop health and identify areas that require attention.\r\n\r\n    Education\r\n\r\nAI robots are also being used in education. Robots can be used to provide personalized learning experiences for students, adapting to their individual needs and preferences. They can also be used to teach coding and other STEM subjects.\r\n\r\nIn conclusion, AI robots have come a long way in recent years, and their potential applications are vast. From manufacturing and assembly to healthcare and hospitality, robots are already making an impact in a variety of industries. As machine learning and computer vision continue to advance, we can expect to see even more sophisticated AI robots in the years to come, helping to improve efficiency, safety, and quality of life for people around the world.','1677835638blog15.jpg','2023-03-03 15:27:18',8,6,0),
 (23,'Advancements in VR: The Future of Immersive Gaming','One of the most popular and well-known applications of VR is in gaming. VR games provide a highly immersive experience, transporting players to a virtual world where they can interact with their surroundings in a way that traditional video games can&#039;t match. Here are some ways that VR is advancing the gaming industry:\r\n\r\n    Immersive gameplay\r\n\r\nVR gaming provides players with a level of immersion that traditional games cannot match. With VR, players can be fully immersed in a virtual world and interact with it in a way that feels natural. They can use their hands to pick up objects, explore new environments, and experience gameplay that is unlike anything else.\r\n\r\n    Unique game mechanics\r\n\r\nVR gaming allows for unique game mechanics that can&#039;t be replicated in traditional video games. For example, in Beat Saber, players use motion controllers to slash and dodge incoming blocks to the beat of a song. The sense of physically moving to dodge obstacles or interacting with objects in a virtual world creates an incredibly unique gaming experience.\r\n\r\n    Realistic environments\r\n\r\nVR allows game developers to create highly detailed and realistic environments, immersing players in a world that feels alive. The use of 3D audio and realistic lighting adds to the sense of immersion, creating an experience that feels like a real-world environment.\r\n\r\n    Multiplayer capabilities\r\n\r\nVR gaming also has the potential to revolutionize multiplayer gaming. VR headsets allow for full-body tracking, meaning that players can interact with each other in a virtual space. This opens up possibilities for multiplayer experiences that feel like real-life interactions.\r\n\r\n    New ways to tell stories\r\n\r\nVR also provides new ways to tell stories. For example, games like The Walking Dead: Saints &amp; Sinners use VR to create a highly immersive narrative experience. By placing players in a virtual world, they can become fully invested in the story, interacting with the environment and characters in a way that traditional games can&#039;t replicate.\r\n\r\nIn conclusion, VR is advancing the gaming industry by providing players with a highly immersive and unique experience. With the continued development of hardware and software, we can expect to see even more exciting VR games in the future.','1677835859blog20.jpg','2023-03-03 15:30:59',7,7,0),
 (24,'Takoyaki: A Delicious Japanese Street Food','Takoyaki is a popular Japanese street food that has become increasingly popular around the world. These savory balls of batter are typically filled with diced octopus and other ingredients, and are cooked on a special griddle until golden brown. In this blog post, we&#039;ll explore the history and ingredients of takoyaki, and explain how to make this delicious snack at home.\r\n\r\nHistory of Takoyaki\r\n\r\nTakoyaki originated in Osaka, Japan in the 1930s. A street vendor named Tomekichi Endo created the dish by combining bits of octopus and other ingredients with batter and cooking them in a specialized iron griddle. The dish quickly became popular, and today takoyaki is sold in food stalls and restaurants all over Japan.\r\n\r\nIngredients of Takoyaki\r\n\r\nTakoyaki is typically made with a batter consisting of flour, eggs, dashi (Japanese fish stock), and water. Other ingredients that can be added to the batter include green onion, pickled ginger, and tenkasu (tempura scraps). The filling of the takoyaki is usually diced octopus, but other seafood or meat can also be used.\r\n\r\nMaking Takoyaki at Home\r\n\r\nMaking takoyaki at home requires a special takoyaki griddle, which can be purchased at Japanese specialty stores or online. Here is a basic recipe for making takoyaki at home:\r\n\r\nIngredients:\r\n\r\n    1 cup flour\r\n    1 egg\r\n    1 tsp. baking powder\r\n    1 tsp. soy sauce\r\n    1 tsp. sugar\r\n    1 1/2 cups dashi (Japanese fish stock)\r\n    1/2 cup diced octopus\r\n    1/4 cup chopped green onion\r\n    1/4 cup tenkasu (tempura scraps)\r\n    Takoyaki sauce\r\n    Mayonnaise\r\n    Aonori (dried seaweed flakes)\r\n    Katsuobushi (dried bonito flakes)\r\n\r\nInstructions:\r\n\r\n    In a bowl, whisk together the flour, egg, baking powder, soy sauce, and sugar.\r\n    Slowly add the dashi, whisking until the batter is smooth.\r\n    Heat the takoyaki griddle over medium-high heat, and lightly oil the molds.\r\n    Fill each mold with batter until it is about 80% full.\r\n    Add a few pieces of diced octopus, green onion, and tenkasu to each mold.\r\n    Use a skewer to flip the takoyaki as it cooks, until it is golden brown on all sides.\r\n    Remove the takoyaki from the griddle, and top with takoyaki sauce, mayonnaise, aonori, and katsuobushi.\r\n\r\nIn conclusion, takoyaki is a delicious Japanese street food that has become a favorite of people all around the world. While it may seem intimidating to make at home, with a little practice and a takoyaki griddle, anyone can enjoy this savory snack in the comfort of their own home.\r\n','1677836026blog13.jpg','2023-03-03 15:33:46',1,8,0),
 (25,'Artificial Intelligence and Chess','Artificial Intelligence and Chess: A Match Made in Heaven\r\n\r\nArtificial intelligence (AI) has made significant strides in the past few decades and has been increasingly utilized in various fields, including gaming. One game that has been a favorite among AI researchers is chess, due to its complexity and the challenge it presents.\r\n\r\nChess is a board game played between two players, where each player has 16 pieces that can move in different ways to attack and defend. The goal of the game is to checkmate the opponent&#039;s king, which means to put it in a position where it is under attack and cannot escape capture. There are over 10^120 possible moves in chess, making it impossible for humans to calculate all possible moves and outcomes.\r\n\r\nAI has been able to defeat some of the best human chess players in the world, including Garry Kasparov and Magnus Carlsen. This has been achieved through the development of various AI algorithms, such as deep learning, reinforcement learning, and genetic algorithms. These algorithms have been used to train neural networks to evaluate the board state and make optimal moves.\r\n\r\nOne notable AI algorithm is AlphaZero, developed by Google&#039;s DeepMind. AlphaZero is a self-taught AI system that learned to play chess, shogi, and Go through self-play. AlphaZero&#039;s approach is based on Monte Carlo tree search and neural networks, which allows it to evaluate the board state and search for the best moves. AlphaZero was able to defeat the world&#039;s strongest chess engines in a 100-game match, winning 28 games and drawing 72.\r\n\r\nAI has also been used to analyze chess games and provide insights into the game. Chess.com&#039;s analysis tool, powered by Stockfish (an open-source chess engine), uses AI to analyze games and provide feedback on the best moves and strategies.\r\n\r\nAI has revolutionized the game of chess, providing a new level of insight and understanding into the game. It has also opened up new possibilities for the development of AI systems that can learn to play other complex games and solve complex problems. Chess remains an important testbed for AI research and development, and the future looks bright for the continued integration of AI into the game.','1678235660blog17.jpg','2023-03-08 06:34:20',9,9,0),
 (26,'Exploring the World: A Journey','There&#039;s something magical about watching the sun set on the horizon, and taking the time to appreciate the beauty of nature. From the vibrant colors to the peaceful atmosphere, it&#039;s a moment that can leave a lasting impression. That&#039;s why we&#039;re taking you on a virtual journey around the world to experience some of the most stunning sunsets from different locations.\r\n\r\nWe begin our journey in Bali, Indonesia, where the sunsets over the ocean are truly breathtaking. With a perfect view of the sun setting behind the rolling waves, it&#039;s no wonder Bali is often referred to as the &quot;Island of the Gods&quot;. As the sky turns from bright orange to deep purple, it&#039;s easy to feel a sense of peace and awe.\r\n\r\nNext, we move on to Tokyo, Japan, where the sunset over the city skyline is a beautiful contrast to the busy streets below. From the top of a skyscraper, the sun seems to melt into the buildings, creating a surreal and almost otherworldly scene. As the sky turns from pink to orange to red, the cityscape transforms into a beautiful painting.\r\n\r\nIn Santorini, Greece, the sunset over the caldera is a sight that many consider to be one of the most beautiful in the world. The combination of the white-washed buildings and the deep blue sea creates a perfect backdrop for the sun to set against. As the sky turns from yellow to pink to purple, the caldera takes on a whole new level of beauty.\r\n\r\nWe end our journey in the American Southwest, where the sunsets over the desert are unlike anything else. The way the sun illuminates the red rock formations of Sedona, Arizona or the Grand Canyon, creates a striking contrast that has to be seen to be believed. As the sky turns from orange to red to deep blue, the landscape seems to come alive.\r\n\r\nFrom Bali to Tokyo, Santorini to the American Southwest, the world is full of stunning sunsets that leave a lasting impression. Whether you&#039;re able to witness these sights in person or just through pictures, take a moment to appreciate the beauty and wonder of nature.\r\n','1678235943blog7.jpg','2023-03-08 06:39:03',1,8,1),
 (27,' Loy Krathong: A Celebration of Water and Light','Loy Krathong is an ancient and beloved festival in Thailand that celebrates the importance of water and light in our lives. From the floating of krathongs down the river to the release of paper lanterns into the sky, this festival is a magical experience that brings people together to honor the goddess of water and let go of negative emotions.\r\n\r\nIn this festival, participants make offerings of krathongs, small baskets made of banana leaves, that are filled with flowers, candles, and incense. The krathongs are then released onto the water and floated away, symbolizing the release of negativity and the letting go of worries. Along with the krathongs, paper lanterns are released into the sky, creating a beautiful and mesmerizing sight that represents the hope for good luck and a bright future.\r\n\r\nThe history of Loy Krathong can be traced back to the Sukhothai period over 700 years ago, and it has since become a significant festival in Thailand. It&#039;s a time for people to come together, celebrate, and give thanks for the abundance of water that&#039;s so important to life in the country. Loy Krathong is also an opportunity to taste traditional foods, watch cultural performances, and take part in beauty contests, fireworks displays, and boat races.\r\n\r\nLoy Krathong is truly a celebration of water and light, and it&#039;s a beautiful and meaningful experience that should not be missed. Whether you&#039;re a local or a visitor, this festival is a chance to connect with the community, show gratitude, and experience the beauty of Thailand&#039;s waterways. So, if you&#039;re ever in Thailand during the full moon of the twelfth lunar month, join in on this unforgettable celebration of water and light.','1678236380blog18.jpg','2023-03-08 06:46:20',10,10,0),
 (28,'Donut Delight: A Colorful and Tasty Wonderland','Who doesn&#039;t love donuts? They come in all shapes, sizes, and colors, and they&#039;re the perfect treat for any time of day. Recently, I had the pleasure of visiting a place that takes donuts to a whole new level of deliciousness and creativity. Let me take you on a journey to a donut wonderland that will tantalize your taste buds and delight your senses.\r\n\r\nLocated in the heart of the city, Donut Delight is a small bakery that offers a wide variety of handmade donuts. As soon as you enter the shop, you&#039;ll be greeted by the delicious aroma of freshly baked donuts, and a colorful display of donuts of all flavors and shapes.\r\n\r\nFrom classic glazed donuts to fruity ones, there&#039;s something for everyone at Donut Delight. They offer unique and creative flavors like matcha green tea, blueberry cheesecake, and maple bacon. And if you&#039;re feeling adventurous, you can try their speciality donuts like the unicorn donut, which is a colorful and glittery masterpiece that&#039;s almost too pretty to eat.\r\n\r\nBut the real highlight of Donut Delight is their customizable donuts. You can choose from a variety of toppings like Oreos, sprinkles, nuts, and chocolate chips, and create your own unique donut. You can even get your donut personalized with your name or a special message.\r\n\r\nThe donuts at Donut Delight are not only tasty but also Instagram-worthy. The colorful and creative designs make for a perfect photo-op, and you can share your donut experience with your friends and family on social media.\r\n\r\nIn addition to the delicious donuts, Donut Delight offers a cozy and welcoming ambiance that&#039;s perfect for a quick snack or a morning coffee break. The staff is friendly and always ready to help you choose the perfect donut flavor.\r\n\r\nIf you&#039;re a donut lover or just looking for a fun and tasty experience, Donut Delight is a must-visit place. It&#039;s a journey to a colorful and tasty wonderland that will satisfy your sweet tooth and leave you craving for more. So, what are you waiting for? Head to Donut Delight and indulge in the deliciousness of handmade, creative, and customizable donuts.','1678237190blog101.jpg','2023-03-08 06:59:50',1,11,0),
 (29,'Bionic Arms: The Future','Bionic arms are one of the most exciting and promising developments in the field of prosthetics. These high-tech devices are designed to replace missing or damaged limbs, providing amputees with greater mobility and independence than ever before.\r\n\r\nBionic arms work by using sensors that detect muscle movements in the remaining portion of the amputee&#039;s limb. These sensors send signals to a small computer processor located inside the prosthetic arm. The computer then translates these signals into movements of the bionic arm, allowing the user to control the arm with their mind.\r\n\r\nOne of the key advantages of bionic arms is that they offer a greater range of motion than traditional prosthetics. With a bionic arm, amputees can perform a wide variety of tasks that were previously impossible, such as holding and manipulating delicate objects or reaching for items on high shelves.\r\n\r\nIn addition, bionic arms are designed to be more comfortable and user-friendly than traditional prosthetics. They are typically made from lightweight materials that are easy to wear for extended periods of time. Many bionic arms also feature advanced cooling systems that prevent overheating, making them much more comfortable to wear in warm weather.\r\n\r\nPerhaps the most exciting aspect of bionic arms is their potential for future development. As technology continues to advance, bionic arms are likely to become even more advanced and capable. We may one day see bionic arms that are fully integrated with the nervous system, providing users with even greater control and flexibility.\r\n\r\nIn conclusion, bionic arms represent a significant advancement in the field of prosthetics. These high-tech devices offer amputees greater mobility and independence than ever before, and they are designed to be comfortable, user-friendly, and highly capable. As technology continues to evolve, bionic arms are likely to become even more advanced and capable, offering even greater benefits to those who rely on them.\r\n','1678237466blog2.jpg','2023-03-08 07:04:26',9,5,0),
 (30,'Clocks Around the World: A Journey Through Time','Clocks have been a part of human history for thousands of years, and can be found in many different cultures and locations around the world. From the ornate mechanical clocks of Europe to the ancient sundials of Egypt, clocks come in all shapes and sizes, reflecting the unique cultural and historical context in which they were created.\r\n\r\nIn Europe, clocks have a long and rich history, dating back to the Middle Ages. Mechanical clocks were first developed in the 13th century, and quickly became a symbol of wealth and power. Clock towers, such as the famous Big Ben in London, still stand as iconic landmarks in many European cities.\r\n\r\nIn the Middle East, Islamic civilization played a significant role in the development of early mechanical clocks. Water clocks, also known as clepsydra, were commonly used in mosques to determine the time for prayer. These clocks were also used to regulate the irrigation systems in agriculture.\r\n\r\nIn China, the development of water clocks and astronomical instruments dates back to the Han Dynasty. The Chinese invented the first mechanical clock, known as the Su Song clock, which was designed to be an astronomical instrument. The clock featured a rotating armillary sphere, which was used to measure the positions of stars and planets.\r\n\r\nIn India, ancient sundials were used to tell time. The most famous of these is the Jantar Mantar observatory in Jaipur, which features a collection of large sundials and astronomical instruments.\r\n\r\nIn South America, the Incas used a system of knotted strings, known as quipus, to keep track of time and record historical events. The quipus were made of colored strings that were knotted in various ways to represent numbers and dates.\r\n\r\nIn Africa, the ancient Egyptians used sundials to tell time. They also used water clocks, which were filled with water that would gradually drain out, marking the passage of time.\r\n\r\nIn conclusion, clocks have a rich and diverse history that reflects the unique cultural and historical context in which they were created. From the mechanical clocks of Europe to the sundials of Egypt, clocks come in all shapes and sizes, and have played an important role in how we measure and manage time throughout human history.\r\n','1678249472blog100.jpg','2023-03-08 10:24:32',10,12,0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `manufacturer_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`,`name`,`price`,`manufacturer_id`) VALUES 
 (3,'HRM',100000,2),
 (4,'ERP',3000000,2),
 (5,'Car',900000,3),
 (7,'Headphone',2000,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` (`id`,`student_id`,`amount`,`created_at`) VALUES 
 (1,1,2000,'2025-02-03 11:28:00'),
 (2,3,3000,'2025-02-03 11:28:00'),
 (3,1,2000,'2025-02-03 11:28:00');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;


--
-- Definition of table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`,`name`) VALUES 
 (1,'Admin'),
 (2,'Manager'),
 (3,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `roless`
--

DROP TABLE IF EXISTS `roless`;
CREATE TABLE `roless` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roless`
--

/*!40000 ALTER TABLE `roless` DISABLE KEYS */;
INSERT INTO `roless` (`id`,`name`) VALUES 
 (1,'Shuvo'),
 (2,'rony');
/*!40000 ALTER TABLE `roless` ENABLE KEYS */;


--
-- Definition of table `roll`
--

DROP TABLE IF EXISTS `roll`;
CREATE TABLE `roll` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roll`
--

/*!40000 ALTER TABLE `roll` DISABLE KEYS */;
INSERT INTO `roll` (`id`,`name`,`department`) VALUES 
 (1,'Rabin','Economics'),
 (2,'Anayet','Account');
/*!40000 ALTER TABLE `roll` ENABLE KEYS */;


--
-- Definition of table `shuvo`
--

DROP TABLE IF EXISTS `shuvo`;
CREATE TABLE `shuvo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0,
  `remark` varchar(20) DEFAULT NULL,
  `products_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo`
--

/*!40000 ALTER TABLE `shuvo` DISABLE KEYS */;
INSERT INTO `shuvo` (`id`,`name`,`create_at`,`password`,`inactive`,`remark`,`products_name`) VALUES 
 (1,'Shuvo','2025-02-01 12:12:13','20202',0,NULL,NULL),
 (2,'shuvo','2025-02-02 10:31:26','101010',0,NULL,'apple'),
 (3,'Rahat','2025-02-02 10:34:35','101010',0,NULL,'Orang'),
 (4,'Tanmoy','2025-02-01 12:12:13','101010',0,NULL,NULL),
 (6,'Rana','2025-02-01 12:12:13','101010',0,NULL,NULL),
 (7,'Hridoy','2025-02-01 12:12:13','101010',0,NULL,NULL),
 (8,'Rony','2025-02-02 09:41:06','2021020',0,NULL,NULL),
 (9,'Sagor','2025-02-02 10:38:30','10010',0,NULL,NULL);
/*!40000 ALTER TABLE `shuvo` ENABLE KEYS */;


--
-- Definition of table `shuvo2`
--

DROP TABLE IF EXISTS `shuvo2`;
CREATE TABLE `shuvo2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo2`
--

/*!40000 ALTER TABLE `shuvo2` DISABLE KEYS */;
INSERT INTO `shuvo2` (`id`,`name`,`password`) VALUES 
 (1,'shuvo','101010'),
 (2,'Rahat','101010'),
 (3,'Tanmoy','101010'),
 (4,'Sagor','101010'),
 (5,'Rana','101010'),
 (6,'Hridoy','101010'),
 (7,'shuvo','101010'),
 (8,'Rahat','101010'),
 (9,'Tanmoy','101010'),
 (10,'Sagor','101010'),
 (11,'Rana','101010'),
 (12,'Hridoy','101010'),
 (13,'tomal','101010');
/*!40000 ALTER TABLE `shuvo2` ENABLE KEYS */;


--
-- Definition of table `shuvo51`
--

DROP TABLE IF EXISTS `shuvo51`;
CREATE TABLE `shuvo51` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo51`
--

/*!40000 ALTER TABLE `shuvo51` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuvo51` ENABLE KEYS */;


--
-- Definition of table `shuvo52`
--

DROP TABLE IF EXISTS `shuvo52`;
CREATE TABLE `shuvo52` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo52`
--

/*!40000 ALTER TABLE `shuvo52` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuvo52` ENABLE KEYS */;


--
-- Definition of table `shuvo53`
--

DROP TABLE IF EXISTS `shuvo53`;
CREATE TABLE `shuvo53` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shuvo53`
--

/*!40000 ALTER TABLE `shuvo53` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuvo53` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`name`,`password`) VALUES 
 (1,'admin','11111'),
 (2,'manager','3333');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`,`name`,`mobile`) VALUES 
 (1,'Jahid','3434333'),
 (2,'Rahim','4543434'),
 (3,'Karim','4343432');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;


--
-- Definition of table `theme_setting`
--

DROP TABLE IF EXISTS `theme_setting`;
CREATE TABLE `theme_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `header_background` varchar(255) NOT NULL,
  `footer_background` varchar(255) NOT NULL,
  `downloader_box_background` varchar(255) NOT NULL,
  `downloader_box_button` varchar(255) NOT NULL,
  `first_title` varchar(255) NOT NULL,
  `second_title` varchar(255) NOT NULL,
  `third_title` varchar(255) NOT NULL,
  `footer_menu_link` varchar(255) NOT NULL,
  `header_menu_link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `paragraph` varchar(255) NOT NULL,
  `logo_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `theme_setting`
--

/*!40000 ALTER TABLE `theme_setting` DISABLE KEYS */;
INSERT INTO `theme_setting` (`id`,`header_background`,`footer_background`,`downloader_box_background`,`downloader_box_button`,`first_title`,`second_title`,`third_title`,`footer_menu_link`,`header_menu_link`,`icon`,`paragraph`,`logo_name`) VALUES 
 (1,'#0a570d','#c2c52b','#a61c1c','#8a7575','#d53030','#4d1f1f','#1917a6','#75c5c7','#6ff316','#4f24eb','#ff0000','#f50000');
/*!40000 ALTER TABLE `theme_setting` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`password`,`role_id`) VALUES 
 (1,'jahid2','111111',1),
 (2,'Test333','333333',2),
 (3,'rahim','111111',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `users1`
--

DROP TABLE IF EXISTS `users1`;
CREATE TABLE `users1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) DEFAULT NULL,
  `inactive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users1`
--

/*!40000 ALTER TABLE `users1` DISABLE KEYS */;
INSERT INTO `users1` (`id`,`name`,`created_at`,`password`,`inactive`) VALUES 
 (1,'jahid','2025-02-01 10:50:26','111111',0),
 (2,'rasel','2025-02-01 10:50:26','444444',0),
 (3,'karim','2025-02-01 10:50:26','222222',0);
/*!40000 ALTER TABLE `users1` ENABLE KEYS */;


--
-- Definition of table `userss`
--

DROP TABLE IF EXISTS `userss`;
CREATE TABLE `userss` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `role_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userss`
--

/*!40000 ALTER TABLE `userss` DISABLE KEYS */;
INSERT INTO `userss` (`id`,`name`,`password`,`role_id`) VALUES 
 (1,'Shuvo','222222','1231122'),
 (2,'Rony','2222221','1231133'),
 (3,'Mahamudul','2222223','1231144'),
 (4,'Kawsar','2222224','1231155'),
 (5,'Nadim','2222225','1231166'),
 (6,'','','1'),
 (7,'','','1'),
 (8,'','222222','1'),
 (9,'','','1'),
 (10,'','222222','2'),
 (11,'Shuvo','222222','2');
/*!40000 ALTER TABLE `userss` ENABLE KEYS */;


--
-- Definition of table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor`
--

/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;


--
-- Definition of table `website_setting`
--

DROP TABLE IF EXISTS `website_setting`;
CREATE TABLE `website_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `website_title` varchar(255) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `visible_website_name` int(10) NOT NULL DEFAULT 0,
  `website_logo` varchar(255) NOT NULL,
  `website_favicon` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `google_varification_code` text NOT NULL,
  `google_analytics_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `website_setting`
--

/*!40000 ALTER TABLE `website_setting` DISABLE KEYS */;
INSERT INTO `website_setting` (`id`,`website_title`,`website_name`,`visible_website_name`,`website_logo`,`website_favicon`,`meta_keyword`,`meta_description`,`google_varification_code`,`google_analytics_code`) VALUES 
 (1,'dd','dd',0,'codingstatus-logo.jpg','codingstatus-icon.jpg','dd','dd','dd','dd');
/*!40000 ALTER TABLE `website_setting` ENABLE KEYS */;


--
-- Definition of view `v_product`
--

DROP TABLE IF EXISTS `v_product`;
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product` AS select `p`.`id` AS `id`,`p`.`name` AS `name`,`p`.`price` AS `price`,`m`.`address` AS `address`,`m`.`name` AS `mfn` from (`manufacturer` `m` join `product` `p`) where `m`.`id` = `p`.`manufacturer_id` and `p`.`price` > 5000;

--
-- Definition of view `v_product_list1`
--

DROP TABLE IF EXISTS `v_product_list1`;
DROP VIEW IF EXISTS `v_product_list1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product_list1` AS select `p`.`id` AS `id`,`p`.`name` AS `product_name`,`m`.`name` AS `mfg_name` from (`product` `p` join `manufacturer` `m`) where `m`.`id` = `p`.`manufacturer_id` and `p`.`price` > 5000;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
