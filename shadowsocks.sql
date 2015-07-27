/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.41-MariaDB : Database - tuan16
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tuan16` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tuan16`;

/*Table structure for table `invite_code` */

DROP TABLE IF EXISTS `invite_code`;

CREATE TABLE `invite_code` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `user` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `invite_code` */

insert  into `invite_code`(`id`,`code`,`user`) values (25,'DcyYjAzMGJhMTI2YjJmNGIyM',1),(26,'iNzNmMDMwYjRmNjdlZWFlYmE',1),(27,'lMDAxMzIzNzNhNzAzMTAwMGZ',1),(28,'DgxN2IzODQ3NDE5YmIzZGUzO',1),(29,'zMDBiMDAyYmNmYjcxZjI5MWR',1),(30,'GNmNGFhZmNmYzIyMTQ5ZDc3Y',1),(31,'Q4ODQzMTczMjk1N2E2MThkNG',1),(32,'hlZmMzYjMzNzgwMDg3NWI1ZD',1),(33,'zYzNGVhNjVhNGU2ZDkwNDFjZ',1),(34,'YxMWQ2ZWJhYWZjNjZjYzA4Nz',1),(35,'jlmYzRiMGYxYmU4ODcxZjVlM',1),(36,'MWI4MWJmODFlMTZjNjc2ZGRi',1),(37,'jAxNTBjNzdiZGEyZWRhMDFhZ',1),(38,'M2M1NzlhOTBjZmRkODk1ZTY0',1),(39,'TczM2ZhOWIyNWYzMzY4OWUyY',1),(40,'M1OTBmMDE0OTAxOTBkYjBlZD',1),(41,'NzMxMWI0ODI3MjRhOWI3YjBi',1),(42,'wZjc2MGE4OWRiMzBhYTcyY2E',1),(43,'jVkZWFlZWFlMTUzOGZiNmM0N',1),(44,'2M2ZjY1YTk2YTdkYTRkMTEwN',1),(45,'zQ5Y2M3MjYwYWU2MmUzYjEzO',1),(46,'yMmMyZjVhMzIzMGFiZmFkZDQ',1),(47,'mNDk1YjZhYjlkY2Y4ZDNiNWM',1),(48,'yOWVjOTlmMGU2NjJjOTE3Nzk',1),(49,'Y1OTkwZTQ0MWYwZmI2ZjNmYW',1),(50,'GZlMjViNGI4NzE0YzAyOWIzN',1);

/*Table structure for table `ss_admin` */

DROP TABLE IF EXISTS `ss_admin`;

CREATE TABLE `ss_admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(128) NOT NULL,
  `email` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ss_admin` */

insert  into `ss_admin`(`uid`,`admin_name`,`email`,`pass`) values (1,'guoke','38196962@qq.com','594c9794cfab349df8c154fc9683d114');

/*Table structure for table `ss_node` */

DROP TABLE IF EXISTS `ss_node`;

