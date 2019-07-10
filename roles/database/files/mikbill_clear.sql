-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: mikbill
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Temporary table structure for view `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!50001 DROP VIEW IF EXISTS `actions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `actions` (
 `user` tinyint NOT NULL,
  `gid` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `unique_id` tinyint NOT NULL,
  `time_on` tinyint NOT NULL,
  `start_time` tinyint NOT NULL,
  `stop_time` tinyint NOT NULL,
  `in_bytes` tinyint NOT NULL,
  `out_bytes` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `server` tinyint NOT NULL,
  `client_ip` tinyint NOT NULL,
  `call_to` tinyint NOT NULL,
  `call_from` tinyint NOT NULL,
  `connect_info` tinyint NOT NULL,
  `terminate_cause` tinyint NOT NULL,
  `last_change` tinyint NOT NULL,
  `before_billing` tinyint NOT NULL,
  `billing_minus` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `addons_alltime24`
--

DROP TABLE IF EXISTS `addons_alltime24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_alltime24` (
  `pay_id` char(64) NOT NULL DEFAULT '',
  `service_id` char(20) NOT NULL,
  `uid` int(16) DEFAULT NULL,
  `trade_point` char(20) NOT NULL,
  `pay_account` char(20) NOT NULL,
  `pay_amount` double(14,2) DEFAULT NULL,
  `receipt_num` char(32) DEFAULT NULL,
  `time_stamp` char(32) NOT NULL,
  `status_code` char(5) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_alltime24`
--

LOCK TABLES `addons_alltime24` WRITE;
/*!40000 ALTER TABLE `addons_alltime24` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_alltime24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_baltica_bank`
--

DROP TABLE IF EXISTS `addons_baltica_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_baltica_bank` (
  `prv_txn` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `account` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_baltica_bank`
--

LOCK TABLES `addons_baltica_bank` WRITE;
/*!40000 ALTER TABLE `addons_baltica_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_baltica_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_blocked_for_payment`
--

DROP TABLE IF EXISTS `addons_blocked_for_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_blocked_for_payment` (
  `uid` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='блокируем пополнение';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_blocked_for_payment`
--

LOCK TABLES `addons_blocked_for_payment` WRITE;
/*!40000 ALTER TABLE `addons_blocked_for_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_blocked_for_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_citypay`
--

DROP TABLE IF EXISTS `addons_citypay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_citypay` (
  `TransactionExt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `TransactionId` bigint(20) unsigned NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount` double(14,2) NOT NULL,
  `TerminalId` int(10) unsigned NOT NULL,
  `status` varchar(6) CHARACTER SET koi8r NOT NULL,
  PRIMARY KEY (`TransactionExt`),
  KEY `time` (`order_date`),
  KEY `uid-time` (`uid`,`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_citypay`
--

LOCK TABLES `addons_citypay` WRITE;
/*!40000 ALTER TABLE `addons_citypay` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_citypay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_compay`
--

DROP TABLE IF EXISTS `addons_compay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_compay` (
  `paymentid` int(14) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `accaunt` varchar(32) CHARACTER SET koi8r NOT NULL,
  `id_payment` bigint(16) unsigned NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sum` double(14,2) NOT NULL,
  `status` char(7) COLLATE koi8r_bin NOT NULL,
  `date` char(14) COLLATE koi8r_bin NOT NULL,
  PRIMARY KEY (`paymentid`),
  KEY `status` (`status`),
  KEY `time` (`order_date`),
  KEY `uid-time` (`accaunt`,`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_compay`
--

LOCK TABLES `addons_compay` WRITE;
/*!40000 ALTER TABLE `addons_compay` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_compay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_copayco`
--

DROP TABLE IF EXISTS `addons_copayco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_copayco` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sCurrency` char(4) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT 'UAH',
  `uid` bigint(16) NOT NULL,
  `nAmount` double(14,2) DEFAULT NULL,
  `sCustom` char(128) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `sStatus` char(20) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date` (`order_date`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_copayco`
--

LOCK TABLES `addons_copayco` WRITE;
/*!40000 ALTER TABLE `addons_copayco` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_copayco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_creditpilot`
--

DROP TABLE IF EXISTS `addons_creditpilot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_creditpilot` (
  `prv_txn` bigint(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_creditpilot`
--

LOCK TABLES `addons_creditpilot` WRITE;
/*!40000 ALTER TABLE `addons_creditpilot` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_creditpilot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_cyberplat`
--

DROP TABLE IF EXISTS `addons_cyberplat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_cyberplat` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `receipt_id` bigint(20) unsigned NOT NULL,
  `amount` double(14,2) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_cyberplat`
--

LOCK TABLES `addons_cyberplat` WRITE;
/*!40000 ALTER TABLE `addons_cyberplat` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_cyberplat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_e_pay_com_ua`
--

DROP TABLE IF EXISTS `addons_e_pay_com_ua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_e_pay_com_ua` (
  `prv_txn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` bigint(20) unsigned NOT NULL,
  `check_time` datetime NOT NULL,
  `txn_date` datetime DEFAULT NULL,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `account` varchar(64) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_e_pay_com_ua`
--

LOCK TABLES `addons_e_pay_com_ua` WRITE;
/*!40000 ALTER TABLE `addons_e_pay_com_ua` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_e_pay_com_ua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_easysoft`
--

DROP TABLE IF EXISTS `addons_easysoft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_easysoft` (
  `paymentid` int(14) NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `uid` bigint(16) unsigned NOT NULL,
  `OrderId` char(64) COLLATE koi8r_bin NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount` double(14,2) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cancel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paymentid`),
  KEY `time` (`order_date`),
  KEY `uid-time` (`uid`,`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_easysoft`
--

LOCK TABLES `addons_easysoft` WRITE;
/*!40000 ALTER TABLE `addons_easysoft` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_easysoft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_ekassir`
--

DROP TABLE IF EXISTS `addons_ekassir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_ekassir` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `txn_id` char(36) NOT NULL,
  `txn_date` datetime DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_ekassir`
--

LOCK TABLES `addons_ekassir` WRITE;
/*!40000 ALTER TABLE `addons_ekassir` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_ekassir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_elecsnet`
--

DROP TABLE IF EXISTS `addons_elecsnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_elecsnet` (
  `prv_txn` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  `type` varchar(5) CHARACTER SET koi8u NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_elecsnet`
--

LOCK TABLES `addons_elecsnet` WRITE;
/*!40000 ALTER TABLE `addons_elecsnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_elecsnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_familny`
--

DROP TABLE IF EXISTS `addons_familny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_familny` (
  `pay_id` char(64) NOT NULL DEFAULT '',
  `service_id` char(20) NOT NULL,
  `uid` int(16) DEFAULT NULL,
  `trade_point` char(20) NOT NULL,
  `pay_account` char(20) NOT NULL,
  `pay_amount` double(14,2) DEFAULT NULL,
  `receipt_num` char(32) DEFAULT NULL,
  `time_stamp` char(32) NOT NULL,
  `status_code` char(5) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_familny`
--

LOCK TABLES `addons_familny` WRITE;
/*!40000 ALTER TABLE `addons_familny` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_familny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_gorod`
--

DROP TABLE IF EXISTS `addons_gorod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_gorod` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `account` char(50) NOT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `payid` char(50) DEFAULT NULL,
  `service` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_gorod`
--

LOCK TABLES `addons_gorod` WRITE;
/*!40000 ALTER TABLE `addons_gorod` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_gorod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_ibox`
--

DROP TABLE IF EXISTS `addons_ibox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_ibox` (
  `prv_txn` bigint(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_ibox`
--

LOCK TABLES `addons_ibox` WRITE;
/*!40000 ALTER TABLE `addons_ibox` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_ibox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_ipay`
--

DROP TABLE IF EXISTS `addons_ipay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_ipay` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `ident` char(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_ipay`
--

LOCK TABLES `addons_ipay` WRITE;
/*!40000 ALTER TABLE `addons_ipay` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_ipay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_kassira_net`
--

DROP TABLE IF EXISTS `addons_kassira_net`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_kassira_net` (
  `order_id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(16) unsigned NOT NULL,
  `terminal_id` int(8) NOT NULL,
  `transaction_id` int(8) NOT NULL,
  `sum` double(14,2) NOT NULL,
  `service_code` varchar(64) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_kassira_net`
--

LOCK TABLES `addons_kassira_net` WRITE;
/*!40000 ALTER TABLE `addons_kassira_net` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_kassira_net` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_liqpay`
--

DROP TABLE IF EXISTS `addons_liqpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_liqpay` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `merchant_id` char(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `currency` char(4) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT NULL,
  `uid` bigint(16) NOT NULL,
  `amount` double(14,2) DEFAULT NULL,
  `description` char(128) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `status` char(20) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `code` char(20) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `transaction_id` char(64) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `pay_way` char(10) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `sender_phone` char(16) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date` (`order_date`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_liqpay`
--

LOCK TABLES `addons_liqpay` WRITE;
/*!40000 ALTER TABLE `addons_liqpay` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_liqpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_mkb`
--

DROP TABLE IF EXISTS `addons_mkb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_mkb` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `txn_id` bigint(20) unsigned NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `txn_date` datetime NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_mkb`
--

LOCK TABLES `addons_mkb` WRITE;
/*!40000 ALTER TABLE `addons_mkb` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_mkb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_nonstop`
--

DROP TABLE IF EXISTS `addons_nonstop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_nonstop` (
  `pay_id` char(64) NOT NULL DEFAULT '',
  `service_id` char(20) NOT NULL,
  `trade_point` char(20) NOT NULL,
  `pay_accaunt` char(20) NOT NULL,
  `pay_amount` double(14,2) DEFAULT NULL,
  `receipt_num` char(32) DEFAULT NULL,
  `time_stamp` char(32) NOT NULL,
  `status_code` char(5) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `date` (`date`),
  KEY `time` (`time_stamp`),
  KEY `uid` (`pay_accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_nonstop`
--

LOCK TABLES `addons_nonstop` WRITE;
/*!40000 ALTER TABLE `addons_nonstop` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_nonstop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_onpay`
--

DROP TABLE IF EXISTS `addons_onpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_onpay` (
  `payid` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `order_amount` float(14,2) NOT NULL,
  `order_currency` char(3) NOT NULL,
  `type` char(5) CHARACTER SET koi8u NOT NULL,
  `comment` varchar(255) NOT NULL,
  `paymentDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `onpay_id` int(32) unsigned NOT NULL,
  `user_phone` varchar(16) NOT NULL,
  PRIMARY KEY (`payid`),
  KEY `paymentDateTime` (`paymentDateTime`,`onpay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_onpay`
--

LOCK TABLES `addons_onpay` WRITE;
/*!40000 ALTER TABLE `addons_onpay` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_onpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_osmp`
--

DROP TABLE IF EXISTS `addons_osmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_osmp` (
  `prv_txn` bigint(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_osmp`
--

LOCK TABLES `addons_osmp` WRITE;
/*!40000 ALTER TABLE `addons_osmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_osmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_pay_api`
--

DROP TABLE IF EXISTS `addons_pay_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_pay_api` (
  `record_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `misc_id` varchar(128) NOT NULL DEFAULT '',
  `category` smallint(6) NOT NULL DEFAULT '0',
  `user_ref` bigint(20) unsigned NOT NULL,
  `amount` decimal(19,4) NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `comment` varchar(128) NOT NULL,
  UNIQUE KEY `id` (`record_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_pay_api`
--

LOCK TABLES `addons_pay_api` WRITE;
/*!40000 ALTER TABLE `addons_pay_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_pay_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_pay_api_category`
--

DROP TABLE IF EXISTS `addons_pay_api_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_pay_api_category` (
  `category` smallint(6) NOT NULL,
  `categoryname` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL DEFAULT '',
  `show_in_final_report` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'отображать в "итоговом отчёте"',
  `order_in_final_report` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Порядок показа в итоговом отчете',
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_pay_api_category`
--

LOCK TABLES `addons_pay_api_category` WRITE;
/*!40000 ALTER TABLE `addons_pay_api_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_pay_api_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_pay_api_status`
--

DROP TABLE IF EXISTS `addons_pay_api_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_pay_api_status` (
  `status` smallint(6) NOT NULL,
  `statusname` varchar(128) NOT NULL,
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_pay_api_status`
--

LOCK TABLES `addons_pay_api_status` WRITE;
/*!40000 ALTER TABLE `addons_pay_api_status` DISABLE KEYS */;
INSERT INTO `addons_pay_api_status` VALUES (0,'Ожидает обработки'),(1,'Зачислен активному пользователю'),(2,'Зачислен замороженному пользователю'),(3,'Зачислен отключенному пользователю'),(4,'Зачислен удаленному пользователю'),(5,'Не обработан (пользователь не найден)');
/*!40000 ALTER TABLE `addons_pay_api_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_payberry`
--

DROP TABLE IF EXISTS `addons_payberry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_payberry` (
  `TransactionExt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `TransactionId` bigint(20) unsigned NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount` double(14,2) NOT NULL,
  `TerminalId` int(10) unsigned NOT NULL,
  `status` varchar(6) CHARACTER SET koi8r NOT NULL,
  PRIMARY KEY (`TransactionExt`),
  KEY `time` (`order_date`),
  KEY `uid-time` (`uid`,`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_payberry`
--

LOCK TABLES `addons_payberry` WRITE;
/*!40000 ALTER TABLE `addons_payberry` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_payberry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_paykeeper`
--

DROP TABLE IF EXISTS `addons_paykeeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_paykeeper` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_sys` int(10) unsigned NOT NULL,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_paykeeper`
--

LOCK TABLES `addons_paykeeper` WRITE;
/*!40000 ALTER TABLE `addons_paykeeper` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_paykeeper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_paymaster`
--

DROP TABLE IF EXISTS `addons_paymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_paymaster` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` bigint(16) unsigned NOT NULL,
  `payment_system` tinyint(1) NOT NULL,
  `amount` double(14,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_paymaster`
--

LOCK TABLES `addons_paymaster` WRITE;
/*!40000 ALTER TABLE `addons_paymaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_paymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_paypal`
--

DROP TABLE IF EXISTS `addons_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_paypal` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `date` datetime NOT NULL COMMENT 'время биллинга',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'статус платежа: 1 - ОК',
  `amount` decimal(9,2) unsigned NOT NULL COMMENT 'сумма',
  `currency` char(3) NOT NULL COMMENT 'тип валюты',
  `payment_date` char(25) NOT NULL COMMENT 'Время платежа в их формате',
  `txn_id` char(17) NOT NULL COMMENT 'ID платежа PayPal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_paypal`
--

LOCK TABLES `addons_paypal` WRITE;
/*!40000 ALTER TABLE `addons_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_pegas`
--

DROP TABLE IF EXISTS `addons_pegas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_pegas` (
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` bigint(20) unsigned DEFAULT NULL,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txn_date` datetime DEFAULT NULL,
  `service_id` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'prv_id',
  `account` varchar(100) NOT NULL,
  `command` enum('check','pay') NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_pegas`
--

LOCK TABLES `addons_pegas` WRITE;
/*!40000 ALTER TABLE `addons_pegas` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_pegas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_platezhka`
--

DROP TABLE IF EXISTS `addons_platezhka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_platezhka` (
  `record_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `terminal_date` datetime DEFAULT NULL,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `account` varchar(50) NOT NULL,
  `amount` double(14,2) DEFAULT NULL,
  `payID` varchar(64) DEFAULT NULL,
  `transactionID` bigint(20) unsigned NOT NULL,
  `terminalID` int(11) DEFAULT NULL,
  `payElementID` int(11) NOT NULL,
  `action` enum('check','pay','cancel') NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_platezhka`
--

LOCK TABLES `addons_platezhka` WRITE;
/*!40000 ALTER TABLE `addons_platezhka` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_platezhka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_platika`
--

DROP TABLE IF EXISTS `addons_platika`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_platika` (
  `prv_txn` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `account` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_platika`
--

LOCK TABLES `addons_platika` WRITE;
/*!40000 ALTER TABLE `addons_platika` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_platika` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_portmone`
--

DROP TABLE IF EXISTS `addons_portmone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_portmone` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `order_time` varchar(30) NOT NULL,
  `txn_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_portmone`
--

LOCK TABLES `addons_portmone` WRITE;
/*!40000 ALTER TABLE `addons_portmone` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_portmone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_privat`
--

DROP TABLE IF EXISTS `addons_privat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_privat` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(16) unsigned NOT NULL,
  `terminal_date` datetime NOT NULL,
  `transaction_id` varchar(20) NOT NULL,
  `sum` double(14,2) NOT NULL,
  `service_code` varchar(16) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_privat`
--

LOCK TABLES `addons_privat` WRITE;
/*!40000 ALTER TABLE `addons_privat` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_privat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_privat24`
--

DROP TABLE IF EXISTS `addons_privat24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_privat24` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `merchant_id` char(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `currency` char(4) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT NULL,
  `uid` bigint(16) NOT NULL,
  `amount` double(14,2) DEFAULT NULL,
  `details` char(128) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `status` char(20) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `transaction_id` char(64) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `pay_way` char(10) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `sender_phone` char(16) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date` (`order_date`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_privat24`
--

LOCK TABLES `addons_privat24` WRITE;
/*!40000 ALTER TABLE `addons_privat24` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_privat24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_privat2nd`
--

DROP TABLE IF EXISTS `addons_privat2nd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_privat2nd` (
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `amount` double(16,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createTime` varchar(30) CHARACTER SET koi8r NOT NULL,
  `privatbank_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_privat2nd`
--

LOCK TABLES `addons_privat2nd` WRITE;
/*!40000 ALTER TABLE `addons_privat2nd` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_privat2nd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_privat_payment_account`
--

DROP TABLE IF EXISTS `addons_privat_payment_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_privat_payment_account` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) NOT NULL,
  `postdate` datetime NOT NULL,
  `customerdate` datetime NOT NULL,
  `amount` double(16,2) NOT NULL,
  `account` varchar(32) NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `purpose` varchar(255) NOT NULL DEFAULT '' COMMENT 'Описание платежа',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_privat_payment_account`
--

LOCK TABLES `addons_privat_payment_account` WRITE;
/*!40000 ALTER TABLE `addons_privat_payment_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_privat_payment_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_pscb`
--

DROP TABLE IF EXISTS `addons_pscb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_pscb` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` bigint(16) unsigned NOT NULL,
  `amount` double(14,2) DEFAULT NULL,
  `state` char(20) NOT NULL DEFAULT 'new',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_pscb`
--

LOCK TABLES `addons_pscb` WRITE;
/*!40000 ALTER TABLE `addons_pscb` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_pscb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_rnkb`
--

DROP TABLE IF EXISTS `addons_rnkb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_rnkb` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `txn_id` char(36) NOT NULL,
  `txn_date` varchar(15) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_rnkb`
--

LOCK TABLES `addons_rnkb` WRITE;
/*!40000 ALTER TABLE `addons_rnkb` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_rnkb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_rnkb_site`
--

DROP TABLE IF EXISTS `addons_rnkb_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_rnkb_site` (
  `order_id` int(11) unsigned NOT NULL,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `account` char(50) NOT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `order_time` datetime NOT NULL,
  `txn_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_rnkb_site`
--

LOCK TABLES `addons_rnkb_site` WRITE;
/*!40000 ALTER TABLE `addons_rnkb_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_rnkb_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_robokassa`
--

DROP TABLE IF EXISTS `addons_robokassa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_robokassa` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` int(14) NOT NULL,
  `amount` double(14,2) NOT NULL,
  `status` int(1) unsigned NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_robokassa`
--

LOCK TABLES `addons_robokassa` WRITE;
/*!40000 ALTER TABLE `addons_robokassa` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_robokassa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_sberbank_russia`
--

DROP TABLE IF EXISTS `addons_sberbank_russia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_sberbank_russia` (
  `reg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `account` varchar(128) NOT NULL,
  `amount` double(16,2) NOT NULL DEFAULT '0.00',
  `pay_id` varchar(50) NOT NULL DEFAULT '',
  `agent_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pay_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_sberbank_russia`
--

LOCK TABLES `addons_sberbank_russia` WRITE;
/*!40000 ALTER TABLE `addons_sberbank_russia` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_sberbank_russia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_sberbankru`
--

DROP TABLE IF EXISTS `addons_sberbankru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_sberbankru` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `txn_id` char(36) NOT NULL,
  `txn_date` datetime DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_sberbankru`
--

LOCK TABLES `addons_sberbankru` WRITE;
/*!40000 ALTER TABLE `addons_sberbankru` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_sberbankru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_sberbankru2826`
--

DROP TABLE IF EXISTS `addons_sberbankru2826`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_sberbankru2826` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(15) unsigned DEFAULT NULL,
  `amount` decimal(6,2) unsigned DEFAULT NULL,
  `txn_id` char(36) NOT NULL,
  `txn_date` datetime DEFAULT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_sberbankru2826`
--

LOCK TABLES `addons_sberbankru2826` WRITE;
/*!40000 ALTER TABLE `addons_sberbankru2826` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_sberbankru2826` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_sberbankru_mrch`
--

DROP TABLE IF EXISTS `addons_sberbankru_mrch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_sberbankru_mrch` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `order_time` varchar(30) NOT NULL,
  `txn_id` varchar(40) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_sberbankru_mrch`
--

LOCK TABLES `addons_sberbankru_mrch` WRITE;
/*!40000 ALTER TABLE `addons_sberbankru_mrch` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_sberbankru_mrch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_sotas`
--

DROP TABLE IF EXISTS `addons_sotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_sotas` (
  `prv_txn` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  `type` varchar(5) CHARACTER SET koi8u NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_sotas`
--

LOCK TABLES `addons_sotas` WRITE;
/*!40000 ALTER TABLE `addons_sotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_sotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_stripe`
--

DROP TABLE IF EXISTS `addons_stripe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_stripe` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `amount` decimal(16,2) unsigned NOT NULL,
  `txn_date` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COMMENT='Детальные платежи stripe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_stripe`
--

LOCK TABLES `addons_stripe` WRITE;
/*!40000 ALTER TABLE `addons_stripe` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_stripe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_tyme`
--

DROP TABLE IF EXISTS `addons_tyme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_tyme` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `txn_id` char(36) NOT NULL,
  `txn_date` datetime DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_tyme`
--

LOCK TABLES `addons_tyme` WRITE;
/*!40000 ALTER TABLE `addons_tyme` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_tyme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_ukrpays`
--

DROP TABLE IF EXISTS `addons_ukrpays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_ukrpays` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_ups` int(11) NOT NULL,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `txn_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_ukrpays`
--

LOCK TABLES `addons_ukrpays` WRITE;
/*!40000 ALTER TABLE `addons_ukrpays` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_ukrpays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_uniteller`
--

DROP TABLE IF EXISTS `addons_uniteller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_uniteller` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `order_time` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_uniteller`
--

LOCK TABLES `addons_uniteller` WRITE;
/*!40000 ALTER TABLE `addons_uniteller` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_uniteller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_ural_bank`
--

DROP TABLE IF EXISTS `addons_ural_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_ural_bank` (
  `prv_txn` bigint(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_osmp` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_ural_bank`
--

LOCK TABLES `addons_ural_bank` WRITE;
/*!40000 ALTER TABLE `addons_ural_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_ural_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_vpru`
--

DROP TABLE IF EXISTS `addons_vpru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_vpru` (
  `prv_txn` bigint(32) unsigned NOT NULL AUTO_INCREMENT,
  `txn_id` char(64) NOT NULL DEFAULT '',
  `check_time` datetime NOT NULL,
  `time_from_vpru` char(20) DEFAULT NULL,
  `accaunt` char(20) NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`accaunt`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_vpru`
--

LOCK TABLES `addons_vpru` WRITE;
/*!40000 ALTER TABLE `addons_vpru` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_vpru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_wqiwiru`
--

DROP TABLE IF EXISTS `addons_wqiwiru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_wqiwiru` (
  `prv_txn` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `check_time` datetime NOT NULL,
  `uid` bigint(16) unsigned NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `time_stamp` datetime NOT NULL,
  PRIMARY KEY (`prv_txn`),
  KEY `time` (`check_time`),
  KEY `timstamp` (`time_stamp`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_wqiwiru`
--

LOCK TABLES `addons_wqiwiru` WRITE;
/*!40000 ALTER TABLE `addons_wqiwiru` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_wqiwiru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_xplat`
--

DROP TABLE IF EXISTS `addons_xplat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_xplat` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `txn_id` char(36) NOT NULL,
  `txn_date` varchar(15) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_xplat`
--

LOCK TABLES `addons_xplat` WRITE;
/*!40000 ALTER TABLE `addons_xplat` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_xplat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_yandex`
--

DROP TABLE IF EXISTS `addons_yandex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_yandex` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `amount` decimal(18,2) unsigned DEFAULT NULL,
  `server_time` datetime DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_yandex`
--

LOCK TABLES `addons_yandex` WRITE;
/*!40000 ALTER TABLE `addons_yandex` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_yandex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_yapk`
--

DROP TABLE IF EXISTS `addons_yapk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons_yapk` (
  `order_id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `account` varchar(64) NOT NULL DEFAULT '',
  `txn_id` bigint(20) unsigned NOT NULL,
  `sum` double(14,2) DEFAULT NULL,
  `txn_date` datetime NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_yapk`
--

LOCK TABLES `addons_yapk` WRITE;
/*!40000 ALTER TABLE `addons_yapk` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons_yapk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_packets`
--

DROP TABLE IF EXISTS `archived_packets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_packets` (
  `gid` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_packets`
--

LOCK TABLES `archived_packets` WRITE;
/*!40000 ALTER TABLE `archived_packets` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_packets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_staff`
--

DROP TABLE IF EXISTS `archived_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_staff` (
  `stuffid` tinyint(6) unsigned NOT NULL,
  UNIQUE KEY `stuffid` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_staff`
--

LOCK TABLES `archived_staff` WRITE;
/*!40000 ALTER TABLE `archived_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_cards_log`
--

DROP TABLE IF EXISTS `bugh_cards_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_cards_log` (
  `cardslogid` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `card` char(64) NOT NULL,
  `cards_id` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `before_billing` double(20,6) NOT NULL,
  `summa` double(20,6) NOT NULL,
  PRIMARY KEY (`cardslogid`),
  KEY `card-index` (`card`),
  KEY `date` (`date`),
  KEY `uid` (`uid`),
  KEY `uid-date` (`uid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_cards_log`
--

LOCK TABLES `bugh_cards_log` WRITE;
/*!40000 ALTER TABLE `bugh_cards_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugh_cards_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_final_report`
--

DROP TABLE IF EXISTS `bugh_final_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_final_report` (
  `bughtypeid` smallint(5) unsigned NOT NULL,
  `bughtypename` char(255) NOT NULL,
  `not_sum` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_final_report`
--

LOCK TABLES `bugh_final_report` WRITE;
/*!40000 ALTER TABLE `bugh_final_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugh_final_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_perevod_stat`
--

DROP TABLE IF EXISTS `bugh_perevod_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_perevod_stat` (
  `bugh_perevod_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `perevod_from` bigint(16) unsigned NOT NULL,
  `perevod_to` bigint(16) unsigned NOT NULL,
  `perevod_comment` char(20) DEFAULT NULL,
  `before_perevod` double(20,6) NOT NULL,
  `summa_perevoda` double(20,6) NOT NULL,
  `comisiya` double(20,6) NOT NULL,
  PRIMARY KEY (`bugh_perevod_id`),
  KEY `date` (`date`),
  KEY `uid` (`perevod_from`),
  KEY `uid2` (`perevod_to`),
  KEY `uid2-date` (`perevod_to`,`date`),
  KEY `uid-date` (`perevod_from`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COMMENT='bugh peredov stat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_perevod_stat`
--

LOCK TABLES `bugh_perevod_stat` WRITE;
/*!40000 ALTER TABLE `bugh_perevod_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugh_perevod_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_plategi_stat`
--

DROP TABLE IF EXISTS `bugh_plategi_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_plategi_stat` (
  `plategid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `who` tinyint(6) unsigned DEFAULT NULL,
  `bughtypeid` smallint(10) unsigned NOT NULL,
  `before_billing` double(20,6) NOT NULL,
  `summa` double(20,6) NOT NULL,
  `comment` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`plategid`),
  KEY `bughtypeid` (`bughtypeid`),
  KEY `date` (`date`),
  KEY `date_type` (`date`,`bughtypeid`),
  KEY `summa` (`date`,`bughtypeid`,`summa`),
  KEY `summa-2` (`summa`),
  KEY `uid` (`uid`),
  KEY `uid-date` (`uid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_plategi_stat`
--

LOCK TABLES `bugh_plategi_stat` WRITE;
/*!40000 ALTER TABLE `bugh_plategi_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugh_plategi_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_plategi_type`
--

DROP TABLE IF EXISTS `bugh_plategi_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_plategi_type` (
  `bughtypeid` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` char(128) NOT NULL,
  `sign` char(1) NOT NULL DEFAULT '' COMMENT 'знак +/-',
  `fictitious` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'не изменяет депозит',
  `deposit_action` char(1) NOT NULL DEFAULT '?' COMMENT 'действие над балансом',
  `deposit_action_by_user` char(1) NOT NULL DEFAULT '' COMMENT 'действие с депозитом абонентом',
  PRIMARY KEY (`bughtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_plategi_type`
--

LOCK TABLES `bugh_plategi_type` WRITE;
/*!40000 ALTER TABLE `bugh_plategi_type` DISABLE KEYS */;
INSERT INTO `bugh_plategi_type` VALUES (1,'Абонентская плата за текущий месяц','+',0,'-',''),(2,'Абонентская плата за текущий день','+',0,'-',''),(5,'Пополнение счета','+',0,'+','+'),(6,'Ошибка ввода','-',0,'-',''),(7,'Снятие со счета','-',0,'-',''),(9,'Оплата аренды внешнего IP адреса','+',0,'-',''),(10,'Перерасчет','/',0,'/',''),(15,'Премия За Общественнополезные работы','+',0,'+',''),(16,'ПОДАРОК!','+',0,'+',''),(17,'Акция','+',0,'+',''),(18,'Кредит','',0,'?',''),(20,'Блокировка интернета в связи с окончанием средств','',1,'0',''),(21,'Остаточная абонплата за месяц','',0,'-',''),(22,'Остаточная Абонентская плата за текущий месяц','',0,'-',''),(23,'Изменение пакета с нового месяца','',0,'?',''),(24,'Возврат из за перебоев сети','+',0,'+',''),(25,'Ремонт','-',0,'-',''),(26,'Изменение тарифного пакета','',0,'?',''),(27,'Подключение','-',0,'-',''),(28,'Пополнение карточкой','+',0,'+','+'),(29,'% за пользование кредитом','',0,'-',''),(30,'Создание второй учетной записи','-',0,'-',''),(31,'Пополнение MobyAZS(24NonStop)','+',0,'+','+'),(32,'Услуга Real IP','',0,'-',''),(33,'Активация Акционного тарифа','',0,'?',''),(34,'Услуга \"Турбо\"','',0,'?',''),(35,'Активация услуги Кредит','',0,'?',''),(36,'Активация услуги Кредит с %','',0,'?',''),(37,'Пополнение OSMP','+',0,'+','+'),(38,'Пополнение Liqpay','+',0,'+','+'),(39,'Оплата заморозки','',0,'-','+'),(40,'Пополнение Yandex деньги','+',0,'+','+'),(41,'Пополнение WebMoney','+',0,'+','+'),(42,'Отключение по задолженности','',1,'0',''),(43,'Удаление по неактивности','',1,'0',''),(44,'Пополнение CoPayCo','+',0,'+','+'),(45,'Безналичный платеж','+',0,'+','+'),(46,'Активация учетки абонента','',0,'-',''),(47,'Пополнение МТС-терминал','+',0,'+','+'),(48,'Оплата Разморозки','',0,'-',''),(49,'Возврат Абонплаты по заморозке','+',0,'+',''),(50,'Оплата Dr.Web','',0,'-',''),(51,'Абонентская плата заморозки','+',0,'-',''),(52,'Пополнение EasySoft','+',0,'+','+'),(53,'Пополнение OnePay','+',0,'+','+'),(54,'Пополнение Privat24','+',0,'+','+'),(55,'Пополнение City-Pay','+',0,'+','+'),(56,'Пополнение Elecsnet','+',0,'+','+'),(57,'Пополнение w.QiWi.ru','+',0,'+','+'),(58,'Пополнение ComPay','+',0,'+','+'),(59,'Пополнение RoboKassa','+',0,'+','+'),(60,'Пополнение терминал Приват','+',0,'+','+'),(61,'Пополнение терминал Кассира.НЕТ','+',0,'+','+'),(62,'API','/',0,'/','+'),(63,'Пополнение терминал Платёжка (Банк нац. кредит)','+',0,'+','+'),(64,'Плата за покупку устройства','',0,'-',''),(65,'Плата за аренду устройства','+',0,'-',''),(66,'Пополнение терминал Pegas','+',0,'+','+'),(67,'Пополнение iBox','+',0,'+','+'),(68,'Пополнение Приват (v.2)','+',0,'+','+'),(69,'Пополнение Балтика Банк','+',0,'+','+'),(70,'Пополнение Приват Р/С','+',0,'+','+'),(71,'Пополнение E-Pay.com.ua','+',0,'+','+'),(72,'Перевод средств абоненту','-',0,'-',''),(73,'Перевод средств от абонента','+',0,'+',''),(74,'Комиссия за перевод средств абоненту','-',0,'-',''),(75,'Возврат абонплаты при смене тарифа','+',0,'+',''),(76,'Пополнение СберБанк России (ООО Биллинговые Технологии)','+',0,'+','+'),(77,'Пополнение ПСКБ OOS','+',0,'+','+'),(78,'Дополнительные услуги - пополнение абонента','+',0,'+','-'),(79,'Дополнительные услуги - списание с абонента','-',0,'-','-'),(80,'Пополнение PayMaster','+',0,'+','+'),(81,'Пополнение КиберПлат','+',0,'+','+'),(82,'Пополнение МКБ','+',0,'+','+'),(83,'Пополнение Сотас','+',0,'+','+'),(84,'Пополнение Платика','+',0,'+','+'),(85,'Пополнение КредитПилот','+',0,'+','+'),(86,'Пополнение ЯПК','+',0,'+','+'),(87,'Пополнение Stripe','+',0,'+','+'),(88,'Пополнение eKassir','+',0,'+','+'),(89,'Пополнение PayPal','+',0,'+','+'),(90,'Пополнение PayKeeper','+',0,'+','+'),(91,'Пополнение UkrPays','+',0,'+','+'),(92,'Пополнение СберБанк России (2)','+',0,'+','+'),(93,'Бонус','+',0,'+','+'),(94,'Пополнение Xplat','+',0,'+','+'),(95,'Пополнение РНКБ','+',0,'+','+'),(96,'Пополнение PayBerry','+',0,'+','+'),(97,'Пополнение Оплата.com','+',0,'+','+'),(98,'Пополнение СберБанк2826','+',0,'+','+'),(99,'Корректировка','+',0,'+','+'),(100,'Перевод личных средств','/',0,'/','+'),(101,'Пополнение TYME','+',0,'+','+'),(102,'Пополнение Uniteller','+',0,'+','+'),(103,'Прокладка кабеля','-',0,'-',''),(104,'Пеня','-',0,'-',''),(105,'Отмена Безналичного платежа','-',0,'-',''),(106,'Пополнение Portmone','+',0,'+','+'),(107,'Пополнение Банк Фамильный','+',0,'+','+'),(108,'Пополнение iPay','+',0,'+','+'),(109,'Система Город','+',0,'+','+'),(110,'Пополнение Сайт РНКБ','+',0,'+','+'),(111,'Пополнение Все платежи (vp.ru)','+',0,'+','+'),(112,'Пополнение 24 AllTime','+',0,'+','+'),(113,'Пополнение SberBank.ru Мерчант','+',0,'+','+');
/*!40000 ALTER TABLE `bugh_plategi_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_stat_balance`
--

DROP TABLE IF EXISTS `bugh_stat_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_stat_balance` (
  `uid` bigint(16) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `deposit` double(20,6) NOT NULL,
  `credit` double(20,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='История балансов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_stat_balance`
--

LOCK TABLES `bugh_stat_balance` WRITE;
/*!40000 ALTER TABLE `bugh_stat_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugh_stat_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_uslugi_stat`
--

DROP TABLE IF EXISTS `bugh_uslugi_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_uslugi_stat` (
  `uslid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL,
  `usluga` int(5) unsigned NOT NULL DEFAULT '0',
  `date_start` datetime NOT NULL,
  `date_stop` datetime DEFAULT NULL,
  `active` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `before_billing` double(20,6) DEFAULT NULL,
  `before_billing_credit` double(20,6) DEFAULT NULL,
  `credit` double(20,6) DEFAULT NULL,
  `deposit` double(20,6) DEFAULT NULL,
  `summa` double(20,6) DEFAULT NULL,
  PRIMARY KEY (`uslid`),
  KEY `date-start` (`date_start`),
  KEY `date-stop` (`date_stop`),
  KEY `uid` (`uid`),
  KEY `uid-date` (`uid`,`date_start`,`date_stop`),
  KEY `uid-date-start` (`uslid`,`date_start`),
  KEY `uid-date-stop` (`uid`,`date_stop`),
  KEY `uid-usluga` (`uid`,`usluga`,`date_start`,`date_stop`),
  KEY `usl-date-start` (`usluga`,`date_start`),
  KEY `usl-date-stop` (`usluga`,`date_stop`),
  KEY `usluga` (`usluga`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=76;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_uslugi_stat`
--

LOCK TABLES `bugh_uslugi_stat` WRITE;
/*!40000 ALTER TABLE `bugh_uslugi_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugh_uslugi_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugh_uslugi_type`
--

DROP TABLE IF EXISTS `bugh_uslugi_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugh_uslugi_type` (
  `usluga` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `usluganame` varchar(64) NOT NULL,
  PRIMARY KEY (`usluga`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=26;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugh_uslugi_type`
--

LOCK TABLES `bugh_uslugi_type` WRITE;
/*!40000 ALTER TABLE `bugh_uslugi_type` DISABLE KEYS */;
INSERT INTO `bugh_uslugi_type` VALUES (1,'Услуга Кредит'),(2,'Услуга Кредит с %'),(3,'Услуга \"Турбо\"'),(5,'Услуга \"Заморозка\"');
/*!40000 ALTER TABLE `bugh_uslugi_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinet_config`
--

DROP TABLE IF EXISTS `cabinet_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabinet_config` (
  `parent` set('gui','company_info','locales','locales_options','system') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `key` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `value` char(128) NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinet_config`
--

LOCK TABLES `cabinet_config` WRITE;
/*!40000 ALTER TABLE `cabinet_config` DISABLE KEYS */;
INSERT INTO `cabinet_config` VALUES ('gui','user_hide_uid','0'),('gui','user_registration_after_on','0'),('system','user_registration_after_pass','2'),('system','user_registration_after_text','Ваш логин: %s\nВаш пароль: %s\nАдрес: http://isp.cabinet.net'),('system','user_registration_after_uid','0'),('system','user_registration_after_user','1'),('gui','user_registration_hide','1'),('system','user_registration_packet_group','-1'),('gui','user_registration_type','1'),('gui','user_show_inn','0'),('gui','user_vaucher_length','18'),('gui','user_vaucher_type','4');
/*!40000 ALTER TABLE `cabinet_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinet_news`
--

DROP TABLE IF EXISTS `cabinet_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabinet_news` (
  `newsid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(254) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `creation_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `start_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiration_date` timestamp NULL DEFAULT NULL,
  `settlementid` int(10) unsigned NOT NULL DEFAULT '0',
  `stuffid` tinyint(3) unsigned NOT NULL,
  `edited_by_stuffid` tinyint(3) unsigned DEFAULT NULL,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`newsid`),
  KEY `dse` (`display`,`start_date`,`expiration_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinet_news`
--

LOCK TABLES `cabinet_news` WRITE;
/*!40000 ALTER TABLE `cabinet_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `cabinet_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinet_registration`
--

DROP TABLE IF EXISTS `cabinet_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabinet_registration` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `sms_id` int(11) unsigned DEFAULT NULL COMMENT 'ID из таблицы sms_logs',
  `otp` int(8) unsigned zerofill NOT NULL COMMENT 'Временный код',
  `otp_activated` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'использован ли OTP: bool',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата и время создания кода',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinet_registration`
--

LOCK TABLES `cabinet_registration` WRITE;
/*!40000 ALTER TABLE `cabinet_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `cabinet_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelog` (
  `change_number` bigint(20) NOT NULL,
  `delta_set` varchar(10) NOT NULL,
  `start_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `complete_dt` timestamp NULL DEFAULT NULL,
  `applied_by` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`change_number`,`delta_set`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` VALUES (1,'Main','2016-09-11 15:02:45','2016-09-11 15:02:45','dbdeploy','1-2-0-6.sql'),(2,'Main','2016-09-11 15:02:45','2016-09-11 15:02:45','dbdeploy','2-2-0-6-2.sql'),(3,'Main','2016-09-11 15:02:45','2016-09-11 15:02:45','dbdeploy','3-2-0-6-3.sql'),(4,'Main','2016-09-11 15:02:46','2016-09-11 15:02:46','dbdeploy','4-2-1-0.sql'),(5,'Main','2016-09-11 15:02:46','2016-09-11 15:02:46','dbdeploy','5-2-1-0.sql'),(6,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','6-2-1-0.sql'),(7,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','7-2-1-0.sql'),(8,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','8-2-1-1.sql'),(9,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','9-2-1-2.sql'),(10,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','10-2-1-3.sql'),(11,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','11-2-2-0.sql'),(12,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','12-2-2-1.sql'),(13,'Main','2016-09-11 15:02:47','2016-09-11 15:02:47','dbdeploy','13-2-2-2.sql'),(14,'Main','2016-09-11 15:02:48','2016-09-11 15:02:48','dbdeploy','14-2-4-0.sql'),(15,'Main','2016-09-11 15:02:48','2016-09-11 15:02:48','dbdeploy','15-2-4-1.sql'),(16,'Main','2016-09-11 15:02:49','2016-09-11 15:02:49','dbdeploy','16-2-5-0.sql'),(17,'Main','2016-09-11 15:02:49','2016-09-11 15:02:49','dbdeploy','17-2-5-1.sql'),(18,'Main','2016-09-11 15:02:49','2016-09-11 15:02:49','dbdeploy','18-2-6-0.sql'),(19,'Main','2016-09-11 15:02:49','2016-09-11 15:02:49','dbdeploy','19-2-7-0.sql'),(20,'Main','2016-09-11 15:02:51','2016-09-11 15:02:51','dbdeploy','20-2-7-4.sql'),(21,'Main','2016-09-11 15:02:52','2016-09-11 15:02:52','dbdeploy','21-2-7-5.sql'),(22,'Main','2016-09-11 15:02:52','2016-09-11 15:02:52','dbdeploy','22-2-7-6.sql'),(23,'Main','2016-09-11 15:02:52','2016-09-11 15:02:52','dbdeploy','23-2-7-8.sql'),(24,'Main','2016-09-11 15:02:53','2016-09-11 15:02:53','dbdeploy','24-2-7-12.sql'),(25,'Main','2016-09-11 15:02:53','2016-09-11 15:02:53','dbdeploy','25-2.7.12.sql'),(26,'Main','2016-09-11 15:02:53','2016-09-11 15:02:53','dbdeploy','26-2.7.13.sql'),(27,'Main','2016-09-11 15:02:53','2016-09-11 15:02:53','dbdeploy','27-2.7.14.sql'),(28,'Main','2016-09-11 15:02:55','2016-09-11 15:02:55','dbdeploy','28-2.7.15.sql'),(29,'Main','2016-09-11 15:02:55','2016-09-11 15:02:55','dbdeploy','29-2.7.19.sql'),(30,'Main','2016-09-11 15:02:55','2016-09-11 15:02:55','dbdeploy','30-2.7.20.sql'),(31,'Main','2016-09-11 15:02:55','2016-09-11 15:02:55','dbdeploy','31-2.7.22.sql'),(32,'Main','2016-09-11 15:02:56','2016-09-11 15:02:56','dbdeploy','32-2.7.23.sql'),(33,'Main','2016-09-11 15:02:56','2016-09-11 15:02:56','dbdeploy','33-2.7.24.sql'),(34,'Main','2016-09-11 15:02:56','2016-09-11 15:02:56','dbdeploy','34-2.7.25.sql'),(35,'Main','2016-09-11 15:02:56','2016-09-11 15:02:56','dbdeploy','35-2.8.3.sql'),(36,'Main','2016-09-11 15:02:56','2016-09-11 15:02:56','dbdeploy','36-2.8.4.sql'),(37,'Main','2016-09-11 15:02:56','2016-09-11 15:02:56','dbdeploy','37-2.8.7.sql'),(38,'Main','2016-09-11 15:02:57','2016-09-11 15:02:57','dbdeploy','38-2.8.8.sql'),(39,'Main','2016-09-11 15:02:57','2016-09-11 15:02:57','dbdeploy','39-2.8.9.sql'),(40,'Main','2016-09-11 15:02:58','2016-09-11 15:02:58','dbdeploy','40-2.8.11.sql'),(41,'Main','2016-09-11 15:02:58','2016-09-11 15:02:58','dbdeploy','41-2.8.12.sql'),(42,'Main','2016-09-11 15:02:58','2016-09-11 15:02:58','dbdeploy','42-2.8.13.sql'),(43,'Main','2016-09-11 15:02:58','2016-09-11 15:02:58','dbdeploy','43-2.8.14.sql'),(44,'Main','2016-09-11 15:02:58','2016-09-11 15:02:58','dbdeploy','44-2.8.15.1.sql'),(45,'Main','2016-09-11 15:02:59','2016-09-11 15:02:59','dbdeploy','45-2.8.15.2.sql'),(46,'Main','2016-09-11 15:02:59','2016-09-11 15:02:59','dbdeploy','46-2.8.15.3.sql'),(47,'Main','2016-09-11 15:02:59','2016-09-11 15:02:59','dbdeploy','47-2.8.15.4.sql'),(48,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','48-2.8.16.sql'),(49,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','49-2.8.16.sql'),(50,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','50-2.8.16.sql'),(51,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','51-2.8.16.sql'),(52,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','52-2.8.16.sql'),(53,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','53-2.8.16.sql'),(54,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','54-2.8.17.sql'),(55,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','55-2.8.17.sql'),(56,'Main','2016-09-11 15:03:00','2016-09-11 15:03:00','dbdeploy','56-2.8.17.sql'),(57,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','57-2.8.17.sql'),(58,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','58-2.8.17.sql'),(59,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','59-2.8.17.sql'),(60,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','60-2.8.17.sql'),(61,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','61-2.8.18.sql'),(62,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','62-2.8.18.sql'),(63,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','63-2.8.18.sql'),(64,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','64-2.8.18.sql'),(65,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','65-2.8.18.sql'),(66,'Main','2016-09-11 15:03:01','2016-09-11 15:03:01','dbdeploy','66-2.8.18.sql'),(67,'Main','2016-09-11 15:03:02','2016-09-11 15:03:02','dbdeploy','67-2.8.18.sql'),(68,'Main','2016-09-11 15:03:02','2016-09-11 15:03:02','dbdeploy','68-2.8.18.sql'),(69,'Main','2016-09-11 15:03:02','2016-09-11 15:03:02','dbdeploy','69-2.8.19.sql'),(70,'Main','2016-09-11 15:03:03','2016-09-11 15:03:03','dbdeploy','70-2.8.19.sql'),(71,'Main','2016-09-11 15:03:03','2016-09-11 15:03:03','dbdeploy','71-2.8.19.sql'),(72,'Main','2016-09-11 15:03:03','2016-09-11 15:03:03','dbdeploy','72-2.8.19.sql'),(73,'Main','2016-09-11 15:03:03','2016-09-11 15:03:03','dbdeploy','73-2.8.20.sql'),(74,'Main','2016-09-11 15:03:03','2016-09-11 15:03:03','dbdeploy','74-2.8.20.sql'),(75,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','75-2.8.20.sql'),(76,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','76-2.8.20.sql'),(77,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','77-2.8.20.sql'),(78,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','78-2.8.20.sql'),(79,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','79-2.8.20.sql'),(80,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','80-2.8.20.sql'),(81,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','81-2.8.20.sql'),(82,'Main','2016-09-11 15:03:04','2016-09-11 15:03:04','dbdeploy','82-2.8.20.sql'),(83,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','83-2.8.20.sql'),(84,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','84-2.8.20.sql'),(85,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','85-2.8.20.sql'),(86,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','86-2.8.20.sql'),(87,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','87-2.8.20.sql'),(88,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','88-2.8.20.sql'),(89,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','89-2.8.20.sql'),(90,'Main','2016-09-11 15:03:05','2016-09-11 15:03:05','dbdeploy','90-2.8.20.sql'),(91,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','91-2.8.20.sql'),(92,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','92-2.8.20.sql'),(93,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','93-2.9.1.sql'),(94,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','94-2.9.1.sql'),(95,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','95-2.9.1.sql'),(96,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','96-2.9.1.sql'),(97,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','97-2.9.1.sql'),(98,'Main','2016-09-11 15:03:06','2016-09-11 15:03:06','dbdeploy','98-2.9.2.sql'),(99,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','99-2.9.2.sql'),(100,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','100-2.9.3.sql'),(101,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','101-2.10.1.sql'),(102,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','102-2.10.1.sql'),(103,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','103-2.10.1.sql'),(104,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','104-2.10.1.sql'),(105,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','105-2.10.2.sql'),(106,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','106-2.10.2.sql'),(107,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','107-2.10.2.sql'),(108,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','108-2.10.2.sql'),(109,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','109-2.10.2.sql'),(110,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','110-2.10.3.sql'),(111,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','111-2.10.4.sql'),(112,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','112-2.10.4.sql'),(113,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','113-2.10.4.sql'),(114,'Main','2016-09-11 15:03:07','2016-09-11 15:03:07','dbdeploy','114-2.10.4.sql'),(115,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','115-2.10.4.sql'),(116,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','116-2.10.5.sql'),(117,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','117-2.10.5.sql'),(118,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','118-2.10.5.sql'),(119,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','119-2.10.6.sql'),(120,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','120-2.10.7.sql'),(121,'Main','2016-09-11 15:03:08','2016-09-11 15:03:08','dbdeploy','121-2.10.7.sql'),(122,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','122-2.10.8.sql'),(123,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','123-2.10.8.sql'),(124,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','124-2.10.8.sql'),(125,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','125-2.10.8.sql'),(126,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','126-2.10.8.sql'),(127,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','127-2.10.8.sql'),(128,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','128-2.10.8.sql'),(129,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','129-2.10.8.sql'),(130,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','130-2.10.8.sql'),(131,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','131-2.10.8.sql'),(132,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','132-2.10.8.sql'),(133,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','133-2.10.8.sql'),(134,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','134-2.10.8.sql'),(135,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','135-2.10.8.sql'),(136,'Main','2017-01-16 18:07:48','2017-01-16 18:07:48','dbdeploy','136-2.10.8.sql'),(137,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','137-2.10.8.sql'),(138,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','138-2.10.8.sql'),(139,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','139-2.10.9.sql'),(140,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','140-2.11.1.sql'),(141,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','141-2.11.2.sql'),(142,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','142-2.11.3.sql'),(143,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','143-2.11.4.sql'),(144,'Main','2017-01-16 18:07:49','2017-01-16 18:07:49','dbdeploy','144-2.11.5.sql');
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_fields`
--

DROP TABLE IF EXISTS `dev_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_fields` (
  `devid` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `value` varchar(64) NOT NULL,
  KEY `devid` (`devid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_fields`
--

LOCK TABLES `dev_fields` WRITE;
/*!40000 ALTER TABLE `dev_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `dev_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_types`
--

DROP TABLE IF EXISTS `dev_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_types` (
  `devtypeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `devtypename` varchar(64) NOT NULL,
  `dev_ip` tinyint(4) NOT NULL DEFAULT '0',
  `dev_mac` tinyint(4) NOT NULL DEFAULT '0',
  `device_sn` tinyint(4) NOT NULL DEFAULT '0',
  `dev_sectorid` tinyint(4) NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `portal` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'признак портала: 0 - нет, 1 - IPTVPORTAL, 2 - Stalker, 3 - olltv',
  `portal_login` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Логин на портале',
  `portal_password` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Пароль на портале',
  `default_cost` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `default_rent` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `default_owner` tinyint(4) NOT NULL DEFAULT '0',
  `deny_to_change_owner_settings` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`devtypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_types`
--

LOCK TABLES `dev_types` WRITE;
/*!40000 ALTER TABLE `dev_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `dev_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dev_user`
--

DROP TABLE IF EXISTS `dev_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_user` (
  `devid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `devtypeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`devid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev_user`
--

LOCK TABLES `dev_user` WRITE;
/*!40000 ALTER TABLE `dev_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `dev_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errorcodes`
--

DROP TABLE IF EXISTS `errorcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errorcodes` (
  `code` char(4) NOT NULL,
  `text` blob NOT NULL,
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=73 COMMENT='Коды ошибок VPN';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errorcodes`
--

LOCK TABLES `errorcodes` WRITE;
/*!40000 ALTER TABLE `errorcodes` DISABLE KEYS */;
INSERT INTO `errorcodes` VALUES ('600','������� �������� �� ���������'),('601','�������� ���������� �����.'),('602','���� ��� ������.'),('603','����� ����������� ���������� ������� ���.'),('604','������ ������ �������.'),('605','�� ������� ���������� ��������� �����.'),('606','���� �� ���������.'),('607','������������ �������.'),('608','���������� �� ����������.'),('609','��������� ��� ���������� �� ����������.'),('610','������� ����� �����.'),('611','������� ����������.'),('612','������� �� �������.'),('613','������� ����� ����� ������.'),('614','������������ ������.'),('615','���� �� ������.'),('616','����������� ������ ���� ���������.'),('617','���������� ����� ��� ���������� ��� ����������.'),('618','���� �� ������.'),('619','���� ��������.'),('620','����������� �������� �����.'),('621','�� ������� ������� ���� ���������� �����.'),('622','�� ������� ��������� ���� ���������� �����.'),('623','�� ������� ����� ������ � ���������� �����.'),('624','�� ������� �������� ���� ���������� �����.'),('625','� ����� ���������� ����� ������� �������� ������.'),('626','�� ������� ��������� ������.'),('627','�� ������� ����� ��������.'),('628','���� ��� ��������.'),('629','���� ��� �������� ��������� �����������.'),('630','���� ��� �������� ��-�� ����������� ����.'),('631','���� ��� �������� �������������.'),('632','�������� ������ ���������.'),('633','���� ��� ������������ ���� �� ��������������� ��� ���������� ����������� � ����.'),('634','�� ������� ���������������� ��������� � ��������� ����.'),('635','����������� ������.'),('636','� ����� ���������� �������� ����������.'),('637','�� ������� ������������� ������.'),('638','������ ���������.'),('639','����������� ���� ����������.'),('640','������ NetBIOS.'),('641','������� �� ������� �������� NetBIOS-�������, ����������� ��� ��������� ����� �������.'),('642','���� �� ���� NetBIOS ��� ���������������� � ��������� ����.'),('643','������ �������� �������� �������.'),('644','����������� ������� ��������� ���������� �� �����.'),('645','���������� ������ ��� ��������.'),('646','���� � ��� ����� ��� ��� ������������ � ������ ������� ������� �� ��������.'),('647','������� ������ ���������.'),('648','���� �������� ������ �����.'),('649','������� ������ �� ��������������� ���������� ����������� � ����.'),('650','������ ���������� ������� �� ��������.'),('651','����� (��� ���� ���������� �����) �������� �� ������.'),('652','������ ���������� �� ���������.'),('653','����������� ���������� ������ �� ������ � ��������������� ������� NF-�����.'),('654','������� ��� ������ � ��������������� ������� INF-����� ��������� �� ������, ������� �� ��� ���������.'),('655','������ \"���������\" �� ������ � ������ INF-����� ����������.'),('656','������ \"defaultoff\" � ��������������� ������� INF-����� �������� ����������� ������.'),('657','�� ������� ������� INF-���� ����������.'),('658','��� ���������� � INF-����� ����� ������� ������� �����.'),('659','INI-���� ��������� �� ����������� ����������.'),('660','INF-���� ���������� �� �������� �������� �� �������.'),('661','� INF-����� ����������� �������.'),('662','������� ��������� � �������, �� ������������� � INF-�����.'),('663','INI-���� ��������� �� ����������� ����������.'),('664','�� ������� �������� ������.'),('665','���� �� �������� �� ��������� ������ � ����.'),('666','����� (��� ������ ���������� �����) �� ��������.'),('667','�� ������� ��������� INI-����.'),('668','����� ��������.'),('669','�������� �������� � INI-�����.'),('670','�� ������� ��������� �������� ������� INI-�����.'),('671','�� ������� ��������� ��� ���������� �� INI-�����.'),('672','�� ������� ��������� ��� ���������� �� INI-�����.'),('673','�� ������� ��������� ��� ������������� �� INI-�����.'),('674','�� ������� ��������� ������������ �������� �������� ��� ���������� �� INI-�����.'),('675','�� ������� ��������� ������������ ������� �������� ���������� �� INI-�����.'),('676','����� ������.'),('677','������ ������ ������ ���� ������� ���������.'),('678','��� �������.'),('679','��� ������� �������.'),('680','����������� �����.'),('681','������ ����������.'),('682','ERROR WRITING SECTIONNAME'),('683','ERROR WRITING DEVICETYPE'),('684','ERROR WRITING DEVICETYPE'),('685','ERROR WRITING MAXCONNECTBPS'),('686','ERROR WRITING MAXCONNECTBPS'),('687','ERROR WRITING USAGE'),('688','ERROR WRITING DEFAULTOFF'),('689','ERROR READING DEFAULTOFF'),('690','ERROR EMPTY INI FILE'),('691','��� ������������ ��� ������ �� �������� �������.'),('692','���������� ���� ����� ��� ��������������� � ���� ����������.'),('693','ERROR NOT BINARY MACRO'),('694','ERROR DCB NOT FOUND'),('695','ERROR STATE MACHINES NOT STARTED'),('696','ERROR STATE MACHINES ALREADY STARTED'),('697','ERROR PARTIAL RESPONSE LOOPING'),('698','�������� ������ ��������� ������� � INF-�����.'),('699','������ ���������� ������ ������������ ������.'),('700','����������� ������� � INF-����� ����� ������� ������� �����.'),('701','���������� ������� �� �������� ������/��������, �� ���������������� ��������� COM-�����.'),('702','������� ����������� ����� �� ����������.'),('703','ERROR INTERACTIVE MODE'),('704','ERROR BAD CALLBACK NUMBER'),('705','ERROR INVALID AUTH STATE'),('706','ERROR WRITING INITBPS'),('707','��������� ����������� X.25.'),('708','������ ������� ������ ����������.'),('709','������ ��� ����� ������ � ������.'),('710','������ ������������ ������ ����� ��� ������ � �������.'),('711','���� ������������� ���������� ���������� �����������. ��������� ������ �������.'),('712','������������� ���������� �����. ��������� ��������� ������ � �����������.'),('713','��� ��������� ����� ISDN.'),('714','��� ��������� ISDN-������� ��� ���������� ������.'),('715','��-�� ������� �������� ���������� ����� ��������� ������� ����� ������.'),('716','IP-������������ ������ ���������� ������� ���������� ��� �������������.'),('717','��� ��������� IP-������� � ����������� ���� IP-������� ������ ���������� �������.'),('718','��������� ����� �������� PPP.'),('719','����� PPP ������� ��������� �����������.'),('720','��� ����������� ���������� ���������� PPP.'),('721','��������� ���� PPP �� ��������.'),('722','������������ ����� PPP.'),('723','���������� �����, ������� ������� � �������, ������� �������.'),('724','IPX-�������� �� ����� ���� ����������� ��� ���������� ��������� ������� �� ������ �����, ��������� ��������� �������� IPX-���������������.'),('725','IPX-�������� �� ����� ���� ����������� ��� ���������� �������� �������, ��������� IPX-������������� �� ����������.'),('726','IPX-�������� �� ����� ���� ����������� ��� ���������� ��������� ������� �� ����� ��� ����� ����� ������������.'),('727','��� ������� � ?TCPCFG.DLL?.'),('728','�� ������� ����� IP-�������, ����������� � ������� ���������� �������.'),('729','���� �� ����� ���������� �������� IP, ������������ �������� SLIP ����������. '),('730','����������� ���������� �� ���������.'),('731','�������� �� ��������.'),('732','�� ������� ���������� ������������ PPP.'),('733','�� ������� ���������� ����������� �������� PPP ��� ������� �������� ���������.'),('734','�������� ���������� PPP-������ ��� �������.'),('735','����������� ����� ��� ��������� ��������.'),('736','��������� ��������� �������� ������ ��������� ����������.'),('737','���������� ��������� �� ����.'),('738','������ �� �������� �����.'),('739','��������� ������ �� ����� ������������ ������������� ������ Windows NT.'),('740','���������� TAPI, ����������� ��� ���������� �������, �� ���������������� ��� ����������� � ��������.'),('741','��������� ��������� �� ������������ ����������.'),('742','��������� ������ �� ������������ ����������.'),('743','��������� ������ ������� ����������.'),('744','������� �� ����� ������������ ����� ������� IPX, ����������� �� ��������� ��������. ��������� ������ �������.'),('745','ERROR_INVALID_SMM'),('746','ERROR_SMM_UNINITIALIZED'),('747','ERROR_NO_MAC_FOR_PORT'),('748','ERROR_SMM_TIMEOUT'),('749','ERROR_BAD_PHONE_NUMBER'),('750','ERROR_WRONG_MODULE'),('751','����� ��������� ������ �������� ������������ �������.  ��������� ������ ��������� 18 ������:  ����� (�� 0 �� 9), T, P, W, (, ), -, @ � ������.'),('752','��� ��������� ����� �������� ���� ���������� �������������� ������.'),('753','����������� �� ����� ���� ���������, ��������� ��� ������� ������������������ ���������������.'),('754','������� �� ������� ����� �������������� �����.'),('755','������� �� ����� ��������� �������������� ������, ��������� ��� ����������� ����� ��������� ��� ����������� ��������� ������������.'),('756','��� ����������� ��� ���������.'),('757','������ ���������� ������� �� ����� ����������� �������������. �������������� ���������� ����� ����� � ������� �������.'),('758','��� ����� ����������� ��� �������� ����� ������ � ����������� ��������� (ICS).'),('759','��������� ������ ��� ��������� ���������� ������ ������� � ����������� ���������.'),('760','��������� ������ ��� ���������� �������������.'),('761','��������� ������ ��� ���������� ������ ������� � ����������� ���������. '),('762','��� ��������� ������ ������� � ��������� ���� ��������� ������. '),('763','�� ������� ��������� ����� ������ � ����������� � ���������.  ����� ��� ���� ����������� �� ��������� ���� ����� ������������ ���������. '),('764','����������� �����-���� �� �����������. '),('765','�� ������� ��������� ����� ������ � ����������� � ���������.  ����������� �� ��������� ���� ��� ��������� �� ������������� IP-������, ������� �������������� �������������. '),('766','�� ������� ����� ����������. ������������, ������� ���������� ���� �������� L2TP ����� IPSec, ��������� ��������� �� ���������� ����������� ����������. '),('767','�� ������� ��������� ����� ������ � ����������� � ���������. ����������� ��������� ����, ��������� � �������� �������, ��������� �� ������������� ����� ������ IP-������.  �������� ��������� ��������� ����������� � ��������� ����. '),('768','������ ���������� ������ ��� ������� �����������. '),('769','��������� ���������� �����������. '),('770','��������� ��������� ������ ������� �����������. '),('771','������� ������������ �� �������, ��������� ���� �����������. '),('772','���������� ���������� ���������� ������������ � ����� �������������� ������. '),('773','������� ������������ �� ������� ��-�� ��������� ������ ����������. '),('774','������� ������������ �� �������   ��-�� ��������� ������.'),('775','����������� ���� ����������� ��������� �����������. '),('776','������������ �� �������, ��������� ��������� ��������� ����� � ����� ?�� ����������?. '),('777','������� ����������� �� �������, ��������� �� ��������� ���������� �� �������� ����� ��� ������ ���������� �����. '),('778','���������� ��������� ������������ �������. '),('779','��� ���������� ��������� ������� � ������� ����� ����������� ����������� �����-�����.'),('780','������� ������� ����������� ��� ����� �����������. '),('781','��� ����������� ��������� ����������, �������������� ���������� �� ������. ������� ������ ?�������������? ��� ���������� � ����� ��������� �� �������, ������ ����� ������. '),('782','����� ������ � ����������� ��������� (ICS) � ���������� ����������� � ��������� (ICF) �� ����� ���� ��������, ��� ��� �� ���� ���������� �������� ������ ������������� � ���������� �������. ����� �������� ICS ��� ICF, ������� ��������� ������ ������������� � ���������� �������. �������������� �������� � ������ ������������� � ���������� �������, ICS � ICF ��. � ������ ������� � ���������. '),('783','�� ������� ��������� ����� ������ � ����������� � ���������. ����������� ��������� ����, ��������� � �������� �������, ���� �� ����������, ���� ���������. ���������, ��� ��������� ������� �������.  '),('784','���������� ������������ ��� ����������� �� ����� ��������, ��������� ��� ���������� ��� ������������, �������� �� ������������ �����-�����. ��� ������������� ��� �� ����� �������� �������� ������������ ��� �� ��� ��������� �����-�����.'),('785','���������� ������������ ��� ����������� �� ����� ��������, ��������� ��� ��������� �� ������������� �����-�����. �������� �������� ����� �����������, ����� �������������� ������ �����-�����.'),('786','������� L2TP-����������� �� �������, ��������� ����������� ���������� ���������� �� ����� ���������� ��� �������� �����������. '),('787','������� L2TP-����������� �� �������, ��������� �� ������� ��������� ����������� ���������� ���������� �� ������ ������������. '),('788','������� L2TP-����������� �� �������, ��������� �� ������ ������������ �� ������� ����������� ��������� � ��������� �����������. '),('789','������� L2TP-����������� �� ������� ��-�� ������, ������������ �� ������ ������������ �� ����� ������������ � ��������� �����������. '),('790','������� L2TP-����������� �� ������� ��-�� ������ �������� ������������. '),('791','������� L2TP-����������� �� �������, ��������� �� ������� �������� ������������. '),('792','������� L2TP-����������� �� �������, ��������� ������� ����� ������������ ������ ������������. '),('793','������� L2TP-����������� �� ������� ��-�� ������ ������������ ������ ������������. '),('794','������������� RADIUS-������� ?������������� ��������? (Framed Protocol) ��� ����� ������������ ����� �������� �� PPP. '),('795','������������� RADIUS-������� ?��� �������? (Tunnel Type) ��� ����� ������������ ����� ������������ ��������. '),('796','������������� RADIUS-������� ?��� ������? (Service Type) ��� ����� ������������ �� ����� �������� �� ?�������������? (Framed), �� ?������������� ��� �������� �������? (Callback Framed). '),('797','�� ������� ������������, ��������� ����� �� ������ ��� �����. ������� ������ ?�������������? ��� ���������� � ����� ��������� �� �������, ������ ����� ������. '),('798','�� ������� ����� ����������, ������� ��� �� ����������� � ���������� ����������� �������� ����������� (EAP). '),('799','�� ������� �������� ����� ������ � ����������� ��������� (ICS) ��-�� ��������� IP-������� � ����. ICS �������, ����� ���� ��� �������� �� ������������� ������ 192.168.0.1. ���������, ��� ������� ������ ������ � ���� �� ���������� ����� 192.168.0.1. '),('800','�� ������� ������� VPN-�����������.  VPN-������ ����������, ��� ��������� ������������ ��� ������� ����������� ��������� �������. '),('801','������ ����������� ��������� �� �������� ������������� �������, ������ ������� Windows �� ������� ��������� ����������� ��������� �����������, ������������� ��������.'),('802','��������� ����� �� ����������. ���������, ��� ��� ����� ��������� ��������� � ������ ����� � �������.'),('803','��������� PEAP, ���������� � ����� ?cookie? ������, �� ��������� � ������� ���������� ������.'),('804','������������� PEAP, ���������� � ����� ?cookie? ������, �� ��������� � ������� �������������� ������.'),('805','���������� ���������� ��������� ����������� �� ����� ����� � ������� ������ ��� ��� ���������� ������� ������ ������������.'),('900','������������� �� ��������. '),('901','��������� ��� ���������. '),('902','��������� ������������� ��������� ���������� ��������������. '),('903','��������� ���������� ������ �� ���������� �� �������. '),('904','��������� � ����� ������ ��� ��������������� �� ��������������. '),('905','��������� � ����� ������ �� ��������������� �� ��������������. '),('906','��������� ��� �� ���������. '),('907','������ � ��������� ���������� ������������������. '),('908','��������� ���������, � ������� ��� ������ �������.'),('909','������� ������ ���������� �� ���� �����������.'),('910','��������� ��� ������������. '),('911','���������� ���������� ������������� �� ���� ���������� ��� ��������. '),('912','������������ ������������ ����������. ���������� ������ ���������, ������������ � ���� �� ���������� �� ��������� ��������������. '),('913','������ ���������� ������� ��������� ������������ ����� ����, ����������������� ������ ��� ���������������. '),('914','������������� ������� �� ���������� ��������� ������������ ����� ����, ������� �������������� ������ ��� �������� ���������� �������. '),('915','���������� ��������� � ���� ������ ��� ���������� � � ��������� ������ ���������. '),('916','��������� ��������� � ����������� ���������. '),('917','�������� �������� ����������� ��� ��������� ��������� �����. '),('918','����������� ��������� ��� ������������� ��������� �������� �����������. '),('919','��������� ��������� �������� ����������� �������� �����������, ��������� ���� ����������� �������� �������� �����������. ����� ���� ���������. '),('920','��������� ������� ������ �� ����� ���� ��� ���������� �������. '),('921','���� �������� ������� ������ ������������ �����. '),('922','��������� ������� ������ ���������. '),('923','���� � ��� ����� ��� ������� ���������� ������������ �� ��������. '),('924','������ � ���������� ���� ��������, ��������� ��� ������������ ��� ������ �������� ������������� ��� ����� ������. '),('925','����������� �����, ����������� ��� ������������� � �������������� ����� ���������� ������ �� ����������. '),('926','���� ��� �������� ��������������� ��-�� ���������� ����������. '),('927','��������� � ������ ������ ����������. '),('928','������ ������ �� ���������� ��������� � ���������������� ���������. '),('929','��������� ��� �������� ���������������. '),('930','������ �������� ����������� �� ������� �� ������� � �������� ����������� � ���������� �����. '),('931','���������� ����������� ���������� ����� ������ ��� ������������� � �������������� �����������. '),('932','��������� ������ ������� ����������� ��� ����� ������������. '),('933','���������� ����������� ��������� ����� �������������� LAN-�����������. '),('934','���������� ����������� ��������� ����� �������������� ����������� ������ �� ����������. '),('935','���������� ����������� ��������� ����� �������������� �������� ���������� �������. '),('936','���� ��� �������� ��-�� �������� �������� (BAP). '),('937','�������� ����������� �� ����� ��������� ���� ������� �� �����������, ��������� ������������ ������ ����������� ������ �� ����. '),('938','� ���� ���� ��� RADIUS-��������. '),('939','�� RADIUS-������� �������� ����������� ������� ������������ ������. ���������, ��� ��������� ������ (� ������ ��������) ��� RADIUS-������� ���������� ���������. '),('940','� ��� ��� ���������� �� ����������� � ��� �����. '),('941','� ��� ��� ���������� �� ����������� � �������������� �������� ���� ����������. '),('942','� ��� ��� ���������� �� ����������� � �������������� ���������� ��������� �������� �����������. '),('943','��� ����� ������������ ��������� �������� BAP. '),('944','� ������ ����� ����������� ����������� ����� ����������. '),('945','����������� ������������ �������������� ������������ � ������� ���������������. '),('946','������ ���������� ������� ���������� ���������� ������ ������� ������� ������������, ������� �� ����� ��������� �������������.  ��� ���������� ������� ��������� XXXX. '),('948','��������� ��� ���������� �� ���� ��������������. '),('949','�� RADIUS-������� �������� ������� ������������ �����. '),('950','�� RADIUS-������� ������� ����� � ������������ ��������. '),('951','�� RADIUS-������� �� �������� ������� ������ � EAP-����������. '),('952','�� RADIUS-������� ������� ����� � ������������ ������ ��� �����. '),('953','�� RADIUS-������� ������� ����� � ��������� ������������ �����. '),('954','�� RADIUS-������� ������� ������������ �����. '),('955','������������ �� ������������� ������������� �� RADIUS-�������.');
/*!40000 ALTER TABLE `errorcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `event_logs`
--

DROP TABLE IF EXISTS `event_logs`;
/*!50001 DROP VIEW IF EXISTS `event_logs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `event_logs` (
 `evid` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `use_queue` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `evname` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `event_system`
--

DROP TABLE IF EXISTS `event_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_system` (
  `evid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `time` int(10) unsigned NOT NULL COMMENT 'unixtime',
  `evtpid` int(10) unsigned NOT NULL COMMENT 'event type id',
  `queue` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'use queue 0/1',
  `uid` bigint(16) unsigned NOT NULL DEFAULT '0' COMMENT 'user id',
  PRIMARY KEY (`evid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MB event system log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_system`
--

LOCK TABLES `event_system` WRITE;
/*!40000 ALTER TABLE `event_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_type` (
  `evtpid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'event type id',
  `evname` varchar(64) NOT NULL COMMENT 'event name',
  PRIMARY KEY (`evtpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='MB event type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_type`
--

LOCK TABLES `event_type` WRITE;
/*!40000 ALTER TABLE `event_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `holiday_date` char(5) NOT NULL DEFAULT '',
  `comment` char(64) NOT NULL,
  PRIMARY KEY (`holiday_date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_free`
--

DROP TABLE IF EXISTS `hotspot_free`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_free` (
  `hsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `address` varchar(15) CHARACTER SET koi8r NOT NULL,
  `mac_address` varchar(17) CHARACTER SET koi8r NOT NULL,
  `host_name` varchar(64) CHARACTER SET koi8r NOT NULL,
  PRIMARY KEY (`hsid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8u COMMENT='Free HotSpot Stat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_free`
--

LOCK TABLES `hotspot_free` WRITE;
/*!40000 ALTER TABLE `hotspot_free` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotspot_free` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_free_radacct`
--

DROP TABLE IF EXISTS `hotspot_free_radacct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_free_radacct` (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL,
  `acctuniqueid` varchar(32) NOT NULL,
  `username` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `gid` smallint(5) unsigned DEFAULT NULL,
  `nasipaddress` varchar(15) NOT NULL,
  `nasportid` varchar(15) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL,
  `callingstationid` varchar(50) NOT NULL,
  `acctterminatecause` varchar(32) NOT NULL,
  `framedipaddress` varchar(15) NOT NULL,
  `last_change` int(10) unsigned NOT NULL DEFAULT '0',
  `before_billing` double(20,6) NOT NULL,
  `billing_minus` double(20,6) NOT NULL,
  PRIMARY KEY (`radacctid`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `acctsessiontime` (`acctsessiontime`),
  KEY `acctstarttime` (`acctstarttime`),
  KEY `acctstoptime` (`acctstoptime`),
  KEY `acctuniqueid` (`acctuniqueid`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `framed-terminate` (`framedipaddress`,`acctterminatecause`),
  KEY `mrtggid` (`gid`,`acctterminatecause`),
  KEY `mrtguid` (`uid`,`acctterminatecause`),
  KEY `nasipaddress` (`nasipaddress`),
  KEY `Online_index` (`acctterminatecause`),
  KEY `ses-user-nas` (`acctsessionid`,`username`,`nasipaddress`),
  KEY `time_user` (`username`,`acctsessionid`,`acctsessiontime`,`acctstarttime`,`acctstoptime`),
  KEY `uid` (`uid`,`gid`),
  KEY `uniq-user-nas` (`acctuniqueid`,`username`,`nasipaddress`),
  KEY `user_uid` (`uid`),
  KEY `username` (`username`),
  KEY `user-start-time` (`username`,`acctstarttime`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_free_radacct`
--

LOCK TABLES `hotspot_free_radacct` WRITE;
/*!40000 ALTER TABLE `hotspot_free_radacct` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotspot_free_radacct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotspot_free_users`
--

DROP TABLE IF EXISTS `hotspot_free_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotspot_free_users` (
  `user` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `password` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '*',
  `crypt_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` bigint(16) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(5) unsigned NOT NULL DEFAULT '1',
  `deposit` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit` double(20,2) NOT NULL DEFAULT '0.00',
  `fio` char(128) NOT NULL,
  `phone` char(128) NOT NULL,
  `address` char(128) NOT NULL,
  `prim` char(254) NOT NULL,
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  `blocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `total_time` int(10) NOT NULL DEFAULT '0',
  `total_traffic` bigint(15) NOT NULL DEFAULT '0',
  `total_money` double(20,6) NOT NULL DEFAULT '0.000000',
  `last_connection` date NOT NULL DEFAULT '0000-00-00',
  `framed_ip` char(16) NOT NULL,
  `framed_mask` char(16) NOT NULL DEFAULT '255.255.255.255',
  `callback_number` char(64) NOT NULL,
  `local_ip` char(16) NOT NULL DEFAULT '10.0.',
  `local_mac` char(22) DEFAULT NULL,
  `sectorid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `create_mail` smallint(2) unsigned NOT NULL DEFAULT '1',
  `user_installed` smallint(2) unsigned NOT NULL DEFAULT '1',
  `speed_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_burst` int(10) unsigned NOT NULL DEFAULT '0',
  `gidd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link_to_ip_mac` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `email` char(64) DEFAULT NULL,
  `passportserie` char(16) DEFAULT NULL,
  `passportpropiska` char(128) DEFAULT NULL,
  `passportvoenkomat` char(128) DEFAULT NULL,
  `passportgdevidan` char(128) DEFAULT NULL,
  `inn` char(64) DEFAULT NULL,
  `real_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `real_price` double(20,6) NOT NULL DEFAULT '0.000000',
  `real_ipfree` tinyint(3) NOT NULL DEFAULT '0',
  `dogovor` tinyint(2) NOT NULL DEFAULT '0',
  `credit_procent` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `mob_tel` char(32) DEFAULT NULL,
  `sms_tel` char(32) DEFAULT NULL,
  `date_birth` date DEFAULT '0000-00-00',
  `date_birth_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `languarddisable` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `credit_unlimited` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dontshowspeed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `numdogovor` char(16) DEFAULT NULL,
  `app` char(4) NOT NULL,
  `switchport` int(2) unsigned DEFAULT '0',
  `houseid` int(14) unsigned NOT NULL,
  `swid` int(10) unsigned DEFAULT '0',
  `use_router` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_model` char(16) NOT NULL,
  `router_login` char(16) NOT NULL,
  `router_pass` char(16) NOT NULL,
  `router_ssid` char(16) NOT NULL,
  `router_wep_pass` char(16) NOT NULL,
  `router_we_saled` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_use_dual` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_add_date` char(10) NOT NULL DEFAULT '00/00/0000',
  `router_serial` char(16) NOT NULL,
  `router_port` char(16) NOT NULL DEFAULT '8080',
  `credit_stop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_abonka` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `mac_reg` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uname` (`user`),
  KEY `gid` (`gid`),
  KEY `gidd` (`gidd`),
  KEY `mrtgusname` (`user`,`uid`),
  KEY `sectorid` (`sectorid`),
  KEY `swid` (`swid`),
  KEY `swid-port` (`swid`,`switchport`),
  KEY `swport` (`switchport`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotspot_free_users`
--

LOCK TABLES `hotspot_free_users` WRITE;
/*!40000 ALTER TABLE `hotspot_free_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotspot_free_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `inetonline`
--

DROP TABLE IF EXISTS `inetonline`;
/*!50001 DROP VIEW IF EXISTS `inetonline`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inetonline` (
 `gid` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `port` tinyint NOT NULL,
  `server` tinyint NOT NULL,
  `ip` tinyint NOT NULL,
  `call_from` tinyint NOT NULL,
  `fstart_time` tinyint NOT NULL,
  `time_on` tinyint NOT NULL,
  `in_bytes` tinyint NOT NULL,
  `out_bytes` tinyint NOT NULL,
  `billing_minus` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inetonlinenew`
--

DROP TABLE IF EXISTS `inetonlinenew`;
/*!50001 DROP VIEW IF EXISTS `inetonlinenew`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inetonlinenew` (
 `radacctid` tinyint NOT NULL,
  `acctsessionid` tinyint NOT NULL,
  `acctuniqueid` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `gid` tinyint NOT NULL,
  `nasipaddress` tinyint NOT NULL,
  `nasportid` tinyint NOT NULL,
  `acctstarttime` tinyint NOT NULL,
  `acctstoptime` tinyint NOT NULL,
  `acctsessiontime` tinyint NOT NULL,
  `acctinputoctets` tinyint NOT NULL,
  `acctoutputoctets` tinyint NOT NULL,
  `calledstationid` tinyint NOT NULL,
  `callingstationid` tinyint NOT NULL,
  `acctterminatecause` tinyint NOT NULL,
  `framedipaddress` tinyint NOT NULL,
  `last_change` tinyint NOT NULL,
  `before_billing` tinyint NOT NULL,
  `billing_minus` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inetonlinewithspeed`
--

DROP TABLE IF EXISTS `inetonlinewithspeed`;
/*!50001 DROP VIEW IF EXISTS `inetonlinewithspeed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inetonlinewithspeed` (
 `radacctid` tinyint NOT NULL,
  `acctsessionid` tinyint NOT NULL,
  `acctuniqueid` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `gid` tinyint NOT NULL,
  `nasipaddress` tinyint NOT NULL,
  `nasportid` tinyint NOT NULL,
  `acctstarttime` tinyint NOT NULL,
  `acctstoptime` tinyint NOT NULL,
  `acctsessiontime` tinyint NOT NULL,
  `acctinputoctets` tinyint NOT NULL,
  `acctoutputoctets` tinyint NOT NULL,
  `calledstationid` tinyint NOT NULL,
  `callingstationid` tinyint NOT NULL,
  `acctterminatecause` tinyint NOT NULL,
  `framedipaddress` tinyint NOT NULL,
  `last_change` tinyint NOT NULL,
  `before_billing` tinyint NOT NULL,
  `billing_minus` tinyint NOT NULL,
  `user_speed_in` tinyint NOT NULL,
  `user_speed_out` tinyint NOT NULL,
  `use_radius_shaper` tinyint NOT NULL,
  `tarif_speed_in` tinyint NOT NULL,
  `tarif_speed_out` tinyint NOT NULL,
  `tarif_shaper_prio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `inetspeedlist`
--

DROP TABLE IF EXISTS `inetspeedlist`;
/*!50001 DROP VIEW IF EXISTS `inetspeedlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inetspeedlist` (
 `username` tinyint NOT NULL,
  `framedipaddress` tinyint NOT NULL,
  `local_ip` tinyint NOT NULL,
  `user_speed_in` tinyint NOT NULL,
  `user_speed_out` tinyint NOT NULL,
  `tarif_speed_in` tinyint NOT NULL,
  `tarif_speed_out` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ip_lease`
--

DROP TABLE IF EXISTS `ip_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_lease` (
  `ip` char(7) COLLATE koi8r_bin NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_lease`
--

LOCK TABLES `ip_lease` WRITE;
/*!40000 ALTER TABLE `ip_lease` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_pools`
--

DROP TABLE IF EXISTS `ip_pools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_pools` (
  `poolid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poolname` char(128) NOT NULL,
  `usegw` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `poolmask` tinyint(2) unsigned NOT NULL DEFAULT '24',
  `poolgw` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`poolid`),
  KEY `poolname` (`poolname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=133;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_pools`
--

LOCK TABLES `ip_pools` WRITE;
/*!40000 ALTER TABLE `ip_pools` DISABLE KEYS */;
INSERT INTO `ip_pools` VALUES (1,'Без денег',0,24,''),(2,'Main ip-Pool',0,24,'');
/*!40000 ALTER TABLE `ip_pools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ip_pools_counts`
--

DROP TABLE IF EXISTS `ip_pools_counts`;
/*!50001 DROP VIEW IF EXISTS `ip_pools_counts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ip_pools_counts` (
 `poolname` tinyint NOT NULL,
  `poolid` tinyint NOT NULL,
  `ipfree` tinyint NOT NULL,
  `ipuse` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ip_pools_packets`
--

DROP TABLE IF EXISTS `ip_pools_packets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_pools_packets` (
  `ippoolpacketid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL,
  `poolid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ippoolpacketid`),
  KEY `gid` (`gid`),
  KEY `gid-poolid` (`poolid`,`gid`),
  KEY `poolid` (`poolid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_pools_packets`
--

LOCK TABLES `ip_pools_packets` WRITE;
/*!40000 ALTER TABLE `ip_pools_packets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_pools_packets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_pools_pool`
--

DROP TABLE IF EXISTS `ip_pools_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_pools_pool` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `poolip` char(15) NOT NULL DEFAULT '',
  `poolid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`poolid`),
  KEY `ip` (`poolip`),
  KEY `ip-id` (`poolip`,`poolid`),
  KEY `idpoolid` (`id`,`poolid`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_pools_pool`
--

LOCK TABLES `ip_pools_pool` WRITE;
/*!40000 ALTER TABLE `ip_pools_pool` DISABLE KEYS */;
INSERT INTO `ip_pools_pool` VALUES (1,'172.31.255.1',1),(10,'172.31.255.10',1),(100,'172.31.255.100',1),(101,'172.31.255.101',1),(102,'172.31.255.102',1),(103,'172.31.255.103',1),(104,'172.31.255.104',1),(105,'172.31.255.105',1),(106,'172.31.255.106',1),(107,'172.31.255.107',1),(108,'172.31.255.108',1),(109,'172.31.255.109',1),(11,'172.31.255.11',1),(110,'172.31.255.110',1),(111,'172.31.255.111',1),(112,'172.31.255.112',1),(113,'172.31.255.113',1),(114,'172.31.255.114',1),(115,'172.31.255.115',1),(116,'172.31.255.116',1),(117,'172.31.255.117',1),(118,'172.31.255.118',1),(119,'172.31.255.119',1),(12,'172.31.255.12',1),(120,'172.31.255.120',1),(121,'172.31.255.121',1),(122,'172.31.255.122',1),(123,'172.31.255.123',1),(124,'172.31.255.124',1),(125,'172.31.255.125',1),(126,'172.31.255.126',1),(127,'172.31.255.127',1),(128,'172.31.255.128',1),(129,'172.31.255.129',1),(13,'172.31.255.13',1),(130,'172.31.255.130',1),(131,'172.31.255.131',1),(132,'172.31.255.132',1),(133,'172.31.255.133',1),(134,'172.31.255.134',1),(135,'172.31.255.135',1),(136,'172.31.255.136',1),(137,'172.31.255.137',1),(138,'172.31.255.138',1),(139,'172.31.255.139',1),(14,'172.31.255.14',1),(140,'172.31.255.140',1),(141,'172.31.255.141',1),(142,'172.31.255.142',1),(143,'172.31.255.143',1),(144,'172.31.255.144',1),(145,'172.31.255.145',1),(146,'172.31.255.146',1),(147,'172.31.255.147',1),(148,'172.31.255.148',1),(149,'172.31.255.149',1),(15,'172.31.255.15',1),(150,'172.31.255.150',1),(151,'172.31.255.151',1),(152,'172.31.255.152',1),(153,'172.31.255.153',1),(154,'172.31.255.154',1),(155,'172.31.255.155',1),(156,'172.31.255.156',1),(157,'172.31.255.157',1),(158,'172.31.255.158',1),(159,'172.31.255.159',1),(16,'172.31.255.16',1),(160,'172.31.255.160',1),(161,'172.31.255.161',1),(162,'172.31.255.162',1),(163,'172.31.255.163',1),(164,'172.31.255.164',1),(165,'172.31.255.165',1),(166,'172.31.255.166',1),(167,'172.31.255.167',1),(168,'172.31.255.168',1),(169,'172.31.255.169',1),(17,'172.31.255.17',1),(170,'172.31.255.170',1),(171,'172.31.255.171',1),(172,'172.31.255.172',1),(173,'172.31.255.173',1),(174,'172.31.255.174',1),(175,'172.31.255.175',1),(176,'172.31.255.176',1),(177,'172.31.255.177',1),(178,'172.31.255.178',1),(179,'172.31.255.179',1),(18,'172.31.255.18',1),(180,'172.31.255.180',1),(181,'172.31.255.181',1),(182,'172.31.255.182',1),(183,'172.31.255.183',1),(184,'172.31.255.184',1),(185,'172.31.255.185',1),(186,'172.31.255.186',1),(187,'172.31.255.187',1),(188,'172.31.255.188',1),(189,'172.31.255.189',1),(19,'172.31.255.19',1),(190,'172.31.255.190',1),(191,'172.31.255.191',1),(192,'172.31.255.192',1),(193,'172.31.255.193',1),(194,'172.31.255.194',1),(195,'172.31.255.195',1),(196,'172.31.255.196',1),(197,'172.31.255.197',1),(198,'172.31.255.198',1),(199,'172.31.255.199',1),(2,'172.31.255.2',1),(20,'172.31.255.20',1),(200,'172.31.255.200',1),(201,'172.31.255.201',1),(202,'172.31.255.202',1),(203,'172.31.255.203',1),(204,'172.31.255.204',1),(205,'172.31.255.205',1),(206,'172.31.255.206',1),(207,'172.31.255.207',1),(208,'172.31.255.208',1),(209,'172.31.255.209',1),(21,'172.31.255.21',1),(210,'172.31.255.210',1),(211,'172.31.255.211',1),(212,'172.31.255.212',1),(213,'172.31.255.213',1),(214,'172.31.255.214',1),(215,'172.31.255.215',1),(216,'172.31.255.216',1),(217,'172.31.255.217',1),(218,'172.31.255.218',1),(219,'172.31.255.219',1),(22,'172.31.255.22',1),(220,'172.31.255.220',1),(221,'172.31.255.221',1),(222,'172.31.255.222',1),(223,'172.31.255.223',1),(224,'172.31.255.224',1),(225,'172.31.255.225',1),(226,'172.31.255.226',1),(227,'172.31.255.227',1),(228,'172.31.255.228',1),(229,'172.31.255.229',1),(23,'172.31.255.23',1),(230,'172.31.255.230',1),(231,'172.31.255.231',1),(232,'172.31.255.232',1),(233,'172.31.255.233',1),(234,'172.31.255.234',1),(235,'172.31.255.235',1),(236,'172.31.255.236',1),(237,'172.31.255.237',1),(238,'172.31.255.238',1),(239,'172.31.255.239',1),(24,'172.31.255.24',1),(240,'172.31.255.240',1),(241,'172.31.255.241',1),(242,'172.31.255.242',1),(243,'172.31.255.243',1),(244,'172.31.255.244',1),(245,'172.31.255.245',1),(246,'172.31.255.246',1),(247,'172.31.255.247',1),(248,'172.31.255.248',1),(249,'172.31.255.249',1),(25,'172.31.255.25',1),(250,'172.31.255.250',1),(251,'172.31.255.251',1),(252,'172.31.255.252',1),(253,'172.31.255.253',1),(254,'172.31.255.254',1),(26,'172.31.255.26',1),(27,'172.31.255.27',1),(28,'172.31.255.28',1),(29,'172.31.255.29',1),(3,'172.31.255.3',1),(30,'172.31.255.30',1),(31,'172.31.255.31',1),(32,'172.31.255.32',1),(33,'172.31.255.33',1),(34,'172.31.255.34',1),(35,'172.31.255.35',1),(36,'172.31.255.36',1),(37,'172.31.255.37',1),(38,'172.31.255.38',1),(39,'172.31.255.39',1),(4,'172.31.255.4',1),(40,'172.31.255.40',1),(41,'172.31.255.41',1),(42,'172.31.255.42',1),(43,'172.31.255.43',1),(44,'172.31.255.44',1),(45,'172.31.255.45',1),(46,'172.31.255.46',1),(47,'172.31.255.47',1),(48,'172.31.255.48',1),(49,'172.31.255.49',1),(5,'172.31.255.5',1),(50,'172.31.255.50',1),(51,'172.31.255.51',1),(52,'172.31.255.52',1),(53,'172.31.255.53',1),(54,'172.31.255.54',1),(55,'172.31.255.55',1),(56,'172.31.255.56',1),(57,'172.31.255.57',1),(58,'172.31.255.58',1),(59,'172.31.255.59',1),(6,'172.31.255.6',1),(60,'172.31.255.60',1),(61,'172.31.255.61',1),(62,'172.31.255.62',1),(63,'172.31.255.63',1),(64,'172.31.255.64',1),(65,'172.31.255.65',1),(66,'172.31.255.66',1),(67,'172.31.255.67',1),(68,'172.31.255.68',1),(69,'172.31.255.69',1),(7,'172.31.255.7',1),(70,'172.31.255.70',1),(71,'172.31.255.71',1),(72,'172.31.255.72',1),(73,'172.31.255.73',1),(74,'172.31.255.74',1),(75,'172.31.255.75',1),(76,'172.31.255.76',1),(77,'172.31.255.77',1),(78,'172.31.255.78',1),(79,'172.31.255.79',1),(8,'172.31.255.8',1),(80,'172.31.255.80',1),(81,'172.31.255.81',1),(82,'172.31.255.82',1),(83,'172.31.255.83',1),(84,'172.31.255.84',1),(85,'172.31.255.85',1),(86,'172.31.255.86',1),(87,'172.31.255.87',1),(88,'172.31.255.88',1),(89,'172.31.255.89',1),(9,'172.31.255.9',1),(90,'172.31.255.90',1),(91,'172.31.255.91',1),(92,'172.31.255.92',1),(93,'172.31.255.93',1),(94,'172.31.255.94',1),(95,'172.31.255.95',1),(96,'172.31.255.96',1),(97,'172.31.255.97',1),(98,'172.31.255.98',1),(99,'172.31.255.99',1);
/*!40000 ALTER TABLE `ip_pools_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_pools_pool_use`
--

DROP TABLE IF EXISTS `ip_pools_pool_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_pools_pool_use` (
  `poolip` char(15) NOT NULL DEFAULT '',
  `poolid` int(10) unsigned NOT NULL,
  `last_change` int(10) unsigned NOT NULL DEFAULT '0',
  `acctsessionid` varchar(64) DEFAULT NULL,
  `acctuniqueid` varchar(32) DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`poolip`),
  KEY `ip-uid-ses-uniq` (`poolip`,`uid`,`acctsessionid`,`acctuniqueid`),
  KEY `poolid` (`poolid`),
  KEY `time` (`last_change`),
  KEY `uid` (`uid`),
  KEY `uid-ip` (`poolip`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_pools_pool_use`
--

LOCK TABLES `ip_pools_pool_use` WRITE;
/*!40000 ALTER TABLE `ip_pools_pool_use` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_pools_pool_use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_real`
--

DROP TABLE IF EXISTS `ip_real`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_real` (
  `real` char(15) COLLATE koi8r_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`real`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_real`
--

LOCK TABLES `ip_real` WRITE;
/*!40000 ALTER TABLE `ip_real` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_real` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanes`
--

DROP TABLE IF EXISTS `lanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes` (
  `laneid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lane` char(64) NOT NULL DEFAULT '',
  `settlementid` int(14) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`laneid`),
  UNIQUE KEY `id-lane` (`laneid`,`lane`),
  KEY `lane` (`lane`),
  KEY `stateid` (`settlementid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=73;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanes`
--

LOCK TABLES `lanes` WRITE;
/*!40000 ALTER TABLE `lanes` DISABLE KEYS */;
INSERT INTO `lanes` VALUES (1,'Lane 1',0),(2,'Lane 2',0);
/*!40000 ALTER TABLE `lanes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanes_houses`
--

DROP TABLE IF EXISTS `lanes_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes_houses` (
  `houseid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `laneid` int(10) unsigned NOT NULL,
  `neighborhoodid` int(10) unsigned NOT NULL DEFAULT '0',
  `house` char(32) NOT NULL DEFAULT '',
  `porches` int(2) unsigned NOT NULL DEFAULT '4',
  `floors` int(3) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`houseid`),
  UNIQUE KEY `laneid-houseid` (`laneid`,`houseid`),
  KEY `lane-house` (`laneid`,`house`),
  KEY `laneid` (`laneid`),
  KEY `house` (`house`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=53;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanes_houses`
--

LOCK TABLES `lanes_houses` WRITE;
/*!40000 ALTER TABLE `lanes_houses` DISABLE KEYS */;
INSERT INTO `lanes_houses` VALUES (1,1,0,'1',4,5),(2,1,0,'2',4,5),(3,1,0,'3',4,5);
/*!40000 ALTER TABLE `lanes_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanes_houses_blocks`
--

DROP TABLE IF EXISTS `lanes_houses_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes_houses_blocks` (
  `houseblockid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `houseblockname` varchar(36) NOT NULL,
  `housingid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`houseblockid`),
  KEY `hgid` (`housingid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanes_houses_blocks`
--

LOCK TABLES `lanes_houses_blocks` WRITE;
/*!40000 ALTER TABLE `lanes_houses_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `lanes_houses_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanes_housings`
--

DROP TABLE IF EXISTS `lanes_housings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes_housings` (
  `housingid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `housingname` varchar(36) NOT NULL,
  `houseid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`housingid`),
  KEY `hid` (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanes_housings`
--

LOCK TABLES `lanes_housings` WRITE;
/*!40000 ALTER TABLE `lanes_housings` DISABLE KEYS */;
/*!40000 ALTER TABLE `lanes_housings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanes_neighborhoods`
--

DROP TABLE IF EXISTS `lanes_neighborhoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes_neighborhoods` (
  `neighborhoodid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `neighborhoodname` varchar(36) NOT NULL DEFAULT '',
  `settlementid` int(14) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`neighborhoodid`),
  KEY `sat` (`settlementid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanes_neighborhoods`
--

LOCK TABLES `lanes_neighborhoods` WRITE;
/*!40000 ALTER TABLE `lanes_neighborhoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `lanes_neighborhoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lanes_settlements`
--

DROP TABLE IF EXISTS `lanes_settlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lanes_settlements` (
  `settlementid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `settlementname` varchar(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`settlementid`),
  KEY `name` (`settlementname`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lanes_settlements`
--

LOCK TABLES `lanes_settlements` WRITE;
/*!40000 ALTER TABLE `lanes_settlements` DISABLE KEYS */;
/*!40000 ALTER TABLE `lanes_settlements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `logid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `stuffid` tinyint(6) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `logtypeid` int(7) unsigned NOT NULL,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `gid` smallint(5) unsigned DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `valuename` varchar(64) NOT NULL,
  `oldvalue` varchar(64) DEFAULT NULL,
  `newvalue` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`logid`),
  KEY `date` (`date`),
  KEY `gid` (`gid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=66;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_auth_admin`
--

DROP TABLE IF EXISTS `logs_auth_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_auth_admin` (
  `auth_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AI',
  `login` varchar(32) NOT NULL COMMENT 'логин',
  `password` varchar(32) NOT NULL COMMENT 'пароль',
  `stuffid` tinyint(3) unsigned DEFAULT NULL COMMENT 'ID сотрудника',
  `auth_ip` int(10) unsigned NOT NULL COMMENT 'IP авторизации',
  `auth_type` enum('denied','allowed','session','') NOT NULL COMMENT 'Результат авторизации: вход запрещён/разрешён/сессионный',
  `auth_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_auth_admin`
--

LOCK TABLES `logs_auth_admin` WRITE;
/*!40000 ALTER TABLE `logs_auth_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_auth_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logtype`
--

DROP TABLE IF EXISTS `logtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logtype` (
  `logtypeid` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `logtype` char(32) NOT NULL,
  PRIMARY KEY (`logtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=35;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logtype`
--

LOCK TABLES `logtype` WRITE;
/*!40000 ALTER TABLE `logtype` DISABLE KEYS */;
INSERT INTO `logtype` VALUES (1,'Абонент'),(2,'Тариф'),(3,'Карточки'),(4,'Товары'),(5,'Опции'),(6,'WhiteList'),(7,'NAS'),(8,'Действия'),(9,'Справочники'),(10,'Email рассылка'),(11,'Персонал'),(12,'Отчёты'),(13,'Консольные команды'),(14,'Обход защиты - дилер'),(15,'Злонамеренные действия'),(16,'Устройства пользователя'),(17,'Настройки ЛК'),(18,'Финансы'),(19,'Устройства'),(20,'Типы устройств');
/*!40000 ALTER TABLE `logtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_criterions`
--

DROP TABLE IF EXISTS `map_criterions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_criterions` (
  `criterionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `criterionname` varchar(250) NOT NULL,
  `mapid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`criterionid`),
  KEY `id` (`mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_criterions`
--

LOCK TABLES `map_criterions` WRITE;
/*!40000 ALTER TABLE `map_criterions` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_criterions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_maps`
--

DROP TABLE IF EXISTS `map_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_maps` (
  `mapid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(14) unsigned NOT NULL DEFAULT '0',
  `stuffid` int(14) unsigned NOT NULL,
  `mapname` varchar(36) NOT NULL,
  `width` int(11) unsigned NOT NULL DEFAULT '1000',
  `height` int(11) unsigned NOT NULL DEFAULT '1000',
  `px` int(11) unsigned NOT NULL DEFAULT '1',
  `m` int(11) unsigned NOT NULL DEFAULT '1',
  `background_visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `background_grayscale` tinyint(1) NOT NULL DEFAULT '0',
  `background_alpha` int(3) unsigned NOT NULL DEFAULT '50',
  `background_x` int(11) NOT NULL DEFAULT '0',
  `background_y` int(11) NOT NULL DEFAULT '0',
  `background_scale` int(11) unsigned NOT NULL DEFAULT '100',
  `google_map_visible` tinyint(1) NOT NULL DEFAULT '0',
  `google_map_grayscale` tinyint(1) NOT NULL DEFAULT '0',
  `google_map_alpha` int(3) NOT NULL DEFAULT '100',
  `google_map_type` tinyint(1) NOT NULL DEFAULT '2',
  `google_map_longitude_a` int(2) NOT NULL DEFAULT '0',
  `google_map_longitude_b` int(2) NOT NULL DEFAULT '0',
  `google_map_longitude_c` int(2) NOT NULL DEFAULT '0',
  `google_map_longitude_d` int(2) NOT NULL DEFAULT '0',
  `google_map_latitude_a` int(2) NOT NULL DEFAULT '0',
  `google_map_latitude_b` int(2) NOT NULL DEFAULT '0',
  `google_map_latitude_c` int(2) NOT NULL DEFAULT '0',
  `google_map_latitude_d` int(2) NOT NULL DEFAULT '0',
  `google_map_scale` float NOT NULL DEFAULT '0',
  `grid_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grid_alpha` int(3) unsigned NOT NULL DEFAULT '50',
  `grid_width` int(3) unsigned NOT NULL DEFAULT '100',
  `grid_height` int(3) unsigned NOT NULL DEFAULT '100',
  `grid_show_center` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grid_color` varchar(8) NOT NULL DEFAULT '0x6495ED',
  `objects_layer_x` int(11) NOT NULL DEFAULT '0',
  `objects_layer_y` int(11) NOT NULL DEFAULT '0',
  `houses_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `houses_labels_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `houses_labels_name_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `houses_labels_online_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `houses_alpha` int(3) unsigned NOT NULL DEFAULT '100',
  `lines_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lines_alpha` int(3) unsigned NOT NULL DEFAULT '100',
  `cables_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cables_alpha` int(3) unsigned NOT NULL DEFAULT '100',
  `devices_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `devices_labels_visible` tinyint(1) NOT NULL DEFAULT '1',
  `devices_alpha` int(3) unsigned NOT NULL DEFAULT '100',
  `wifis_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `wifis_labels_visible` tinyint(1) NOT NULL DEFAULT '1',
  `wifis_cover_visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wifis_alpha` int(3) unsigned NOT NULL DEFAULT '100',
  `serial` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mapid`),
  KEY `stuff` (`stuffid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_maps`
--

LOCK TABLES `map_maps` WRITE;
/*!40000 ALTER TABLE `map_maps` DISABLE KEYS */;
INSERT INTO `map_maps` VALUES (1,0,1,'asdasd+',0,0,1,1,0,0,50,0,0,100,0,0,100,2,0,0,0,0,0,0,0,0,1,1,50,0,0,1,'6591981',0,0,1,1,1,1,100,1,100,1,100,1,1,100,1,1,0,100,'2013-07-19 16:00:22');
/*!40000 ALTER TABLE `map_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_maps_criterions`
--

DROP TABLE IF EXISTS `map_maps_criterions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_maps_criterions` (
  `mapcriterionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `mapid` int(14) unsigned NOT NULL,
  `criterionid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`mapcriterionid`),
  KEY `cr` (`criterionid`),
  KEY `id` (`mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_maps_criterions`
--

LOCK TABLES `map_maps_criterions` WRITE;
/*!40000 ALTER TABLE `map_maps_criterions` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_maps_criterions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_maps_permissions`
--

DROP TABLE IF EXISTS `map_maps_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_maps_permissions` (
  `mappermissionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `permissionid` int(14) unsigned NOT NULL,
  `mapid` int(14) unsigned NOT NULL,
  `stuffid` int(14) unsigned NOT NULL,
  `issued` int(14) unsigned NOT NULL,
  PRIMARY KEY (`mappermissionid`),
  KEY `id` (`mapid`),
  KEY `stuff` (`stuffid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_maps_permissions`
--

LOCK TABLES `map_maps_permissions` WRITE;
/*!40000 ALTER TABLE `map_maps_permissions` DISABLE KEYS */;
INSERT INTO `map_maps_permissions` VALUES (1,1,1,1,1),(2,2,1,1,1);
/*!40000 ALTER TABLE `map_maps_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects`
--

DROP TABLE IF EXISTS `map_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects` (
  `objectid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `mapid` int(14) unsigned NOT NULL,
  `typeid` tinyint(2) unsigned NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `objectname` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `serial` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`objectid`),
  KEY `map` (`mapid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects`
--

LOCK TABLES `map_objects` WRITE;
/*!40000 ALTER TABLE `map_objects` DISABLE KEYS */;
INSERT INTO `map_objects` VALUES (1,1,2,-359,-288,'','','2013-07-19 15:52:33'),(2,1,2,-233,-207,'','','2013-07-19 15:52:43'),(3,1,2,-122,-261,'','','2013-07-19 15:52:53'),(4,1,2,-86,-259,'','','2013-07-19 15:53:03'),(5,1,2,10,-258,'','','2013-07-19 15:53:18'),(6,1,2,-233,-119,'','','2013-07-19 15:53:31'),(7,1,2,-145,-57,'','','2013-07-19 15:53:40'),(8,1,2,-18,-115,'','','2013-07-19 15:55:23'),(9,1,2,69,-34,'','','2013-07-19 15:55:31');
/*!40000 ALTER TABLE `map_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_cables`
--

DROP TABLE IF EXISTS `map_objects_cables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_cables` (
  `objectcableid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `objectid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`objectcableid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_cables`
--

LOCK TABLES `map_objects_cables` WRITE;
/*!40000 ALTER TABLE `map_objects_cables` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_objects_cables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_criterions`
--

DROP TABLE IF EXISTS `map_objects_criterions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_criterions` (
  `objectcriterionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `objectid` int(14) unsigned NOT NULL,
  `criterionid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`objectcriterionid`),
  KEY `obj` (`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_criterions`
--

LOCK TABLES `map_objects_criterions` WRITE;
/*!40000 ALTER TABLE `map_objects_criterions` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_objects_criterions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_devices`
--

DROP TABLE IF EXISTS `map_objects_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_devices` (
  `objectdeviceid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `swid` int(14) unsigned NOT NULL DEFAULT '0',
  `objectid` int(14) unsigned NOT NULL DEFAULT '0',
  `label_x` int(11) NOT NULL DEFAULT '0',
  `label_y` int(11) NOT NULL DEFAULT '0',
  `icontype` int(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`objectdeviceid`),
  KEY `obj` (`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_devices`
--

LOCK TABLES `map_objects_devices` WRITE;
/*!40000 ALTER TABLE `map_objects_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_objects_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_houses`
--

DROP TABLE IF EXISTS `map_objects_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_houses` (
  `objecthouseid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `houseid` int(14) unsigned NOT NULL DEFAULT '0',
  `objectid` int(14) unsigned NOT NULL,
  `label_x` int(14) NOT NULL DEFAULT '0',
  `label_y` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`objecthouseid`),
  KEY `obj` (`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_houses`
--

LOCK TABLES `map_objects_houses` WRITE;
/*!40000 ALTER TABLE `map_objects_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_objects_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_lines`
--

DROP TABLE IF EXISTS `map_objects_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_lines` (
  `objectlineid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `objectid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`objectlineid`),
  KEY `obj` (`objectid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_lines`
--

LOCK TABLES `map_objects_lines` WRITE;
/*!40000 ALTER TABLE `map_objects_lines` DISABLE KEYS */;
INSERT INTO `map_objects_lines` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9);
/*!40000 ALTER TABLE `map_objects_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_types`
--

DROP TABLE IF EXISTS `map_objects_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_types` (
  `typeid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(36) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=20;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_types`
--

LOCK TABLES `map_objects_types` WRITE;
/*!40000 ALTER TABLE `map_objects_types` DISABLE KEYS */;
INSERT INTO `map_objects_types` VALUES (1,'house'),(2,'line'),(3,'cable');
/*!40000 ALTER TABLE `map_objects_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_objects_wifis`
--

DROP TABLE IF EXISTS `map_objects_wifis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_objects_wifis` (
  `objectwifiid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `objectid` int(14) NOT NULL,
  `label_x` int(11) NOT NULL DEFAULT '0',
  `label_y` int(11) NOT NULL DEFAULT '0',
  `cover_radius` int(5) NOT NULL DEFAULT '300',
  `cover_degree` int(3) NOT NULL DEFAULT '45',
  `cover_rotation` int(3) NOT NULL DEFAULT '0',
  `cover_color` varchar(8) NOT NULL DEFAULT '0x0000FF',
  `icon_size` int(3) NOT NULL DEFAULT '100',
  `icon_color` varchar(8) NOT NULL DEFAULT '0x000000',
  PRIMARY KEY (`objectwifiid`),
  KEY `obj` (`objectid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_objects_wifis`
--

LOCK TABLES `map_objects_wifis` WRITE;
/*!40000 ALTER TABLE `map_objects_wifis` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_objects_wifis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `map_online`
--

DROP TABLE IF EXISTS `map_online`;
/*!50001 DROP VIEW IF EXISTS `map_online`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `map_online` (
 `radacctid` tinyint NOT NULL,
  `acctsessionid` tinyint NOT NULL,
  `acctuniqueid` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `gid` tinyint NOT NULL,
  `nasipaddress` tinyint NOT NULL,
  `nasportid` tinyint NOT NULL,
  `acctstarttime` tinyint NOT NULL,
  `acctstoptime` tinyint NOT NULL,
  `acctsessiontime` tinyint NOT NULL,
  `acctinputoctets` tinyint NOT NULL,
  `acctoutputoctets` tinyint NOT NULL,
  `calledstationid` tinyint NOT NULL,
  `callingstationid` tinyint NOT NULL,
  `acctterminatecause` tinyint NOT NULL,
  `framedipaddress` tinyint NOT NULL,
  `last_change` tinyint NOT NULL,
  `before_billing` tinyint NOT NULL,
  `billing_minus` tinyint NOT NULL,
  `app` tinyint NOT NULL,
  `swid` tinyint NOT NULL,
  `switchport` tinyint NOT NULL,
  `houseid` tinyint NOT NULL,
  `user_speed_in` tinyint NOT NULL,
  `user_speed_out` tinyint NOT NULL,
  `use_radius_shaper` tinyint NOT NULL,
  `tarif_speed_in` tinyint NOT NULL,
  `tarif_speed_out` tinyint NOT NULL,
  `tarif_shaper_prio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `map_permissions_types`
--

DROP TABLE IF EXISTS `map_permissions_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_permissions_types` (
  `permissionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(45) NOT NULL,
  PRIMARY KEY (`permissionid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=20;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_permissions_types`
--

LOCK TABLES `map_permissions_types` WRITE;
/*!40000 ALTER TABLE `map_permissions_types` DISABLE KEYS */;
INSERT INTO `map_permissions_types` VALUES (1,'map_view'),(2,'map_edit');
/*!40000 ALTER TABLE `map_permissions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_points`
--

DROP TABLE IF EXISTS `map_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_points` (
  `pointid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(14) unsigned NOT NULL,
  `objectid` int(14) unsigned NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `serial` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pointid`),
  KEY `obj` (`objectid`),
  KEY `parent` (`parentid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_points`
--

LOCK TABLES `map_points` WRITE;
/*!40000 ALTER TABLE `map_points` DISABLE KEYS */;
INSERT INTO `map_points` VALUES (1,2,1,0,0,'2013-07-19 15:52:34'),(2,3,1,32,41,'2013-07-19 15:52:34'),(3,4,1,67,4,'2013-07-19 15:52:34'),(4,0,1,6,85,'2013-07-19 15:52:34'),(5,6,2,0,0,'2013-07-19 15:52:43'),(6,7,2,1,-57,'2013-07-19 15:52:43'),(7,8,2,22,-30,'2013-07-19 15:52:43'),(8,9,2,47,-55,'2013-07-19 15:52:43'),(9,0,2,45,0,'2013-07-19 15:52:43'),(10,11,3,0,0,'2013-07-19 15:52:53'),(11,12,3,-35,-2,'2013-07-19 15:52:53'),(12,13,3,-34,24,'2013-07-19 15:52:53'),(13,14,3,-6,26,'2013-07-19 15:52:53'),(14,15,3,-35,30,'2013-07-19 15:52:53'),(15,16,3,-35,48,'2013-07-19 15:52:53'),(16,0,3,-6,50,'2013-07-19 15:52:53'),(17,18,4,0,0,'2013-07-19 15:53:03'),(18,19,4,-4,56,'2013-07-19 15:53:03'),(19,20,4,1,24,'2013-07-19 15:53:03'),(20,21,4,23,26,'2013-07-19 15:53:03'),(21,22,4,27,-4,'2013-07-19 15:53:03'),(22,0,4,25,51,'2013-07-19 15:53:03'),(23,24,5,-5,50,'2013-07-19 15:53:22'),(24,25,5,3,-3,'2013-07-19 15:53:18'),(25,26,5,-22,-4,'2013-07-19 15:53:19'),(26,27,5,-27,16,'2013-07-19 15:53:19'),(27,28,5,-8,22,'2013-07-19 15:53:19'),(28,0,5,-30,47,'2013-07-19 15:53:19'),(29,30,6,0,0,'2013-07-19 15:53:31'),(30,31,6,-4,67,'2013-07-19 15:53:32'),(31,32,6,-2,29,'2013-07-19 15:53:32'),(32,33,6,34,31,'2013-07-19 15:53:32'),(33,34,6,36,-6,'2013-07-19 15:53:32'),(34,0,6,30,59,'2013-07-19 15:53:32'),(35,36,7,0,0,'2013-07-19 15:53:40'),(36,37,7,5,-68,'2013-07-19 15:53:40'),(37,38,7,62,-64,'2013-07-19 15:53:40'),(38,39,7,55,12,'2013-07-19 15:53:40'),(39,0,7,6,3,'2013-07-19 15:53:40'),(40,41,8,0,0,'2013-07-19 15:55:23'),(41,42,8,-9,64,'2013-07-19 15:55:23'),(42,43,8,4,-1,'2013-07-19 15:55:23'),(43,44,8,34,1,'2013-07-19 15:55:24'),(44,45,8,37,22,'2013-07-19 15:55:24'),(45,0,8,-3,26,'2013-07-19 15:55:24'),(46,47,9,0,0,'2013-07-19 15:55:31'),(47,48,9,1,-83,'2013-07-19 15:55:31'),(48,49,9,26,-43,'2013-07-19 15:55:32'),(49,50,9,60,-83,'2013-07-19 15:55:32'),(50,0,9,53,-1,'2013-07-19 15:55:32');
/*!40000 ALTER TABLE `map_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mb_view_tickets_messages`
--

DROP TABLE IF EXISTS `mb_view_tickets_messages`;
/*!50001 DROP VIEW IF EXISTS `mb_view_tickets_messages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mb_view_tickets_messages` (
 `messageid` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `ticketid` tinyint NOT NULL,
  `stuffid` tinyint NOT NULL,
  `stuff_fio` tinyint NOT NULL,
  `useruid` tinyint NOT NULL,
  `user_fio` tinyint NOT NULL,
  `message` tinyint NOT NULL,
  `unread` tinyint NOT NULL,
  `statustypename` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `migratenodeny`
--

DROP TABLE IF EXISTS `migratenodeny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migratenodeny` (
  `ip` varchar(15) NOT NULL,
  `user` varchar(32) NOT NULL,
  `password` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT NULL,
  `deposit` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit` double(20,6) NOT NULL DEFAULT '0.000000',
  `gid` int(10) unsigned NOT NULL,
  `packet` varchar(64) DEFAULT NULL,
  `contract_date` date DEFAULT NULL,
  `fio` varchar(128) DEFAULT NULL,
  `numdogovor` varchar(16) DEFAULT NULL,
  `adress` varchar(64) DEFAULT NULL,
  `mac` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `prim` varchar(254) NOT NULL,
  `phone` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migratenodeny`
--

LOCK TABLES `migratenodeny` WRITE;
/*!40000 ALTER TABLE `migratenodeny` DISABLE KEYS */;
/*!40000 ALTER TABLE `migratenodeny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_act_cards`
--

DROP TABLE IF EXISTS `mod_cards_act_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_act_cards` (
  `cardactid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `serieid` int(10) unsigned NOT NULL,
  `secret` char(22) COLLATE koi8r_bin NOT NULL,
  `resellerid` int(14) unsigned NOT NULL DEFAULT '0',
  `status` enum('a','l','u') COLLATE koi8r_bin NOT NULL DEFAULT 'a',
  PRIMARY KEY (`cardactid`),
  UNIQUE KEY `secret` (`secret`),
  KEY `res` (`resellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_act_cards`
--

LOCK TABLES `mod_cards_act_cards` WRITE;
/*!40000 ALTER TABLE `mod_cards_act_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_act_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_act_logs`
--

DROP TABLE IF EXISTS `mod_cards_act_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_act_logs` (
  `cardsactid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `serieid` int(10) unsigned NOT NULL,
  `secret` char(22) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `ip` char(16) DEFAULT NULL,
  `mac` char(22) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(16) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL,
  `cardactid` int(20) unsigned NOT NULL,
  PRIMARY KEY (`cardsactid`),
  KEY `time` (`timestamp`),
  KEY `uid` (`uid`),
  KEY `secret` (`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_act_logs`
--

LOCK TABLES `mod_cards_act_logs` WRITE;
/*!40000 ALTER TABLE `mod_cards_act_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_act_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_act_serie`
--

DROP TABLE IF EXISTS `mod_cards_act_serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_act_serie` (
  `serieid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serie` char(5) COLLATE koi8r_bin NOT NULL,
  `gid` smallint(5) unsigned NOT NULL,
  `deposit` double(20,3) NOT NULL DEFAULT '0.000',
  `credit` double(20,3) NOT NULL DEFAULT '0.000',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `count` int(10) unsigned NOT NULL,
  `active` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`serieid`),
  UNIQUE KEY `serie` (`serie`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_act_serie`
--

LOCK TABLES `mod_cards_act_serie` WRITE;
/*!40000 ALTER TABLE `mod_cards_act_serie` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_act_serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_cards`
--

DROP TABLE IF EXISTS `mod_cards_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_cards` (
  `cards_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `series` char(4) NOT NULL DEFAULT '0',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nominal` double(8,2) NOT NULL DEFAULT '0.00',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `sn` char(20) NOT NULL DEFAULT '0',
  `resellerid` int(14) unsigned NOT NULL DEFAULT '0',
  `status` enum('a','l','u') NOT NULL DEFAULT 'a',
  PRIMARY KEY (`cards_id`),
  KEY `series` (`sn`,`series`),
  KEY `status` (`status`),
  KEY `sn` (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_cards`
--

LOCK TABLES `mod_cards_cards` WRITE;
/*!40000 ALTER TABLE `mod_cards_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_errors`
--

DROP TABLE IF EXISTS `mod_cards_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_errors` (
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `who` char(255) NOT NULL,
  `what` char(255) NOT NULL,
  `resellerid` int(14) unsigned NOT NULL,
  KEY `who` (`who`),
  KEY `res` (`resellerid`),
  KEY `when` (`when`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_errors`
--

LOCK TABLES `mod_cards_errors` WRITE;
/*!40000 ALTER TABLE `mod_cards_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_params`
--

DROP TABLE IF EXISTS `mod_cards_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_params` (
  `series` char(4) NOT NULL DEFAULT '',
  `sectorid` smallint(5) NOT NULL DEFAULT '0',
  `bonus` double(20,6) DEFAULT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_params`
--

LOCK TABLES `mod_cards_params` WRITE;
/*!40000 ALTER TABLE `mod_cards_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_cards_resellers`
--

DROP TABLE IF EXISTS `mod_cards_resellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_cards_resellers` (
  `resellerid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `resellername` varchar(32) NOT NULL,
  `description` varchar(254) NOT NULL DEFAULT '',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`resellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_cards_resellers`
--

LOCK TABLES `mod_cards_resellers` WRITE;
/*!40000 ALTER TABLE `mod_cards_resellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_cards_resellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_trade_mobile_transactions`
--

DROP TABLE IF EXISTS `mod_trade_mobile_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_trade_mobile_transactions` (
  `mbtr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mob_tr_time` datetime NOT NULL,
  `vaucher` char(25) NOT NULL,
  `vaucher_price_in` double(20,6) unsigned DEFAULT NULL,
  `vaucher_price_out` double(20,6) unsigned DEFAULT NULL,
  `uid` bigint(16) NOT NULL,
  `tpmv_id` tinyint(10) unsigned NOT NULL,
  PRIMARY KEY (`mbtr_id`),
  UNIQUE KEY `vaucher` (`vaucher`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COMMENT='transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_trade_mobile_transactions`
--

LOCK TABLES `mod_trade_mobile_transactions` WRITE;
/*!40000 ALTER TABLE `mod_trade_mobile_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_trade_mobile_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_trade_mobile_type`
--

DROP TABLE IF EXISTS `mod_trade_mobile_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_trade_mobile_type` (
  `tpmv_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name_type` char(128) DEFAULT NULL,
  UNIQUE KEY `tpmv_id` (`tpmv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COMMENT='mobile vaucher types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_trade_mobile_type`
--

LOCK TABLES `mod_trade_mobile_type` WRITE;
/*!40000 ALTER TABLE `mod_trade_mobile_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_trade_mobile_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_trade_mobile_vauchers`
--

DROP TABLE IF EXISTS `mod_trade_mobile_vauchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_trade_mobile_vauchers` (
  `vaucher` char(25) NOT NULL,
  `tpmv_id` smallint(6) unsigned DEFAULT NULL,
  `vaucher_price_in` double(20,6) NOT NULL,
  `vaucher_price_out` double(20,6) NOT NULL,
  UNIQUE KEY `vaucher` (`vaucher`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COMMENT='mobile vauchers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_trade_mobile_vauchers`
--

LOCK TABLES `mod_trade_mobile_vauchers` WRITE;
/*!40000 ALTER TABLE `mod_trade_mobile_vauchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_trade_mobile_vauchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notificationid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(600) NOT NULL,
  `startdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `numofrepeats` int(4) NOT NULL DEFAULT '1',
  `showtime` int(3) NOT NULL DEFAULT '20',
  `gidsids` varchar(32) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`notificationid`),
  KEY `act` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packets`
--

DROP TABLE IF EXISTS `packets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packets` (
  `num` int(11) NOT NULL DEFAULT '0',
  `packet` char(128) NOT NULL,
  `prefix` char(4) NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tos` tinyint(1) NOT NULL DEFAULT '2',
  `do_with_tos` tinyint(1) NOT NULL DEFAULT '1',
  `direction` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - не снимать; 1 - КД, если было подключение; 7 - ОКД (фикс.); 10 - ОКД (пропорц.); 8 - обязательно каждый месяц; 9 - обязательно каждый месяц, потратить сумму; 11 - обязательно каждый месяц, плавающая дата',
  `fixed_cost` double(20,6) NOT NULL DEFAULT '0.000000',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `simultaneous_use` smallint(5) NOT NULL DEFAULT '1',
  `port_limit` smallint(5) NOT NULL DEFAULT '1',
  `session_timeout` int(10) unsigned NOT NULL DEFAULT '86400',
  `idle_timeout` int(10) NOT NULL DEFAULT '30',
  `no_pass` tinyint(1) NOT NULL DEFAULT '0',
  `no_acct` tinyint(1) NOT NULL DEFAULT '0',
  `floor_traffic` tinyint(1) NOT NULL DEFAULT '0',
  `user_installed` smallint(2) NOT NULL DEFAULT '0',
  `speed_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_burst` int(10) unsigned NOT NULL DEFAULT '0',
  `fixed_cost2` double(20,6) NOT NULL DEFAULT '0.000000',
  `do_block` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shaper_prio` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `real_ip` tinyint(3) NOT NULL DEFAULT '0',
  `real_price` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit_procent` double(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `mk_limit_sh` smallint(2) unsigned NOT NULL DEFAULT '0',
  `mk_limit_sh_traf` int(10) unsigned DEFAULT '0',
  `limit_shaper_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `limit_start_gb` int(20) unsigned NOT NULL DEFAULT '0',
  `limit_speed_in` int(10) unsigned NOT NULL DEFAULT '0',
  `limit_speed_out` int(10) unsigned NOT NULL DEFAULT '0',
  `limit_speed_prio` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `do_shapers` tinyint(2) NOT NULL DEFAULT '0',
  `do_mik_rad_shapers` tinyint(2) NOT NULL DEFAULT '0',
  `do_ippool` tinyint(2) NOT NULL DEFAULT '0',
  `do_perevod_na_tarif` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_turbo` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_shapers_day_night` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dop_do_interval2` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dop_do_interval3` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_time1` char(10) NOT NULL DEFAULT '0',
  `dop_interval1_time2` char(10) NOT NULL DEFAULT '0',
  `dop_interval1_speed_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_speed_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_prio` int(10) unsigned NOT NULL DEFAULT '1',
  `dop_interval1_burst_limit_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_burst_limit_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_burst_threshold_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_burst_threshold_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_burst_time_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval1_burst_time_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_time1` char(10) NOT NULL DEFAULT '0',
  `dop_interval2_time2` char(10) NOT NULL DEFAULT '0',
  `dop_interval2_speed_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_speed_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_prio` int(10) unsigned NOT NULL DEFAULT '1',
  `dop_interval2_burst_limit_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_burst_limit_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_burst_threshold_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_burst_threshold_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_burst_time_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval2_burst_time_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_time1` char(10) NOT NULL DEFAULT '0',
  `dop_interval3_time2` char(10) NOT NULL DEFAULT '0',
  `dop_interval3_speed_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_speed_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_prio` int(10) unsigned NOT NULL DEFAULT '1',
  `dop_interval3_burst_limit_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_burst_limit_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_burst_threshold_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_burst_threshold_in` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_burst_time_out` int(10) unsigned NOT NULL DEFAULT '0',
  `dop_interval3_burst_time_in` int(10) unsigned NOT NULL DEFAULT '0',
  `do_perevod_akciya` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_perevod_akciya_cena` double(20,6) unsigned NOT NULL DEFAULT '0.000000',
  `acct_interval` int(10) unsigned NOT NULL DEFAULT '300',
  `do_pipe_shapers` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_credit_vremen` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_credit_procent_vremen` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_cards` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_shop` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_perevod` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_change_pass` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_change_data` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `credit_active_cena` double(10,2) NOT NULL DEFAULT '0.00',
  `credit_procent_active_cena` double(10,2) NOT NULL DEFAULT '0.00',
  `turbo_active_cena` double(10,2) NOT NULL DEFAULT '0.00',
  `turbo_speed_in` int(10) unsigned NOT NULL DEFAULT '0',
  `turbo_speed_out` int(10) unsigned NOT NULL DEFAULT '0',
  `turbo_time` int(3) unsigned NOT NULL DEFAULT '24',
  `speed_mik_treshold_in` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_treshold_out` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_burst_in` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_burst_out` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_limit_treshold_in` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_limit_treshold_out` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_limit_burst_in` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_limit_burst_out` int(10) unsigned NOT NULL DEFAULT '0',
  `zapret_uhoda_s_tarifa` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `kabinet_do_freeze` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `cena_freeze` double(20,2) NOT NULL DEFAULT '0.00',
  `cena_unfreeze` double(20,2) NOT NULL DEFAULT '0.00',
  `cena_sutok_freeze` double(20,2) NOT NULL DEFAULT '0.00',
  `freeze_do_return_abonolata` tinyint(2) NOT NULL DEFAULT '0',
  `speed_mik_burst_time_in` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_burst_time_out` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_limit_burst_time_in` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_mik_limit_burst_time_out` int(10) unsigned NOT NULL DEFAULT '0',
  `min_sutok_freeze` int(10) unsigned NOT NULL DEFAULT '7',
  `cena_podklucheniya` double(20,2) NOT NULL DEFAULT '0.00',
  `cena_akt_otkl` double(20,2) NOT NULL DEFAULT '0.00',
  `cena_akt_del` double(20,2) NOT NULL DEFAULT '0.00',
  `enable_vkl_user` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `dont_show_speed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_drweb` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `freeze_do_ever` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `count_free_freeze` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `do_print_dogovor` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `world_shaper_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `world_speed_in` int(10) NOT NULL DEFAULT '0',
  `world_speed_out` int(10) NOT NULL DEFAULT '0',
  `world_speed_prio` int(10) NOT NULL DEFAULT '1',
  `world_speed_burst_in` int(10) NOT NULL DEFAULT '0',
  `world_speed_burst_out` int(10) NOT NULL DEFAULT '0',
  `world_speed_treshold_in` int(10) NOT NULL DEFAULT '0',
  `world_speed_treshold_out` int(10) NOT NULL DEFAULT '0',
  `world_speed_burst_time_in` int(10) NOT NULL DEFAULT '0',
  `world_speed_burst_time_out` int(10) NOT NULL DEFAULT '0',
  `do_credit_vozvrat_aktiv_cena` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_fixed_credit` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_fixed_credit_summa` double(20,2) unsigned NOT NULL DEFAULT '0.00',
  `do_credit_swing_date` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_credit_swing_date_days` int(10) unsigned NOT NULL DEFAULT '7',
  `numgroup` int(5) unsigned NOT NULL DEFAULT '0',
  `do_block_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mikrotik_addr_list` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '',
  `do_addrlist` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_acct_interval` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `do_simple_shapers_mikrotik` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `do_session_time_out` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_mik_ip_pool` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `framed_ip_pool` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '',
  `do_idle_timeout_out` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `kabinet_do_freeze_balanse_plus` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_cards_auto` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_cards_auto_date` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `real_ip_nolk` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `razresh_minus` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  UNIQUE KEY `packet` (`packet`),
  KEY `num` (`num`),
  KEY `prefix` (`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=80;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packets`
--

LOCK TABLES `packets` WRITE;
/*!40000 ALTER TABLE `packets` DISABLE KEYS */;
INSERT INTO `packets` VALUES (0,'Tarif 1','',1,2,1,0,0,0.000000,0,1,1,0,0,0,0,0,0,0,0,0.000000,0,0,0,0.000000,0.000000,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,'0','0',0,0,0,0,0,0,0,0,0,'0','0',0,0,0,0,0,0,0,0,0,'0','0',0,0,0,0,0,0,0,0,0,0,0.000000,300,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0,0,24,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0,0,0,0,0,7,0.00,0.00,0.00,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0.00,0,7,0,0,'',0,1,0,0,0,'',0,0,0,0,0,0),(0,'Tarif 2','',2,2,1,0,0,0.000000,0,1,1,0,0,0,0,0,0,15000,15000,0.000000,0,0,0,0.000000,0.000000,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,'0','0',0,0,0,0,0,0,0,0,0,'0','0',0,0,0,0,0,0,0,0,0,'0','0',0,0,0,0,0,0,0,0,0,0,0.000000,300,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0,0,24,0,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0,0,0,0,0,7,0.00,0.00,0.00,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0.00,0,7,0,0,'',0,1,0,0,0,'',0,0,0,0,0,0);
/*!40000 ALTER TABLE `packets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packets_rad_attr`
--

DROP TABLE IF EXISTS `packets_rad_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packets_rad_attr` (
  `gid` smallint(5) unsigned NOT NULL,
  `key` varchar(32) COLLATE koi8r_bin NOT NULL,
  `value` varchar(255) COLLATE koi8r_bin NOT NULL DEFAULT '',
  KEY `gid` (`gid`),
  KEY `gid-key` (`gid`,`key`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packets_rad_attr`
--

LOCK TABLES `packets_rad_attr` WRITE;
/*!40000 ALTER TABLE `packets_rad_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `packets_rad_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packetsnas`
--

DROP TABLE IF EXISTS `packetsnas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packetsnas` (
  `paknasid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `gid` smallint(5) unsigned NOT NULL,
  `nasid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`paknasid`),
  KEY `gid` (`gid`),
  KEY `nas-gid` (`gid`,`nasid`),
  KEY `nasid` (`nasid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packetsnas`
--

LOCK TABLES `packetsnas` WRITE;
/*!40000 ALTER TABLE `packetsnas` DISABLE KEYS */;
/*!40000 ALTER TABLE `packetsnas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferences` (
  `preferenceid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `preferencename` varchar(128) NOT NULL,
  `programid` int(14) unsigned NOT NULL,
  `stuffid` int(14) unsigned NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`preferenceid`),
  KEY `idname` (`stuffid`,`preferencename`),
  KEY `stuff` (`stuffid`),
  KEY `spid` (`stuffid`,`preferenceid`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=62;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (155,'ClearPreferencesPopUpWindow_autoupdateBox_delay',4,1,'1'),(156,'SubscribersReportWindow_autoupdateBox_delay',4,1,'1'),(157,'ReferencesWindow_2x_autoupdateBox_delay',4,1,'1'),(158,'PaymentsReportWindow_autoupdateBox_delay',4,1,'1'),(159,'SearchWindow_autoupdateBox_delay',4,1,'1'),(160,'OnlineWindow_autoupdateBox_delay',4,1,'1'),(161,'IdentificationWindow_autoupdateBox_delay',4,1,'1'),(168,'TariffsWindow_autoupdateBox_delay',4,1,'1'),(172,'SectorsReferencePopUpWindow_autoupdateBox_delay',4,1,'1'),(179,'DevicesReferencePopUpWindow_autoupdateBox_delay',4,1,'1'),(180,'ConfirmPopUpWindow_autoupdateBox_delay',4,1,'1'),(190,'IpPoolsListPopUpWindow_autoupdateBox_delay',4,1,'1'),(193,'IpPoolsReferencePopUpWindow_autoupdateBox_delay',4,1,'1'),(194,'ip_pools_list_window_align',4,1,'popUpWindowsBox'),(195,'AddIpsToIpPoolPopUpWindow_autoupdateBox_delay',4,1,'1'),(196,'system_options_pop_up_window_align',4,1,'popUpWindowsBox'),(197,'SystemOptionsPopUpWindow_autoupdateBox_delay',4,1,'1'),(203,'NasServersReferencePopUpWindow_autoupdateBox_delay',4,1,'1'),(211,'sectors_reference_pop_up_window_align',4,1,'popUpWindowsBox'),(213,'selected_index',4,1,'0'),(222,'nas_servers_reference_pop_up_window_align',4,1,'popUpWindowsBox'),(260,'GraphicsWindow_autoupdateBox_delay',4,1,'1'),(262,'EditTariffPopUpWindow_autoupdateBox_delay',4,1,'1'),(263,'auto_launch;SearchWindow',1,1,''),(265,'user_info_box_info_box_width',4,1,'370'),(266,'SearchWindow_SearchWindowFiltersBox_emptySearchCheckBox_selected',4,1,'0'),(267,'AccountPopUpWindow_33x_autoupdateBox_delay',4,1,'1');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `gid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `week_day` tinyint(1) NOT NULL DEFAULT '0',
  `h0` double(8,6) NOT NULL DEFAULT '0.000000',
  `input0` double(8,6) NOT NULL DEFAULT '0.000000',
  `output0` double(8,6) NOT NULL DEFAULT '0.000000',
  `h1` double(8,6) NOT NULL DEFAULT '0.000000',
  `input1` double(8,6) NOT NULL DEFAULT '0.000000',
  `output1` double(8,6) NOT NULL DEFAULT '0.000000',
  `h2` double(8,6) NOT NULL DEFAULT '0.000000',
  `input2` double(8,6) NOT NULL DEFAULT '0.000000',
  `output2` double(8,6) NOT NULL DEFAULT '0.000000',
  `h3` double(8,6) NOT NULL DEFAULT '0.000000',
  `input3` double(8,6) NOT NULL DEFAULT '0.000000',
  `output3` double(8,6) NOT NULL DEFAULT '0.000000',
  `h4` double(8,6) NOT NULL DEFAULT '0.000000',
  `input4` double(8,6) NOT NULL DEFAULT '0.000000',
  `output4` double(8,6) NOT NULL DEFAULT '0.000000',
  `h5` double(8,6) NOT NULL DEFAULT '0.000000',
  `input5` double(8,6) NOT NULL DEFAULT '0.000000',
  `output5` double(8,6) NOT NULL DEFAULT '0.000000',
  `h6` double(8,6) NOT NULL DEFAULT '0.000000',
  `input6` double(8,6) NOT NULL DEFAULT '0.000000',
  `output6` double(8,6) NOT NULL DEFAULT '0.000000',
  `h7` double(8,6) NOT NULL DEFAULT '0.000000',
  `input7` double(8,6) NOT NULL DEFAULT '0.000000',
  `output7` double(8,6) NOT NULL DEFAULT '0.000000',
  `h8` double(8,6) NOT NULL DEFAULT '0.000000',
  `input8` double(8,6) NOT NULL DEFAULT '0.000000',
  `output8` double(8,6) NOT NULL DEFAULT '0.000000',
  `h9` double(8,6) NOT NULL DEFAULT '0.000000',
  `input9` double(8,6) NOT NULL DEFAULT '0.000000',
  `output9` double(8,6) NOT NULL DEFAULT '0.000000',
  `h10` double(8,6) NOT NULL DEFAULT '0.000000',
  `input10` double(8,6) NOT NULL DEFAULT '0.000000',
  `output10` double(8,6) NOT NULL DEFAULT '0.000000',
  `h11` double(8,6) NOT NULL DEFAULT '0.000000',
  `input11` double(8,6) NOT NULL DEFAULT '0.000000',
  `output11` double(8,6) NOT NULL DEFAULT '0.000000',
  `h12` double(8,6) NOT NULL DEFAULT '0.000000',
  `input12` double(8,6) NOT NULL DEFAULT '0.000000',
  `output12` double(8,6) NOT NULL DEFAULT '0.000000',
  `h13` double(8,6) NOT NULL DEFAULT '0.000000',
  `input13` double(8,6) NOT NULL DEFAULT '0.000000',
  `output13` double(8,6) NOT NULL DEFAULT '0.000000',
  `h14` double(8,6) NOT NULL DEFAULT '0.000000',
  `input14` double(8,6) NOT NULL DEFAULT '0.000000',
  `output14` double(8,6) NOT NULL DEFAULT '0.000000',
  `h15` double(8,6) NOT NULL DEFAULT '0.000000',
  `input15` double(8,6) NOT NULL DEFAULT '0.000000',
  `output15` double(8,6) NOT NULL DEFAULT '0.000000',
  `h16` double(8,6) NOT NULL DEFAULT '0.000000',
  `input16` double(8,6) NOT NULL DEFAULT '0.000000',
  `output16` double(8,6) NOT NULL DEFAULT '0.000000',
  `h17` double(8,6) NOT NULL DEFAULT '0.000000',
  `input17` double(8,6) NOT NULL DEFAULT '0.000000',
  `output17` double(8,6) NOT NULL DEFAULT '0.000000',
  `h18` double(8,6) NOT NULL DEFAULT '0.000000',
  `input18` double(8,6) NOT NULL DEFAULT '0.000000',
  `output18` double(8,6) NOT NULL DEFAULT '0.000000',
  `h19` double(8,6) NOT NULL DEFAULT '0.000000',
  `input19` double(8,6) NOT NULL DEFAULT '0.000000',
  `output19` double(8,6) NOT NULL DEFAULT '0.000000',
  `h20` double(8,6) NOT NULL DEFAULT '0.000000',
  `input20` double(8,6) NOT NULL DEFAULT '0.000000',
  `output20` double(8,6) NOT NULL DEFAULT '0.000000',
  `h21` double(8,6) NOT NULL DEFAULT '0.000000',
  `input21` double(8,6) NOT NULL DEFAULT '0.000000',
  `output21` double(8,6) NOT NULL DEFAULT '0.000000',
  `h22` double(8,6) NOT NULL DEFAULT '0.000000',
  `input22` double(8,6) NOT NULL DEFAULT '0.000000',
  `output22` double(8,6) NOT NULL DEFAULT '0.000000',
  `h23` double(8,6) NOT NULL DEFAULT '0.000000',
  `input23` double(8,6) NOT NULL DEFAULT '0.000000',
  `output23` double(8,6) NOT NULL DEFAULT '0.000000',
  `floor` double NOT NULL DEFAULT '0',
  `floor_payments` double(8,6) NOT NULL DEFAULT '0.000000',
  KEY `gid` (`gid`),
  KEY `week` (`week_day`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programs` (
  `programid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `programname` varchar(45) NOT NULL,
  `version` char(8) NOT NULL,
  `build` int(6) NOT NULL,
  PRIMARY KEY (`programid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=33;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (2,'MikBill Stat','2.01',71111),(3,'MikBill Monitor','1.01',71111),(4,'MikBill Ticket','1.0',71111),(6,'MiKBiLL Admin','2.7.24',141124);
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `queue_active`
--

DROP TABLE IF EXISTS `queue_active`;
/*!50001 DROP VIEW IF EXISTS `queue_active`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `queue_active` (
 `m_id` tinyint NOT NULL,
  `mq_name` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `m_created` tinyint NOT NULL,
  `m_status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `queue_messages`
--

DROP TABLE IF EXISTS `queue_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue_messages` (
  `m_id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT 'Simple rolling counter (no real use except to keep mySQL happy)',
  `mq_id` bigint(8) NOT NULL DEFAULT '0' COMMENT 'The queue that this message is targeted',
  `m_msg` text NOT NULL COMMENT 'The message to the task processor in JSON format',
  `m_action` varchar(255) NOT NULL DEFAULT '' COMMENT 'дополнительный параметр сообщения',
  `m_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'When message was received',
  `m_log` text COMMENT 'Log of task (reserved for later)',
  `m_respond` varchar(128) DEFAULT NULL COMMENT 'url to poll on completion',
  `m_status` enum('new','open','done','closed','failed') NOT NULL DEFAULT 'new',
  `m_started` timestamp NULL DEFAULT NULL COMMENT 'When the task processor was last initiated',
  `m_reply` text COMMENT 'Task response in JSON format',
  `m_rc` int(11) NOT NULL DEFAULT '0' COMMENT 'Consume return code',
  `m_completed` timestamp NULL DEFAULT NULL COMMENT 'When the task completed processing and returned',
  `m_errors` int(11) NOT NULL DEFAULT '0' COMMENT 'The number of times this task entry has failed',
  `m_uuid` varchar(36) NOT NULL DEFAULT '' COMMENT 'Message uuid generated by the server for api access',
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `m_uuid` (`m_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_messages`
--

LOCK TABLES `queue_messages` WRITE;
/*!40000 ALTER TABLE `queue_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_types`
--

DROP TABLE IF EXISTS `queue_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue_types` (
  `mq_id` bigint(8) NOT NULL AUTO_INCREMENT COMMENT 'Internal message queue id',
  `mq_name` varchar(64) NOT NULL COMMENT 'The name used to access this queue programtically',
  `mq_type` enum('message','api','fork','intval','dataval') NOT NULL DEFAULT 'message' COMMENT 'What type of queue is this',
  `mq_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Note of when this Queue was initially written to (or created ''manually'')',
  `mq_timeout` int(8) NOT NULL DEFAULT '30' COMMENT 'Retry timeout',
  `mq_maxerrors` int(11) NOT NULL DEFAULT '5' COMMENT 'Maximum number of times to try a task before giving up',
  `mq_desc` text COMMENT 'Additional (optional) comments about this queue',
  `mq_respond` varchar(128) DEFAULT NULL COMMENT 'Optional url to send response information (overriden by m_respond)n/loop',
  `mq_intval` bigint(8) DEFAULT NULL COMMENT 'Value for queue type intval (otherwise null)',
  `mq_data` text COMMENT 'Value for queue type dataval and fork with list of messages queues to write to (otherwise null)',
  PRIMARY KEY (`mq_id`),
  UNIQUE KEY `mq_name` (`mq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_types`
--

LOCK TABLES `queue_types` WRITE;
/*!40000 ALTER TABLE `queue_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radacct`
--

DROP TABLE IF EXISTS `radacct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL,
  `acctuniqueid` varchar(32) NOT NULL,
  `username` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `uid` bigint(16) unsigned DEFAULT NULL,
  `gid` smallint(5) unsigned DEFAULT NULL,
  `nasipaddress` varchar(15) NOT NULL,
  `nasportid` varchar(15) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL,
  `callingstationid` varchar(50) NOT NULL,
  `acctterminatecause` varchar(32) NOT NULL,
  `framedipaddress` varchar(15) NOT NULL,
  `last_change` int(10) unsigned NOT NULL DEFAULT '0',
  `before_billing` double(20,6) NOT NULL,
  `billing_minus` double(20,6) NOT NULL,
  PRIMARY KEY (`radacctid`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `acctstarttime` (`acctstarttime`),
  KEY `acctstoptime` (`acctstoptime`),
  KEY `acctuniqueid` (`acctuniqueid`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `framed-terminate` (`framedipaddress`,`acctterminatecause`),
  KEY `nasipaddress` (`nasipaddress`),
  KEY `ses-user-nas` (`acctsessionid`,`username`,`nasipaddress`),
  KEY `uid` (`uid`,`gid`),
  KEY `uniq-user-nas` (`acctuniqueid`,`username`,`nasipaddress`),
  KEY `user_uid` (`uid`),
  KEY `username` (`username`),
  KEY `user-start-time` (`username`,`acctstarttime`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radacct`
--

LOCK TABLES `radacct` WRITE;
/*!40000 ALTER TABLE `radacct` DISABLE KEYS */;
/*!40000 ALTER TABLE `radacct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radacctbras`
--

DROP TABLE IF EXISTS `radacctbras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radacctbras` (
  `radacctid` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL,
  `acctuniqueid` varchar(32) NOT NULL,
  `username` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `uid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nasipaddress` varchar(15) NOT NULL,
  `nasportid` varchar(15) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL,
  `callingstationid` varchar(50) NOT NULL,
  `acctterminatecause` varchar(32) NOT NULL,
  `framedipaddress` varchar(15) NOT NULL,
  `last_change` int(10) unsigned NOT NULL DEFAULT '0',
  `before_billing` double(20,6) NOT NULL,
  `billing_minus` double(20,6) NOT NULL,
  PRIMARY KEY (`radacctid`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `acctstarttime` (`acctstarttime`),
  KEY `acctuniqueid` (`acctuniqueid`),
  KEY `framedipaddress` (`framedipaddress`),
  KEY `nasipaddress` (`nasipaddress`),
  KEY `ses-user-nas` (`acctsessionid`,`username`,`nasipaddress`),
  KEY `time_user` (`username`,`acctsessionid`,`acctsessiontime`,`acctstarttime`,`acctstoptime`),
  KEY `uid` (`uid`,`gid`),
  KEY `uniq-user-nas` (`acctuniqueid`,`username`,`nasipaddress`),
  KEY `user_uid` (`uid`),
  KEY `username` (`username`),
  KEY `user-start-time` (`username`,`acctstarttime`),
  KEY `gid` (`gid`)
) ENGINE=MEMORY DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=1820;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radacctbras`
--

LOCK TABLES `radacctbras` WRITE;
/*!40000 ALTER TABLE `radacctbras` DISABLE KEYS */;
/*!40000 ALTER TABLE `radacctbras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radacctmem`
--

DROP TABLE IF EXISTS `radacctmem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radacctmem` (
  `acctsessionid` varchar(64) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `acctuniqueid` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `uid` bigint(16) unsigned NOT NULL COMMENT 'UID абонента',
  `gid` smallint(5) unsigned NOT NULL COMMENT 'тарифа в момент авторизации',
  `blocked` tinyint(2) unsigned NOT NULL COMMENT 'Блокировка в момент авторизации',
  `deposit` double(20,6) NOT NULL COMMENT 'Баланс при авторизации',
  `credit` double(20,6) NOT NULL,
  `last_change` int(10) unsigned NOT NULL COMMENT 'Последнее изменение',
  KEY `uid` (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Вспомогательная таблица для raddact типа Memory';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radacctmem`
--

LOCK TABLES `radacctmem` WRITE;
/*!40000 ALTER TABLE `radacctmem` DISABLE KEYS */;
/*!40000 ALTER TABLE `radacctmem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radacctterminatecause`
--

DROP TABLE IF EXISTS `radacctterminatecause`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radacctterminatecause` (
  `acctterminatecauseid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acctterminatecause` varchar(32) NOT NULL,
  PRIMARY KEY (`acctterminatecauseid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=1365;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radacctterminatecause`
--

LOCK TABLES `radacctterminatecause` WRITE;
/*!40000 ALTER TABLE `radacctterminatecause` DISABLE KEYS */;
INSERT INTO `radacctterminatecause` VALUES (1,'Online'),(2,'User-Request'),(3,'Admin-Reboot'),(4,'Admin-Reset'),(5,'BILL-Request'),(6,'User-Error'),(7,'Lost-Carrier'),(8,'Lost-Service'),(9,'NAS-Error'),(10,'NAS-Request'),(11,'Port-Error'),(12,'Service-Unavailable'),(13,'Double session stop');
/*!40000 ALTER TABLE `radacctterminatecause` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raddactnew`
--

DROP TABLE IF EXISTS `raddactnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raddactnew` (
  `radacctid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(32) NOT NULL,
  `acctuniqueid` bigint(20) NOT NULL,
  `username` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `uid` int(10) unsigned DEFAULT NULL,
  `gid` int(10) unsigned DEFAULT NULL,
  `nasid` int(10) unsigned NOT NULL,
  `nasportid` int(10) unsigned NOT NULL,
  `acctstarttime` timestamp NULL DEFAULT NULL,
  `acctstoptime` timestamp NULL DEFAULT NULL,
  `acctsessiontime` int(10) unsigned NOT NULL DEFAULT '0',
  `acctinputoctets` bigint(20) unsigned NOT NULL DEFAULT '0',
  `acctoutputoctets` bigint(20) unsigned NOT NULL DEFAULT '0',
  `calledstationid` varchar(16) NOT NULL,
  `callingstationid` varchar(17) NOT NULL,
  `acctterminatecauseid` int(10) unsigned NOT NULL,
  `framedipaddress` int(10) unsigned NOT NULL,
  `last_change` int(10) unsigned NOT NULL DEFAULT '0',
  `before_billing` double(20,6) NOT NULL,
  `billing_minus` double(20,6) NOT NULL,
  PRIMARY KEY (`radacctid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raddactnew`
--

LOCK TABLES `raddactnew` WRITE;
/*!40000 ALTER TABLE `raddactnew` DISABLE KEYS */;
/*!40000 ALTER TABLE `raddactnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radgroupcheck`
--

DROP TABLE IF EXISTS `radgroupcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radgroupcheck` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` char(64) NOT NULL,
  `attribute` char(64) NOT NULL,
  `op` char(2) NOT NULL DEFAULT '==',
  `value` char(253) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=388;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radgroupcheck`
--

LOCK TABLES `radgroupcheck` WRITE;
/*!40000 ALTER TABLE `radgroupcheck` DISABLE KEYS */;
INSERT INTO `radgroupcheck` VALUES (1,'system','Simultaneous-Use',':=','1');
/*!40000 ALTER TABLE `radgroupcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radgroupreply`
--

DROP TABLE IF EXISTS `radgroupreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radgroupreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` char(64) NOT NULL,
  `attribute` char(64) NOT NULL,
  `op` char(2) NOT NULL DEFAULT ':=',
  `value` char(253) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupname` (`groupname`(32))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=388;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radgroupreply`
--

LOCK TABLES `radgroupreply` WRITE;
/*!40000 ALTER TABLE `radgroupreply` DISABLE KEYS */;
INSERT INTO `radgroupreply` VALUES (1,'system','Framed-Protocol',':=','PPP'),(2,'system','Service-Type',':=','Framed-User'),(4,'system','Framed-Protocol',':=','PPP'),(5,'system','Framed-IP-Netmask',':=','255.255.255.255'),(6,'system','Port-Limit',':=','1'),(7,'system','Acct-Interim-Interval',':=','300'),(8,'system','Framed-Compression',':=','Van-Jacobson-TCP-IP'),(9,'system','Framed-MTU',':=','1500');
/*!40000 ALTER TABLE `radgroupreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radnas`
--

DROP TABLE IF EXISTS `radnas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radnas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nasname` char(32) NOT NULL,
  `shortname` char(32) DEFAULT NULL,
  `type` char(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` char(32) NOT NULL DEFAULT 'secret',
  `community` char(50) DEFAULT NULL,
  `description` char(200) DEFAULT 'RADIUS Client',
  `nastype` char(32) NOT NULL DEFAULT 'mikrotik',
  `shapertype` int(3) NOT NULL DEFAULT '0',
  `impruport` char(5) DEFAULT '3799',
  `monitoring_nas_do` tinyint(2) NOT NULL DEFAULT '1',
  `world_iface` char(32) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT NULL,
  `country_iface` char(32) CHARACTER SET koi8r COLLATE koi8r_bin DEFAULT NULL,
  `use_wolrd` tinyint(2) NOT NULL DEFAULT '0',
  `use_country` tinyint(2) NOT NULL DEFAULT '0',
  `naslogin` char(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `naspass` char(32) NOT NULL,
  `usessh` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `macaslogin` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `calleridauth` tinyint(2) NOT NULL DEFAULT '0',
  `usepass` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `swid` int(10) unsigned NOT NULL DEFAULT '0',
  `vlan_control_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `ipauth` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `mikver` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nasname` (`nasname`),
  KEY `type` (`nastype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=568;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radnas`
--

LOCK TABLES `radnas` WRITE;
/*!40000 ALTER TABLE `radnas` DISABLE KEYS */;
INSERT INTO `radnas` VALUES (1,'127.0.0.1','radius check','other',NULL,'testing123',NULL,'','pppd',0,'3799',0,'','',0,0,'','',0,0,0,1,0,0,0,0),(2,'10.0.0.1','NAS 1','other',NULL,'secret',NULL,'Mikrotik 6x PPPoE example','mikrotik',4,'3799',0,'','',0,0,'','',0,0,0,1,0,0,0,2),(3,'10.0.1.1','NAS 2','other',NULL,'secret',NULL,'Mikrotik 6x HOTSPOT mac auth example','HotSpot',4,'3799',1,'','',0,0,'','',0,0,1,0,0,0,0,2);
/*!40000 ALTER TABLE `radnas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radnaslog`
--

DROP TABLE IF EXISTS `radnaslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radnaslog` (
  `naslogid` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `nasipaddress` char(15) NOT NULL,
  `acctstatustype` varchar(32) NOT NULL,
  `nasIdentifier` varchar(64) NOT NULL,
  PRIMARY KEY (`naslogid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radnaslog`
--

LOCK TABLES `radnaslog` WRITE;
/*!40000 ALTER TABLE `radnaslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `radnaslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `radpostauth`
--

DROP TABLE IF EXISTS `radpostauth`;
/*!50001 DROP VIEW IF EXISTS `radpostauth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `radpostauth` (
 `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `pass` tinyint NOT NULL,
  `packettype` tinyint NOT NULL,
  `replymessage` tinyint NOT NULL,
  `nasipaddress` tinyint NOT NULL,
  `nasportid` tinyint NOT NULL,
  `nasident` tinyint NOT NULL,
  `callingstationid` tinyint NOT NULL,
  `authdate` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `radpostauthnew`
--

DROP TABLE IF EXISTS `radpostauthnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radpostauthnew` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `pass` varchar(32) NOT NULL,
  `packettypeid` int(10) unsigned NOT NULL,
  `replymessageid` int(10) unsigned NOT NULL,
  `nasid` int(10) unsigned NOT NULL,
  `nasportid` int(10) unsigned NOT NULL,
  `callingstationid` varchar(64) NOT NULL,
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`username`),
  KEY `namedate` (`username`,`authdate`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radpostauthnew`
--

LOCK TABLES `radpostauthnew` WRITE;
/*!40000 ALTER TABLE `radpostauthnew` DISABLE KEYS */;
/*!40000 ALTER TABLE `radpostauthnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radpostauthpackettype`
--

DROP TABLE IF EXISTS `radpostauthpackettype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radpostauthpackettype` (
  `packettypeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `packettype` varchar(64) NOT NULL,
  PRIMARY KEY (`packettypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=8192;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radpostauthpackettype`
--

LOCK TABLES `radpostauthpackettype` WRITE;
/*!40000 ALTER TABLE `radpostauthpackettype` DISABLE KEYS */;
INSERT INTO `radpostauthpackettype` VALUES (1,'Accept'),(2,'Reject'),(5,'Заморожен'),(10,'Отключен'),(11,'Удален');
/*!40000 ALTER TABLE `radpostauthpackettype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radpostauthreplymessage`
--

DROP TABLE IF EXISTS `radpostauthreplymessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radpostauthreplymessage` (
  `replymessageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `replymessage` varchar(64) NOT NULL,
  PRIMARY KEY (`replymessageid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radpostauthreplymessage`
--

LOCK TABLES `radpostauthreplymessage` WRITE;
/*!40000 ALTER TABLE `radpostauthreplymessage` DISABLE KEYS */;
INSERT INTO `radpostauthreplymessage` VALUES (1,'Успех'),(2,'Несовпадение'),(3,'PAP Успешный вход'),(4,'PAP Неправильный пароль'),(5,'CHAP Успешный вход'),(6,'CHAP Неправильный пароль'),(7,'Интернет у него отключен'),(8,'В пул без денег'),(9,'У абонента отключена локальная сеть'),(10,'Не найден в базе данных вызывающий IP/MAC'),(11,'Пользователь в группе отключенных'),(12,'Пользователь в группе удаленных'),(13,'IP/MAC не совпадает с привязкой'),(14,'Нет средств и закончилися пул без денег'),(15,'У абонента недостаточно средств'),(16,'IP уже выдан другому пользователю'),(17,'IP не выдан'),(18,'результат неопределен'),(19,'Учетка уже в Online'),(20,'Дубликат IP в Pool'),(21,'IP не найден в пуле'),(22,'Учетная запись заблокирована'),(23,'Закончились деньги'),(24,'2й раз не пустим'),(25,'MSCHAP-v1 Успешный вход'),(26,'MSCHAP-v1 Неправильный пароль'),(27,'MSCHAP-v2 Успешный вход'),(28,'MSCHAP-v2 Неправильный пароль'),(29,'Выкинуть.Accel Пополнение счета.'),(30,'Выкинуть.Accel Пополнение счета.'),(31,'Пользователь в группе неизвестные');
/*!40000 ALTER TABLE `radpostauthreplymessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors`
--

DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectors` (
  `sectorid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sector` char(64) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `iface` char(10) NOT NULL,
  `classless_route` blob,
  `static_routes` blob,
  `mask` char(15) DEFAULT '255.255.255.0',
  `subnet` char(15) DEFAULT '',
  `broadcast` char(15) DEFAULT '',
  `dns_serv` char(15) DEFAULT '',
  `wins_serv` char(15) DEFAULT '',
  `netbios_dd_serv` char(15) DEFAULT '',
  `routers` char(15) DEFAULT '',
  `dns_serv2` char(15) DEFAULT '',
  `time_serv` char(15) DEFAULT '',
  `dhcp_ranges` char(200) NOT NULL,
  `shared_network1` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `shared_network2` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `shared_network3` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `vlanid` int(4) unsigned NOT NULL DEFAULT '1',
  `del_ip1` varchar(15) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '',
  `del_ip2` varchar(15) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '',
  `del_ip3` varchar(15) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '',
  `del_ip4` varchar(15) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '',
  `ip_unnumbered_mode` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `sectorid` (`sectorid`),
  KEY `vlanid` (`vlanid`),
  KEY `sector` (`sector`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=168;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
INSERT INTO `sectors` VALUES (1,'10.0.0.1','segment 1','','','255.255.255.0','10.0.0.0','10.0.0.255','10.0.0.1','','','10.0.0.1','10.0.0.2','','',0,0,0,1,'10.0.0.1','','10.0.0.2','',0),(2,'10.0.1.1','segment 2','','','255.255.255.0','10.0.1.0','10.0.1.255','10.0.1.1','','','10.0.1.1','8.8.8.8','','',0,0,0,1,'10.0.1.1','','','',0);
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectorspool`
--

DROP TABLE IF EXISTS `sectorspool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectorspool` (
  `ip2long` bigint(64) NOT NULL,
  `ip` char(15) COLLATE koi8r_bin NOT NULL,
  `sectorid` smallint(5) unsigned NOT NULL,
  KEY `sectorid` (`sectorid`),
  KEY `sector-ip` (`sectorid`,`ip`),
  KEY `ip-text` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin AVG_ROW_LENGTH=26;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectorspool`
--

LOCK TABLES `sectorspool` WRITE;
/*!40000 ALTER TABLE `sectorspool` DISABLE KEYS */;
INSERT INTO `sectorspool` VALUES (167772163,'10.0.0.3',1),(167772164,'10.0.0.4',1),(167772165,'10.0.0.5',1),(167772166,'10.0.0.6',1),(167772167,'10.0.0.7',1),(167772168,'10.0.0.8',1),(167772169,'10.0.0.9',1),(167772170,'10.0.0.10',1),(167772171,'10.0.0.11',1),(167772172,'10.0.0.12',1),(167772173,'10.0.0.13',1),(167772174,'10.0.0.14',1),(167772175,'10.0.0.15',1),(167772176,'10.0.0.16',1),(167772177,'10.0.0.17',1),(167772178,'10.0.0.18',1),(167772179,'10.0.0.19',1),(167772180,'10.0.0.20',1),(167772181,'10.0.0.21',1),(167772182,'10.0.0.22',1),(167772183,'10.0.0.23',1),(167772184,'10.0.0.24',1),(167772185,'10.0.0.25',1),(167772186,'10.0.0.26',1),(167772187,'10.0.0.27',1),(167772188,'10.0.0.28',1),(167772189,'10.0.0.29',1),(167772190,'10.0.0.30',1),(167772191,'10.0.0.31',1),(167772192,'10.0.0.32',1),(167772193,'10.0.0.33',1),(167772194,'10.0.0.34',1),(167772195,'10.0.0.35',1),(167772196,'10.0.0.36',1),(167772197,'10.0.0.37',1),(167772198,'10.0.0.38',1),(167772199,'10.0.0.39',1),(167772200,'10.0.0.40',1),(167772201,'10.0.0.41',1),(167772202,'10.0.0.42',1),(167772203,'10.0.0.43',1),(167772204,'10.0.0.44',1),(167772205,'10.0.0.45',1),(167772206,'10.0.0.46',1),(167772207,'10.0.0.47',1),(167772208,'10.0.0.48',1),(167772209,'10.0.0.49',1),(167772210,'10.0.0.50',1),(167772211,'10.0.0.51',1),(167772212,'10.0.0.52',1),(167772213,'10.0.0.53',1),(167772214,'10.0.0.54',1),(167772215,'10.0.0.55',1),(167772216,'10.0.0.56',1),(167772217,'10.0.0.57',1),(167772218,'10.0.0.58',1),(167772219,'10.0.0.59',1),(167772220,'10.0.0.60',1),(167772221,'10.0.0.61',1),(167772222,'10.0.0.62',1),(167772223,'10.0.0.63',1),(167772224,'10.0.0.64',1),(167772225,'10.0.0.65',1),(167772226,'10.0.0.66',1),(167772227,'10.0.0.67',1),(167772228,'10.0.0.68',1),(167772229,'10.0.0.69',1),(167772230,'10.0.0.70',1),(167772231,'10.0.0.71',1),(167772232,'10.0.0.72',1),(167772233,'10.0.0.73',1),(167772234,'10.0.0.74',1),(167772235,'10.0.0.75',1),(167772236,'10.0.0.76',1),(167772237,'10.0.0.77',1),(167772238,'10.0.0.78',1),(167772239,'10.0.0.79',1),(167772240,'10.0.0.80',1),(167772241,'10.0.0.81',1),(167772242,'10.0.0.82',1),(167772243,'10.0.0.83',1),(167772244,'10.0.0.84',1),(167772245,'10.0.0.85',1),(167772246,'10.0.0.86',1),(167772247,'10.0.0.87',1),(167772248,'10.0.0.88',1),(167772249,'10.0.0.89',1),(167772250,'10.0.0.90',1),(167772251,'10.0.0.91',1),(167772252,'10.0.0.92',1),(167772253,'10.0.0.93',1),(167772254,'10.0.0.94',1),(167772255,'10.0.0.95',1),(167772256,'10.0.0.96',1),(167772257,'10.0.0.97',1),(167772258,'10.0.0.98',1),(167772259,'10.0.0.99',1),(167772260,'10.0.0.100',1),(167772261,'10.0.0.101',1),(167772262,'10.0.0.102',1),(167772263,'10.0.0.103',1),(167772264,'10.0.0.104',1),(167772265,'10.0.0.105',1),(167772266,'10.0.0.106',1),(167772267,'10.0.0.107',1),(167772268,'10.0.0.108',1),(167772269,'10.0.0.109',1),(167772270,'10.0.0.110',1),(167772271,'10.0.0.111',1),(167772272,'10.0.0.112',1),(167772273,'10.0.0.113',1),(167772274,'10.0.0.114',1),(167772275,'10.0.0.115',1),(167772276,'10.0.0.116',1),(167772277,'10.0.0.117',1),(167772278,'10.0.0.118',1),(167772279,'10.0.0.119',1),(167772280,'10.0.0.120',1),(167772281,'10.0.0.121',1),(167772282,'10.0.0.122',1),(167772283,'10.0.0.123',1),(167772284,'10.0.0.124',1),(167772285,'10.0.0.125',1),(167772286,'10.0.0.126',1),(167772287,'10.0.0.127',1),(167772288,'10.0.0.128',1),(167772289,'10.0.0.129',1),(167772290,'10.0.0.130',1),(167772291,'10.0.0.131',1),(167772292,'10.0.0.132',1),(167772293,'10.0.0.133',1),(167772294,'10.0.0.134',1),(167772295,'10.0.0.135',1),(167772296,'10.0.0.136',1),(167772297,'10.0.0.137',1),(167772298,'10.0.0.138',1),(167772299,'10.0.0.139',1),(167772300,'10.0.0.140',1),(167772301,'10.0.0.141',1),(167772302,'10.0.0.142',1),(167772303,'10.0.0.143',1),(167772304,'10.0.0.144',1),(167772305,'10.0.0.145',1),(167772306,'10.0.0.146',1),(167772307,'10.0.0.147',1),(167772308,'10.0.0.148',1),(167772309,'10.0.0.149',1),(167772310,'10.0.0.150',1),(167772311,'10.0.0.151',1),(167772312,'10.0.0.152',1),(167772313,'10.0.0.153',1),(167772314,'10.0.0.154',1),(167772315,'10.0.0.155',1),(167772316,'10.0.0.156',1),(167772317,'10.0.0.157',1),(167772318,'10.0.0.158',1),(167772319,'10.0.0.159',1),(167772320,'10.0.0.160',1),(167772321,'10.0.0.161',1),(167772322,'10.0.0.162',1),(167772323,'10.0.0.163',1),(167772324,'10.0.0.164',1),(167772325,'10.0.0.165',1),(167772326,'10.0.0.166',1),(167772327,'10.0.0.167',1),(167772328,'10.0.0.168',1),(167772329,'10.0.0.169',1),(167772330,'10.0.0.170',1),(167772331,'10.0.0.171',1),(167772332,'10.0.0.172',1),(167772333,'10.0.0.173',1),(167772334,'10.0.0.174',1),(167772335,'10.0.0.175',1),(167772336,'10.0.0.176',1),(167772337,'10.0.0.177',1),(167772338,'10.0.0.178',1),(167772339,'10.0.0.179',1),(167772340,'10.0.0.180',1),(167772341,'10.0.0.181',1),(167772342,'10.0.0.182',1),(167772343,'10.0.0.183',1),(167772344,'10.0.0.184',1),(167772345,'10.0.0.185',1),(167772346,'10.0.0.186',1),(167772347,'10.0.0.187',1),(167772348,'10.0.0.188',1),(167772349,'10.0.0.189',1),(167772350,'10.0.0.190',1),(167772351,'10.0.0.191',1),(167772352,'10.0.0.192',1),(167772353,'10.0.0.193',1),(167772354,'10.0.0.194',1),(167772355,'10.0.0.195',1),(167772356,'10.0.0.196',1),(167772357,'10.0.0.197',1),(167772358,'10.0.0.198',1),(167772359,'10.0.0.199',1),(167772360,'10.0.0.200',1),(167772361,'10.0.0.201',1),(167772362,'10.0.0.202',1),(167772363,'10.0.0.203',1),(167772364,'10.0.0.204',1),(167772365,'10.0.0.205',1),(167772366,'10.0.0.206',1),(167772367,'10.0.0.207',1),(167772368,'10.0.0.208',1),(167772369,'10.0.0.209',1),(167772370,'10.0.0.210',1),(167772371,'10.0.0.211',1),(167772372,'10.0.0.212',1),(167772373,'10.0.0.213',1),(167772374,'10.0.0.214',1),(167772375,'10.0.0.215',1),(167772376,'10.0.0.216',1),(167772377,'10.0.0.217',1),(167772378,'10.0.0.218',1),(167772379,'10.0.0.219',1),(167772380,'10.0.0.220',1),(167772381,'10.0.0.221',1),(167772382,'10.0.0.222',1),(167772383,'10.0.0.223',1),(167772384,'10.0.0.224',1),(167772385,'10.0.0.225',1),(167772386,'10.0.0.226',1),(167772387,'10.0.0.227',1),(167772388,'10.0.0.228',1),(167772389,'10.0.0.229',1),(167772390,'10.0.0.230',1),(167772391,'10.0.0.231',1),(167772392,'10.0.0.232',1),(167772393,'10.0.0.233',1),(167772394,'10.0.0.234',1),(167772395,'10.0.0.235',1),(167772396,'10.0.0.236',1),(167772397,'10.0.0.237',1),(167772398,'10.0.0.238',1),(167772399,'10.0.0.239',1),(167772400,'10.0.0.240',1),(167772401,'10.0.0.241',1),(167772402,'10.0.0.242',1),(167772403,'10.0.0.243',1),(167772404,'10.0.0.244',1),(167772405,'10.0.0.245',1),(167772406,'10.0.0.246',1),(167772407,'10.0.0.247',1),(167772408,'10.0.0.248',1),(167772409,'10.0.0.249',1),(167772410,'10.0.0.250',1),(167772411,'10.0.0.251',1),(167772412,'10.0.0.252',1),(167772413,'10.0.0.253',1),(167772414,'10.0.0.254',1),(167772419,'10.0.1.3',2),(167772420,'10.0.1.4',2),(167772421,'10.0.1.5',2),(167772422,'10.0.1.6',2),(167772423,'10.0.1.7',2),(167772424,'10.0.1.8',2),(167772425,'10.0.1.9',2),(167772426,'10.0.1.10',2),(167772427,'10.0.1.11',2),(167772428,'10.0.1.12',2),(167772429,'10.0.1.13',2),(167772430,'10.0.1.14',2),(167772431,'10.0.1.15',2),(167772432,'10.0.1.16',2),(167772433,'10.0.1.17',2),(167772434,'10.0.1.18',2),(167772435,'10.0.1.19',2),(167772436,'10.0.1.20',2),(167772437,'10.0.1.21',2),(167772438,'10.0.1.22',2),(167772439,'10.0.1.23',2),(167772440,'10.0.1.24',2),(167772441,'10.0.1.25',2),(167772442,'10.0.1.26',2),(167772443,'10.0.1.27',2),(167772444,'10.0.1.28',2),(167772445,'10.0.1.29',2),(167772446,'10.0.1.30',2),(167772447,'10.0.1.31',2),(167772448,'10.0.1.32',2),(167772449,'10.0.1.33',2),(167772450,'10.0.1.34',2),(167772451,'10.0.1.35',2),(167772452,'10.0.1.36',2),(167772453,'10.0.1.37',2),(167772454,'10.0.1.38',2),(167772455,'10.0.1.39',2),(167772456,'10.0.1.40',2),(167772457,'10.0.1.41',2),(167772458,'10.0.1.42',2),(167772459,'10.0.1.43',2),(167772460,'10.0.1.44',2),(167772461,'10.0.1.45',2),(167772462,'10.0.1.46',2),(167772463,'10.0.1.47',2),(167772464,'10.0.1.48',2),(167772465,'10.0.1.49',2),(167772466,'10.0.1.50',2),(167772467,'10.0.1.51',2),(167772468,'10.0.1.52',2),(167772469,'10.0.1.53',2),(167772470,'10.0.1.54',2),(167772471,'10.0.1.55',2),(167772472,'10.0.1.56',2),(167772473,'10.0.1.57',2),(167772474,'10.0.1.58',2),(167772475,'10.0.1.59',2),(167772476,'10.0.1.60',2),(167772477,'10.0.1.61',2),(167772478,'10.0.1.62',2),(167772479,'10.0.1.63',2),(167772480,'10.0.1.64',2),(167772481,'10.0.1.65',2),(167772482,'10.0.1.66',2),(167772483,'10.0.1.67',2),(167772484,'10.0.1.68',2),(167772485,'10.0.1.69',2),(167772486,'10.0.1.70',2),(167772487,'10.0.1.71',2),(167772488,'10.0.1.72',2),(167772489,'10.0.1.73',2),(167772490,'10.0.1.74',2),(167772491,'10.0.1.75',2),(167772492,'10.0.1.76',2),(167772493,'10.0.1.77',2),(167772494,'10.0.1.78',2),(167772495,'10.0.1.79',2),(167772496,'10.0.1.80',2),(167772497,'10.0.1.81',2),(167772498,'10.0.1.82',2),(167772499,'10.0.1.83',2),(167772500,'10.0.1.84',2),(167772501,'10.0.1.85',2),(167772502,'10.0.1.86',2),(167772503,'10.0.1.87',2),(167772504,'10.0.1.88',2),(167772505,'10.0.1.89',2),(167772506,'10.0.1.90',2),(167772507,'10.0.1.91',2),(167772508,'10.0.1.92',2),(167772509,'10.0.1.93',2),(167772510,'10.0.1.94',2),(167772511,'10.0.1.95',2),(167772512,'10.0.1.96',2),(167772513,'10.0.1.97',2),(167772514,'10.0.1.98',2),(167772515,'10.0.1.99',2),(167772516,'10.0.1.100',2),(167772517,'10.0.1.101',2),(167772518,'10.0.1.102',2),(167772519,'10.0.1.103',2),(167772520,'10.0.1.104',2),(167772521,'10.0.1.105',2),(167772522,'10.0.1.106',2),(167772523,'10.0.1.107',2),(167772524,'10.0.1.108',2),(167772525,'10.0.1.109',2),(167772526,'10.0.1.110',2),(167772527,'10.0.1.111',2),(167772528,'10.0.1.112',2),(167772529,'10.0.1.113',2),(167772530,'10.0.1.114',2),(167772531,'10.0.1.115',2),(167772532,'10.0.1.116',2),(167772533,'10.0.1.117',2),(167772534,'10.0.1.118',2),(167772535,'10.0.1.119',2),(167772536,'10.0.1.120',2),(167772537,'10.0.1.121',2),(167772538,'10.0.1.122',2),(167772539,'10.0.1.123',2),(167772540,'10.0.1.124',2),(167772541,'10.0.1.125',2),(167772542,'10.0.1.126',2),(167772543,'10.0.1.127',2),(167772544,'10.0.1.128',2),(167772545,'10.0.1.129',2),(167772546,'10.0.1.130',2),(167772547,'10.0.1.131',2),(167772548,'10.0.1.132',2),(167772549,'10.0.1.133',2),(167772550,'10.0.1.134',2),(167772551,'10.0.1.135',2),(167772552,'10.0.1.136',2),(167772553,'10.0.1.137',2),(167772554,'10.0.1.138',2),(167772555,'10.0.1.139',2),(167772556,'10.0.1.140',2),(167772557,'10.0.1.141',2),(167772558,'10.0.1.142',2),(167772559,'10.0.1.143',2),(167772560,'10.0.1.144',2),(167772561,'10.0.1.145',2),(167772562,'10.0.1.146',2),(167772563,'10.0.1.147',2),(167772564,'10.0.1.148',2),(167772565,'10.0.1.149',2),(167772566,'10.0.1.150',2),(167772567,'10.0.1.151',2),(167772568,'10.0.1.152',2),(167772569,'10.0.1.153',2),(167772570,'10.0.1.154',2),(167772571,'10.0.1.155',2),(167772572,'10.0.1.156',2),(167772573,'10.0.1.157',2),(167772574,'10.0.1.158',2),(167772575,'10.0.1.159',2),(167772576,'10.0.1.160',2),(167772577,'10.0.1.161',2),(167772578,'10.0.1.162',2),(167772579,'10.0.1.163',2),(167772580,'10.0.1.164',2),(167772581,'10.0.1.165',2),(167772582,'10.0.1.166',2),(167772583,'10.0.1.167',2),(167772584,'10.0.1.168',2),(167772585,'10.0.1.169',2),(167772586,'10.0.1.170',2),(167772587,'10.0.1.171',2),(167772588,'10.0.1.172',2),(167772589,'10.0.1.173',2),(167772590,'10.0.1.174',2),(167772591,'10.0.1.175',2),(167772592,'10.0.1.176',2),(167772593,'10.0.1.177',2),(167772594,'10.0.1.178',2),(167772595,'10.0.1.179',2),(167772596,'10.0.1.180',2),(167772597,'10.0.1.181',2),(167772598,'10.0.1.182',2),(167772599,'10.0.1.183',2),(167772600,'10.0.1.184',2),(167772601,'10.0.1.185',2),(167772602,'10.0.1.186',2),(167772603,'10.0.1.187',2),(167772604,'10.0.1.188',2),(167772605,'10.0.1.189',2),(167772606,'10.0.1.190',2),(167772607,'10.0.1.191',2),(167772608,'10.0.1.192',2),(167772609,'10.0.1.193',2),(167772610,'10.0.1.194',2),(167772611,'10.0.1.195',2),(167772612,'10.0.1.196',2),(167772613,'10.0.1.197',2),(167772614,'10.0.1.198',2),(167772615,'10.0.1.199',2),(167772616,'10.0.1.200',2),(167772617,'10.0.1.201',2),(167772618,'10.0.1.202',2),(167772619,'10.0.1.203',2),(167772620,'10.0.1.204',2),(167772621,'10.0.1.205',2),(167772622,'10.0.1.206',2),(167772623,'10.0.1.207',2),(167772624,'10.0.1.208',2),(167772625,'10.0.1.209',2),(167772626,'10.0.1.210',2),(167772627,'10.0.1.211',2),(167772628,'10.0.1.212',2),(167772629,'10.0.1.213',2),(167772630,'10.0.1.214',2),(167772631,'10.0.1.215',2),(167772632,'10.0.1.216',2),(167772633,'10.0.1.217',2),(167772634,'10.0.1.218',2),(167772635,'10.0.1.219',2),(167772636,'10.0.1.220',2),(167772637,'10.0.1.221',2),(167772638,'10.0.1.222',2),(167772639,'10.0.1.223',2),(167772640,'10.0.1.224',2),(167772641,'10.0.1.225',2),(167772642,'10.0.1.226',2),(167772643,'10.0.1.227',2),(167772644,'10.0.1.228',2),(167772645,'10.0.1.229',2),(167772646,'10.0.1.230',2),(167772647,'10.0.1.231',2),(167772648,'10.0.1.232',2),(167772649,'10.0.1.233',2),(167772650,'10.0.1.234',2),(167772651,'10.0.1.235',2),(167772652,'10.0.1.236',2),(167772653,'10.0.1.237',2),(167772654,'10.0.1.238',2),(167772655,'10.0.1.239',2),(167772656,'10.0.1.240',2),(167772657,'10.0.1.241',2),(167772658,'10.0.1.242',2),(167772659,'10.0.1.243',2),(167772660,'10.0.1.244',2),(167772661,'10.0.1.245',2),(167772662,'10.0.1.246',2),(167772663,'10.0.1.247',2),(167772664,'10.0.1.248',2),(167772665,'10.0.1.249',2),(167772666,'10.0.1.250',2),(167772667,'10.0.1.251',2),(167772668,'10.0.1.252',2),(167772669,'10.0.1.253',2),(167772670,'10.0.1.254',2);
/*!40000 ALTER TABLE `sectorspool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectorspool_lease`
--

DROP TABLE IF EXISTS `sectorspool_lease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectorspool_lease` (
  `ip2long` bigint(64) NOT NULL,
  `ip` char(15) COLLATE koi8r_bin NOT NULL,
  `sectorid` smallint(5) unsigned NOT NULL,
  `used` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `expired` int(10) NOT NULL DEFAULT '86400',
  `mac` char(22) CHARACTER SET koi8r NOT NULL DEFAULT '',
  KEY `expired` (`expired`),
  KEY `sectorid` (`sectorid`),
  KEY `sector-ip` (`sectorid`,`ip`),
  KEY `used` (`used`),
  KEY `uid` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectorspool_lease`
--

LOCK TABLES `sectorspool_lease` WRITE;
/*!40000 ALTER TABLE `sectorspool_lease` DISABLE KEYS */;
/*!40000 ALTER TABLE `sectorspool_lease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secureauth`
--

DROP TABLE IF EXISTS `secureauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secureauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `CallingStationId` char(64) NOT NULL,
  `permit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `prmit` (`permit`),
  KEY `uid` (`uid`),
  KEY `uid-caller` (`uid`,`CallingStationId`),
  KEY `caller` (`CallingStationId`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secureauth`
--

LOCK TABLES `secureauth` WRITE;
/*!40000 ALTER TABLE `secureauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `secureauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `serviceid` smallint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID услуги',
  `servicename` varchar(64) NOT NULL COMMENT 'Название Услуги',
  `amount` double(20,2) NOT NULL DEFAULT '0.00' COMMENT 'Цена услуги',
  `users_states` set('n','f','d','r') NOT NULL DEFAULT 'n' COMMENT 'Статус пользователя n-normal.f-freeze,d-disabled,r-removed',
  `period` enum('m','w','d','daily_proportionally') NOT NULL DEFAULT 'm' COMMENT 'm - ежемесячно, w - еженедельно, d - ежедневно',
  `service_type` enum('fee','gift') NOT NULL DEFAULT 'fee' COMMENT 'fee-списание,gift-подарок',
  `service_activation` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 - базовая (всем в тарифе), 1-индивидуально (по назначению)',
  `service_groupid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'ID группы для организации типа услуги "1 из множества"',
  `service_loyal_recalculation` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Лояльное отключение с возвратом средств. Относится ',
  `service_portal` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'признак портала: 0 - нет, 1 - IPTVPORTAL, 2 - Stalker, 3 - olltv',
  `trigger_condition` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Условие срабатывания услуги. 0 - безусловное (всегда).1 - положительный баланс и Инет включён.2 - отрицательный баланс и Инет выключен, иначе - своё условие',
  `sql_condition` text NOT NULL COMMENT 'дополнительное SQL условие',
  `suspended` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Услуга приостановлена',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'Приоритет применения услуги. 0 - самый важный. Чем меньше - тем раньше она будет запущена (списана оплата)',
  `service_like_packet` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'указываем, чтоб исполнять логику, как в тарифе. При 1 игнорирует "период" услуги',
  `activation_by_admin` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'подключается администратором',
  `activation_by_user` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'подключается абонентом',
  `deactivation_by_admin` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'деактивация инд. услуги персоналом',
  `deactivation_by_user` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'деактивация инд. услуги абонентом',
  `description` text NOT NULL COMMENT 'описание услуги',
  `creation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата создания',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Последнее обновление',
  `tarifservice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `serviceacl` varchar(32) CHARACTER SET koi8u NOT NULL DEFAULT '',
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Услуга Кредит',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(2,'Услуга Кредит с %',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(3,'Услуга \"Турбо\"',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(4,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(5,'Услуга \"Заморозка\"',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(6,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(7,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(8,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(9,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(10,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(11,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(12,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(13,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(14,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(15,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(16,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(17,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(18,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(19,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(20,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(21,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(22,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(23,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(24,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(25,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(26,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(27,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(28,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(29,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(30,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(31,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(32,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(33,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(34,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(35,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(36,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(37,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(38,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(39,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(40,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(41,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(42,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(43,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(44,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(45,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(46,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(47,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(48,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(49,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(50,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(51,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(52,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(53,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(54,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(55,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(56,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(57,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(58,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(59,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(60,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(61,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(62,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(63,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(64,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(65,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(66,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(67,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(68,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(69,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(70,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(71,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(72,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(73,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(74,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(75,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(76,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(77,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(78,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(79,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(80,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(81,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(82,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(83,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(84,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(85,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(86,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(87,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(88,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(89,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(90,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(91,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(92,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(93,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(94,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(95,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(96,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(97,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(98,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(99,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,''),(100,'',0.00,'n','m','fee',0,0,1,0,0,'',1,1,0,0,0,0,0,'reserved','2016-09-11 15:02:47','0000-00-00 00:00:00',0,'');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_logs`
--

DROP TABLE IF EXISTS `services_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_logs` (
  `record_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL,
  `serviceid` smallint(5) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `before_billing` double(20,6) NOT NULL,
  `amount` double(20,6) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_logs`
--

LOCK TABLES `services_logs` WRITE;
/*!40000 ALTER TABLE `services_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_packets_pairs`
--

DROP TABLE IF EXISTS `services_packets_pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_packets_pairs` (
  `serviceid` smallint(5) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL,
  `service_price` double(20,2) DEFAULT NULL,
  `service_loyal_recalculation` tinyint(4) DEFAULT NULL COMMENT 'Лояльное отключение с возвратом средств. Относится ',
  `service_activation` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - базовая, 1 - индивидуальная',
  `activation_by_admin` tinyint(4) DEFAULT NULL COMMENT 'подключается администратором',
  `activation_by_user` tinyint(4) DEFAULT NULL COMMENT 'подключается абонентом',
  `deactivation_by_admin` tinyint(4) DEFAULT NULL COMMENT 'деактивация инд. услуги персоналом',
  `deactivation_by_user` tinyint(4) DEFAULT NULL COMMENT 'деактивация инд. услуги абонентом',
  KEY `gid` (`gid`),
  KEY `serviceid` (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_packets_pairs`
--

LOCK TABLES `services_packets_pairs` WRITE;
/*!40000 ALTER TABLE `services_packets_pairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_packets_pairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_users_pairs`
--

DROP TABLE IF EXISTS `services_users_pairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_users_pairs` (
  `serviceid` smallint(5) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  KEY `serviceid` (`serviceid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_users_pairs`
--

LOCK TABLES `services_users_pairs` WRITE;
/*!40000 ALTER TABLE `services_users_pairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_users_pairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sessionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(14) unsigned NOT NULL,
  `auth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastActivity` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) CHARACTER SET ucs2 COLLATE ucs2_bin NOT NULL,
  PRIMARY KEY (`sessionid`),
  UNIQUE KEY `sessionid` (`sessionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_logs` (
  `sms_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AI',
  `sms_type_id` tinyint(3) unsigned NOT NULL COMMENT 'Тип СМС - OTP регистрация и прочие категории',
  `gateway_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Шлюз СМС. По умолчанию - 0 (сис. опции)',
  `uid` bigint(20) unsigned DEFAULT NULL COMMENT 'ID абонента, NULL - для OTP регистрации',
  `staffid` tinyint(4) DEFAULT NULL COMMENT 'ID сотрудника',
  `sms_phone` varchar(20) NOT NULL,
  `sms_text` varchar(254) NOT NULL,
  `sms_code` tinyint(4) DEFAULT NULL COMMENT 'Код СМС. 0 - всё ОК, иначе - ошибка. NULL - не известен',
  `sms_error_text` varchar(254) NOT NULL DEFAULT '' COMMENT 'Описание ошибки, если есть',
  `sms_send_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Время отправки СМС',
  PRIMARY KEY (`sms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Логи отправленных СМС';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_logs`
--

LOCK TABLES `sms_logs` WRITE;
/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sticky_notes`
--

DROP TABLE IF EXISTS `sticky_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sticky_notes` (
  `stickynoteid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `stickynotename` varchar(36) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stuffid` int(14) unsigned NOT NULL,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `x` int(14) unsigned NOT NULL DEFAULT '10',
  `y` int(14) unsigned NOT NULL DEFAULT '10',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pinned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`stickynoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sticky_notes`
--

LOCK TABLES `sticky_notes` WRITE;
/*!40000 ALTER TABLE `sticky_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sticky_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff`
--

DROP TABLE IF EXISTS `stuff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff` (
  `stuffid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `sLogin` varchar(36) NOT NULL,
  `sPwd` varchar(36) NOT NULL,
  PRIMARY KEY (`stuffid`),
  UNIQUE KEY `stuffid` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff`
--

LOCK TABLES `stuff` WRITE;
/*!40000 ALTER TABLE `stuff` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_aclid`
--

DROP TABLE IF EXISTS `stuff_aclid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_aclid` (
  `aclid` tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
  `acl` char(64) NOT NULL,
  PRIMARY KEY (`aclid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=66;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_aclid`
--

LOCK TABLES `stuff_aclid` WRITE;
/*!40000 ALTER TABLE `stuff_aclid` DISABLE KEYS */;
INSERT INTO `stuff_aclid` VALUES (1,'Администратор'),(2,'Монтажник'),(9,'Директор'),(10,'Управляющий'),(11,'Офис-менеджер'),(12,'Бухгалтер'),(13,'Бригадир монтажников');
/*!40000 ALTER TABLE `stuff_aclid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_aclresource`
--

DROP TABLE IF EXISTS `stuff_aclresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_aclresource` (
  `resourceid` tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
  `resource` char(64) NOT NULL,
  PRIMARY KEY (`resourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=66;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_aclresource`
--

LOCK TABLES `stuff_aclresource` WRITE;
/*!40000 ALTER TABLE `stuff_aclresource` DISABLE KEYS */;
INSERT INTO `stuff_aclresource` VALUES (1,'bugh'),(2,'stuff'),(3,'options'),(4,'cards'),(5,'vaucher'),(6,'logs'),(7,'modsendmail'),(8,'modules'),(9,'monitoring'),(10,'tarif'),(11,'users'),(12,'mapview'),(13,'mapedit'),(14,'ticketedit'),(15,'ticketview'),(16,'monitorview'),(17,'devel');
/*!40000 ALTER TABLE `stuff_aclresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_aclrole`
--

DROP TABLE IF EXISTS `stuff_aclrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_aclrole` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `aclid` tinyint(6) unsigned NOT NULL,
  `resourceid` tinyint(6) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aclid` (`aclid`),
  KEY `resourceid` (`resourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_aclrole`
--

LOCK TABLES `stuff_aclrole` WRITE;
/*!40000 ALTER TABLE `stuff_aclrole` DISABLE KEYS */;
INSERT INTO `stuff_aclrole` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,1),(6,1,6,1),(8,1,7,1),(9,1,8,1),(10,1,9,1),(11,1,10,1),(12,1,11,1),(80,1,13,1),(81,1,14,1),(82,1,15,1),(83,1,16,1),(84,1,17,0),(85,1,12,1);
/*!40000 ALTER TABLE `stuff_aclrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_dolgnost`
--

DROP TABLE IF EXISTS `stuff_dolgnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_dolgnost` (
  `dolgnostid` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `dolgnost` char(128) NOT NULL,
  `stavka` double(20,3) unsigned NOT NULL,
  PRIMARY KEY (`dolgnostid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=138;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_dolgnost`
--

LOCK TABLES `stuff_dolgnost` WRITE;
/*!40000 ALTER TABLE `stuff_dolgnost` DISABLE KEYS */;
INSERT INTO `stuff_dolgnost` VALUES (1,'Монтажник',1.000),(2,'Офис-менеджер',7.000),(3,'Системный администратор',12.500),(4,'Бригадир монтажников',8.500),(5,'Руководитель',15.000),(6,'Управляющий',13.000);
/*!40000 ALTER TABLE `stuff_dolgnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_groups`
--

DROP TABLE IF EXISTS `stuff_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_groups` (
  `stuffid` int(10) unsigned NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL,
  KEY `stuffid` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_groups`
--

LOCK TABLES `stuff_groups` WRITE;
/*!40000 ALTER TABLE `stuff_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuff_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_koef_stavki`
--

DROP TABLE IF EXISTS `stuff_koef_stavki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_koef_stavki` (
  `koefid` tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(64) NOT NULL,
  `koef` double(20,2) NOT NULL,
  PRIMARY KEY (`koefid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=74;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_koef_stavki`
--

LOCK TABLES `stuff_koef_stavki` WRITE;
/*!40000 ALTER TABLE `stuff_koef_stavki` DISABLE KEYS */;
INSERT INTO `stuff_koef_stavki` VALUES (1,'Рабочий день',1.00),(2,'Рабочий день (переработка)',12.00),(3,'Выходной день',3.00),(4,'Выходной день (переработка)',1.00),(5,'Штраф',-1.00),(6,'Премия',1.00),(7,'Больничный',0.50);
/*!40000 ALTER TABLE `stuff_koef_stavki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_permissions`
--

DROP TABLE IF EXISTS `stuff_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_permissions` (
  `stuffid` tinyint(6) unsigned NOT NULL,
  `permissionid` int(14) unsigned NOT NULL,
  `value` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`stuffid`,`permissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_permissions`
--

LOCK TABLES `stuff_permissions` WRITE;
/*!40000 ALTER TABLE `stuff_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuff_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_permissions_types`
--

DROP TABLE IF EXISTS `stuff_permissions_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_permissions_types` (
  `permissionid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(64) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `aclid_1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aclid_2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aclid_9` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aclid_10` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aclid_11` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aclid_12` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aclid_13` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `necessary_aclids` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY (`permissionid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_permissions_types`
--

LOCK TABLES `stuff_permissions_types` WRITE;
/*!40000 ALTER TABLE `stuff_permissions_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuff_permissions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_personal`
--

DROP TABLE IF EXISTS `stuff_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_personal` (
  `stuffid` tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
  `login` char(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `pass` char(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `aclid` tinyint(6) unsigned DEFAULT '1',
  `dolgnostid` tinyint(6) unsigned NOT NULL DEFAULT '1',
  `stavka` double(20,2) unsigned NOT NULL DEFAULT '0.00',
  `fio` char(128) DEFAULT NULL,
  `adress` char(128) DEFAULT NULL,
  `passportserie` char(16) DEFAULT NULL,
  `passportpropiska` char(128) DEFAULT NULL,
  `passportvoenkomat` char(128) DEFAULT NULL,
  `passportgdevidan` char(128) DEFAULT NULL,
  `inn` char(64) DEFAULT NULL,
  `ndogovora` tinyint(6) unsigned DEFAULT NULL,
  `semeynoepologenie` char(128) DEFAULT NULL,
  `phone_home` char(128) DEFAULT NULL,
  `phone_mob` char(128) DEFAULT NULL,
  `phone_mob2` char(128) DEFAULT NULL,
  `chasi` int(5) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active_gosorgan` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'доступ для гос. органов',
  `do_credit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_payment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_show_passwd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_minus_payments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_change_speed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_options` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_change_tarif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` char(16) DEFAULT NULL,
  `date_birth` char(16) DEFAULT NULL,
  `print_check` tinyint(1) NOT NULL DEFAULT '0',
  `doexportcvs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `search_display_all` tinyint(1) NOT NULL DEFAULT '1',
  `search_default_or` tinyint(1) NOT NULL DEFAULT '0',
  `use_block_local_inet` tinyint(1) NOT NULL DEFAULT '0',
  `do_simple_change_tarif` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `do_full_change_tarif` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_beznal_plateg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_edit_ip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_window_doubleclick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `access_ticket` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `access_map` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_create` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `map_superadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_superadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_add` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_update` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_inwork` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_performed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_dialogue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_close` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_add_note` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_update_note` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_delete_note` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_performers_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_categories_edit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_print` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_see_opened` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_see_inwork` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_see_performed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_see_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tickets_access_reports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_simple_online` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hide_status_bar` tinyint(4) NOT NULL DEFAULT '0',
  `allow_to_edit_old_address` tinyint(4) NOT NULL DEFAULT '0',
  `usersgroupid` int(5) unsigned NOT NULL DEFAULT '0',
  `do_skidka` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_planner` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `staff_search_escaping` tinyint(4) NOT NULL DEFAULT '0',
  `staff_search_limit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `staff_payments_only_current_day` tinyint(4) NOT NULL DEFAULT '0',
  `staff_payments_only_own` tinyint(4) NOT NULL DEFAULT '0',
  `edit_login` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `edit_pass` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`stuffid`),
  KEY `dolgnostid` (`dolgnostid`),
  KEY `usersgroupid` (`usersgroupid`),
  KEY `auth` (`login`,`pass`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=1390;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_personal`
--

LOCK TABLES `stuff_personal` WRITE;
/*!40000 ALTER TABLE `stuff_personal` DISABLE KEYS */;
INSERT INTO `stuff_personal` VALUES (1,'admin','admin',1,3,0.00,'','','','','','','',0,'','','','',160,1,0,1,1,1,1,1,1,1,'','',0,1,1,0,0,1,0,0,1,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1);
/*!40000 ALTER TABLE `stuff_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_vihoda`
--

DROP TABLE IF EXISTS `stuff_vihoda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_vihoda` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stuffid` tinyint(6) unsigned NOT NULL,
  `chasi` double(11,2) NOT NULL,
  `comment` char(255) DEFAULT NULL,
  `month` date NOT NULL,
  `koefid` tinyint(6) unsigned NOT NULL,
  `who` char(64) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stuffid` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_vihoda`
--

LOCK TABLES `stuff_vihoda` WRITE;
/*!40000 ALTER TABLE `stuff_vihoda` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuff_vihoda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuff_zarplata`
--

DROP TABLE IF EXISTS `stuff_zarplata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuff_zarplata` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `stuffid` tinyint(6) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `who` varchar(128) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `month` date NOT NULL,
  `summa` double(20,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuff_zarplata`
--

LOCK TABLES `stuff_zarplata` WRITE;
/*!40000 ALTER TABLE `stuff_zarplata` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuff_zarplata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_ip_unnumbered`
--

DROP TABLE IF EXISTS `switch_ip_unnumbered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_ip_unnumbered` (
  `ipunnumberedid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `swid` int(14) unsigned NOT NULL,
  `port` int(3) unsigned NOT NULL,
  `vlan` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ipunnumberedid`),
  KEY `vlanswid` (`vlan`,`swid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_ip_unnumbered`
--

LOCK TABLES `switch_ip_unnumbered` WRITE;
/*!40000 ALTER TABLE `switch_ip_unnumbered` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_ip_unnumbered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_logs`
--

DROP TABLE IF EXISTS `switch_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_logs` (
  `swlogid` bigint(21) unsigned NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `swid` int(10) unsigned NOT NULL,
  `port` int(10) NOT NULL,
  `mac` char(17) NOT NULL,
  `vlan` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`swlogid`),
  KEY `mac-time` (`mac`,`time`),
  KEY `swid-mac-time` (`swid`,`mac`,`time`),
  KEY `swid-time` (`swid`,`time`),
  KEY `time` (`time`),
  KEY `mac` (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_logs`
--

LOCK TABLES `switch_logs` WRITE;
/*!40000 ALTER TABLE `switch_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_opt82_logs`
--

DROP TABLE IF EXISTS `switch_opt82_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_opt82_logs` (
  `logid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `timedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(10) unsigned NOT NULL,
  `user_mac` char(17) NOT NULL,
  `vlan` int(6) unsigned NOT NULL,
  `user_port` int(4) unsigned NOT NULL,
  `swid` int(14) unsigned NOT NULL,
  `logtypeid` smallint(10) unsigned NOT NULL,
  `swid_mac` char(17) NOT NULL,
  `switch_circuit_id` varchar(64) NOT NULL,
  `switch_remote_id` varchar(64) NOT NULL,
  PRIMARY KEY (`logid`),
  KEY `uid` (`uid`),
  KEY `time` (`timedate`),
  KEY `mac` (`user_mac`),
  KEY `swid` (`swid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_opt82_logs`
--

LOCK TABLES `switch_opt82_logs` WRITE;
/*!40000 ALTER TABLE `switch_opt82_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_opt82_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_opt82_logtype`
--

DROP TABLE IF EXISTS `switch_opt82_logtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_opt82_logtype` (
  `logtypeid` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
  `logtype` char(64) NOT NULL,
  `access` int(1) unsigned NOT NULL,
  PRIMARY KEY (`logtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=910;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_opt82_logtype`
--

LOCK TABLES `switch_opt82_logtype` WRITE;
/*!40000 ALTER TABLE `switch_opt82_logtype` DISABLE KEYS */;
INSERT INTO `switch_opt82_logtype` VALUES (1,'В запросе отсутствует MAC абонента',0),(2,'Нет DHCP-Relay-Circuit-Id или DHCP-Relay-Remote-Id, поиск по MAC',1),(3,'Не обнаружено устройство по MAC',0),(4,'Не обнаружена пара vlan, parent_swid',0),(5,'unnumbered - пользователь найден',1),(6,'autoreg port by MAC - пользователь найден',1),(7,'port, swid, MAC - пользователь найден',1),(8,'регистрация по MAC - пользователь найден',1),(9,'unnumbered - пользователь не найден',0),(10,'autoreg port by MAC - пользователь не найден',0),(11,'port, swid, MAC - пользователь не найден',0),(12,'регистрация по MAC - пользователь не найден',0),(13,'Нет Remote-Id/-Circuit-Id: пользователь по MAC не найден',0),(14,'Регистрация по Vlan+Port',1),(15,'Выдаем IP из пула range в сегменте',1),(16,'свич не найден',0),(17,'Регистрация по mac отключена',0),(18,'найден по mac, порт/устройство не совпадают (opt82)',0),(19,'Наден по MAC - PON/ОНУ',1);
/*!40000 ALTER TABLE `switch_opt82_logtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_port_dead`
--

DROP TABLE IF EXISTS `switch_port_dead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_port_dead` (
  `swdeadportid` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `swid` int(10) unsigned NOT NULL,
  `deadport` int(2) unsigned NOT NULL,
  PRIMARY KEY (`swdeadportid`),
  KEY `swid` (`swid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_port_dead`
--

LOCK TABLES `switch_port_dead` WRITE;
/*!40000 ALTER TABLE `switch_port_dead` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_port_dead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_port_grozi`
--

DROP TABLE IF EXISTS `switch_port_grozi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_port_grozi` (
  `grozaid` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `swid` int(10) unsigned NOT NULL,
  `grozaport` int(2) unsigned NOT NULL,
  PRIMARY KEY (`grozaid`),
  KEY `swid` (`swid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_port_grozi`
--

LOCK TABLES `switch_port_grozi` WRITE;
/*!40000 ALTER TABLE `switch_port_grozi` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_port_grozi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_uplink`
--

DROP TABLE IF EXISTS `switch_uplink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_uplink` (
  `uplinkid` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `swid` int(10) unsigned NOT NULL,
  `port` int(4) unsigned NOT NULL,
  `swiduplink` int(10) unsigned NOT NULL,
  `speed` char(20) NOT NULL DEFAULT '100',
  `type_uplink` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_uplink` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `portdst` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uplinkid`),
  KEY `swid` (`swid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=43;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_uplink`
--

LOCK TABLES `switch_uplink` WRITE;
/*!40000 ALTER TABLE `switch_uplink` DISABLE KEYS */;
INSERT INTO `switch_uplink` VALUES (1,2,26,0,'1000',1,1,0);
/*!40000 ALTER TABLE `switch_uplink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_vlans`
--

DROP TABLE IF EXISTS `switch_vlans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_vlans` (
  `swvlanid` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `swid` int(10) unsigned NOT NULL,
  `sectorid` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`swvlanid`),
  KEY `sectorid` (`sectorid`),
  KEY `swid` (`swid`),
  KEY `swid-sectorid` (`swid`,`sectorid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=13;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_vlans`
--

LOCK TABLES `switch_vlans` WRITE;
/*!40000 ALTER TABLE `switch_vlans` DISABLE KEYS */;
/*!40000 ALTER TABLE `switch_vlans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switche_type`
--

DROP TABLE IF EXISTS `switche_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switche_type` (
  `swtypeid` smallint(5) NOT NULL AUTO_INCREMENT,
  `swtypename` char(128) NOT NULL,
  `numports` char(3) NOT NULL DEFAULT '24',
  `snmp_type` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `dont_use_uplink` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `do_check_switch_port` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_mac_autoreg_by_radius` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `do_ip_unnumbered` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_circut_template` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `circut_template` varchar(64) NOT NULL DEFAULT '',
  `use_unit_find` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_module_find` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `strict_dhcp_mode` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `montype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`swtypeid`),
  KEY `swtypeid-ports` (`swtypeid`,`numports`),
  KEY `swtypename` (`swtypename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=139;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switche_type`
--

LOCK TABLES `switche_type` WRITE;
/*!40000 ALTER TABLE `switche_type` DISABLE KEYS */;
INSERT INTO `switche_type` VALUES (1,'Cisco','24',1,1,0,0,0,0,'',0,0,0,0),(2,'Summit-200','26',1,1,0,0,0,0,'',0,0,0,0);
/*!40000 ALTER TABLE `switche_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switches`
--

DROP TABLE IF EXISTS `switches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switches` (
  `swid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nameswitch` char(128) NOT NULL DEFAULT 'switch',
  `swtypeid` smallint(5) DEFAULT NULL,
  `login` char(64) DEFAULT NULL,
  `pass` char(64) DEFAULT NULL,
  `comunity` char(64) NOT NULL DEFAULT 'private',
  `snmpver` tinyint(4) DEFAULT '2',
  `port` int(11) DEFAULT '161',
  `ip` char(16) NOT NULL,
  `telnet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `address` char(128) DEFAULT NULL,
  `use_snmp` tinyint(2) NOT NULL DEFAULT '0',
  `managed` tinyint(2) NOT NULL DEFAULT '0',
  `app` char(16) NOT NULL,
  `houseid` int(14) unsigned NOT NULL DEFAULT '1',
  `housingid` int(14) unsigned NOT NULL,
  `houseblockid` int(14) unsigned NOT NULL,
  `porch` int(4) unsigned NOT NULL,
  `floor` int(4) unsigned NOT NULL,
  `productnum` char(128) NOT NULL,
  `serialnum` char(128) NOT NULL,
  `firmvarever` char(64) NOT NULL,
  `use_snmp_monitor` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `mac` char(17) CHARACTER SET keybcs2 COLLATE keybcs2_bin NOT NULL DEFAULT '',
  `use_ssh` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `use_web` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `ssh_port` int(10) unsigned NOT NULL DEFAULT '22',
  `telnet_port` int(10) unsigned NOT NULL DEFAULT '23',
  `web_port` int(10) unsigned NOT NULL DEFAULT '80',
  `external_telnet_url` varchar(64) NOT NULL DEFAULT '',
  `external_ssh_url` varchar(64) NOT NULL DEFAULT '',
  `external_web_url` varchar(64) NOT NULL DEFAULT '',
  `parent_swid` int(10) unsigned NOT NULL DEFAULT '0',
  `qnq` int(4) unsigned NOT NULL DEFAULT '0',
  `swunit` int(10) unsigned NOT NULL DEFAULT '0',
  `swmodule` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`swid`),
  KEY `ip` (`ip`),
  KEY `mac` (`mac`),
  KEY `parent` (`parent_swid`),
  KEY `type` (`swtypeid`),
  KEY `parsw` (`swid`,`parent_swid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=80;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switches`
--

LOCK TABLES `switches` WRITE;
/*!40000 ALTER TABLE `switches` DISABLE KEYS */;
INSERT INTO `switches` VALUES (1,'rost-cisco',1,'','','private',2,161,'',1,'',1,1,'',1,0,0,0,0,'','','',0,'',0,0,22,23,80,'','','',0,0,0,0),(2,'test-summit',2,'admin','','private',2,161,'192.168.3.2',1,'',1,1,'',1,0,0,0,0,'','','',0,'',0,1,22,23,80,'','','',0,0,0,0);
/*!40000 ALTER TABLE `switches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslogs`
--

DROP TABLE IF EXISTS `syslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `host` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facility` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `program` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `seq` bigint(20) unsigned NOT NULL DEFAULT '0',
  `counter` int(11) NOT NULL DEFAULT '1',
  `fo` datetime DEFAULT NULL,
  `lo` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datetime` (`datetime`),
  KEY `facility` (`facility`),
  KEY `host` (`host`),
  KEY `priority` (`priority`),
  KEY `program` (`program`),
  KEY `sequence` (`seq`),
  KEY `mdate` (`msg`,`datetime`),
  KEY `msg` (`msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslogs`
--

LOCK TABLES `syslogs` WRITE;
/*!40000 ALTER TABLE `syslogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysopts`
--

DROP TABLE IF EXISTS `sysopts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysopts` (
  `options_id` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysopts`
--

LOCK TABLES `sysopts` WRITE;
/*!40000 ALTER TABLE `sysopts` DISABLE KEYS */;
INSERT INTO `sysopts` VALUES (1);
/*!40000 ALTER TABLE `sysopts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysopts_voip`
--

DROP TABLE IF EXISTS `sysopts_voip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysopts_voip` (
  `voipid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `asterisk_spool_path` varchar(64) NOT NULL DEFAULT '/var/spool/asterisk/outgoing',
  `asterisk_channel` varchar(64) NOT NULL DEFAULT 'SIP/Promtelecom/',
  `asterisk_extension` varchar(32) NOT NULL DEFAULT 'anjeybill',
  `asterisk_context` varchar(32) NOT NULL DEFAULT 'anjeybill',
  `asterisk_callerid` varchar(32) NOT NULL DEFAULT 'bill',
  `asterisk_maxretries` varchar(3) NOT NULL DEFAULT '3',
  `asterisk_retrytime` varchar(3) NOT NULL DEFAULT '15',
  `asterisk_waittime` varchar(3) NOT NULL DEFAULT '45',
  `asterisk_priority` varchar(2) NOT NULL DEFAULT '1',
  `asterisk_nummin` varchar(2) NOT NULL DEFAULT '6',
  `asterisk_nummax` varchar(2) NOT NULL DEFAULT '7',
  `asterisk_numlines` varchar(2) NOT NULL DEFAULT '9',
  `asterisk_call_time` varchar(3) NOT NULL DEFAULT '180',
  PRIMARY KEY (`voipid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=92;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysopts_voip`
--

LOCK TABLES `sysopts_voip` WRITE;
/*!40000 ALTER TABLE `sysopts_voip` DISABLE KEYS */;
INSERT INTO `sysopts_voip` VALUES (1,'/var/spool/asterisk/outgoing','SIP/trunkname/','mikbill','mikbill','bill','3','15','45','1','6','7','9','180');
/*!40000 ALTER TABLE `sysopts_voip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_options`
--

DROP TABLE IF EXISTS `system_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_options` (
  `key` char(32) COLLATE koi8r_bin NOT NULL,
  `value` char(128) COLLATE koi8r_bin NOT NULL,
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_bin AVG_ROW_LENGTH=161;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_options`
--

LOCK TABLES `system_options` WRITE;
/*!40000 ALTER TABLE `system_options` DISABLE KEYS */;
INSERT INTO `system_options` VALUES ('ARP_DO_ETHERS','/sbin/arp -f'),('CLRLINE_CISCO','/opt/freeradius/sbin/clrline'),('CLRLINE_PORTSLAVE','/usr/bin/finger'),('CLRLINE_PPPD','/usr/local/sbin/pppkill'),('COMPANY_NAME','ISP Celteh'),('CREATE_SYSTEM','0'),('CREDIT_LIMIT','6000'),('DELIVERY','1'),('DHCPD_PXE_FILE','pxelinux.0'),('DHCPD_RESTART','/etc/init.d/dhcpd restart'),('DHCP_CONF','/etc/dhcp/dhcpd.conf'),('DHCP_PARAM_DDNS_ZONE',''),('DHCP_PARAM_DOMAIN',''),('DHCP_PARAM_DOMAIN_SERV',''),('DHCP_USE_PXE','0'),('DHCPonuoneport','0'),('DISABLE_DHCP','1'),('DISABLE_DHCP_SYSLOG','0'),('DNS_LOCAL_FILE_ARPA_ZONE','/etc/bind/master/0.10.inaddr.arpa'),('DNS_LOCAL_FILE_ZONE','/etc/bind/master/newline.loc'),('DO_LOG','1'),('ECHO','/bin/echo'),('ETHERS_FILE','/etc/ethers'),('GB','1048576'),('IPROUTE_IP','/sbin/ip'),('IPROUTE_TC','/sbin/tc'),('IP_SENTINEL_CONF','/etc/ip-sentinel.cfg'),('IP_SENTINEL_RESTART','/etc/rc.d/init.d/ip-sentinel restart'),('LOG_FILE','/var/log/mikbill.log'),('MAIL_BASE','/home/vmail'),('MAIL_DOMAIN','test.com'),('MBYTE','1048576'),('NAMED_RESTART','/etc/init.d/named restart'),('NET_GW','0.254'),('NET_LAN','10.10.'),('NET_VPN','172.16.'),('RNKB_login_prio','2'),('RNKB_numdogovor_prio','3'),('RNKB_uid_prio','1'),('SE100HTTPRedirProfBlocked','URL-BLOCKED'),('SE100HTTPRedirProfNegBal','URL-NEGBAL'),('SE100RedirForPolBlocked','in:FWPOL-BLOCKED-REDIRECT'),('SE100RedirForPolNegBal','in:FWPOL-NEGBAL-REDIRECT'),('SE100ServiceAction','DE-ACTIVATE'),('SE100ServiceName','service_inet'),('SE100useshaper','0'),('SPEED_CHANEL_IN','1200120'),('SPEED_CHANEL_OUT','1200120'),('SUDO_DHCPDRELOAD','0'),('SUDO_RADRELOAD','0'),('TRAF_LIST','./db/traf/'),('TYME_login_prio','2'),('TYME_numdogovor_prio','3'),('TYME_uid_prio','1'),('UE','руб'),('USER_LIST','./db/usrlist'),('USE_BLACK_LIST','0'),('USE_CARDS','0'),('USE_admins_kick_users','1'),('USE_languard','0'),('USE_link_IP_MAC','0'),('accel_ipoe_real_mask','24'),('accel_parse_opt_82','0'),('accel_send_l4_ip','0'),('accel_unkn_session_timeout','300'),('add_user_packet_float_on','0'),('add_user_packet_float_type','1'),('adv_mik_shaper','1'),('auto_close_limit_by_deposit','0'),('auto_local_ip','1'),('auto_log_auth_days','30'),('auto_log_clear','1'),('auto_log_dhcp_days','7'),('auto_log_dhcp_mikbill_days','7'),('auto_log_sessions_months','6'),('auto_log_sql_clear','1'),('auto_log_switch_log_days','0'),('auto_vpn_ip','1'),('autogen_login_length','8'),('autogen_login_type','uid'),('awk','/bin/awk'),('baltica_bank_login','1'),('baltica_bank_login_prio','2'),('baltica_bank_uid','1'),('baltica_bank_uid_prio','1'),('base_ip','10'),('brasacctreopen','0'),('card_hide_cellphone','0'),('card_hide_date_birth','0'),('card_hide_e_mail','0'),('card_hide_home_phone','0'),('card_hide_pass_date','0'),('card_hide_pass_inn','0'),('card_hide_pass_propiska','0'),('card_hide_pass_serie','0'),('card_hide_pass_vidan','0'),('card_hide_passport','0'),('card_hide_sms','0'),('casr_dhcp_session_time1','300'),('casr_dhcp_session_time2','300'),('casr_idle_timeout','3600'),('casr_timeout_direction','inbound'),('ciscoasr_blok_service','MBDISABLEDINET'),('ciscoasr_debt_service','MBNOMONEY'),('ciscoasr_del_service','MBDELETED'),('ciscoasr_frez_service','MBFREEZE'),('ciscoasr_garden_service','MBOPENGARDEN'),('ciscoasr_inet_service','MBINTERNET'),('ciscoasr_otkl_service','MBOTKL'),('ciscoasr_unkn_service','MBUNKNOWN'),('ciscoasr_unkn_sess_timeout','300'),('citypay_login','1'),('citypay_login_prio','2'),('citypay_network',''),('citypay_network2',''),('citypay_procent',''),('citypay_uid','1'),('citypay_uid_prio','1'),('compay_login','1'),('compay_login_prio','2'),('compay_numdogovor','0'),('compay_numdogovor_prio','3'),('compay_procent',''),('compay_secret',''),('compay_uid','1'),('compay_uid_prio','1'),('copayco_curency','UAH'),('copayco_description','internet'),('copayco_shop_id',''),('copayco_sign_key',''),('copayco_test_mode','false'),('create_payment_on_user_blocked','0'),('create_ticket_blocked','0'),('create_ticket_blocked_category','1'),('create_ticket_blocked_days','0'),('create_ticket_blocked_priority','2'),('create_ticket_blocked_staffid','0'),('creditpilot_login_prio','2'),('creditpilot_numdogovor_prio','3'),('creditpilot_uid_prio','1'),('cyberplat_login_prio','2'),('cyberplat_numdogovor_prio','3'),('cyberplat_private_passphrase',''),('cyberplat_private_path',''),('cyberplat_public_path',''),('cyberplat_uid_prio','1'),('days_to_delete','30'),('days_to_otkl','60'),('default_lease_time','21600'),('deny_full_delete','1'),('do_24nonstop_terminal','0'),('do_arping','1'),('do_citypay_terminal','0'),('do_compay_terminal','0'),('do_copayco_terminal','0'),('do_del_otkl','1'),('do_easysoft_terminal','0'),('do_elecsnet_terminal','0'),('do_ipoe_hosts_clean','0'),('do_liqpay_terminal','0'),('do_online_unlim','0'),('do_onpay_terminal','0'),('do_osmp_terminal','0'),('do_otkl_dolg','1'),('do_perevod_fixed','1'),('do_ping','1'),('do_privat24_terminal','0'),('do_vlan_opt82','0'),('do_wqiwiru_terminal','0'),('dolgnik_ippololid','1'),('dont_display_framed_ip','0'),('dont_display_local_ip','0'),('e_pay_com_ua_login_prio','2'),('e_pay_com_ua_numdogovor_prio','3'),('e_pay_com_ua_uid_prio','1'),('easysoft_cover','0'),('easysoft_default_dealer','0'),('easysoft_link_with_dealer','0'),('easysoft_login','1'),('easysoft_login_prio','2'),('easysoft_netork',''),('easysoft_procent',''),('easysoft_uid','1'),('easysoft_uid_prio','1'),('ekassir_login_prio','2'),('ekassir_numdogovor_prio','3'),('ekassir_uid_prio','1'),('elecsnet_login','1'),('elecsnet_login_prio','2'),('elecsnet_network_1',''),('elecsnet_network_2',''),('elecsnet_network_3',''),('elecsnet_numdogovor_prio','3'),('elecsnet_procent',''),('elecsnet_uid','1'),('elecsnet_uid_prio','1'),('email','test@test.com'),('en_search_cat_of_persons','0'),('en_search_dat_connection','0'),('en_search_multi','1'),('en_search_of_contr_concl','0'),('en_search_states','1'),('en_tarif_razresh_minus','0'),('en_ticet_house_auto','0'),('en_uchetka_rezim_ulica_dyn','0'),('exec_radclient','/usr/local/bin/radclient'),('exec_snmpwalk',''),('final_report_show_connect_amount','0'),('freeze_custom_days_count','365'),('freeze_custom_days_on','0'),('freeze_custom_period','start'),('generate_pwd_unique','0'),('get_from_online_framed_ip','0'),('get_from_online_local_ip','0'),('gorod_login','1'),('gorod_login_prio','2'),('gorod_numdogovor','1'),('gorod_numdogovor_prio','3'),('gorod_uid','1'),('gorod_uid_prio','1'),('grep','/bin/grep'),('guest_vlan_do','0'),('guest_vlan_id','124'),('guest_vlan_id_block','124'),('guest_vlan_id_del','124'),('guest_vlan_id_freeze','124'),('guest_vlan_id_no_money','124'),('guest_vlan_id_not_current_sector','124'),('guest_vlan_id_otkl','124'),('gui_hide_terminal','0'),('hs_acct_interim_interval','300'),('hs_address_list',''),('hs_do_addrlist','0'),('hs_idle_timeout','30'),('hs_prio','1'),('hs_session_timeout','300'),('hs_speed_in',''),('hs_speed_out',''),('hs_use_queue','0'),('ibox_bank_login','1'),('ibox_bank_login_prio','2'),('ibox_bank_uid','1'),('ibox_bank_uid_prio','1'),('ibox_login','1'),('ibox_login_prio','2'),('ibox_numdogovor','0'),('ibox_numdogovor_prio','3'),('ibox_uid','1'),('ibox_uid_prio','1'),('ipay_login_prio','2'),('ipay_numdogovor_prio','3'),('ipay_uid_prio','1'),('iptvportal_login','login'),('iptvportal_pass','pass'),('iptvportal_subdomain','url'),('kernelusecoa','0'),('liqpay_curency',''),('mac_autoreg','0'),('mac_autoreg_accel','0'),('mac_autoreg_always','0'),('mask_cellphone',''),('mask_cellphone_use','0'),('mask_phone_sms',''),('mask_series_and_number',''),('mask_series_and_number_use','0'),('mask_sms_phone_use','0'),('max_lease_time','864000'),('merc_sign',''),('merc_sign_other',''),('merchant_id',''),('mik_pcq_turbo','0'),('mikrotik_only_pass','0'),('mkb_login_prio','2'),('mkb_numdogovor_prio','3'),('mkb_uid_prio','1'),('mrtg_exec_prog','/usr/bin/php -q /var/www/mikbill/admin/index.php'),('mrtg_path_data','/var/www/mikbill/admin'),('mrtg_tarifs_conf','/etc/mrtg/mrtg_mikbill_tarif.conf'),('mrtg_threads','2'),('mrtg_users_conf','/etc/mrtg/mrtg_mikbill_users.conf'),('mysqld_path','/etc/init.d/mysqld restart'),('nonstop_key','0'),('nonstop_max_amount','1000'),('nonstop_min_amount','1'),('nonstop_procent','0.000'),('nonstop_service_id_login','2'),('nonstop_service_id_numdogovor','3'),('nonstop_service_id_uid','1'),('not_clear_port_for_deleted','1'),('not_clear_port_for_disabled','1'),('online_timeout','400'),('only_one_online','0'),('onpay_ccy',''),('onpay_login',''),('onpay_procent',''),('onpay_secret',''),('onpay_url_success',''),('options_id','1'),('osmp_bank_login','1'),('osmp_bank_login_prio','2'),('osmp_bank_uid','1'),('osmp_bank_uid_prio','1'),('osmp_key',''),('osmp_login','1'),('osmp_login_prio','2'),('osmp_numdogovor','0'),('osmp_numdogovor_prio','3'),('osmp_procent','5'),('osmp_uid','1'),('osmp_uid_prio','1'),('payberry_login_prio','2'),('payberry_numdogovor_prio','3'),('payberry_uid_prio','1'),('paymaster_MrchID',''),('paymaster_network',''),('paymaster_on','0'),('paymaster_procent','0'),('paymaster_secretkey',''),('paymaster_test','0'),('perevod_summa','0.5'),('personal_area_address_type','0'),('phone_pay',''),('platezhka_search_login','1'),('platezhka_search_login_prio','1'),('platezhka_search_numdogovor','0'),('platezhka_search_numdogovor_prio','3'),('platezhka_search_uid','1'),('platezhka_search_uid_prio','2'),('platika_login_prio','2'),('platika_numdogovor_prio','3'),('platika_uid_prio','1'),('potmone_login_prio','2'),('potmone_numdogovor_prio','3'),('potmone_uid_prio','1'),('privat24_ccy',''),('privat24_merchantid',''),('privat24_procent','0'),('privat24_return_url',''),('privat24_server_url',''),('privat24_sign',''),('privat_pay_acc_login_prio','2'),('privat_pay_acc_numdogovor_prio','3'),('privat_pay_acc_oshadbank','0'),('privat_pay_acc_uid_prio','1'),('privat_v2_login','1'),('privat_v2_numdogovor','1'),('privat_v2_payer_info_new','0'),('privat_v2_uid','1'),('pscb_MrchKey',''),('pscb_debug_on','0'),('pscb_marketPlace',''),('pscb_on','0'),('pscb_test','0'),('radiusd_path','/etc/init.d/radiusd restart'),('real_ip_buy_cena','0'),('real_ip_disable_cena','0'),('real_ip_link_with_packet_type','1'),('required_pasport_date_resive','0'),('required_pasport_inn','0'),('required_pasport_registration','0'),('required_pasport_serie','0'),('required_who_and_where_issued','0'),('rnkb_site_login_prio','1'),('rnkb_site_numdogovor_prio','2'),('rnkb_site_uid_prio','3'),('sberbank_russia_login_prio','2'),('sberbank_russia_numdogovor_prio','3'),('sberbank_russia_uid_prio','1'),('sberbankru2826_login_prio','2'),('sberbankru2826_numdogovor_prio','3'),('sberbankru2826_uid_prio','1'),('sberbankru_login_prio','2'),('sberbankru_numdogovor_prio','3'),('sberbankru_uid_prio','1'),('send_accl_dolg_ipset','0'),('send_accl_frez_ipset','0'),('send_accl_unkn_ipset','0'),('shaper_dev_in','imq0'),('shaper_dev_out','imq1'),('shaper_koef','1024'),('smtphost','localhost'),('smtplogin','test@test.com'),('smtppass','test'),('smtpport','25'),('smtpssl','1'),('sotas_login_prio','2'),('sotas_numdogovor_prio','3'),('sotas_uid_prio','1'),('speed_mbit_on','1'),('ssh_path','/usr/bin/ssh'),('start_credit_date','1'),('start_credit_procent_date','7'),('stop_all_credit','15'),('stop_credit_date','7'),('stop_credit_procent_date','15'),('strict_dhcp_mode','0'),('sudo','/usr/bin/sudo -u root'),('tarif_chesniy_perehod','0'),('tarif_perevod_vniz','0'),('tarif_perevod_vverh','0'),('tickets_show_address_filter','0'),('turbo_buy_cena','0'),('turbo_speed','0'),('ukrpays_debug_on','0'),('ukrpays_lang','uk'),('ukrpays_theme','default'),('unfreeze_earlier_minimum_period','standard'),('uniteller_debug_on','0'),('uniteller_test','0'),('url_result',''),('url_server',''),('use_accl_block_pool','0'),('use_accl_coa','0'),('use_accl_frez_on','0'),('use_accl_speed_dolg','0'),('use_accl_speed_frez','0'),('use_accl_speed_unkn','0'),('use_accl_unk_pool','0'),('use_ciscoasr_coa','1'),('use_dolg_ippool','1'),('use_pscb','0'),('users_card_show_deposit_bonus','0'),('vpru_login_prio','1'),('vpru_numdogovor_prio','2'),('vpru_uid_prio','3'),('wqiwiru_procent',''),('wqiwiru_secret',''),('wqiwiru_shop_id',''),('xplat_login_prio','2'),('xplat_numdogovor_prio','3'),('xplat_uid_prio','1'),('yandex_debug_on','0'),('yapk_login_prio','2'),('yapk_numdogovor_prio','3'),('yapk_uid_prio','1');
/*!40000 ALTER TABLE `system_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_categories_list`
--

DROP TABLE IF EXISTS `tickets_categories_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_categories_list` (
  `categoryid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) NOT NULL,
  `description` varchar(64) NOT NULL,
  `color` int(10) unsigned NOT NULL DEFAULT '0',
  `req_uid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_fio` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_phones` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_settlement` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_street` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_house` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_apartment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_porch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_floor` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `req_sector` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link_to_uid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`categoryid`),
  KEY `name` (`categoryname`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=51;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_categories_list`
--

LOCK TABLES `tickets_categories_list` WRITE;
/*!40000 ALTER TABLE `tickets_categories_list` DISABLE KEYS */;
INSERT INTO `tickets_categories_list` VALUES (1,'other','predefined_category',0,0,0,0,0,0,0,0,0,0,0,0),(2,'connection','predefined_category',0,0,0,0,0,0,1,0,0,0,0,1),(3,'maintenance','predefined_category',0,0,0,0,0,0,0,0,0,0,0,0),(4,'created_in_the_cabinet','predefined_category',0,1,0,0,0,0,0,0,0,0,0,0),(5,'cable_is_not_connected','predefined_category',0,1,0,0,0,0,0,0,0,0,0,0),(6,'ip_address_conflict','predefined_category',0,1,0,0,0,0,0,0,0,0,0,0),(7,'internet_does_not_work','predefined_category',0,1,0,0,0,0,0,0,0,0,0,0),(8,'pages_not_open','predefined_category',0,1,0,0,0,0,0,0,0,0,0,0),(9,'cable_replacement','predefined_category',0,0,0,0,0,0,0,0,0,0,0,0),(10,'does_not_work_the_whole_house','predefined_category',0,0,0,0,0,0,1,0,0,0,0,0),(11,'does_not_work_the_whole_sector','predefined_category',0,0,0,0,0,0,0,0,0,0,1,0),(12,'configuring_the_router','predefined_category',0,1,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tickets_categories_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_crews`
--

DROP TABLE IF EXISTS `tickets_crews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_crews` (
  `crewid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `crewname` varchar(45) NOT NULL,
  PRIMARY KEY (`crewid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_crews`
--

LOCK TABLES `tickets_crews` WRITE;
/*!40000 ALTER TABLE `tickets_crews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_crews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_logs`
--

DROP TABLE IF EXISTS `tickets_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_logs` (
  `ticketlogid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `ticketid` int(14) unsigned NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `record` varchar(512) NOT NULL,
  `stuffid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`ticketlogid`),
  KEY `tid` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_logs`
--

LOCK TABLES `tickets_logs` WRITE;
/*!40000 ALTER TABLE `tickets_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_messages`
--

DROP TABLE IF EXISTS `tickets_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_messages` (
  `messageid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ticketid` int(14) unsigned NOT NULL,
  `stuffid` int(14) unsigned NOT NULL,
  `useruid` int(14) unsigned NOT NULL,
  `message` varchar(600) NOT NULL,
  `unread` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`messageid`),
  KEY `ticketid` (`ticketid`),
  KEY `tid_sid` (`ticketid`,`stuffid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_messages`
--

LOCK TABLES `tickets_messages` WRITE;
/*!40000 ALTER TABLE `tickets_messages` DISABLE KEYS */;
INSERT INTO `tickets_messages` VALUES (1,'2013-07-19 15:26:13',1,0,1,'what&#63;',1);
/*!40000 ALTER TABLE `tickets_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_notes`
--

DROP TABLE IF EXISTS `tickets_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_notes` (
  `noteid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ticketid` int(14) unsigned NOT NULL,
  `stuffid` int(14) unsigned NOT NULL,
  `note` varchar(600) NOT NULL,
  PRIMARY KEY (`noteid`),
  KEY `tid` (`ticketid`),
  KEY `tnid` (`ticketid`,`noteid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_notes`
--

LOCK TABLES `tickets_notes` WRITE;
/*!40000 ALTER TABLE `tickets_notes` DISABLE KEYS */;
INSERT INTO `tickets_notes` VALUES (1,'2013-07-19 15:26:13',1,0,'what&#63;');
/*!40000 ALTER TABLE `tickets_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_performers`
--

DROP TABLE IF EXISTS `tickets_performers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_performers` (
  `performerid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stuffid` int(14) unsigned NOT NULL,
  `employed_by_stuffid` int(14) unsigned NOT NULL,
  `ticketid` int(14) unsigned NOT NULL,
  PRIMARY KEY (`performerid`),
  KEY `sid` (`stuffid`),
  KEY `tid` (`ticketid`),
  KEY `tsid` (`stuffid`,`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_performers`
--

LOCK TABLES `tickets_performers` WRITE;
/*!40000 ALTER TABLE `tickets_performers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_performers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_priorities_types`
--

DROP TABLE IF EXISTS `tickets_priorities_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_priorities_types` (
  `prioritytypeid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `prioritytypename` varchar(45) NOT NULL,
  PRIMARY KEY (`prioritytypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_priorities_types`
--

LOCK TABLES `tickets_priorities_types` WRITE;
/*!40000 ALTER TABLE `tickets_priorities_types` DISABLE KEYS */;
INSERT INTO `tickets_priorities_types` VALUES (1,'high'),(2,'normal'),(3,'low');
/*!40000 ALTER TABLE `tickets_priorities_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_status_types`
--

DROP TABLE IF EXISTS `tickets_status_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_status_types` (
  `statustypeid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `statustypename` varchar(45) NOT NULL,
  PRIMARY KEY (`statustypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_status_types`
--

LOCK TABLES `tickets_status_types` WRITE;
/*!40000 ALTER TABLE `tickets_status_types` DISABLE KEYS */;
INSERT INTO `tickets_status_types` VALUES (1,'opened'),(2,'closed'),(3,'in_work'),(4,'performed');
/*!40000 ALTER TABLE `tickets_status_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_tickets`
--

DROP TABLE IF EXISTS `tickets_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_tickets` (
  `ticketid` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `performafter` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `performbefore` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inworkdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `performingdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inwork_by_stuffid` int(14) unsigned NOT NULL DEFAULT '0',
  `performed_by_stuffid` int(14) unsigned NOT NULL DEFAULT '0',
  `closingdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `closed_by_stuffid` int(14) unsigned NOT NULL DEFAULT '0',
  `useruid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `fio` char(128) NOT NULL DEFAULT '',
  `sectorid` int(14) unsigned NOT NULL DEFAULT '0',
  `street` varchar(45) NOT NULL DEFAULT '',
  `settlementname` varchar(36) NOT NULL DEFAULT '',
  `neighborhoodname` varchar(36) NOT NULL DEFAULT '',
  `house` varchar(20) NOT NULL DEFAULT '',
  `porch` int(2) unsigned NOT NULL DEFAULT '0',
  `floor` int(3) unsigned NOT NULL DEFAULT '0',
  `apartment` varchar(10) NOT NULL DEFAULT '',
  `housingname` varchar(36) NOT NULL DEFAULT '',
  `houseblockname` varchar(36) NOT NULL DEFAULT '',
  `phones` varchar(60) NOT NULL DEFAULT '',
  `created_by_stuffid` int(14) unsigned NOT NULL DEFAULT '0',
  `created_by_useruid` int(14) unsigned NOT NULL DEFAULT '0',
  `categoryid` int(14) unsigned NOT NULL DEFAULT '1',
  `prioritytypeid` int(14) unsigned NOT NULL DEFAULT '1',
  `statustypeid` int(14) unsigned NOT NULL DEFAULT '1',
  `performed_without_on_site_visit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_not_be_performed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emphasis` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_ticket_to_user` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dialogue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketid`),
  KEY `cat` (`categoryid`),
  KEY `creat` (`creationdate`),
  KEY `prio` (`prioritytypeid`),
  KEY `sd` (`statustypeid`,`creationdate`),
  KEY `sector` (`sectorid`),
  KEY `si` (`statustypeid`,`inworkdate`),
  KEY `uid` (`useruid`),
  KEY `uspristacre` (`useruid`,`prioritytypeid`,`statustypeid`,`creationdate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=koi8r ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_tickets`
--

LOCK TABLES `tickets_tickets` WRITE;
/*!40000 ALTER TABLE `tickets_tickets` DISABLE KEYS */;
INSERT INTO `tickets_tickets` VALUES (1,'2013-07-19 15:26:13','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00',0,1,'',0,'Lane 1','','','1',0,0,'','','','',0,1,4,2,1,0,0,0,0,1,1);
/*!40000 ALTER TABLE `tickets_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traf_data`
--

DROP TABLE IF EXISTS `traf_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traf_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `uid` bigint(16) unsigned NOT NULL,
  `rx` bigint(20) unsigned NOT NULL,
  `tx` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traf_data`
--

LOCK TABLES `traf_data` WRITE;
/*!40000 ALTER TABLE `traf_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `traf_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traf_data_day`
--

DROP TABLE IF EXISTS `traf_data_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traf_data_day` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `rx` bigint(20) unsigned NOT NULL,
  `tx` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traf_data_day`
--

LOCK TABLES `traf_data_day` WRITE;
/*!40000 ALTER TABLE `traf_data_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `traf_data_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traf_data_hour`
--

DROP TABLE IF EXISTS `traf_data_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traf_data_hour` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(16) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `rx` bigint(20) unsigned NOT NULL,
  `tx` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traf_data_hour`
--

LOCK TABLES `traf_data_hour` WRITE;
/*!40000 ALTER TABLE `traf_data_hour` DISABLE KEYS */;
/*!40000 ALTER TABLE `traf_data_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traf_tx_rx`
--

DROP TABLE IF EXISTS `traf_tx_rx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traf_tx_rx` (
  `uid` bigint(16) unsigned NOT NULL,
  `rx` bigint(20) unsigned NOT NULL,
  `tx` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traf_tx_rx`
--

LOCK TABLES `traf_tx_rx` WRITE;
/*!40000 ALTER TABLE `traf_tx_rx` DISABLE KEYS */;
/*!40000 ALTER TABLE `traf_tx_rx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `password` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '*',
  `crypt_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` bigint(16) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(5) unsigned NOT NULL DEFAULT '1',
  `deposit` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit` double(20,2) NOT NULL DEFAULT '0.00',
  `fio` char(128) NOT NULL DEFAULT '',
  `phone` char(128) NOT NULL DEFAULT '',
  `address` char(128) NOT NULL DEFAULT '',
  `prim` char(254) NOT NULL DEFAULT '',
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  `blocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `total_time` int(10) NOT NULL DEFAULT '0',
  `total_traffic` bigint(15) NOT NULL DEFAULT '0',
  `total_money` double(20,6) NOT NULL DEFAULT '0.000000',
  `last_connection` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `framed_ip` char(16) NOT NULL DEFAULT '',
  `framed_mask` char(16) NOT NULL DEFAULT '255.255.255.255',
  `callback_number` char(64) NOT NULL DEFAULT '',
  `local_ip` char(16) NOT NULL DEFAULT '10.0.',
  `local_mac` char(22) DEFAULT NULL,
  `sectorid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `create_mail` smallint(2) unsigned NOT NULL DEFAULT '1',
  `user_installed` smallint(2) unsigned NOT NULL DEFAULT '1',
  `speed_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_burst` int(10) unsigned NOT NULL DEFAULT '0',
  `gidd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link_to_ip_mac` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `email` char(64) DEFAULT NULL,
  `passportserie` char(16) DEFAULT NULL,
  `passportpropiska` char(128) DEFAULT NULL,
  `passportvoenkomat` char(128) DEFAULT NULL,
  `passportgdevidan` char(128) DEFAULT NULL,
  `inn` char(64) DEFAULT NULL,
  `real_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `real_price` double(20,6) NOT NULL DEFAULT '0.000000',
  `real_ipfree` tinyint(3) NOT NULL DEFAULT '0',
  `dogovor` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 - нет данных; 1 - активен; 2 - приостановлен; 3 - закрыт',
  `credit_procent` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `mob_tel` char(32) DEFAULT NULL,
  `sms_tel` char(32) DEFAULT NULL,
  `date_birth` date DEFAULT '0000-00-00',
  `date_birth_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `languarddisable` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `credit_unlimited` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dontshowspeed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `numdogovor` char(16) DEFAULT NULL,
  `app` char(8) NOT NULL DEFAULT '',
  `switchport` int(2) unsigned DEFAULT '0',
  `houseid` int(14) unsigned NOT NULL DEFAULT '1',
  `housingid` int(14) unsigned NOT NULL DEFAULT '0',
  `houseblockid` int(14) unsigned NOT NULL DEFAULT '0',
  `porch` int(14) unsigned NOT NULL DEFAULT '0',
  `floor` int(14) unsigned NOT NULL DEFAULT '0',
  `swid` int(10) unsigned DEFAULT '0',
  `use_router` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_model` char(16) NOT NULL DEFAULT '',
  `router_login` char(16) NOT NULL DEFAULT '',
  `router_pass` char(16) NOT NULL DEFAULT '',
  `router_ssid` char(16) NOT NULL DEFAULT '',
  `router_wep_pass` char(16) NOT NULL DEFAULT '',
  `router_we_saled` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_use_dual` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_add_date` char(10) NOT NULL DEFAULT '00/00/0000',
  `router_serial` char(16) NOT NULL DEFAULT '',
  `router_port` char(16) NOT NULL DEFAULT '8080',
  `credit_stop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_abonka` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `mac_reg` tinyint(2) NOT NULL DEFAULT '0',
  `fixed_cost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uname` (`user`),
  KEY `gid` (`gid`),
  KEY `gidd` (`gidd`),
  KEY `mrtgusname` (`user`,`uid`),
  KEY `sectorid` (`sectorid`),
  KEY `swid` (`swid`),
  KEY `swid-port` (`swid`,`switchport`),
  KEY `swport` (`switchport`),
  KEY `blockedinstalled` (`blocked`,`user_installed`),
  KEY `credit` (`credit`),
  KEY `deposit` (`deposit`),
  KEY `installed` (`user_installed`),
  KEY `localipmac` (`local_ip`,`local_mac`),
  KEY `mac` (`local_mac`),
  KEY `uiduser` (`uid`,`user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=koi8r AVG_ROW_LENGTH=3276 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('test','test',0,7,2,0.000000,0.00,'','','','','2013-07-19',0,1,'0000-00-00',0,0,0.000000,'0000-00-00 00:00:00','172.16.1.2','255.255.255.255','','10.0.1.2',NULL,2,1,1,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0.000000,0,0,0,0,NULL,NULL,'0000-00-00',0,0,0,0,NULL,'',0,2,0,0,0,0,0,0,'','','','','',0,0,'00/00/0000','','8080',0,1,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_custom_fields`
--

DROP TABLE IF EXISTS `users_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_custom_fields` (
  `uid` bigint(16) unsigned NOT NULL,
  `key` varchar(32) CHARACTER SET utf8 NOT NULL,
  `value` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`uid`,`key`),
  UNIQUE KEY `full` (`uid`,`key`,`value`),
  KEY `search` (`key`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Custom users fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_custom_fields`
--

LOCK TABLES `users_custom_fields` WRITE;
/*!40000 ALTER TABLE `users_custom_fields` DISABLE KEYS */;
INSERT INTO `users_custom_fields` VALUES (7,'ext_date_fiz_contract_conclusion','2013-07-19');
/*!40000 ALTER TABLE `users_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_pending_changes`
--

DROP TABLE IF EXISTS `users_pending_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_pending_changes` (
  `pending_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL,
  `pending_activation_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'время изменения атрибута абонента',
  `pending_attribute_name` char(24) NOT NULL DEFAULT '' COMMENT 'название атрибута, если "тип измениния" = 0',
  `pending_attribute_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'значение для изменения',
  `pending_inner_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Внутренний тип действия для конкретного атрибута. 0: "по умолчанию"',
  `stuffid` tinyint(3) unsigned NOT NULL,
  `pending_creation_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pending_activated` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'статус активации:: 0: не активирована, 1: была активирована, -1: отменена, -2: ошибка',
  PRIMARY KEY (`pending_id`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COMMENT='таблица отложенных изменений пользователя';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_pending_changes`
--

LOCK TABLES `users_pending_changes` WRITE;
/*!40000 ALTER TABLE `users_pending_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_pending_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `users_view_fsb`
--

DROP TABLE IF EXISTS `users_view_fsb`;
/*!50001 DROP VIEW IF EXISTS `users_view_fsb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `users_view_fsb` (
 `state` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `fio` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `mob_tel` tinyint NOT NULL,
  `sms_tel` tinyint NOT NULL,
  `real_ip` tinyint NOT NULL,
  `framed_ip` tinyint NOT NULL,
  `local_ip` tinyint NOT NULL,
  `local_mac` tinyint NOT NULL,
  `passportserie` tinyint NOT NULL,
  `passportpropiska` tinyint NOT NULL,
  `passportvoenkomat` tinyint NOT NULL,
  `passportgdevidan` tinyint NOT NULL,
  `inn` tinyint NOT NULL,
  `date_birth` tinyint NOT NULL,
  `numdogovor` tinyint NOT NULL,
  `use_router` tinyint NOT NULL,
  `blocked` tinyint NOT NULL,
  `last_connection` tinyint NOT NULL,
  `app` tinyint NOT NULL,
  `houseid` tinyint NOT NULL,
  `housingid` tinyint NOT NULL,
  `houseblockid` tinyint NOT NULL,
  `porch` tinyint NOT NULL,
  `floor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `users_view_fsb_address`
--

DROP TABLE IF EXISTS `users_view_fsb_address`;
/*!50001 DROP VIEW IF EXISTS `users_view_fsb_address`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `users_view_fsb_address` (
 `address` tinyint NOT NULL,
  `lane` tinyint NOT NULL,
  `house` tinyint NOT NULL,
  `app` tinyint NOT NULL,
  `porches` tinyint NOT NULL,
  `floors` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `fio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `usersadress`
--

DROP TABLE IF EXISTS `usersadress`;
/*!50001 DROP VIEW IF EXISTS `usersadress`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `usersadress` (
 `address` tinyint NOT NULL,
  `lane` tinyint NOT NULL,
  `house` tinyint NOT NULL,
  `app` tinyint NOT NULL,
  `porches` tinyint NOT NULL,
  `floors` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `user` tinyint NOT NULL,
  `fio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `usersall`
--

DROP TABLE IF EXISTS `usersall`;
/*!50001 DROP VIEW IF EXISTS `usersall`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `usersall` (
 `user` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `uid` tinyint NOT NULL,
  `gid` tinyint NOT NULL,
  `deposit` tinyint NOT NULL,
  `credit` tinyint NOT NULL,
  `fio` tinyint NOT NULL,
  `phone` tinyint NOT NULL,
  `prim` tinyint NOT NULL,
  `add_date` tinyint NOT NULL,
  `blocked` tinyint NOT NULL,
  `activated` tinyint NOT NULL,
  `framed_ip` tinyint NOT NULL,
  `passportserie` tinyint NOT NULL,
  `passportpropiska` tinyint NOT NULL,
  `passportvoenkomat` tinyint NOT NULL,
  `passportgdevidan` tinyint NOT NULL,
  `dogovor` tinyint NOT NULL,
  `block_date` tinyint NOT NULL,
  `del_date` tinyint NOT NULL,
  `freeze_date` tinyint NOT NULL,
  `mob_tel` tinyint NOT NULL,
  `numdogovor` tinyint NOT NULL,
  `app` tinyint NOT NULL,
  `houseid` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usersblok`
--

DROP TABLE IF EXISTS `usersblok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersblok` (
  `blockid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `password` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '*',
  `crypt_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` bigint(16) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `deposit` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit` double(20,2) NOT NULL DEFAULT '0.00',
  `fio` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  `prim` varchar(254) NOT NULL DEFAULT '',
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  `blocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `total_time` int(10) NOT NULL DEFAULT '0',
  `total_traffic` bigint(15) NOT NULL DEFAULT '0',
  `total_money` double(20,6) NOT NULL DEFAULT '0.000000',
  `last_connection` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `framed_ip` varchar(16) NOT NULL DEFAULT '',
  `framed_mask` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `callback_number` varchar(64) NOT NULL DEFAULT '',
  `local_ip` varchar(16) NOT NULL DEFAULT '10.0.',
  `local_mac` varchar(22) DEFAULT NULL,
  `sectorid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `create_mail` smallint(2) unsigned NOT NULL DEFAULT '1',
  `user_installed` smallint(2) unsigned NOT NULL DEFAULT '1',
  `speed_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_burst` int(10) unsigned NOT NULL DEFAULT '0',
  `gidd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link_to_ip_mac` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `passportserie` varchar(16) DEFAULT NULL,
  `passportpropiska` varchar(128) DEFAULT NULL,
  `passportvoenkomat` varchar(128) DEFAULT NULL,
  `passportgdevidan` varchar(128) DEFAULT NULL,
  `inn` varchar(64) DEFAULT NULL,
  `real_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `real_price` double(20,6) NOT NULL DEFAULT '0.000000',
  `real_ipfree` tinyint(3) NOT NULL DEFAULT '0',
  `dogovor` tinyint(2) NOT NULL DEFAULT '0',
  `credit_procent` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `block_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mob_tel` varchar(32) DEFAULT NULL,
  `sms_tel` varchar(32) DEFAULT NULL,
  `date_birth` date DEFAULT '0000-00-00',
  `date_birth_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `languarddisable` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `credit_unlimited` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dontshowspeed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `numdogovor` varchar(16) DEFAULT NULL,
  `app` char(8) NOT NULL DEFAULT '',
  `switchport` int(2) unsigned DEFAULT '0',
  `houseid` int(14) unsigned NOT NULL DEFAULT '0',
  `housingid` int(14) unsigned NOT NULL DEFAULT '0',
  `houseblockid` int(14) unsigned NOT NULL DEFAULT '0',
  `porch` int(14) unsigned NOT NULL DEFAULT '1',
  `floor` int(14) unsigned NOT NULL DEFAULT '0',
  `swid` int(10) unsigned DEFAULT '0',
  `use_router` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_model` varchar(16) NOT NULL DEFAULT '',
  `router_login` varchar(16) NOT NULL DEFAULT '',
  `router_pass` varchar(16) NOT NULL DEFAULT '',
  `router_ssid` varchar(16) NOT NULL DEFAULT '',
  `router_wep_pass` varchar(16) NOT NULL DEFAULT '',
  `router_we_saled` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_use_dual` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_add_date` varchar(10) NOT NULL DEFAULT '00/00/0000',
  `router_serial` varchar(16) NOT NULL DEFAULT '',
  `router_port` varchar(16) NOT NULL DEFAULT '8080',
  `credit_stop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_abonka` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `mac_reg` tinyint(2) NOT NULL DEFAULT '0',
  `fixed_cost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockid`),
  UNIQUE KEY `uname` (`user`),
  KEY `gid` (`gid`),
  KEY `gidd` (`gidd`),
  KEY `mrtgusname` (`user`,`uid`),
  KEY `local_ip` (`local_ip`),
  KEY `local_mac` (`local_mac`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersblok`
--

LOCK TABLES `usersblok` WRITE;
/*!40000 ALTER TABLE `usersblok` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersblok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersdel`
--

DROP TABLE IF EXISTS `usersdel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersdel` (
  `delid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `password` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '*',
  `crypt_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` bigint(16) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `deposit` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit` double(20,2) NOT NULL DEFAULT '0.00',
  `fio` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  `prim` varchar(254) NOT NULL DEFAULT '',
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  `blocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `total_time` int(10) NOT NULL DEFAULT '0',
  `total_traffic` bigint(15) NOT NULL DEFAULT '0',
  `total_money` double(20,6) NOT NULL DEFAULT '0.000000',
  `last_connection` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `framed_ip` varchar(16) NOT NULL DEFAULT '',
  `framed_mask` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `callback_number` varchar(64) NOT NULL DEFAULT '',
  `local_ip` varchar(16) NOT NULL DEFAULT '10.0.',
  `local_mac` varchar(22) DEFAULT NULL,
  `sectorid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `create_mail` smallint(2) unsigned NOT NULL DEFAULT '1',
  `user_installed` smallint(2) unsigned NOT NULL DEFAULT '1',
  `speed_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_burst` int(10) unsigned NOT NULL DEFAULT '0',
  `gidd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link_to_ip_mac` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `passportserie` varchar(16) DEFAULT NULL,
  `passportpropiska` varchar(128) DEFAULT NULL,
  `passportvoenkomat` varchar(128) DEFAULT NULL,
  `passportgdevidan` varchar(128) DEFAULT NULL,
  `inn` varchar(64) DEFAULT NULL,
  `real_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `real_price` double(20,6) NOT NULL DEFAULT '0.000000',
  `real_ipfree` tinyint(3) NOT NULL DEFAULT '0',
  `dogovor` tinyint(2) NOT NULL DEFAULT '0',
  `credit_procent` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `block_date` datetime DEFAULT NULL,
  `del_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mob_tel` varchar(32) DEFAULT NULL,
  `sms_tel` varchar(32) DEFAULT NULL,
  `date_birth` date DEFAULT '0000-00-00',
  `date_birth_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `languarddisable` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `credit_unlimited` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dontshowspeed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `numdogovor` varchar(16) DEFAULT NULL,
  `app` char(8) NOT NULL DEFAULT '',
  `switchport` int(2) unsigned DEFAULT '0',
  `houseid` int(14) unsigned NOT NULL DEFAULT '0',
  `housingid` int(14) unsigned NOT NULL DEFAULT '0',
  `houseblockid` int(14) unsigned NOT NULL DEFAULT '0',
  `porch` int(14) unsigned DEFAULT NULL,
  `floor` int(14) unsigned NOT NULL DEFAULT '0',
  `swid` int(10) unsigned DEFAULT '0',
  `use_router` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_model` varchar(16) NOT NULL DEFAULT '',
  `router_login` varchar(16) NOT NULL DEFAULT '',
  `router_pass` varchar(16) NOT NULL DEFAULT '',
  `router_ssid` varchar(16) NOT NULL DEFAULT '',
  `router_wep_pass` varchar(16) NOT NULL DEFAULT '',
  `router_we_saled` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_use_dual` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_add_date` varchar(10) NOT NULL DEFAULT '00/00/0000',
  `router_serial` varchar(16) NOT NULL DEFAULT '',
  `router_port` varchar(16) NOT NULL DEFAULT '8080',
  `credit_stop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_abonka` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `mac_reg` tinyint(2) NOT NULL DEFAULT '0',
  `fixed_cost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`delid`),
  UNIQUE KEY `uname` (`user`),
  KEY `gid` (`gid`),
  KEY `gidd` (`gidd`),
  KEY `mrtgusname` (`user`,`uid`),
  KEY `local_ip` (`local_ip`),
  KEY `local_mac` (`local_mac`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersdel`
--

LOCK TABLES `usersdel` WRITE;
/*!40000 ALTER TABLE `usersdel` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersdel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersfreeze`
--

DROP TABLE IF EXISTS `usersfreeze`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersfreeze` (
  `freezeid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `password` varchar(32) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL DEFAULT '*',
  `crypt_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` bigint(16) unsigned NOT NULL,
  `gid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `deposit` double(20,6) NOT NULL DEFAULT '0.000000',
  `credit` double(20,2) NOT NULL DEFAULT '0.00',
  `fio` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(128) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  `prim` varchar(254) NOT NULL DEFAULT '',
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  `blocked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expired` date NOT NULL DEFAULT '0000-00-00',
  `total_time` int(10) NOT NULL DEFAULT '0',
  `total_traffic` bigint(15) NOT NULL DEFAULT '0',
  `total_money` double(20,6) NOT NULL DEFAULT '0.000000',
  `last_connection` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `framed_ip` varchar(16) NOT NULL DEFAULT '',
  `framed_mask` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `callback_number` varchar(64) NOT NULL DEFAULT '',
  `local_ip` varchar(16) NOT NULL DEFAULT '10.0.',
  `local_mac` varchar(22) DEFAULT NULL,
  `sectorid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `create_mail` smallint(2) unsigned NOT NULL DEFAULT '1',
  `user_installed` smallint(2) unsigned NOT NULL DEFAULT '1',
  `speed_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_burst` int(10) unsigned NOT NULL DEFAULT '0',
  `gidd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link_to_ip_mac` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(64) DEFAULT '',
  `passportserie` varchar(16) DEFAULT '',
  `passportpropiska` varchar(128) DEFAULT '',
  `passportvoenkomat` varchar(128) DEFAULT '',
  `passportgdevidan` varchar(128) DEFAULT '',
  `inn` varchar(64) DEFAULT '',
  `real_ip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `real_price` double(20,6) NOT NULL DEFAULT '0.000000',
  `real_ipfree` tinyint(3) NOT NULL DEFAULT '0',
  `dogovor` tinyint(2) NOT NULL DEFAULT '0',
  `credit_procent` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(6) NOT NULL DEFAULT '0',
  `mob_tel` varchar(32) DEFAULT '',
  `sms_tel` varchar(32) DEFAULT '',
  `date_birth` date DEFAULT '0000-00-00',
  `date_birth_do` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `languarddisable` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `credit_unlimited` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dontshowspeed` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `numdogovor` varchar(16) DEFAULT NULL,
  `app` char(8) NOT NULL DEFAULT '',
  `switchport` int(2) unsigned DEFAULT '0',
  `houseid` int(14) unsigned NOT NULL DEFAULT '1',
  `housingid` int(14) unsigned NOT NULL DEFAULT '0',
  `houseblockid` int(14) unsigned NOT NULL DEFAULT '0',
  `porch` int(14) unsigned NOT NULL DEFAULT '0',
  `floor` int(14) unsigned NOT NULL DEFAULT '0',
  `swid` int(10) unsigned DEFAULT '0',
  `use_router` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_model` varchar(16) NOT NULL DEFAULT '',
  `router_login` varchar(16) NOT NULL DEFAULT '',
  `router_pass` varchar(16) NOT NULL DEFAULT '',
  `router_ssid` varchar(16) NOT NULL DEFAULT '',
  `router_wep_pass` varchar(16) NOT NULL DEFAULT '',
  `router_we_saled` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_use_dual` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `router_add_date` varchar(10) NOT NULL DEFAULT '00/00/0000',
  `router_serial` varchar(16) NOT NULL DEFAULT '',
  `router_port` varchar(16) NOT NULL DEFAULT '8080',
  `unfreeze_date` date NOT NULL DEFAULT '0000-00-00',
  `freeze_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit_stop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_abonka` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `mac_reg` tinyint(2) NOT NULL DEFAULT '0',
  `fixed_cost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`freezeid`),
  UNIQUE KEY `uname` (`user`),
  KEY `gid` (`gid`),
  KEY `gidd` (`gidd`),
  KEY `mrtgusname` (`user`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersfreeze`
--

LOCK TABLES `usersfreeze` WRITE;
/*!40000 ALTER TABLE `usersfreeze` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersfreeze` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgroups`
--

DROP TABLE IF EXISTS `usersgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersgroups` (
  `usersgroupid` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `usersgroupname` varchar(64) NOT NULL,
  `description` varchar(254) NOT NULL DEFAULT '',
  `share` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'доля дилера',
  `archived` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`usersgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgroups`
--

LOCK TABLES `usersgroups` WRITE;
/*!40000 ALTER TABLE `usersgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgroups_extended_fields`
--

DROP TABLE IF EXISTS `usersgroups_extended_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersgroups_extended_fields` (
  `id` tinyint(3) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `value` varchar(128) NOT NULL,
  PRIMARY KEY (`id`,`key`),
  UNIQUE KEY `full` (`id`,`key`,`value`),
  KEY `search` (`key`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Custom dealer fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgroups_extended_fields`
--

LOCK TABLES `usersgroups_extended_fields` WRITE;
/*!40000 ALTER TABLE `usersgroups_extended_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersgroups_extended_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgroups_staff`
--

DROP TABLE IF EXISTS `usersgroups_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersgroups_staff` (
  `stuffid` int(16) unsigned NOT NULL,
  `usersgroupid` int(16) unsigned NOT NULL,
  KEY `stuffid` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgroups_staff`
--

LOCK TABLES `usersgroups_staff` WRITE;
/*!40000 ALTER TABLE `usersgroups_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersgroups_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersgroups_users`
--

DROP TABLE IF EXISTS `usersgroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersgroups_users` (
  `uid` int(16) unsigned NOT NULL,
  `usersgroupid` int(16) unsigned NOT NULL,
  UNIQUE KEY `uid` (`uid`),
  KEY `usergroupid` (`usersgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersgroups_users`
--

LOCK TABLES `usersgroups_users` WRITE;
/*!40000 ALTER TABLE `usersgroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersgroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_oui`
--

DROP TABLE IF EXISTS `vendors_oui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors_oui` (
  `vendorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base16` char(6) CHARACTER SET koi8r COLLATE koi8r_bin NOT NULL,
  `company` varchar(64) NOT NULL DEFAULT '',
  `address` text NOT NULL,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB AUTO_INCREMENT=22112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_oui`
--

LOCK TABLES `vendors_oui` WRITE;
/*!40000 ALTER TABLE `vendors_oui` DISABLE KEYS */;
INSERT INTO `vendors_oui` VALUES (21814,'001765','Nortel Networks',' 8200 Dixie Rd Brampton  Ontario  0000 CA'),(21815,'0018B0','Nortel Networks',' 8200 Dixie Rd Brampton  Ontario  0000 CA'),(21816,'001B25','Nortel Networks',' 8200 Dixie Rd Brampton  Ontario  0000 CA'),(21817,'001DAF','Nortel Networks',' 8200 Dixie Rd Brampton  Ontario  0000 CA'),(21818,'00166D','Yulong Computer Telecommunication Scientific (Shenzhen) Co.,Ltd',' 8/F.high Tech Plaza,TianAn Cyberpark,Chegongmiao Shenzhen  Guangdong  518040 CN'),(21819,'0016F2','Dmobile System Co., Ltd.',' 2F, No.13-20, Sec.6, Mincyuan E.Rd, Taipei    114 TW'),(21820,'000138','XAVi Technologies Corp.',' 9F, No. 129, Hsing Te Rd, 241 TAIWAN  241 TAIWAN  R.O.C. TW'),(21821,'3C9157','Yulong Computer Telecommunication Scientific (Shenzhen) Co.,Ltd',' 5F Building 2,No.56,Liuhe Road,Xihu District Hangzhou  Zhejiang  310023 CN'),(21822,'0000D8','Novell, Inc.',' 122 EAST 1700 SOUTH M/S:E-12-1 PROVO  UT  84601 US'),(21823,'001087','XSTREAMIS PLC',' OXFORD SCIENCE PARK OXFORD 0X4 4GA  England   US'),(21824,'7C0623','Ultra Electronics Sonar System Division',' 419 Bridport Road Greenford  Middlesex  UB6 8UA GB'),(21825,'002555','Visonic Technologies 1993 Ltd.',' 23 Habarzel st\' Tel - Aviv    69710 IL'),(21826,'009058','Ultra Electronics Limited (AEP Networks)',' KNAVES BEECH BUSINESS CENTRE BUCKINGHAMSHIRE HP10 9UT  England   GB'),(21827,'48FD8E','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(21828,'244427','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(21829,'B4A984','Symantec Corporation',' 350 Ellis Street Mountain View  CA  94043 US'),(21830,'34074F','AccelStor, Inc.',' 10F, No. 465, Sec. 6, Zhongxiao E. Rd., Nangang Dist. Taipei City    11557 TW'),(21831,'58E876','IEEE Registration Authority',' 445 Hoes Lane Piscataway  NJ  08554 US'),(21832,'248A07','Mellanox Technologies, Inc.',' 350 Oakmead Parkway, Suite 100 Sunnyvale  CA  94085 US'),(21833,'00258B','Mellanox Technologies, Inc.',' 350 Oakmead Parkway, Suite 100 Sunnyvale  CA  94085 US'),(21834,'3C2DB7','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21835,'0023D4','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21836,'001831','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21837,'D08CB5','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21838,'B4EED4','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21839,'CC8CE3','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21840,'102EAF','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21841,'647BD4','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21842,'0017E8','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21843,'0017E6','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21844,'B0B448','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21845,'505663','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21846,'3C7DB1','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21847,'40984E','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21848,'0012D1','Texas Instruments',' 12500 TI Boulevard, Dallas    75243 US'),(21849,'88C255','Texas Instruments',' 12500 TI Blvd Dallas  TX  75243 US'),(21850,'E0C79D','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21851,'9059AF','Texas Instruments',' 12500 TI Boulevard, MS 8723 Dallas  TX  75243 US'),(21852,'B4994C','Texas Instruments',' 12500 TI Blvd Dallas  TX  75243 US'),(21853,'70FF76','Texas Instruments',' 12500 TI Blvd Dallas  TX  75243 US'),(21854,'507224','Texas Instruments',' 12500 TI BLVD Dallas    75243 US'),(21855,'440444','GUANGDONG OPPO MOBILE TELECOMMUNICATIONS CORP.,LTD',' NO.18 HAIBIN ROAD, DONG GUAN  GUANG DONG  523860 CN'),(21856,'506583','Texas Instruments',' 12500 TI Blvd Dallas  TX  75243 US'),(21857,'BC282C','e-Smart Systems Pvt. Ltd',' 483 FIE, , Patparganj Industrial Area Delhi  Delhi  110092 IN'),(21858,'546C0E','Texas Instruments',' 12500 TI Blvd Dallas  TX  75243 US'),(21859,'F85C4D','NOKIA',' 1 Robbins Road Westford    01886-4113 US'),(21860,'D013FD','LG Electronics (Mobile Communications)',' 60-39, Gasan-dong, Geumcheon-gu Seoul  Seoul  153-801 KR'),(21861,'D8E72B','NetScout Systems, Inc.',' 310 Littleton Road Westford  MA  01886 US'),(21862,'04FEA1','Fihonest communication co.,Ltd',' Room902,Park road,Zhixing business-building Dongguan  Guangdong  523560 CN'),(21863,'2CAC44','CONEXTOP',' Room 608, 6/F, Electric Building , High-tech Park , Nanshan Shenzhen    51800 CN'),(21864,'A8BD27','Hewlett Packard Enterprise',' 8000 Foothills Blvd. Roseville  CA  95747 US'),(21865,'981E0F','Jeelan (Shanghai Jeelan Technology Information Inc',' Room 302,Building 17, No.658, Jinzhong Road shanghai    200052 CN'),(21866,'548CA0','Liteon Technology Corporation',' 4F, 90, Chien 1 Road New Taipei City  Taiwan  23585 TW'),(21867,'707E43','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21868,'1C1448','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21869,'A47AA4','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21870,'001AAD','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21871,'E83EFC','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21872,'E8892C','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21873,'001DD3','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21874,'3CDFA9','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21875,'8C09F4','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21876,'083E0C','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21877,'D404CD','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21878,'203D66','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21879,'6455B1','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21880,'C005C2','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21881,'001225','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21882,'00128A','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21883,'0003E0','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21884,'0015D1','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21885,'E46449','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21886,'745612','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21887,'74EAE8','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21888,'A811FC','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21889,'044E5A','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21890,'94E8C5','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21891,'F8A097','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21892,'BC644B','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21893,'347A60','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21894,'0023ED','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21895,'002395','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21896,'0022B4','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21897,'002136','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21898,'0024C1','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21899,'3C754A','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21900,'40FC89','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21901,'002493','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21902,'00195E','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21903,'001404','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21904,'001BDD','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21905,'0023A2','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21906,'001E8D','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21907,'00230B','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21908,'001B52','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21909,'84E058','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21910,'003676','ARRIS Group, Inc.',' 6450 Sequence Drive San Diego  CA  92121 US'),(21911,'001CA8','AirTies Wireless Networks',' Gulbahar Mahallesi, Avni Diligil Sokak ISTANBUL  ISTANBUL  34394 TR'),(21912,'001EE2','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21913,'001C43','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21914,'001D25','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21915,'3C5A37','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21916,'549B12','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21917,'3C8BFE','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21918,'00265D','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21919,'D4E8B2','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21920,'0017D5','Samsung Electronics Co.,Ltd',' #94-1 Gumi-City  Gyeong-Buk  730-350 KR'),(21921,'001247','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi-City  Gyeong-Buk  730-350 KR'),(21922,'00233A','5481',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21923,'C87E75','5481',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21924,'78521A','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21925,'E4121D','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21926,'684898','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21927,'F409D8','SAMSUNG ELECTRO-MECHANICS(THAILAND)',' 93Moo5T. Bangsamak Bangpakong  Chachoengsao  24180 TH'),(21928,'B479A7','SAMSUNG ELECTRO-MECHANICS(THAILAND)',' 93Moo5T. Bangsamak Bangpakong  Chachoengsao  24180 TH'),(21929,'18D276','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(21930,'1C66AA','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21931,'58C38B','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21932,'0808C2','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21933,'B0C4E7','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21934,'D890E8','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21935,'34AA8B','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21936,'002339','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21937,'D487D8','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21938,'184617','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21939,'5001BB','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21940,'380A94','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21941,'D857EF','Samsung Electronics Co.,Ltd',' #94-1, Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21942,'24C696','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21943,'181EB0','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21944,'20D390','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21945,'343111','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21946,'34BE00','Samsung Electronics Co.,Ltd',' #94-1,Imsoo-Dong Gumi  Gyeongbuk  730-350 KR'),(21947,'50CCF8','SAMSUNG ELECTRO MECHANICS CO., LTD.',' Metan Dong 314, Youngtong Gu Suwon  Kyung-gi Do.  443-743 KR'),(21948,'980C82','SAMSUNG ELECTRO MECHANICS CO., LTD.',' Metan Dong 314, Youngtong Gu Suwon  Kyung-gi Do.  443-743 KR'),(21949,'002119','SAMSUNG ELECTRO MECHANICS CO., LTD.',' 314, Metan 3 dong Suwon  Kyung-gi do  443-743 KR'),(21950,'7825AD','Samsung Electronics Co.,Ltd',' 416, MAETAN-3DONG, PALDAL-GU SUWON CITY  KYUNGKI-DO  442-742 KR'),(21951,'F4D9FB','Samsung Electronics Co.,Ltd',' 416, Maetan-3dong, Yeongtong-gu, Suwon  Gyeonggi-do  443-742 KR'),(21952,'0017C9','Samsung Electronics Co.,Ltd',' 416, Maetan-3Dong, Yeongtong-Gu Suwon  Geyonggi-Do  443-742 KR'),(21953,'00166B','Samsung Electronics Co.,Ltd',' 416,Maetan-3Dong,Yeongtong-Gu Suwon-City  Kyeonggi-Do  443-742 KR'),(21954,'00166C','Samsung Electronics Co.,Ltd',' 416, Maetan-3Dong,Yeongtong-Gu Suwon  Gyeonggi-Do  443-742 KR'),(21955,'E47CF9','Samsung Electronics Co.,Ltd',' 416, Maetan-3dong, Yeongtong-gu Suwon  Gyeonggi-do  443742 KR'),(21956,'002454','Samsung Electronics Co.,Ltd',' 416, Maetan 3Dong, Yeongtong-Gu Suwon  Geyonggi  443742 KR'),(21957,'5C0A5B','SAMSUNG ELECTRO MECHANICS CO., LTD.',' 314, Maetan3-Dong, Yeongtong-Gu Suwon  Gyunggi-Do  443-743 US'),(21958,'90187C','SAMSUNG ELECTRO MECHANICS CO., LTD.',' 314, Maetan3-Dong, Yeongtong-Gu Suwon  KYUNGGI-DO  443-743 KR'),(21959,'FC1F19','SAMSUNG ELECTRO MECHANICS CO., LTD.',' 314, Maetan3-Dong, Yeongtong-Gu Suwon  Gyunggi-Do  443-743 US'),(21960,'20D5BF','Samsung Electronics Co.,Ltd',' 416, Maetan 3dong, Yeongtong-Gu Suwon  Gyeonggi-Do  443742 KR'),(21961,'30CDA7','Samsung Electronics Co.,Ltd',' 416 MAETAN 3-DONG SUWON- SI  GYEONGGI  443-742 US'),(21962,'00749C','RUIJIE NETWORKS CO., LTD.',' 19# Building,Star-net Science Plaza,Juyuanzhou, 618 Jinshan Road FUZHOU  FUJIAN  350002 CN'),(21963,'300ED5','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21964,'D02788','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21965,'0014A4','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21966,'0016CE','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21967,'001DD9','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21968,'001FE2','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21969,'48E244','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21970,'30F772','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21971,'90489A','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21972,'543530','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21973,'C03896','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21974,'2C337A','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21975,'ACD1B8','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21976,'9439E5','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21977,'506313','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21978,'78E400','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21979,'40490F','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21980,'28565A','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21981,'001F3A','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21982,'002269','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21983,'8C7CB5','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21984,'EC55F9','Hon Hai Precision Ind. Co.,Ltd.',' Building D21,No.1, East Zone 1st Road Chongqing  Chongqing  401332 CN'),(21985,'5C8613','Beijing Zhoenet Technology Co., Ltd',' Room B16,No. 8 WenHua East Road,Changping District Beijing  Beijing  102208 CN'),(21986,'D86CE9','Sagemcom Broadband SAS',' 250 route de l\'Empereur RUEIL MALMAISON CEDEX  Hauts de Seine  92848 FR'),(21987,'3C81D8','Sagemcom Broadband SAS',' 250 route de l\'Empereur RUEIL MALMAISON CEDEX  Hauts de Seine  92848 FR'),(21988,'2CE412','Sagemcom Broadband SAS',' 250 route de l\'Empereur RUEIL MALMAISON CEDEX  Hauts de Seine  92848 FR'),(21989,'181E78','Sagemcom Broadband SAS',' 250 route de l\'Empereur Rueil Malmaison  HAUTS DE SEINE  92848 FR'),(21990,'0037B7','Sagemcom Broadband SAS',' 250 route de l\'Empereur Rueil Malmaison  HAUTS DE SEINE  92848 FR'),(21991,'0014BF','Cisco-Linksys, LLC',' 121 Theory Dr. Irvine  CA  92612 US'),(21992,'6C8DC1','Apple, Inc.',' 1 Infinite Loop Cupertino  CA  95014 US'),(21993,'38CADA','Apple, Inc.',' 1 Infinite Loop Cupertino  CA  95014 US'),(21994,'8C579B','Wistron Neweb Corporation',' No.20,Park Avenue II,Hsinchu Science Park Hsin-Chu  R.O.C.  308 TW'),(21995,'B436A9','Fibocom Wireless Inc. ','  5/F,Tower A,Technology Building II,1057# Nanhai Blvd Shenzhen  GuangDong  518000 CN'),(21996,'6416F0','HUAWEI TECHNOLOGIES CO.,LTD',' Building 2, Zone B,Huawei Industrial Park,Bantian, Longgang District Shenzhen  Guangdong  518129 CN'),(21997,'48DB50','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan  Guangdong  523808  CN'),(21998,'2400BA','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan  Guangdong  523808  CN'),(21999,'68DBCA','Apple, Inc.',' 1 Infinite Loop Cupertino  CA  95014 US'),(22000,'044BED','Apple, Inc.',' 1 Infinite Loop Cupertino  CA  95014 US'),(22001,'3CBB73','Shenzhen Xinguodu Technology Co., Ltd.',' F17A, JinSong Building, Tairan Industrial & Trade Park, Chegongmiao, Shennan RoadО╪▄Futian District Shenzhen  Guangdong  518040 CN'),(22002,'3CCF5B','ICOMM HK LIMITED',' SUITES 2302-6, 23/F GREAT EAGLE CTR 23 HARBOUR RD  WANCHAI    NA HK'),(22003,'F40304','Google, Inc.',' 1600 Amphitheatre Pkwy Mt. View  CA  94043 US'),(22004,'78ACC0','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22005,'3C9066','SmartRG, Inc.',' 501 SE Columbia Shores Blvd Vancouver  WA  98661 US'),(22006,'00195B','D-Link Corporation',' NO.289, Sinhu 3rd Rd., Neihu District,  Taipei City  114 TW'),(22007,'000D88','D-Link Corporation',' No.8, Li-Hsing 7 Road, Science-Based Ind Hsinchu    30077 TW'),(22008,'001346','D-Link Corporation',' 2F, No.233-2, Pao-Chiao Road Hsin-Tien,  Taipei  231 TW'),(22009,'205532','Gotech International Technology Limited',' Unit 2506, 25/F, Prosperity Place,6 Shing Yip Street, Kwun Tong,  Kowloon Hong Kong    00000 CN'),(22010,'002401','D-Link Corporation',' No.289, Sinhu 3rd RD., Neihu District,  Taipei City  114 TW'),(22011,'1CAFF7','D-Link International',' 1 INTERNATIONAL  BUSINESS  PARK, SINGAPORE    609917 SG'),(22012,'B8A386','D-Link International',' 1 International Business Park, #03-12, The Synergy  SINGAPORE    609917 SG'),(22013,'C8D3A3','D-Link International',' 1 Internal Business Park, #03-12. The Synergy Singapore Singapore    609917 US'),(22014,'4419B6','Hangzhou Hikvision Digital Technology Co.,Ltd.',' No.469,Jianghui Road Hangzhou  Zhejiang  310052 CN'),(22015,'C056E3','Hangzhou Hikvision Digital Technology Co.,Ltd.',' No.469,Jianghui Road Hangzhou  Zhejiang  310052 CN'),(22016,'C8E7D8','SHENZHEN MERCURY COMMUNICATION TECHNOLOGIES CO.,LTD.',' Mid-Fourth Flr., Building 28, Cui Xi Fourth RoadО╪▄Ke Yuan West,Nanshan Shenzhen  Guangdong  518057 CN'),(22017,'E01C41','Aerohive Networks Inc.',' 330 Gibraltar Drive Sunnyvale  CA  94089 US'),(22018,'D854A2','Aerohive Networks Inc.',' 330 Gibraltar Dr. Sunnyvale  CA  94089 US'),(22019,'9CEFD5','Panda Wireless, Inc.',' 15559 Union Ave, Suite 300 Los Gatos  CA  95032 US'),(22020,'C02C7A','Shenzhen Horn Audio Co.,Ltd.',' Block17,Tongfuyu lnd.Zone,Dalang,Baoan  Shenzhen  Guang Dong   518109  CN'),(22021,'88B8D0','Dongguan Koppo Electronic Co.,Ltd',' No.2,б═Thirdб═Road,б═Buxinjiб═Industrialб═Area,б═Guanjingtouб═Village,б═Fenggangб═Town,б═Dongguanб═City,б═Guangdongб═Province,б═China Dongguan    523705 CN'),(22022,'38E7D8','HTC Corporation',' No.23 Xinghua Road Taoyuan County    330 TW'),(22023,'D8B377','HTC Corporation',' No. 23, Xinghua Rd.,  Taoyuan City    330 TW'),(22024,'B4CEF6','HTC Corporation',' No. 23, Xinghua Rd., Taoyuan City Taoyuan County  Taiwan  330 TW'),(22025,'D40B1A','HTC Corporation',' No. 23, Xinghua Rd. Taoyuan County  Taiwan  330 TW'),(22026,'A08D16','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan  Guangdong  523808  CN'),(22027,'601888','zte corporation',' 12/F.,zte R&D building ,kejinan Road,Shenzhen,P.R.China shenzhen  guangdong  518057 CN'),(22028,'8002DF','ORA Inc.',' No.1 Anjialou, Xiaoliangmaqiao Ave., Chaoyang Dist. BeiJing    100125 CN'),(22029,'D8FC38','Giantec Semiconductor Inc',' No12, Lane647, Songtao Rd, Zhangjiang Hi-Tech Park Shanghai  Shanghai  201203 CN'),(22030,'2C6798','InTalTech Ltd.',' Shlomo Ben David 5 Rishon LeZion    7536215 IL'),(22031,'D0BF9C','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22032,'B05ADA','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22033,'001083','Hewlett Packard',' MAIL STOP 42LE CUPERTINO  CA  95014 US'),(22034,'0001E6','Hewlett Packard',' 11000 Wolfe Road, Mailstop 42LE Cupertino  CA  95014 US'),(22035,'C44044','RackTop Systems Inc.',' 11840 W Market Pl Suite K Fulton  MD  20759 US'),(22036,'3898D8','MERITECH CO.,LTD',' 52-17 Sinjeon-Ro 41beon-gil Giheung-gu, Yongin-City Kyungki-do    446-599 KR'),(22037,'C8675E','Aerohive Networks Inc.',' 330 Gibraltar Drive Sunnyvale  CA  94089 US'),(22038,'000CF1','Intel Corporation',' MS: JF3-420 Hillsboro  OR  97124 US'),(22039,'000E0C','Intel Corporation',' 2111 NE  25th Avenue Hillsboro  OR  97124 US'),(22040,'BC0F64','Intel Corporate',' Lot 8, Jalan Hi-Tech 2/3 Kulim  Kedah  09000 MY'),(22041,'6CA100','Intel Corporate',' Lot 8, Jalan Hi-Tech 2/3 Kulim  Kedah  09000 MY'),(22042,'94659C','Intel Corporate',' Lot 8, Jalan Hi-Tech 2/3 Kulim  Kedah  09000 MY'),(22043,'1002B5','Intel Corporate',' Lot 8, Jalan Hi-Tech 2/3 Kulim  Kedah  09000 MY'),(22044,'A468BC','Private',''),(22045,'441EA1','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22046,'D8D385','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22047,'18A905','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22048,'00237D','Hewlett Packard',' 20555 State Highway 249 Houston  TX  77070 US'),(22049,'002655','Hewlett Packard',' 20555 State Highway 249 Houston  TX  77070 US'),(22050,'001438','Hewlett Packard',' 20555 State Highway 249 Houston  TX  77070 US'),(22051,'001560','Hewlett Packard',' 20555 State Highway 249 Houston  TX  77070 US'),(22052,'288023','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22053,'645106','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22054,'5CB901','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22055,'DC4A3E','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22056,'2C59E5','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22057,'9CB654','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22058,'38EAA7','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22059,'E83935','Hewlett Packard',' 11445 Compaq Center Drive Houston    77070 US'),(22060,'08EB74','HUMAX Co., Ltd.',' HUMAX Village, 11-4, Sunae-dong, Bundang-gu Seongnam-si  Gyeonggi-do  463-825 KR'),(22061,'6CB56B','HUMAX Co., Ltd.',' HUMAX Village,216,Hwangsaeul-ro,Bundang-gu Seongnam-si  Gyeonggi-do  463-875 KR'),(22062,'940937','HUMAX Co., Ltd.',' HUMAX Village, 216, Hwangsaeul-ro, Bundang-gu, Seongnam-si  Gyeonggi-do  463-875 KR'),(22063,'403DEC','HUMAX Co., Ltd.',' HUMAX Village, 216, Hwangsaeul-ro, Bundang-gu, Seongnam-si  Gyeonggi-do  463-875 KR'),(22064,'E84DD0','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22065,'D81FCC','Brocade Communications Systems, Inc.',' 130 Holger Way San Jose  null  95134 US'),(22066,'140467','SNK Technologies Co.,Ltd.',' #1001, Byuksan Sunyoung Technopia, A-dong, 13 Ojeongongeop-gil, Uiwang-si,  Gyeonggi-do  16072 KR'),(22067,'EC5F23','Qinghai Kimascend Electronics Technology Co. Ltd.',' 2F,Building 6,J6 Science&Tech Park, No.6 Jiangjun Rd., Jiangning District Nanjing  Jiangsu  211100 CN'),(22068,'047D50','Shenzhen Kang Ying Technology Co.Ltd.',' Units 608,Saiba Electronic tower,NO.6, Langshan 2 Rd., Hi-Tech Industrial Park North , Nanshan, Shenzhen City Shenzhen  Guangdong  518057 CN'),(22069,'54EFFE','Fullpower Technologies, Inc.',' 1200 Pacific Avenue Santa Cruz  CA  95060 US'),(22070,'EC52DC','WORLD MEDIA AND TECHNOLOGY Corp.',' 600 Brickell World Plaza, suite 1775 Miami    33132 US'),(22071,'A4D18C','Apple, Inc.',' 1 Infinite Loop Cupertino  CA  95014 US'),(22072,'CC25EF','Apple, Inc.',' 1 Infinite Loop Cupertino  CA  95014 US'),(22073,'240995','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22074,'247F3C','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22075,'1C8E5C','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22076,'94772B','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22077,'F4E3FB','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22078,'04021F','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22079,'0034FE','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22080,'D02DB3','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate Shenzhen  GuangDong  518057 CN'),(22081,'086361','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate Shenzhen  GuangDong  518057 CN'),(22082,'F80113','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park Shenzhen  Guangdong  518057 CN'),(22083,'70723C','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park,  Shenzhen  Guangdong  518057 CN'),(22084,'5C7D5E','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park,  Shenzhen  Guangdong  518057 CN'),(22085,'4C8BEF','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park,  Shenzhen  Guangdong  518057 CN'),(22086,'20F3A3','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate,Shiyan Baoan District  Shenzhen  Guangdong  518057 CN'),(22087,'ACE87B','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate,Shiyan Baoan District  Shenzhen  Guangdong  518057 CN'),(22088,'688F84','HUAWEI TECHNOLOGIES CO.,LTD',' D1,Huawei Industrial Base SHENZHEN  GUANGDONG  518129 CN'),(22089,'ACF7F3','Xiaomi Communications Co Ltd',' Quanshitiandi Tower A,12th Floor, Jia 50 Wangjing Xilu bejing  Beijing  100102 CN'),(22090,'889471','Brocade Communications Systems, Inc.',' 110 Holger Way San Jose  CA  95134 US'),(22091,'CC4E24','Brocade Communications Systems, Inc.',' 110 Holger Way San Jose  CA  95134 US'),(22092,'50EB1A','Brocade Communications Systems, Inc.',' 110 Holger Way San Jose  CA  95134 US'),(22093,'0027F8','Brocade Communications Systems, Inc.',' 110 Holger Way San Jose  CA  95134 US'),(22094,'000533','Brocade Communications Systems, Inc.',' 1745 Technology Dr. San Jose  CA  95110 US'),(22095,'0060DF','Brocade Communications Systems, Inc.',' 1745 Technology Dr. San Jose  CA  95110 US'),(22096,'4CAC0A','zte corporation',' 12/F,ZTE R&D Building,Kejinan Road, Shenzhen  Guangdong  518057 CN'),(22097,'0026ED','zte corporation',' 12/F ZTE Plaza,Keji Road South,Hi-Tech Industrial Park,Nanshan District, Shenzhen  GUANGDONG  518057 CN'),(22098,'002293','zte corporation',' 12/F ZTE Plaza,Keji Road South,Hi-Tech Industrial Park,Nanshan District, Shenzhen  GUANGDONG  518057 CN'),(22099,'FCD733','TP-LINK TECHNOLOGIES CO.,LTD.',' Buildingб═24 (floors 1,3,4,5) andб═28 (floors1-4)б═ Shennan Rd, Nanshan  Shenzhen,Guangdong Province  518057 CN'),(22100,'10A5D0','Murata Manufacturing Co., Ltd.',' 1-10-1,Higashikotari Nagaokakyo-shi  Kyoto  617-8555 JP'),(22101,'D4C9B2','Quanergy Systems Inc',' 482 Mercury Drive Sunnyvale  California  94085 US'),(22102,'E4CE02','WyreStorm Technologies Ltd',' Tech Valley Park, 23 Wood Road Round Lake  New York  12151 GB'),(22103,'2002AF','Murata Manufacturing Co., Ltd.',' 1-10-1 Higashikotari Nagaokakyo-shi  Kyoto  617-8555 JP'),(22104,'0026E8','Murata Manufacturing Co., Ltd.',' 2288, Oaza-Ohshinohara, Yasu-cho, Yasu-gun  Shiga  520-2393 JP'),(22105,'ECCB30','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22106,'786A89','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22107,'2008ED','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22108,'509F27','HUAWEI TECHNOLOGIES CO.,LTD',' No.2 Xin Cheng Road, Room R6,Songshan Lake Technology Park Dongguan    523808 CN'),(22109,'CC96A0','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate,Shiyan Baoan District, Shenzhen  Guangdong  518108 CN'),(22110,'54A51B','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate,Shiyan Baoan District, Shenzhen  Guangdong  518108 CN'),(22111,'F4C714','HUAWEI TECHNOLOGIES CO.,LTD',' Building 17,Nangang Industrial Park, Tangtou 3nd Industrial Estate,Shiyan Baoan District, Shenzhen  Guangdong  518108 CN');
/*!40000 ALTER TABLE `vendors_oui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `white_list_srv`
--

DROP TABLE IF EXISTS `white_list_srv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `white_list_srv` (
  `srvid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serv` varchar(64) NOT NULL,
  `mikrotik` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(32) NOT NULL,
  `login` varchar(64) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `disable` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`srvid`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `white_list_srv`
--

LOCK TABLES `white_list_srv` WRITE;
/*!40000 ALTER TABLE `white_list_srv` DISABLE KEYS */;
/*!40000 ALTER TABLE `white_list_srv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `white_list_srv_ip`
--

DROP TABLE IF EXISTS `white_list_srv_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `white_list_srv_ip` (
  `white_ip` char(32) NOT NULL DEFAULT '',
  `action` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`white_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=koi8r;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `white_list_srv_ip`
--

LOCK TABLES `white_list_srv_ip` WRITE;
/*!40000 ALTER TABLE `white_list_srv_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `white_list_srv_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mikbill'
--
/*!50003 DROP FUNCTION IF EXISTS `check_blocked_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_blocked_func`(input_uid int) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Check user for blocked=1'
BEGIN
  DECLARE tmp_value int;
  DECLARE return_value int DEFAULT 0;

  
  SELECT
    blocked INTO tmp_value
  FROM users
  WHERE uid = input_uid;

  IF tmp_value
  THEN
    SET return_value = tmp_value;
  ELSE
    
    SELECT
      blocked INTO tmp_value
    FROM usersfreeze
    WHERE uid = input_uid;
    
    IF tmp_value
    THEN
      SET return_value = tmp_value;
    ELSE
      
      SELECT
        blocked INTO tmp_value
      FROM usersblok
      WHERE uid = input_uid;
      
      IF tmp_value
      THEN
        SET return_value = tmp_value;
      ELSE
        
        SELECT
          blocked INTO tmp_value
        FROM usersdel
        WHERE uid = input_uid;
        IF tmp_value
        THEN
          SET return_value = tmp_value;
        ELSE
          
          SET return_value = NULL;
        END IF;
      END IF;
    END IF;
  END IF;
  RETURN return_value;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_blocked_mem_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_blocked_mem_func`(input_uid INT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Проверка на блокировку абонента в radacctmem'
BEGIN
  DECLARE return_value INT DEFAULT 0;

  SELECT blocked
  INTO
    return_value
  FROM
    radacctmem
  WHERE
    uid = input_uid ORDER BY last_change LIMIT 1;

  RETURN return_value;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_ip_pool_simul_use` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `check_ip_pool_simul_use`(input_uid INT, input_ip VARCHAR(15)) RETURNS int(11)
    DETERMINISTIC
    COMMENT 'Проверить на колличество IP по UID в пуле'
BEGIN
  DECLARE return_value INT DEFAULT 0;

  SELECT count(uid)
  INTO
    return_value
  FROM
    ip_pools_pool_use
  WHERE
    uid = input_uid
    AND
    poolip LIKE input_ip;
  RETURN return_value;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_ip_pool_simul_use_by_ip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `check_ip_pool_simul_use_by_ip`(input_ip VARCHAR(15)) RETURNS int(11)
    DETERMINISTIC
    COMMENT 'Проверить на колличество IP по IP в пуле'
BEGIN
  DECLARE return_value INT DEFAULT 0;

  SELECT count(uid)
  INTO
    return_value
  FROM
    ip_pools_pool_use
  WHERE
    poolip LIKE input_ip;
  RETURN return_value;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_money_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_money_func`(input_uid int) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'get sum by user'
BEGIN
  DECLARE tmp_value int;
  DECLARE return_value int DEFAULT 0;

  
  SELECT
    SUM(deposit + credit) INTO tmp_value
  FROM users
  WHERE uid = input_uid;

  IF tmp_value
  THEN
    SET return_value = tmp_value;
  ELSE
    
    SELECT
      SUM(deposit + credit) INTO tmp_value
    FROM usersfreeze
    WHERE uid = input_uid;
    
    IF tmp_value
    THEN
      SET return_value = tmp_value;
    ELSE
      
      SELECT
        SUM(deposit + credit) INTO tmp_value
      FROM usersblok
      WHERE uid = input_uid;
      
      IF tmp_value
      THEN
        SET return_value = tmp_value;
      ELSE
        
        SELECT
          SUM(deposit + credit) INTO tmp_value
        FROM usersdel
        WHERE uid = input_uid;
        IF tmp_value
        THEN
          SET return_value = tmp_value;
        ELSE
          
          SET return_value = NULL;
        END IF;
      END IF;
    END IF;
  END IF;
  RETURN return_value;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_money_mem_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_money_mem_func`(input_uid INT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Получить сумму по абоненту из radacctmem'
BEGIN
  DECLARE return_value INT DEFAULT 0;

  SELECT sum(deposit + credit)
INTO
  return_value
FROM
  radacctmem
WHERE
  uid = input_uid ORDER BY last_change LIMIT 1;

  RETURN return_value;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_privat_pay_account_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_privat_pay_account_payment`(input_ref VARCHAR(255)) RETURNS varchar(255) CHARSET koi8r
    DETERMINISTIC
    COMMENT 'Ищет, был ли уже проведён данный платёж'
BEGIN
  DECLARE `exist` varchar(255) DEFAULT '0';

  SELECT `ref`
  INTO
    exist
  FROM
    `addons_privat_payment_account`
  WHERE
    `ref` = `input_ref`;

  RETURN `exist`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_simul_usage_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_simul_usage_func`(input_uid INT) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'check online'
BEGIN
  DECLARE return_value INT DEFAULT 0;

  SELECT count(uid)
  INTO
    return_value
  FROM
    radacctbras
  WHERE
    uid = input_uid;

  RETURN return_value;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_simul_usage_ip_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `check_simul_usage_ip_func`(input_ip VARBINARY(15)) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'Check Online by IP'
BEGIN
  DECLARE return_value INT DEFAULT 0;

  SELECT count(uid)
  INTO
    return_value
  FROM
    radacctbras
  WHERE
    framedipaddress = input_ip;

  RETURN return_value;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `get_version`() RETURNS varchar(10) CHARSET koi8r
    COMMENT 'get version of mikbill'
BEGIN
 DECLARE return_value varchar(10) DEFAULT '2.8.16';
SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(`description`,'-',-1),'.',3) INTO
    return_value FROM `changelog` order by `change_number` DESC LIMIT 1;
RETURN return_value;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `user_generate_login_algorithm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 FUNCTION `user_generate_login_algorithm`() RETURNS varchar(255) CHARSET koi8r
    DETERMINISTIC
    COMMENT 'Генерируем логин на основании заданного метода'
BEGIN
  DECLARE `vn` INT;
  DECLARE `login` varchar(255);
  SET @keyName = 'viitenumber';

  
  
  SELECT `value` + 1 
  INTO
    `vn`
  FROM
    `system_options`
  WHERE
    `key` = @keyName;

  IF (ISNULL(`vn`)) THEN
    INSERT INTO `system_options` (`key`,value) VALUES (@keyName ,'1');
    SET `vn` = 1;
  ELSE
    UPDATE `system_options` SET `value` = `vn` WHERE `key` = @keyName;
  END IF;

  
  

  
  SET @summ = CAST(
(SUBSTR(`vn`,1,1)*3)+
(SUBSTR(`vn`,2,1)*7)+
(SUBSTR(`vn`,3,1)*1)+
(SUBSTR(`vn`,4,1)*3)+
(SUBSTR(`vn`,5,1)*7)+
(SUBSTR(`vn`,6,1)*1)+
(SUBSTR(`vn`,7,1)*3 + (SUBSTR(`vn`,8,1)*7)) AS SIGNED);

  SET @lastnum = CEIL(@summ / 10) * 10 - @summ;

  SET `login` = CONCAT(`vn`, @lastnum);

  RETURN `login`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `connect_switch_to_KOI8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `connect_switch_to_KOI8`()
    DETERMINISTIC
    COMMENT 'Переключаем соединение в koi8r'
BEGIN
SET `character_set_results` = 'koi8r';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `connect_switch_to_UTF8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `connect_switch_to_UTF8`()
    DETERMINISTIC
    COMMENT 'Переключаем соединение в utf8'
BEGIN
  SET `character_set_results` = 'utf8';
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `del_ip_pool_us_by_ip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `del_ip_pool_us_by_ip`(IN input_ip VARCHAR(15))
    DETERMINISTIC
    COMMENT 'Удалить IP из pool_use'
BEGIN
  DELETE
  FROM
    ip_pools_pool
  WHERE
    poolip LIKE input_ip;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_post_auth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `do_post_auth`(IN uid INT, IN username VARCHAR(32), IN pass VARCHAR(32), IN packettypeid INT, IN replymessageid INT, IN nasid INT, IN nasportid INT, IN callingstationid VARCHAR(64))
    DETERMINISTIC
BEGIN
  INSERT INTO `radpostauthnew` VALUES (NULL, uid, username, pass, packettypeid, replymessageid, nasid, nasportid, callingstationid, current_timestamp);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_radnas_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `do_radnas_log`(IN nasipaddress   VARCHAR(15),
                               IN acctstatustype VARCHAR(32),
                               IN nasIdentifier  VARCHAR(64)
                               )
    DETERMINISTIC
    COMMENT 'делать лог включения NAS'
BEGIN
  INSERT INTO radnaslog VALUES (NULL, current_timestamp, nasipaddress, acctstatustype, nasIdentifier);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_switch_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `do_switch_log`(IN uid INT, IN swid INT, IN port INT, IN mac VARCHAR(17), IN vlan INT(5))
    MODIFIES SQL DATA
    DETERMINISTIC
    COMMENT 'Выполнить логирование события на свиче'
BEGIN
  INSERT INTO `switch_logs` VALUES (NULL, current_timestamp, uid, swid, port, mac, vlan);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `do_switch_opt82_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `do_switch_opt82_log`(IN `uid` INT, IN `user_mac` VARCHAR(17), IN `vlan` INT(5), IN `user_port` int(4), IN `swid` int, IN `logtypeid` smallint(10), IN `swid_mac` VARCHAR(17), IN `switch_circuit_id` varchar(64), IN `switch_remote_id` varchar(64))
    DETERMINISTIC
    COMMENT 'Выполнить логирование события в ядре по DHCP Option 82'
BEGIN
  INSERT INTO `switch_opt82_logs` VALUES (NULL, CURRENT_TIMESTAMP, `uid`, `user_mac`, `vlan`, `user_port`, `swid`, `logtypeid`, `swid_mac`, `switch_circuit_id`, `switch_remote_id`);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_proper_by_login_from_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_user_proper_by_login_from_users`(IN input_login VARCHAR(32))
    DETERMINISTIC
    COMMENT 'Получить данные пользователя для ядра mikbill по login из users'
BEGIN
  SELECT *
  FROM
    users
  WHERE
    user = input_login;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ip_pool_insert_del_ip_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `ip_pool_insert_del_ip_1`(IN input_ip VARCHAR(15), IN input_poolid INT, IN input_time INT, IN input_acctsessionid VARCHAR(64), IN input_acctuniqueid VARCHAR(32), IN input_uid INT)
    DETERMINISTIC
    COMMENT 'Вставить в use и удалить из pool'
BEGIN
  INSERT INTO ip_pools_pool_use VALUES (input_ip, input_poolid, input_time, input_acctsessionid, input_acctuniqueid, input_uid);
  DELETE
  FROM
    ip_pools_pool
  WHERE
    poolip LIKE input_ip;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `kurva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `kurva`()
    DETERMINISTIC
begin

declare id int;
declare name2 varchar(50);
declare oldname varchar(50);
declare number2 int;
DECLARE done INT DEFAULT 0;

declare cr cursor for
select a.uid, b.user
  from users a
 inner join users b
    on a.houseid = b.houseid
   and a.app = b.app
 where a.app != 0 and b.app != 0
   and a.gid = 37 and b.gid != 37
order by b.user;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

open cr;


REPEAT


FETCH cr INTO id, name2;

if name2 != oldname then
    set number2 = 0;
end if;

set number2 = number2 + 1;

update users
   set user = concat(name2, "-", number2)
 where uid = id;

set oldname = name2;

UNTIL done END REPEAT;
close cr;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `last_connection` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `last_connection`(IN input_uid bigint(16), IN input_time bigint)
    MODIFIES SQL DATA
    DETERMINISTIC
    SQL SECURITY INVOKER
BEGIN
  UPDATE `users`
  SET `last_connection` = FROM_UNIXTIME(input_time)
  WHERE uid = input_uid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mikbill_analyze_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `mikbill_analyze_all`()
    COMMENT 'Анализ таблиц БД mikbill'
BEGIN
  DECLARE endloop   INT DEFAULT 0;
  DECLARE tableName CHAR(100);
  DECLARE rCursor CURSOR FOR SELECT `TABLE_NAME`
                             FROM
                               `information_schema`.`TABLES`
                             WHERE
                               ENGINE = 'InnoDB'
                               AND
                               `TABLE_SCHEMA` = database();
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET endloop = 1;

  OPEN rCursor;
  FETCH rCursor INTO tableName;

  WHILE endloop = 0
  DO
    SET @sql = concat("ANALYZE NO_WRITE_TO_BINLOG TABLE `", tableName, "`");
    PREPARE statement FROM @sql;
    EXECUTE statement;

    FETCH rCursor INTO tableName;
  END WHILE;

  CLOSE rCursor;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mikbill_optimize_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `mikbill_optimize_all`()
    COMMENT 'Оптимизация таблиц БД mikbill'
BEGIN
  DECLARE endloop   INT DEFAULT 0;
  DECLARE tableName CHAR(100);
  DECLARE rCursor CURSOR FOR SELECT `TABLE_NAME`
                             FROM
                               `information_schema`.`TABLES`
                             WHERE
                               ENGINE = 'InnoDB'
                               AND
                               `TABLE_SCHEMA` = database();
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET endloop = 1;

  OPEN rCursor;
  FETCH rCursor INTO tableName;

  WHILE endloop = 0
DO
  SET @sql = concat("OPTIMIZE TABLE `", tableName, "`");
  PREPARE statement FROM @sql;
  EXECUTE statement;

  FETCH rCursor INTO tableName;
END WHILE;

  CLOSE rCursor;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mikbill_repair_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`mikbill`@`localhost`*/ /*!50003 PROCEDURE `mikbill_repair_all`()
    COMMENT 'Проверка таблиц БД mikbill'
BEGIN
  DECLARE endloop   INT DEFAULT 0;
  DECLARE tableName CHAR(100);
  DECLARE rCursor CURSOR FOR SELECT `TABLE_NAME`
                             FROM
                               `information_schema`.`TABLES`
                             WHERE 
                                ENGINE = 'InnoDB' AND
                               `TABLE_SCHEMA` = database();
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET endloop = 1;

  OPEN rCursor;
  FETCH rCursor INTO tableName;

  WHILE endloop = 0
  DO
    SET @sql = concat("REPAIR TABLE `", tableName, "`");
    PREPARE statement FROM @sql;
    EXECUTE statement;

    FETCH rCursor INTO tableName;
  END WHILE;

  CLOSE rCursor;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_ip_pool_use_by_acct_packet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `update_ip_pool_use_by_acct_packet`(IN input_uid           INT,
                                                   IN input_acctsessionid VARCHAR(64),
                                                   IN input_acctuniqueid  VARCHAR(32),
                                                   IN input_last_change   INT
                                                   )
    DETERMINISTIC
    COMMENT 'Обновить ip_pool_use во время acct пакетов из radius'
BEGIN
  UPDATE ip_pools_pool_use
  SET
    last_change = input_last_change, acctsessionid = input_acctsessionid, acctuniqueid = input_acctuniqueid
  WHERE
    uid = input_uid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_ip_pool_use_only_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `update_ip_pool_use_only_time`(IN input_uid INT, IN input_last_change INT)
    DETERMINISTIC
    COMMENT 'Обновить ip_pool_use только время по UID'
BEGIN
  UPDATE ip_pools_pool_use
  SET
    last_change = input_last_change
  WHERE
    uid = input_uid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `actions`
--

/*!50001 DROP TABLE IF EXISTS `actions`*/;
/*!50001 DROP VIEW IF EXISTS `actions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actions` AS select `r`.`username` AS `user`,`r`.`gid` AS `gid`,`r`.`acctsessionid` AS `id`,`r`.`acctuniqueid` AS `unique_id`,`r`.`acctsessiontime` AS `time_on`,`r`.`acctstarttime` AS `start_time`,`r`.`acctstoptime` AS `stop_time`,`r`.`acctinputoctets` AS `in_bytes`,`r`.`acctoutputoctets` AS `out_bytes`,`r`.`framedipaddress` AS `ip`,`r`.`nasipaddress` AS `server`,`r`.`nasipaddress` AS `client_ip`,`r`.`calledstationid` AS `call_to`,`r`.`callingstationid` AS `call_from`,_utf8'' AS `connect_info`,`r`.`acctterminatecause` AS `terminate_cause`,`r`.`last_change` AS `last_change`,`r`.`before_billing` AS `before_billing`,`r`.`billing_minus` AS `billing_minus` from `radacct` `r` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_logs`
--

/*!50001 DROP TABLE IF EXISTS `event_logs`*/;
/*!50001 DROP VIEW IF EXISTS `event_logs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_logs` AS select `event_system`.`evid` AS `evid`,from_unixtime(`event_system`.`time`) AS `time`,`event_system`.`queue` AS `use_queue`,`event_system`.`uid` AS `uid`,`event_type`.`evname` AS `evname` from (`event_system` left join `event_type` on((`event_system`.`evtpid` = `event_type`.`evtpid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inetonline`
--

/*!50001 DROP TABLE IF EXISTS `inetonline`*/;
/*!50001 DROP VIEW IF EXISTS `inetonline`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inetonline` AS select `r`.`gid` AS `gid`,`r`.`uid` AS `uid`,`r`.`username` AS `user`,`r`.`nasportid` AS `port`,`r`.`nasipaddress` AS `server`,`r`.`framedipaddress` AS `ip`,`r`.`callingstationid` AS `call_from`,date_format(`r`.`acctstarttime`,_utf8'%d %b, %H:%i:%s') AS `fstart_time`,`r`.`acctsessiontime` AS `time_on`,`r`.`acctinputoctets` AS `in_bytes`,`r`.`acctoutputoctets` AS `out_bytes`,`r`.`billing_minus` AS `billing_minus` from `radacctbras` `r` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inetonlinenew`
--

/*!50001 DROP TABLE IF EXISTS `inetonlinenew`*/;
/*!50001 DROP VIEW IF EXISTS `inetonlinenew`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inetonlinenew` AS select `r`.`radacctid` AS `radacctid`,`r`.`acctsessionid` AS `acctsessionid`,`r`.`acctuniqueid` AS `acctuniqueid`,`r`.`username` AS `username`,`r`.`uid` AS `uid`,`r`.`gid` AS `gid`,`r`.`nasipaddress` AS `nasipaddress`,`r`.`nasportid` AS `nasportid`,`r`.`acctstarttime` AS `acctstarttime`,`r`.`acctstoptime` AS `acctstoptime`,`r`.`acctsessiontime` AS `acctsessiontime`,`r`.`acctinputoctets` AS `acctinputoctets`,`r`.`acctoutputoctets` AS `acctoutputoctets`,`r`.`calledstationid` AS `calledstationid`,`r`.`callingstationid` AS `callingstationid`,`r`.`acctterminatecause` AS `acctterminatecause`,`r`.`framedipaddress` AS `framedipaddress`,`r`.`last_change` AS `last_change`,`r`.`before_billing` AS `before_billing`,`r`.`billing_minus` AS `billing_minus` from `radacctbras` `r` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inetonlinewithspeed`
--

/*!50001 DROP TABLE IF EXISTS `inetonlinewithspeed`*/;
/*!50001 DROP VIEW IF EXISTS `inetonlinewithspeed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inetonlinewithspeed` AS select `r`.`radacctid` AS `radacctid`,`r`.`acctsessionid` AS `acctsessionid`,`r`.`acctuniqueid` AS `acctuniqueid`,`r`.`username` AS `username`,`r`.`uid` AS `uid`,`r`.`gid` AS `gid`,`r`.`nasipaddress` AS `nasipaddress`,`r`.`nasportid` AS `nasportid`,`r`.`acctstarttime` AS `acctstarttime`,`r`.`acctstoptime` AS `acctstoptime`,`r`.`acctsessiontime` AS `acctsessiontime`,`r`.`acctinputoctets` AS `acctinputoctets`,`r`.`acctoutputoctets` AS `acctoutputoctets`,`r`.`calledstationid` AS `calledstationid`,`r`.`callingstationid` AS `callingstationid`,`r`.`acctterminatecause` AS `acctterminatecause`,`r`.`framedipaddress` AS `framedipaddress`,`r`.`last_change` AS `last_change`,`r`.`before_billing` AS `before_billing`,`r`.`billing_minus` AS `billing_minus`,`u`.`speed_rate` AS `user_speed_in`,`u`.`speed_burst` AS `user_speed_out`,`p`.`do_mik_rad_shapers` AS `use_radius_shaper`,`p`.`speed_rate` AS `tarif_speed_in`,`p`.`speed_burst` AS `tarif_speed_out`,`p`.`shaper_prio` AS `tarif_shaper_prio` from ((`radacctbras` `r` join `users` `u`) join `packets` `p`) where ((`r`.`gid` = `u`.`gid`) and (`r`.`gid` = `p`.`gid`) and (`r`.`uid` = `u`.`uid`) and (`u`.`gid` = `p`.`gid`)) group by `r`.`uid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inetspeedlist`
--

/*!50001 DROP TABLE IF EXISTS `inetspeedlist`*/;
/*!50001 DROP VIEW IF EXISTS `inetspeedlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inetspeedlist` AS select `u`.`user` AS `username`,`u`.`framed_ip` AS `framedipaddress`,`u`.`local_ip` AS `local_ip`,`u`.`speed_rate` AS `user_speed_in`,`u`.`speed_burst` AS `user_speed_out`,`p`.`speed_rate` AS `tarif_speed_in`,`p`.`speed_rate` AS `tarif_speed_out` from (`users` `u` join `packets` `p`) where (`u`.`gid` = `p`.`gid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ip_pools_counts`
--

/*!50001 DROP TABLE IF EXISTS `ip_pools_counts`*/;
/*!50001 DROP VIEW IF EXISTS `ip_pools_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ip_pools_counts` AS select `p`.`poolname` AS `poolname`,`ip`.`poolid` AS `poolid`,count(distinct `ip`.`poolip`) AS `ipfree`,count(distinct `use`.`poolip`) AS `ipuse` from ((`ip_pools_pool` `ip` join `ip_pools` `p`) join `ip_pools_pool_use` `use`) where ((`ip`.`poolid` = `p`.`poolid`) and (`p`.`poolid` = `use`.`poolid`)) group by `ip`.`poolid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `map_online`
--

/*!50001 DROP TABLE IF EXISTS `map_online`*/;
/*!50001 DROP VIEW IF EXISTS `map_online`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `map_online` AS select `r`.`radacctid` AS `radacctid`,`r`.`acctsessionid` AS `acctsessionid`,`r`.`acctuniqueid` AS `acctuniqueid`,`r`.`username` AS `username`,`r`.`uid` AS `uid`,`r`.`gid` AS `gid`,`r`.`nasipaddress` AS `nasipaddress`,`r`.`nasportid` AS `nasportid`,`r`.`acctstarttime` AS `acctstarttime`,`r`.`acctstoptime` AS `acctstoptime`,`r`.`acctsessiontime` AS `acctsessiontime`,`r`.`acctinputoctets` AS `acctinputoctets`,`r`.`acctoutputoctets` AS `acctoutputoctets`,`r`.`calledstationid` AS `calledstationid`,`r`.`callingstationid` AS `callingstationid`,`r`.`acctterminatecause` AS `acctterminatecause`,`r`.`framedipaddress` AS `framedipaddress`,`r`.`last_change` AS `last_change`,`r`.`before_billing` AS `before_billing`,`r`.`billing_minus` AS `billing_minus`,`u`.`app` AS `app`,`u`.`swid` AS `swid`,`u`.`switchport` AS `switchport`,`u`.`houseid` AS `houseid`,`u`.`speed_rate` AS `user_speed_in`,`u`.`speed_burst` AS `user_speed_out`,`p`.`do_mik_rad_shapers` AS `use_radius_shaper`,`p`.`speed_rate` AS `tarif_speed_in`,`p`.`speed_burst` AS `tarif_speed_out`,`p`.`shaper_prio` AS `tarif_shaper_prio` from ((`radacctbras` `r` join `users` `u`) join `packets` `p`) where ((`r`.`gid` = `u`.`gid`) and (`r`.`gid` = `p`.`gid`) and (`r`.`uid` = `u`.`uid`) and (`u`.`gid` = `p`.`gid`)) group by `r`.`uid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mb_view_tickets_messages`
--

/*!50001 DROP TABLE IF EXISTS `mb_view_tickets_messages`*/;
/*!50001 DROP VIEW IF EXISTS `mb_view_tickets_messages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mb_view_tickets_messages` AS select `m`.`messageid` AS `messageid`,`m`.`date` AS `date`,`m`.`ticketid` AS `ticketid`,`m`.`stuffid` AS `stuffid`,`p`.`fio` AS `stuff_fio`,`m`.`useruid` AS `useruid`,`u`.`fio` AS `user_fio`,`m`.`message` AS `message`,`m`.`unread` AS `unread`,`s`.`statustypename` AS `statustypename` from ((((`tickets_messages` `m` left join `users` `u` on((`m`.`useruid` = `u`.`uid`))) left join `stuff_personal` `p` on((`m`.`stuffid` = `p`.`stuffid`))) join `tickets_tickets` `t`) join `tickets_status_types` `s`) where ((`m`.`ticketid` = `t`.`ticketid`) and (`t`.`statustypeid` = `s`.`statustypeid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `queue_active`
--

/*!50001 DROP TABLE IF EXISTS `queue_active`*/;
/*!50001 DROP VIEW IF EXISTS `queue_active`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `queue_active` AS select `queue_messages`.`m_id` AS `m_id`,`queue_types`.`mq_name` AS `mq_name`,`queue_messages`.`m_msg` AS `uid`,`queue_messages`.`m_created` AS `m_created`,`queue_messages`.`m_status` AS `m_status` from (`queue_messages` left join `queue_types` on((`queue_messages`.`mq_id` = `queue_types`.`mq_id`))) where (`queue_messages`.`m_status` = 'new') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `radpostauth`
--

/*!50001 DROP TABLE IF EXISTS `radpostauth`*/;
/*!50001 DROP VIEW IF EXISTS `radpostauth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `radpostauth` AS select `a`.`id` AS `id`,`a`.`username` AS `username`,`a`.`pass` AS `pass`,`t`.`packettype` AS `packettype`,`m`.`replymessage` AS `replymessage`,`n`.`nasname` AS `nasipaddress`,`a`.`nasportid` AS `nasportid`,`n`.`shortname` AS `nasident`,`a`.`callingstationid` AS `callingstationid`,`a`.`authdate` AS `authdate` from (((`radpostauthnew` `a` join `radpostauthpackettype` `t`) join `radpostauthreplymessage` `m`) join `radnas` `n`) where ((`a`.`packettypeid` = `a`.`packettypeid`) and (`a`.`replymessageid` = `m`.`replymessageid`) and (`n`.`id` = `a`.`nasid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_view_fsb`
--

/*!50001 DROP TABLE IF EXISTS `users_view_fsb`*/;
/*!50001 DROP VIEW IF EXISTS `users_view_fsb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_view_fsb` AS select '0' AS `state`,`u`.`uid` AS `uid`,`u`.`user` AS `user`,`u`.`fio` AS `fio`,`u`.`phone` AS `phone`,`u`.`mob_tel` AS `mob_tel`,`u`.`sms_tel` AS `sms_tel`,`u`.`real_ip` AS `real_ip`,`u`.`framed_ip` AS `framed_ip`,`u`.`local_ip` AS `local_ip`,`u`.`local_mac` AS `local_mac`,`u`.`passportserie` AS `passportserie`,`u`.`passportpropiska` AS `passportpropiska`,`u`.`passportvoenkomat` AS `passportvoenkomat`,`u`.`passportgdevidan` AS `passportgdevidan`,`u`.`inn` AS `inn`,`u`.`date_birth` AS `date_birth`,`u`.`numdogovor` AS `numdogovor`,`u`.`use_router` AS `use_router`,`u`.`blocked` AS `blocked`,`u`.`last_connection` AS `last_connection`,`u`.`app` AS `app`,`u`.`houseid` AS `houseid`,`u`.`housingid` AS `housingid`,`u`.`houseblockid` AS `houseblockid`,`u`.`porch` AS `porch`,`u`.`floor` AS `floor` from `users` `u` union select '1' AS `state`,`uf`.`uid` AS `uid`,`uf`.`user` AS `user`,`uf`.`fio` AS `fio`,`uf`.`phone` AS `phone`,`uf`.`mob_tel` AS `mob_tel`,`uf`.`sms_tel` AS `sms_tel`,`uf`.`real_ip` AS `real_ip`,`uf`.`framed_ip` AS `framed_ip`,`uf`.`local_ip` AS `local_ip`,`uf`.`local_mac` AS `local_mac`,`uf`.`passportserie` AS `passportserie`,`uf`.`passportpropiska` AS `passportpropiska`,`uf`.`passportvoenkomat` AS `passportvoenkomat`,`uf`.`passportgdevidan` AS `passportgdevidan`,`uf`.`inn` AS `inn`,`uf`.`date_birth` AS `date_birth`,`uf`.`numdogovor` AS `numdogovor`,`uf`.`use_router` AS `use_router`,`uf`.`blocked` AS `blocked`,`uf`.`last_connection` AS `last_connection`,`uf`.`app` AS `app`,`uf`.`houseid` AS `houseid`,`uf`.`housingid` AS `housingid`,`uf`.`houseblockid` AS `houseblockid`,`uf`.`porch` AS `porch`,`uf`.`floor` AS `floor` from `usersfreeze` `uf` union select '2' AS `state`,`ub`.`uid` AS `uid`,`ub`.`user` AS `user`,`ub`.`fio` AS `fio`,`ub`.`phone` AS `phone`,`ub`.`mob_tel` AS `mob_tel`,`ub`.`sms_tel` AS `sms_tel`,`ub`.`real_ip` AS `real_ip`,`ub`.`framed_ip` AS `framed_ip`,`ub`.`local_ip` AS `local_ip`,`ub`.`local_mac` AS `local_mac`,`ub`.`passportserie` AS `passportserie`,`ub`.`passportpropiska` AS `passportpropiska`,`ub`.`passportvoenkomat` AS `passportvoenkomat`,`ub`.`passportgdevidan` AS `passportgdevidan`,`ub`.`inn` AS `inn`,`ub`.`date_birth` AS `date_birth`,`ub`.`numdogovor` AS `numdogovor`,`ub`.`use_router` AS `use_router`,`ub`.`blocked` AS `blocked`,`ub`.`last_connection` AS `last_connection`,`ub`.`app` AS `app`,`ub`.`houseid` AS `houseid`,`ub`.`housingid` AS `housingid`,`ub`.`houseblockid` AS `houseblockid`,`ub`.`porch` AS `porch`,`ub`.`floor` AS `floor` from `usersblok` `ub` union select '3' AS `state`,`ud`.`uid` AS `uid`,`ud`.`user` AS `user`,`ud`.`fio` AS `fio`,`ud`.`phone` AS `phone`,`ud`.`mob_tel` AS `mob_tel`,`ud`.`sms_tel` AS `sms_tel`,`ud`.`real_ip` AS `real_ip`,`ud`.`framed_ip` AS `framed_ip`,`ud`.`local_ip` AS `local_ip`,`ud`.`local_mac` AS `local_mac`,`ud`.`passportserie` AS `passportserie`,`ud`.`passportpropiska` AS `passportpropiska`,`ud`.`passportvoenkomat` AS `passportvoenkomat`,`ud`.`passportgdevidan` AS `passportgdevidan`,`ud`.`inn` AS `inn`,`ud`.`date_birth` AS `date_birth`,`ud`.`numdogovor` AS `numdogovor`,`ud`.`use_router` AS `use_router`,`ud`.`blocked` AS `blocked`,`ud`.`last_connection` AS `last_connection`,`ud`.`app` AS `app`,`ud`.`houseid` AS `houseid`,`ud`.`housingid` AS `housingid`,`ud`.`houseblockid` AS `houseblockid`,`ud`.`porch` AS `porch`,`ud`.`floor` AS `floor` from `usersdel` `ud` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_view_fsb_address`
--

/*!50001 DROP TABLE IF EXISTS `users_view_fsb_address`*/;
/*!50001 DROP VIEW IF EXISTS `users_view_fsb_address`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_view_fsb_address` AS select concat(`l`.`lane`,' ',`h`.`house`,'-',`f`.`app`) AS `address`,`l`.`lane` AS `lane`,`h`.`house` AS `house`,`f`.`app` AS `app`,`h`.`porches` AS `porches`,`h`.`floors` AS `floors`,`f`.`uid` AS `uid`,`f`.`user` AS `user`,`f`.`fio` AS `fio` from ((`lanes_houses` `h` join `lanes` `l` on((`l`.`laneid` = `h`.`laneid`))) join `users_view_fsb` `f` on((`h`.`houseid` = `f`.`houseid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usersadress`
--

/*!50001 DROP TABLE IF EXISTS `usersadress`*/;
/*!50001 DROP VIEW IF EXISTS `usersadress`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usersadress` AS select concat(`l`.`lane`,' ',`h`.`house`,'-',`u`.`app`) AS `address`,`l`.`lane` AS `lane`,`h`.`house` AS `house`,`u`.`app` AS `app`,`h`.`porches` AS `porches`,`h`.`floors` AS `floors`,`u`.`uid` AS `uid`,`u`.`user` AS `user`,`u`.`fio` AS `fio` from ((`lanes_houses` `h` join `lanes` `l` on((`l`.`laneid` = `h`.`laneid`))) join `users` `u` on((`h`.`houseid` = `u`.`houseid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usersall`
--

/*!50001 DROP TABLE IF EXISTS `usersall`*/;
/*!50001 DROP VIEW IF EXISTS `usersall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mikbill`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usersall` AS select `u`.`user` AS `user`,`u`.`password` AS `password`,`u`.`uid` AS `uid`,`u`.`gid` AS `gid`,`u`.`deposit` AS `deposit`,`u`.`credit` AS `credit`,`u`.`fio` AS `fio`,`u`.`phone` AS `phone`,`u`.`prim` AS `prim`,`u`.`add_date` AS `add_date`,`u`.`blocked` AS `blocked`,`u`.`activated` AS `activated`,`u`.`framed_ip` AS `framed_ip`,`u`.`passportserie` AS `passportserie`,`u`.`passportpropiska` AS `passportpropiska`,`u`.`passportvoenkomat` AS `passportvoenkomat`,`u`.`passportgdevidan` AS `passportgdevidan`,`u`.`dogovor` AS `dogovor`,'None' AS `block_date`,'None' AS `del_date`,'None' AS `freeze_date`,`u`.`mob_tel` AS `mob_tel`,`u`.`numdogovor` AS `numdogovor`,`u`.`app` AS `app`,`u`.`houseid` AS `houseid`,'рабочий' AS `status` from `users` `u` union all select `ub`.`user` AS `user`,`ub`.`password` AS `password`,`ub`.`uid` AS `uid`,`ub`.`gid` AS `gid`,`ub`.`deposit` AS `deposit`,`ub`.`credit` AS `credit`,`ub`.`fio` AS `fio`,`ub`.`phone` AS `phone`,`ub`.`prim` AS `prim`,`ub`.`add_date` AS `add_date`,`ub`.`blocked` AS `blocked`,`ub`.`activated` AS `activated`,`ub`.`framed_ip` AS `framed_ip`,`ub`.`passportserie` AS `passportserie`,`ub`.`passportpropiska` AS `passportpropiska`,`ub`.`passportvoenkomat` AS `passportvoenkomat`,`ub`.`passportgdevidan` AS `passportgdevidan`,`ub`.`dogovor` AS `dogovor`,`ub`.`block_date` AS `block_date`,'None' AS `del_date`,'None' AS `freeze_date`,`ub`.`mob_tel` AS `mob_tel`,`ub`.`numdogovor` AS `numdogovor`,`ub`.`app` AS `app`,`ub`.`houseid` AS `houseid`,'отключенный' AS `status` from `usersblok` `ub` union all select `ud`.`user` AS `user`,`ud`.`password` AS `password`,`ud`.`uid` AS `uid`,`ud`.`gid` AS `gid`,`ud`.`deposit` AS `deposit`,`ud`.`credit` AS `credit`,`ud`.`fio` AS `fio`,`ud`.`phone` AS `phone`,`ud`.`prim` AS `prim`,`ud`.`add_date` AS `add_date`,`ud`.`blocked` AS `blocked`,`ud`.`activated` AS `activated`,`ud`.`framed_ip` AS `framed_ip`,`ud`.`passportserie` AS `passportserie`,`ud`.`passportpropiska` AS `passportpropiska`,`ud`.`passportvoenkomat` AS `passportvoenkomat`,`ud`.`passportgdevidan` AS `passportgdevidan`,`ud`.`dogovor` AS `dogovor`,`ud`.`block_date` AS `block_date`,`ud`.`del_date` AS `del_date`,'None' AS `freeze_date`,`ud`.`mob_tel` AS `mob_tel`,`ud`.`numdogovor` AS `numdogovor`,`ud`.`app` AS `app`,`ud`.`houseid` AS `houseid`,'удаленный' AS `status` from `usersdel` `ud` union all select `uf`.`user` AS `user`,`uf`.`password` AS `password`,`uf`.`uid` AS `uid`,`uf`.`gid` AS `gid`,`uf`.`deposit` AS `deposit`,`uf`.`credit` AS `credit`,`uf`.`fio` AS `fio`,`uf`.`phone` AS `phone`,`uf`.`prim` AS `prim`,`uf`.`add_date` AS `add_date`,`uf`.`blocked` AS `blocked`,`uf`.`activated` AS `activated`,`uf`.`framed_ip` AS `framed_ip`,`uf`.`passportserie` AS `passportserie`,`uf`.`passportpropiska` AS `passportpropiska`,`uf`.`passportvoenkomat` AS `passportvoenkomat`,`uf`.`passportgdevidan` AS `passportgdevidan`,`uf`.`dogovor` AS `dogovor`,'None' AS `block_date`,'None' AS `del_date`,`uf`.`freeze_date` AS `freeze_date`,`uf`.`mob_tel` AS `mob_tel`,`uf`.`numdogovor` AS `numdogovor`,`uf`.`app` AS `app`,`uf`.`houseid` AS `houseid`,'замороженный' AS `status` from `usersfreeze` `uf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-17  9:55:03