/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.5.49 : Database - noel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`noel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `noel`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookId` int(10) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(30) DEFAULT NULL,
  `bookAuthor` varchar(20) DEFAULT NULL,
  `bookPrice` varchar(20) DEFAULT NULL,
  `bookISBN` varchar(20) DEFAULT NULL,
  `bookLoad` varchar(50) DEFAULT NULL,
  `bookImg` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bookId`,`bookName`,`bookAuthor`,`bookPrice`,`bookISBN`,`bookLoad`,`bookImg`) values 
(1,'jsp','leno','300.33','1234567','清华出版社','d:/jpg'),
(2,'java编程思想','brucl','300.33','1234567','清华出版社','d:/jpg'),
(3,'jsp2','leno','300.33','1234567','阳光出版社','d:/jpg'),
(4,'jsp3','leno','300.33','1234567','清华出版社','d:/jpg'),
(5,'jsp4','leno','300.33','1234567','阳光出版社','d:/jpg'),
(6,'jsp4','leno','300.33','1234567','阳光出版社','d:/jpg'),
(25,'leno','1234567','1234567','清华出版社','a','a'),
(26,'brucl','1234567','1234567','清华出版社','a','a'),
(27,'leno','1234567','1234567','阳光出版社','a','a'),
(28,'leno','1234568','1234568','清华出版社','a','a'),
(29,'leno','1234569','1234569','阳光出版社','a','a'),
(30,'leno','1234567','1234567','阳光出版社','a','a'),
(31,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(32,'brucl','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(33,'leno','300.33','1234567','阳光出版社','d:/jpg','d:/jpg'),
(34,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(35,'leno','300.33','1234567','阳光出版社','d:/jpg','d:/jpg'),
(36,'leno','300.33','1234567','阳光出版社','d:/jpg','d:/jpg'),
(37,'1234567','1234567','清华出版社','a','a','a'),
(38,'1234567','1234567','清华出版社','a','a','a'),
(39,'1234567','1234567','阳光出版社','a','a','a'),
(40,'1234568','1234568','清华出版社','a','a','a'),
(41,'1234569','1234569','阳光出版社','a','a','a'),
(42,'1234567','1234567','阳光出版社','a','a','a'),
(43,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(44,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(45,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(46,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(47,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(48,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(49,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(50,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(51,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(52,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(53,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg'),
(54,'leno','300.33','1234567','清华出版社','d:/jpg','d:/jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
