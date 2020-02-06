-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `bugs`;
CREATE TABLE `bugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_story_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `originated` varchar(50) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `fix_by` int(11) NOT NULL,
  `caught_by` int(11) NOT NULL,
  `description` text NOT NULL,
  `priority_id` int(11) NOT NULL,
  `initial_date` date NOT NULL,
  `submited_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_story_id` (`user_story_id`),
  KEY `status_id` (`status_id`),
  KEY `assign_to` (`assign_to`),
  KEY `fix_by` (`fix_by`),
  KEY `caught_by` (`caught_by`),
  KEY `priority_id` (`priority_id`),
  CONSTRAINT `bugs_ibfk_3` FOREIGN KEY (`user_story_id`) REFERENCES `user_storys` (`id`),
  CONSTRAINT `bugs_ibfk_5` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  CONSTRAINT `bugs_ibfk_6` FOREIGN KEY (`assign_to`) REFERENCES `users` (`id`),
  CONSTRAINT `bugs_ibfk_7` FOREIGN KEY (`fix_by`) REFERENCES `users` (`id`),
  CONSTRAINT `bugs_ibfk_8` FOREIGN KEY (`caught_by`) REFERENCES `users` (`id`),
  CONSTRAINT `bugs_ibfk_9` FOREIGN KEY (`priority_id`) REFERENCES `prioritys` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bugs` (`id`, `user_story_id`, `status_id`, `originated`, `assign_to`, `fix_by`, `caught_by`, `description`, `priority_id`, `initial_date`, `submited_date`, `is_deleted`, `secret`) VALUES
