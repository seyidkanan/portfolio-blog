CREATE DATABASE  IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `text` varchar(20000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FKqiq7jdf8sa6hq1d8sr0k6s12q` (`user_id`),
  CONSTRAINT `FKqiq7jdf8sa6hq1d8sr0k6s12q` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'2017-07-18 20:33:11','This has been a continuous source of conflict and division within mobile apps developers, almost surpassing the eternal nuclear war of tabs vs. space (hey, that can be a great subject for the next article!). But first of all, let’s have a look at what are native and hybrid mobile apps. The main difference between native and hybrid apps is the technology used to build them. Native apps are developed using the native SDK (Software Development Kit) of the platform, which developers can use in Java for Android or Objective-C for iOS. Hybrid apps, on the other hand, are developed using web technologies (HTML, CSS, JavaScript) and then, either transpiled to native code or wrapped into a native web view. Most of the other differences are a consequence of that technological divergence. Hybrid apps mostly encourage code reuse between platforms by adding a level of abstraction over the SDKs. Therefore, you can code an app once and have it work on Android, iOS, Windows Phone, FirefoxOS, etc… On the other hand, if you want to build native apps, you will need to build a completely different app for each platform. Native apps are therefore more expensive to build and to maintain than hybrid apps. But on the bright side, native apps possess intrinsically higher performance than hybrid apps and they enjoy an effortless native UI. ','Native vs. Hybrid: do users really care?i',1),(2,'2017-08-09 22:08:18','The Stanford professor who wrote a popular book on Java — and has taught Java for 15 years — is now abandoning Java in favor of JavaScript for his introductory computer science courses.\nStanford’s website explains that their new CS 106J course “covers the same material as [older course] CS 106A but does so using JavaScript, the most common language for implementing interactive web pages, instead of Java.”\nThis isn’t the end of Java, which has decades worth of tools and codebases built up, and is still used by many large corporations. Rather, this is just a sign of the times.\nJavaScript is truly open source and owned by no one, whereas Java is essentially owned by Oracle through its 2010 acquisition of Sun Microsystems. And Oracle has a less-than-stellar track record of honoring open source licenses.','Stanford just abandoned Java in favor of JavaScript for its intro CS course.',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_id` bigint(20) NOT NULL,
  `user_desc` varchar(255) DEFAULT NULL,
  `user_name_surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'Qaqamzor :)','Seyid-Kanan Bagirov');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-09 22:32:37