CREATE TABLE `ss_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(128) NOT NULL,
  `node_type` int(3) NOT NULL,
  `node_server` varchar(128) NOT NULL,
  `node_method` varchar(64) NOT NULL,
  `node_info` varchar(128) NOT NULL,
  `node_status` varchar(128) NOT NULL,
  `node_order` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `ss_node` */

insert  into `ss_node`(`id`,`node_name`,`node_type`,`node_server`,`node_method`,`node_info`,`node_status`,`node_order`) values (1,'本机节点',0,'172.93.62.161','aes-256-cfb','node描述','可用',0);

/*Table structure for table `ss_reset_pwd` */

DROP TABLE IF EXISTS `ss_reset_pwd`;

CREATE TABLE `ss_reset_pwd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `init_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uni_char` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ss_reset_pwd` */

insert  into `ss_reset_pwd`(`id`,`init_time`,`expire_time`,`user_id`,`uni_char`) values (0,1424448190,1424534590,1,'2MzU5ODFkYzM4MmVkZTM2ZTdjNGNhNDI');

/*Table structure for table `ss_user_admin` */

DROP TABLE IF EXISTS `ss_user_admin`;

CREATE TABLE `ss_user_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ss_user_admin` */

insert  into `ss_user_admin`(`id`,`uid`) values (1,1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(128) NOT NULL,
  `email` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `t` int(11) NOT NULL DEFAULT '0',
  `u` bigint(20) NOT NULL,
  `d` bigint(20) NOT NULL,
  `plan` varchar(2) NOT NULL,
  `transfer_enable` bigint(20) NOT NULL,
  `port` int(11) NOT NULL,
  `switch` tinyint(4) NOT NULL DEFAULT '1',
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `last_get_gift_time` int(11) NOT NULL DEFAULT '0',
  `last_check_in_time` int(11) NOT NULL DEFAULT '0',
  `last_rest_pass_time` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL,
  `invite_num` int(8) NOT NULL,
  `money` decimal(12,2) NOT NULL,
  `ref_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`user_name`,`email`,`pass`,`passwd`,`t`,`u`,`d`,`plan`,`transfer_enable`,`port`,`switch`,`enable`,`type`,`last_get_gift_time`,`last_check_in_time`,`last_rest_pass_time`,`reg_date`,`invite_num`,`money`,`ref_by`) values (1,'testtest','test@test.com','594c9794cfab349df8c154fc9683d114','guoke15tuanss',1437641160,9044837,341548336,'C',10738466816,1600,1,1,7,0,0,0,'2015-07-08 13:11:30',1,'12.00',0),(2,'wangzhenyun','zyq201@hotmail.com','594c9794cfab349df8c154fc9683d114','tuanss15',1437639834,136419120,3896236583,'C',10738466816,1601,1,1,7,0,0,0,'2015-07-08 13:12:16',1,'12.00',0),(3,'guoke','38196962@qq.com','594c9794cfab349df8c154fc9683d114','QQ2991226652',1437639834,361614697,2330437559,'C',536870912000,1602,1,1,7,0,1426981473,0,'2015-03-22 07:37:15',1,'12.00',0),(10,'zhangyongqi','heavenbird@heavenbird.com','594c9794cfab349df8c154fc9683d114','zhangyongqi',1436102257,0,0,'C',10738466816,1111,1,1,7,0,1426981473,0,'2015-03-22 07:37:15',1,'100.00',0);

/* Procedure structure for procedure `pay` */

/*!50003 DROP PROCEDURE IF EXISTS  `pay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `pay`(INOUT username VARCHAR(20),INOUT mymoney DECIMAL,IN iG INT(5),OUT mytraffic DECIMAL(5,2), OUT myenable DECIMAL(5,3),OUT myregdate DATETIME)
BEGIN
    UPDATE tuan16.`user` SET transfer_enable=iG*1073741824,money=mymoney WHERE user_name=username;/* 用户充值*/
    SELECT user_name AS username,money AS mymoney,(u+d)/1073741824 AS mytraffic,transfer_enable/1073741824 AS myenable,FROM_UNIXTIME(reg_date) as myregdate FROM tuan16.`user` WHERE user_name=username;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `登陆密码重置` */

/*!50003 DROP PROCEDURE IF EXISTS  `登陆密码重置` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `登陆密码重置`(INOUT 用户名 VARCHAR(20),out 密码 VARCHAR(50))
BEGIN
    UPDATE tuan16.`user`  SET  pass = '25d55ad283aa400af464c76d713c07ad' WHERE user_name=用户名;
    SELECT user_name,pass FROM tuan16.`user` WHERE user_name=用户名 INTO 用户名,密码;
    END */$$
DELIMITER ;

/*Table structure for table `alluser` */

DROP TABLE IF EXISTS `alluser`;

/*!50001 DROP VIEW IF EXISTS `alluser` */;
/*!50001 DROP TABLE IF EXISTS `alluser` */;

/*!50001 CREATE TABLE  `alluser`(
 `ID` int(11) ,
 `用户名` varchar(128) ,
 `端口` int(11) ,
 `密码` varchar(16) ,
 `邮箱` varchar(32) ,
 `已用量` decimal(24,4) ,
 `总额度` decimal(23,4) ,
 `金额` decimal(12,2) ,
 `注册日期` datetime 
)*/;

/*View structure for view alluser */

/*!50001 DROP TABLE IF EXISTS `alluser` */;
/*!50001 DROP VIEW IF EXISTS `alluser` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `alluser` AS (select `user`.`uid` AS `ID`,`user`.`user_name` AS `用户名`,`user`.`port` AS `端口`,`user`.`passwd` AS `密码`,`user`.`email` AS `邮箱`,((`user`.`u` + `user`.`d`) / 1073741824) AS `已用量`,(`user`.`transfer_enable` / 1073741824) AS `总额度`,`user`.`money` AS `金额`,`user`.`reg_date` AS `注册日期` from `user`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
