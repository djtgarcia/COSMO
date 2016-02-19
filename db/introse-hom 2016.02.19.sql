CREATE DATABASE  IF NOT EXISTS `introse` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `introse`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: introse
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `contactNum` int(11) NOT NULL,
  `position_id` int(2) NOT NULL DEFAULT '10',
  `committee_id` int(2) NOT NULL DEFAULT '11',
  `workload` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committee`
--

DROP TABLE IF EXISTS `committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `committee` (
  `committee_id` int(2) NOT NULL AUTO_INCREMENT,
  `committee_name` varchar(32) NOT NULL,
  PRIMARY KEY (`committee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committee`
--

LOCK TABLES `committee` WRITE;
/*!40000 ALTER TABLE `committee` DISABLE KEYS */;
INSERT INTO `committee` VALUES (1,'Documentations'),(2,'Operations and Logistics'),(3,'CCS Ambassadors'),(4,'Human Resources'),(5,'Community Development'),(6,'Finance'),(7,'Programs and Advocacies'),(8,'Publicity and Creatives'),(9,'Public Relations'),(10,'Corporate Relations'),(11,'TBA');
/*!40000 ALTER TABLE `committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctype`
--

DROP TABLE IF EXISTS `doctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctype` (
  `doctype_id` int(2) NOT NULL AUTO_INCREMENT,
  `doctype_name` varchar(200) NOT NULL,
  `phase` int(1) NOT NULL,
  PRIMARY KEY (`doctype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='phase 0=pre, 1=post';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctype`
--

LOCK TABLES `doctype` WRITE;
/*!40000 ALTER TABLE `doctype` DISABLE KEYS */;
INSERT INTO `doctype` VALUES (1,'Detailed Program Design in PPR',0),(2,'Unsigned Memorandum of Agreement',0),(3,'Mechanics',0),(4,'Projected Income in PPR',0),(5,'Signature of COSCA Representative in A-form',0),(6,'COSCA Form',0),(7,'Unsigned Memorandum of Agreement with Medicine/Medical Service Providers',0),(8,'List of Medicines/Services to be Provided',0),(9,'Faculty Conforme Form',0),(10,'List of Organizers',0),(11,'Waivers Forms of Organizers',0),(12,'List of Items with Pictures to be Sold',0),(13,'Signature of STRATCOM Representative in A-form',0),(14,'STRATCOM Application for DLSU Trademark',0),(15,'Signature of OCCS Representative in A-form',0),(16,'Unsigned Memorandum of Agreement with OCCS',0),(17,'Description of the Activity that would be participated in',0),(18,'Unsigned Memorandum of Agreement for Venue Reservation',0),(19,'Media Activity Form',0),(20,'Ticket Design',0),(21,'List of Prizes',0),(22,'Signature of LSPO Representative in A-form',0),(23,'Waiver Forms',0),(24,'Solicitation Letter',0),(25,'Sponsorship Packages',0),(26,'List of Prospect Companies',0),(27,'Unsigned Memorandum of Agreement with Prospect Sponsors',0),(28,'Complete Description of Activities',0),(29,'Sample Publicity Visuals approved by the Publicity and Marketing Team',0),(30,'URL',0),(31,'List of Books/Materials to be lent',0),(32,'Approval Letter signed by the University Bookstore Representative',0),(33,'Labelled Booth Design',0),(34,'Bulletin Board Design',0),(35,'Letter for Use of Different Venues in Campus approved by the AVP for Facilities Management',0),(36,'Sample Design (front and back)',0),(37,'Sample Reviewer/Academic Aid',0),(38,'List of Items to be collected/bought for Donation',0),(39,'Application Forms',0),(40,'Sample Survey/Evaluation Questionnaire',0),(41,'Labelled Exhibit Design',0),(42,'List of Movie/s with Description',0),(43,'Agenda/Topics to be Discussed',0),(44,'Wall Theme',0),(45,'Interview Questions',0),(46,'Agenda',0),(47,'Sample Application Form',0),(48,'Minor Publication Proposal Paper',0),(49,'Minor Publication Approval Sheet',0),(50,'Dummy Print',0),(51,'Credentials of Speaker',0),(52,'LSPO Form',0),(53,'Specific Plans/Activities to be done for the Program',0),(54,'Credentials of Tutor/Consultant/Mentor',0),(55,'List of Subject/s to be discussed/tutored',0),(56,'Series Title: Specific title for the activity in that series',0),(57,'Attendance Log Sheet',1),(58,'List of Expenses',1),(59,'Activity Report',1),(60,'Pictures',1),(61,'Approved Memorandum of Agreement',1),(62,'List of Winners',1),(63,'FRA Report',1),(64,'Income Statement',1),(65,'Evaluation Results',1),(66,'Names of Doctors/Nurses/Dentists',1),(67,'List of Patients/Participants',1),(68,'Results of Audition',1),(69,'Approved Publicity Visual by the Publicity and Marketing Team',1),(70,'List of Participants and Winners',1),(71,'Evaluation/Survey Results',1),(72,'Minutes of the Meeting',1),(73,'Sample Publication',1),(74,'Evaluation Results',1);
/*!40000 ALTER TABLE `doctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nature`
--

DROP TABLE IF EXISTS `nature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nature` (
  `nature_id` int(2) NOT NULL AUTO_INCREMENT,
  `nature_name` varchar(40) NOT NULL,
  PRIMARY KEY (`nature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nature`
--

LOCK TABLES `nature` WRITE;
/*!40000 ALTER TABLE `nature` DISABLE KEYS */;
INSERT INTO `nature` VALUES (1,'Student Service'),(2,'Student\'s Rights and Welfare'),(3,'Rules and Policies'),(4,'Fundraising'),(5,'Community Development'),(6,'Organizational Development'),(7,'Issue Advocacy'),(8,'Lasallian Formation/Spiritual Growth'),(9,'Outreach');
/*!40000 ALTER TABLE `nature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notif_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `message` varchar(512) NOT NULL,
  PRIMARY KEY (`notif_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective`
--

DROP TABLE IF EXISTS `objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objective` (
  `objective_id` int(11) NOT NULL AUTO_INCREMENT,
  `objective_name` varchar(300) NOT NULL,
  PRIMARY KEY (`objective_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective`
--

LOCK TABLES `objective` WRITE;
/*!40000 ALTER TABLE `objective` DISABLE KEYS */;
/*!40000 ALTER TABLE `objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paperwork`
--

DROP TABLE IF EXISTS `paperwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paperwork` (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `doctype_id` int(2) NOT NULL,
  `status_id` int(2) NOT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paperwork`
--

LOCK TABLES `paperwork` WRITE;
/*!40000 ALTER TABLE `paperwork` DISABLE KEYS */;
/*!40000 ALTER TABLE `paperwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `position_id` int(2) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(32) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'College President'),(2,'Chief of Staff'),(3,'Deputy Chief of Staff'),(4,'Executive Secretary'),(5,'ECP Internals'),(6,'ECP University Affairs'),(7,'ECP Admin Affairs'),(8,'ECP Externals'),(9,'Executive Treasurer'),(10,'TBA');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `nature_id` int(2) NOT NULL,
  `type_id` int(2) NOT NULL,
  `goal` varchar(200) NOT NULL,
  `objective_id` int(11) NOT NULL,
  `project_name` varchar(64) NOT NULL,
  `description` varchar(300) NOT NULL,
  `measure` int(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date` date NOT NULL,
  `committee_id` int(2) NOT NULL,
  `status_id` int(2) NOT NULL,
  `project_head` int(11) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status_id` int(2) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Pending'),(2,'Accepted'),(3,'On-going'),(4,'Done');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `type_id` int(2) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Academic Contest'),(2,'Distribution'),(3,'General Assembly'),(4,'Seminar/Workshops'),(5,'Publicity/Awareness Campaign'),(6,'Meetings'),(7,'Spiritual Activity'),(8,'Recruitment/Audition'),(9,'Recreation'),(10,'Alliance With Outside Organizations'),(11,'Off-Campus Activities'),(12,'Seminar With Distinguished Speakers'),(13,'Conference Involving Outside Participants'),(14,'Solicitations'),(15,'Fundraising'),(16,'Donation Drive');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-19 22:20:07