(1,	1,	2,	'at login page',	3,	3,	3,	'their is a bug in the button of login as it is not clickable',	2,	'0000-00-00',	'0000-00-00',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `departments` (`id`, `name`, `is_deleted`, `secret`) VALUES
(1,	'Account',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'HR',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'Sales and Marketing',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4,	'Product',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5,	'Admin',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `designations`;
CREATE TABLE `designations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `designations` (`id`, `name`, `is_deleted`, `secret`) VALUES
(1,	'Software Engineer',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'Technical Lead',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'Team Lead',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4,	'Project Lead',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5,	'Project Manager',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6,	'Vice President',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7,	'Quality Assurance',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8,	'Business Analyst',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(512) DEFAULT NULL,
  `secret` varchar(50) DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `files` (`id`, `file`, `secret`) VALUES
(1,	'uploads/files/1-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'uploads/files/2-d2.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'uploads/files/3-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4,	'uploads/files/4-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5,	'uploads/files/5-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6,	'uploads/files/6-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7,	'uploads/files/7-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8,	'uploads/files/8-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(9,	'uploads/files/9-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(10,	'uploads/files/10-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(11,	'uploads/files/11-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(12,	'uploads/files/12-d2.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(13,	'uploads/files/13-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(14,	'uploads/files/14-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(15,	'uploads/files/15-d1.jpg',	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `groups` (`id`, `name`, `is_active`, `is_deleted`, `secret`) VALUES
(1,	'ninja',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'prot',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `application_date` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `reason` tinytext NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT 22,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `leave_type_id` (`leave_type_id`),
  KEY `user_id` (`user_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `leaves_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  CONSTRAINT `leaves_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `leaves_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `leaves` (`id`, `user_id`, `application_date`, `start_date`, `end_date`, `leave_type_id`, `reason`, `status_id`, `is_deleted`, `secret`) VALUES
(21,	3,	'2020-01-31',	'2020-01-31',	'2020-01-31',	1,	'N.A.',	1,	1,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(24,	5,	'2020-01-31',	'2020-01-31',	'2020-02-04',	3,	'ankit',	7,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(25,	3,	'2020-02-03',	'2020-02-04',	'2020-02-05',	4,	'N.A.',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(26,	3,	'2020-02-03',	'2020-02-04',	'2020-02-05',	5,	'ankit',	27,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(27,	5,	'2020-02-03',	'2020-02-04',	'2020-02-05',	5,	'exam',	25,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(32,	5,	'2020-02-05',	'2020-02-03',	'2020-02-05',	5,	'hello',	22,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_type` varchar(50) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `leave_types` (`id`, `name_type`, `is_deleted`, `secret`) VALUES
(1,	'Casual ',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'Maternity',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'Paternity',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4,	'Medical',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5,	'Study',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6,	'Pay',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `milestones`;
CREATE TABLE `milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `initial_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amout` float NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `release_date` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_group_id` (`user_group_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `milestones_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`),
  CONSTRAINT `milestones_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `milestones` (`id`, `title`, `initial_date`, `due_date`, `amout`, `project_id`, `user_group_id`, `release_date`, `is_active`, `is_deleted`, `secret`) VALUES
(1,	'part-1',	'0000-00-00',	'0000-00-00',	100000,	1,	1,	'0000-00-00 00:00:00',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'part-2',	'0000-00-00',	'0000-00-00',	40000,	1,	1,	'0000-00-00 00:00:00',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `license` varchar(15) NOT NULL DEFAULT 'basic',
  `validity` datetime NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `theme_bg` varchar(20) DEFAULT NULL,
  `theme_col` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `org_secret` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_secret` (`org_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `organizations` (`id`, `name`, `email`, `license`, `validity`, `logo`, `theme_bg`, `theme_col`, `is_active`, `org_secret`, `secret`) VALUES
(1,	'Default Organization',	'superadmin@example.com',	'super',	'0000-01-01 00:00:00',	NULL,	NULL,	NULL,	1,	'206b2dbe-ecc9-490b-b81b-83767288bc5e',	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `prioritys`;
CREATE TABLE `prioritys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `prioritys` (`id`, `type`, `is_deleted`, `secret`) VALUES
(1,	'High',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'Medium',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'Low',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` bigint(15) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `theme_bg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_col` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `secret` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `department_id` (`department_id`),
  KEY `designation_id` (`designation_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `profiles_ibfk_3` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `image`, `address`, `dob`, `gender`, `contact`, `department_id`, `designation_id`, `theme_bg`, `theme_col`, `is_deleted`, `secret`) VALUES
(1,	3,	'hitesh',	'chaudhary',	'1.jpg',	'B 304 nirgun avenue\r\nNr swaminarayan park 1 opp old narol court\r\nNarol',	'0000-00-00',	'male',	NULL,	NULL,	NULL,	NULL,	NULL,	'0',	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	5,	'Ankit',	'patil',	NULL,	'2/212,Rana Streat,Ghachiwad,Nani Daman,Daman& Diu',	'0000-00-00',	'male',	8735805097,	NULL,	NULL,	NULL,	NULL,	'0',	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) NOT NULL,
  `initial_date` date NOT NULL,
  `due_date` date NOT NULL,
  `budget` float NOT NULL,
  `logo_image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_group_id` (`user_group_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`id`),
  CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `projects` (`id`, `title`, `initial_date`, `due_date`, `budget`, `logo_image`, `description`, `user_group_id`, `status_id`, `is_deleted`, `secret`) VALUES
(1,	'Jazzmusic',	'0000-00-00',	'0000-00-00',	500000,	'1.jpg',	'This project is of online music system',	1,	8,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'online election system',	'0000-00-00',	'0000-00-00',	200000,	'2.jpg',	'This project is of online election system ',	1,	9,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `salary` float NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `salaries` (`id`, `user_id`, `salary`, `is_deleted`, `secret`) VALUES
(1,	3,	50000,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(55) NOT NULL,
  `name` varchar(30) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `statuses` (`id`, `type`, `name`, `is_deleted`, `secret`) VALUES
(1,	'Bug',	'OnHold',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'Bug',	'In Progress',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'Bug',	'Pending',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(4,	'Bug',	'Review',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5,	'Bug',	'Solve',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(6,	'Bug',	'Reopened',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(7,	'Bug',	'Rejected',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(8,	'Project',	'Active',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(9,	'Project',	'In progress',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(10,	'Project',	'Delayed',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(11,	'Project',	'In testing',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(12,	'Project',	'OnHold',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(13,	'Project',	'Approved',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(14,	'Project',	'Cancelled',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(15,	'Project',	'Completed',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(16,	'Task',	'Pending',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(17,	'Task ',	'Completed',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(18,	'Task',	'Started',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(19,	'Task',	'Unassigned',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(20,	'Task',	'In progress',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(21,	'user_story',	'Progress',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(22,	'user_story',	'Pending',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(23,	'user_story',	'Completed',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(24,	'Leave',	'Pendding',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(25,	'Leave',	'Approved',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(26,	'Leave',	'Rejected',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(27,	'Leave',	'OnHold',	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `initial_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `assign_to` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL,
  `user_story_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  `estimated_hour` time NOT NULL,
  `actual_hour` time NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `assign_to` (`assign_to`),
  KEY `status_id` (`status_id`),
  KEY `updated_by` (`updated_by`),
  KEY `user_story_id` (`user_story_id`),
  KEY `priority_id` (`priority_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assign_to`) REFERENCES `users` (`id`),
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  CONSTRAINT `tasks_ibfk_4` FOREIGN KEY (`user_story_id`) REFERENCES `user_storys` (`id`),
  CONSTRAINT `tasks_ibfk_5` FOREIGN KEY (`priority_id`) REFERENCES `prioritys` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tasks` (`id`, `title`, `initial_date`, `due_date`, `status_id`, `description`, `assign_to`, `updated_at`, `updated_by`, `user_story_id`, `priority_id`, `estimated_hour`, `actual_hour`, `is_active`, `is_deleted`, `secret`) VALUES
(1,	'task-1',	'0000-00-00',	'0000-00-00',	18,	'i can compelete this this within 2 days',	3,	'0000-00-00 00:00:00',	3,	1,	2,	'06:00:00',	'05:00:00',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `timesheets`;
CREATE TABLE `timesheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `comment` text NOT NULL,
  `submit_date` datetime NOT NULL,
  `total_hours` time NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `timesheets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `timesheets` (`id`, `user_id`, `time_from`, `time_to`, `comment`, `submit_date`, `total_hours`, `is_active`, `is_deleted`, `secret`) VALUES
(1,	3,	'09:00:01',	'15:00:00',	'i have completed particular task',	'2020-08-08 00:00:00',	'06:00:00',	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '00000000-00000-0000-0000-000000000000',
  `lease` datetime NOT NULL DEFAULT '0000-01-01 00:00:00',
  `role` varchar(50) DEFAULT 'user',
  `is_active` tinyint(1) DEFAULT 1,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `email`, `username`, `password`, `token`, `lease`, `role`, `is_active`, `secret`) VALUES
(1,	'superadmin@example.com',	'superadmin',	'17c4520f6cfd1ab53d8745e84681eb49',	'1',	'0000-00-00 00:00:00',	'superadmin',	1,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	'admin@example.com',	'admin',	'21232f297a57a5a743894a0e4a801fc3',	'7cf44970-3648-4e6b-b6cc-ea2ae4e03708',	'2020-02-06 06:26:56',	'admin',	1,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(3,	'user@example.com',	'user',	'ee11cbb19052e40b07aac0ca060c23ee',	'8b9e8fbd-e1b5-4285-8a87-9e12ed5fdc35',	'2020-02-03 06:27:33',	'user',	1,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(5,	'user1@example.com',	'Ankit Patil',	'24c9e15e52afc47c225b757e7bee1f9d',	'22333cbd-d483-4077-b84a-c9c13c5d1203',	'2020-02-05 06:23:32',	'user',	1,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `user_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_groups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_groups` (`id`, `user_id`, `group_id`, `is_active`, `is_deleted`, `secret`) VALUES
(1,	3,	1,	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e'),
(2,	3,	2,	1,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

DROP TABLE IF EXISTS `user_storys`;
CREATE TABLE `user_storys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `projects_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `secret` varchar(50) NOT NULL DEFAULT '206b2dbe-ecc9-490b-b81b-83767288bc5e',
  PRIMARY KEY (`id`),
  KEY `projects_id` (`projects_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `user_storys_ibfk_1` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `user_storys_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_storys` (`id`, `title`, `description`, `projects_id`, `status_id`, `is_deleted`, `secret`) VALUES
(1,	'login ',	'i want to login',	1,	21,	0,	'206b2dbe-ecc9-490b-b81b-83767288bc5e');

-- 2020-02-06 09:07:25
